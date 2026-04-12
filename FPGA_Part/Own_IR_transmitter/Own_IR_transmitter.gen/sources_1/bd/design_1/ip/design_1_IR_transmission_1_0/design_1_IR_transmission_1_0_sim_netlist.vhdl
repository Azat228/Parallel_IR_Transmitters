-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Mon Apr 13 03:50:28 2026
-- Host        : Azat running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/azati/OneDrive/Desktop/Parallel_IR_Transmitters-main/Parallel_IR_Transmitters-main/FPGA_Part/Own_IR_transmitter/Own_IR_transmitter.gen/sources_1/bd/design_1/ip/design_1_IR_transmission_1_0/design_1_IR_transmission_1_0_sim_netlist.vhdl
-- Design      : design_1_IR_transmission_1_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_IR_transmission_1_0_IR_transmission is
  port (
    ir_out : out STD_LOGIC;
    addr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    code : in STD_LOGIC_VECTOR ( 7 downto 0 );
    clk : in STD_LOGIC;
    send : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_IR_transmission_1_0_IR_transmission : entity is "IR_transmission";
end design_1_IR_transmission_1_0_IR_transmission;

architecture STRUCTURE of design_1_IR_transmission_1_0_IR_transmission is
  signal \FSM_sequential_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[1]_i_9_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_10_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_11_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_12_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_13_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_14_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_15_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_16_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_17_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_18_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_19_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_20_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_21_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_22_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_23_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_4_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_5_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_7_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_8_n_0\ : STD_LOGIC;
  signal \FSM_sequential_state[2]_i_9_n_0\ : STD_LOGIC;
  signal bit_count : STD_LOGIC;
  signal bit_count_reg : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal carrier : STD_LOGIC;
  signal carrier_counter : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \carrier_counter0_carry__0_n_0\ : STD_LOGIC;
  signal \carrier_counter0_carry__0_n_1\ : STD_LOGIC;
  signal \carrier_counter0_carry__0_n_2\ : STD_LOGIC;
  signal \carrier_counter0_carry__0_n_3\ : STD_LOGIC;
  signal \carrier_counter0_carry__1_n_0\ : STD_LOGIC;
  signal \carrier_counter0_carry__1_n_1\ : STD_LOGIC;
  signal \carrier_counter0_carry__1_n_2\ : STD_LOGIC;
  signal \carrier_counter0_carry__1_n_3\ : STD_LOGIC;
  signal \carrier_counter0_carry__2_n_2\ : STD_LOGIC;
  signal \carrier_counter0_carry__2_n_3\ : STD_LOGIC;
  signal carrier_counter0_carry_n_0 : STD_LOGIC;
  signal carrier_counter0_carry_n_1 : STD_LOGIC;
  signal carrier_counter0_carry_n_2 : STD_LOGIC;
  signal carrier_counter0_carry_n_3 : STD_LOGIC;
  signal \carrier_counter[15]_i_2_n_0\ : STD_LOGIC;
  signal \carrier_counter[15]_i_3_n_0\ : STD_LOGIC;
  signal \carrier_counter[15]_i_4_n_0\ : STD_LOGIC;
  signal \carrier_counter[15]_i_5_n_0\ : STD_LOGIC;
  signal carrier_counter_1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal carrier_i_1_n_0 : STD_LOGIC;
  signal carrier_reg_n_0 : STD_LOGIC;
  signal counter0 : STD_LOGIC;
  signal \counter0_carry__0_n_0\ : STD_LOGIC;
  signal \counter0_carry__0_n_1\ : STD_LOGIC;
  signal \counter0_carry__0_n_2\ : STD_LOGIC;
  signal \counter0_carry__0_n_3\ : STD_LOGIC;
  signal \counter0_carry__0_n_4\ : STD_LOGIC;
  signal \counter0_carry__0_n_5\ : STD_LOGIC;
  signal \counter0_carry__0_n_6\ : STD_LOGIC;
  signal \counter0_carry__0_n_7\ : STD_LOGIC;
  signal \counter0_carry__1_n_0\ : STD_LOGIC;
  signal \counter0_carry__1_n_1\ : STD_LOGIC;
  signal \counter0_carry__1_n_2\ : STD_LOGIC;
  signal \counter0_carry__1_n_3\ : STD_LOGIC;
  signal \counter0_carry__1_n_4\ : STD_LOGIC;
  signal \counter0_carry__1_n_5\ : STD_LOGIC;
  signal \counter0_carry__1_n_6\ : STD_LOGIC;
  signal \counter0_carry__1_n_7\ : STD_LOGIC;
  signal \counter0_carry__2_n_0\ : STD_LOGIC;
  signal \counter0_carry__2_n_1\ : STD_LOGIC;
  signal \counter0_carry__2_n_2\ : STD_LOGIC;
  signal \counter0_carry__2_n_3\ : STD_LOGIC;
  signal \counter0_carry__2_n_4\ : STD_LOGIC;
  signal \counter0_carry__2_n_5\ : STD_LOGIC;
  signal \counter0_carry__2_n_6\ : STD_LOGIC;
  signal \counter0_carry__2_n_7\ : STD_LOGIC;
  signal \counter0_carry__3_n_0\ : STD_LOGIC;
  signal \counter0_carry__3_n_1\ : STD_LOGIC;
  signal \counter0_carry__3_n_2\ : STD_LOGIC;
  signal \counter0_carry__3_n_3\ : STD_LOGIC;
  signal \counter0_carry__3_n_4\ : STD_LOGIC;
  signal \counter0_carry__3_n_5\ : STD_LOGIC;
  signal \counter0_carry__3_n_6\ : STD_LOGIC;
  signal \counter0_carry__3_n_7\ : STD_LOGIC;
  signal \counter0_carry__4_n_0\ : STD_LOGIC;
  signal \counter0_carry__4_n_1\ : STD_LOGIC;
  signal \counter0_carry__4_n_2\ : STD_LOGIC;
  signal \counter0_carry__4_n_3\ : STD_LOGIC;
  signal \counter0_carry__4_n_4\ : STD_LOGIC;
  signal \counter0_carry__4_n_5\ : STD_LOGIC;
  signal \counter0_carry__4_n_6\ : STD_LOGIC;
  signal \counter0_carry__4_n_7\ : STD_LOGIC;
  signal \counter0_carry__5_n_0\ : STD_LOGIC;
  signal \counter0_carry__5_n_1\ : STD_LOGIC;
  signal \counter0_carry__5_n_2\ : STD_LOGIC;
  signal \counter0_carry__5_n_3\ : STD_LOGIC;
  signal \counter0_carry__5_n_4\ : STD_LOGIC;
  signal \counter0_carry__5_n_5\ : STD_LOGIC;
  signal \counter0_carry__5_n_6\ : STD_LOGIC;
  signal \counter0_carry__5_n_7\ : STD_LOGIC;
  signal \counter0_carry__6_n_3\ : STD_LOGIC;
  signal \counter0_carry__6_n_6\ : STD_LOGIC;
  signal \counter0_carry__6_n_7\ : STD_LOGIC;
  signal counter0_carry_n_0 : STD_LOGIC;
  signal counter0_carry_n_1 : STD_LOGIC;
  signal counter0_carry_n_2 : STD_LOGIC;
  signal counter0_carry_n_3 : STD_LOGIC;
  signal counter0_carry_n_4 : STD_LOGIC;
  signal counter0_carry_n_5 : STD_LOGIC;
  signal counter0_carry_n_6 : STD_LOGIC;
  signal counter0_carry_n_7 : STD_LOGIC;
  signal \counter[0]_i_1_n_0\ : STD_LOGIC;
  signal \counter[10]_i_1_n_0\ : STD_LOGIC;
  signal \counter[11]_i_1_n_0\ : STD_LOGIC;
  signal \counter[12]_i_1_n_0\ : STD_LOGIC;
  signal \counter[13]_i_1_n_0\ : STD_LOGIC;
  signal \counter[14]_i_1_n_0\ : STD_LOGIC;
  signal \counter[15]_i_1_n_0\ : STD_LOGIC;
  signal \counter[16]_i_1_n_0\ : STD_LOGIC;
  signal \counter[17]_i_1_n_0\ : STD_LOGIC;
  signal \counter[18]_i_1_n_0\ : STD_LOGIC;
  signal \counter[19]_i_1_n_0\ : STD_LOGIC;
  signal \counter[1]_i_1_n_0\ : STD_LOGIC;
  signal \counter[20]_i_1_n_0\ : STD_LOGIC;
  signal \counter[21]_i_1_n_0\ : STD_LOGIC;
  signal \counter[22]_i_1_n_0\ : STD_LOGIC;
  signal \counter[23]_i_1_n_0\ : STD_LOGIC;
  signal \counter[24]_i_1_n_0\ : STD_LOGIC;
  signal \counter[25]_i_1_n_0\ : STD_LOGIC;
  signal \counter[26]_i_1_n_0\ : STD_LOGIC;
  signal \counter[27]_i_1_n_0\ : STD_LOGIC;
  signal \counter[28]_i_1_n_0\ : STD_LOGIC;
  signal \counter[29]_i_1_n_0\ : STD_LOGIC;
  signal \counter[2]_i_1_n_0\ : STD_LOGIC;
  signal \counter[30]_i_10_n_0\ : STD_LOGIC;
  signal \counter[30]_i_11_n_0\ : STD_LOGIC;
  signal \counter[30]_i_12_n_0\ : STD_LOGIC;
  signal \counter[30]_i_13_n_0\ : STD_LOGIC;
  signal \counter[30]_i_14_n_0\ : STD_LOGIC;
  signal \counter[30]_i_2_n_0\ : STD_LOGIC;
  signal \counter[30]_i_3_n_0\ : STD_LOGIC;
  signal \counter[30]_i_4_n_0\ : STD_LOGIC;
  signal \counter[30]_i_5_n_0\ : STD_LOGIC;
  signal \counter[30]_i_6_n_0\ : STD_LOGIC;
  signal \counter[30]_i_7_n_0\ : STD_LOGIC;
  signal \counter[30]_i_8_n_0\ : STD_LOGIC;
  signal \counter[30]_i_9_n_0\ : STD_LOGIC;
  signal \counter[3]_i_1_n_0\ : STD_LOGIC;
  signal \counter[4]_i_1_n_0\ : STD_LOGIC;
  signal \counter[5]_i_1_n_0\ : STD_LOGIC;
  signal \counter[6]_i_1_n_0\ : STD_LOGIC;
  signal \counter[7]_i_1_n_0\ : STD_LOGIC;
  signal \counter[8]_i_1_n_0\ : STD_LOGIC;
  signal \counter[9]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg_n_0_[0]\ : STD_LOGIC;
  signal \counter_reg_n_0_[10]\ : STD_LOGIC;
  signal \counter_reg_n_0_[11]\ : STD_LOGIC;
  signal \counter_reg_n_0_[12]\ : STD_LOGIC;
  signal \counter_reg_n_0_[13]\ : STD_LOGIC;
  signal \counter_reg_n_0_[14]\ : STD_LOGIC;
  signal \counter_reg_n_0_[15]\ : STD_LOGIC;
  signal \counter_reg_n_0_[16]\ : STD_LOGIC;
  signal \counter_reg_n_0_[17]\ : STD_LOGIC;
  signal \counter_reg_n_0_[18]\ : STD_LOGIC;
  signal \counter_reg_n_0_[19]\ : STD_LOGIC;
  signal \counter_reg_n_0_[1]\ : STD_LOGIC;
  signal \counter_reg_n_0_[20]\ : STD_LOGIC;
  signal \counter_reg_n_0_[21]\ : STD_LOGIC;
  signal \counter_reg_n_0_[22]\ : STD_LOGIC;
  signal \counter_reg_n_0_[23]\ : STD_LOGIC;
  signal \counter_reg_n_0_[24]\ : STD_LOGIC;
  signal \counter_reg_n_0_[25]\ : STD_LOGIC;
  signal \counter_reg_n_0_[26]\ : STD_LOGIC;
  signal \counter_reg_n_0_[27]\ : STD_LOGIC;
  signal \counter_reg_n_0_[28]\ : STD_LOGIC;
  signal \counter_reg_n_0_[29]\ : STD_LOGIC;
  signal \counter_reg_n_0_[2]\ : STD_LOGIC;
  signal \counter_reg_n_0_[30]\ : STD_LOGIC;
  signal \counter_reg_n_0_[3]\ : STD_LOGIC;
  signal \counter_reg_n_0_[4]\ : STD_LOGIC;
  signal \counter_reg_n_0_[5]\ : STD_LOGIC;
  signal \counter_reg_n_0_[6]\ : STD_LOGIC;
  signal \counter_reg_n_0_[7]\ : STD_LOGIC;
  signal \counter_reg_n_0_[8]\ : STD_LOGIC;
  signal \counter_reg_n_0_[9]\ : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 15 downto 1 );
  signal \^ir_out\ : STD_LOGIC;
  signal ir_out_i_1_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal p_0_in_0 : STD_LOGIC;
  signal pulse_active_i_1_n_0 : STD_LOGIC;
  signal pulse_active_reg_n_0 : STD_LOGIC;
  signal \shift_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \shift_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \shift_reg[10]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[13]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[14]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[17]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[18]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[21]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[22]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[25]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[26]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[27]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[28]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[29]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[2]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[30]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[31]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[31]_i_2_n_0\ : STD_LOGIC;
  signal \shift_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[5]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[6]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg[9]_i_1_n_0\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[10]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[11]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[12]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[13]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[14]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[15]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[16]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[17]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[18]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[19]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[20]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[21]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[22]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[23]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[24]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[25]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[26]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[27]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[28]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[29]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[2]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[30]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[4]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[5]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[6]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[7]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[8]\ : STD_LOGIC;
  signal \shift_reg_reg_n_0_[9]\ : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \state__0\ : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal \NLW_carrier_counter0_carry__2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_carrier_counter0_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_counter0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_counter0_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_10\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_5\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_6\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_8\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_15\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_16\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_18\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_19\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_21\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_7\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \FSM_sequential_state[2]_i_8\ : label is "soft_lutpair1";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "IDLE:000,START_PULSE:001,START_SPACE:010,DATA_SPACE:100,RELAX:110,DATA_PULSE:011,STOP:101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "IDLE:000,START_PULSE:001,START_SPACE:010,DATA_SPACE:100,RELAX:110,DATA_PULSE:011,STOP:101";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[2]\ : label is "IDLE:000,START_PULSE:001,START_SPACE:010,DATA_SPACE:100,RELAX:110,DATA_PULSE:011,STOP:101";
  attribute SOFT_HLUTNM of \bit_count[1]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \bit_count[2]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \bit_count[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \bit_count[4]_i_1\ : label is "soft_lutpair0";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of carrier_counter0_carry : label is 35;
  attribute ADDER_THRESHOLD of \carrier_counter0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \carrier_counter0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \carrier_counter0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of counter0_carry : label is 35;
  attribute ADDER_THRESHOLD of \counter0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \counter0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \counter0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \counter0_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \counter0_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \counter0_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \counter0_carry__6\ : label is 35;
  attribute SOFT_HLUTNM of \counter[30]_i_11\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \counter[30]_i_13\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \counter[30]_i_14\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \counter[30]_i_7\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \counter[30]_i_9\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \shift_reg[0]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \shift_reg[0]_i_3\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \shift_reg[10]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \shift_reg[11]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \shift_reg[12]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \shift_reg[13]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \shift_reg[14]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \shift_reg[15]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \shift_reg[16]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \shift_reg[17]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \shift_reg[18]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \shift_reg[19]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \shift_reg[1]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \shift_reg[20]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \shift_reg[21]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \shift_reg[22]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \shift_reg[23]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \shift_reg[24]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \shift_reg[25]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \shift_reg[26]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \shift_reg[27]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \shift_reg[28]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \shift_reg[29]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \shift_reg[2]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \shift_reg[30]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \shift_reg[31]_i_2\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \shift_reg[3]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \shift_reg[4]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \shift_reg[5]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \shift_reg[6]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \shift_reg[7]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \shift_reg[9]_i_1\ : label is "soft_lutpair23";
begin
  ir_out <= \^ir_out\;
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"35300F0F3530F0F0"
    )
        port map (
      I0 => state(1),
      I1 => \FSM_sequential_state[2]_i_3_n_0\,
      I2 => state(0),
      I3 => \FSM_sequential_state[2]_i_4_n_0\,
      I4 => state(2),
      I5 => \FSM_sequential_state[2]_i_5_n_0\,
      O => \FSM_sequential_state[0]_i_1_n_0\
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABF8A8ABABF8080"
    )
        port map (
      I0 => \state__0\(1),
      I1 => \FSM_sequential_state[1]_i_3_n_0\,
      I2 => state(2),
      I3 => \FSM_sequential_state[1]_i_4_n_0\,
      I4 => state(1),
      I5 => \FSM_sequential_state[1]_i_5_n_0\,
      O => \FSM_sequential_state[1]_i_1_n_0\
    );
