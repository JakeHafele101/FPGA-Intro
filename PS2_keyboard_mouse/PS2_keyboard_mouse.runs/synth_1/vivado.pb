
?
Command: %s
1870*	planAhead2?
?read_checkpoint -auto_incremental -incremental C:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/utils_1/imports/synth_1/kb_monitor_synth.dcp2default:defaultZ12-2866h px? 
?
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2?
nC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/utils_1/imports/synth_1/kb_monitor_synth.dcp2default:defaultZ12-5825h px? 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px? 
}
Command: %s
53*	vivadotcl2L
8synth_design -top kb_monitor_synth -part xc7a35tcpg236-12default:defaultZ4-113h px? 
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
88122default:defaultZ8-7075h px? 
?
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
REGCCE2default:default2
wire2default:default2[
EC:/Xilinx/Vivado/2022.2/data/verilog/src/unimacro/BRAM_SINGLE_MACRO.v2default:default2
21702default:default8@Z8-11241h px? 
?
.identifier '%s' is used before its declaration4750*oasys2
B2default:default2t
^C:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/sources_1/imports/new/FIFO.v2default:default2
262default:default8@Z8-6901h px? 
?
.identifier '%s' is used before its declaration4750*oasys2
B2default:default2t
^C:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/sources_1/imports/new/FIFO.v2default:default2
282default:default8@Z8-6901h px? 
?
.identifier '%s' is used before its declaration4750*oasys2
N2default:default2?
mC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/sources_1/imports/new/baud_rate_generator.v2default:default2
252default:default8@Z8-6901h px? 
?
.identifier '%s' is used before its declaration4750*oasys2
DBIT2default:default2w
aC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/sources_1/imports/new/uart_rx.v2default:default2
282default:default8@Z8-6901h px? 
?
.identifier '%s' is used before its declaration4750*oasys2
DBIT2default:default2w
aC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/sources_1/imports/new/uart_tx.v2default:default2
272default:default8@Z8-6901h px? 
?
%s*synth2?
yStarting RTL Elaboration : Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 1205.355 ; gain = 409.324
2default:defaulth px? 
?
synthesizing module '%s'%s4497*oasys2$
kb_monitor_synth2default:default2
 2default:default2x
bC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/sources_1/new/kb_monitor_synth.v2default:default2
232default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2

kb_monitor2default:default2
 2default:default2r
\C:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/sources_1/new/kb_monitor.v2default:default2
232default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
ps2_rx2default:default2
 2default:default2n
XC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/sources_1/new/ps2_rx.v2default:default2
232default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
ps2_rx2default:default2
 2default:default2
02default:default2
12default:default2n
XC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/sources_1/new/ps2_rx.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
uart2default:default2
 2default:default2t
^C:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/sources_1/imports/new/uart.v2default:default2
232default:default8@Z8-6157h px? 
Y
%s
*synth2A
-	Parameter DBIT bound to: 8 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter SB_TICK bound to: 16 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter DVSR bound to: 326 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter DVSR_BIT bound to: 9 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter FIFO_W bound to: 2 - type: integer 
2default:defaulth p
x
? 
?
synthesizing module '%s'%s4497*oasys2'
baud_rate_generator2default:default2
 2default:default2?
mC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/sources_1/imports/new/baud_rate_generator.v2default:default2
232default:default8@Z8-6157h px? 
X
%s
*synth2@
,	Parameter M bound to: 326 - type: integer 
2default:defaulth p
x
? 
V
%s
*synth2>
*	Parameter N bound to: 9 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2'
baud_rate_generator2default:default2
 2default:default2
02default:default2
12default:default2?
mC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/sources_1/imports/new/baud_rate_generator.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
uart_rx2default:default2
 2default:default2w
aC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/sources_1/imports/new/uart_rx.v2default:default2
232default:default8@Z8-6157h px? 
Y
%s
*synth2A
-	Parameter DBIT bound to: 8 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter SB_TICK bound to: 16 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
uart_rx2default:default2
 2default:default2
02default:default2
12default:default2w
aC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/sources_1/imports/new/uart_rx.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
FIFO2default:default2
 2default:default2t
^C:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/sources_1/imports/new/FIFO.v2default:default2
232default:default8@Z8-6157h px? 
V
%s
*synth2>
*	Parameter B bound to: 8 - type: integer 
2default:defaulth p
x
? 
V
%s
*synth2>
*	Parameter W bound to: 2 - type: integer 
2default:defaulth p
x
? 
?
-case statement is not full and has no default155*oasys2t
^C:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/sources_1/imports/new/FIFO.v2default:default2
712default:default8@Z8-155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
FIFO2default:default2
 2default:default2
02default:default2
12default:default2t
^C:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/sources_1/imports/new/FIFO.v2default:default2
232default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
uart_tx2default:default2
 2default:default2w
aC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/sources_1/imports/new/uart_tx.v2default:default2
232default:default8@Z8-6157h px? 
Y
%s
*synth2A
-	Parameter DBIT bound to: 8 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter SB_TICK bound to: 16 - type: integer 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
uart_tx2default:default2
 2default:default2
02default:default2
12default:default2w
aC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/sources_1/imports/new/uart_tx.v2default:default2
232default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
uart2default:default2
 2default:default2
02default:default2
12default:default2t
^C:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/sources_1/imports/new/uart.v2default:default2
232default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

kb_monitor2default:default2
 2default:default2
02default:default2
12default:default2r
\C:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/sources_1/new/kb_monitor.v2default:default2
232default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2$
kb_monitor_synth2default:default2
 2default:default2
02default:default2
12default:default2x
bC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/sources_1/new/kb_monitor_synth.v2default:default2
232default:default8@Z8-6155h px? 
?
0Net %s in module/entity %s does not have driver.3422*oasys2
LED2default:default2$
kb_monitor_synth2default:default2x
bC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/sources_1/new/kb_monitor_synth.v2default:default2
292default:default8@Z8-3848h px? 
?
+design %s has port %s driven by constant %s3447*oasys2$
kb_monitor_synth2default:default2
JA[1]2default:default2
02default:defaultZ8-3917h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
JA[7]2default:default2$
kb_monitor_synth2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
JA[6]2default:default2$
kb_monitor_synth2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
JA[5]2default:default2$
kb_monitor_synth2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
JA[4]2default:default2$
kb_monitor_synth2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
JA[3]2default:default2$
kb_monitor_synth2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[15]2default:default2$
kb_monitor_synth2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[14]2default:default2$
kb_monitor_synth2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[13]2default:default2$
kb_monitor_synth2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[12]2default:default2$
kb_monitor_synth2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[11]2default:default2$
kb_monitor_synth2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[10]2default:default2$
kb_monitor_synth2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[9]2default:default2$
kb_monitor_synth2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[8]2default:default2$
kb_monitor_synth2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[7]2default:default2$
kb_monitor_synth2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[6]2default:default2$
kb_monitor_synth2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[5]2default:default2$
kb_monitor_synth2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[4]2default:default2$
kb_monitor_synth2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[3]2default:default2$
kb_monitor_synth2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[2]2default:default2$
kb_monitor_synth2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[1]2default:default2$
kb_monitor_synth2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[0]2default:default2$
kb_monitor_synth2default:defaultZ8-7129h px? 
?
%s*synth2?
yFinished RTL Elaboration : Time (s): cpu = 00:00:07 ; elapsed = 00:00:07 . Memory (MB): peak = 1296.816 ; gain = 500.785
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
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:07 ; elapsed = 00:00:07 . Memory (MB): peak = 1296.816 ; gain = 500.785
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
?Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:07 ; elapsed = 00:00:07 . Memory (MB): peak = 1296.816 ; gain = 500.785
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
1296.8162default:default2
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
179*designutils2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default8Z20-179h px? 
?
No ports matched '%s'.
584*	planAhead2
sw[0]2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
122default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
122default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
sw[0]2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
132default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
132default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
sw[1]2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
142default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
142default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
sw[1]2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
152default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
152default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
sw[2]2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
162default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
162default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
sw[2]2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
172default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
172default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
sw[3]2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
182default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
182default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
sw[3]2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
192default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
192default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
sw[4]2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
202default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
202default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
sw[4]2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
212default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
212default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
sw[5]2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
222default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
222default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
sw[5]2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
232default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
232default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
sw[6]2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
242default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
242default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
sw[6]2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
252default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
252default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
sw[7]2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
262default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
262default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
sw[7]2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
272default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
272default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
sw[8]2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
282default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
282default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
sw[8]2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
292default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
292default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
sw[9]2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
302default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
302default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
sw[9]2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
312default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
312default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
sw[10]2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
322default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
322default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
sw[10]2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
332default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
332default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
sw[11]2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
342default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
342default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
sw[11]2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
352default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
352default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
sw[12]2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
362default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
362default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
sw[12]2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
372default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
372default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
sw[13]2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
382default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
382default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
sw[13]2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
392default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
392default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
sw[14]2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
402default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
402default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
sw[14]2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
412default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
412default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
sw[15]2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
422default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
422default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
sw[15]2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
432default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
432default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
seg[0]2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
822default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
822default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
seg[0]2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
832default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
832default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
seg[1]2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
842default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
842default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
seg[1]2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
852default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
852default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
seg[2]2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
862default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
862default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
seg[2]2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
872default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
872default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
seg[3]2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
882default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
882default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
seg[3]2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
892default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
892default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
seg[4]2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
902default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
902default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
seg[4]2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
912default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
912default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
seg[5]2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
922default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
922default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
seg[5]2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
932default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
932default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
seg[6]2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
942default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
942default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
seg[6]2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
952default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
952default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
dp2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
972default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
972default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
dp2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
982default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
982default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
an[0]2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
1002default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
1002default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
an[0]2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
1012default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
1012default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
an[1]2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
1022default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
1022default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
an[1]2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
1032default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
1032default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
an[2]2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
1042default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
1042default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
an[2]2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
1052default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
1052default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
an[3]2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
1062default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
1062default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
an[3]2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
1072default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
1072default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
btnU2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
1132default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
1132default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
btnU2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
1142default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
1142default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
btnL2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
1152default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
1152default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
btnL2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
1162default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
1162default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
btnR2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
1172default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
1172default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
btnR2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
1182default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
1182default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
btnD2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
1192default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
1192default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
btnD2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
1202default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
1202default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
RsRx2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
2672default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
2672default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
RsRx2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
2682default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
2682default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
	QspiDB[0]2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
2852default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
2852default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
	QspiDB[0]2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
2862default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
2862default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
	QspiDB[1]2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
2872default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
2872default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
	QspiDB[1]2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
2882default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
2882default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
	QspiDB[2]2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
2892default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
2892default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
	QspiDB[2]2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
2902default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
2902default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
	QspiDB[3]2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
2912default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
2912default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
	QspiDB[3]2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
2922default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
2922default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
QspiCSn2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
2932default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
2932default:default8@Z17-55h px?
?
No ports matched '%s'.
584*	planAhead2
QspiCSn2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
2942default:default8@Z12-584h px?
?
"'%s' expects at least one object.
55*common2 
set_property2default:default2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default2
2942default:default8@Z17-55h px?
?
Finished Parsing XDC File [%s]
178*designutils2
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default8Z20-178h px? 
?
?Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2}
iC:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.srcs/constrs_1/imports/new/Basys3_Master.xdc2default:default26
".Xil/kb_monitor_synth_propImpl.xdc2default:defaultZ1-236h px? 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1399.2342default:default2
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
1399.2342default:default2
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
Finished Constraint Validation : Time (s): cpu = 00:00:15 ; elapsed = 00:00:15 . Memory (MB): peak = 1399.234 ; gain = 603.203
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
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:15 ; elapsed = 00:00:15 . Memory (MB): peak = 1399.234 ; gain = 603.203
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
?Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:15 ; elapsed = 00:00:16 . Memory (MB): peak = 1399.234 ; gain = 603.203
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
s_state_reg_reg2default:default2
ps2_rx2default:defaultZ8-802h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2#
s_state_reg_reg2default:default2
uart_rx2default:defaultZ8-802h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2#
s_state_reg_reg2default:default2
uart_tx2default:defaultZ8-802h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2#
s_state_reg_reg2default:default2

