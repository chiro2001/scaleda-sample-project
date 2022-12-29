module tb();
    initial begin
        $dumpfile("top.vcd");
        $dumpvars;
    end
    reg clk = 0;
    reg rst_n = 0;
    reg a = 0;
    wire c;
    initial begin
        #5
        rst_n <= 1;
        #200
        $finish;
    end
    always #1 clk <= ~clk;
    top t(
        .clk(clk),
        .rst_n(rst_n),
        .a(a),
        .c(c)
    );
endmodule