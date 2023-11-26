`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/21/2023 02:43:39 PM
// Design Name: 
// Module Name: seq_multiplier_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module seq_multiplier_tb();

  // Inputs
  reg [3:0] a;
  reg [3:0] b;

  // Outputs
  wire [7:0] product;

  // Instantiate the multiplier module
  seq_multiplier uut3 (.a(a), .b(b), .product(product));

  initial begin
    a = 4'b0000;
    b = 4'b0001;
    #10;

    a = 4'b0101;
    b = 4'b1010;
    #10;

    a = 4'b1000;
    b = 4'b1010;
    #10;

    a = 4'b1111;
    b = 4'b0110;
    #10;

    a = 4'b1010;
    b = 4'b1100;
    #10;

    // Finish simulation
    #10 $finish;
  end

endmodule