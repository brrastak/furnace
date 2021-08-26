EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 9
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ac-dc:AC-DC PS1
U 1 1 60AB52E3
P 5900 4100
F 0 "PS1" H 5900 4425 50  0000 C CNN
F 1 "WX-DC12003 5V 0,7A" H 5900 4334 50  0000 C CNN
F 2 "furnace_230V:WX-DC12003" H 5900 3800 50  0001 C CNN
F 3 "" H 6300 3750 50  0001 C CNN
	1    5900 4100
	1    0    0    -1  
$EndComp
$Comp
L furnace_230V-rescue:C-Device C1
U 1 1 60ABB472
P 3000 4150
F 0 "C1" H 3115 4196 50  0000 L CNN
F 1 "0,15 275V" H 3115 4105 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L18.0mm_W7.0mm_P15.00mm_FKS3_FKP3" H 3038 4000 50  0001 C CNN
F 3 "~" H 3000 4150 50  0001 C CNN
	1    3000 4150
	1    0    0    -1  
$EndComp
$Comp
L furnace_230V-rescue:C-Device C2
U 1 1 60ABBB35
P 4750 4150
F 0 "C2" H 4865 4196 50  0000 L CNN
F 1 "0,15 275V" H 4865 4105 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L18.0mm_W7.0mm_P15.00mm_FKS3_FKP3" H 4788 4000 50  0001 C CNN
F 3 "~" H 4750 4150 50  0001 C CNN
	1    4750 4150
	1    0    0    -1  
$EndComp
$Comp
L furnace_230V-rescue:L_Core_Iron_Coupled_1243-Device L1
U 1 1 60ABCAA3
P 4050 4100
F 0 "L1" H 4050 4381 50  0000 C CNN
F 1 "PLA10AN3630R3D2" H 4050 4290 50  0000 C CNN
F 2 "furnace_230V:L_CommonMode_PLA10" H 4050 4100 50  0001 C CNN
F 3 "~" H 4050 4100 50  0001 C CNN
	1    4050 4100
	1    0    0    -1  
$EndComp
$Comp
L furnace_230V-rescue:C-Device C3
U 1 1 60ABD84E
P 6750 4150
F 0 "C3" H 6865 4196 50  0000 L CNN
F 1 "10u" H 6865 4105 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 6788 4000 50  0001 C CNN
F 3 "~" H 6750 4150 50  0001 C CNN
	1    6750 4150
	1    0    0    -1  
$EndComp
$Comp
L furnace_230V-rescue:C-Device C4
U 1 1 60ABDA72
P 7500 4150
F 0 "C4" H 7615 4196 50  0000 L CNN
F 1 "10u" H 7615 4105 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 7538 4000 50  0001 C CNN
F 3 "~" H 7500 4150 50  0001 C CNN
	1    7500 4150
	1    0    0    -1  
$EndComp
$Comp
L furnace_230V-rescue:L-Device L2
U 1 1 60ABDC2D
P 7250 4000
F 0 "L2" V 7350 4000 50  0000 C CNN
F 1 "2.2u" V 7200 4000 50  0000 C CNN
F 2 "Inductor_THT:L_Axial_L7.0mm_D3.3mm_P10.16mm_Horizontal_Fastron_MICC" H 7250 4000 50  0001 C CNN
F 3 "~" H 7250 4000 50  0001 C CNN
	1    7250 4000
	0    -1   -1   0   
$EndComp
$Comp
L furnace_230V-rescue:D_TVS-Device D1
U 1 1 60ABE587
P 8000 4150
F 0 "D1" V 7954 4230 50  0000 L CNN
F 1 "D_TVS" V 8045 4230 50  0000 L CNN
F 2 "Diode_SMD:D_SMB_Handsoldering" H 8000 4150 50  0001 C CNN
F 3 "~" H 8000 4150 50  0001 C CNN
	1    8000 4150
	0    1    1    0   
