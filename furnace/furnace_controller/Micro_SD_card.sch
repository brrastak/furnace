EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 16 18
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
L Connector:Micro_SD_Card J?
U 1 1 60B1D1CB
P 7200 4600
AR Path="/60B1D1CB" Ref="J?"  Part="1" 
AR Path="/609C9D41/60B1D1CB" Ref="J?"  Part="1" 
AR Path="/60B1951B/60B1D1CB" Ref="J?"  Part="1" 
F 0 "J?" H 7150 5317 50  0000 C CNN
F 1 "Micro_SD_Card" H 7150 5226 50  0000 C CNN
F 2 "" H 8350 4900 50  0001 C CNN
F 3 "http://katalog.we-online.de/em/datasheet/693072010801.pdf" H 7200 4600 50  0001 C CNN
	1    7200 4600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 60B1D1D1
P 5000 3900
AR Path="/60B1D1D1" Ref="R?"  Part="1" 
AR Path="/609C9D41/60B1D1D1" Ref="R?"  Part="1" 
AR Path="/60B1951B/60B1D1D1" Ref="R?"  Part="1" 
F 0 "R?" H 5070 3946 50  0000 L CNN
F 1 "10k" H 5070 3855 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 4930 3900 50  0001 C CNN
F 3 "~" H 5000 3900 50  0001 C CNN
	1    5000 3900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60B1D1D7
P 8000 5300
AR Path="/60B1D1D7" Ref="#PWR?"  Part="1" 
AR Path="/609C9D41/60B1D1D7" Ref="#PWR?"  Part="1" 
AR Path="/60B1951B/60B1D1D7" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8000 5050 50  0001 C CNN
F 1 "GND" H 8005 5127 50  0000 C CNN
F 2 "" H 8000 5300 50  0001 C CNN
F 3 "" H 8000 5300 50  0001 C CNN
	1    8000 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 60B1D1DD
P 5800 3650
AR Path="/60B1D1DD" Ref="C?"  Part="1" 
AR Path="/609C9D41/60B1D1DD" Ref="C?"  Part="1" 
AR Path="/60B1951B/60B1D1DD" Ref="C?"  Part="1" 
F 0 "C?" H 5915 3696 50  0000 L CNN
F 1 "0,1" H 5915 3605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 5838 3500 50  0001 C CNN
F 3 "~" H 5800 3650 50  0001 C CNN
	1    5800 3650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60B1D1E3
P 5500 5250
AR Path="/60B1D1E3" Ref="#PWR?"  Part="1" 
AR Path="/609C9D41/60B1D1E3" Ref="#PWR?"  Part="1" 
AR Path="/60B1951B/60B1D1E3" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5500 5000 50  0001 C CNN
F 1 "GND" H 5505 5077 50  0000 C CNN
F 2 "" H 5500 5250 50  0001 C CNN
F 3 "" H 5500 5250 50  0001 C CNN
	1    5500 5250
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 60B1D1E9
P 5500 3250
AR Path="/609FED99/60B1D1E9" Ref="#PWR?"  Part="1" 
AR Path="/609C9D41/60B1D1E9" Ref="#PWR?"  Part="1" 
AR Path="/60B1951B/60B1D1E9" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5500 3100 50  0001 C CNN
F 1 "+3V3" H 5515 3423 50  0000 C CNN
F 2 "" H 5500 3250 50  0001 C CNN
F 3 "" H 5500 3250 50  0001 C CNN
	1    5500 3250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60B1D1EF
P 5800 3950
AR Path="/60B1D1EF" Ref="#PWR?"  Part="1" 
AR Path="/609C9D41/60B1D1EF" Ref="#PWR?"  Part="1" 
AR Path="/60B1951B/60B1D1EF" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5800 3700 50  0001 C CNN
F 1 "GND" H 5805 3777 50  0000 C CNN
F 2 "" H 5800 3950 50  0001 C CNN
F 3 "" H 5800 3950 50  0001 C CNN
	1    5800 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 5200 8000 5300
Wire Wire Line
	5500 4800 5500 5250
Wire Wire Line
	5500 4600 5500 3500
Wire Wire Line
	5800 3500 5500 3500
Connection ~ 5500 3500
Wire Wire Line
	5500 3500 5500 3400
Wire Wire Line
	5800 3800 5800 3950
Connection ~ 5500 3400
Wire Wire Line
	5500 3400 5500 3250
Wire Wire Line
	5000 3750 5000 3400
Wire Wire Line
	5000 3400 5500 3400
Wire Wire Line
	5500 4600 6300 4600
Wire Wire Line
	5500 4800 6300 4800
Wire Wire Line
	6300 4900 5000 4900
Wire Wire Line
	5000 4050 5000 4900
