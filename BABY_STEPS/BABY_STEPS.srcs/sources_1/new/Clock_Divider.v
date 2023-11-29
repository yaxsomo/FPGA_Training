`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.11.2023 12:18:06
// Design Name: 
// Module Name: Clock_Divider
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


module Clock_Divider(
input clk,
output reg divided_clk=0
    );
localparam div_value = 49999999;

    
integer counter_value = 0;

always @ (posedge clk)
begin
    if(counter_value == div_value)
        counter_value <= 0;  
    else
        counter_value <= counter_value+1;
end


always@ (posedge clk)
begin
    if(counter_value == div_value)
        divided_clk <= ~divided_clk;
    else
        divided_clk <= divided_clk;
end

endmodule
