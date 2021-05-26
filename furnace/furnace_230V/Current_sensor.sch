EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 9 9
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
L Connector:TestPoint TP?
U 1 1 60ACFCB9
P 5000 4000
AR Path="/60ACFCB9" Ref="TP?"  Part="1" 
AR Path="/609CA6A8/60AE5653/60ACFCB9" Ref="TP?"  Part="1" 
AR Path="/60AAC605/60ACFCB9" Ref="TP?"  Part="1" 
AR Path="/60AAE212/60ACFCB9" Ref="TP?"  Part="1" 
F 0 "TP?" H 5058 4118 50  0000 L CNN
F 1 "TestPoint" H 5058 4027 50  0001 L CNN
F 2 "" H 5200 4000 50  0001 C CNN
F 3 "~" H 5200 4000 50  0001 C CNN
	1    5000 4000
	1    0    0    -1  
$EndComp
$Comp
L current_transformer:current_transformer T?
U 1 1 60AE9296
P 3500 4300
F 0 "T?" V 3596 4256 50  0000 R CNN
F 1 "ZMCT103C" V 3505 4256 50  0000 R CNN
F 2 "" H 3500 4300 50  0001 C CNN
F 3 "" H 3500 4300 50  0001 C CNN
	1    3500 4300
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint TP?
U 1 1 60AEBDD4
P 5000 4500
AR Path="/60AEBDD4" Ref="TP?"  Part="1" 
AR Path="/609CA6A8/60AE5653/60AEBDD4" Ref="TP?"  Part="1" 
AR Path="/60AAC605/60AEBDD4" Ref="TP?"  Part="1" 
AR Path="/60AAE212/60AEBDD4" Ref="TP?"  Part="1" 
F 0 "TP?" H 5058 4618 50  0000 L CNN
F 1 "TestPoint" H 5058 4527 50  0001 L CNN
F 2 "" H 5200 4500 50  0001 C CNN
F 3 "~" H 5200 4500 50  0001 C CNN
	1    5000 4500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 60AF1C77
P 5650 4000
AR Path="/60AAE0B8/60AF1C77" Ref="R?"  Part="1" 
AR Path="/60AAEC6C/60AF1C77" Ref="R?"  Part="1" 
AR Path="/60AAE4BD/60AF1C77" Ref="R?"  Part="1" 
AR Path="/60AAE212/60AF1C77" Ref="R?"  Part="1" 
F 0 "R?" V 5550 4000 50  0000 C CNN
F 1 "100" V 5750 4000 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 5580 4000 50  0001 C CNN
F 3 "~" H 5650 4000 50  0001 C CNN
	1    5650 4000
	0    1    1    0   
$EndComp
$Comp
L Diode:BAT54S D?
U 1 1 60AF1C7D
P 6200 3500
AR Path="/60AAE4BD/60AF1C7D" Ref="D?"  Part="1" 
AR Path="/60AAE212/60AF1C7D" Ref="D?"  Part="1" 
F 0 "D?" V 6246 3588 50  0000 L CNN
F 1 "BAT54S" V 6155 3588 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6275 3625 50  0001 L CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds11005.pdf" H 6080 3500 50  0001 C CNN
	1    6200 3500
	0    1    -1   0   