$Comp
L Device:R R?
U 1 1 60B1D208
P 4700 3900
AR Path="/60B1D208" Ref="R?"  Part="1" 
AR Path="/609C9D41/60B1D208" Ref="R?"  Part="1" 
AR Path="/60B1951B/60B1D208" Ref="R?"  Part="1" 
F 0 "R?" H 4770 3946 50  0000 L CNN
F 1 "10k" H 4770 3855 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 4630 3900 50  0001 C CNN
F 3 "~" H 4700 3900 50  0001 C CNN
	1    4700 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 60B1D20E
P 4400 3900
AR Path="/60B1D20E" Ref="R?"  Part="1" 
AR Path="/609C9D41/60B1D20E" Ref="R?"  Part="1" 
AR Path="/60B1951B/60B1D20E" Ref="R?"  Part="1" 
F 0 "R?" H 4470 3946 50  0000 L CNN
F 1 "10k" H 4470 3855 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 4330 3900 50  0001 C CNN
F 3 "~" H 4400 3900 50  0001 C CNN
	1    4400 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 4300 4700 4300
Wire Wire Line
	4700 4300 4700 4050
Wire Wire Line
	6300 5000 4400 5000
Wire Wire Line
	4400 5000 4400 4050
Wire Wire Line
	4400 3750 4400 3400
Wire Wire Line
	4400 3400 4700 3400
Connection ~ 5000 3400
Wire Wire Line
	4700 3750 4700 3400
Connection ~ 4700 3400
Wire Wire Line
	4700 3400 5000 3400
$Comp
L Device:C C?
U 1 1 60B1D21E
P 6200 3650
AR Path="/60B1D21E" Ref="C?"  Part="1" 
AR Path="/609CA6A8/609D24C0/60B1D21E" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60A08E0B/60B1D21E" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60A0A46E/60B1D21E" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60A0A500/60B1D21E" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60A0A922/60B1D21E" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60B1D21E" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60AE5653/60B1D21E" Ref="C?"  Part="1" 
AR Path="/609FED99/60B1D21E" Ref="C?"  Part="1" 
AR Path="/609C9D41/60B1D21E" Ref="C?"  Part="1" 
AR Path="/60B1951B/60B1D21E" Ref="C?"  Part="1" 
F 0 "C?" H 6315 3696 50  0000 L CNN
F 1 "10u" H 6315 3605 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 6238 3500 50  0001 C CNN
F 3 "~" H 6200 3650 50  0001 C CNN
	1    6200 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 3500 5800 3500
Connection ~ 5800 3500
Wire Wire Line
	6200 3800 6200 3950
Wire Wire Line
	6200 3950 5800 3950
Connection ~ 5800 3950
Wire Wire Line
	4100 4400 4900 4400
Wire Wire Line
	4100 4500 4700 4500
Wire Wire Line
	4100 4700 4800 4700
Wire Wire Line
	4100 4900 4600 4900
Connection ~ 5000 4900
Text Notes 7600 2450 2    197  ~ 0
Micro-SD card connector
Text HLabel 4100 4400 0    50   Input ~ 0
~CS~
Text HLabel 4100 4500 0    50   Input ~ 0
MOSI
Text HLabel 4100 4700 0    50   Input ~ 0
SCK
Text HLabel 4100 4900 0    50   Output ~ 0
MISO
$Comp
L Connector:Conn_01x05_Male J?
U 1 1 60B35003
P 5200 5700
F 0 "J?" H 5172 5724 50  0000 R CNN
F 1 "Conn_01x05_Male" H 5172 5633 50  0000 R CNN
F 2 "" H 5200 5700 50  0001 C CNN
F 3 "~" H 5200 5700 50  0001 C CNN
	1    5200 5700
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5000 5500 4900 5500
Wire Wire Line
	4900 5500 4900 4400
Connection ~ 4900 4400
Wire Wire Line
	4900 4400 6300 4400
Wire Wire Line
	5000 5600 4800 5600
Wire Wire Line
	4800 5600 4800 4700
Connection ~ 4800 4700
Wire Wire Line
	4800 4700 6300 4700
Wire Wire Line
	5000 5700 4700 5700
Wire Wire Line
	4700 5700 4700 4500
Connection ~ 4700 4500
Wire Wire Line
	4700 4500 6300 4500
Wire Wire Line
	5000 5800 4600 5800
Wire Wire Line
	4600 5800 4600 4900
Connection ~ 4600 4900
Wire Wire Line
	4600 4900 5000 4900
Wire Wire Line
	5000 5900 4900 5900
$Comp
L power:GND #PWR?
U 1 1 60B38C7E
P 4900 5900
AR Path="/60B38C7E" Ref="#PWR?"  Part="1" 
AR Path="/609C9D41/60B38C7E" Ref="#PWR?"  Part="1" 
AR Path="/60B1951B/60B38C7E" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4900 5650 50  0001 C CNN
F 1 "GND" H 4905 5727 50  0000 C CNN
F 2 "" H 4900 5900 50  0001 C CNN
F 3 "" H 4900 5900 50  0001 C CNN
	1    4900 5900
	1    0    0    -1  
$EndComp
$EndSCHEMATC
