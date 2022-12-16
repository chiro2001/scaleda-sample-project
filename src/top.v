module top (
    input clk,
    input rst_n,
    input a,
    output c
);
    reg b;
    assign c = b;
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            b <= 0;
        end
        else begin
            b <= a;
        end
    end
endmodule