$EndComp
$Comp
L furnace_230V-rescue:TestPoint-Connector TP?
U 1 1 60ACEC46
P 7000 4000
AR Path="/60ACEC46" Ref="TP?"  Part="1" 
AR Path="/609CA6A8/60AE5653/60ACEC46" Ref="TP?"  Part="1" 
AR Path="/60AAC605/60ACEC46" Ref="TP?"  Part="1" 
AR Path="/60AABABA/60ACEC46" Ref="TP1"  Part="1" 
F 0 "TP1" H 7058 4118 50  0000 L CNN
F 1 "TestPoint" H 7058 4027 50  0001 L CNN
F 2 "furnace_230V:TP" H 7200 4000 50  0001 C CNN
F 3 "~" H 7200 4000 50  0001 C CNN
	1    7000 4000
	1    0    0    -1  
$EndComp
$Comp
L furnace_230V-rescue:TestPoint-Connector TP?
U 1 1 60ACED6E
P 8750 4000
AR Path="/60ACED6E" Ref="TP?"  Part="1" 
AR Path="/609CA6A8/60AE5653/60ACED6E" Ref="TP?"  Part="1" 
AR Path="/60AAC605/60ACED6E" Ref="TP?"  Part="1" 
AR Path="/60AABABA/60ACED6E" Ref="TP2"  Part="1" 
F 0 "TP2" H 8808 4118 50  0000 L CNN
F 1 "TestPoint" H 8808 4027 50  0001 L CNN
F 2 "furnace_230V:TP" H 8950 4000 50  0001 C CNN
F 3 "~" H 8950 4000 50  0001 C CNN
	1    8750 4000
	1    0    0    -1  
$EndComp
$Comp
L furnace_230V-rescue:R-Device R?
U 1 1 60AD2417
P 9000 4150
AR Path="/60AD2417" Ref="R?"  Part="1" 
AR Path="/609CA6A8/60AD2417" Ref="R?"  Part="1" 
AR Path="/609CA6A8/60AE5653/60AD2417" Ref="R?"  Part="1" 
AR Path="/60AAC605/60AD2417" Ref="R?"  Part="1" 
AR Path="/60AAE212/60AD2417" Ref="R?"  Part="1" 
AR Path="/60AABABA/60AD2417" Ref="R1"  Part="1" 
F 0 "R1" H 9070 4196 50  0000 L CNN
F 1 "680" H 9070 4105 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8930 4150 50  0001 C CNN
F 3 "~" H 9000 4150 50  0001 C CNN
	1    9000 4150
	1    0    0    -1  
$EndComp
$Comp
L furnace_230V-rescue:LED-Device D2
U 1 1 60AD2617
P 9000 4650
F 0 "D2" V 9039 4532 50  0000 R CNN
F 1 "LED" V 8948 4532 50  0000 R CNN
F 2 "LED_SMD:LED_1206_3216Metric_ReverseMount_Hole1.8x2.4mm" H 9000 4650 50  0001 C CNN
F 3 "~" H 9000 4650 50  0001 C CNN
	1    9000 4650
	0    -1   -1   0   
$EndComp
Text Notes 8100 2200 2    197  ~ 0
AC/DC +5V power source
Text HLabel 10000 4000 2    50   Output ~ 0
+5V
Text HLabel 10000 5000 2    50   Output ~ 0
GND
Text HLabel 2000 4000 0    50   Input ~ 0
AC1
Text HLabel 2000 4500 0    50   Input ~ 0
AC2
Wire Wire Line
	2000 4000 3000 4000
Wire Wire Line
	3000 4000 3850 4000
Connection ~ 3000 4000
Wire Wire Line
	4250 4000 4750 4000
Wire Wire Line
	4750 4000 5250 4000
Connection ~ 4750 4000
Wire Wire Line
	2000 4500 3000 4500
Wire Wire Line
	3850 4500 3850 4200
Wire Wire Line
	4250 4200 4250 4500
Wire Wire Line
	4250 4500 4750 4500