kb_monitor2default:defaultZ8-802h px? 
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
_                    idle |                              001 |                               00
2default:defaulth p
x
? 
?
%s
*synth2s
_                      rx |                              010 |                               01
2default:defaulth p
x
? 
?
%s
*synth2s
_                    load |                              100 |                               10
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
s_state_reg_reg2default:default2
one-hot2default:default2
ps2_rx2default:defaultZ8-3354h px? 
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
_                    idle |                               00 |                               00
2default:defaulth p
x
? 
?
%s
*synth2s
_                   start |                               01 |                               01
2default:defaulth p
x
? 
?
%s
*synth2s
_                    data |                               10 |                               10
2default:defaulth p
x
? 
?
%s
*synth2s
_                    stop |                               11 |                               11
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

sequential2default:default2
uart_rx2default:defaultZ8-3354h px? 
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
_                    idle |                               00 |                               00
2default:defaulth p
x
? 
?
%s
*synth2s
_                   start |                               01 |                               01
2default:defaulth p
x
? 
?
%s
*synth2s
_                    data |                               10 |                               10
2default:defaulth p
x
? 
?
%s
*synth2s
_                    stop |                               11 |                               11
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

sequential2default:default2
uart_tx2default:defaultZ8-3354h px? 
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
_                    idle |                             0001 |                               00
2default:defaulth p
x
? 
?
%s
*synth2s
_                   send1 |                             0010 |                               01
2default:defaulth p
x
? 
?
%s
*synth2s
_                   send0 |                             0100 |                               10
2default:defaulth p
x
? 
?
%s
*synth2s
_                   sendb |                             1000 |                               11
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
s_state_reg_reg2default:default2
one-hot2default:default2