\FSM_sequential_state[1]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_reg_n_0_[10]\,
      I1 => \counter_reg_n_0_[11]\,
      O => \FSM_sequential_state[1]_i_10_n_0\
    );
\FSM_sequential_state[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1126"
    )
        port map (
      I0 => state(0),
      I1 => state(2),
      I2 => \FSM_sequential_state[2]_i_6_n_0\,
      I3 => state(1),
      O => \state__0\(1)
    );
\FSM_sequential_state[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DC88DCDC"
    )
        port map (
      I0 => state(0),
      I1 => \FSM_sequential_state[2]_i_3_n_0\,
      I2 => p_0_in_0,
      I3 => \FSM_sequential_state[1]_i_6_n_0\,
      I4 => \FSM_sequential_state[2]_i_11_n_0\,
      O => \FSM_sequential_state[1]_i_3_n_0\
    );
\FSM_sequential_state[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBB8BBB8B8B8B8"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_3_n_0\,
      I1 => state(0),
      I2 => \FSM_sequential_state[2]_i_8_n_0\,
      I3 => \FSM_sequential_state[1]_i_7_n_0\,
      I4 => \FSM_sequential_state[1]_i_8_n_0\,
      I5 => \counter_reg_n_0_[19]\,
      O => \FSM_sequential_state[1]_i_4_n_0\
    );
