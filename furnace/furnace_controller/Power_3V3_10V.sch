EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 18
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Notes 8200 1750 2    197  ~ 0
Power sources 3V3 and 10V
$Comp
L Regulator_Linear:AMS1117-3.3 U?
U 1 1 60A07426
P 6700 2550
AR Path="/60A07426" Ref="U?"  Part="1" 
AR Path="/609C9D41/60A07426" Ref="U?"  Part="1" 
AR Path="/609FED99/60A07426" Ref="U?"  Part="1" 
F 0 "U?" H 6700 2792 50  0000 C CNN
F 1 "AMS1117-3.3" H 6700 2701 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 6700 2750 50  0001 C CNN
F 3 "http://www.advanced-monolithic.com/pdf/ds1117.pdf" H 6800 2300 50  0001 C CNN
	1    6700 2550
	1    0    0    -1  
$EndComp
$Comp
L power:+10V #PWR?
U 1 1 60A08E60
P 8900 3800
F 0 "#PWR?" H 8900 3650 50  0001 C CNN
F 1 "+10V" H 8915 3973 50  0000 C CNN
F 2 "" H 8900 3800 50  0001 C CNN
F 3 "" H 8900 3800 50  0001 C CNN
	1    8900 3800
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 60A092C8
P 7700 2450
F 0 "#PWR?" H 7700 2300 50  0001 C CNN
F 1 "+3V3" H 7715 2623 50  0000 C CNN
F 2 "" H 7700 2450 50  0001 C CNN
F 3 "" H 7700 2450 50  0001 C CNN
	1    7700 2450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60A09839
P 5850 2950
F 0 "#PWR?" H 5850 2700 50  0001 C CNN
F 1 "GND" H 5855 2777 50  0000 C CNN
F 2 "" H 5850 2950 50  0001 C CNN
F 3 "" H 5850 2950 50  0001 C CNN
	1    5850 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 60A0D602
P 7300 2700
AR Path="/60A0D602" Ref="C?"  Part="1" 
AR Path="/609CA6A8/609D24C0/60A0D602" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60A08E0B/60A0D602" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60A0A46E/60A0D602" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60A0A500/60A0D602" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60A0A922/60A0D602" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60A0D602" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60AE5653/60A0D602" Ref="C?"  Part="1" 
AR Path="/609FED99/60A0D602" Ref="C?"  Part="1" 
F 0 "C?" H 7415 2746 50  0000 L CNN
F 1 "10u" H 7415 2655 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 7338 2550 50  0001 C CNN
F 3 "~" H 7300 2700 50  0001 C CNN
	1    7300 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 60A0DAB2
P 6100 2700
AR Path="/60A0DAB2" Ref="C?"  Part="1" 
AR Path="/609CA6A8/609D24C0/60A0DAB2" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60A08E0B/60A0DAB2" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60A0A46E/60A0DAB2" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60A0A500/60A0DAB2" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60A0A922/60A0DAB2" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60A0DAB2" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60AE5653/60A0DAB2" Ref="C?"  Part="1" 
AR Path="/609FED99/60A0DAB2" Ref="C?"  Part="1" 
F 0 "C?" H 6215 2746 50  0000 L CNN
F 1 "0,1" H 6215 2655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 6138 2550 50  0001 C CNN
F 3 "~" H 6100 2700 50  0001 C CNN
	1    6100 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 60A129D6
P 7700 2700
AR Path="/60A129D6" Ref="C?"  Part="1" 
AR Path="/609CA6A8/609D24C0/60A129D6" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60A08E0B/60A129D6" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60A0A46E/60A129D6" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60A0A500/60A129D6" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60A0A922/60A129D6" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60A129D6" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60AE5653/60A129D6" Ref="C?"  Part="1" 
AR Path="/609FED99/60A129D6" Ref="C?"  Part="1" 
F 0 "C?" H 7815 2746 50  0000 L CNN
F 1 "10u" H 7815 2655 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 7738 2550 50  0001 C CNN
F 3 "~" H 7700 2700 50  0001 C CNN
	1    7700 2700
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 60A12DA3
P 5850 2450
F 0 "#PWR?" H 5850 2300 50  0001 C CNN
F 1 "+5V" H 5865 2623 50  0000 C CNN
F 2 "" H 5850 2450 50  0001 C CNN
F 3 "" H 5850 2450 50  0001 C CNN
	1    5850 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 2550 6400 2550
