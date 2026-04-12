-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Mon Apr 13 03:51:31 2026
-- Host        : Azat running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/azati/OneDrive/Desktop/Parallel_IR_Transmitters-main/Parallel_IR_Transmitters-main/FPGA_Part/Own_IR_transmitter/Own_IR_transmitter.gen/sources_1/bd/design_1/ip/design_1_IR_transmission_19_0/design_1_IR_transmission_19_0_stub.vhdl
-- Design      : design_1_IR_transmission_19_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_IR_transmission_19_0 is
  Port ( 
    clk : in STD_LOGIC;
    code : in STD_LOGIC_VECTOR ( 7 downto 0 );
    addr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    send : in STD_LOGIC;
    ir_out : out STD_LOGIC
  );

end design_1_IR_transmission_19_0;

architecture stub of design_1_IR_transmission_19_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,code[7:0],addr[7:0],send,ir_out";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "IR_transmission,Vivado 2020.2";
begin
end;
