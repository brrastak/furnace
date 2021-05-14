EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 13
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
L Device:R R?
U 1 1 609A6451
P 6150 2600
F 0 "R?" H 6220 2646 50  0000 L CNN
F 1 "0603" H 6220 2555 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 6080 2600 50  0001 C CNN
F 3 "~" H 6150 2600 50  0001 C CNN
	1    6150 2600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 609A7264
P 4700 1850
F 0 "#PWR?" H 4700 1600 50  0001 C CNN
F 1 "GND" H 4705 1677 50  0000 C CNN
F 2 "" H 4700 1850 50  0001 C CNN
F 3 "" H 4700 1850 50  0001 C CNN
	1    4700 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 1850 4900 1850
$Comp
L Connector:Screw_Terminal_01x02 J?
U 1 1 609BACE5
P 1800 1550
F 0 "J?" H 1880 1542 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 1880 1451 50  0000 L CNN
F 2 "" H 1800 1550 50  0001 C CNN
F 3 "~" H 1800 1550 50  0001 C CNN
	1    1800 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Zener D?
U 1 1 609A877C
P 3900 2500
F 0 "D?" V 3854 2580 50  0000 L CNN
F 1 "PESD5Z3.3" V 3945 2580 50  0000 L CNN
F 2 "" H 3900 2500 50  0001 C CNN
F 3 "~" H 3900 2500 50  0001 C CNN
	1    3900 2500
	0    1    1    0   
$EndComp
$Comp
L Device:D_TVS D?
U 1 1 609AD491
P 2500 2350
F 0 "D?" V 2546 2270 50  0000 R CNN
F 1 "SMAJ5.0CA" V 2455 2270 50  0000 R CNN
F 2 "" H 2500 2350 50  0001 C CNN
F 3 "~" H 2500 2350 50  0001 C CNN
	1    2500 2350
	0    -1   -1   0   
$EndComp
$Comp
L Diode:BAT54S D?
U 1 1 609B08DC
P 2000 3300
F 0 "D?" V 2200 3150 50  0000 C CNN
F 1 "BAT54S" V 2100 3050 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2075 3425 50  0001 L CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds11005.pdf" H 1880 3300 50  0001 C CNN
	1    2000 3300
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C?
U 1 1 609B27F2
P 4100 3400
F 0 "C?" H 4215 3446 50  0000 L CNN
F 1 "0603" H 4215 3355 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 4138 3250 50  0001 C CNN
F 3 "~" H 4100 3400 50  0001 C CNN
	1    4100 3400
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP?
U 1 1 609BBCCA
P 5550 5650
F 0 "TP?" H 5608 5768 50  0000 L CNN
F 1 "TestPoint" H 5608 5677 50  0001 L CNN
F 2 "" H 5750 5650 50  0001 C CNN
F 3 "~" H 5750 5650 50  0001 C CNN
	1    5550 5650
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x04 J?
U 1 1 609C016E
P 1250 2150
F 0 "J?" H 1330 2142 50  0000 L CNN
F 1 "Conn_01x04" H 1330 2051 50  0000 L CNN
F 2 "" H 1250 2150 50  0001 C CNN
F 3 "~" H 1250 2150 50  0001 C CNN
	1    1250 2150
	1    0    0    -1  
$EndComp
$Sheet
S 2550 3800 1400 850 
U 609C9D41
F0 "MAIN" 50
F1 "Main.sch" 50
$EndSheet
$Sheet
S 4500 3850 1250 750 
U 609CA1D9
F0 "EXTERNAL" 50
F1 "External.sch" 50
$EndSheet
$Sheet
S 1000 4000 1000 500 
U 609CA6A8
F0 "TEMP_SENSOR" 50
F1 "Temp_sensor.sch" 50
F2 "TC-" I L 1000 4350 50 
F3 "~CS" I R 2000 4100 50 
F4 "TC+" I L 1000 4150 50 
F5 "SCK" I R 2000 4200 50 
F6 "MISO" O R 2000 4400 50 
$EndSheet
$EndSCHEMATC