Wire Wire Line
	7000 2550 7300 2550
Wire Wire Line
	7700 2450 7700 2550
Wire Wire Line
	7700 2850 7300 2850
Connection ~ 6700 2850
Wire Wire Line
	6700 2850 6100 2850
Connection ~ 7300 2850
$Comp
L Transistor_FET:IRLML6402 Q?
U 1 1 60A19F59
P 6400 4650
F 0 "Q?" H 6604 4604 50  0000 L CNN
F 1 "IRLML6402" H 6604 4695 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6600 4575 50  0001 L CIN
F 3 "https://www.infineon.com/dgdl/irlml6402pbf.pdf?fileId=5546d462533600a401535668d5c2263c" H 6400 4650 50  0001 L CNN
	1    6400 4650
	1    0    0    1   
$EndComp
$Comp
L Transistor_FET:IRLML2060 Q?
U 1 1 60A1C2D8
P 6400 5550
F 0 "Q?" H 6604 5596 50  0000 L CNN
F 1 "IRLML2402" H 6604 5505 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6600 5475 50  0001 L CIN
F 3 "https://www.infineon.com/dgdl/irlml2060pbf.pdf?fileId=5546d462533600a401535664b7fb25ee" H 6400 5550 50  0001 L CNN
	1    6400 5550
	1    0    0    -1  
$EndComp
$Comp
L Diode:BAT54S D?
U 1 1 60A281E0
P 5400 4350
F 0 "D?" V 5500 4550 50  0000 C CNN
F 1 "BAT54S" V 5400 4484 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5475 4475 50  0001 L CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds11005.pdf" H 5280 4350 50  0001 C CNN
	1    5400 4350
	0    -1   -1   0   
$EndComp
$Comp
L Diode:BAT54S D?
U 1 1 60A2A42D
P 5400 5250
F 0 "D?" H 5400 5475 50  0000 C CNN
F 1 "BAT54S" H 5400 5384 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5475 5375 50  0001 L CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds11005.pdf" H 5280 5250 50  0001 C CNN
	1    5400 5250
	-1   0    0    -1  
$EndComp
$Comp
L Diode:BAT54S D?
U 1 1 60A2E7DB
P 7400 3900
F 0 "D?" H 7400 4125 50  0000 C CNN
F 1 "BAT54S" H 7400 4034 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7475 4025 50  0001 L CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds11005.pdf" H 7280 3900 50  0001 C CNN
	1    7400 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 60A315C8
P 7400 4550
AR Path="/60A315C8" Ref="C?"  Part="1" 
AR Path="/609CA6A8/609D24C0/60A315C8" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60A08E0B/60A315C8" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60A0A46E/60A315C8" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60A0A500/60A315C8" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60A0A922/60A315C8" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60A315C8" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60AE5653/60A315C8" Ref="C?"  Part="1" 
AR Path="/609FED99/60A315C8" Ref="C?"  Part="1" 
F 0 "C?" H 7515 4596 50  0000 L CNN
F 1 "10u" H 7515 4505 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 7438 4400 50  0001 C CNN
F 3 "~" H 7400 4550 50  0001 C CNN
	1    7400 4550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 60A315CE
P 7900 4550
AR Path="/60A315CE" Ref="C?"  Part="1" 
AR Path="/609CA6A8/609D24C0/60A315CE" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60A08E0B/60A315CE" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60A0A46E/60A315CE" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60A0A500/60A315CE" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60A0A922/60A315CE" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60A315CE" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60AE5653/60A315CE" Ref="C?"  Part="1" 
AR Path="/609FED99/60A315CE" Ref="C?"  Part="1" 
F 0 "C?" H 8015 4596 50  0000 L CNN
F 1 "10u" H 8015 4505 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 7938 4400 50  0001 C CNN
F 3 "~" H 7900 4550 50  0001 C CNN
	1    7900 4550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 60A324DE
