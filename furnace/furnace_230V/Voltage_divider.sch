EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 7 9
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
L furnace_230V-rescue:R-Device R?
U 1 1 60AC3251
P 4500 3650
AR Path="/60AAE0B8/60AC3251" Ref="R?"  Part="1" 
AR Path="/60AAE4BD/60AC3251" Ref="R9"  Part="1" 
F 0 "R9" H 4570 3696 50  0000 L CNN
F 1 "180k 0,25W 1%" H 4570 3605 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4430 3650 50  0001 C CNN
F 3 "~" H 4500 3650 50  0001 C CNN
	1    4500 3650
	1    0    0    -1  
$EndComp
$Comp
L furnace_230V-rescue:R-Device R?
U 1 1 60AC39AB
P 6150 4000
AR Path="/60AAE0B8/60AC39AB" Ref="R?"  Part="1" 
AR Path="/60AAEC6C/60AC39AB" Ref="R?"  Part="1" 
AR Path="/60AAE4BD/60AC39AB" Ref="R12"  Part="1" 
F 0 "R12" V 6050 4000 50  0000 C CNN
F 1 "100" V 6250 4000 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 6080 4000 50  0001 C CNN
F 3 "~" H 6150 4000 50  0001 C CNN
	1    6150 4000
	0    1    1    0   
$EndComp
$Comp
L furnace_230V-rescue:BAT54S-Diode D5
U 1 1 60AC3BC9
P 6700 3500
F 0 "D5" V 6746 3588 50  0000 L CNN
F 1 "BAT54S" V 6655 3588 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6775 3625 50  0001 L CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds11005.pdf" H 6580 3500 50  0001 C CNN
	1    6700 3500
	0    1    -1   0   
$EndComp
$Comp
L furnace_230V-rescue:D_TVS-Device D6
U 1 1 60AC5492
P 7000 4150
F 0 "D6" V 7050 4000 50  0000 C CNN
F 1 "D_TVS" V 6950 3950 50  0000 C CNN
F 2 "Diode_SMD:D_SMB_Handsoldering" H 7000 4150 50  0001 C CNN
F 3 "~" H 7000 4150 50  0001 C CNN
	1    7000 4150
	0    -1   -1   0   
$EndComp
$Comp
L furnace_230V-rescue:R-Device R?
U 1 1 60AC5A68
P 7650 4000
AR Path="/60AAE0B8/60AC5A68" Ref="R?"  Part="1" 
AR Path="/60AAEC6C/60AC5A68" Ref="R?"  Part="1" 
AR Path="/60AAE4BD/60AC5A68" Ref="R13"  Part="1" 
F 0 "R13" V 7550 4000 50  0000 C CNN
F 1 "1k" V 7750 4000 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 7580 4000 50  0001 C CNN
F 3 "~" H 7650 4000 50  0001 C CNN
	1    7650 4000
	0    1    1    0   
$EndComp
$Comp
L furnace_230V-rescue:C-Device C?
U 1 1 60AC6425
P 8000 4150
AR Path="/60AC6425" Ref="C?"  Part="1" 
AR Path="/609CA6A8/609D24C0/60AC6425" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60A08E0B/60AC6425" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60A0A46E/60AC6425" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60A0A500/60AC6425" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60A0A922/60AC6425" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60AC6425" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60AE5653/60AC6425" Ref="C?"  Part="1" 
AR Path="/60AAC605/60AC6425" Ref="C?"  Part="1" 
AR Path="/60AAE4BD/60AC6425" Ref="C16"  Part="1" 
F 0 "C16" H 8115 4196 50  0000 L CNN
F 1 "100" H 8115 4105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8038 4000 50  0001 C CNN
F 3 "~" H 8000 4150 50  0001 C CNN
	1    8000 4150
	1    0    0    -1  
$EndComp
$Comp
L furnace_230V-rescue:TestPoint-Connector TP?
U 1 1 60ACD704
P 5500 4000
AR Path="/60ACD704" Ref="TP?"  Part="1" 
AR Path="/609CA6A8/60AE5653/60ACD704" Ref="TP?"  Part="1" 
AR Path="/60AAC605/60ACD704" Ref="TP?"  Part="1" 
AR Path="/60AAE4BD/60ACD704" Ref="TP7"  Part="1" 
F 0 "TP7" H 5558 4118 50  0000 L CNN
F 1 "TestPoint" H 5558 4027 50  0001 L CNN
F 2 "furnace_230V:TP" H 5700 4000 50  0001 C CNN
F 3 "~" H 5700 4000 50  0001 C CNN
	1    5500 4000
	1    0    0    -1  
