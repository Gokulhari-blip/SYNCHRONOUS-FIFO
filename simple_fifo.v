module simple_fifo (
    input        clk,
    input        rst,
    input        wr_en,
    input        rd_en,
    input  [7:0] data_in,
    output reg [7:0] data_out,
    output       full,
    output       empty,
    output reg [3:0] count
);

    reg [7:0] memory [0:7];
    reg [2:0] wr_ptr;
    reg [2:0] rd_ptr;

    assign full  = (count == 4'd8);
    assign empty = (count == 4'd0);

    always @(posedge clk) begin

        if (rst) begin
            wr_ptr   <= 3'd0;
            rd_ptr   <= 3'd0;
            count    <= 4'd0;
            data_out <= 8'd0;
        end

        else begin

            if (wr_en && !full) begin
                memory[wr_ptr] <= data_in;
                wr_ptr <= wr_ptr + 3'd1;
            end

            if (rd_en && !empty) begin
                data_out <= memory[rd_ptr];
                rd_ptr <= rd_ptr + 3'd1;
            end

            case ({wr_en && !full, rd_en && !empty})

                2'b10: begin
                    count <= count + 4'd1;
                end

                2'b01: begin
                    count <= count - 4'd1;
                end

                default: begin
                
                    count <= count;
                end

            endcase

        end

    end

endmodule