P 8900 4550
AR Path="/60A324DE" Ref="C?"  Part="1" 
AR Path="/609CA6A8/609D24C0/60A324DE" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60A08E0B/60A324DE" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60A0A46E/60A324DE" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60A0A500/60A324DE" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60A0A922/60A324DE" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60A324DE" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60AE5653/60A324DE" Ref="C?"  Part="1" 
AR Path="/609FED99/60A324DE" Ref="C?"  Part="1" 
F 0 "C?" H 9015 4596 50  0000 L CNN
F 1 "10u" H 9015 4505 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 8938 4400 50  0001 C CNN
F 3 "~" H 8900 4550 50  0001 C CNN
	1    8900 4550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 60A324E4
P 9400 4550
AR Path="/60A324E4" Ref="C?"  Part="1" 
AR Path="/609CA6A8/609D24C0/60A324E4" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60A08E0B/60A324E4" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60A0A46E/60A324E4" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60A0A500/60A324E4" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60A0A922/60A324E4" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60A324E4" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60AE5653/60A324E4" Ref="C?"  Part="1" 
AR Path="/609FED99/60A324E4" Ref="C?"  Part="1" 
F 0 "C?" H 9515 4596 50  0000 L CNN
F 1 "10u" H 9515 4505 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 9438 4400 50  0001 C CNN
F 3 "~" H 9400 4550 50  0001 C CNN
	1    9400 4550
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 60A3C3A2
P 4500 3850
F 0 "#PWR?" H 4500 3700 50  0001 C CNN
F 1 "+5V" H 4515 4023 50  0000 C CNN
F 2 "" H 4500 3850 50  0001 C CNN
F 3 "" H 4500 3850 50  0001 C CNN
	1    4500 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 60A272DA
P 5950 4350
AR Path="/60A272DA" Ref="R?"  Part="1" 
AR Path="/609FED99/60A272DA" Ref="R?"  Part="1" 
F 0 "R?" V 5850 4300 50  0000 L CNN
F 1 "100" V 6050 4250 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 5880 4350 50  0001 C CNN
F 3 "~" H 5950 4350 50  0001 C CNN
	1    5950 4350
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 60A440E9
P 5950 4650
AR Path="/60A440E9" Ref="R?"  Part="1" 
AR Path="/609FED99/60A440E9" Ref="R?"  Part="1" 
F 0 "R?" V 5850 4600 50  0000 L CNN
F 1 "680" V 6050 4550 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 5880 4650 50  0001 C CNN
F 3 "~" H 5950 4650 50  0001 C CNN
	1    5950 4650
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 60A443B1
P 5950 5250
AR Path="/60A443B1" Ref="R?"  Part="1" 
AR Path="/609FED99/60A443B1" Ref="R?"  Part="1" 
F 0 "R?" V 5850 5200 50  0000 L CNN
F 1 "1,2k" V 6050 5150 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 5880 5250 50  0001 C CNN
F 3 "~" H 5950 5250 50  0001 C CNN
	1    5950 5250
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 60A44627
P 5950 5550
AR Path="/60A44627" Ref="R?"  Part="1" 
AR Path="/609FED99/60A44627" Ref="R?"  Part="1" 
F 0 "R?" V 5850 5500 50  0000 L CNN
F 1 "1,2k" V 6050 5450 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 5880 5550 50  0001 C CNN
F 3 "~" H 5950 5550 50  0001 C CNN
	1    5950 5550
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 60A67B2D
P 4500 4100
AR Path="/60A67B2D" Ref="R?"  Part="1" 
AR Path="/609FED99/60A67B2D" Ref="R?"  Part="1" 
F 0 "R?" H 4570 4146 50  0000 L CNN
F 1 "330" H 4570 4055 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 4430 4100 50  0001 C CNN
F 3 "~" H 4500 4100 50  0001 C CNN
	1    4500 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 3850 4500 3900
Wire Wire Line
	5800 5550 5400 5550
Wire Wire Line
	4500 5550 4500 4900
Wire Wire Line
	5400 5450 5400 5550
Connection ~ 5400 5550
Wire Wire Line
	5400 5550 4500 5550
Wire Wire Line
	6100 4350 6200 4350
Wire Wire Line
	6200 4350 6200 4650
