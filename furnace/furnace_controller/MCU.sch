EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 18
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
L MCU_ST_STM32F1:STM32F103C6Tx U?
U 1 1 609CC27B
P 6100 3900
AR Path="/609CC27B" Ref="U?"  Part="1" 
AR Path="/609C9D41/609CC27B" Ref="U?"  Part="1" 
F 0 "U?" H 6700 5500 50  0000 C CNN
F 1 "STM32F103C6Tx" H 6800 5400 50  0000 C CNN
F 2 "Package_QFP:LQFP-48_7x7mm_P0.5mm" H 5500 2500 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/CD00210843.pdf" H 6100 3900 50  0001 C CNN
	1    6100 3900
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x05_Male J?
U 1 1 609DE10B
P 1750 3900
F 0 "J?" H 1858 4281 50  0000 C CNN
F 1 "PLS-5" H 1858 4190 50  0000 C CNN
F 2 "" H 1750 3900 50  0001 C CNN
F 3 "~" H 1750 3900 50  0001 C CNN
	1    1750 3900
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J?
U 1 1 60B5D67E
P 1750 3150
F 0 "J?" H 1858 3431 50  0000 C CNN
F 1 "PLS-3" H 1858 3340 50  0000 C CNN
F 2 "" H 1750 3150 50  0001 C CNN
F 3 "~" H 1750 3150 50  0001 C CNN
	1    1750 3150
	1    0    0    -1  
$EndComp
Text Notes 5950 1600 2    197  ~ 0
MCU\n
$Comp
L Device:R R?
U 1 1 60B4CB82
P 3500 2150
AR Path="/60B4CB82" Ref="R?"  Part="1" 
AR Path="/609C9D41/60B4CB82" Ref="R?"  Part="1" 
F 0 "R?" H 3570 2196 50  0000 L CNN
F 1 "0603" H 3570 2105 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 3430 2150 50  0001 C CNN
F 3 "~" H 3500 2150 50  0001 C CNN
	1    3500 2150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60B4CB88
P 3000 2000
AR Path="/60B4CB88" Ref="#PWR?"  Part="1" 
AR Path="/609C9D41/60B4CB88" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3000 1750 50  0001 C CNN
F 1 "GND" H 3005 1827 50  0000 C CNN
F 2 "" H 3000 2000 50  0001 C CNN
F 3 "" H 3000 2000 50  0001 C CNN
	1    3000 2000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 60B4CB8E
P 2400 2150
AR Path="/60B4CB8E" Ref="C?"  Part="1" 
AR Path="/609C9D41/60B4CB8E" Ref="C?"  Part="1" 
F 0 "C?" H 2515 2196 50  0000 L CNN
F 1 "0603" H 2515 2105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 2438 2000 50  0001 C CNN
F 3 "~" H 2400 2150 50  0001 C CNN
	1    2400 2150
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 60B4D7B8
P 1750 2100
AR Path="/609CA6A8/60B4D7B8" Ref="#PWR?"  Part="1" 
AR Path="/609C9D41/60B4D7B8" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1750 1950 50  0001 C CNN
F 1 "+3V3" H 1765 2273 50  0000 C CNN
F 2 "" H 1750 2100 50  0001 C CNN
F 3 "" H 1750 2100 50  0001 C CNN
	1    1750 2100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 60B4F8D6
P 2400 2700
AR Path="/60B4F8D6" Ref="C?"  Part="1" 
AR Path="/609CA6A8/609D24C0/60B4F8D6" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60A08E0B/60B4F8D6" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60A0A46E/60B4F8D6" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60A0A500/60B4F8D6" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60A0A922/60B4F8D6" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60B4F8D6" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60AE5653/60B4F8D6" Ref="C?"  Part="1" 
AR Path="/60A364EE/60B4F8D6" Ref="C?"  Part="1" 
F 0 "C?" H 2515 2746 50  0000 L CNN
F 1 "4,7" H 2515 2655 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 2438 2550 50  0001 C CNN
F 3 "~" H 2400 2700 50  0001 C CNN
	1    2400 2700
	1    0    0    -1  
$EndComp
$EndSCHEMATC
