EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 15 18
Title "Furnace controller"
Date "2021-09-24"
Rev "1.0"
Comp "Yuriy Volkov"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:Buzzer BZ?
U 1 1 60B3B2EE
P 6600 3900
AR Path="/609C9D41/60B3B2EE" Ref="BZ?"  Part="1" 
AR Path="/60B39FE1/60B3B2EE" Ref="BZ1"  Part="1" 
F 0 "BZ1" H 6752 3929 50  0000 L CNN
F 1 "Buzzer" H 6752 3838 50  0000 L CNN
F 2 "Buzzer_Beeper:Buzzer_12x9.5RM7.6" V 6575 4000 50  0001 C CNN
F 3 "~" V 6575 4000 50  0001 C CNN
	1    6600 3900
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC847 Q?
U 1 1 60B3B2F4
P 6400 4500
AR Path="/609C9D41/60B3B2F4" Ref="Q?"  Part="1" 
AR Path="/60B39FE1/60B3B2F4" Ref="Q6"  Part="1" 
F 0 "Q6" H 6591 4546 50  0000 L CNN
F 1 "BC847" H 6591 4455 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6600 4425 50  0001 L CIN
F 3 "http://www.infineon.com/dgdl/Infineon-BC847SERIES_BC848SERIES_BC849SERIES_BC850SERIES-DS-v01_01-en.pdf?fileId=db3a304314dca389011541d4630a1657" H 6400 4500 50  0001 L CNN
	1    6400 4500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 60B3B65C
P 6000 4750
AR Path="/60B3B65C" Ref="R?"  Part="1" 
AR Path="/60B39FE1/60B3B65C" Ref="R43"  Part="1" 
F 0 "R43" H 6070 4796 50  0000 L CNN
F 1 "56k" H 6070 4705 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 5930 4750 50  0001 C CNN
F 3 "~" H 6000 4750 50  0001 C CNN
	1    6000 4750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60B3B924
P 6500 5000
AR Path="/60B3B924" Ref="#PWR?"  Part="1" 
AR Path="/60B39FE1/60B3B924" Ref="#PWR038"  Part="1" 
F 0 "#PWR038" H 6500 4750 50  0001 C CNN
F 1 "GND" H 6505 4827 50  0000 C CNN
F 2 "" H 6500 5000 50  0001 C CNN
F 3 "" H 6500 5000 50  0001 C CNN
	1    6500 5000
	1    0    0    -1  
$EndComp
Text Notes 6150 2700 2    197  ~ 0
Buzzer
Text HLabel 5000 4500 0    50   Input ~ 0
EN
$Comp
L Device:R R?
U 1 1 60B3CA8D
P 5650 4500
AR Path="/60B3CA8D" Ref="R?"  Part="1" 
AR Path="/60B39FE1/60B3CA8D" Ref="R42"  Part="1" 
F 0 "R42" V 5750 4450 50  0000 L CNN
F 1 "3,3k" V 5550 4400 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 5580 4500 50  0001 C CNN
F 3 "~" H 5650 4500 50  0001 C CNN
	1    5650 4500
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 60B40656
P 6500 3500
AR Path="/609FED99/60B40656" Ref="#PWR?"  Part="1" 
AR Path="/60B39FE1/60B40656" Ref="#PWR037"  Part="1" 
F 0 "#PWR037" H 6500 3350 50  0001 C CNN
F 1 "+5V" H 6515 3673 50  0000 C CNN
F 2 "" H 6500 3500 50  0001 C CNN
F 3 "" H 6500 3500 50  0001 C CNN
	1    6500 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 3500 6500 3800
Wire Wire Line
	6500 4000 6500 4300
Wire Wire Line
	6500 4700 6500 5000
Wire Wire Line
	5800 4500 6000 4500
Wire Wire Line
	6000 4600 6000 4500
Connection ~ 6000 4500
Wire Wire Line
	6000 4500 6200 4500
Wire Wire Line
	6000 4900 6000 5000
Wire Wire Line
	6000 5000 6500 5000
Connection ~ 6500 5000
Wire Wire Line
	5500 4500 5000 4500
$EndSCHEMATC
