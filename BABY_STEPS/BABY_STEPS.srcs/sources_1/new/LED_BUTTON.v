`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.11.2023 10:20:05
// Design Name: 
// Module Name: LED_BUTTON
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

module LED_BUTTON(
    input wire clk,  // 100 MHz
    input wire btn,  // Button input
    output reg LD0
);
    // Assign LED output based on the state
    always @(posedge clk) begin
        if (btn) begin
            LD0 <= 1;  // LED on
        end else begin
            LD0 <= 0;  // LED off
        end
    end

endmodule