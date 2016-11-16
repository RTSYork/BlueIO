//
// Generated by Bluespec Compiler, version 2012.01.A (build 26572, 2012-01-17)
//
// On Sat Oct 29 14:27:47 BST 2016
//
// Method conflict info:
// (none)
//
// Ports:
// Name                         I/O  size props
// CLK                            I     1 clock
// RST_N                          I     1 reset
//
// No combinational paths from inputs to outputs
//
//

`ifdef BSV_ASSIGNMENT_DELAY
`else
`define BSV_ASSIGNMENT_DELAY
`endif

module mkTBScUART_Driver(CLK,
			 RST_N);
  input  CLK;
  input  RST_N;

  // inlined wires
  wire fsm_testbench_start_wire$whas, fsm_testbench_state_set_pw$whas;

  // register counter_reg
  reg [31 : 0] counter_reg;
  wire [31 : 0] counter_reg$D_IN;
  wire counter_reg$EN;

  // register fsm_testbench_start_reg
  reg fsm_testbench_start_reg;
  wire fsm_testbench_start_reg$D_IN, fsm_testbench_start_reg$EN;

  // register fsm_testbench_start_reg_1
  reg fsm_testbench_start_reg_1;
  wire fsm_testbench_start_reg_1$D_IN, fsm_testbench_start_reg_1$EN;

  // register fsm_testbench_state_can_overlap
  reg fsm_testbench_state_can_overlap;
  wire fsm_testbench_state_can_overlap$D_IN,
       fsm_testbench_state_can_overlap$EN;

  // register fsm_testbench_state_fired
  reg fsm_testbench_state_fired;
  wire fsm_testbench_state_fired$D_IN, fsm_testbench_state_fired$EN;

  // register fsm_testbench_state_mkFSMstate
  reg [2 : 0] fsm_testbench_state_mkFSMstate;
  reg [2 : 0] fsm_testbench_state_mkFSMstate$D_IN;
  wire fsm_testbench_state_mkFSMstate$EN;

  // ports of submodule u
  reg [31 : 0] u$bluetile_response_put;
  wire u$EN_bluetile_request_get,
       u$EN_bluetile_response_put,
       u$EN_serial_rxd,
       u$RDY_bluetile_response_put,
       u$serial_rxd_rx,
       u$serial_txd;

  // rule scheduling signals
  wire CAN_FIRE_RL_ddd,
       CAN_FIRE_RL_fsm_testbench_action_l26c18,
       CAN_FIRE_RL_fsm_testbench_action_l27c18,
       CAN_FIRE_RL_fsm_testbench_action_l28c18,
       CAN_FIRE_RL_fsm_testbench_fsm_start,
       CAN_FIRE_RL_fsm_testbench_idle_l22c26,
       CAN_FIRE_RL_fsm_testbench_restart,
       CAN_FIRE_RL_fsm_testbench_rule,
       CAN_FIRE_RL_fsm_testbench_start_reg_1__dreg_update,
       CAN_FIRE_RL_fsm_testbench_state_every,
       CAN_FIRE_RL_fsm_testbench_state_fired__dreg_update,
       CAN_FIRE_RL_fsm_testbench_state_handle_abort,
       CAN_FIRE_RL_testbench_counter,
       CAN_FIRE___me_check_6,
       CAN_FIRE___me_check_7,
       WILL_FIRE_RL_ddd,
       WILL_FIRE_RL_fsm_testbench_action_l26c18,
       WILL_FIRE_RL_fsm_testbench_action_l27c18,
       WILL_FIRE_RL_fsm_testbench_action_l28c18,
       WILL_FIRE_RL_fsm_testbench_fsm_start,
       WILL_FIRE_RL_fsm_testbench_idle_l22c26,
       WILL_FIRE_RL_fsm_testbench_restart,
       WILL_FIRE_RL_fsm_testbench_rule,
       WILL_FIRE_RL_fsm_testbench_start_reg_1__dreg_update,
       WILL_FIRE_RL_fsm_testbench_state_every,
       WILL_FIRE_RL_fsm_testbench_state_fired__dreg_update,
       WILL_FIRE_RL_fsm_testbench_state_handle_abort,
       WILL_FIRE_RL_testbench_counter,
       WILL_FIRE___me_check_6,
       WILL_FIRE___me_check_7;

  // remaining internal signals
  wire fsm_testbench_abort_whas_AND_fsm_testbench_abo_ETC___d51;

  // submodule u
  mkBG_UART u(.CLK(CLK),
	      .RST_N(RST_N),
	      .bluetile_response_put(u$bluetile_response_put),
	      .serial_rxd_rx(u$serial_rxd_rx),
	      .EN_bluetile_request_get(u$EN_bluetile_request_get),
	      .EN_bluetile_response_put(u$EN_bluetile_response_put),
	      .EN_serial_rxd(u$EN_serial_rxd),
	      .bluetile_request_get(),
	      .RDY_bluetile_request_get(),
	      .RDY_bluetile_response_put(u$RDY_bluetile_response_put),
	      .RDY_serial_rxd(),
	      .serial_txd(u$serial_txd),
	      .RDY_serial_txd());

  // rule RL_fsm_testbench_rule
  assign CAN_FIRE_RL_fsm_testbench_rule =
	     fsm_testbench_abort_whas_AND_fsm_testbench_abo_ETC___d51 &&
	     !fsm_testbench_start_reg &&
	     counter_reg == 32'd200 ;
  assign WILL_FIRE_RL_fsm_testbench_rule = CAN_FIRE_RL_fsm_testbench_rule ;

  // rule RL_ddd
  assign CAN_FIRE_RL_ddd = (counter_reg ^ 32'h80000000) < 32'h81312D00 ;
  assign WILL_FIRE_RL_ddd = CAN_FIRE_RL_ddd ;

  // rule RL_testbench_counter
  assign CAN_FIRE_RL_testbench_counter = 1'd1 ;
  assign WILL_FIRE_RL_testbench_counter = 1'd1 ;

  // rule RL_fsm_testbench_restart
  assign CAN_FIRE_RL_fsm_testbench_restart =
	     fsm_testbench_start_reg_1 && !fsm_testbench_state_fired ;
  assign WILL_FIRE_RL_fsm_testbench_restart =
	     CAN_FIRE_RL_fsm_testbench_restart ;

  // rule RL_fsm_testbench_action_l27c18
  assign CAN_FIRE_RL_fsm_testbench_action_l27c18 =
	     u$RDY_bluetile_response_put &&
	     fsm_testbench_state_mkFSMstate == 3'd1 ;
  assign WILL_FIRE_RL_fsm_testbench_action_l27c18 =
	     CAN_FIRE_RL_fsm_testbench_action_l27c18 ;

  // rule RL_fsm_testbench_action_l28c18
  assign CAN_FIRE_RL_fsm_testbench_action_l28c18 =
	     u$RDY_bluetile_response_put &&
	     fsm_testbench_state_mkFSMstate == 3'd2 ;
  assign WILL_FIRE_RL_fsm_testbench_action_l28c18 =
	     CAN_FIRE_RL_fsm_testbench_action_l28c18 ;

  // rule __me_check_7
  assign CAN_FIRE___me_check_7 = 1'b1 ;
  assign WILL_FIRE___me_check_7 = 1'b1 ;

  // rule RL_fsm_testbench_fsm_start
  assign CAN_FIRE_RL_fsm_testbench_fsm_start =
	     fsm_testbench_abort_whas_AND_fsm_testbench_abo_ETC___d51 &&
	     fsm_testbench_start_reg ;
  assign WILL_FIRE_RL_fsm_testbench_fsm_start =
	     CAN_FIRE_RL_fsm_testbench_fsm_start ;

  // rule RL_fsm_testbench_action_l26c18
  assign CAN_FIRE_RL_fsm_testbench_action_l26c18 =
	     u$RDY_bluetile_response_put && fsm_testbench_start_wire$whas &&
	     (fsm_testbench_state_mkFSMstate == 3'd0 ||
	      fsm_testbench_state_mkFSMstate == 3'd3) ;
  assign WILL_FIRE_RL_fsm_testbench_action_l26c18 =
	     CAN_FIRE_RL_fsm_testbench_action_l26c18 ;

  // rule __me_check_6
  assign CAN_FIRE___me_check_6 = 1'b1 ;
  assign WILL_FIRE___me_check_6 = 1'b1 ;

  // rule RL_fsm_testbench_idle_l22c26
  assign CAN_FIRE_RL_fsm_testbench_idle_l22c26 =
	     !fsm_testbench_start_wire$whas &&
	     fsm_testbench_state_mkFSMstate == 3'd3 ;
  assign WILL_FIRE_RL_fsm_testbench_idle_l22c26 =
	     CAN_FIRE_RL_fsm_testbench_idle_l22c26 ;

  // rule RL_fsm_testbench_start_reg_1__dreg_update
  assign CAN_FIRE_RL_fsm_testbench_start_reg_1__dreg_update = 1'd1 ;
  assign WILL_FIRE_RL_fsm_testbench_start_reg_1__dreg_update = 1'd1 ;

  // rule RL_fsm_testbench_state_handle_abort
  assign CAN_FIRE_RL_fsm_testbench_state_handle_abort = 1'b0 ;
  assign WILL_FIRE_RL_fsm_testbench_state_handle_abort = 1'b0 ;

  // rule RL_fsm_testbench_state_every
  assign CAN_FIRE_RL_fsm_testbench_state_every = 1'd1 ;
  assign WILL_FIRE_RL_fsm_testbench_state_every = 1'd1 ;

  // rule RL_fsm_testbench_state_fired__dreg_update
  assign CAN_FIRE_RL_fsm_testbench_state_fired__dreg_update = 1'd1 ;
  assign WILL_FIRE_RL_fsm_testbench_state_fired__dreg_update = 1'd1 ;

  // inlined wires
  assign fsm_testbench_start_wire$whas =
	     WILL_FIRE_RL_fsm_testbench_fsm_start ||
	     WILL_FIRE_RL_fsm_testbench_restart ;
  assign fsm_testbench_state_set_pw$whas =
	     WILL_FIRE_RL_fsm_testbench_idle_l22c26 ||
	     WILL_FIRE_RL_fsm_testbench_action_l28c18 ||
	     WILL_FIRE_RL_fsm_testbench_action_l27c18 ||
	     WILL_FIRE_RL_fsm_testbench_action_l26c18 ;

  // register counter_reg
  assign counter_reg$D_IN = counter_reg + 32'd1 ;
  assign counter_reg$EN = 1'd1 ;

  // register fsm_testbench_start_reg
  assign fsm_testbench_start_reg$D_IN =
	     !WILL_FIRE_RL_fsm_testbench_fsm_start ;
  assign fsm_testbench_start_reg$EN =
	     WILL_FIRE_RL_fsm_testbench_fsm_start ||
	     WILL_FIRE_RL_fsm_testbench_rule ;

  // register fsm_testbench_start_reg_1
  assign fsm_testbench_start_reg_1$D_IN = fsm_testbench_start_wire$whas ;
  assign fsm_testbench_start_reg_1$EN = 1'd1 ;

  // register fsm_testbench_state_can_overlap
  assign fsm_testbench_state_can_overlap$D_IN =
	     fsm_testbench_state_set_pw$whas ||
	     fsm_testbench_state_can_overlap ;
  assign fsm_testbench_state_can_overlap$EN = 1'd1 ;

  // register fsm_testbench_state_fired
  assign fsm_testbench_state_fired$D_IN = fsm_testbench_state_set_pw$whas ;
  assign fsm_testbench_state_fired$EN = 1'd1 ;

  // register fsm_testbench_state_mkFSMstate
  always@(WILL_FIRE_RL_fsm_testbench_idle_l22c26 or
	  WILL_FIRE_RL_fsm_testbench_action_l26c18 or
	  WILL_FIRE_RL_fsm_testbench_action_l27c18 or
	  WILL_FIRE_RL_fsm_testbench_action_l28c18)
  begin
    case (1'b1) // synopsys parallel_case
      WILL_FIRE_RL_fsm_testbench_idle_l22c26:
	  fsm_testbench_state_mkFSMstate$D_IN = 3'd0;
      WILL_FIRE_RL_fsm_testbench_action_l26c18:
	  fsm_testbench_state_mkFSMstate$D_IN = 3'd1;
      WILL_FIRE_RL_fsm_testbench_action_l27c18:
	  fsm_testbench_state_mkFSMstate$D_IN = 3'd2;
      WILL_FIRE_RL_fsm_testbench_action_l28c18:
	  fsm_testbench_state_mkFSMstate$D_IN = 3'd3;
      default: fsm_testbench_state_mkFSMstate$D_IN =
		   3'b010 /* unspecified value */ ;
    endcase
  end
  assign fsm_testbench_state_mkFSMstate$EN =
	     WILL_FIRE_RL_fsm_testbench_idle_l22c26 ||
	     WILL_FIRE_RL_fsm_testbench_action_l26c18 ||
	     WILL_FIRE_RL_fsm_testbench_action_l27c18 ||
	     WILL_FIRE_RL_fsm_testbench_action_l28c18 ;

  // submodule u
  always@(WILL_FIRE_RL_fsm_testbench_action_l28c18 or
	  WILL_FIRE_RL_fsm_testbench_action_l27c18 or
	  WILL_FIRE_RL_fsm_testbench_action_l26c18)
  begin
    case (1'b1) // synopsys parallel_case
      WILL_FIRE_RL_fsm_testbench_action_l28c18:
	  u$bluetile_response_put = 32'h0000002B;
      WILL_FIRE_RL_fsm_testbench_action_l27c18:
	  u$bluetile_response_put = 32'h0101CCCC;
      WILL_FIRE_RL_fsm_testbench_action_l26c18:
	  u$bluetile_response_put = 32'h10100002;
      default: u$bluetile_response_put =
		   32'hAAAAAAAA /* unspecified value */ ;
    endcase
  end
  assign u$serial_rxd_rx = 1'b0 ;
  assign u$EN_bluetile_request_get = 1'b0 ;
  assign u$EN_bluetile_response_put =
	     WILL_FIRE_RL_fsm_testbench_action_l28c18 ||
	     WILL_FIRE_RL_fsm_testbench_action_l27c18 ||
	     WILL_FIRE_RL_fsm_testbench_action_l26c18 ;
  assign u$EN_serial_rxd = 1'b0 ;

  // remaining internal signals
  assign fsm_testbench_abort_whas_AND_fsm_testbench_abo_ETC___d51 =
	     (fsm_testbench_state_mkFSMstate == 3'd0 ||
	      fsm_testbench_state_mkFSMstate == 3'd3) &&
	     (!fsm_testbench_start_reg_1 || fsm_testbench_state_fired) ;

  // handling of inlined registers

  always@(posedge CLK)
  begin
    if (!RST_N)
      begin
        counter_reg <= `BSV_ASSIGNMENT_DELAY 32'd0;
	fsm_testbench_start_reg <= `BSV_ASSIGNMENT_DELAY 1'd0;
	fsm_testbench_start_reg_1 <= `BSV_ASSIGNMENT_DELAY 1'd0;
	fsm_testbench_state_can_overlap <= `BSV_ASSIGNMENT_DELAY 1'd1;
	fsm_testbench_state_fired <= `BSV_ASSIGNMENT_DELAY 1'd0;
	fsm_testbench_state_mkFSMstate <= `BSV_ASSIGNMENT_DELAY 3'd0;
      end
    else
      begin
        if (counter_reg$EN)
	  counter_reg <= `BSV_ASSIGNMENT_DELAY counter_reg$D_IN;
	if (fsm_testbench_start_reg$EN)
	  fsm_testbench_start_reg <= `BSV_ASSIGNMENT_DELAY
	      fsm_testbench_start_reg$D_IN;
	if (fsm_testbench_start_reg_1$EN)
	  fsm_testbench_start_reg_1 <= `BSV_ASSIGNMENT_DELAY
	      fsm_testbench_start_reg_1$D_IN;
	if (fsm_testbench_state_can_overlap$EN)
	  fsm_testbench_state_can_overlap <= `BSV_ASSIGNMENT_DELAY
	      fsm_testbench_state_can_overlap$D_IN;
	if (fsm_testbench_state_fired$EN)
	  fsm_testbench_state_fired <= `BSV_ASSIGNMENT_DELAY
	      fsm_testbench_state_fired$D_IN;
	if (fsm_testbench_state_mkFSMstate$EN)
	  fsm_testbench_state_mkFSMstate <= `BSV_ASSIGNMENT_DELAY
	      fsm_testbench_state_mkFSMstate$D_IN;
      end
  end

  // synopsys translate_off
  `ifdef BSV_NO_INITIAL_BLOCKS
  `else // not BSV_NO_INITIAL_BLOCKS
  initial
  begin
    counter_reg = 32'hAAAAAAAA;
    fsm_testbench_start_reg = 1'h0;
    fsm_testbench_start_reg_1 = 1'h0;
    fsm_testbench_state_can_overlap = 1'h0;
    fsm_testbench_state_fired = 1'h0;
    fsm_testbench_state_mkFSMstate = 3'h2;
  end
  `endif // BSV_NO_INITIAL_BLOCKS
  // synopsys translate_on

  // handling of system tasks

  // synopsys translate_off
  always@(negedge CLK)
  begin
    #0;
    if (RST_N) if (WILL_FIRE_RL_ddd) $display(u$serial_txd);
    if (RST_N)
      if (WILL_FIRE_RL_fsm_testbench_action_l27c18 &&
	  WILL_FIRE_RL_fsm_testbench_action_l28c18)
	$display("Error: \"TB_BG_UART.bsv\", line 27, column 18: (R0001)\n  Mutually exclusive rules (from the ME sets [RL_fsm_testbench_action_l27c18]\n  and [RL_fsm_testbench_action_l28c18] ) fired in the same clock cycle.\n");
    if (RST_N)
      if (WILL_FIRE_RL_fsm_testbench_action_l26c18 &&
	  (WILL_FIRE_RL_fsm_testbench_action_l27c18 ||
	   WILL_FIRE_RL_fsm_testbench_action_l28c18))
	$display("Error: \"TB_BG_UART.bsv\", line 26, column 18: (R0001)\n  Mutually exclusive rules (from the ME sets [RL_fsm_testbench_action_l26c18]\n  and [RL_fsm_testbench_action_l27c18, RL_fsm_testbench_action_l28c18] ) fired\n  in the same clock cycle.\n");
  end
  // synopsys translate_on
endmodule  // mkTBScUART_Driver

