`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.12.2022 17:27:29
// Design Name: 
// Module Name: debounce
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


module debounce(
    input clk_in,
   // input reset,
    input pb,
    output led
    );
    
    wire clk_out;
    wire Q1, Q2, Q2_bar;
  //  wire led;
    
  Slow_Clock u1(clk_in,clk_out);
  D_FF d1(clk_out, pb, Q1); 
  D_FF D2(clk_out, Q1, Q2); 
  
  assign Q2_bar = ~Q2;
  assign led = Q2_bar & Q1;
   
endmodule