\FSM_sequential_state[1]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \counter[30]_i_4_n_0\,
      I1 => state(0),
      I2 => send,
      O => \FSM_sequential_state[1]_i_5_n_0\
    );
\FSM_sequential_state[1]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEFF"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_8_n_0\,
      I1 => \counter_reg_n_0_[18]\,
      I2 => \counter_reg_n_0_[19]\,
      I3 => p_0_in_0,
      O => \FSM_sequential_state[1]_i_6_n_0\
    );
\FSM_sequential_state[1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555555555555FFDF"
    )
        port map (
      I0 => \counter_reg_n_0_[15]\,
      I1 => \FSM_sequential_state[1]_i_9_n_0\,
      I2 => \counter_reg_n_0_[12]\,
      I3 => \FSM_sequential_state[1]_i_10_n_0\,
      I4 => \counter_reg_n_0_[14]\,
      I5 => \counter_reg_n_0_[13]\,
      O => \FSM_sequential_state[1]_i_7_n_0\
    );
\FSM_sequential_state[1]_i_8\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \counter_reg_n_0_[16]\,
      I1 => \counter_reg_n_0_[17]\,
      I2 => \counter_reg_n_0_[18]\,
      O => \FSM_sequential_state[1]_i_8_n_0\
    );
\FSM_sequential_state[1]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000FF1F"
    )
        port map (
      I0 => \counter_reg_n_0_[6]\,
      I1 => \counter_reg_n_0_[7]\,
      I2 => \counter_reg_n_0_[8]\,
      I3 => \FSM_sequential_state[2]_i_22_n_0\,
      I4 => \counter_reg_n_0_[11]\,
      I5 => \counter_reg_n_0_[9]\,
      O => \FSM_sequential_state[1]_i_9_n_0\
    );
\FSM_sequential_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BABFAAAABABF0000"
    )
        port map (
      I0 => \state__0\(2),
      I1 => \FSM_sequential_state[2]_i_3_n_0\,
      I2 => state(0),
      I3 => \FSM_sequential_state[2]_i_4_n_0\,
      I4 => state(2),
      I5 => \FSM_sequential_state[2]_i_5_n_0\,
      O => \FSM_sequential_state[2]_i_1_n_0\
    );
\FSM_sequential_state[2]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_reg_n_0_[15]\,
      I1 => \counter_reg_n_0_[14]\,
      O => \FSM_sequential_state[2]_i_10_n_0\
    );
\FSM_sequential_state[2]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000DFFFFFFFFFFFF"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_17_n_0\,
      I1 => \FSM_sequential_state[2]_i_18_n_0\,
      I2 => \counter_reg_n_0_[15]\,
      I3 => \counter_reg_n_0_[14]\,
      I4 => \counter_reg_n_0_[16]\,
      I5 => \counter_reg_n_0_[17]\,
      O => \FSM_sequential_state[2]_i_11_n_0\
    );
\FSM_sequential_state[2]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFEFAAAAAAAAAA"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_8_n_0\,
      I1 => \FSM_sequential_state[2]_i_19_n_0\,
      I2 => \FSM_sequential_state[2]_i_20_n_0\,
      I3 => \counter_reg_n_0_[15]\,
      I4 => \FSM_sequential_state[1]_i_8_n_0\,
      I5 => \counter_reg_n_0_[19]\,
      O => \FSM_sequential_state[2]_i_12_n_0\
    );
\FSM_sequential_state[2]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \counter_reg_n_0_[28]\,
      I1 => \counter_reg_n_0_[29]\,
      I2 => \counter_reg_n_0_[27]\,
      I3 => \counter_reg_n_0_[30]\,
      O => \FSM_sequential_state[2]_i_13_n_0\
    );
\FSM_sequential_state[2]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \counter_reg_n_0_[25]\,
      I1 => \counter_reg_n_0_[26]\,
      I2 => \counter_reg_n_0_[23]\,
      I3 => \counter_reg_n_0_[24]\,
      O => \FSM_sequential_state[2]_i_14_n_0\
    );
\FSM_sequential_state[2]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFE0"
    )
        port map (
      I0 => \counter_reg_n_0_[7]\,
      I1 => \counter_reg_n_0_[8]\,
      I2 => \counter_reg_n_0_[9]\,
      I3 => \counter_reg_n_0_[11]\,
      I4 => \counter_reg_n_0_[10]\,
      O => \FSM_sequential_state[2]_i_15_n_0\
    );
\FSM_sequential_state[2]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0133"
    )
        port map (
      I0 => \counter_reg_n_0_[1]\,
      I1 => \counter_reg_n_0_[4]\,
      I2 => \counter_reg_n_0_[2]\,
      I3 => \counter_reg_n_0_[3]\,
      O => \FSM_sequential_state[2]_i_16_n_0\
    );
\FSM_sequential_state[2]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAEAEAAAEAEAEAEA"
    )
        port map (
      I0 => \counter_reg_n_0_[11]\,
      I1 => \counter_reg_n_0_[9]\,
      I2 => \counter_reg_n_0_[8]\,
      I3 => \counter_reg_n_0_[6]\,
      I4 => \counter_reg_n_0_[7]\,
      I5 => \FSM_sequential_state[2]_i_21_n_0\,
      O => \FSM_sequential_state[2]_i_17_n_0\
    );
\FSM_sequential_state[2]_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1FFF"
    )
        port map (
      I0 => \counter_reg_n_0_[11]\,
      I1 => \counter_reg_n_0_[10]\,
      I2 => \counter_reg_n_0_[12]\,
      I3 => \counter_reg_n_0_[13]\,
      O => \FSM_sequential_state[2]_i_18_n_0\
    );
\FSM_sequential_state[2]_i_19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \counter_reg_n_0_[14]\,
      I1 => \counter_reg_n_0_[13]\,
      O => \FSM_sequential_state[2]_i_19_n_0\
    );
\FSM_sequential_state[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1808"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      I2 => state(2),
      I3 => \FSM_sequential_state[2]_i_6_n_0\,
      O => \state__0\(2)
    );
\FSM_sequential_state[2]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF00FF54FFFFFF"
    )
        port map (
      I0 => \counter_reg_n_0_[9]\,
      I1 => \FSM_sequential_state[2]_i_22_n_0\,
      I2 => \FSM_sequential_state[2]_i_23_n_0\,
      I3 => \counter_reg_n_0_[12]\,
      I4 => \counter_reg_n_0_[10]\,
      I5 => \counter_reg_n_0_[11]\,
      O => \FSM_sequential_state[2]_i_20_n_0\
    );
\FSM_sequential_state[2]_i_21\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => \counter_reg_n_0_[4]\,
      I1 => \counter_reg_n_0_[5]\,
      I2 => \counter_reg_n_0_[1]\,
      I3 => \counter_reg_n_0_[2]\,
      I4 => \counter_reg_n_0_[3]\,
      O => \FSM_sequential_state[2]_i_21_n_0\
    );
\FSM_sequential_state[2]_i_22\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \counter_reg_n_0_[5]\,
      I1 => \counter_reg_n_0_[4]\,
      I2 => \counter_reg_n_0_[3]\,
      I3 => \counter_reg_n_0_[7]\,
      I4 => \counter_reg_n_0_[2]\,
      O => \FSM_sequential_state[2]_i_22_n_0\
    );
\FSM_sequential_state[2]_i_23\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => \counter_reg_n_0_[6]\,
      I1 => \counter_reg_n_0_[7]\,
      I2 => \counter_reg_n_0_[8]\,
      O => \FSM_sequential_state[2]_i_23_n_0\
    );
\FSM_sequential_state[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFEFEEEFEFEFE"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_7_n_0\,
      I1 => \FSM_sequential_state[2]_i_8_n_0\,
      I2 => \counter_reg_n_0_[16]\,
      I3 => \FSM_sequential_state[2]_i_9_n_0\,
      I4 => \FSM_sequential_state[2]_i_10_n_0\,
      I5 => \counter_reg_n_0_[13]\,
      O => \FSM_sequential_state[2]_i_3_n_0\
    );
\FSM_sequential_state[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFCAAAAFFFFAAAA"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_3_n_0\,
      I1 => \FSM_sequential_state[2]_i_8_n_0\,
      I2 => \counter_reg_n_0_[18]\,
      I3 => \counter_reg_n_0_[19]\,
      I4 => p_0_in_0,
      I5 => \FSM_sequential_state[2]_i_11_n_0\,
      O => \FSM_sequential_state[2]_i_4_n_0\
    );
\FSM_sequential_state[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_3_n_0\,
      I1 => \FSM_sequential_state[2]_i_12_n_0\,
      I2 => state(1),
      I3 => \counter[30]_i_4_n_0\,
      I4 => state(0),
      I5 => send,
      O => \FSM_sequential_state[2]_i_5_n_0\
    );
\FSM_sequential_state[2]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => bit_count_reg(3),
      I1 => bit_count_reg(0),
      I2 => bit_count_reg(1),
      I3 => bit_count_reg(2),
      I4 => bit_count_reg(4),
      I5 => bit_count_reg(5),
      O => \FSM_sequential_state[2]_i_6_n_0\
    );
