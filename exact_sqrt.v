`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.02.2026 14:59:23
// Design Name: 
// Module Name: exact_sqrt
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


module exact_sqrt(
input [3:0] x,
output [3:0] r,
output [1:0] q
    );
wire [5:0] b0,r0;

assign q[1:0] = ~{b0[5] , b0[3]};
assign r[3:0] = r0[3:0];

//level1
ersc inst11(x[2] , 1'b1  , 1'b0, q[1], b0[4],  r0[4] );
ersc inst12(x[3] , 1'b0  , b0[4],q[1], b0[5],  r0[5] );

//level2
ersc inst21(x[0] , 1'b1  , 1'b0,  q[0], b0[0], r0[0]);
ersc inst22(x[1] , 1'b0  , b0[0], q[0], b0[1], r0[1]);
ersc inst23(r0[4], q[1]  , b0[1], q[0], b0[2], r0[2]); 
ersc inst24(r0[5], 1'b0  , b0[2], q[0], b0[3], r0[3]);
 

    
endmodule
