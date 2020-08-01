`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/09/02 10:24:40
// Design Name: 
// Module Name: RGB_LED_Task
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
//RGB light and dark state
`define PWM_Dir_Up      0
`define PWM_Dir_Down    1

//RGB breathing light task, can be called by the stack to take the task, or can be called directly
module RGB_LED_Task(
   input clk_100MHz,
   input clk_10MHz,
   input [5:0]Period_100mSecond,
   input [7:0]R_In,
   input [7:0]G_In,
   input [7:0]B_In,
   input [10:0]Light_Num,
   input Rst,
   output RGB_LED_IO,
   output reg Light_Ok
   );
   //ÊµÀý»¯SK6805Çý¶¯
   Driver_SK6805 Driver_SK6805_0(.R_In1(R_In),.G_In1(G_In),.B_In1(B_In),.R_In2(R_In),.G_In2(G_In),.B_In2(B_In),.clk_10MHz(clk_10MHz),.Rst(Rst),.LED_IO(RGB_LED_IO));
endmodule
