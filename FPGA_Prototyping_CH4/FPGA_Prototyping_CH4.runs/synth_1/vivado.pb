
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2$
create_project: 2default:default2
00:00:052default:default2
00:00:052default:default2
394.4182default:default2
75.5902default:defaultZ17-268h px? 
?
Command: %s
1870*	planAhead2?
?read_checkpoint -auto_incremental -incremental C:/Projects/FPGA-Intro/FPGA_Prototyping_CH4/FPGA_Prototyping_CH4.srcs/utils_1/imports/synth_1/stopwatch_synth.dcp2default:defaultZ12-2866h px? 
?
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2?
qC:/Projects/FPGA-Intro/FPGA_Prototyping_CH4/FPGA_Prototyping_CH4.srcs/utils_1/imports/synth_1/stopwatch_synth.dcp2default:defaultZ12-5825h px? 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px? 
x
Command: %s
53*	vivadotcl2G
3synth_design -top stack_synth -part xc7a35tcpg236-12default:defaultZ4-113h px? 
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
_
#Helper process launched with PID %s4824*oasys2
67722default:defaultZ8-7075h px? 
?
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
REGCCE2default:default2
wire2default:default2[
EC:/Xilinx/Vivado/2022.2/data/verilog/src/unimacro/BRAM_SINGLE_MACRO.v2default:default2
21702default:default8@Z8-11241h px? 
?
.identifier '%s' is used before its declaration4750*oasys2
B2default:default2q
[C:/Projects/FPGA-Intro/FPGA_Prototyping_CH4/FPGA_Prototyping_CH4.srcs/sources_1/new/stack.v2default:default2
262default:default8@Z8-6901h px? 
?
.identifier '%s' is used before its declaration4750*oasys2
B2default:default2q
[C:/Projects/FPGA-Intro/FPGA_Prototyping_CH4/FPGA_Prototyping_CH4.srcs/sources_1/new/stack.v2default:default2
282default:default8@Z8-6901h px? 
?
%s*synth2?
yStarting RTL Elaboration : Time (s): cpu = 00:00:06 ; elapsed = 00:00:06 . Memory (MB): peak = 1206.383 ; gain = 408.832
2default:defaulth px? 
?
synthesizing module '%s'%s4497*oasys2
stack_synth2default:default2
 2default:default2w
aC:/Projects/FPGA-Intro/FPGA_Prototyping_CH4/FPGA_Prototyping_CH4.srcs/sources_1/new/stack_synth.v2default:default2
232default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2!
clock_divider2default:default2
 2default:default2y
cC:/Projects/FPGA-Intro/FPGA_Prototyping_CH4/FPGA_Prototyping_CH4.srcs/sources_1/new/clock_divider.v2default:default2
232default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
clock_divider2default:default2
 2default:default2
02default:default2
12default:default2y
cC:/Projects/FPGA-Intro/FPGA_Prototyping_CH4/FPGA_Prototyping_CH4.srcs/sources_1/new/clock_divider.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
stack2default:default2
 2default:default2q
[C:/Projects/FPGA-Intro/FPGA_Prototyping_CH4/FPGA_Prototyping_CH4.srcs/sources_1/new/stack.v2default:default2
232default:default8@Z8-6157h px? 
?
-case statement is not full and has no default155*oasys2q
[C:/Projects/FPGA-Intro/FPGA_Prototyping_CH4/FPGA_Prototyping_CH4.srcs/sources_1/new/stack.v2default:default2
802default:default8@Z8-155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
stack2default:default2
 2default:default2
02default:default2
12default:default2q
[C:/Projects/FPGA-Intro/FPGA_Prototyping_CH4/FPGA_Prototyping_CH4.srcs/sources_1/new/stack.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2!
seven_seg_mux2default:default2
 2default:default2?
?C:/Projects/FPGA-Intro/FPGA_Prototyping_CH4/FPGA_Prototyping_CH4.srcs/sources_1/imports/FPGA-Intro/Synthesized_Starter_Code/Synthesized_Starter_Code.srcs/sources_1/new/seven_seg_mux.v2default:default2
232default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
pwm_4b2default:default2
 2default:default2r
\C:/Projects/FPGA-Intro/FPGA_Prototyping_CH4/FPGA_Prototyping_CH4.srcs/sources_1/new/pwm_4b.v2default:default2
232default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
pwm_4b2default:default2
 2default:default2
02default:default2
12default:default2r
\C:/Projects/FPGA-Intro/FPGA_Prototyping_CH4/FPGA_Prototyping_CH4.srcs/sources_1/new/pwm_4b.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
	seven_seg2default:default2
 2default:default2?
?C:/Projects/FPGA-Intro/FPGA_Prototyping_CH4/FPGA_Prototyping_CH4.srcs/sources_1/imports/FPGA-Intro/FPGA_Prototyping_CH3/FPGA_Prototyping_CH3.srcs/sources_1/imports/FPGA-Intro/FPGA_Prototyping_Exercises/FPGA_Prototyping_Exercises.sim/seven_seg.v2default:default2
262default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	seven_seg2default:default2
 2default:default2
02default:default2
12default:default2?
?C:/Projects/FPGA-Intro/FPGA_Prototyping_CH4/FPGA_Prototyping_CH4.srcs/sources_1/imports/FPGA-Intro/FPGA_Prototyping_CH3/FPGA_Prototyping_CH3.srcs/sources_1/imports/FPGA-Intro/FPGA_Prototyping_Exercises/FPGA_Prototyping_Exercises.sim/seven_seg.v2default:default2
262default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
seven_seg_mux2default:default2
 2default:default2
02default:default2
12default:default2?
?C:/Projects/FPGA-Intro/FPGA_Prototyping_CH4/FPGA_Prototyping_CH4.srcs/sources_1/imports/FPGA-Intro/Synthesized_Starter_Code/Synthesized_Starter_Code.srcs/sources_1/new/seven_seg_mux.v2default:default2
232default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
stack_synth2default:default2
 2default:default2
02default:default2
12default:default2w
aC:/Projects/FPGA-Intro/FPGA_Prototyping_CH4/FPGA_Prototyping_CH4.srcs/sources_1/new/stack_synth.v2default:default2
232default:default8@Z8-6155h px? 
?
?Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2!
count_reg_reg2default:default2
pwm_4b2default:default2r
\C:/Projects/FPGA-Intro/FPGA_Prototyping_CH4/FPGA_Prototyping_CH4.srcs/sources_1/new/pwm_4b.v2default:default2
412default:default8@Z8-7137h px? 
?
?Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2
pwm_reg_reg2default:default2
pwm_4b2default:default2r
\C:/Projects/FPGA-Intro/FPGA_Prototyping_CH4/FPGA_Prototyping_CH4.srcs/sources_1/new/pwm_4b.v2default:default2
422default:default8@Z8-7137h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[15]2default:default2
stack_synth2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[14]2default:default2
stack_synth2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[13]2default:default2
stack_synth2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[12]2default:default2
stack_synth2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[11]2default:default2
stack_synth2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[10]2default:default2
stack_synth2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[9]2default:default2
stack_synth2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[8]2default:default2
stack_synth2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[7]2default:default2
stack_synth2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[6]2default:default2
stack_synth2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[15]2default:default2
stack_synth2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[14]2default:default2
stack_synth2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[13]2default:default2
stack_synth2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[12]2default:default2
stack_synth2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[11]2default:default2
stack_synth2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[10]2default:default2
stack_synth2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[9]2default:default2
stack_synth2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[8]2default:default2
stack_synth2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[7]2default:default2
stack_synth2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[6]2default:default2
stack_synth2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[5]2default:default2
stack_synth2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[4]2default:default2
stack_synth2default:defaultZ8-7129h px? 
?
%s*synth2?
yFinished RTL Elaboration : Time (s): cpu = 00:00:08 ; elapsed = 00:00:08 . Memory (MB): peak = 1296.449 ; gain = 498.898
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
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:08 ; elapsed = 00:00:08 . Memory (MB): peak = 1296.449 ; gain = 498.898
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
?Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:08 ; elapsed = 00:00:08 . Memory (MB): peak = 1296.449 ; gain = 498.898
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
00:00:00.0032default:default2
1296.4492default:default2
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
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH4/FPGA_Prototyping_CH4.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default8Z20-179h px? 
?
No ports matched '%s'.
584*	planAhead2
btnU2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH4/FPGA_Prototyping_CH4.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
1132default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH4/FPGA_Prototyping_CH4.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
1132default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
btnU2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH4/FPGA_Prototyping_CH4.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
1142default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH4/FPGA_Prototyping_CH4.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
1142default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
btnD2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH4/FPGA_Prototyping_CH4.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
1192default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH4/FPGA_Prototyping_CH4.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
1192default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
btnD2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH4/FPGA_Prototyping_CH4.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
1202default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH4/FPGA_Prototyping_CH4.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
1202default:default8@Z17-55h px?
?
Finished Parsing XDC File [%s]
178*designutils2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH4/FPGA_Prototyping_CH4.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default8Z20-178h px? 
?
?Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2?
mC:/Projects/FPGA-Intro/FPGA_Prototyping_CH4/FPGA_Prototyping_CH4.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default21
.Xil/stack_synth_propImpl.xdc2default:defaultZ1-236h px? 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1354.2382default:default2
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
1354.2382default:default2
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
Finished Constraint Validation : Time (s): cpu = 00:00:16 ; elapsed = 00:00:17 . Memory (MB): peak = 1354.238 ; gain = 556.688
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
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:16 ; elapsed = 00:00:17 . Memory (MB): peak = 1354.238 ; gain = 556.688
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
?Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:16 ; elapsed = 00:00:17 . Memory (MB): peak = 1354.238 ; gain = 556.688
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
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:17 ; elapsed = 00:00:17 . Memory (MB): peak = 1354.238 ; gain = 556.688
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
,	   2 Input    4 Bit       Adders := 5     
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
.	                1 Bit    Registers := 3     
2default:defaulth p
x
? 
8
%s
*synth2 
+---RAMs : 
2default:defaulth p
x
? 
h
%s
*synth2P
<	               64 Bit	(16 X 4 bit)          RAMs := 1     
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
,	   4 Input    4 Bit        Muxes := 4     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input    4 Bit        Muxes := 3     
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
,	   2 Input    1 Bit        Muxes := 6     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input    1 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    1 Bit        Muxes := 6     
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
+design %s has port %s driven by constant %s3447*oasys2
stack_synth2default:default2
dp2default:default2
12default:defaultZ8-3917h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[15]2default:default2
stack_synth2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[14]2default:default2
stack_synth2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[13]2default:default2
stack_synth2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[12]2default:default2
stack_synth2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[11]2default:default2
stack_synth2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[10]2default:default2
stack_synth2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[9]2default:default2
stack_synth2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[8]2default:default2
stack_synth2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[7]2default:default2
stack_synth2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[6]2default:default2
stack_synth2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[15]2default:default2
stack_synth2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[14]2default:default2
stack_synth2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[13]2default:default2
stack_synth2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[12]2default:default2
stack_synth2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[11]2default:default2
stack_synth2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[10]2default:default2
stack_synth2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[9]2default:default2
stack_synth2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[8]2default:default2
stack_synth2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[7]2default:default2
stack_synth2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[6]2default:default2
stack_synth2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[5]2default:default2
stack_synth2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[4]2default:default2
stack_synth2default:defaultZ8-7129h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:19 ; elapsed = 00:00:19 . Memory (MB): peak = 1354.238 ; gain = 556.688
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
%s*synth2j
V+------------+---------------------+-----------+----------------------+-------------+
2default:defaulth px? 
?
%s*synth2k
W|Module Name | RTL Object          | Inference | Size (Depth x Width) | Primitives  | 
2default:defaulth px? 
?
%s*synth2j
V+------------+---------------------+-----------+----------------------+-------------+
2default:defaulth px? 
?
%s*synth2k
W|stack_synth | stack/array_reg_reg | Implied   | 16 x 4               | RAM32M x 1  | 
2default:defaulth px? 
?
%s*synth2k
W+------------+---------------------+-----------+----------------------+-------------+

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
?Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:25 ; elapsed = 00:00:25 . Memory (MB): peak = 1354.238 ; gain = 556.688
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
}Finished Timing Optimization : Time (s): cpu = 00:00:25 ; elapsed = 00:00:26 . Memory (MB): peak = 1354.238 ; gain = 556.688
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
*synth2j
V+------------+---------------------+-----------+----------------------+-------------+
2default:defaulth p
x
? 
?
%s
*synth2k
W|Module Name | RTL Object          | Inference | Size (Depth x Width) | Primitives  | 
2default:defaulth p
x
? 
?
%s
*synth2j
V+------------+---------------------+-----------+----------------------+-------------+
2default:defaulth p
x
? 
?
%s
*synth2k
W|stack_synth | stack/array_reg_reg | Implied   | 16 x 4               | RAM32M x 1  | 
2default:defaulth p
x
? 
?
%s
*synth2k
W+------------+---------------------+-----------+----------------------+-------------+

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
|Finished Technology Mapping : Time (s): cpu = 00:00:25 ; elapsed = 00:00:26 . Memory (MB): peak = 1354.238 ; gain = 556.688
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
vFinished IO Insertion : Time (s): cpu = 00:00:30 ; elapsed = 00:00:31 . Memory (MB): peak = 1354.238 ; gain = 556.688
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
?Finished Renaming Generated Instances : Time (s): cpu = 00:00:30 ; elapsed = 00:00:31 . Memory (MB): peak = 1354.238 ; gain = 556.688
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
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:30 ; elapsed = 00:00:31 . Memory (MB): peak = 1354.238 ; gain = 556.688
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
?Finished Renaming Generated Ports : Time (s): cpu = 00:00:30 ; elapsed = 00:00:31 . Memory (MB): peak = 1354.238 ; gain = 556.688
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
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:30 ; elapsed = 00:00:31 . Memory (MB): peak = 1354.238 ; gain = 556.688
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
?Finished Renaming Generated Nets : Time (s): cpu = 00:00:30 ; elapsed = 00:00:31 . Memory (MB): peak = 1354.238 ; gain = 556.688
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
|2     |CARRY4 |    13|
2default:defaulth px? 
D
%s*synth2,
|3     |LUT1   |     2|
2default:defaulth px? 
D
%s*synth2,
|4     |LUT2   |     8|
2default:defaulth px? 
D
%s*synth2,
|5     |LUT3   |     6|
2default:defaulth px? 
D
%s*synth2,
|6     |LUT4   |     7|
2default:defaulth px? 
D
%s*synth2,
|7     |LUT5   |    12|
2default:defaulth px? 
D
%s*synth2,
|8     |LUT6   |    51|
2default:defaulth px? 
D
%s*synth2,
|9     |RAM32M |     1|
2default:defaulth px? 
D
%s*synth2,
|10    |FDCE   |    64|
2default:defaulth px? 
D
%s*synth2,
|11    |FDPE   |     1|
2default:defaulth px? 
D
%s*synth2,
|12    |IBUF   |     8|
2default:defaulth px? 
D
%s*synth2,
|13    |OBUF   |    18|
2default:defaulth px? 
D
%s*synth2,
|14    |OBUFT  |    10|
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
?Finished Writing Synthesis Report : Time (s): cpu = 00:00:30 ; elapsed = 00:00:31 . Memory (MB): peak = 1354.238 ; gain = 556.688
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
GSynthesis finished with 0 errors, 0 critical warnings and 24 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
Synthesis Optimization Runtime : Time (s): cpu = 00:00:20 ; elapsed = 00:00:29 . Memory (MB): peak = 1354.238 ; gain = 498.898
2default:defaulth p
x
? 
?
%s
*synth2?
?Synthesis Optimization Complete : Time (s): cpu = 00:00:30 ; elapsed = 00:00:31 . Memory (MB): peak = 1354.238 ; gain = 556.688
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
00:00:00.0022default:default2
1354.2382default:default2
0.0002default:defaultZ17-268h px? 
f
-Analyzing %s Unisim elements for replacement
17*netlist2
142default:defaultZ29-17h px? 
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
1354.2382default:default2
0.0002default:defaultZ17-268h px? 
?
!Unisim Transformation Summary:
%s111*project2x
d  A total of 1 instances were transformed.
  RAM32M => RAM32M (RAMD32(x6), RAMS32(x2)): 1 instance 
2default:defaultZ1-111h px? 
g
$Synth Design complete, checksum: %s
562*	vivadotcl2
4f2f72bc2default:defaultZ4-1430h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
362default:default2
542default:default2
42default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:342default:default2
00:00:362default:default2
1354.2382default:default2
934.9532default:defaultZ17-268h px? 
u
%s6*runtcl2Y
ESynthesis results are not added to the cache due to CRITICAL_WARNING
2default:defaulth px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2q
]C:/Projects/FPGA-Intro/FPGA_Prototyping_CH4/FPGA_Prototyping_CH4.runs/synth_1/stack_synth.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2?
lExecuting : report_utilization -file stack_synth_utilization_synth.rpt -pb stack_synth_utilization_synth.pb
2default:defaulth px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Mon Dec 12 13:46:29 20222default:defaultZ17-206h px? 


End Record