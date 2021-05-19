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
P 6100 4400
AR Path="/609CC27B" Ref="U?"  Part="1" 
AR Path="/609C9D41/609CC27B" Ref="U?"  Part="1" 
F 0 "U?" H 6700 5100 50  0000 C CNN
F 1 "STM32F103C6Tx" H 6950 5000 50  0000 C CNN
F 2 "Package_QFP:LQFP-48_7x7mm_P0.5mm" H 5500 3000 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/CD00210843.pdf" H 6100 4400 50  0001 C CNN
	1    6100 4400
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
Text Notes 6300 1100 2    197  ~ 0
MCU\n
$Comp
L Device:R R?
U 1 1 60B4CB82
P 4700 2650
AR Path="/60B4CB82" Ref="R?"  Part="1" 
AR Path="/609C9D41/60B4CB82" Ref="R?"  Part="1" 
F 0 "R?" H 4770 2696 50  0000 L CNN
F 1 "10k" H 4770 2605 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 4630 2650 50  0001 C CNN
F 3 "~" H 4700 2650 50  0001 C CNN
	1    4700 2650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60B4CB88
P 6200 6000
AR Path="/60B4CB88" Ref="#PWR?"  Part="1" 
AR Path="/609C9D41/60B4CB88" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6200 5750 50  0001 C CNN
F 1 "GND" H 6205 5827 50  0000 C CNN
F 2 "" H 6200 6000 50  0001 C CNN
F 3 "" H 6200 6000 50  0001 C CNN
	1    6200 6000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 60B4CB8E
P 6550 2150
AR Path="/60B4CB8E" Ref="C?"  Part="1" 
AR Path="/609C9D41/60B4CB8E" Ref="C?"  Part="1" 
F 0 "C?" H 6665 2196 50  0000 L CNN
F 1 "0,1" H 6665 2105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 6588 2000 50  0001 C CNN
F 3 "~" H 6550 2150 50  0001 C CNN
	1    6550 2150
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 60B4D7B8
P 7750 2000
AR Path="/609CA6A8/60B4D7B8" Ref="#PWR?"  Part="1" 
AR Path="/609C9D41/60B4D7B8" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7750 1850 50  0001 C CNN
F 1 "+3V3" H 7765 2173 50  0000 C CNN
F 2 "" H 7750 2000 50  0001 C CNN
F 3 "" H 7750 2000 50  0001 C CNN
	1    7750 2000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 60B4F8D6
P 7750 2150
AR Path="/60B4F8D6" Ref="C?"  Part="1" 
AR Path="/609CA6A8/609D24C0/60B4F8D6" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60A08E0B/60B4F8D6" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60A0A46E/60B4F8D6" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60A0A500/60B4F8D6" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60A0A922/60B4F8D6" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60B4F8D6" Ref="C?"  Part="1" 
AR Path="/609CA6A8/60AE5653/60B4F8D6" Ref="C?"  Part="1" 
AR Path="/60A364EE/60B4F8D6" Ref="C?"  Part="1" 
AR Path="/609C9D41/60B4F8D6" Ref="C?"  Part="1" 
F 0 "C?" H 7865 2196 50  0000 L CNN
F 1 "4,7" H 7865 2105 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.33x1.80mm_HandSolder" H 7788 2000 50  0001 C CNN
F 3 "~" H 7750 2150 50  0001 C CNN
	1    7750 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 5900 6000 5900
Wire Wire Line
	6200 5900 6200 6000
Connection ~ 6200 5900
Connection ~ 6000 5900
Wire Wire Line
	6000 5900 6100 5900
Connection ~ 6100 5900
Wire Wire Line
	6100 5900 6200 5900
$Comp
L Device:C C?
U 1 1 60A4CF16
P 6950 2150
AR Path="/60A4CF16" Ref="C?"  Part="1" 
AR Path="/609C9D41/60A4CF16" Ref="C?"  Part="1" 
F 0 "C?" H 7065 2196 50  0000 L CNN
F 1 "0,1" H 7065 2105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 6988 2000 50  0001 C CNN
F 3 "~" H 6950 2150 50  0001 C CNN
	1    6950 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 60A4D090
P 7350 2150
AR Path="/60A4D090" Ref="C?"  Part="1" 
AR Path="/609C9D41/60A4D090" Ref="C?"  Part="1" 
F 0 "C?" H 7465 2196 50  0000 L CNN
F 1 "0,1" H 7465 2105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 7388 2000 50  0001 C CNN
F 3 "~" H 7350 2150 50  0001 C CNN
	1    7350 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 60A4D2CE
