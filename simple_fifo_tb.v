`timescale 1ns / 1ps

module simple_fifo_tb;

    reg clk;
    reg rst;
    reg wr_en;
    reg rd_en;
    reg [7:0] data_in;

    wire [7:0] data_out;
    wire full;
    wire empty;
    wire [3:0] count;

    simple_fifo uut (
        .clk(clk),
        .rst(rst),
        .wr_en(wr_en),
        .rd_en(rd_en),
        .data_in(data_in),
        .data_out(data_out),
        .full(full),
        .empty(empty),
        .count(count)
    );

    always #5 clk = ~clk;

    initial begin

        clk = 1'b0;
        rst = 1'b1;
        wr_en = 1'b0;
        rd_en = 1'b0;
        data_in = 8'h00;

        #20;

        rst = 1'b0;

        // Write 10
        @(posedge clk);
        #1;
        wr_en = 1'b1;
        data_in = 8'h10;

        // Write 20
        @(posedge clk);
        #1;
        data_in = 8'h20;

        // Write 30
        @(posedge clk);
        #1;
        data_in = 8'h30;

        // Write 40
        @(posedge clk);
        #1;
        data_in = 8'h40;

        // Stop writing
        @(posedge clk);
        #1;
        wr_en = 1'b0;

        // Read
        @(posedge clk);
        #1;
        rd_en = 1'b1;

        @(posedge clk);
        #1;

        @(posedge clk);
        #1;

        @(posedge clk);
        #1;

        // Stop reading
        @(posedge clk);
        #1;
        rd_en = 1'b0;

        #20;

        $finish;

    end

endmodule