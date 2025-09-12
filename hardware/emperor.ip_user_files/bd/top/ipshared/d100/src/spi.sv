// spi.sv

module spi_core
    (
    input logic clk, arst_n,
    input logic [7:0] din,
    input logic [15:0] dvsr,
    input logic start, clk_polar, clk_phase,
    output logic [7:0] dout,
    output logic ready, spi_done_tick,
    output logic sclk,
    input logic miso,
    output logic mosi
    );

    // fsm states
    enum logic [1:0] {
        IDLE = 2'd0,
        DELAY = 2'd1,
        P0 = 2'd2,
        P1 = 2'd3
    } r_state, w_next_state;

    // signal declaration
    logic w_p_clk;
    logic [15:0] r_cnt, w_next_cnt;
    logic w_spi_clk_next;
    logic [2:0] r_pos, w_next_pos;
    logic [7:0] r_shift, w_shift;

    // sequential logic
    always_ff @(posedge clk, negedge arst_n) begin : sequential_logic
        if (!arst_n) begin
            r_state <= IDLE;
            sclk <= 0;
            r_shift <= 0;
            r_pos <= 0;
            r_cnt <= 0;
        end else begin
            r_state <= w_next_state;
            sclk <= w_spi_clk_next;
            r_shift <= w_shift;
            r_pos <= w_next_pos;
            r_cnt <= w_next_cnt;
        end
    end

    // combinational logic
    always_comb begin
        w_next_state = r_state;
        ready = 1'b0;
        spi_done_tick = 1'b0;
        w_shift = r_shift;
        w_next_pos = r_pos;
        w_next_cnt = r_cnt;

        case (r_state)
            IDLE: begin
                ready = 1'b1;
                if (start) begin
                    w_shift = din;
                    w_next_pos = 0;
                    w_next_cnt = 0;
                    if (clk_phase) 
                        w_next_state = DELAY;
                    else 
                        w_next_state = P0;
                end
            end
            DELAY: begin
                if (r_cnt == dvsr) begin
                    w_next_state = P0;
                    w_next_cnt = 0;
                end else begin
                    w_next_cnt = r_cnt + 1;
                end
            end
            P0: begin
                if (r_cnt == dvsr) begin
                    w_next_state = P1;
                    w_next_cnt = 0;
                    w_shift = {r_shift[6:0], miso};
                end else begin
                    w_next_cnt = r_cnt + 1;
                end
            end
            P1: begin
                if (r_cnt == dvsr) begin
                    if (r_pos == 7) begin
                        w_next_state = IDLE;
                        w_next_cnt = 0;
                        w_next_pos = 0;
                        spi_done_tick = 1'b1;
                    end else begin
                        w_next_state = P0;
                        w_next_cnt = 0;
                        w_next_pos = r_pos + 1;
                    end
                end else begin
                    w_next_cnt = r_cnt + 1;
                end
            end
        endcase
    end

    assign mosi = r_shift[7];
    assign dout = r_shift;

    // clocking logic
    assign w_p_clk = (w_next_state == P0 && clk_phase) || (w_next_state == P1 && ~clk_phase);
    assign w_spi_clk_next = (clk_polar) ? ~w_p_clk : w_p_clk;

endmodule : spi_core