P 7350 3050
AR Path="/60A4D2CE" Ref="C?"  Part="1" 
AR Path="/609C9D41/60A4D2CE" Ref="C?"  Part="1" 
F 0 "C?" H 7465 3096 50  0000 L CNN
F 1 "0,01" H 7465 3005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 7388 2900 50  0001 C CNN
F 3 "~" H 7350 3050 50  0001 C CNN
	1    7350 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 60A4D379
P 7750 3050
AR Path="/60A4D379" Ref="C?"  Part="1" 
AR Path="/609C9D41/60A4D379" Ref="C?"  Part="1" 
F 0 "C?" H 7865 3096 50  0000 L CNN
F 1 "1u" H 7865 3005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 7788 2900 50  0001 C CNN
F 3 "~" H 7750 3050 50  0001 C CNN
	1    7750 3050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60A5067C
P 7750 2300
AR Path="/60A5067C" Ref="#PWR?"  Part="1" 
AR Path="/609C9D41/60A5067C" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7750 2050 50  0001 C CNN
F 1 "GND" H 7755 2127 50  0000 C CNN
F 2 "" H 7750 2300 50  0001 C CNN
F 3 "" H 7750 2300 50  0001 C CNN
	1    7750 2300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60A508BF
P 7750 3200
AR Path="/60A508BF" Ref="#PWR?"  Part="1" 
AR Path="/609C9D41/60A508BF" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7750 2950 50  0001 C CNN
F 1 "GND" H 7755 3027 50  0000 C CNN
F 2 "" H 7750 3200 50  0001 C CNN
F 3 "" H 7750 3200 50  0001 C CNN
	1    7750 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 2900 6100 2900
Connection ~ 6100 2900
Wire Wire Line
	6100 2900 6000 2900
Connection ~ 7750 3200
Wire Wire Line
	7350 3200 7750 3200
$Comp
L Device:Crystal Y?
U 1 1 60A53D72
P 3350 3600
F 0 "Y?" H 3350 3868 50  0000 C CNN
F 1 "8MHz" H 3350 3777 50  0000 C CNN
F 2 "" H 3350 3600 50  0001 C CNN
F 3 "~" H 3350 3600 50  0001 C CNN
	1    3350 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 60A55C72
P 3000 3750
AR Path="/60A55C72" Ref="C?"  Part="1" 
AR Path="/609C9D41/60A55C72" Ref="C?"  Part="1" 
F 0 "C?" H 3115 3796 50  0000 L CNN
F 1 "10p" H 3115 3705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 3038 3600 50  0001 C CNN
F 3 "~" H 3000 3750 50  0001 C CNN
	1    3000 3750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 60A56506
P 3600 3750
AR Path="/60A56506" Ref="C?"  Part="1" 
AR Path="/609C9D41/60A56506" Ref="C?"  Part="1" 
F 0 "C?" H 3715 3796 50  0000 L CNN
F 1 "10p" H 3715 3705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 3638 3600 50  0001 C CNN
F 3 "~" H 3600 3750 50  0001 C CNN
	1    3600 3750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60A57477
P 3000 3900
AR Path="/60A57477" Ref="#PWR?"  Part="1" 
AR Path="/609C9D41/60A57477" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3000 3650 50  0001 C CNN
F 1 "GND" H 3005 3727 50  0000 C CNN
F 2 "" H 3000 3900 50  0001 C CNN
F 3 "" H 3000 3900 50  0001 C CNN
	1    3000 3900
	1    0    0    -1  
$EndComp
Connection ~ 3000 3900
Wire Wire Line
	3000 3600 3200 3600
Wire Wire Line
	3500 3600 3600 3600
Wire Wire Line
	3900 3600 3600 3600
Connection ~ 3600 3600
Wire Wire Line
	3000 3900 3600 3900
$Comp
L Device:R R?
U 1 1 60A5E844
P 4050 3600
AR Path="/60A5E844" Ref="R?"  Part="1" 
AR Path="/609C9D41/60A5E844" Ref="R?"  Part="1" 
F 0 "R?" V 4150 3550 50  0000 L CNN
F 1 "0" V 3950 3600 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 3980 3600 50  0001 C CNN
F 3 "~" H 4050 3600 50  0001 C CNN
	1    4050 3600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4300 3500 4300 3250
Wire Wire Line
	4300 3250 3000 3250
Wire Wire Line
	3000 3250 3000 3600
Connection ~ 3000 3600
$Comp
L Device:C C?
U 1 1 60A7599F
P 4700 3050
AR Path="/60A7599F" Ref="C?"  Part="1" 
AR Path="/609C9D41/60A7599F" Ref="C?"  Part="1" 
F 0 "C?" H 4815 3096 50  0000 L CNN
F 1 "0,1" H 4815 3005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 4738 2900 50  0001 C CNN
F 3 "~" H 4700 3050 50  0001 C CNN
	1    4700 3050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60A77B5B