$EndComp
$Comp
L Device:D_TVS D?
U 1 1 60AF1C83
P 6500 4150
AR Path="/60AAE4BD/60AF1C83" Ref="D?"  Part="1" 
AR Path="/60AAE212/60AF1C83" Ref="D?"  Part="1" 
F 0 "D?" V 6550 4000 50  0000 C CNN
F 1 "D_TVS" V 6450 3950 50  0000 C CNN
F 2 "" H 6500 4150 50  0001 C CNN
F 3 "~" H 6500 4150 50  0001 C CNN
	1    6500 4150
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 60AF1C89
P 7150 4000
AR Path="/60AAE0B8/60AF1C89" Ref="R?"  Part="1" 
AR Path="/60AAEC6C/60AF1C89" Ref="R?"  Part="1" 
AR Path="/60AAE4BD/60AF1C89" Ref="R?"  Part="1" 
AR Path="/60AAE212/60AF1C89" Ref="R?"  Part="1" 
F 0 "R?" V 7050 4000 50  0000 C CNN
F 1 "1k" V 7250 4000 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 7080 4000 50  0001 C CNN
F 3 "~" H 7150 4000 50  0001 C CNN
	1    7150 4000
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
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
AR Path="/60AAE212/60AF1C8F" Ref="C?"  Part="1" 
F 0 "C?" H 7615 4196 50  0000 L CNN
F 1 "100" H 7615 4105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 7538 4000 50  0001 C CNN
F 3 "~" H 7500 4150 50  0001 C CNN
	1    7500 4150
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP?
U 1 1 60AF1C95
P 8000 4000
AR Path="/60AF1C95" Ref="TP?"  Part="1" 
AR Path="/609CA6A8/60AE5653/60AF1C95" Ref="TP?"  Part="1" 
AR Path="/60AAC605/60AF1C95" Ref="TP?"  Part="1" 
AR Path="/60AAE4BD/60AF1C95" Ref="TP?"  Part="1" 
AR Path="/60AAE212/60AF1C95" Ref="TP?"  Part="1" 
F 0 "TP?" H 8058 4118 50  0000 L CNN
F 1 "TestPoint" H 8058 4027 50  0001 L CNN
F 2 "" H 8200 4000 50  0001 C CNN
F 3 "~" H 8200 4000 50  0001 C CNN
	1    8000 4000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
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
AR Path="/60AAE212/60AF1C9B" Ref="C?"  Part="1" 
F 0 "C?" H 6915 3396 50  0000 L CNN
F 1 "10u" H 6915 3305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 6838 3200 50  0001 C CNN
F 3 "~" H 6800 3350 50  0001 C CNN
	1    6800 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 4000 5500 4000
Wire Wire Line
	7500 4500 7500 5000
Wire Wire Line
	7500 5000 8500 5000
Wire Wire Line
	5000 4500 6200 4500
Wire Wire Line
	5800 4000 6000 4000
Connection ~ 6500 4000
Wire Wire Line
	6500 4000 7000 4000
Wire Wire Line
	6500 4300 6500 4500
Connection ~ 6500 4500
Wire Wire Line
	6500 4500 6800 4500
Wire Wire Line
	6000 3500 6000 4000
Connection ~ 6000 4000
Wire Wire Line
	6000 4000 6500 4000
Wire Wire Line
	6200 3800 6200 4500
Connection ~ 6200 4500
Wire Wire Line
	6200 4500 6500 4500
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
	6800 3500 6800 4500
Connection ~ 6800 4500
Wire Wire Line
	6800 4500 7500 4500
Wire Wire Line
	7300 4000 7500 4000
Connection ~ 7500 4000
Wire Wire Line
	7500 4000 8000 4000
Connection ~ 8000 4000
Wire Wire Line
	8000 4000 8500 4000
Wire Wire Line
	7500 4300 7500 4500
Connection ~ 7500 4500
Text Notes 8450 2350 2    197  ~ 0
Load current measurement circuit
$Comp
L Device:C C?
U 1 1 60AF29E2
P 4500 4150
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
AR Path="/60AAE212/60AF29E2" Ref="C?"  Part="1" 
F 0 "C?" H 4615 4196 50  0000 L CNN
F 1 "100" H 4615 4105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 4538 4000 50  0001 C CNN
F 3 "~" H 4500 4150 50  0001 C CNN
	1    4500 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 60AF645E
P 4000 4150
AR Path="/60AAE0B8/60AF645E" Ref="R?"  Part="1" 
AR Path="/60AAEC6C/60AF645E" Ref="R?"  Part="1" 
AR Path="/60AAE212/60AF645E" Ref="R?"  Part="1" 
F 0 "R?" H 4100 4250 50  0000 C CNN
F 1 "160 1%" H 4200 4150 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 3930 4150 50  0001 C CNN
F 3 "~" H 4000 4150 50  0001 C CNN
	1    4000 4150
	1    0    0    -1  
$EndComp
Text HLabel 8500 4000 2    50   Output ~ 0
CURR
Text HLabel 8500 3000 2    50   Input ~ 0
+3V3
Text HLabel 8500 5000 2    50   Input ~ 0
GND
Wire Wire Line
	3500 4000 4000 4000
Connection ~ 5000 4000
Connection ~ 4000 4000
Wire Wire Line
	4000 4000 4500 4000
Connection ~ 4500 4000
Wire Wire Line
	4500 4000 5000 4000
Wire Wire Line
	3500 4500 4000 4500
Connection ~ 5000 4500
Wire Wire Line
	4500 4300 4500 4500
Connection ~ 4500 4500
Wire Wire Line
	4500 4500 5000 4500
Wire Wire Line
	4000 4300 4000 4500
Connection ~ 4000 4500
Wire Wire Line
	4000 4500 4500 4500
$EndSCHEMATC
