`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.11.2022 00:24:21
// Design Name: 
// Module Name: Top_Module
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


module Top_Module(
    input clk, // fpga clock
    input sw, // swich [0] to enable the clock
    input btnC, // reset the clock
    input btnU,  // hour increment
    input btnR,  // min increment
    output  [3:0] an, 
    output  [6:0] seg,
    output [7:0] led // display seconds
    );
    
    
    wire [3:0] s1,s2,m1,m2,h1,h2;
    reg hrup, minup, reset;
    
    wire btnCclr, btnUclr, btnRclr;
    reg btnCclr_prev, btnUclr_prev, btnRclr_prev;
    
     
   //  instantiate the Debounce Module 
   debounce dbC(clk, btnC, btnCclr);
   debounce dbU(clk, btnU, btnUclr);
   debounce dbR(clk, btnR, btnRclr);
   
   // instantiate seven segment driver and digital clock modules
   
   Sevenseg_driver seg7(clk, 1'b0, h2, h1, m2, m1, seg, an); // HH:and
   digital_clock clock(clk, sw, btnCclr, hrup, minup, s1, s2, m1, m2, h1, h2);
   //setting up the logic for the clock, hrup and minup using the pushbuttons
   always @(posedge clk)
   begin
   btnUclr_prev <= btnUclr; 
   btnRclr_prev <= btnRclr;
  // btnCclr_prev <= btnCclr;
   if (btnUclr_prev == 1'b0 &&  btnUclr == 1'b1) hrup <= 1'b1; else hrup <=1'b0;
   // hrup button is zero and clr button is high then hrup pressed, active
   if (btnRclr_prev == 1'b0 &&  btnRclr == 1'b1) minup <= 1'b1; else minup <=1'b0;
     // minup button is zero and clr button is high then minup pressed, active

  end
  
  assign led[7:0] ={s2,s1};
  
  
  
  
endmodule
