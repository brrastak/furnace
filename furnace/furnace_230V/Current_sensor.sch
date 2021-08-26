EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 9 9
Title "Furnace 230V"
Date "2021-08-26"
Rev "1.0"
Comp "Yuriy Volkov"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L furnace_230V-rescue:TestPoint-Connector TP?
U 1 1 60ACFCB9
P 4500 4000
AR Path="/60ACFCB9" Ref="TP?"  Part="1" 
AR Path="/609CA6A8/60AE5653/60ACFCB9" Ref="TP?"  Part="1" 
AR Path="/60AAC605/60ACFCB9" Ref="TP?"  Part="1" 
AR Path="/60AAE212/60ACFCB9" Ref="TP11"  Part="1" 
F 0 "TP11" H 4558 4118 50  0000 L CNN
F 1 "TestPoint" H 4558 4027 50  0001 L CNN
F 2 "furnace_230V:TP" H 4700 4000 50  0001 C CNN
F 3 "~" H 4700 4000 50  0001 C CNN
	1    4500 4000
	1    0    0    -1  
$EndComp
$Comp
L current_transformer:current_transformer T1
U 1 1 60AE9296
P 3000 4300
F 0 "T1" V 3096 4256 50  0000 R CNN
F 1 "ZMCT103C" V 3005 4256 50  0000 R CNN
F 2 "furnace_230V:ZMCT103C" H 3000 4300 50  0001 C CNN
F 3 "" H 3000 4300 50  0001 C CNN
	1    3000 4300
	0    -1   -1   0   
$EndComp
$Comp
L furnace_230V-rescue:TestPoint-Connector TP?
U 1 1 60AEBDD4
P 4500 4500
AR Path="/60AEBDD4" Ref="TP?"  Part="1" 
AR Path="/609CA6A8/60AE5653/60AEBDD4" Ref="TP?"  Part="1" 
AR Path="/60AAC605/60AEBDD4" Ref="TP?"  Part="1" 
AR Path="/60AAE212/60AEBDD4" Ref="TP12"  Part="1" 
F 0 "TP12" H 4558 4618 50  0000 L CNN
F 1 "TestPoint" H 4558 4527 50  0001 L CNN
F 2 "furnace_230V:TP" H 4700 4500 50  0001 C CNN
F 3 "~" H 4700 4500 50  0001 C CNN
	1    4500 4500
	1    0    0    -1  
$EndComp
$Comp
L furnace_230V-rescue:R-Device R?
U 1 1 60AF1C77
P 5650 4000
AR Path="/60AAE0B8/60AF1C77" Ref="R?"  Part="1" 
AR Path="/60AAEC6C/60AF1C77" Ref="R?"  Part="1" 
AR Path="/60AAE4BD/60AF1C77" Ref="R?"  Part="1" 
AR Path="/60AAE212/60AF1C77" Ref="R19"  Part="1" 
F 0 "R19" V 5550 4000 50  0000 C CNN
F 1 "100" V 5750 4000 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 5580 4000 50  0001 C CNN
F 3 "~" H 5650 4000 50  0001 C CNN
	1    5650 4000
	0    1    1    0   
$EndComp
$Comp
L furnace_230V-rescue:BAT54S-Diode D?
U 1 1 60AF1C7D
P 6200 3500
AR Path="/60AAE4BD/60AF1C7D" Ref="D?"  Part="1" 
AR Path="/60AAE212/60AF1C7D" Ref="D7"  Part="1" 
F 0 "D7" V 6246 3588 50  0000 L CNN
F 1 "BAT54S" V 6155 3588 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6275 3625 50  0001 L CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds11005.pdf" H 6080 3500 50  0001 C CNN
	1    6200 3500
	0    1    -1   0   
$EndComp
$Comp
L furnace_230V-rescue:D_TVS-Device D?
U 1 1 60AF1C83
P 6500 4150
AR Path="/60AAE4BD/60AF1C83" Ref="D?"  Part="1" 
AR Path="/60AAE212/60AF1C83" Ref="D8"  Part="1" 
F 0 "D8" V 6550 4000 50  0000 C CNN
F 1 "D_TVS" V 6450 3950 50  0000 C CNN
F 2 "Diode_SMD:D_SMB_Handsoldering" H 6500 4150 50  0001 C CNN
F 3 "~" H 6500 4150 50  0001 C CNN
	1    6500 4150
	0    -1   -1   0   
