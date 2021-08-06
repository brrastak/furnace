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
F 2 "" H 6200 4075 50  0001 L CIN
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
P 5000 3650
F 0 "R7" H 5070 3696 50  0000 L CNN
F 1 "470 0,5W" H 5070 3605 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P15.24mm_Horizontal" V 4930 3650 50  0001 C CNN
F 3 "~" H 5000 3650 50  0001 C CNN
	1    5000 3650
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
L furnace_230V-rescue:R-Device R8
U 1 1 60ABF950
P 7000 3800
F 0 "R8" H 7070 3846 50  0000 L CNN
F 1 "33 1W" H 7070 3755 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0414_L11.9mm_D4.5mm_P20.32mm_Horizontal" V 6930 3800 50  0001 C CNN
F 3 "~" H 7000 3800 50  0001 C CNN
	1    7000 3800
	1    0    0    -1  
$EndComp
$Comp
L furnace_230V-rescue:C-Device C13
U 1 1 60ABFAB6
P 7000 4200
F 0 "C13" H 7115 4246 50  0000 L CNN
F 1 "0,01 630V" H 7115 4155 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D10.5mm_W5.0mm_P10.00mm" H 7038 4050 50  0001 C CNN
F 3 "~" H 7000 4200 50  0001 C CNN
	1    7000 4200
	1    0    0    -1  
$EndComp
$Comp
L furnace_230V-rescue:LED-Device D3
U 1 1 60AD0B5E
P 3850 4000
F 0 "D3" H 3843 3745 50  0000 C CNN
F 1 "LED" H 3843 3836 50  0000 C CNN
F 2 "LED_SMD:LED_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 3850 4000 50  0001 C CNN
F 3 "~" H 3850 4000 50  0001 C CNN
	1    3850 4000
	-1   0    0    1   
$EndComp
Text Notes 7800 2450 2    197  ~ 0
Isolated TRIAC control circuit
$Comp
L furnace_230V-rescue:Fuse-Device F2
U 1 1 60B1BB7E
P 8250 4500
F 0 "F2" V 8150 4500 50  0000 C CNN
F 1 "10A" V 8350 4500 50  0000 C CNN
F 2 "Fuse:Fuseholder_Cylinder-5x20mm_Stelvio-Kontek_PTF78_Horizontal_Open" V 8180 4500 50  0001 C CNN
F 3 "~" H 8250 4500 50  0001 C CNN
	1    8250 4500
	0    1    1    0   
$EndComp
Text HLabel 9000 3500 2    50   Input ~ 0
AC
Text HLabel 9000 4500 2    50   Output ~ 0
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
	5000 4000 5000 3800
Wire Wire Line
	5000 4200 5000 4250
Wire Wire Line
	5000 4250 5850 4250
Wire Wire Line
	5000 3500 6000 3500
Wire Wire Line
	6000 4000 6000 3500
Connection ~ 6000 3500
Wire Wire Line
	6000 4300 6000 4500
Wire Wire Line
	8400 4500 9000 4500
Wire Wire Line
	6000 4500 7000 4500
Wire Wire Line
	6000 3500 7000 3500
Wire Wire Line
	7000 3650 7000 3500
Connection ~ 7000 3500
Wire Wire Line
	7000 3500 7750 3500
Wire Wire Line
	7000 3950 7000 4050
Wire Wire Line
	7000 4350 7000 4500
Connection ~ 7000 4500
$Comp
L Device:Varistor RV1
U 1 1 6105DA3F
P 7750 4000
F 0 "RV1" H 7853 4046 50  0000 L CNN
F 1 "471KD20" H 7853 3955 50  0000 L CNN
F 2 "Varistor:RV_Disc_D21.5mm_W6.1mm_P7.5mm" V 7680 4000 50  0001 C CNN
F 3 "~" H 7750 4000 50  0001 C CNN
	1    7750 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 4150 7750 4500
Wire Wire Line
	7000 4500 7750 4500
Connection ~ 7750 4500
Wire Wire Line
	7750 4500 8100 4500
Wire Wire Line
	7750 3850 7750 3500
Connection ~ 7750 3500
Wire Wire Line
	7750 3500 9000 3500
$EndSCHEMATC
