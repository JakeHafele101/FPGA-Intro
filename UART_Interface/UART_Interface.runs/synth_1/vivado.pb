
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2$
create_project: 2default:default2
00:00:052default:default2
00:00:062default:default2
395.1092default:default2
61.7622default:defaultZ17-268h px? 
?
Command: %s
1870*	planAhead2?
?read_checkpoint -auto_incremental -incremental C:/Projects/FPGA-Intro/UART_Interface/UART_Interface.srcs/utils_1/imports/synth_1/uart_synth.dcp2default:defaultZ12-2866h px? 
?
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2t
`C:/Projects/FPGA-Intro/UART_Interface/UART_Interface.srcs/utils_1/imports/synth_1/uart_synth.dcp2default:defaultZ12-5825h px? 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px? 
?
Command: %s
53*	vivadotcl2P
<synth_design -top uart_stopwatch_synth -part xc7a35tcpg236-12default:defaultZ4-113h px? 
:
Starting synth_design
149*	vivadotclZ4-321h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a35t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a35t2default:defaultZ17-349h px? 
V
Loading part %s157*device2#
xc7a35tcpg236-12default:defaultZ21-403h px? 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px? 
?
?Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px? 
?
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
22default:defaultZ8-7079h px? 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px? 
`
#Helper process launched with PID %s4824*oasys2
219322default:defaultZ8-7075h px? 
?
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
REGCCE2default:default2
wire2default:default2[
EC:/Xilinx/Vivado/2022.2/data/verilog/src/unimacro/BRAM_SINGLE_MACRO.v2default:default2
21702default:default8@Z8-11241h px? 
?
.identifier '%s' is used before its declaration4750*oasys2
B2default:default2i
SC:/Projects/FPGA-Intro/UART_Interface/UART_Interface.srcs/sources_1/new/FIFO_full.v2default:default2
262default:default8@Z8-6901h px? 
?
.identifier '%s' is used before its declaration4750*oasys2
B2default:default2i
SC:/Projects/FPGA-Intro/UART_Interface/UART_Interface.srcs/sources_1/new/FIFO_full.v2default:default2
282default:default8@Z8-6901h px? 
?
%s*synth2?
yStarting RTL Elaboration : Time (s): cpu = 00:00:07 ; elapsed = 00:00:08 . Memory (MB): peak = 1205.535 ; gain = 408.336
2default:defaulth px? 
?
synthesizing module '%s'%s4497*oasys2(
uart_stopwatch_synth2default:default2
 2default:default2t
^C:/Projects/FPGA-Intro/UART_Interface/UART_Interface.srcs/sources_1/new/uart_stopwatch_synth.v2default:default2
232default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
	uart_full2default:default2
 2default:default2i
SC:/Projects/FPGA-Intro/UART_Interface/UART_Interface.srcs/sources_1/new/uart_full.v2default:default2
232default:default8@Z8-6157h px? 
[
%s
*synth2C
/	Parameter FIFO_W bound to: 8 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2,
baud_rate_generator_full2default:default2
 2default:default2x
bC:/Projects/FPGA-Intro/UART_Interface/UART_Interface.srcs/sources_1/new/baud_rate_generator_full.v2default:default2
232default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2,
baud_rate_generator_full2default:default2
 2default:default2
02default:default2
12default:default2x
bC:/Projects/FPGA-Intro/UART_Interface/UART_Interface.srcs/sources_1/new/baud_rate_generator_full.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2 
uart_rx_full2default:default2
 2default:default2l
VC:/Projects/FPGA-Intro/UART_Interface/UART_Interface.srcs/sources_1/new/uart_rx_full.v2default:default2
232default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
uart_rx_full2default:default2
 2default:default2
02default:default2
12default:default2l
VC:/Projects/FPGA-Intro/UART_Interface/UART_Interface.srcs/sources_1/new/uart_rx_full.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
	FIFO_full2default:default2
 2default:default2i
SC:/Projects/FPGA-Intro/UART_Interface/UART_Interface.srcs/sources_1/new/FIFO_full.v2default:default2
232default:default8@Z8-6157h px? 
V
%s
*synth2>
*	Parameter W bound to: 8 - type: integer 
2default:defaulth p
x
? 
?
-case statement is not full and has no default155*oasys2i
SC:/Projects/FPGA-Intro/UART_Interface/UART_Interface.srcs/sources_1/new/FIFO_full.v2default:default2
702default:default8@Z8-155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	FIFO_full2default:default2
 2default:default2
02default:default2
12default:default2i
SC:/Projects/FPGA-Intro/UART_Interface/UART_Interface.srcs/sources_1/new/FIFO_full.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2 
uart_tx_full2default:default2
 2default:default2l
VC:/Projects/FPGA-Intro/UART_Interface/UART_Interface.srcs/sources_1/new/uart_tx_full.v2default:default2
232default:default8@Z8-6157h px? 
?
-case statement is not full and has no default155*oasys2l
VC:/Projects/FPGA-Intro/UART_Interface/UART_Interface.srcs/sources_1/new/uart_tx_full.v2default:default2
842default:default8@Z8-155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
uart_tx_full2default:default2
 2default:default2
02default:default2
12default:default2l
VC:/Projects/FPGA-Intro/UART_Interface/UART_Interface.srcs/sources_1/new/uart_tx_full.v2default:default2
232default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	uart_full2default:default2
 2default:default2
02default:default2
12default:default2i
SC:/Projects/FPGA-Intro/UART_Interface/UART_Interface.srcs/sources_1/new/uart_full.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys28
$enhanced_stopwatch_receive_interface2default:default2
 2default:default2?
nC:/Projects/FPGA-Intro/UART_Interface/UART_Interface.srcs/sources_1/new/enhanced_stopwatch_receive_interface.v2default:default2
232default:default8@Z8-6157h px? 
?
evariable '%s' is written by both blocking and non-blocking assignments, entire logic could be removed4426*oasys2
	s_up_next2default:default2?
nC:/Projects/FPGA-Intro/UART_Interface/UART_Interface.srcs/sources_1/new/enhanced_stopwatch_receive_interface.v2default:default2
752default:default8@Z8-6090h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys28
$enhanced_stopwatch_receive_interface2default:default2
 2default:default2
02default:default2
12default:default2?
nC:/Projects/FPGA-Intro/UART_Interface/UART_Interface.srcs/sources_1/new/enhanced_stopwatch_receive_interface.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2&
enhanced_stopwatch2default:default2
 2default:default2r
\C:/Projects/FPGA-Intro/UART_Interface/UART_Interface.srcs/sources_1/new/enhanced_stopwatch.v2default:default2
232default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2&
enhanced_stopwatch2default:default2
 2default:default2
02default:default2
12default:default2r
\C:/Projects/FPGA-Intro/UART_Interface/UART_Interface.srcs/sources_1/new/enhanced_stopwatch.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys29
%enhanced_stopwatch_transmit_interface2default:default2
 2default:default2?
oC:/Projects/FPGA-Intro/UART_Interface/UART_Interface.srcs/sources_1/new/enhanced_stopwatch_transmit_interface.v2default:default2
232default:default8@Z8-6157h px? 
?
default block is never used226*oasys2?
oC:/Projects/FPGA-Intro/UART_Interface/UART_Interface.srcs/sources_1/new/enhanced_stopwatch_transmit_interface.v2default:default2
772default:default8@Z8-226h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys29
%enhanced_stopwatch_transmit_interface2default:default2
 2default:default2
02default:default2
12default:default2?
oC:/Projects/FPGA-Intro/UART_Interface/UART_Interface.srcs/sources_1/new/enhanced_stopwatch_transmit_interface.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2!
seven_seg_mux2default:default2
 2default:default2?
?C:/Projects/FPGA-Intro/UART_Interface/UART_Interface.srcs/sources_1/imports/FPGA-Intro/Synthesized_Starter_Code/Synthesized_Starter_Code.srcs/sources_1/new/seven_seg_mux.v2default:default2
232default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
pwm_4b2default:default2
 2default:default2n
XC:/Projects/FPGA-Intro/UART_Interface/UART_Interface.srcs/sources_1/imports/new/pwm_4b.v2default:default2
232default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
pwm_4b2default:default2
 2default:default2
02default:default2
12default:default2n
XC:/Projects/FPGA-Intro/UART_Interface/UART_Interface.srcs/sources_1/imports/new/pwm_4b.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
	seven_seg2default:default2
 2default:default2?
?C:/Projects/FPGA-Intro/UART_Interface/UART_Interface.srcs/sources_1/imports/FPGA-Intro/FPGA_Prototyping_CH3/FPGA_Prototyping_CH3.srcs/sources_1/imports/FPGA-Intro/FPGA_Prototyping_Exercises/FPGA_Prototyping_Exercises.sim/seven_seg.v2default:default2
262default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	seven_seg2default:default2
 2default:default2
02default:default2
12default:default2?
?C:/Projects/FPGA-Intro/UART_Interface/UART_Interface.srcs/sources_1/imports/FPGA-Intro/FPGA_Prototyping_CH3/FPGA_Prototyping_CH3.srcs/sources_1/imports/FPGA-Intro/FPGA_Prototyping_Exercises/FPGA_Prototyping_Exercises.sim/seven_seg.v2default:default2
262default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
seven_seg_mux2default:default2
 2default:default2
02default:default2
12default:default2?
?C:/Projects/FPGA-Intro/UART_Interface/UART_Interface.srcs/sources_1/imports/FPGA-Intro/Synthesized_Starter_Code/Synthesized_Starter_Code.srcs/sources_1/new/seven_seg_mux.v2default:default2
232default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2(
uart_stopwatch_synth2default:default2
 2default:default2
02default:default2
12default:default2t
^C:/Projects/FPGA-Intro/UART_Interface/UART_Interface.srcs/sources_1/new/uart_stopwatch_synth.v2default:default2
232default:default8@Z8-6155h px? 
?
?Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2!
count_reg_reg2default:default2
pwm_4b2default:default2n
XC:/Projects/FPGA-Intro/UART_Interface/UART_Interface.srcs/sources_1/imports/new/pwm_4b.v2default:default2
412default:default8@Z8-7137h px? 
?
?Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2
pwm_reg_reg2default:default2
pwm_4b2default:default2n
XC:/Projects/FPGA-Intro/UART_Interface/UART_Interface.srcs/sources_1/imports/new/pwm_4b.v2default:default2
422default:default8@Z8-7137h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[12]2default:default2(
uart_stopwatch_synth2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[11]2default:default2(
uart_stopwatch_synth2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[10]2default:default2(
uart_stopwatch_synth2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[9]2default:default2(
uart_stopwatch_synth2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[8]2default:default2(
uart_stopwatch_synth2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[15]2default:default2(
uart_stopwatch_synth2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[14]2default:default2(
uart_stopwatch_synth2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[13]2default:default2(
uart_stopwatch_synth2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[12]2default:default2(
uart_stopwatch_synth2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[11]2default:default2(
uart_stopwatch_synth2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[10]2default:default2(
uart_stopwatch_synth2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[9]2default:default2(
uart_stopwatch_synth2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[8]2default:default2(
uart_stopwatch_synth2default:defaultZ8-7129h px? 
?
%s*synth2?
yFinished RTL Elaboration : Time (s): cpu = 00:00:10 ; elapsed = 00:00:11 . Memory (MB): peak = 1301.516 ; gain = 504.316
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:10 ; elapsed = 00:00:11 . Memory (MB): peak = 1301.516 ; gain = 504.316
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:10 ; elapsed = 00:00:11 . Memory (MB): peak = 1301.516 ; gain = 504.316
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0142default:default2
1301.5162default:default2
0.0002default:defaultZ17-268h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
>

Processing XDC Constraints
244*projectZ1-262h px? 
=
Initializing timing engine
348*projectZ1-569h px? 
?
Parsing XDC File [%s]
179*designutils2w
aC:/Projects/FPGA-Intro/UART_Interface/UART_Interface.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default8Z20-179h px? 
?
No ports matched '%s'.
584*	planAhead2
btnU2default:default2w
aC:/Projects/FPGA-Intro/UART_Interface/UART_Interface.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
1132default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2w
aC:/Projects/FPGA-Intro/UART_Interface/UART_Interface.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
1132default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
btnU2default:default2w
aC:/Projects/FPGA-Intro/UART_Interface/UART_Interface.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
1142default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2w
aC:/Projects/FPGA-Intro/UART_Interface/UART_Interface.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
1142default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
btnL2default:default2w
aC:/Projects/FPGA-Intro/UART_Interface/UART_Interface.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
1152default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2w
aC:/Projects/FPGA-Intro/UART_Interface/UART_Interface.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
1152default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
btnL2default:default2w
aC:/Projects/FPGA-Intro/UART_Interface/UART_Interface.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
1162default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2w
aC:/Projects/FPGA-Intro/UART_Interface/UART_Interface.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
1162default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
btnR2default:default2w
aC:/Projects/FPGA-Intro/UART_Interface/UART_Interface.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
1172default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2w
aC:/Projects/FPGA-Intro/UART_Interface/UART_Interface.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
1172default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
btnR2default:default2w
aC:/Projects/FPGA-Intro/UART_Interface/UART_Interface.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
1182default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2w
aC:/Projects/FPGA-Intro/UART_Interface/UART_Interface.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
1182default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
btnD2default:default2w
aC:/Projects/FPGA-Intro/UART_Interface/UART_Interface.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
1192default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2w
aC:/Projects/FPGA-Intro/UART_Interface/UART_Interface.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
1192default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
btnD2default:default2w
aC:/Projects/FPGA-Intro/UART_Interface/UART_Interface.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
1202default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2w
aC:/Projects/FPGA-Intro/UART_Interface/UART_Interface.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
1202default:default8@Z17-55h px?
?
Finished Parsing XDC File [%s]
178*designutils2w
aC:/Projects/FPGA-Intro/UART_Interface/UART_Interface.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default8Z20-178h px? 
?
?Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2u
aC:/Projects/FPGA-Intro/UART_Interface/UART_Interface.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2:
&.Xil/uart_stopwatch_synth_propImpl.xdc2default:defaultZ1-236h px? 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1365.9572default:default2
0.0002default:defaultZ17-268h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0062default:default2
1365.9572default:default2
0.0002default:defaultZ17-268h px? 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px? 
?
?Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px? 
?
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
REGCCE2default:default2
wire2default:default2[
EC:/Xilinx/Vivado/2022.2/data/verilog/src/unimacro/BRAM_SINGLE_MACRO.v2default:default2
21702default:default8@Z8-11241h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
Finished Constraint Validation : Time (s): cpu = 00:00:21 ; elapsed = 00:00:22 . Memory (MB): peak = 1365.957 ; gain = 568.758
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Loading part: xc7a35tcpg236-1
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:21 ; elapsed = 00:00:22 . Memory (MB): peak = 1365.957 ; gain = 568.758
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:21 ; elapsed = 00:00:22 . Memory (MB): peak = 1365.957 ; gain = 568.758
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2#
s_state_reg_reg2default:default2 
uart_rx_full2default:defaultZ8-802h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2#
s_state_reg_reg2default:default2 
uart_tx_full2default:defaultZ8-802h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2#
s_state_reg_reg2default:default29
%enhanced_stopwatch_transmit_interface2default:defaultZ8-802h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_                    idle |                              000 |                              000
2default:defaulth p
x
? 
?
%s
*synth2s
_                   start |                              001 |                              001
2default:defaulth p
x
? 
?
%s
*synth2s
_                    data |                              010 |                              010
2default:defaulth p
x
? 
?
%s
*synth2s
_                  parity |                              011 |                              011
2default:defaulth p
x
? 
?
%s
*synth2s
_                    stop |                              100 |                              100
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2#
s_state_reg_reg2default:default2

sequential2default:default2 
uart_rx_full2default:defaultZ8-3354h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_                    idle |                              000 |                              000
2default:defaulth p
x
? 
?
%s
*synth2s
_                   start |                              001 |                              001
2default:defaulth p
x
? 
?
%s
*synth2s
_                    data |                              010 |                              010
2default:defaulth p
x
? 
?
%s
*synth2s
_                  parity |                              011 |                              011
2default:defaulth p
x
? 
?
%s
*synth2s
_                    stop |                              100 |                              100
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2#
s_state_reg_reg2default:default2

sequential2default:default2 
uart_tx_full2default:defaultZ8-3354h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_                    idle |                              000 |                              000
2default:defaulth p
x
? 
?
%s
*synth2s
_                 newline |                              001 |                              001
2default:defaulth p
x
? 
?
%s
*synth2s
_                      d3 |                              010 |                              010
2default:defaulth p
x
? 
?
%s
*synth2s
_                period_1 |                              011 |                              011
2default:defaulth p
x
? 
?
%s
*synth2s
_                      d2 |                              100 |                              100
2default:defaulth p
x
? 
?
%s
*synth2s
_                      d1 |                              101 |                              101
2default:defaulth p
x
? 
?
%s
*synth2s
_                period_2 |                              110 |                              110
2default:defaulth p
x
? 
?
%s
*synth2s
_                      d0 |                              111 |                              111
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2#
s_state_reg_reg2default:default2

sequential2default:default29
%enhanced_stopwatch_transmit_interface2default:defaultZ8-3354h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:22 ; elapsed = 00:00:23 . Memory (MB): peak = 1365.957 ; gain = 568.758
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   32 Bit       Adders := 4     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    8 Bit       Adders := 8     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    5 Bit       Adders := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    4 Bit       Adders := 5     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    3 Bit       Adders := 2     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Registers := 6     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                5 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 10    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                3 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 11    
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   13 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   12 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   11 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    8 Bit        Muxes := 3     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   5 Input    8 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    8 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    6 Bit        Muxes := 4     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    5 Bit        Muxes := 3     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   5 Input    5 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    4 Bit        Muxes := 8     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input    4 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   8 Input    4 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    4 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   5 Input    3 Bit        Muxes := 4     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    3 Bit        Muxes := 5     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   8 Input    3 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    2 Bit        Muxes := 4     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    1 Bit        Muxes := 23    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   5 Input    1 Bit        Muxes := 20    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    1 Bit        Muxes := 10    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   8 Input    1 Bit        Muxes := 4     
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2j
VPart Resources:
DSPs: 90 (col length:60)
BRAMs: 100 (col length: RAMB18 60 RAMB36 30)
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[12]2default:default2(
uart_stopwatch_synth2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[11]2default:default2(
uart_stopwatch_synth2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[10]2default:default2(
uart_stopwatch_synth2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[9]2default:default2(
uart_stopwatch_synth2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[8]2default:default2(
uart_stopwatch_synth2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[15]2default:default2(
uart_stopwatch_synth2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[14]2default:default2(
uart_stopwatch_synth2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[13]2default:default2(
uart_stopwatch_synth2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[12]2default:default2(
uart_stopwatch_synth2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[11]2default:default2(
uart_stopwatch_synth2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[10]2default:default2(
uart_stopwatch_synth2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[9]2default:default2(
uart_stopwatch_synth2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[8]2default:default2(
uart_stopwatch_synth2default:defaultZ8-7129h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:26 ; elapsed = 00:00:28 . Memory (MB): peak = 1365.957 ; gain = 568.758
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth px? 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px? 
j
%s*synth2R
>
Distributed RAM: Preliminary Mapping Report (see note below)
2default:defaulth px? 
?
%s*synth2}
i+---------------------+------------------------------+-----------+----------------------+--------------+
2default:defaulth px? 
?
%s*synth2~
j|Module Name          | RTL Object                   | Inference | Size (Depth x Width) | Primitives   | 
2default:defaulth px? 
?
%s*synth2}
i+---------------------+------------------------------+-----------+----------------------+--------------+
2default:defaulth px? 
?
%s*synth2~
j|uart_stopwatch_synth | uart/fifo_tx/s_array_reg_reg | Implied   | 256 x 6              | RAM64M x 12  | 
2default:defaulth px? 
?
%s*synth2~
j|uart_stopwatch_synth | uart/fifo_rx/s_array_reg_reg | Implied   | 256 x 8              | RAM64M x 12  | 
2default:defaulth px? 
?
%s*synth2~
j+---------------------+------------------------------+-----------+----------------------+--------------+

2default:defaulth px? 
?
%s*synth2?
?Note: The table above is a preliminary report that shows the Distributed RAMs at the current stage of the synthesis flow. Some Distributed RAMs may be reimplemented as non Distributed RAM primitives later in the synthesis flow. Multiple instantiated RAMs are reported only once.
2default:defaulth px? 
?
%s*synth2?
?---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth px? 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:33 ; elapsed = 00:00:35 . Memory (MB): peak = 1365.957 ; gain = 568.758
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
}Finished Timing Optimization : Time (s): cpu = 00:00:35 ; elapsed = 00:00:37 . Memory (MB): peak = 1365.957 ; gain = 568.758
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2?
?---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
S
%s
*synth2;
'
Distributed RAM: Final Mapping Report
2default:defaulth p
x
? 
?
%s
*synth2}
i+---------------------+------------------------------+-----------+----------------------+--------------+
2default:defaulth p
x
? 
?
%s
*synth2~
j|Module Name          | RTL Object                   | Inference | Size (Depth x Width) | Primitives   | 
2default:defaulth p
x
? 
?
%s
*synth2}
i+---------------------+------------------------------+-----------+----------------------+--------------+
2default:defaulth p
x
? 
?
%s
*synth2~
j|uart_stopwatch_synth | uart/fifo_tx/s_array_reg_reg | Implied   | 256 x 6              | RAM64M x 12  | 
2default:defaulth p
x
? 
?
%s
*synth2~
j|uart_stopwatch_synth | uart/fifo_rx/s_array_reg_reg | Implied   | 256 x 8              | RAM64M x 12  | 
2default:defaulth p
x
? 
?
%s
*synth2~
j+---------------------+------------------------------+-----------+----------------------+--------------+

2default:defaulth p
x
? 
?
%s
*synth2?
?---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
|Finished Technology Mapping : Time (s): cpu = 00:00:35 ; elapsed = 00:00:38 . Memory (MB): peak = 1365.957 ; gain = 568.758
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
vFinished IO Insertion : Time (s): cpu = 00:00:42 ; elapsed = 00:00:44 . Memory (MB): peak = 1365.957 ; gain = 568.758
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Instances : Time (s): cpu = 00:00:42 ; elapsed = 00:00:44 . Memory (MB): peak = 1365.957 ; gain = 568.758
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:42 ; elapsed = 00:00:44 . Memory (MB): peak = 1365.957 ; gain = 568.758
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Ports : Time (s): cpu = 00:00:42 ; elapsed = 00:00:44 . Memory (MB): peak = 1365.957 ; gain = 568.758
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:42 ; elapsed = 00:00:44 . Memory (MB): peak = 1365.957 ; gain = 568.758
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Nets : Time (s): cpu = 00:00:42 ; elapsed = 00:00:44 . Memory (MB): peak = 1365.957 ; gain = 568.758
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px? 
D
%s*synth2,
+------+-------+------+
2default:defaulth px? 
D
%s*synth2,
|      |Cell   |Count |
2default:defaulth px? 
D
%s*synth2,
+------+-------+------+
2default:defaulth px? 
D
%s*synth2,
|1     |BUFG   |     1|
2default:defaulth px? 
D
%s*synth2,
|2     |CARRY4 |    23|
2default:defaulth px? 
D
%s*synth2,
|3     |LUT1   |     9|
2default:defaulth px? 
D
%s*synth2,
|4     |LUT2   |    34|
2default:defaulth px? 
D
%s*synth2,
|5     |LUT3   |    43|
2default:defaulth px? 
D
%s*synth2,
|6     |LUT4   |    66|
2default:defaulth px? 
D
%s*synth2,
|7     |LUT5   |    63|
2default:defaulth px? 
D
%s*synth2,
|8     |LUT6   |   115|
2default:defaulth px? 
D
%s*synth2,
|9     |MUXF7  |     4|
2default:defaulth px? 
D
%s*synth2,
|10    |RAM64M |    20|
2default:defaulth px? 
D
%s*synth2,
|11    |FDCE   |   135|
2default:defaulth px? 
D
%s*synth2,
|12    |FDPE   |     5|
2default:defaulth px? 
D
%s*synth2,
|13    |FDRE   |    48|
2default:defaulth px? 
D
%s*synth2,
|14    |IBUF   |    11|
2default:defaulth px? 
D
%s*synth2,
|15    |OBUF   |    24|
2default:defaulth px? 
D
%s*synth2,
|16    |OBUFT  |     5|
2default:defaulth px? 
D
%s*synth2,
+------+-------+------+
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Writing Synthesis Report : Time (s): cpu = 00:00:42 ; elapsed = 00:00:44 . Memory (MB): peak = 1365.957 ; gain = 568.758
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
s
%s
*synth2[
GSynthesis finished with 0 errors, 0 critical warnings and 14 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
Synthesis Optimization Runtime : Time (s): cpu = 00:00:30 ; elapsed = 00:00:42 . Memory (MB): peak = 1365.957 ; gain = 504.316
2default:defaulth p
x
? 
?
%s
*synth2?
?Synthesis Optimization Complete : Time (s): cpu = 00:00:42 ; elapsed = 00:00:45 . Memory (MB): peak = 1365.957 ; gain = 568.758
2default:defaulth p
x
? 
B
 Translating synthesized netlist
350*projectZ1-571h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0062default:default2
1365.9572default:default2
0.0002default:defaultZ17-268h px? 
f
-Analyzing %s Unisim elements for replacement
17*netlist2
472default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1369.1642default:default2
0.0002default:defaultZ17-268h px? 
?
!Unisim Transformation Summary:
%s111*project2o
[  A total of 20 instances were transformed.
  RAM64M => RAM64M (RAMD64E(x4)): 20 instances
2default:defaultZ1-111h px? 
f
$Synth Design complete, checksum: %s
562*	vivadotcl2
f7ea1dc2default:defaultZ4-1430h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
562default:default2
402default:default2
82default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:482default:default2
00:00:522default:default2
1369.1642default:default2
949.1802default:defaultZ17-268h px? 
u
%s6*runtcl2Y
ESynthesis results are not added to the cache due to CRITICAL_WARNING
2default:defaulth px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2n
ZC:/Projects/FPGA-Intro/UART_Interface/UART_Interface.runs/synth_1/uart_stopwatch_synth.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2?
~Executing : report_utilization -file uart_stopwatch_synth_utilization_synth.rpt -pb uart_stopwatch_synth_utilization_synth.pb
2default:defaulth px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Tue Jan  3 18:28:11 20232default:defaultZ17-206h px? 


End Record