\FSM_sequential_state[2]_i_7\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \counter_reg_n_0_[19]\,
      I1 => \counter_reg_n_0_[17]\,
      I2 => \counter_reg_n_0_[18]\,
      O => \FSM_sequential_state[2]_i_7_n_0\
    );
\FSM_sequential_state[2]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \counter_reg_n_0_[20]\,
      I1 => \FSM_sequential_state[2]_i_13_n_0\,
      I2 => \FSM_sequential_state[2]_i_14_n_0\,
      I3 => \counter_reg_n_0_[22]\,
      I4 => \counter_reg_n_0_[21]\,
      O => \FSM_sequential_state[2]_i_8_n_0\
    );
\FSM_sequential_state[2]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"45555555FFFFFFFF"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_15_n_0\,
      I1 => \FSM_sequential_state[2]_i_16_n_0\,
      I2 => \counter_reg_n_0_[6]\,
      I3 => \counter_reg_n_0_[9]\,
      I4 => \counter_reg_n_0_[5]\,
      I5 => \counter_reg_n_0_[12]\,
      O => \FSM_sequential_state[2]_i_9_n_0\
    );
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_state[0]_i_1_n_0\,
      Q => state(0),
      R => '0'
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_state[1]_i_1_n_0\,
      Q => state(1),
      R => '0'
    );
\FSM_sequential_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \FSM_sequential_state[2]_i_1_n_0\,
      Q => state(2),
      R => '0'
    );
\bit_count[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bit_count_reg(0),
      O => p_0_in(0)
    );
\bit_count[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => bit_count_reg(0),
      I1 => bit_count_reg(1),
      O => p_0_in(1)
    );
\bit_count[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => bit_count_reg(2),
      I1 => bit_count_reg(1),
      I2 => bit_count_reg(0),
      O => p_0_in(2)
    );
\bit_count[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => bit_count_reg(3),
      I1 => bit_count_reg(0),
      I2 => bit_count_reg(1),
      I3 => bit_count_reg(2),
      O => p_0_in(3)
    );
\bit_count[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => bit_count_reg(4),
      I1 => bit_count_reg(2),
      I2 => bit_count_reg(1),
      I3 => bit_count_reg(0),
      I4 => bit_count_reg(3),
      O => p_0_in(4)
    );
\bit_count[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_4_n_0\,
      I1 => state(2),
      I2 => state(0),
      I3 => state(1),
      O => bit_count
    );
\bit_count[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => bit_count_reg(5),
      I1 => bit_count_reg(3),
      I2 => bit_count_reg(0),
      I3 => bit_count_reg(1),
      I4 => bit_count_reg(2),
      I5 => bit_count_reg(4),
      O => p_0_in(5)
    );
\bit_count_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => bit_count,
      D => p_0_in(0),
      Q => bit_count_reg(0),
      R => counter0
    );
\bit_count_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => bit_count,
      D => p_0_in(1),
      Q => bit_count_reg(1),
      R => counter0
    );
\bit_count_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => bit_count,
      D => p_0_in(2),
      Q => bit_count_reg(2),
      R => counter0
    );
\bit_count_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => bit_count,
      D => p_0_in(3),
      Q => bit_count_reg(3),
      R => counter0
    );
\bit_count_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => bit_count,
      D => p_0_in(4),
      Q => bit_count_reg(4),
      R => counter0
    );
\bit_count_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => bit_count,
      D => p_0_in(5),
      Q => bit_count_reg(5),
      R => counter0
    );
carrier_counter0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => carrier_counter0_carry_n_0,
      CO(2) => carrier_counter0_carry_n_1,
      CO(1) => carrier_counter0_carry_n_2,
      CO(0) => carrier_counter0_carry_n_3,
      CYINIT => carrier_counter(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3 downto 0) => carrier_counter(4 downto 1)
    );
\carrier_counter0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => carrier_counter0_carry_n_0,
      CO(3) => \carrier_counter0_carry__0_n_0\,
      CO(2) => \carrier_counter0_carry__0_n_1\,
      CO(1) => \carrier_counter0_carry__0_n_2\,
      CO(0) => \carrier_counter0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3 downto 0) => carrier_counter(8 downto 5)
    );
\carrier_counter0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \carrier_counter0_carry__0_n_0\,
      CO(3) => \carrier_counter0_carry__1_n_0\,
      CO(2) => \carrier_counter0_carry__1_n_1\,
      CO(1) => \carrier_counter0_carry__1_n_2\,
      CO(0) => \carrier_counter0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3 downto 0) => carrier_counter(12 downto 9)
    );
\carrier_counter0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \carrier_counter0_carry__1_n_0\,
      CO(3 downto 2) => \NLW_carrier_counter0_carry__2_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \carrier_counter0_carry__2_n_2\,
      CO(0) => \carrier_counter0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_carrier_counter0_carry__2_O_UNCONNECTED\(3),
      O(2 downto 0) => data0(15 downto 13),
      S(3) => '0',
      S(2 downto 0) => carrier_counter(15 downto 13)
    );
\carrier_counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => carrier_counter(0),
      O => carrier_counter_1(0)
    );
\carrier_counter[15]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \carrier_counter[15]_i_2_n_0\,
      O => carrier
    );
\carrier_counter[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFBFFF"
    )
        port map (
      I0 => \carrier_counter[15]_i_3_n_0\,
      I1 => carrier_counter(1),
      I2 => carrier_counter(0),
      I3 => carrier_counter(3),
      I4 => carrier_counter(2),
      I5 => \carrier_counter[15]_i_4_n_0\,
      O => \carrier_counter[15]_i_2_n_0\
    );
\carrier_counter[15]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => carrier_counter(5),
      I1 => carrier_counter(4),
      I2 => carrier_counter(6),
      I3 => carrier_counter(7),
      O => \carrier_counter[15]_i_3_n_0\
    );
\carrier_counter[15]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFBFF"
    )
        port map (
      I0 => carrier_counter(11),
      I1 => carrier_counter(10),
      I2 => carrier_counter(8),
      I3 => carrier_counter(9),
      I4 => \carrier_counter[15]_i_5_n_0\,
      O => \carrier_counter[15]_i_4_n_0\
    );
\carrier_counter[15]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => carrier_counter(13),
      I1 => carrier_counter(12),
      I2 => carrier_counter(15),
      I3 => carrier_counter(14),
      O => \carrier_counter[15]_i_5_n_0\
    );
\carrier_counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => carrier_counter_1(0),
      Q => carrier_counter(0),
      R => '0'
    );
\carrier_counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(10),
      Q => carrier_counter(10),
      R => carrier
    );
\carrier_counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(11),
      Q => carrier_counter(11),
      R => carrier
    );
\carrier_counter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(12),
      Q => carrier_counter(12),
      R => carrier
    );
\carrier_counter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(13),
      Q => carrier_counter(13),
      R => carrier
    );
\carrier_counter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(14),
      Q => carrier_counter(14),
      R => carrier
    );
\carrier_counter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(15),
      Q => carrier_counter(15),
      R => carrier
    );
\carrier_counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(1),
      Q => carrier_counter(1),
      R => carrier
    );
\carrier_counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(2),
      Q => carrier_counter(2),
      R => carrier
    );
\carrier_counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(3),
      Q => carrier_counter(3),
      R => carrier
    );
\carrier_counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(4),
      Q => carrier_counter(4),
      R => carrier
    );
\carrier_counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(5),
      Q => carrier_counter(5),
      R => carrier
    );
\carrier_counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(6),
      Q => carrier_counter(6),
      R => carrier
    );
\carrier_counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(7),
      Q => carrier_counter(7),
      R => carrier
    );
\carrier_counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(8),
      Q => carrier_counter(8),
      R => carrier
    );
\carrier_counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => data0(9),
      Q => carrier_counter(9),
      R => carrier
    );
carrier_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \carrier_counter[15]_i_2_n_0\,
      I1 => carrier_reg_n_0,
      O => carrier_i_1_n_0
    );
carrier_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => carrier_i_1_n_0,
      Q => carrier_reg_n_0,
      R => '0'
    );
counter0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => counter0_carry_n_0,
      CO(2) => counter0_carry_n_1,
      CO(1) => counter0_carry_n_2,
      CO(0) => counter0_carry_n_3,
      CYINIT => \counter_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3) => counter0_carry_n_4,
      O(2) => counter0_carry_n_5,
      O(1) => counter0_carry_n_6,
      O(0) => counter0_carry_n_7,
      S(3) => \counter_reg_n_0_[4]\,
      S(2) => \counter_reg_n_0_[3]\,
      S(1) => \counter_reg_n_0_[2]\,
      S(0) => \counter_reg_n_0_[1]\
    );
