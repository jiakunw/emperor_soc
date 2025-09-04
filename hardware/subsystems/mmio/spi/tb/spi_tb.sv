// spi_tb.sv

module spi_tb();
    logic clk, arst_n;
    logic [7:0] din;
    logic [15:0] dvsr;
    logic start, clk_polar, clk_phase;
    logic [7:0] dout;
    logic ready, spi_done_tick;
    logic sclk;
    logic d;

    logic [7:0] randint;

    spi_core DUT (.*, .miso(d), .mosi(d));

    //the system clock
    initial begin
        clk = 1'b0;
        forever #5 clk = ~clk;
    end

    initial begin
        dvsr = 1'b1;
        arst_n = 1'b0;
        @(negedge clk);

        arst_n = 1'b1;

        $display("mode 0");
        clk_polar = 1'b0;
        clk_phase = 1'b0;
        @(negedge clk);
        randint = $urandom_range(255, 0);
        din = randint;
        start = 1'b1;
        @(negedge clk);

        start = 1'b0;
        @(negedge clk);

        wait(spi_done_tick == 1'b1);
        assert(dout == randint);

        @(negedge clk);

        $display("mode 1");
        clk_polar = 1'b1;
        clk_phase = 1'b0;
        @(negedge clk);
        randint = $urandom_range(255, 0);
        din = randint;
        start = 1'b1;
        @(negedge clk);

        start = 1'b0;
        @(negedge clk);

        wait(spi_done_tick == 1'b1);
        assert(dout == randint);

        @(negedge clk);

        $display("mode 2");
        clk_polar = 1'b0;
        clk_phase = 1'b1;
        @(negedge clk);
        randint = $urandom_range(255, 0);
        din = randint;
        start = 1'b1;
        @(negedge clk);

        start = 1'b0;
        @(negedge clk);

        wait(spi_done_tick == 1'b1);
        assert(dout == randint);

        @(negedge clk);

        $display("mode 3");
        clk_polar = 1'b1;
        clk_phase = 1'b1;
        @(negedge clk);
        randint = $urandom_range(255, 0);
        din = randint;
        start = 1'b1;
        @(negedge clk);

        start = 1'b0;
        @(negedge clk);

        wait(spi_done_tick == 1'b1);
        assert(dout == randint);

        $display("finished");
        $finish;
    end

endmodule : spi_tb