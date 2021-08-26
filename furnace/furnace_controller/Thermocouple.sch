EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 18
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
L Sensor_Temperature:MAX31855EASA U?
U 1 1 609D9CFC
P 6050 4150
AR Path="/609D9CFC" Ref="U?"  Part="1" 
AR Path="/609CA6A8/609D24C0/609D9CFC" Ref="U?"  Part="1" 
AR Path="/609CA6A8/60A08E0B/609D9CFC" Ref="U?"  Part="1" 
AR Path="/609CA6A8/60A0A46E/609D9CFC" Ref="U?"  Part="1" 
AR Path="/609CA6A8/60A0A500/609D9CFC" Ref="U?"  Part="1" 
AR Path="/609CA6A8/60A0A922/609D9CFC" Ref="U?"  Part="1" 
AR Path="/609CA6A8/609FC411/609D9CFC" Ref="U?"  Part="1" 
AR Path="/609CA6A8/609FC7FD/609D9CFC" Ref="U?"  Part="1" 
AR Path="/609CA6A8/609FCB99/609D9CFC" Ref="U?"  Part="1" 
AR Path="/609CA6A8/609FD01B/609D9CFC" Ref="U?"  Part="1" 
AR Path="/609CA6A8/60A46905/609D9CFC" Ref="U?"  Part="1" 
AR Path="/609CA6A8/60A48CF4/609D9CFC" Ref="U?"  Part="1" 
AR Path="/609CA6A8/60A4AE55/609D9CFC" Ref="U?"  Part="1" 
AR Path="/609CA6A8/60A4DCFA/609D9CFC" Ref="U?"  Part="1" 
AR Path="/609CA6A8/60AD75F8/609D9CFC" Ref="U3"  Part="1" 
AR Path="/609CA6A8/60B05B81/609D9CFC" Ref="U?"  Part="1" 
AR Path="/609CA6A8/60B060E7/609D9CFC" Ref="U?"  Part="1" 
AR Path="/609CA6A8/60B065BD/609D9CFC" Ref="U?"  Part="1" 
AR Path="/609CA6A8/60B06ABB/609D9CFC" Ref="U?"  Part="1" 
AR Path="/609CA6A8/60B0F1FC/609D9CFC" Ref="U6"  Part="1" 
AR Path="/609CA6A8/60B0FB30/609D9CFC" Ref="U7"  Part="1" 
AR Path="/609CA6A8/60B108D6/609D9CFC" Ref="U8"  Part="1" 
AR Path="/609CA6A8/60B118F2/609D9CFC" Ref="U9"  Part="1" 
F 0 "U3" H 6200 4650 50  0000 C CNN
F 1 "MAX31855EASA" H 6400 4550 50  0000 C CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 7050 3800 50  0001 C CIN
F 3 "http://datasheets.maximintegrated.com/en/ds/MAX31855.pdf" H 6050 4150 50  0001 C CNN
	1    6050 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 609F3008
P 5450 3650
AR Path="/609F3008" Ref="C?"  Part="1" 
AR Path="/609CA6A8/609D24C0/609F3008" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60A08E0B/609F3008" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60A0A46E/609F3008" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60A0A500/609F3008" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60A0A922/609F3008" Ref="C?"  Part="1" 
AR Path="/609CA6A8/609FC411/609F3008" Ref="C?"  Part="1" 
AR Path="/609CA6A8/609FC7FD/609F3008" Ref="C?"  Part="1" 
AR Path="/609CA6A8/609FCB99/609F3008" Ref="C?"  Part="1" 
AR Path="/609CA6A8/609FD01B/609F3008" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60A46905/609F3008" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60A48CF4/609F3008" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60A4AE55/609F3008" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60A4DCFA/609F3008" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60AD75F8/609F3008" Ref="C24"  Part="1" 
AR Path="/609CA6A8/60B05B81/609F3008" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60B060E7/609F3008" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60B065BD/609F3008" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60B06ABB/609F3008" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60B0F1FC/609F3008" Ref="C33"  Part="1" 
AR Path="/609CA6A8/60B0FB30/609F3008" Ref="C35"  Part="1" 
AR Path="/609CA6A8/60B108D6/609F3008" Ref="C37"  Part="1" 
AR Path="/609CA6A8/60B118F2/609F3008" Ref="C39"  Part="1" 
F 0 "C24" H 5565 3696 50  0000 L CNN
F 1 "0,1" H 5565 3605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 5488 3500 50  0001 C CNN
F 3 "~" H 5450 3650 50  0001 C CNN
	1    5450 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 3750 6050 3500