\counter0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => counter0_carry_n_0,
      CO(3) => \counter0_carry__0_n_0\,
      CO(2) => \counter0_carry__0_n_1\,
      CO(1) => \counter0_carry__0_n_2\,
      CO(0) => \counter0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter0_carry__0_n_4\,
      O(2) => \counter0_carry__0_n_5\,
      O(1) => \counter0_carry__0_n_6\,
      O(0) => \counter0_carry__0_n_7\,
      S(3) => \counter_reg_n_0_[8]\,
      S(2) => \counter_reg_n_0_[7]\,
      S(1) => \counter_reg_n_0_[6]\,
      S(0) => \counter_reg_n_0_[5]\
    );
\counter0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter0_carry__0_n_0\,
      CO(3) => \counter0_carry__1_n_0\,
      CO(2) => \counter0_carry__1_n_1\,
      CO(1) => \counter0_carry__1_n_2\,
      CO(0) => \counter0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter0_carry__1_n_4\,
      O(2) => \counter0_carry__1_n_5\,
      O(1) => \counter0_carry__1_n_6\,
      O(0) => \counter0_carry__1_n_7\,
      S(3) => \counter_reg_n_0_[12]\,
      S(2) => \counter_reg_n_0_[11]\,
      S(1) => \counter_reg_n_0_[10]\,
      S(0) => \counter_reg_n_0_[9]\
    );
\counter0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter0_carry__1_n_0\,
      CO(3) => \counter0_carry__2_n_0\,
      CO(2) => \counter0_carry__2_n_1\,
      CO(1) => \counter0_carry__2_n_2\,
      CO(0) => \counter0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter0_carry__2_n_4\,
      O(2) => \counter0_carry__2_n_5\,
      O(1) => \counter0_carry__2_n_6\,
      O(0) => \counter0_carry__2_n_7\,
      S(3) => \counter_reg_n_0_[16]\,
      S(2) => \counter_reg_n_0_[15]\,
      S(1) => \counter_reg_n_0_[14]\,
      S(0) => \counter_reg_n_0_[13]\
    );
\counter0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter0_carry__2_n_0\,
      CO(3) => \counter0_carry__3_n_0\,
      CO(2) => \counter0_carry__3_n_1\,
      CO(1) => \counter0_carry__3_n_2\,
      CO(0) => \counter0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter0_carry__3_n_4\,
      O(2) => \counter0_carry__3_n_5\,
      O(1) => \counter0_carry__3_n_6\,
      O(0) => \counter0_carry__3_n_7\,
      S(3) => \counter_reg_n_0_[20]\,
      S(2) => \counter_reg_n_0_[19]\,
      S(1) => \counter_reg_n_0_[18]\,
      S(0) => \counter_reg_n_0_[17]\
    );
\counter0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter0_carry__3_n_0\,
      CO(3) => \counter0_carry__4_n_0\,
      CO(2) => \counter0_carry__4_n_1\,
      CO(1) => \counter0_carry__4_n_2\,
      CO(0) => \counter0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter0_carry__4_n_4\,
      O(2) => \counter0_carry__4_n_5\,
      O(1) => \counter0_carry__4_n_6\,
      O(0) => \counter0_carry__4_n_7\,
      S(3) => \counter_reg_n_0_[24]\,
      S(2) => \counter_reg_n_0_[23]\,
      S(1) => \counter_reg_n_0_[22]\,
      S(0) => \counter_reg_n_0_[21]\
    );
\counter0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter0_carry__4_n_0\,
      CO(3) => \counter0_carry__5_n_0\,
      CO(2) => \counter0_carry__5_n_1\,
      CO(1) => \counter0_carry__5_n_2\,
      CO(0) => \counter0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter0_carry__5_n_4\,
      O(2) => \counter0_carry__5_n_5\,
      O(1) => \counter0_carry__5_n_6\,
      O(0) => \counter0_carry__5_n_7\,
      S(3) => \counter_reg_n_0_[28]\,
      S(2) => \counter_reg_n_0_[27]\,
      S(1) => \counter_reg_n_0_[26]\,
      S(0) => \counter_reg_n_0_[25]\
    );
\counter0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter0_carry__5_n_0\,
      CO(3 downto 1) => \NLW_counter0_carry__6_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \counter0_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_counter0_carry__6_O_UNCONNECTED\(3 downto 2),
      O(1) => \counter0_carry__6_n_6\,
      O(0) => \counter0_carry__6_n_7\,
      S(3 downto 2) => B"00",
      S(1) => \counter_reg_n_0_[30]\,
      S(0) => \counter_reg_n_0_[29]\
    );
\counter[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000EFAA00004500"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => \counter[30]_i_4_n_0\,
      I3 => \counter[30]_i_5_n_0\,
      I4 => \counter_reg_n_0_[0]\,
      I5 => \counter[30]_i_6_n_0\,
      O => \counter[0]_i_1_n_0\
    );
\counter[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAA000045000000"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => \counter[30]_i_4_n_0\,
      I3 => \counter[30]_i_5_n_0\,
      I4 => \counter0_carry__1_n_6\,
      I5 => \counter[30]_i_6_n_0\,
      O => \counter[10]_i_1_n_0\
    );
\counter[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAA000045000000"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => \counter[30]_i_4_n_0\,
      I3 => \counter[30]_i_5_n_0\,
      I4 => \counter0_carry__1_n_5\,
      I5 => \counter[30]_i_6_n_0\,
      O => \counter[11]_i_1_n_0\
    );
\counter[12]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAA000045000000"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => \counter[30]_i_4_n_0\,
      I3 => \counter[30]_i_5_n_0\,
      I4 => \counter0_carry__1_n_4\,
      I5 => \counter[30]_i_6_n_0\,
      O => \counter[12]_i_1_n_0\
    );
\counter[13]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAA000045000000"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => \counter[30]_i_4_n_0\,
      I3 => \counter[30]_i_5_n_0\,
      I4 => \counter0_carry__2_n_7\,
      I5 => \counter[30]_i_6_n_0\,
      O => \counter[13]_i_1_n_0\
    );
\counter[14]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAA000045000000"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => \counter[30]_i_4_n_0\,
      I3 => \counter[30]_i_5_n_0\,
      I4 => \counter0_carry__2_n_6\,
      I5 => \counter[30]_i_6_n_0\,
      O => \counter[14]_i_1_n_0\
    );
\counter[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAA000045000000"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => \counter[30]_i_4_n_0\,
      I3 => \counter[30]_i_5_n_0\,
      I4 => \counter0_carry__2_n_5\,
      I5 => \counter[30]_i_6_n_0\,
      O => \counter[15]_i_1_n_0\
    );
\counter[16]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAA000045000000"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => \counter[30]_i_4_n_0\,
      I3 => \counter[30]_i_5_n_0\,
      I4 => \counter0_carry__2_n_4\,
      I5 => \counter[30]_i_6_n_0\,
      O => \counter[16]_i_1_n_0\
    );
\counter[17]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAA000045000000"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => \counter[30]_i_4_n_0\,
      I3 => \counter[30]_i_5_n_0\,
      I4 => \counter0_carry__3_n_7\,
      I5 => \counter[30]_i_6_n_0\,
      O => \counter[17]_i_1_n_0\
    );
\counter[18]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EF450000AA000000"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => \counter[30]_i_4_n_0\,
      I3 => \counter[30]_i_6_n_0\,
      I4 => \counter0_carry__3_n_6\,
      I5 => \counter[30]_i_5_n_0\,
      O => \counter[18]_i_1_n_0\
    );
\counter[19]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAA000045000000"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => \counter[30]_i_4_n_0\,
      I3 => \counter[30]_i_5_n_0\,
      I4 => \counter0_carry__3_n_5\,
      I5 => \counter[30]_i_6_n_0\,
      O => \counter[19]_i_1_n_0\
    );
\counter[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAA000045000000"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => \counter[30]_i_4_n_0\,
      I3 => \counter[30]_i_5_n_0\,
      I4 => counter0_carry_n_7,
      I5 => \counter[30]_i_6_n_0\,
      O => \counter[1]_i_1_n_0\
    );
\counter[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAA000045000000"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => \counter[30]_i_4_n_0\,
      I3 => \counter[30]_i_5_n_0\,
      I4 => \counter0_carry__3_n_4\,
      I5 => \counter[30]_i_6_n_0\,
      O => \counter[20]_i_1_n_0\
    );
\counter[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAA000045000000"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => \counter[30]_i_4_n_0\,
      I3 => \counter[30]_i_5_n_0\,
      I4 => \counter0_carry__4_n_7\,
      I5 => \counter[30]_i_6_n_0\,
      O => \counter[21]_i_1_n_0\
    );
\counter[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAA000045000000"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => \counter[30]_i_4_n_0\,
      I3 => \counter[30]_i_5_n_0\,
      I4 => \counter0_carry__4_n_6\,
      I5 => \counter[30]_i_6_n_0\,
      O => \counter[22]_i_1_n_0\
    );
\counter[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAA000045000000"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => \counter[30]_i_4_n_0\,
      I3 => \counter[30]_i_5_n_0\,
      I4 => \counter0_carry__4_n_5\,
      I5 => \counter[30]_i_6_n_0\,
      O => \counter[23]_i_1_n_0\
    );