Wire Wire Line
	6200 4650 6100 4650
Connection ~ 6200 4650
Wire Wire Line
	5700 5250 5800 5250
Wire Wire Line
	6100 5250 6200 5250
Wire Wire Line
	6200 5250 6200 5550
Wire Wire Line
	6200 5550 6100 5550
Connection ~ 6200 5550
Wire Wire Line
	6500 4850 6500 5050
Connection ~ 4500 3900
Wire Wire Line
	4500 3900 4500 3950
NoConn ~ 5100 5250
Connection ~ 4500 4900
Wire Wire Line
	4500 4900 4500 4650
Text HLabel 2900 4900 0    50   Input ~ 0
CHARGE_PUMP_CLK
Text Notes 3050 4750 0    50   ~ 0
MCU pin should be \n5V tolerant and \nopen drain
Wire Wire Line
	7900 4400 7400 4400
Wire Wire Line
	7900 4700 7400 4700
Wire Wire Line
	7400 4700 7400 5050
Wire Wire Line
	7400 5050 6500 5050
Connection ~ 7400 4700
Connection ~ 6500 5050
Wire Wire Line
	8900 4700 9400 4700
Wire Wire Line
	8900 4400 9400 4400
Wire Wire Line
	8900 3900 8900 3800
Wire Wire Line
	8900 3900 8900 4400
Connection ~ 8900 3900
Connection ~ 8900 4400
Wire Wire Line
	8900 4700 8900 5850
Wire Wire Line
	8900 5850 6500 5850
Wire Wire Line
	6500 5850 6500 5750
Connection ~ 8900 4700
Wire Wire Line
	6500 5850 6500 5950
Connection ~ 6500 5850
$Comp
L power:GND #PWR?
U 1 1 60AB9561
P 6500 5950
F 0 "#PWR?" H 6500 5700 50  0001 C CNN
F 1 "GND" H 6505 5777 50  0000 C CNN
F 2 "" H 6500 5950 50  0001 C CNN
F 3 "" H 6500 5950 50  0001 C CNN
	1    6500 5950
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP?
U 1 1 60AC6F73
P 7450 2550
AR Path="/60AC6F73" Ref="TP?"  Part="1" 
AR Path="/609FED99/60AC6F73" Ref="TP?"  Part="1" 
F 0 "TP?" H 7508 2668 50  0000 L CNN
F 1 "TestPoint" H 7508 2577 50  0001 L CNN
F 2 "" H 7650 2550 50  0001 C CNN
F 3 "~" H 7650 2550 50  0001 C CNN
	1    7450 2550
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP?
U 1 1 60AC7FF7
P 8450 3900
AR Path="/60AC7FF7" Ref="TP?"  Part="1" 
AR Path="/609FED99/60AC7FF7" Ref="TP?"  Part="1" 
F 0 "TP?" H 8508 4018 50  0000 L CNN
F 1 "TestPoint" H 8508 3927 50  0001 L CNN
F 2 "" H 8650 3900 50  0001 C CNN
F 3 "~" H 8650 3900 50  0001 C CNN
	1    8450 3900
	1    0    0    -1  
$EndComp
$Comp
L Connector:TestPoint TP?
U 1 1 60ACAEBE
P 5300 2550
AR Path="/60ACAEBE" Ref="TP?"  Part="1" 
AR Path="/609FED99/60ACAEBE" Ref="TP?"  Part="1" 
F 0 "TP?" H 5358 2668 50  0000 L CNN
F 1 "TestPoint" H 5358 2577 50  0001 L CNN
F 2 "" H 5500 2550 50  0001 C CNN
F 3 "~" H 5500 2550 50  0001 C CNN
	1    5300 2550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 60ACD247
P 4250 2700
AR Path="/60ACD247" Ref="C?"  Part="1" 
AR Path="/609CA6A8/609D24C0/60ACD247" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60A08E0B/60ACD247" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60A0A46E/60ACD247" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60A0A500/60ACD247" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60A0A922/60ACD247" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60ACD247" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60AE5653/60ACD247" Ref="C?"  Part="1" 
AR Path="/609FED99/60ACD247" Ref="C?"  Part="1" 
F 0 "C?" H 4365 2746 50  0000 L CNN
F 1 "1u" H 4365 2655 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 4288 2550 50  0001 C CNN
F 3 "~" H 4250 2700 50  0001 C CNN
	1    4250 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:D_TVS D?
