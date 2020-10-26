// File:    uart_debug.sv
// Author:  Lei Kuang
// Date:    25th October 2020
// @ Imperial College London

module uart_debug
(
    input  logic        clk,
    input  logic        rst,
    // User interface
    input  logic        start,
    output logic        full,
    // Physical interface
    output logic        TX,
    input  logic        RX
);

// ----------------------------------------------------------------
// Clock divider
// ----------------------------------------------------------------
logic sys_clk;
logic sys_nrst;

clk_wiz_0 clk_div
(
    .reset    (rst),
    .locked   (sys_nrst),
    .clk_in1  (clk),
    .clk_out1 (sys_clk)
);

// ----------------------------------------------------------------
// UART
// ----------------------------------------------------------------
logic       rx_valid;
logic [7:0] rx_data;
logic       tx_full;

uart_tx_rx uart_inst
(
    .sys_clk  (sys_clk),
    .sys_nrst (sys_nrst),
    // User interface
    .lp_mode  ('1),    // 1: Loopback Mode
    // - TX
    .tx_valid ('0),
    .tx_data  ('0),
    .tx_full  (full),
    .tx_en    (start),
    // - RX
    .rx_valid (rx_valid),
    .rx_data  (rx_data),
    // Physical interface
    .TX       (TX),
    .RX       (RX)
);

endmodule