\counter[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAA000045000000"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => \counter[30]_i_4_n_0\,
      I3 => \counter[30]_i_5_n_0\,
      I4 => \counter0_carry__4_n_4\,
      I5 => \counter[30]_i_6_n_0\,
      O => \counter[24]_i_1_n_0\
    );
\counter[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAA000045000000"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => \counter[30]_i_4_n_0\,
      I3 => \counter[30]_i_5_n_0\,
      I4 => \counter0_carry__5_n_7\,
      I5 => \counter[30]_i_6_n_0\,
      O => \counter[25]_i_1_n_0\
    );
\counter[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAA000045000000"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => \counter[30]_i_4_n_0\,
      I3 => \counter[30]_i_5_n_0\,
      I4 => \counter0_carry__5_n_6\,
      I5 => \counter[30]_i_6_n_0\,
      O => \counter[26]_i_1_n_0\
    );
\counter[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAA000045000000"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => \counter[30]_i_4_n_0\,
      I3 => \counter[30]_i_5_n_0\,
      I4 => \counter0_carry__5_n_5\,
      I5 => \counter[30]_i_6_n_0\,
      O => \counter[27]_i_1_n_0\
    );
\counter[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAA000045000000"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => \counter[30]_i_4_n_0\,
      I3 => \counter[30]_i_5_n_0\,
      I4 => \counter0_carry__5_n_4\,
      I5 => \counter[30]_i_6_n_0\,
      O => \counter[28]_i_1_n_0\
    );
\counter[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EF450000AA000000"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => \counter[30]_i_4_n_0\,
      I3 => \counter[30]_i_6_n_0\,
      I4 => \counter0_carry__6_n_7\,
      I5 => \counter[30]_i_5_n_0\,
      O => \counter[29]_i_1_n_0\
    );
\counter[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAA000045000000"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => \counter[30]_i_4_n_0\,
      I3 => \counter[30]_i_5_n_0\,
      I4 => counter0_carry_n_6,
      I5 => \counter[30]_i_6_n_0\,
      O => \counter[2]_i_1_n_0\
    );
\counter[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => state(1),
      I1 => state(2),
      I2 => state(0),
      O => counter0
    );
\counter[30]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000010FF"
    )
        port map (
      I0 => \counter_reg_n_0_[13]\,
      I1 => \counter_reg_n_0_[14]\,
      I2 => \FSM_sequential_state[2]_i_20_n_0\,
      I3 => \counter_reg_n_0_[15]\,
      I4 => \counter[30]_i_14_n_0\,
      I5 => \counter_reg_n_0_[16]\,
      O => \counter[30]_i_10_n_0\
    );
\counter[30]_i_11\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => \counter_reg_n_0_[9]\,
      I1 => \counter_reg_n_0_[8]\,
      I2 => \counter_reg_n_0_[7]\,
      O => \counter[30]_i_11_n_0\
    );
\counter[30]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \counter_reg_n_0_[5]\,
      I1 => \counter_reg_n_0_[4]\,
      I2 => \counter_reg_n_0_[3]\,
      I3 => \counter_reg_n_0_[8]\,
      I4 => \counter_reg_n_0_[6]\,
      O => \counter[30]_i_12_n_0\
    );
\counter[30]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF8"
    )
        port map (
      I0 => \counter_reg_n_0_[12]\,
      I1 => \counter_reg_n_0_[13]\,
      I2 => \counter_reg_n_0_[14]\,
      I3 => \counter_reg_n_0_[15]\,
      O => \counter[30]_i_13_n_0\
    );
\counter[30]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \counter_reg_n_0_[18]\,
      I1 => \counter_reg_n_0_[17]\,
      O => \counter[30]_i_14_n_0\
    );
\counter[30]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3E"
    )
        port map (
      I0 => state(0),
      I1 => state(2),
      I2 => state(1),
      O => \counter[30]_i_2_n_0\
    );
\counter[30]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAA000045000000"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => \counter[30]_i_4_n_0\,
      I3 => \counter[30]_i_5_n_0\,
      I4 => \counter0_carry__6_n_6\,
      I5 => \counter[30]_i_6_n_0\,
      O => \counter[30]_i_3_n_0\
    );
\counter[30]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"ECEEECEC"
    )
        port map (
      I0 => \counter_reg_n_0_[20]\,
      I1 => \counter[30]_i_7_n_0\,
      I2 => \FSM_sequential_state[2]_i_7_n_0\,
      I3 => \counter[30]_i_8_n_0\,
      I4 => \counter_reg_n_0_[16]\,
      O => \counter[30]_i_4_n_0\
    );
\counter[30]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAFBFFFFAAFB"
    )
        port map (
      I0 => \counter[30]_i_9_n_0\,
      I1 => \counter_reg_n_0_[19]\,
      I2 => \counter[30]_i_10_n_0\,
      I3 => \FSM_sequential_state[2]_i_8_n_0\,
      I4 => state(0),
      I5 => \FSM_sequential_state[2]_i_3_n_0\,
      O => \counter[30]_i_5_n_0\
    );
\counter[30]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1F115555"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_3_n_0\,
      I1 => p_0_in_0,
      I2 => \FSM_sequential_state[1]_i_6_n_0\,
      I3 => \FSM_sequential_state[2]_i_11_n_0\,
      I4 => \counter[30]_i_9_n_0\,
      O => \counter[30]_i_6_n_0\
    );
\counter[30]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \counter_reg_n_0_[21]\,
      I1 => \counter_reg_n_0_[22]\,
      I2 => \FSM_sequential_state[2]_i_14_n_0\,
      I3 => \FSM_sequential_state[2]_i_13_n_0\,
      O => \counter[30]_i_7_n_0\
    );
\counter[30]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000077777FFF"
    )
        port map (
      I0 => \counter_reg_n_0_[13]\,
      I1 => \counter_reg_n_0_[11]\,
      I2 => \counter[30]_i_11_n_0\,
      I3 => \counter[30]_i_12_n_0\,
      I4 => \counter_reg_n_0_[10]\,
      I5 => \counter[30]_i_13_n_0\,
      O => \counter[30]_i_8_n_0\
    );
\counter[30]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"35"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      I2 => state(2),
      O => \counter[30]_i_9_n_0\
    );
\counter[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAA000045000000"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => \counter[30]_i_4_n_0\,
      I3 => \counter[30]_i_5_n_0\,
      I4 => counter0_carry_n_5,
      I5 => \counter[30]_i_6_n_0\,
      O => \counter[3]_i_1_n_0\
    );
\counter[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAA000045000000"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => \counter[30]_i_4_n_0\,
      I3 => \counter[30]_i_5_n_0\,
      I4 => counter0_carry_n_4,
      I5 => \counter[30]_i_6_n_0\,
      O => \counter[4]_i_1_n_0\
    );
\counter[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAA000045000000"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => \counter[30]_i_4_n_0\,
      I3 => \counter[30]_i_5_n_0\,
      I4 => \counter0_carry__0_n_7\,
      I5 => \counter[30]_i_6_n_0\,
      O => \counter[5]_i_1_n_0\
    );
\counter[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAA000045000000"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => \counter[30]_i_4_n_0\,
      I3 => \counter[30]_i_5_n_0\,
      I4 => \counter0_carry__0_n_6\,
      I5 => \counter[30]_i_6_n_0\,
      O => \counter[6]_i_1_n_0\
    );
\counter[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAA000045000000"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => \counter[30]_i_4_n_0\,
      I3 => \counter[30]_i_5_n_0\,
      I4 => \counter0_carry__0_n_5\,
      I5 => \counter[30]_i_6_n_0\,
      O => \counter[7]_i_1_n_0\
    );
\counter[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAA000045000000"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => \counter[30]_i_4_n_0\,
      I3 => \counter[30]_i_5_n_0\,
      I4 => \counter0_carry__0_n_4\,
      I5 => \counter[30]_i_6_n_0\,
      O => \counter[8]_i_1_n_0\
    );
\counter[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFAA000045000000"
    )
        port map (
      I0 => state(2),
      I1 => state(1),
      I2 => \counter[30]_i_4_n_0\,
      I3 => \counter[30]_i_5_n_0\,
      I4 => \counter0_carry__1_n_7\,
      I5 => \counter[30]_i_6_n_0\,
      O => \counter[9]_i_1_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \counter[30]_i_2_n_0\,
      D => \counter[0]_i_1_n_0\,
      Q => \counter_reg_n_0_[0]\,
      R => counter0
    );
\counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \counter[30]_i_2_n_0\,
      D => \counter[10]_i_1_n_0\,
      Q => \counter_reg_n_0_[10]\,
      R => counter0
    );
\counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \counter[30]_i_2_n_0\,
      D => \counter[11]_i_1_n_0\,
      Q => \counter_reg_n_0_[11]\,
      R => counter0
    );
\counter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \counter[30]_i_2_n_0\,
      D => \counter[12]_i_1_n_0\,
      Q => \counter_reg_n_0_[12]\,
      R => counter0
    );
\counter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \counter[30]_i_2_n_0\,
      D => \counter[13]_i_1_n_0\,
      Q => \counter_reg_n_0_[13]\,
      R => counter0
    );
