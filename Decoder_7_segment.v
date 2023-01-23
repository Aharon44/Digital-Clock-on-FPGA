`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.12.2022 14:04:48
// Design Name: 
// Module Name: Decoder_7_segment
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


module Decoder_7_segment(
    input [3:0] in, // 4 bits going into the segment 
    output reg [6:0] seg // Display BCD number on the 7-segment
    );
    
    always @(in)
    begin
    case (in)
    0: seg=7'b0000001; // "0"
    1: seg=7'b1001111; // "1"
    2: seg=7'b0010010; // "2"
    3: seg=7'b0000110; // "3"
    4: seg=7'b1001100; // "4"
    5: seg=7'b0100100; // "5"
    6: seg=7'b0100000; // "6"
    7: seg=7'b0001111; // "7"
    8: seg=7'b0000000; // "8"
    9: seg=7'b0000100; // "9"
    endcase
    end

    
endmodule