Wire Wire Line
	6050 3500 5450 3500
Text HLabel 4350 4050 0    50   Input ~ 0
TC+
Text HLabel 4350 4350 0    50   Input ~ 0
TC-
Text HLabel 7350 4050 2    50   Output ~ 0
MISO
Text HLabel 7350 4250 2    50   Input ~ 0
~CS
Text HLabel 7350 3950 2    50   Input ~ 0
SCK
Text HLabel 4350 3050 0    50   Input ~ 0
+3V3
Wire Wire Line
	6050 3050 6050 3500
Connection ~ 6050 3500
$Comp
L Device:C C?
U 1 1 60A063BF
P 5200 4200
AR Path="/60A063BF" Ref="C?"  Part="1" 
AR Path="/609CA6A8/609D24C0/60A063BF" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60A08E0B/60A063BF" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60A0A46E/60A063BF" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60A0A500/60A063BF" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60A0A922/60A063BF" Ref="C?"  Part="1" 
AR Path="/609CA6A8/609FC411/60A063BF" Ref="C?"  Part="1" 
AR Path="/609CA6A8/609FC7FD/60A063BF" Ref="C?"  Part="1" 
AR Path="/609CA6A8/609FCB99/60A063BF" Ref="C?"  Part="1" 
AR Path="/609CA6A8/609FD01B/60A063BF" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60A46905/60A063BF" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60A48CF4/60A063BF" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60A4AE55/60A063BF" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60A4DCFA/60A063BF" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60AD75F8/60A063BF" Ref="C23"  Part="1" 
AR Path="/609CA6A8/60B05B81/60A063BF" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60B060E7/60A063BF" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60B065BD/60A063BF" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60B06ABB/60A063BF" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60B0F1FC/60A063BF" Ref="C32"  Part="1" 
AR Path="/609CA6A8/60B0FB30/60A063BF" Ref="C34"  Part="1" 
AR Path="/609CA6A8/60B108D6/60A063BF" Ref="C36"  Part="1" 
AR Path="/609CA6A8/60B118F2/60A063BF" Ref="C38"  Part="1" 
F 0 "C23" H 5315 4246 50  0000 L CNN
F 1 "0,01" H 5315 4155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 5238 4050 50  0001 C CNN
F 3 "~" H 5200 4200 50  0001 C CNN
	1    5200 4200
	1    0    0    -1  
$EndComp
Connection ~ 5200 4050
Wire Wire Line
	5200 4050 5650 4050
Connection ~ 5200 4350
Wire Wire Line
	5200 4350 5650 4350
Wire Wire Line
	5650 4350 5650 4250
Text HLabel 4350 5050 0    50   Input ~ 0
GND
Wire Wire Line
	5450 3800 5450 5050
Connection ~ 5450 5050
Wire Wire Line
	5450 5050 6050 5050
Wire Wire Line
	6050 4550 6050 5050
Text Notes 7500 2050 2    197  ~ 0
Thermocouple sensor
Wire Wire Line
	6450 3950 7350 3950
Wire Wire Line
	6450 4050 7350 4050
Wire Wire Line
	6450 4250 7350 4250
Wire Wire Line
	4350 3050 6050 3050
Wire Wire Line
	4350 5050 5450 5050
Wire Wire Line
	4350 4350 5200 4350
Wire Wire Line
	4350 4050 5200 4050
$EndSCHEMATC