Wire Wire Line
	5500 4500 5500 4200
Wire Wire Line
	4750 4300 4750 4500
Connection ~ 4750 4500
Wire Wire Line
	4750 4500 5250 4500
Wire Wire Line
	3000 4300 3000 4500
Connection ~ 3000 4500
Wire Wire Line
	3000 4500 3850 4500
Wire Wire Line
	6300 4000 6750 4000
Connection ~ 6750 4000
Wire Wire Line
	6750 4000 7000 4000
Wire Wire Line
	6300 4200 6300 4500
Wire Wire Line
	6300 4500 6750 4500
Wire Wire Line
	8500 4500 8500 5000
Wire Wire Line
	8500 5000 9000 5000
Connection ~ 8500 4000
Wire Wire Line
	8500 4000 8750 4000
Connection ~ 8750 4000
Wire Wire Line
	8750 4000 9000 4000
Connection ~ 9000 4000
Wire Wire Line
	9000 4000 9500 4000
Wire Wire Line
	6750 4300 6750 4500
Connection ~ 6750 4500
Wire Wire Line
	9000 4300 9000 4500
Wire Wire Line
	9000 4800 9000 5000
Connection ~ 9000 5000
Wire Wire Line
	9000 5000 10000 5000
Wire Wire Line
	6750 4500 7500 4500
Wire Wire Line
	7500 4000 8000 4000
$Comp
L furnace_230V-rescue:CP-Device C5
U 1 1 60B2B0B1
P 8500 4150
F 0 "C5" H 8618 4196 50  0000 L CNN
F 1 "47u" H 8618 4105 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 8538 4000 50  0001 C CNN
F 3 "~" H 8500 4150 50  0001 C CNN
	1    8500 4150
	1    0    0    -1  
$EndComp
Connection ~ 8000 4000
Wire Wire Line
	8000 4000 8500 4000
Wire Wire Line
	7000 4000 7100 4000
Connection ~ 7000 4000
Wire Wire Line
	7400 4000 7500 4000
Connection ~ 7500 4000
Wire Wire Line
	7500 4300 7500 4500
Connection ~ 7500 4500
Wire Wire Line
	7500 4500 8000 4500
Wire Wire Line
	8000 4300 8000 4500
Connection ~ 8000 4500
Wire Wire Line
	8000 4500 8500 4500
Wire Wire Line
	8500 4300 8500 4500
Connection ~ 8500 4500
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 6127E67A
P 5250 4000
F 0 "#FLG0101" H 5250 4075 50  0001 C CNN
F 1 "PWR_FLAG" H 5250 4173 50  0000 C CNN
F 2 "" H 5250 4000 50  0001 C CNN
F 3 "~" H 5250 4000 50  0001 C CNN
	1    5250 4000
	1    0    0    -1  
$EndComp
Connection ~ 5250 4000
Wire Wire Line
	5250 4000 5500 4000
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 6127F32F
P 5250 4500
F 0 "#FLG0102" H 5250 4575 50  0001 C CNN
F 1 "PWR_FLAG" H 5250 4673 50  0000 C CNN
F 2 "" H 5250 4500 50  0001 C CNN
F 3 "~" H 5250 4500 50  0001 C CNN
	1    5250 4500
	1    0    0    -1  
$EndComp
Connection ~ 5250 4500
Wire Wire Line
	5250 4500 5500 4500
$Comp
L power:PWR_FLAG #FLG0103
U 1 1 61281158
P 9500 4000
F 0 "#FLG0103" H 9500 4075 50  0001 C CNN
F 1 "PWR_FLAG" H 9500 4173 50  0000 C CNN
F 2 "" H 9500 4000 50  0001 C CNN
F 3 "~" H 9500 4000 50  0001 C CNN
	1    9500 4000
	1    0    0    -1  
$EndComp
Connection ~ 9500 4000
Wire Wire Line
	9500 4000 10000 4000
$EndSCHEMATC