$EndComp
$Comp
L furnace_230V-rescue:R-Device R?
U 1 1 60AF1C89
P 7150 4000
AR Path="/60AAE0B8/60AF1C89" Ref="R?"  Part="1" 
AR Path="/60AAEC6C/60AF1C89" Ref="R?"  Part="1" 
AR Path="/60AAE4BD/60AF1C89" Ref="R?"  Part="1" 
AR Path="/60AAE212/60AF1C89" Ref="R20"  Part="1" 
F 0 "R20" V 7050 4000 50  0000 C CNN
F 1 "1k" V 7250 4000 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 7080 4000 50  0001 C CNN
F 3 "~" H 7150 4000 50  0001 C CNN
	1    7150 4000
	0    1    1    0   
$EndComp
$Comp
L furnace_230V-rescue:C-Device C?
U 1 1 60AF1C8F
P 7500 4150
AR Path="/60AF1C8F" Ref="C?"  Part="1" 
AR Path="/609CA6A8/609D24C0/60AF1C8F" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60A08E0B/60AF1C8F" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60A0A46E/60AF1C8F" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60A0A500/60AF1C8F" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60A0A922/60AF1C8F" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60AF1C8F" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60AE5653/60AF1C8F" Ref="C?"  Part="1" 
AR Path="/60AAC605/60AF1C8F" Ref="C?"  Part="1" 
AR Path="/60AAE4BD/60AF1C8F" Ref="C?"  Part="1" 
AR Path="/60AAE212/60AF1C8F" Ref="C19"  Part="1" 
F 0 "C19" H 7615 4196 50  0000 L CNN
F 1 "100" H 7615 4105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7538 4000 50  0001 C CNN
F 3 "~" H 7500 4150 50  0001 C CNN
	1    7500 4150
	1    0    0    -1  
$EndComp
$Comp
L furnace_230V-rescue:TestPoint-Connector TP?
U 1 1 60AF1C95
P 8000 4000
AR Path="/60AF1C95" Ref="TP?"  Part="1" 
AR Path="/609CA6A8/60AE5653/60AF1C95" Ref="TP?"  Part="1" 
AR Path="/60AAC605/60AF1C95" Ref="TP?"  Part="1" 
AR Path="/60AAE4BD/60AF1C95" Ref="TP?"  Part="1" 
AR Path="/60AAE212/60AF1C95" Ref="TP13"  Part="1" 
F 0 "TP13" H 8058 4118 50  0000 L CNN
F 1 "TestPoint" H 8058 4027 50  0001 L CNN
F 2 "furnace_230V:TP" H 8200 4000 50  0001 C CNN
F 3 "~" H 8200 4000 50  0001 C CNN
	1    8000 4000
	1    0    0    -1  
$EndComp
$Comp
L furnace_230V-rescue:C-Device C?
U 1 1 60AF1C9B
P 6800 3350
AR Path="/60AF1C9B" Ref="C?"  Part="1" 
AR Path="/609CA6A8/609D24C0/60AF1C9B" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60A08E0B/60AF1C9B" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60A0A46E/60AF1C9B" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60A0A500/60AF1C9B" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60A0A922/60AF1C9B" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60AF1C9B" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60AE5653/60AF1C9B" Ref="C?"  Part="1" 
AR Path="/60AAC605/60AF1C9B" Ref="C?"  Part="1" 
AR Path="/60AAE4BD/60AF1C9B" Ref="C?"  Part="1" 
AR Path="/60AAE212/60AF1C9B" Ref="C18"  Part="1" 
F 0 "C18" H 6915 3396 50  0000 L CNN
F 1 "10u" H 6915 3305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6838 3200 50  0001 C CNN
F 3 "~" H 6800 3350 50  0001 C CNN
	1    6800 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 4000 6000 4000
Connection ~ 6500 4000
Wire Wire Line
	6500 4000 7000 4000
Wire Wire Line
	6000 3500 6000 4000
Connection ~ 6000 4000
Wire Wire Line
	6000 4000 6500 4000
Wire Wire Line
	6200 3200 6200 3000
Wire Wire Line
	6200 3000 6800 3000
Wire Wire Line
	6800 3200 6800 3000
Connection ~ 6800 3000
Wire Wire Line
	6800 3000 8500 3000
Wire Wire Line
	7300 4000 7500 4000
Connection ~ 7500 4000
Wire Wire Line
	7500 4000 8000 4000
Connection ~ 8000 4000
Wire Wire Line
	8000 4000 8500 4000