\counter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \counter[30]_i_2_n_0\,
      D => \counter[14]_i_1_n_0\,
      Q => \counter_reg_n_0_[14]\,
      R => counter0
    );
\counter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \counter[30]_i_2_n_0\,
      D => \counter[15]_i_1_n_0\,
      Q => \counter_reg_n_0_[15]\,
      R => counter0
    );
\counter_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \counter[30]_i_2_n_0\,
      D => \counter[16]_i_1_n_0\,
      Q => \counter_reg_n_0_[16]\,
      R => counter0
    );
\counter_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \counter[30]_i_2_n_0\,
      D => \counter[17]_i_1_n_0\,
      Q => \counter_reg_n_0_[17]\,
      R => counter0
    );
\counter_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \counter[30]_i_2_n_0\,
      D => \counter[18]_i_1_n_0\,
      Q => \counter_reg_n_0_[18]\,
      R => counter0
    );
\counter_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \counter[30]_i_2_n_0\,
      D => \counter[19]_i_1_n_0\,
      Q => \counter_reg_n_0_[19]\,
      R => counter0
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \counter[30]_i_2_n_0\,
      D => \counter[1]_i_1_n_0\,
      Q => \counter_reg_n_0_[1]\,
      R => counter0
    );
\counter_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \counter[30]_i_2_n_0\,
      D => \counter[20]_i_1_n_0\,
      Q => \counter_reg_n_0_[20]\,
      R => counter0
    );
\counter_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \counter[30]_i_2_n_0\,
      D => \counter[21]_i_1_n_0\,
      Q => \counter_reg_n_0_[21]\,
      R => counter0
    );
\counter_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \counter[30]_i_2_n_0\,
      D => \counter[22]_i_1_n_0\,
      Q => \counter_reg_n_0_[22]\,
      R => counter0
    );
\counter_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \counter[30]_i_2_n_0\,
      D => \counter[23]_i_1_n_0\,
      Q => \counter_reg_n_0_[23]\,
      R => counter0
    );
\counter_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \counter[30]_i_2_n_0\,
      D => \counter[24]_i_1_n_0\,
      Q => \counter_reg_n_0_[24]\,
      R => counter0
    );
\counter_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \counter[30]_i_2_n_0\,
      D => \counter[25]_i_1_n_0\,
      Q => \counter_reg_n_0_[25]\,
      R => counter0
    );
\counter_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \counter[30]_i_2_n_0\,
      D => \counter[26]_i_1_n_0\,
      Q => \counter_reg_n_0_[26]\,
      R => counter0
    );
\counter_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \counter[30]_i_2_n_0\,
      D => \counter[27]_i_1_n_0\,
      Q => \counter_reg_n_0_[27]\,
      R => counter0
    );
\counter_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \counter[30]_i_2_n_0\,
      D => \counter[28]_i_1_n_0\,
      Q => \counter_reg_n_0_[28]\,
      R => counter0
    );
\counter_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \counter[30]_i_2_n_0\,
      D => \counter[29]_i_1_n_0\,
      Q => \counter_reg_n_0_[29]\,
      R => counter0
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \counter[30]_i_2_n_0\,
      D => \counter[2]_i_1_n_0\,
      Q => \counter_reg_n_0_[2]\,
      R => counter0
    );
\counter_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \counter[30]_i_2_n_0\,
      D => \counter[30]_i_3_n_0\,
      Q => \counter_reg_n_0_[30]\,
      R => counter0
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \counter[30]_i_2_n_0\,
      D => \counter[3]_i_1_n_0\,
      Q => \counter_reg_n_0_[3]\,
      R => counter0
    );
\counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \counter[30]_i_2_n_0\,
      D => \counter[4]_i_1_n_0\,
      Q => \counter_reg_n_0_[4]\,
      R => counter0
    );
\counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \counter[30]_i_2_n_0\,
      D => \counter[5]_i_1_n_0\,
      Q => \counter_reg_n_0_[5]\,
      R => counter0
    );
\counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \counter[30]_i_2_n_0\,
      D => \counter[6]_i_1_n_0\,
      Q => \counter_reg_n_0_[6]\,
      R => counter0
    );
\counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \counter[30]_i_2_n_0\,
      D => \counter[7]_i_1_n_0\,
      Q => \counter_reg_n_0_[7]\,
      R => counter0
    );
\counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \counter[30]_i_2_n_0\,
      D => \counter[8]_i_1_n_0\,
      Q => \counter_reg_n_0_[8]\,
      R => counter0
    );
\counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \counter[30]_i_2_n_0\,
      D => \counter[9]_i_1_n_0\,
      Q => \counter_reg_n_0_[9]\,
      R => counter0
    );
ir_out_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF80808000808080"
    )
        port map (
      I0 => state(0),
      I1 => carrier_reg_n_0,
      I2 => pulse_active_reg_n_0,
      I3 => state(1),
      I4 => state(2),
      I5 => \^ir_out\,
      O => ir_out_i_1_n_0
    );
ir_out_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => ir_out_i_1_n_0,
      Q => \^ir_out\,
      R => '0'
    );
pulse_active_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C1FDC0C0013D0000"
    )
        port map (
      I0 => \counter[30]_i_4_n_0\,
      I1 => state(1),
      I2 => state(2),
      I3 => \FSM_sequential_state[2]_i_3_n_0\,
      I4 => state(0),
      I5 => pulse_active_reg_n_0,
      O => pulse_active_i_1_n_0
    );
pulse_active_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => pulse_active_i_1_n_0,
      Q => pulse_active_reg_n_0,
      R => '0'
    );
\shift_reg[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1111F1FF11110100"
    )
        port map (
      I0 => state(2),
      I1 => code(0),
      I2 => \shift_reg[0]_i_2_n_0\,
      I3 => \FSM_sequential_state[2]_i_4_n_0\,
      I4 => \shift_reg[0]_i_3_n_0\,
      I5 => \shift_reg_reg_n_0_[0]\,
      O => \shift_reg[0]_i_1_n_0\
    );
\shift_reg[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => state(1),
      I1 => state(0),
      I2 => state(2),
      O => \shift_reg[0]_i_2_n_0\
    );
\shift_reg[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => send,
      I1 => state(0),
      I2 => state(2),
      I3 => state(1),
      O => \shift_reg[0]_i_3_n_0\
    );
\shift_reg[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \shift_reg_reg_n_0_[9]\,
      I1 => state(2),
      I2 => code(2),
      O => \shift_reg[10]_i_1_n_0\
    );
\shift_reg[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \shift_reg_reg_n_0_[10]\,
      I1 => state(2),
      I2 => code(3),
      O => \shift_reg[11]_i_1_n_0\
    );
\shift_reg[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \shift_reg_reg_n_0_[11]\,
      I1 => state(2),
      I2 => code(4),
      O => \shift_reg[12]_i_1_n_0\
    );
\shift_reg[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \shift_reg_reg_n_0_[12]\,
      I1 => state(2),
      I2 => code(5),
      O => \shift_reg[13]_i_1_n_0\
    );
\shift_reg[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \shift_reg_reg_n_0_[13]\,
      I1 => state(2),
      I2 => code(6),
      O => \shift_reg[14]_i_1_n_0\
    );
\shift_reg[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \shift_reg_reg_n_0_[14]\,
      I1 => state(2),
      I2 => code(7),
      O => \shift_reg[15]_i_1_n_0\
    );
\shift_reg[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A3"
    )
        port map (
      I0 => \shift_reg_reg_n_0_[15]\,
      I1 => addr(0),
      I2 => state(2),
      O => \shift_reg[16]_i_1_n_0\
    );
\shift_reg[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A3"
    )
        port map (
      I0 => \shift_reg_reg_n_0_[16]\,
      I1 => addr(1),
      I2 => state(2),
      O => \shift_reg[17]_i_1_n_0\
    );
\shift_reg[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A3"
    )
        port map (
      I0 => \shift_reg_reg_n_0_[17]\,
      I1 => addr(2),
      I2 => state(2),
      O => \shift_reg[18]_i_1_n_0\
    );
\shift_reg[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A3"
    )
        port map (
      I0 => \shift_reg_reg_n_0_[18]\,
      I1 => addr(3),
      I2 => state(2),
      O => \shift_reg[19]_i_1_n_0\
    );
\shift_reg[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A3"
    )
        port map (
      I0 => \shift_reg_reg_n_0_[0]\,
      I1 => code(1),
      I2 => state(2),
      O => \shift_reg[1]_i_1_n_0\
    );
\shift_reg[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A3"
    )
        port map (
      I0 => \shift_reg_reg_n_0_[19]\,
      I1 => addr(4),
      I2 => state(2),
      O => \shift_reg[20]_i_1_n_0\
    );
\shift_reg[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A3"
    )
        port map (
      I0 => \shift_reg_reg_n_0_[20]\,
      I1 => addr(5),
      I2 => state(2),
      O => \shift_reg[21]_i_1_n_0\
    );
\shift_reg[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A3"
    )
        port map (
      I0 => \shift_reg_reg_n_0_[21]\,
      I1 => addr(6),
      I2 => state(2),
      O => \shift_reg[22]_i_1_n_0\
    );