U 1 1 60AD0C8C
P 4750 2700
AR Path="/60AD0C8C" Ref="D?"  Part="1" 
AR Path="/609FED99/60AD0C8C" Ref="D?"  Part="1" 
F 0 "D?" V 4796 2620 50  0000 R CNN
F 1 "SMAJ5.0CA" V 4705 2620 50  0000 R CNN
F 2 "" H 4750 2700 50  0001 C CNN
F 3 "~" H 4750 2700 50  0001 C CNN
	1    4750 2700
	0    -1   -1   0   
$EndComp
$Comp
L Device:CP C?
U 1 1 60ADA476
P 3700 2700
F 0 "C?" H 3818 2746 50  0000 L CNN
F 1 "100u" H 3818 2655 50  0000 L CNN
F 2 "" H 3738 2550 50  0001 C CNN
F 3 "~" H 3700 2700 50  0001 C CNN
	1    3700 2700
	1    0    0    -1  
$EndComp
Text HLabel 2900 2550 0    50   Input ~ 0
+5V_IN
Wire Wire Line
	2900 4900 4500 4900
Wire Wire Line
	2900 2550 3700 2550
Connection ~ 6100 2550
Connection ~ 3700 2550
Wire Wire Line
	3700 2550 4250 2550
Connection ~ 4250 2550
Wire Wire Line
	4250 2550 4750 2550
Connection ~ 4750 2550
Wire Wire Line
	4750 2550 5300 2550
Connection ~ 5300 2550
Wire Wire Line
	5300 2550 5850 2550
Wire Wire Line
	5850 2450 5850 2550
Connection ~ 5850 2550
Wire Wire Line
	5850 2550 6100 2550
Wire Wire Line
	3700 2850 4250 2850
Connection ~ 6100 2850
Connection ~ 4250 2850
Wire Wire Line
	4250 2850 4750 2850
Wire Wire Line
	6700 2850 7300 2850
Wire Wire Line
	5850 2950 5850 2850
Wire Wire Line
	5850 2850 6100 2850
Wire Wire Line
	2900 2850 3700 2850
Connection ~ 3700 2850
$Comp
L Connector:TestPoint TP?
U 1 1 60AFF250
P 5300 2850
AR Path="/60AFF250" Ref="TP?"  Part="1" 
AR Path="/609FED99/60AFF250" Ref="TP?"  Part="1" 
F 0 "TP?" H 5358 2968 50  0000 L CNN
F 1 "TestPoint" H 5358 2877 50  0001 L CNN
F 2 "" H 5500 2850 50  0001 C CNN
F 3 "~" H 5500 2850 50  0001 C CNN
	1    5300 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 4650 5400 4650
Connection ~ 4500 4650
Wire Wire Line
	4500 4250 4500 4650
Wire Wire Line
	4500 3900 6500 3900
Wire Wire Line
	5400 4650 5800 4650
Wire Wire Line
	6500 5050 6500 5350
Connection ~ 5400 4650
Wire Wire Line
	5600 4350 5800 4350
NoConn ~ 5400 4050
Wire Wire Line
	6500 4450 6500 3900
Connection ~ 6500 3900
Wire Wire Line
	6500 3900 7100 3900
Wire Wire Line
	7400 4100 7400 4400
Connection ~ 7400 4400
Wire Wire Line
	8450 3900 8900 3900
Wire Wire Line
	4750 2850 5300 2850
Connection ~ 4750 2850
Wire Wire Line
	5300 2850 5850 2850
Connection ~ 5300 2850
Connection ~ 5850 2850
Wire Wire Line
	7300 2550 7450 2550
Connection ~ 7300 2550
Wire Wire Line
	7450 2550 7700 2550
Connection ~ 7450 2550
Connection ~ 7700 2550
Wire Wire Line
	8450 3900 7700 3900
Connection ~ 8450 3900
Text HLabel 2900 2850 0    50   Input ~ 0
GND_IN
$EndSCHEMATC
