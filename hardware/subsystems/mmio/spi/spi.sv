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
                    w_shift = {miso, r_shift};
                end else begin
                    w_next_cnt = r_cnt + 1;
                end
            end
            P1: begin
                if (r_cnt == dvsr) begin
                    if (r_cnt == 7) begin
                        w_next_state = IDLE;
                        w_next_cnt = 0;
                        w_next_pos = 0;
                        spi_done_tick = 1'b1;
                    end else begin
                        w_next_state = P0;
                        w_next_cnt = 0;
                        w_next_cnt = r_cnt + 1;
                    end
                end else begin
                    w_next_cnt = r_cnt + 1;
                end
            end
        endcase
    end

    assign mosi = r_shift[0];
    assign dout = r_shift;

    // clocking logic
    assign w_p_clk = (w_next_state == P0 && cpha) || (w_next_state == P1 && ~cpha);
    assign sclk = (clk_polar) ? ~w_p_clk : w_p_clk;

endmodule : spi_core