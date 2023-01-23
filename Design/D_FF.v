`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.12.2022 17:13:25
// Design Name: 
// Module Name: D_FF
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


module D_FF(
    input clk, // input clock, slow clock
    input D, //pushbutton
    output reg Q
    //output reg Qbar
    );
    
    always @(posedge clk)
    begin
    Q <= D;
   // Qbar <= !Q;
    end
endmodule