$EndComp
$Comp
L furnace_230V-rescue:TestPoint-Connector TP?
U 1 1 60ACD8BB
P 5500 4500
AR Path="/60ACD8BB" Ref="TP?"  Part="1" 
AR Path="/609CA6A8/60AE5653/60ACD8BB" Ref="TP?"  Part="1" 
AR Path="/60AAC605/60ACD8BB" Ref="TP?"  Part="1" 
AR Path="/60AAE4BD/60ACD8BB" Ref="TP8"  Part="1" 
F 0 "TP8" H 5558 4618 50  0000 L CNN
F 1 "TestPoint" H 5558 4527 50  0001 L CNN
F 2 "furnace_230V:TP" H 5700 4500 50  0001 C CNN
F 3 "~" H 5700 4500 50  0001 C CNN
	1    5500 4500
	1    0    0    -1  
$EndComp
$Comp
L furnace_230V-rescue:TestPoint-Connector TP?
U 1 1 60ACDB72
P 8500 4000
AR Path="/60ACDB72" Ref="TP?"  Part="1" 
AR Path="/609CA6A8/60AE5653/60ACDB72" Ref="TP?"  Part="1" 
AR Path="/60AAC605/60ACDB72" Ref="TP?"  Part="1" 
AR Path="/60AAE4BD/60ACDB72" Ref="TP9"  Part="1" 
F 0 "TP9" H 8558 4118 50  0000 L CNN
F 1 "TestPoint" H 8558 4027 50  0001 L CNN
F 2 "furnace_230V:TP" H 8700 4000 50  0001 C CNN
F 3 "~" H 8700 4000 50  0001 C CNN
	1    8500 4000
	1    0    0    -1  
$EndComp
Text Notes 8850 2200 2    197  ~ 0
Input 230V voltage measurement circuit
$Comp
L furnace_230V-rescue:C-Device C?
U 1 1 60B35196
P 5000 4150
AR Path="/60B35196" Ref="C?"  Part="1" 
AR Path="/609CA6A8/609D24C0/60B35196" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60A08E0B/60B35196" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60A0A46E/60B35196" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60A0A500/60B35196" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60A0A922/60B35196" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60B35196" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60AE5653/60B35196" Ref="C?"  Part="1" 
AR Path="/60AAC605/60B35196" Ref="C?"  Part="1" 
AR Path="/60AAE4BD/60B35196" Ref="C14"  Part="1" 
F 0 "C14" H 5115 4196 50  0000 L CNN
F 1 "100" H 5115 4105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5038 4000 50  0001 C CNN
F 3 "~" H 5000 4150 50  0001 C CNN
	1    5000 4150
	1    0    0    -1  
$EndComp
$Comp
L furnace_230V-rescue:R-Device R?
U 1 1 60B367EA
P 4500 4150
AR Path="/60B367EA" Ref="R?"  Part="1" 
AR Path="/609CA6A8/60B367EA" Ref="R?"  Part="1" 
AR Path="/609CA6A8/60AE5653/60B367EA" Ref="R?"  Part="1" 
AR Path="/60AAC605/60B367EA" Ref="R?"  Part="1" 
AR Path="/60AAE178/60B367EA" Ref="R?"  Part="1" 
AR Path="/60AAE4BD/60B367EA" Ref="R10"  Part="1" 
F 0 "R10" H 4570 4196 50  0000 L CNN
F 1 "3,3k 1%" H 4570 4105 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4430 4150 50  0001 C CNN
F 3 "~" H 4500 4150 50  0001 C CNN
	1    4500 4150
	1    0    0    -1  
$EndComp
$Comp
L furnace_230V-rescue:R-Device R?
U 1 1 60B376FC
P 4500 4650
AR Path="/60AAE0B8/60B376FC" Ref="R?"  Part="1" 
AR Path="/60AAE4BD/60B376FC" Ref="R11"  Part="1" 
F 0 "R11" H 4570 4696 50  0000 L CNN
F 1 "180k 0,25W 1%" H 4570 4605 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4430 4650 50  0001 C CNN
F 3 "~" H 4500 4650 50  0001 C CNN
	1    4500 4650
	1    0    0    -1  
