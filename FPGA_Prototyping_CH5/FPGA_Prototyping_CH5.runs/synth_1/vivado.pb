
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2$
create_project: 2default:default2
00:00:052default:default2
00:00:072default:default2
393.7622default:default2
74.2032default:defaultZ17-268h px? 
?
Command: %s
1870*	planAhead2?
?read_checkpoint -auto_incremental -incremental C:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/utils_1/imports/synth_1/dual_edge_detector_synth.dcp2default:defaultZ12-2866h px? 
?
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2?
zC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/utils_1/imports/synth_1/dual_edge_detector_synth.dcp2default:defaultZ12-5825h px? 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px? 
?
Command: %s
53*	vivadotcl2U
Asynth_design -top parking_lot_counter_synth -part xc7a35tcpg236-12default:defaultZ4-113h px? 
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
?
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
22default:defaultZ8-7079h px? 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px? 
`
#Helper process launched with PID %s4824*oasys2
240642default:defaultZ8-7075h px? 
?
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
REGCCE2default:default2
wire2default:default2[
EC:/Xilinx/Vivado/2022.2/data/verilog/src/unimacro/BRAM_SINGLE_MACRO.v2default:default2
21702default:default8@Z8-11241h px? 
?
%s*synth2?
yStarting RTL Elaboration : Time (s): cpu = 00:00:05 ; elapsed = 00:00:06 . Memory (MB): peak = 1203.438 ; gain = 406.227
2default:defaulth px? 
?
synthesizing module '%s'%s4497*oasys2-
parking_lot_counter_synth2default:default2
 2default:default2?
oC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/sources_1/new/parking_lot_counter_synth.v2default:default2
232default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2'
parking_lot_counter2default:default2
 2default:default2
iC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/sources_1/new/parking_lot_counter.v2default:default2
232default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2'
parking_lot_counter2default:default2
 2default:default2
02default:default2
12default:default2
iC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/sources_1/new/parking_lot_counter.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2&
up_down_counter_4b2default:default2
 2default:default2~
hC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/sources_1/new/up_down_counter_4b.v2default:default2
232default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2&
up_down_counter_4b2default:default2
 2default:default2
02default:default2
12default:default2~
hC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/sources_1/new/up_down_counter_4b.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2!
seven_seg_mux2default:default2
 2default:default2?
?C:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/sources_1/imports/FPGA-Intro/Synthesized_Starter_Code/Synthesized_Starter_Code.srcs/sources_1/new/seven_seg_mux.v2default:default2
232default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
pwm_4b2default:default2
 2default:default2z
dC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/sources_1/imports/new/pwm_4b.v2default:default2
232default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
pwm_4b2default:default2
 2default:default2
02default:default2
12default:default2z
dC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/sources_1/imports/new/pwm_4b.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
	seven_seg2default:default2
 2default:default2?
?C:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/sources_1/imports/FPGA-Intro/FPGA_Prototyping_CH3/FPGA_Prototyping_CH3.srcs/sources_1/imports/FPGA-Intro/FPGA_Prototyping_Exercises/FPGA_Prototyping_Exercises.sim/seven_seg.v2default:default2
262default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	seven_seg2default:default2
 2default:default2
02default:default2
12default:default2?
?C:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/sources_1/imports/FPGA-Intro/FPGA_Prototyping_CH3/FPGA_Prototyping_CH3.srcs/sources_1/imports/FPGA-Intro/FPGA_Prototyping_Exercises/FPGA_Prototyping_Exercises.sim/seven_seg.v2default:default2
262default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
seven_seg_mux2default:default2
 2default:default2
02default:default2
12default:default2?
?C:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/sources_1/imports/FPGA-Intro/Synthesized_Starter_Code/Synthesized_Starter_Code.srcs/sources_1/new/seven_seg_mux.v2default:default2
232default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2-
parking_lot_counter_synth2default:default2
 2default:default2
02default:default2
12default:default2?
oC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/sources_1/new/parking_lot_counter_synth.v2default:default2
232default:default8@Z8-6155h px? 
?
?Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2!
count_reg_reg2default:default2
pwm_4b2default:default2z
dC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/sources_1/imports/new/pwm_4b.v2default:default2
412default:default8@Z8-7137h px? 
?
?Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2
pwm_reg_reg2default:default2
pwm_4b2default:default2z
dC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/sources_1/imports/new/pwm_4b.v2default:default2
422default:default8@Z8-7137h px? 
?
%s*synth2?
yFinished RTL Elaboration : Time (s): cpu = 00:00:07 ; elapsed = 00:00:08 . Memory (MB): peak = 1294.305 ; gain = 497.094
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
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:07 ; elapsed = 00:00:08 . Memory (MB): peak = 1294.305 ; gain = 497.094
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
?Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:07 ; elapsed = 00:00:08 . Memory (MB): peak = 1294.305 ; gain = 497.094
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
00:00:00.0022default:default2
1294.3052default:default2
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
179*designutils2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default8Z20-179h px? 
?
No ports matched '%s'.
584*	planAhead2
sw[0]2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
122default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
122default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
sw[0]2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
132default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
132default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
sw[1]2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
142default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
142default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
sw[1]2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
152default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
152default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
sw[2]2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
162default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
162default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
sw[2]2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
172default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
172default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
sw[3]2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
182default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
182default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
sw[3]2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
192default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
192default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
sw[4]2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
202default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
202default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
sw[4]2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
212default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
212default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
sw[5]2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
222default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
222default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
sw[5]2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
232default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
232default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
sw[6]2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
242default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
242default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
sw[6]2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
252default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
252default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
sw[7]2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
262default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
262default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
sw[7]2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
272default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
272default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
sw[8]2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
282default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
282default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
sw[8]2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
292default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
292default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
sw[9]2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
302default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
302default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
sw[9]2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
312default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
312default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
sw[10]2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
322default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
322default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
sw[10]2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
332default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
332default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
sw[11]2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
342default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
342default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
sw[11]2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
352default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
352default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
sw[12]2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
362default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
362default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
sw[12]2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
372default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
372default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
sw[13]2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
382default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
382default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
sw[13]2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
392default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
392default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
sw[14]2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
402default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
402default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
sw[14]2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
412default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
412default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
sw[15]2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
422default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
422default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
sw[15]2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
432default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
432default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
LED[0]2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
472default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
472default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
LED[0]2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
482default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
482default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
LED[1]2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
492default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
492default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
LED[1]2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
502default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
502default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
LED[2]2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
512default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
512default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
LED[2]2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
522default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
522default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
LED[3]2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
532default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
532default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
LED[3]2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
542default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
542default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
LED[4]2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
552default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
552default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
LED[4]2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
562default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
562default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
LED[5]2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
572default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
572default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
LED[5]2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
582default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
582default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
LED[6]2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
592default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
592default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
LED[6]2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
602default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
602default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
LED[7]2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
612default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
612default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
LED[7]2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
622default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
622default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
LED[8]2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
632default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
632default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
LED[8]2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
642default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
642default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
LED[9]2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
652default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
652default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
LED[9]2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
662default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
662default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
LED[10]2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
672default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
672default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
LED[10]2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
682default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
682default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
LED[11]2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
692default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
692default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
LED[11]2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
702default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
702default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
LED[12]2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
712default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
712default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
LED[12]2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
722default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
722default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
LED[13]2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
732default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
732default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
LED[13]2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
742default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
742default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
LED[14]2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
752default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
752default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
LED[14]2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
762default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
762default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
LED[15]2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
772default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
772default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
LED[15]2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
782default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
782default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
btnU2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
1132default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
1132default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
btnU2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
1142default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
1142default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
btnD2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
1192default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
1192default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
btnD2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
1202default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
1202default:default8@Z17-55h px?
?
Finished Parsing XDC File [%s]
178*designutils2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default8Z20-178h px? 
?
?Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2?
+.Xil/parking_lot_counter_synth_propImpl.xdc2default:defaultZ1-236h px? 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1384.7152default:default2
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
00:00:00.0032default:default2
1384.7152default:default2
0.0002default:defaultZ17-268h px? 
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
Finished Constraint Validation : Time (s): cpu = 00:00:15 ; elapsed = 00:00:17 . Memory (MB): peak = 1384.715 ; gain = 587.504
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
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:15 ; elapsed = 00:00:17 . Memory (MB): peak = 1384.715 ; gain = 587.504
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
?Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:15 ; elapsed = 00:00:17 . Memory (MB): peak = 1384.715 ; gain = 587.504
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
I
%s
*synth21
Start Preparing Guide Design
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
?
?The reference checkpoint %s is not suitable for use with incremental synthesis for this design. Please regenerate the checkpoint for this design with -incremental_synth switch in the same Vivado session that synth_design has been run. Synthesis will continue with the default flow4740*oasys2?
zC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.srcs/utils_1/imports/synth_1/dual_edge_detector_synth.dcp2default:defaultZ8-6895h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
|Finished Doing Graph Differ : Time (s): cpu = 00:00:15 ; elapsed = 00:00:17 . Memory (MB): peak = 1384.715 ; gain = 587.504
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
?Finished Preparing Guide Design : Time (s): cpu = 00:00:15 ; elapsed = 00:00:17 . Memory (MB): peak = 1384.715 ; gain = 587.504
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2!
state_reg_reg2default:default2'
parking_lot_counter2default:defaultZ8-802h px? 
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
_                    open |                          0000001 |                              000
2default:defaulth p
x
? 
?
%s
*synth2s
_                  exit_b |                          0000010 |                              100
2default:defaulth p
x
? 
?
%s
*synth2s
_                 exit_ab |                          0000100 |                              101
2default:defaulth p
x
? 
?
%s
*synth2s
_                  exit_a |                          0001000 |                              110
2default:defaulth p
x
? 
?
%s
*synth2s
_                 enter_a |                          0010000 |                              001
2default:defaulth p
x
? 
?
%s
*synth2s
_                enter_ab |                          0100000 |                              010
2default:defaulth p
x
? 
?
%s
*synth2s
_                 enter_b |                          1000000 |                              011
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
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2!
state_reg_reg2default:default2
one-hot2default:default2'
parking_lot_counter2default:defaultZ8-3354h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:16 ; elapsed = 00:00:17 . Memory (MB): peak = 1384.715 ; gain = 587.504
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
U
%s
*synth2=
)

Incremental Synthesis Report Summary:

2default:defaulth p
x
? 
N
%s
*synth26
"1. Incremental synthesis run: no

2default:defaulth p
x
? 
a
%s
*synth2I
5   Reason for not running incremental synthesis : 


2default:defaulth p
x
? 
?
?Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}4868*oasysZ8-7130h px? 
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
,	   2 Input    4 Bit       Adders := 2     
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
.	                4 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
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
,	   4 Input    8 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   7 Input    7 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    7 Bit        Muxes := 9     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    4 Bit        Muxes := 1     
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
,	   2 Input    2 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    1 Bit        Muxes := 15    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   7 Input    1 Bit        Muxes := 3     
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
+design %s has port %s driven by constant %s3447*oasys2-
parking_lot_counter_synth2default:default2
dp2default:default2
12default:defaultZ8-3917h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:18 ; elapsed = 00:00:19 . Memory (MB): peak = 1384.715 ; gain = 587.504
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
?Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:23 ; elapsed = 00:00:25 . Memory (MB): peak = 1384.715 ; gain = 587.504
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
}Finished Timing Optimization : Time (s): cpu = 00:00:23 ; elapsed = 00:00:25 . Memory (MB): peak = 1384.715 ; gain = 587.504
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
|Finished Technology Mapping : Time (s): cpu = 00:00:23 ; elapsed = 00:00:25 . Memory (MB): peak = 1384.715 ; gain = 587.504
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
vFinished IO Insertion : Time (s): cpu = 00:00:28 ; elapsed = 00:00:30 . Memory (MB): peak = 1384.715 ; gain = 587.504
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
?Finished Renaming Generated Instances : Time (s): cpu = 00:00:28 ; elapsed = 00:00:30 . Memory (MB): peak = 1384.715 ; gain = 587.504
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
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:28 ; elapsed = 00:00:30 . Memory (MB): peak = 1384.715 ; gain = 587.504
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
?Finished Renaming Generated Ports : Time (s): cpu = 00:00:28 ; elapsed = 00:00:30 . Memory (MB): peak = 1384.715 ; gain = 587.504
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
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:28 ; elapsed = 00:00:30 . Memory (MB): peak = 1384.715 ; gain = 587.504
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
?Finished Renaming Generated Nets : Time (s): cpu = 00:00:28 ; elapsed = 00:00:30 . Memory (MB): peak = 1384.715 ; gain = 587.504
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
|2     |CARRY4 |     5|
2default:defaulth px? 
D
%s*synth2,
|3     |LUT1   |     3|
2default:defaulth px? 
D
%s*synth2,
|4     |LUT2   |     3|
2default:defaulth px? 
D
%s*synth2,
|5     |LUT3   |     4|
2default:defaulth px? 
D
%s*synth2,
|6     |LUT4   |     6|
2default:defaulth px? 
D
%s*synth2,
|7     |LUT5   |     4|
2default:defaulth px? 
D
%s*synth2,
|8     |LUT6   |    11|
2default:defaulth px? 
D
%s*synth2,
|9     |FDCE   |    33|
2default:defaulth px? 
D
%s*synth2,
|10    |FDPE   |     1|
2default:defaulth px? 
D
%s*synth2,
|11    |IBUF   |     4|
2default:defaulth px? 
D
%s*synth2,
|12    |OBUF   |    12|
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
?Finished Writing Synthesis Report : Time (s): cpu = 00:00:28 ; elapsed = 00:00:30 . Memory (MB): peak = 1384.715 ; gain = 587.504
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
r
%s
*synth2Z
FSynthesis finished with 0 errors, 1 critical warnings and 2 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
Synthesis Optimization Runtime : Time (s): cpu = 00:00:19 ; elapsed = 00:00:28 . Memory (MB): peak = 1384.715 ; gain = 497.094
2default:defaulth p
x
? 
?
%s
*synth2?
?Synthesis Optimization Complete : Time (s): cpu = 00:00:28 ; elapsed = 00:00:30 . Memory (MB): peak = 1384.715 ; gain = 587.504
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
00:00:00.0012default:default2
1384.7152default:default2
0.0002default:defaultZ17-268h px? 
e
-Analyzing %s Unisim elements for replacement
17*netlist2
52default:defaultZ29-17h px? 
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
1384.7152default:default2
0.0002default:defaultZ17-268h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
g
$Synth Design complete, checksum: %s
562*	vivadotcl2
4743dd832default:defaultZ4-1430h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
342default:default2
722default:default2
692default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:332default:default2
00:00:422default:default2
1384.7152default:default2
966.0662default:defaultZ17-268h px? 
u
%s6*runtcl2Y
ESynthesis results are not added to the cache due to CRITICAL_WARNING
2default:defaulth px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2
kC:/Projects/FPGA-Intro/FPGA_Prototyping_CH5/FPGA_Prototyping_CH5.runs/synth_1/parking_lot_counter_synth.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2?
?Executing : report_utilization -file parking_lot_counter_synth_utilization_synth.rpt -pb parking_lot_counter_synth_utilization_synth.pb
2default:defaulth px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Wed Dec 14 21:53:31 20222default:defaultZ17-206h px? 


End Record