module spi
    #(parameter NUM_SLAVES = 2)
    (
    input logic clk, arst_n,
    // slot interface
    input logic chip_select,
    input logic read, write,
    input logic transaction_completed,
    input logic [7:0] addr,
    input logic [31:0] wr_data,
    output logic [31:0] rd_data,
    output logic wr_done, rd_done, idle,
    output logic slave_error, decode_error,
    // interface with downstream (external device)
    output logic sclk,
    input logic miso,
    output logic mosi,
    output logic [NUM_SLAVES-1:0] ss_n
    );

    // signal declaration
    logic [15:0] r_dvsr;
    logic w_en_dvsr, w_en_ctrl;
    logic clk_polar, clk_phase;
    logic w_wr_done, w_rd_done;
    logic w_slave_error, w_decode_error;
    logic [31:0] w_rd_data;
    logic [7:0] r_receied_data, w_receied_data;
    logic w_en;
    logic spi_done_tick;
    logic [NUM_SLAVES-1:0] r_ss, w_ss;
    logic [2:0] r_control;
    logic [2:0] r_status, w_status;

    enum logic [1:0] {
        IDLE   = 2'b00, 
        ACTIVE = 2'b01,
        DONE   = 2'b10
    } r_state, w_next_state;

    spi_core spi_core (
        .clk, 
        .arst_n,
        .din(wr_data[7:0]),
        .dvsr(r_dvsr),
        .start(r_control[2]), 
        .clk_polar(r_control[1]),
        .clk_phase(r_control[0]),
        .dout(w_receied_data),
        .ready(w_status[0]), 
        .spi_done_tick,
        .sclk,
        .miso,
        .mosi
    );

    assign w_en = chip_select && (read || write);

    // decoder
    always_comb begin : decode
        w_wr_done = 1'b0;
        w_rd_data = rd_data;
        w_ss = 0;
        w_slave_error = 1'b0;
        w_decode_error = 1'b0;
        w_rd_done = 1'b0;
        w_en_dvsr = 1'b0;
        w_en_ctrl = 1'b0;
        w_status[1] = 1'b0;
        w_status[2] = (spi_done_tick) ? 1'b1 : r_status[2];

        case (r_state)
            IDLE: begin
                w_next_state = (w_en) ? ACTIVE : IDLE;
            end
            ACTIVE: begin
                w_next_state = DONE;
                case (addr)
                    8'h00: begin  // read received data register
                        if (read) begin
                            w_rd_done = 1'b1;
                            w_rd_data = r_receied_data;
                        end else if (write) begin   // received data register is read only
                            w_wr_done = 1'b1;
                            w_slave_error = 1'b1;
                            w_status[1] = 1'b1; // invalid write
                        end
                    end
                    8'h04: begin  // slave select register
                        if (write) begin
                            w_wr_done = 1'b1;
                            w_ss = wr_data[NUM_SLAVES-1:0];
                        end else if (read) begin   
                            w_rd_data = {{(32-NUM_SLAVES){1'b0}}, r_ss};
                            w_rd_done = 1'b1;
                        end
                    end
                    8'h08: begin  // dvsr register
                        if (write) begin
                            w_wr_done = 1'b1;
                            w_en_dvsr = 1'b1;
                        end else if (read) begin
                            w_rd_done = 1'b1;
                            w_rd_data = {16'd0, r_dvsr};
                        end
                    end
                    8'h0c: begin   // control register, 2 is start, 1 is cpol 0 is cpha 
                        if (write) begin
                            w_wr_done = 1'b1;
                            w_en_ctrl = 1'b1;
                        end else if (read) begin
                            w_rd_done = 1'b1;
                            w_rd_data = {30'b0, r_control};
                        end
                    end
                    8'h10: begin   // status register read only, 2 is done, 1 is write err, 0 is ready
                        if (write) begin
                            w_wr_done = 1'b1;
                            w_slave_error = 1'b1;
                            w_status[1] = 1'b1;
                        end else if (read) begin
                            w_status[2] = 1'b0; // clear done bit
                            w_rd_done = 1'b1;
                            w_rd_data = {29'b0, r_status};
                        end
                    end
                    default: begin
                        w_rd_done = read;
                        w_wr_done = write;
                        w_decode_error = 1'b1;
                    end
                endcase
            end
            DONE: begin
                w_slave_error = slave_error;
                w_decode_error = decode_error;
                w_next_state = (transaction_completed) ? IDLE : DONE;
            end
        endcase
    end

    // received data register
    always_ff @(posedge clk, negedge arst_n) begin
        if (!arst_n) begin
            r_receied_data <= 32'd0;
        end else if (spi_done_tick) begin
            r_receied_data <= w_receied_data;
        end
    end

    // dvsr register
    always_ff @(posedge clk, negedge arst_n) begin
        if (!arst_n)
            r_dvsr <= 0;
        else if (w_en_dvsr)
            r_dvsr <= wr_data[15:0];
    end

    // control register
    always_ff @(posedge clk, negedge arst_n) begin
        if (!arst_n)
            r_control <= 0;
        else if (w_en_ctrl)
            r_control <= wr_data[2:0];
    end

    // status register
    always_ff @(posedge clk, negedge arst_n) begin
        if (!arst_n)
            r_status <= 0;
        else 
            r_status <= w_status;
    end

    // slot read/write done
    always_ff @(posedge clk, negedge arst_n) begin
        if (!arst_n) begin
            wr_done <= 1'b0;
            rd_done <= 1'b0;
        end
        else begin
            wr_done <= w_wr_done;
            rd_done <= w_rd_done;
        end
    end

    // next state register
    always_ff @(posedge clk, negedge arst_n) begin
        if (!arst_n)
            r_state <= IDLE;
        else 
            r_state <= w_next_state;
    end

    // error signal register
    always_ff @(posedge clk, negedge arst_n) begin
        if (!arst_n) begin
            slave_error <= 1'b1;
            decode_error <= 1'b1;
        end else begin
            slave_error <= w_slave_error;
            decode_error <= w_decode_error;
        end
    end

    // read data register
    always_ff @(posedge clk, negedge arst_n) begin
        if (!arst_n) begin
            rd_data <= 32'd0;
        end else begin
            rd_data <= w_rd_data;
        end
    end

endmodule : spi