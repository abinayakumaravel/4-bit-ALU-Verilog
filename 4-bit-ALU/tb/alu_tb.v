`timescale 1ns/1ps

module alu_tb;

    // Inputs
    reg [3:0] A;
    reg [3:0] B;
    reg [2:0] sel;

    // Output
    wire [3:0] result;

    // Instantiate the ALU
    alu uut (
        .A(A),
        .B(B),
        .sel(sel),
        .result(result)
    );

    // Generate VCD file for GTKWave
    initial begin
        $dumpfile("alu.vcd");
        $dumpvars(0, alu_tb);
    end

    // Apply test cases
    initial begin

        $display("Time\tA\tB\tsel\tResult");
        $monitor("%0t\t%b\t%b\t%b\t%b",
                 $time, A, B, sel, result);

        // Test values
        A = 4'b0101;   // 5
        B = 4'b0011;   // 3

        sel = 3'b000; #10;   // Add
        sel = 3'b001; #10;   // Subtract
        sel = 3'b010; #10;   // AND
        sel = 3'b011; #10;   // OR
        sel = 3'b100; #10;   // XOR
        sel = 3'b101; #10;   // NOT A
        sel = 3'b110; #10;   // Left Shift
        sel = 3'b111; #10;   // Right Shift

        $finish;

    end

endmodule