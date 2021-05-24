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
L furnace_230V-rescue:BTA16-600B-Triac_Thyristor Q?
U 1 1 60AB340A
P 6500 4150
F 0 "Q?" H 6629 4196 50  0000 L CNN
F 1 "BTA16-600B" H 6629 4105 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 6700 4075 50  0001 L CIN
F 3 "https://www.st.com/resource/en/datasheet/bta16.pdf" H 6500 4150 50  0001 L CNN
	1    6500 4150
	1    0    0    -1  
$EndComp
$Comp
L Relay_SolidState:MOC3052M U?
U 1 1 60AB3410
P 5200 4100
F 0 "U?" H 5200 4425 50  0000 C CNN
F 1 "MOC3052M" H 5200 4334 50  0000 C CNN
F 2 "" H 5000 3900 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/MOC3052M-D.PDF" H 5200 4100 50  0001 L CNN
	1    5200 4100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 60AB3416
P 5500 3650
F 0 "R?" H 5570 3696 50  0000 L CNN
F 1 "470 0,5W" H 5570 3605 50  0000 L CNN
F 2 "" V 5430 3650 50  0001 C CNN
F 3 "~" H 5500 3650 50  0001 C CNN
	1    5500 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 60B5C7C1
P 3850 4000
F 0 "R?" V 3643 4000 50  0000 C CNN
F 1 "150" V 3734 4000 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 3780 4000 50  0001 C CNN
F 3 "~" H 3850 4000 50  0001 C CNN
	1    3850 4000
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 60ABF950
P 7500 3800
F 0 "R?" H 7570 3846 50  0000 L CNN
F 1 "33 0,5W" H 7570 3755 50  0000 L CNN
F 2 "" V 7430 3800 50  0001 C CNN
F 3 "~" H 7500 3800 50  0001 C CNN
	1    7500 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 60ABFAB6
P 7500 4200
F 0 "C?" H 7615 4246 50  0000 L CNN
F 1 "0,01" H 7615 4155 50  0000 L CNN
F 2 "" H 7538 4050 50  0001 C CNN
F 3 "~" H 7500 4200 50  0001 C CNN
	1    7500 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 60AD0B5E
P 4350 4000
F 0 "D?" H 4343 3745 50  0000 C CNN
F 1 "LED" H 4343 3836 50  0000 C CNN
F 2 "" H 4350 4000 50  0001 C CNN
F 3 "~" H 4350 4000 50  0001 C CNN
	1    4350 4000
	-1   0    0    1   
$EndComp
Text Notes 7800 2450 2    197  ~ 0
Isolated TRIAC control circuit
$Comp
L Device:Fuse F?
U 1 1 60B1BB7E
P 8350 4500
F 0 "F?" V 8250 4500 50  0000 C CNN
F 1 "10A" V 8450 4500 50  0000 C CNN
F 2 "" V 8280 4500 50  0001 C CNN
F 3 "~" H 8350 4500 50  0001 C CNN
	1    8350 4500
	0    1    1    0   
$EndComp
Text HLabel 9000 3500 2    50   Input ~ 0
AC
Text HLabel 9000 4500 2    50   Output ~ 0
LOAD
Text HLabel 3000 4000 0    50   Input ~ 0
+5V
Text HLabel 3000 4500 0    50   Input ~ 0
~EN
Wire Wire Line
	3000 4000 3700 4000
Wire Wire Line
	4000 4000 4200 4000
Wire Wire Line
	4500 4000 4900 4000
Wire Wire Line
	4900 4200 4900 4500
Wire Wire Line
	4900 4500 3000 4500
Wire Wire Line
	5500 4000 5500 3800
Wire Wire Line
	5500 4200 5500 4250
Wire Wire Line
	5500 4250 6350 4250
Wire Wire Line
	5500 3500 6500 3500
Wire Wire Line
	6500 4000 6500 3500
Connection ~ 6500 3500
Wire Wire Line
	6500 4300 6500 4500
Wire Wire Line
	8500 4500 9000 4500
Wire Wire Line
	6500 4500 7500 4500
Wire Wire Line
	6500 3500 7500 3500
Wire Wire Line
	7500 3650 7500 3500
Connection ~ 7500 3500
Wire Wire Line
	7500 3500 9000 3500
Wire Wire Line
	7500 3950 7500 4050
Wire Wire Line
	7500 4350 7500 4500
Connection ~ 7500 4500
Wire Wire Line
	7500 4500 8200 4500
$EndSCHEMATC
