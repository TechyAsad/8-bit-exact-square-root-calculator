`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.02.2026 14:50:56
// Design Name: 
// Module Name: ersc
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


module ersc(
input a,b,bin,sel,
output bo,ro
);

assign bo = (~a&b)|(~a&bin)|(b&bin) ;
assign ro = sel ?  (a^b^bin) : a;
// Here we're using the mux so that we can copy the 'a' whenever the 
//Whenever result comes negative , rther than doing subtraction

endmodule
