`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11.12.2022 18:23:46
// Design Name: 
// Module Name: binarytoBCD
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


module binarytoBCD(
    input [11:0] binary,
    output reg [3:0] thos,
    output reg [3:0] huns,
    output reg [3:0] tens,
    output reg [3:0] ones
    );
    
    reg [11:0] bcd_data = 0, bcd_data2, bcd_data3;
    always @(binary) //1250
    begin
    bcd_data <= binary; //1250
    thos <= bcd_data/1000; // 1250/1000 = 1 "1"
    bcd_data2 <= bcd_data%1000; //1250/1000 = 250
    huns <= bcd_data2/100; //250/100 =  2 "2"
    bcd_data3 <= bcd_data2%100; // 250/100, remainder here is 50
    tens <= bcd_data3/10; //50 / 10 = 5 "5"
    ones <= bcd_data3%10; // 50 / 10 =  remainder is 0
    end
    
endmodule
