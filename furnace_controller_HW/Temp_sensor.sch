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
Text Notes 7350 2100 2    197  ~ 0
Temperature sensor
$Comp
L Sensor_Temperature:LM75B U?
U 1 1 60B1148C
P 6450 4500
AR Path="/60B1148C" Ref="U?"  Part="1" 
AR Path="/609C9D41/60B1148C" Ref="U?"  Part="1" 
AR Path="/60B0ABCB/60B1148C" Ref="U?"  Part="1" 
F 0 "U?" H 6650 5100 50  0000 C CNN
F 1 "LM75A" H 6700 5000 50  0000 C CNN
F 2 "" H 6450 4500 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm75b.pdf" H 6450 4500 50  0001 C CNN
	1    6450 4500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60B11492
P 6450 5100
AR Path="/60B11492" Ref="#PWR?"  Part="1" 
AR Path="/609C9D41/60B11492" Ref="#PWR?"  Part="1" 
AR Path="/60B0ABCB/60B11492" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6450 4850 50  0001 C CNN
F 1 "GND" H 6455 4927 50  0000 C CNN
F 2 "" H 6450 5100 50  0001 C CNN
F 3 "" H 6450 5100 50  0001 C CNN
	1    6450 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 4400 6950 4400
Wire Wire Line
	6950 4400 6950 4500
Wire Wire Line
	6950 5000 6450 5000
Wire Wire Line
	6450 5100 6450 5000
Connection ~ 6450 5000
Wire Wire Line
	6850 4500 6950 4500
Connection ~ 6950 4500
Wire Wire Line
	6950 4500 6950 4600
Wire Wire Line
	6850 4600 6950 4600
Connection ~ 6950 4600
Wire Wire Line
	6950 4600 6950 5000
$Comp
L Device:R R?
U 1 1 60B114A3
P 5200 4050
AR Path="/60B114A3" Ref="R?"  Part="1" 
AR Path="/60A364EE/60B114A3" Ref="R?"  Part="1" 
AR Path="/609C9D41/60B114A3" Ref="R?"  Part="1" 
AR Path="/60B0ABCB/60B114A3" Ref="R?"  Part="1" 
F 0 "R?" H 5270 4096 50  0000 L CNN
F 1 "4,7k" H 5270 4005 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 5130 4050 50  0001 C CNN
F 3 "~" H 5200 4050 50  0001 C CNN
	1    5200 4050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 60B114A9
P 5500 4050
AR Path="/60B114A9" Ref="R?"  Part="1" 
AR Path="/60A364EE/60B114A9" Ref="R?"  Part="1" 
AR Path="/609C9D41/60B114A9" Ref="R?"  Part="1" 
AR Path="/60B0ABCB/60B114A9" Ref="R?"  Part="1" 
F 0 "R?" H 5570 4096 50  0000 L CNN
F 1 "4,7k" H 5570 4005 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 5430 4050 50  0001 C CNN
F 3 "~" H 5500 4050 50  0001 C CNN
	1    5500 4050
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 60B114AF
P 6450 3400
AR Path="/609FED99/60B114AF" Ref="#PWR?"  Part="1" 
AR Path="/609C9D41/60B114AF" Ref="#PWR?"  Part="1" 
AR Path="/60B0ABCB/60B114AF" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6450 3250 50  0001 C CNN
F 1 "+3V3" H 6465 3573 50  0000 C CNN
F 2 "" H 6450 3400 50  0001 C CNN
F 3 "" H 6450 3400 50  0001 C CNN
	1    6450 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 60B114B5
P 6000 3550
AR Path="/60B114B5" Ref="C?"  Part="1" 
AR Path="/609C9D41/60B114B5" Ref="C?"  Part="1" 
AR Path="/60B0ABCB/60B114B5" Ref="C?"  Part="1" 
F 0 "C?" H 6115 3596 50  0000 L CNN
F 1 "0,1" H 6115 3505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 6038 3400 50  0001 C CNN
F 3 "~" H 6000 3550 50  0001 C CNN
	1    6000 3550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60B114BB
P 6000 3800
AR Path="/60B114BB" Ref="#PWR?"  Part="1" 
AR Path="/609C9D41/60B114BB" Ref="#PWR?"  Part="1" 
AR Path="/60B0ABCB/60B114BB" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6000 3550 50  0001 C CNN
F 1 "GND" H 6005 3627 50  0000 C CNN
F 2 "" H 6000 3800 50  0001 C CNN
F 3 "" H 6000 3800 50  0001 C CNN
	1    6000 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 4400 5200 4400
Wire Wire Line
	6450 4000 6450 3400
Wire Wire Line
	5200 3900 5200 3400
Wire Wire Line
	5200 3400 5500 3400
Connection ~ 6450 3400
Connection ~ 6000 3400
Wire Wire Line
	6000 3400 6450 3400
Wire Wire Line
	5500 3900 5500 3400
Connection ~ 5500 3400
Wire Wire Line
	5500 3400 6000 3400
Wire Wire Line
	6000 3700 6000 3800
Wire Wire Line
	5200 4200 5200 4400
Connection ~ 5200 4400
Wire Wire Line
	5200 4400 5300 4400
Wire Wire Line
	5500 4200 5500 4500
Connection ~ 5500 4500
Wire Wire Line
	5500 4500 6050 4500
NoConn ~ 6050 4600
Text HLabel 5000 4400 0    50   BiDi ~ 0
SDA
Text HLabel 5000 4500 0    50   Input ~ 0
SCK
$Comp
L Connector:Conn_01x03_Male J?
U 1 1 60B324B2
P 5800 5400
F 0 "J?" H 5908 5681 50  0000 C CNN
F 1 "Conn_01x03_Male" H 5908 5590 50  0000 C CNN
F 2 "" H 5800 5400 50  0001 C CNN
F 3 "~" H 5800 5400 50  0001 C CNN
	1    5800 5400
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60B324B8
P 5500 5500
AR Path="/609FED99/60B324B8" Ref="#PWR?"  Part="1" 
AR Path="/60A364EE/60B324B8" Ref="#PWR?"  Part="1" 
AR Path="/60B0ABCB/60B324B8" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5500 5250 50  0001 C CNN
F 1 "GND" H 5505 5327 50  0000 C CNN
F 2 "" H 5500 5500 50  0001 C CNN
F 3 "" H 5500 5500 50  0001 C CNN
	1    5500 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 5500 5600 5500
Wire Wire Line
	5000 4500 5200 4500
Wire Wire Line
	5600 5400 5300 5400
Wire Wire Line
	5300 5400 5300 4400
Connection ~ 5300 4400
Wire Wire Line
	5300 4400 6050 4400
Wire Wire Line
	5600 5300 5200 5300
Wire Wire Line
	5200 5300 5200 4500
Connection ~ 5200 4500
Wire Wire Line
	5200 4500 5500 4500
$EndSCHEMATC