Text Notes 8450 2350 2    197  ~ 0
Load current measurement circuit
$Comp
L furnace_230V-rescue:C-Device C?
U 1 1 60AF29E2
P 4000 4150
AR Path="/60AF29E2" Ref="C?"  Part="1" 
AR Path="/609CA6A8/609D24C0/60AF29E2" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60A08E0B/60AF29E2" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60A0A46E/60AF29E2" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60A0A500/60AF29E2" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60A0A922/60AF29E2" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60AF29E2" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60AE5653/60AF29E2" Ref="C?"  Part="1" 
AR Path="/60AAC605/60AF29E2" Ref="C?"  Part="1" 
AR Path="/60AAE4BD/60AF29E2" Ref="C?"  Part="1" 
AR Path="/60AAE212/60AF29E2" Ref="C17"  Part="1" 
F 0 "C17" H 4115 4196 50  0000 L CNN
F 1 "100" H 4115 4105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4038 4000 50  0001 C CNN
F 3 "~" H 4000 4150 50  0001 C CNN
	1    4000 4150
	1    0    0    -1  
$EndComp
$Comp
L furnace_230V-rescue:R-Device R?
U 1 1 60AF645E
P 3500 4150
AR Path="/60AAE0B8/60AF645E" Ref="R?"  Part="1" 
AR Path="/60AAEC6C/60AF645E" Ref="R?"  Part="1" 
AR Path="/60AAE212/60AF645E" Ref="R16"  Part="1" 
F 0 "R16" H 3600 4250 50  0000 C CNN
F 1 "160 1%" H 3700 4150 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 3430 4150 50  0001 C CNN
F 3 "~" H 3500 4150 50  0001 C CNN
	1    3500 4150
	1    0    0    -1  
$EndComp
Text HLabel 8500 4000 2    50   Output ~ 0
CURR
Text HLabel 8500 3000 2    50   Input ~ 0
+3V3
Text HLabel 8500 5000 2    50   Input ~ 0
GND
Wire Wire Line
	3000 4000 3500 4000
Connection ~ 3500 4000
Wire Wire Line
	3500 4000 4000 4000
Connection ~ 4000 4000
Wire Wire Line
	4000 4000 4500 4000
Wire Wire Line
	3000 4500 3500 4500
Wire Wire Line
	4000 4300 4000 4500
Connection ~ 4000 4500
Wire Wire Line
	4000 4500 4500 4500
Wire Wire Line
	3500 4300 3500 4500
Connection ~ 3500 4500
Wire Wire Line
	3500 4500 4000 4500
$Comp
L furnace_230V-rescue:R-Device R?
U 1 1 60AFBCF4
P 5000 3750
AR Path="/60AAE0B8/60AFBCF4" Ref="R?"  Part="1" 
AR Path="/60AAEC6C/60AFBCF4" Ref="R?"  Part="1" 
AR Path="/60AAE212/60AFBCF4" Ref="R17"  Part="1" 
F 0 "R17" H 5100 3850 50  0000 C CNN
F 1 "10k 1%" H 5200 3750 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4930 3750 50  0001 C CNN
F 3 "~" H 5000 3750 50  0001 C CNN
	1    5000 3750
	1    0    0    -1  
$EndComp
$Comp
L furnace_230V-rescue:R-Device R?
U 1 1 60AFC31E
P 5000 4750
AR Path="/60AAE0B8/60AFC31E" Ref="R?"  Part="1" 
AR Path="/60AAEC6C/60AFC31E" Ref="R?"  Part="1" 
AR Path="/60AAE212/60AFC31E" Ref="R18"  Part="1" 
F 0 "R18" H 5100 4850 50  0000 C CNN
F 1 "10k 1%" H 5200 4750 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4930 4750 50  0001 C CNN
F 3 "~" H 5000 4750 50  0001 C CNN
	1    5000 4750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 4000 5500 4000
Connection ~ 4500 4000
Wire Wire Line
	5000 4900 5000 5000
Wire Wire Line
	5000 5000 6200 5000
Wire Wire Line
	5000 3600 5000 3000
Wire Wire Line
	5000 3000 6200 3000
Connection ~ 6200 3000
Wire Wire Line
	6200 3800 6200 5000
Connection ~ 6200 5000
Wire Wire Line
	6200 5000 6500 5000
Wire Wire Line
	6500 4300 6500 5000
Connection ~ 6500 5000
Wire Wire Line
	6500 5000 6800 5000
Wire Wire Line
	6800 3500 6800 5000
Connection ~ 6800 5000
Wire Wire Line
	6800 5000 7500 5000
Wire Wire Line
	5000 3900 5000 4500
Wire Wire Line
	7500 4300 7500 5000
Connection ~ 7500 5000
Wire Wire Line
	7500 5000 8500 5000
Wire Wire Line
	4500 4500 5000 4500
Connection ~ 4500 4500
Connection ~ 5000 4500
Wire Wire Line
	5000 4500 5000 4600
$EndSCHEMATC