$EndComp
$Comp
L furnace_230V-rescue:C-Device C?
U 1 1 60B3D4CA
P 7300 3350
AR Path="/60B3D4CA" Ref="C?"  Part="1" 
AR Path="/609CA6A8/609D24C0/60B3D4CA" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60A08E0B/60B3D4CA" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60A0A46E/60B3D4CA" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60A0A500/60B3D4CA" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60A0A922/60B3D4CA" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60B3D4CA" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60AE5653/60B3D4CA" Ref="C?"  Part="1" 
AR Path="/60AAC605/60B3D4CA" Ref="C?"  Part="1" 
AR Path="/60AAE4BD/60B3D4CA" Ref="C15"  Part="1" 
F 0 "C15" H 7415 3396 50  0000 L CNN
F 1 "10u" H 7415 3305 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7338 3200 50  0001 C CNN
F 3 "~" H 7300 3350 50  0001 C CNN
	1    7300 3350
	1    0    0    -1  
$EndComp
$Comp
L furnace_230V-rescue:D-Device D4
U 1 1 60B3EF31
P 3850 3500
F 0 "D4" H 3850 3400 50  0000 C CNN
F 1 "ES1J" H 3850 3600 50  0000 C CNN
F 2 "Diode_SMD:D_SMA_Handsoldering" H 3850 3500 50  0001 C CNN
F 3 "~" H 3850 3500 50  0001 C CNN
	1    3850 3500
	-1   0    0    1   
$EndComp
Text HLabel 3000 3500 0    50   Input ~ 0
AC1
Text HLabel 3000 5000 0    50   Input ~ 0
AC2
Text HLabel 9000 4000 2    50   Output ~ 0
VOLT
Text HLabel 9000 3000 2    50   Input ~ 0
+3V3
Text HLabel 9000 5000 2    50   Input ~ 0
GND
Wire Wire Line
	3000 3500 3700 3500
Wire Wire Line
	4000 3500 4500 3500
Wire Wire Line
	4500 3800 4500 4000
Wire Wire Line
	4500 4300 4500 4500
Wire Wire Line
	4500 4800 4500 5000
Wire Wire Line
	4500 5000 3000 5000
Wire Wire Line
	4500 4000 5000 4000
Connection ~ 4500 4000
Connection ~ 5000 4000
Wire Wire Line
	5000 4000 5500 4000
Connection ~ 5500 4000
Wire Wire Line
	5500 4000 6000 4000
Wire Wire Line
	4500 4500 5000 4500
Wire Wire Line
	8000 4500 8000 5000
Wire Wire Line
	8000 5000 9000 5000
Connection ~ 4500 4500
Connection ~ 5500 4500
Wire Wire Line
	5500 4500 6700 4500
Wire Wire Line
	5000 4300 5000 4500
Connection ~ 5000 4500
Wire Wire Line
	5000 4500 5500 4500
Wire Wire Line
	6300 4000 6500 4000
Connection ~ 7000 4000
Wire Wire Line
	7000 4000 7500 4000
Wire Wire Line
	7000 4300 7000 4500
Connection ~ 7000 4500
Wire Wire Line
	7000 4500 7300 4500
Wire Wire Line
	6500 3500 6500 4000
Connection ~ 6500 4000
Wire Wire Line
	6500 4000 7000 4000
Wire Wire Line
	6700 3800 6700 4500
Connection ~ 6700 4500
Wire Wire Line
	6700 4500 7000 4500
Wire Wire Line
	6700 3200 6700 3000
Wire Wire Line
	6700 3000 7300 3000
Wire Wire Line
	7300 3200 7300 3000
Connection ~ 7300 3000
Wire Wire Line
	7300 3000 9000 3000
Wire Wire Line
	7300 3500 7300 4500
Connection ~ 7300 4500
Wire Wire Line
	7300 4500 8000 4500
Wire Wire Line
	7800 4000 8000 4000
Connection ~ 8000 4000
Wire Wire Line
	8000 4000 8500 4000
Connection ~ 8500 4000
Wire Wire Line
	8500 4000 9000 4000
Wire Wire Line
	8000 4300 8000 4500
Connection ~ 8000 4500
$EndSCHEMATC