\shift_reg[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A3"
    )
        port map (
      I0 => \shift_reg_reg_n_0_[22]\,
      I1 => addr(7),
      I2 => state(2),
      O => \shift_reg[23]_i_1_n_0\
    );
\shift_reg[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \shift_reg_reg_n_0_[23]\,
      I1 => state(2),
      I2 => addr(0),
      O => \shift_reg[24]_i_1_n_0\
    );
\shift_reg[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \shift_reg_reg_n_0_[24]\,
      I1 => state(2),
      I2 => addr(1),
      O => \shift_reg[25]_i_1_n_0\
    );
\shift_reg[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \shift_reg_reg_n_0_[25]\,
      I1 => state(2),
      I2 => addr(2),
      O => \shift_reg[26]_i_1_n_0\
    );
\shift_reg[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \shift_reg_reg_n_0_[26]\,
      I1 => state(2),
      I2 => addr(3),
      O => \shift_reg[27]_i_1_n_0\
    );
\shift_reg[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \shift_reg_reg_n_0_[27]\,
      I1 => state(2),
      I2 => addr(4),
      O => \shift_reg[28]_i_1_n_0\
    );
\shift_reg[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \shift_reg_reg_n_0_[28]\,
      I1 => state(2),
      I2 => addr(5),
      O => \shift_reg[29]_i_1_n_0\
    );
\shift_reg[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A3"
    )
        port map (
      I0 => \shift_reg_reg_n_0_[1]\,
      I1 => code(2),
      I2 => state(2),
      O => \shift_reg[2]_i_1_n_0\
    );
\shift_reg[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \shift_reg_reg_n_0_[29]\,
      I1 => state(2),
      I2 => addr(6),
      O => \shift_reg[30]_i_1_n_0\
    );
\shift_reg[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00230020"
    )
        port map (
      I0 => \FSM_sequential_state[2]_i_4_n_0\,
      I1 => state(1),
      I2 => state(2),
      I3 => state(0),
      I4 => send,
      O => \shift_reg[31]_i_1_n_0\
    );
\shift_reg[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \shift_reg_reg_n_0_[30]\,
      I1 => state(2),
      I2 => addr(7),
      O => \shift_reg[31]_i_2_n_0\
    );
\shift_reg[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A3"
    )
        port map (
      I0 => \shift_reg_reg_n_0_[2]\,
      I1 => code(3),
      I2 => state(2),
      O => \shift_reg[3]_i_1_n_0\
    );
\shift_reg[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A3"
    )
        port map (
      I0 => \shift_reg_reg_n_0_[3]\,
      I1 => code(4),
      I2 => state(2),
      O => \shift_reg[4]_i_1_n_0\
    );
\shift_reg[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A3"
    )
        port map (
      I0 => \shift_reg_reg_n_0_[4]\,
      I1 => code(5),
      I2 => state(2),
      O => \shift_reg[5]_i_1_n_0\
    );
\shift_reg[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A3"
    )
        port map (
      I0 => \shift_reg_reg_n_0_[5]\,
      I1 => code(6),
      I2 => state(2),
      O => \shift_reg[6]_i_1_n_0\
    );
\shift_reg[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A3"
    )
        port map (
      I0 => \shift_reg_reg_n_0_[6]\,
      I1 => code(7),
      I2 => state(2),
      O => \shift_reg[7]_i_1_n_0\
    );
\shift_reg[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \shift_reg_reg_n_0_[7]\,
      I1 => state(2),
      I2 => code(0),
      O => \shift_reg[8]_i_1_n_0\
    );
\shift_reg[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \shift_reg_reg_n_0_[8]\,
      I1 => state(2),
      I2 => code(1),
      O => \shift_reg[9]_i_1_n_0\
    );
\shift_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \shift_reg[0]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[0]\,
      R => '0'
    );
\shift_reg_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \shift_reg[31]_i_1_n_0\,
      D => \shift_reg[10]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[10]\,
      R => '0'
    );
\shift_reg_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \shift_reg[31]_i_1_n_0\,
      D => \shift_reg[11]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[11]\,
      R => '0'
    );
\shift_reg_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \shift_reg[31]_i_1_n_0\,
      D => \shift_reg[12]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[12]\,
      R => '0'
    );
\shift_reg_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \shift_reg[31]_i_1_n_0\,
      D => \shift_reg[13]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[13]\,
      R => '0'
    );
\shift_reg_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \shift_reg[31]_i_1_n_0\,
      D => \shift_reg[14]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[14]\,
      R => '0'
    );
\shift_reg_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \shift_reg[31]_i_1_n_0\,
      D => \shift_reg[15]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[15]\,
      R => '0'
    );
\shift_reg_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \shift_reg[31]_i_1_n_0\,
      D => \shift_reg[16]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[16]\,
      R => '0'
    );
\shift_reg_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \shift_reg[31]_i_1_n_0\,
      D => \shift_reg[17]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[17]\,
      R => '0'
    );
\shift_reg_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \shift_reg[31]_i_1_n_0\,
      D => \shift_reg[18]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[18]\,
      R => '0'
    );
\shift_reg_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \shift_reg[31]_i_1_n_0\,
      D => \shift_reg[19]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[19]\,
      R => '0'
    );
\shift_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \shift_reg[31]_i_1_n_0\,
      D => \shift_reg[1]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[1]\,
      R => '0'
    );
\shift_reg_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \shift_reg[31]_i_1_n_0\,
      D => \shift_reg[20]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[20]\,
      R => '0'
    );
\shift_reg_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \shift_reg[31]_i_1_n_0\,
      D => \shift_reg[21]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[21]\,
      R => '0'
    );
\shift_reg_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \shift_reg[31]_i_1_n_0\,
      D => \shift_reg[22]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[22]\,
      R => '0'
    );
\shift_reg_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \shift_reg[31]_i_1_n_0\,
      D => \shift_reg[23]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[23]\,
      R => '0'
    );
\shift_reg_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \shift_reg[31]_i_1_n_0\,
      D => \shift_reg[24]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[24]\,
      R => '0'
    );
\shift_reg_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \shift_reg[31]_i_1_n_0\,
      D => \shift_reg[25]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[25]\,
      R => '0'
    );
\shift_reg_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \shift_reg[31]_i_1_n_0\,
      D => \shift_reg[26]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[26]\,
      R => '0'
    );
\shift_reg_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \shift_reg[31]_i_1_n_0\,
      D => \shift_reg[27]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[27]\,
      R => '0'
    );
\shift_reg_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \shift_reg[31]_i_1_n_0\,
      D => \shift_reg[28]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[28]\,
      R => '0'
    );
\shift_reg_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \shift_reg[31]_i_1_n_0\,
      D => \shift_reg[29]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[29]\,
      R => '0'
    );
\shift_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \shift_reg[31]_i_1_n_0\,
      D => \shift_reg[2]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[2]\,
      R => '0'
    );
\shift_reg_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \shift_reg[31]_i_1_n_0\,
      D => \shift_reg[30]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[30]\,
      R => '0'
    );
\shift_reg_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \shift_reg[31]_i_1_n_0\,
      D => \shift_reg[31]_i_2_n_0\,
      Q => p_0_in_0,
      R => '0'
    );
\shift_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \shift_reg[31]_i_1_n_0\,
      D => \shift_reg[3]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[3]\,
      R => '0'
    );
\shift_reg_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \shift_reg[31]_i_1_n_0\,
      D => \shift_reg[4]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[4]\,
      R => '0'
    );
\shift_reg_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \shift_reg[31]_i_1_n_0\,
      D => \shift_reg[5]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[5]\,
      R => '0'
    );
\shift_reg_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \shift_reg[31]_i_1_n_0\,
      D => \shift_reg[6]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[6]\,
      R => '0'
    );
\shift_reg_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \shift_reg[31]_i_1_n_0\,
      D => \shift_reg[7]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[7]\,
      R => '0'
    );
\shift_reg_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \shift_reg[31]_i_1_n_0\,
      D => \shift_reg[8]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[8]\,
      R => '0'
    );
\shift_reg_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \shift_reg[31]_i_1_n_0\,
      D => \shift_reg[9]_i_1_n_0\,
      Q => \shift_reg_reg_n_0_[9]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_IR_transmission_1_0 is
  port (
    clk : in STD_LOGIC;
    code : in STD_LOGIC_VECTOR ( 7 downto 0 );
    addr : in STD_LOGIC_VECTOR ( 7 downto 0 );
    send : in STD_LOGIC;
    ir_out : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_IR_transmission_1_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_IR_transmission_1_0 : entity is "design_1_IR_transmission_1_0,IR_transmission,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_IR_transmission_1_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_IR_transmission_1_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_IR_transmission_1_0 : entity is "IR_transmission,Vivado 2020.2";
end design_1_IR_transmission_1_0;

architecture STRUCTURE of design_1_IR_transmission_1_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
begin
inst: entity work.design_1_IR_transmission_1_0_IR_transmission
     port map (
      addr(7 downto 0) => addr(7 downto 0),
      clk => clk,
      code(7 downto 0) => code(7 downto 0),
      ir_out => ir_out,
      send => send
    );
end STRUCTURE;
