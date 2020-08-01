`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/07/28 15:18:01
// Design Name: 
// Module Name: getRGBaverage
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


module count_r_rgb(
    input clk_p,
    input vsync,
    input [23:0]rbg,
    input vde,
    input o_set_x,
    input o_set_y,
    input my_model,
    output reg [7:0]r_average=0,
    output reg [7:0]g_average=0,
    output reg [7:0]b_average=0,
    output wire [23:0]rbg_average
    );
    reg[30:0]cnt=0;
    reg [30:0]rcnt=0;
    reg [30:0]gcnt=0;
    reg [30:0]bcnt=0;
    reg m_model=0;
    
    
    always@(posedge clk_p)
        begin
            if(cnt==2073600)    //1920*1080
                begin
                    if(rcnt>gcnt&&rcnt>bcnt)
                        begin
                            r_average<=255;
                            g_average<=0;
                            b_average<=0;
                        end
                    else if(gcnt>rcnt&&gcnt>bcnt)
                        begin
                            r_average<=0;
                            g_average<=255;
                            b_average<=0;                        
                        end
                    else
                        begin
                            r_average<=0;
                            g_average<=0;
                            b_average<=255;                        
                        end
                    cnt<=0;
                    rcnt<=0;
                    gcnt<=0;
                    bcnt<=0;
                end
            else if(vde)
                begin
                    cnt<=cnt+1;
                    if(rcnt<rbg[23:16])
                        begin
                            rcnt=rbg[23:16];
                        end
                    if(bcnt<rbg[15:8])
                        begin
                            bcnt=rbg[15:8];
                        end
                    if(gcnt<rbg[7:0])
                        begin
                            gcnt=rbg[7:0];
                        end
                end
            end
        assign rbg_average={r_average,b_average,g_average};
endmodule
