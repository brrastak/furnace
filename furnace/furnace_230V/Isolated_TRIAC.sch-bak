EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 9
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
L furnace_230V-rescue:BTA16-600B-Triac_Thyristor Q1
U 1 1 60AB340A
P 6000 4150
F 0 "Q1" H 6129 4196 50  0000 L CNN
F 1 "BTA16-600B" H 6129 4105 50  0000 L CNN
F 2 "furnace_230V:TRIAC" H 6200 4075 50  0001 L CIN
F 3 "https://www.st.com/resource/en/datasheet/bta16.pdf" H 6000 4150 50  0001 L CNN
	1    6000 4150
	1    0    0    -1  
$EndComp
$Comp
L furnace_230V-rescue:MOC3052M-Relay_SolidState U3
U 1 1 60AB3410
P 4700 4100
F 0 "U3" H 4700 4425 50  0000 C CNN
F 1 "MOC3052M" H 4700 4334 50  0000 C CNN
F 2 "Package_DIP:DIP-6_W7.62mm_LongPads" H 4500 3900 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/MOC3052M-D.PDF" H 4700 4100 50  0001 L CNN
	1    4700 4100
	1    0    0    -1  
$EndComp
$Comp
L furnace_230V-rescue:R-Device R7
U 1 1 60AB3416
P 5250 3750
F 0 "R7" H 5320 3796 50  0000 L CNN
F 1 "470 0,5W" H 5320 3705 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P12.70mm_Horizontal" V 5180 3750 50  0001 C CNN
F 3 "~" H 5250 3750 50  0001 C CNN
	1    5250 3750
	1    0    0    -1  
$EndComp
$Comp
L furnace_230V-rescue:R-Device R6
U 1 1 60B5C7C1
P 3350 4000
F 0 "R6" V 3143 4000 50  0000 C CNN
F 1 "150" V 3234 4000 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 3280 4000 50  0001 C CNN
F 3 "~" H 3350 4000 50  0001 C CNN
	1    3350 4000
	0    1    1    0   
$EndComp
$Comp
L furnace_230V-rescue:LED-Device D3
U 1 1 60AD0B5E
P 3850 4000
F 0 "D3" H 3843 3745 50  0000 C CNN
F 1 "LED" H 3843 3836 50  0000 C CNN
F 2 "LED_SMD:LED_1206_3216Metric_ReverseMount_Hole1.8x2.4mm" H 3850 4000 50  0001 C CNN
F 3 "~" H 3850 4000 50  0001 C CNN
	1    3850 4000
	-1   0    0    1   
$EndComp
Text Notes 7800 2450 2    197  ~ 0
Isolated TRIAC control circuit
Text HLabel 7500 3500 2    50   Input ~ 0
AC
Text HLabel 7500 4500 2    50   Output ~ 0
LOAD
Text HLabel 2500 4000 0    50   Input ~ 0
+5V
Text HLabel 2500 4500 0    50   Input ~ 0
~EN
Wire Wire Line
	2500 4000 3200 4000
Wire Wire Line
	3500 4000 3700 4000
Wire Wire Line
	4000 4000 4400 4000
Wire Wire Line
	4400 4200 4400 4500
Wire Wire Line
	4400 4500 2500 4500
Wire Wire Line
	5000 4200 5000 4250
Wire Wire Line
	5000 4250 5850 4250
Wire Wire Line
	6000 4000 6000 3500
Wire Wire Line
	6000 4300 6000 4500
$Comp
L Mechanical:Heatsink HS1
U 1 1 610DEB43
P 6200 3950
F 0 "HS1" H 6341 4071 50  0000 L CNN
F 1 "HS 304-50" H 6341 3980 50  0000 L CNN
F 2 "furnace_230V:HS_304-50" H 6212 3950 50  0001 C CNN
F 3 "~" H 6212 3950 50  0001 C CNN
	1    6200 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 3600 5250 3500
Wire Wire Line
	5250 3500 6000 3500
Wire Wire Line
	5250 3900 5250 4000
Wire Wire Line
	5250 4000 5000 4000
Wire Wire Line
	6000 4500 7500 4500
Wire Wire Line
	7500 3500 6000 3500
Connection ~ 6000 3500
$EndSCHEMATC
