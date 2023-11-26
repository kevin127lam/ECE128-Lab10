`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/21/2023 02:26:52 PM
// Design Name: 
// Module Name: rom_tb
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


module rom_tb();  // Inputs
  reg [2:0] ROM_addr;

  // Outputs
  wire [3:0] ROM_data;

  // Instantiate the ROM module
  rom uut2 ( .ROM_data(ROM_data), .ROM_addr(ROM_addr));

  // Test scenarios
  initial begin
    ROM_addr = 3'b000;
    #10;

    ROM_addr = 3'b001;
    #10;
    
    ROM_addr = 3'b010;
    #10;

    ROM_addr = 3'b011;
    #10;

    ROM_addr = 3'b100;
    #10;

    ROM_addr = 3'b101;
    #10;

    ROM_addr = 3'b110;
    #10;

    ROM_addr = 3'b111;
    #10;

    #10 $finish;
  end

endmodule
