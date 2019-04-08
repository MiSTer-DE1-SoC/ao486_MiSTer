// (C) 2001-2017 Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions and other 
// software and tools, and its AMPP partner logic functions, and any output 
// files any of the foregoing (including device programming or simulation 
// files), and any associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License Subscription 
// Agreement, Intel MegaCore Function License Agreement, or other applicable 
// license agreement, including, without limitation, that your use is for the 
// sole purpose of programming logic devices manufactured by Intel and sold by 
// Intel or its authorized distributors.  Please refer to the applicable 
// agreement for further details.


// $Id: //acds/rel/17.0std/ip/merlin/altera_irq_mapper/altera_irq_mapper.sv.terp#1 $
// $Revision: #1 $
// $Date: 2017/01/22 $
// $Author: swbranch $

// -------------------------------------------------------
// Altera IRQ Mapper
//
// Parameters
//   NUM_RCVRS        : 7
//   SENDER_IRW_WIDTH : 16
//   IRQ_MAP          : 0:0,1:8,2:14,3:6,4:2,5:1,6:12
//
// -------------------------------------------------------

`timescale 1 ns / 1 ns

module system_irq_mapper
(
    // -------------------
    // Clock & Reset
    // -------------------
    input clk,
    input reset,

    // -------------------
    // IRQ Receivers
    // -------------------
    input                receiver0_irq,
    input                receiver1_irq,
    input                receiver2_irq,
    input                receiver3_irq,
    input                receiver4_irq,
    input                receiver5_irq,
    input                receiver6_irq,

    // -------------------
    // Command Source (Output)
    // -------------------
    output reg [15 : 0] sender_irq
);


    always @* begin
	sender_irq = 0;

        sender_irq[0] = receiver0_irq;
        sender_irq[8] = receiver1_irq;
        sender_irq[14] = receiver2_irq;
        sender_irq[6] = receiver3_irq;
        sender_irq[2] = receiver4_irq;
        sender_irq[1] = receiver5_irq;
        sender_irq[12] = receiver6_irq;
    end

endmodule