P 4700 3200
AR Path="/60A77B5B" Ref="#PWR?"  Part="1" 
AR Path="/609C9D41/60A77B5B" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4700 2950 50  0001 C CNN
F 1 "GND" H 4705 3027 50  0000 C CNN
F 2 "" H 4700 3200 50  0001 C CNN
F 3 "" H 4700 3200 50  0001 C CNN
	1    4700 3200
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 60A78458
P 4700 2500
AR Path="/609CA6A8/60A78458" Ref="#PWR?"  Part="1" 
AR Path="/609C9D41/60A78458" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 4700 2350 50  0001 C CNN
F 1 "+3V3" H 4715 2673 50  0000 C CNN
F 2 "" H 4700 2500 50  0001 C CNN
F 3 "" H 4700 2500 50  0001 C CNN
	1    4700 2500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60A78F77
P 5300 3300
AR Path="/60A78F77" Ref="#PWR?"  Part="1" 
AR Path="/609C9D41/60A78F77" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5300 3050 50  0001 C CNN
F 1 "GND" H 5305 3127 50  0000 C CNN
F 2 "" H 5300 3300 50  0001 C CNN
F 3 "" H 5300 3300 50  0001 C CNN
	1    5300 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 3300 5300 3300
Wire Wire Line
	4700 2800 4700 2850
Wire Wire Line
	4700 2850 5300 2850
Wire Wire Line
	5300 2850 5300 3100
Wire Wire Line
	5300 3100 5400 3100
Connection ~ 4700 2850
Wire Wire Line
	4700 2850 4700 2900
Wire Wire Line
	4300 3500 5400 3500
Wire Wire Line
	4200 3600 5400 3600
$Comp
L power:+3V3 #PWR?
U 1 1 60A96EAD
P 7750 2900
AR Path="/609CA6A8/60A96EAD" Ref="#PWR?"  Part="1" 
AR Path="/609C9D41/60A96EAD" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7750 2750 50  0001 C CNN
F 1 "+3V3" H 7765 3073 50  0000 C CNN
F 2 "" H 7750 2900 50  0001 C CNN
F 3 "" H 7750 2900 50  0001 C CNN
	1    7750 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 2900 7350 2900
Wire Wire Line
	6000 2900 6000 2000
Connection ~ 6000 2900
Wire Wire Line
	6550 2300 6950 2300
Connection ~ 7750 2300
Connection ~ 6950 2300
Wire Wire Line
	6950 2300 7350 2300
Connection ~ 7350 2300
Wire Wire Line
	7350 2300 7750 2300
Wire Wire Line
	6000 2000 6550 2000
Connection ~ 7750 2000
Connection ~ 6550 2000
Wire Wire Line
	6550 2000 6950 2000
Connection ~ 6950 2000
Wire Wire Line
	6950 2000 7350 2000
Connection ~ 7350 2000
Wire Wire Line
	7350 2000 7750 2000
Wire Wire Line
	7350 2900 7750 2900
Connection ~ 7350 2900
Connection ~ 7750 2900
Text HLabel 9000 4000 0    50   Input ~ 0
DPY_PWR_EN
Text HLabel 8950 4200 0    50   Input ~ 0
~DPY_RST
Text HLabel 8900 4450 0    50   Input ~ 0
DPY_I2C_SDA
Text HLabel 8900 4350 0    50   Input ~ 0
DPY_I2C_SCK
Text HLabel 9050 4850 0    50   Input ~ 0
CHARGE_PUMP_CLK
Text HLabel 8750 5150 0    50   BiDi ~ 0
KYBD
Text HLabel 7250 4600 2    50   Output ~ 0
TEMP_SPI_MISO
Text HLabel 7250 4450 2    50   Input ~ 0
TEMP_SPI_SCK
Text HLabel 7250 4250 2    50   Input ~ 0
TEMP_SPI_~CS
Text HLabel 7850 5300 0    50   BiDi ~ 0
TEMP_I2C_SDA
Text HLabel 7850 5200 0    50   Input ~ 0
TEMP_I2C_SCL
Text HLabel 8750 5550 0    50   Input ~ 0
BZ_EN
Text HLabel 7650 5800 0    50   Input ~ 0
SD_SPI_~CS~
Text HLabel 7650 5900 0    50   Input ~ 0
SD_SPI_MOSI
Text HLabel 7650 6100 0    50   Input ~ 0
SD_SPI_SCL
Text HLabel 7650 6300 0    50   Output ~ 0
SD_SPI_MISO
Text HLabel 8550 6000 2    50   Input ~ 0
EXT_UART_RX
Text HLabel 8500 6200 2    50   Output ~ 0
HEATER_CTRL
$EndSCHEMATC
