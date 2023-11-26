`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/21/2023 01:59:34 PM
// Design Name: 
// Module Name: ram_tb
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


module ram_tb;

  reg i_clk;
  reg i_rst;
  reg i_write_en;
  reg [2:0] i_addr;
  reg [3:0] i_write_data;
  wire [3:0] o_read_data;

  ram uut (.i_clk(i_clk), .i_rst(i_rst), .i_write_en(i_write_en),  .i_addr(i_addr),  .i_write_data(i_write_data), .o_read_data(o_read_data) );

  initial begin
    i_clk = 0;
    forever #5 i_clk = ~i_clk;
  end

  initial begin
    i_rst = 1;
    i_write_en = 0;
    i_addr = 3'b0;
    i_write_data = 4'b0000;

    // Apply reset
    #10 i_rst = 0;

    #10 i_write_en = 1;
    i_addr = 3'b001;
    i_write_data = 4'b0010;
    #10 i_write_en = 0;

    #10 i_write_en = 1;
    i_addr = 3'b010;
    i_write_data = 4'b1100;
    #10 i_write_en = 0;

    #10 i_write_en = 1;
    i_addr = 3'b011;
    i_write_data = 4'b1111;
    #10 i_write_en = 0;

    #10 i_write_en = 1;
    i_addr = 3'b100;
    i_write_data = 4'b0001;
    #10 i_write_en = 0;

    #10 i_write_en = 1;
    i_addr = 3'b101;
    i_write_data = 4'b0011;
    #10 i_write_en = 0;

    #10 i_write_en = 1;
    i_addr = 3'b110;
    i_write_data = 4'b1111;
    #10 i_write_en = 0;

    #10 i_write_en = 1;
    i_addr = 3'b111;
    i_write_data = 4'b0101;
    #10 i_write_en = 0;

    #10 i_write_en = 1;
    i_addr = 3'b000;
    i_write_data = 4'b1010;
    #10 i_write_en = 0;

    // Finish simulation
    #10 $finish;
  end
endmodule