kb_monitor2default:defaultZ8-3354h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:15 ; elapsed = 00:00:16 . Memory (MB): peak = 1399.234 ; gain = 603.203
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
,	   2 Input    9 Bit       Adders := 1     
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
,	   2 Input    4 Bit       Adders := 1     
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
X
%s
*synth2@
,	   2 Input    2 Bit       Adders := 4     
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
.	               11 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                9 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Registers := 3     
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
.	                4 Bit    Registers := 1     
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
.	                1 Bit    Registers := 6     
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
g
%s
*synth2O
;	               32 Bit	(4 X 8 bit)          RAMs := 2     
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
,	   3 Input   11 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    9 Bit        Muxes := 1     
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
,	   4 Input    7 Bit        Muxes := 1     
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
,	   4 Input    5 Bit        Muxes := 2     
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
,	   2 Input    4 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    3 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input    2 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    2 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    2 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input    1 Bit        Muxes := 4     
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
,	   4 Input    1 Bit        Muxes := 25    
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
+Unused sequential element %s was removed. 
4326*oasys23
kb/uart/fifo_rx/s_array_reg_reg2default:defaultZ8-6014h px? 
?
+design %s has port %s driven by constant %s3447*oasys2$
kb_monitor_synth2default:default2
JA[1]2default:default2
02default:defaultZ8-3917h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
JA[7]2default:default2$
kb_monitor_synth2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
JA[6]2default:default2$
kb_monitor_synth2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
JA[5]2default:default2$
kb_monitor_synth2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
JA[4]2default:default2$
kb_monitor_synth2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
JA[3]2default:default2$
kb_monitor_synth2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[15]2default:default2$
kb_monitor_synth2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[14]2default:default2$
kb_monitor_synth2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[13]2default:default2$
kb_monitor_synth2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[12]2default:default2$
kb_monitor_synth2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[11]2default:default2$
kb_monitor_synth2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[10]2default:default2$
kb_monitor_synth2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[9]2default:default2$
kb_monitor_synth2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[8]2default:default2$
kb_monitor_synth2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[7]2default:default2$
kb_monitor_synth2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[6]2default:default2$
kb_monitor_synth2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[5]2default:default2$
kb_monitor_synth2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[4]2default:default2$
kb_monitor_synth2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[3]2default:default2$
kb_monitor_synth2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[2]2default:default2$
kb_monitor_synth2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[1]2default:default2$
kb_monitor_synth2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[0]2default:default2$
kb_monitor_synth2default:defaultZ8-7129h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2@
,kb/uart/rx/FSM_sequential_s_state_reg_reg[1]2default:default2$
kb_monitor_synth2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2@
,kb/uart/rx/FSM_sequential_s_state_reg_reg[0]2default:default2$
kb_monitor_synth2default:defaultZ8-3332h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:17 ; elapsed = 00:00:18 . Memory (MB): peak = 1399.234 ; gain = 603.203
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
%s*synth2{
g+-----------------+---------------------------------+-----------+----------------------+-------------+
2default:defaulth px? 
?
%s*synth2|
h|Module Name      | RTL Object                      | Inference | Size (Depth x Width) | Primitives  | 
2default:defaulth px? 
?
%s*synth2{
g+-----------------+---------------------------------+-----------+----------------------+-------------+
2default:defaulth px? 
?
%s*synth2|
h|kb_monitor_synth | kb/uart/fifo_tx/s_array_reg_reg | Implied   | 4 x 7                | RAM32M x 2  | 
2default:defaulth px? 
?
%s*synth2|
h+-----------------+---------------------------------+-----------+----------------------+-------------+

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
?Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:23 ; elapsed = 00:00:24 . Memory (MB): peak = 1399.234 ; gain = 603.203
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
}Finished Timing Optimization : Time (s): cpu = 00:00:23 ; elapsed = 00:00:24 . Memory (MB): peak = 1399.234 ; gain = 603.203
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
*synth2{
g+-----------------+---------------------------------+-----------+----------------------+-------------+
2default:defaulth p
x
? 
?
%s
*synth2|
h|Module Name      | RTL Object                      | Inference | Size (Depth x Width) | Primitives  | 
2default:defaulth p
x
? 
?
%s
*synth2{
g+-----------------+---------------------------------+-----------+----------------------+-------------+
2default:defaulth p
x
? 
?
%s
*synth2|
h|kb_monitor_synth | kb/uart/fifo_tx/s_array_reg_reg | Implied   | 4 x 7                | RAM32M x 2  | 
2default:defaulth p
x
? 
?
%s
*synth2|
h+-----------------+---------------------------------+-----------+----------------------+-------------+

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
|Finished Technology Mapping : Time (s): cpu = 00:00:23 ; elapsed = 00:00:24 . Memory (MB): peak = 1399.234 ; gain = 603.203
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
vFinished IO Insertion : Time (s): cpu = 00:00:27 ; elapsed = 00:00:28 . Memory (MB): peak = 1399.234 ; gain = 603.203
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
?Finished Renaming Generated Instances : Time (s): cpu = 00:00:27 ; elapsed = 00:00:28 . Memory (MB): peak = 1399.234 ; gain = 603.203
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
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:27 ; elapsed = 00:00:28 . Memory (MB): peak = 1399.234 ; gain = 603.203
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
?Finished Renaming Generated Ports : Time (s): cpu = 00:00:27 ; elapsed = 00:00:28 . Memory (MB): peak = 1399.234 ; gain = 603.203
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
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:27 ; elapsed = 00:00:28 . Memory (MB): peak = 1399.234 ; gain = 603.203
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
?Finished Renaming Generated Nets : Time (s): cpu = 00:00:27 ; elapsed = 00:00:28 . Memory (MB): peak = 1399.234 ; gain = 603.203
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
F
%s*synth2.
+------+---------+------+
2default:defaulth px? 
F
%s*synth2.
|      |Cell     |Count |
2default:defaulth px? 
F
%s*synth2.
+------+---------+------+
2default:defaulth px? 
F
%s*synth2.
|1     |BUFG     |     1|
2default:defaulth px? 
F
%s*synth2.
|2     |LUT2     |     5|
2default:defaulth px? 
F
%s*synth2.
|3     |LUT3     |    26|
2default:defaulth px? 
F
%s*synth2.
|4     |LUT4     |    18|
2default:defaulth px? 
F
%s*synth2.
|5     |LUT5     |    21|
2default:defaulth px? 
F
%s*synth2.
|6     |LUT6     |    20|
2default:defaulth px? 
F
%s*synth2.
|7     |RAM32M   |     1|
2default:defaulth px? 
F
%s*synth2.
|8     |RAM32X1D |     2|
2default:defaulth px? 
F
%s*synth2.
|9     |FDCE     |    60|
2default:defaulth px? 
F
%s*synth2.
|10    |FDPE     |     4|
2default:defaulth px? 
F
%s*synth2.
|11    |IBUF     |     4|
2default:defaulth px? 
F
%s*synth2.
|12    |OBUF     |     4|
2default:defaulth px? 
F
%s*synth2.
|13    |OBUFT    |    21|
2default:defaulth px? 
F
%s*synth2.
+------+---------+------+
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
?Finished Writing Synthesis Report : Time (s): cpu = 00:00:27 ; elapsed = 00:00:28 . Memory (MB): peak = 1399.234 ; gain = 603.203
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
GSynthesis finished with 0 errors, 0 critical warnings and 26 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
Synthesis Optimization Runtime : Time (s): cpu = 00:00:18 ; elapsed = 00:00:26 . Memory (MB): peak = 1399.234 ; gain = 500.785
2default:defaulth p
x
? 
?
%s
*synth2?
?Synthesis Optimization Complete : Time (s): cpu = 00:00:27 ; elapsed = 00:00:28 . Memory (MB): peak = 1399.234 ; gain = 603.203
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
1399.2342default:default2
0.0002default:defaultZ17-268h px? 
e
-Analyzing %s Unisim elements for replacement
17*netlist2
32default:defaultZ29-17h px? 
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
1399.2342default:default2
0.0002default:defaultZ17-268h px? 
?
!Unisim Transformation Summary:
%s111*project2?
?  A total of 3 instances were transformed.
  RAM32M => RAM32M (RAMD32(x6), RAMS32(x2)): 1 instance 
  RAM32X1D => RAM32X1D (RAMD32(x2)): 2 instances
2default:defaultZ1-111h px? 
g
$Synth Design complete, checksum: %s
562*	vivadotcl2
8341992b2default:defaultZ4-1430h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
482default:default2
1302default:default2
762default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:312default:default2
00:00:342default:default2
1399.2342default:default2
980.6912default:defaultZ17-268h px? 
u
%s6*runtcl2Y
ESynthesis results are not added to the cache due to CRITICAL_WARNING
2default:defaulth px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2r
^C:/Projects/FPGA-Intro/PS2_keyboard_mouse/PS2_keyboard_mouse.runs/synth_1/kb_monitor_synth.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2?
vExecuting : report_utilization -file kb_monitor_synth_utilization_synth.rpt -pb kb_monitor_synth_utilization_synth.pb
2default:defaulth px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Wed Jan  4 19:34:26 20232default:defaultZ17-206h px? 


End Record