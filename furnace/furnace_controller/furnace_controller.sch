EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 18
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
S 6000 1500 1000 500 
U 609C9D41
F0 "MCU" 50
F1 "MCU.sch" 50
$EndSheet
$Sheet
S 1000 5000 1000 500 
U 609FED99
F0 "POWER_3V3_10V" 50
F1 "Power_3V3_10V.sch" 50
F2 "CHARGE_PUMP_CLK" I L 1000 5400 50 
F3 "+5V_IN" I L 1000 5100 50 
F4 "-5V_IN" I L 1000 5200 50 
$EndSheet
$Sheet
S 2500 5000 1000 700 
U 60A364EE
F0 "OLED_DISPLAY_CONNECTOR" 50
F1 "OLED_display_connector.sch" 50
F2 "DPY_PWR_EN" I L 2500 5100 50 
F3 "~DPY_RST" I L 2500 5300 50 
F4 "SDA" I L 2500 5600 50 
F5 "SCK" I L 2500 5500 50 
$EndSheet
$Sheet
S 4000 5000 1000 500 
U 60A36559
F0 "KEYBOARD_CONNECTOR" 50
F1 "Keyboard_connector.sch" 50
F2 "KYBD" B L 4000 5250 50 
$EndSheet
$Comp
L Connector:Conn_01x04_Male J?
U 1 1 60A373FD
P 7000 3950
AR Path="/609CA1D9/60A373FD" Ref="J?"  Part="1" 
AR Path="/60A373FD" Ref="J?"  Part="1" 
F 0 "J?" H 7108 4231 50  0000 C CNN
F 1 "Conn_01x04_Male" H 7108 4140 50  0000 C CNN
F 2 "" H 7000 3950 50  0001 C CNN
F 3 "~" H 7000 3950 50  0001 C CNN
	1    7000 3950
	-1   0    0    -1  
$EndComp
Text Notes 7450 4000 0    50   ~ 0
I2C_DISPLAY
$Sheet
S 1000 4000 1000 500 
U 609CA6A8
F0 "ISOLATED_TEMP_SENSOR" 50
F1 "Isolated_temp_sensor.sch" 50
F2 "TC-" I L 1000 4350 50 
F3 "~CS" I R 2000 4100 50 
F4 "TC+" I L 1000 4150 50 
F5 "SCK" I R 2000 4200 50 
F6 "MISO" O R 2000 4400 50 
$EndSheet
$Sheet
S 5500 4000 1000 500 
U 60B1951B
F0 "MICRO_SD_CARD" 50
F1 "Micro_SD_card.sch" 50
F2 "~CS~" I L 5500 4100 50 
F3 "MOSI" I L 5500 4300 50 
F4 "SCK" I L 5500 4200 50 
F5 "MISO" O L 5500 4400 50 
$EndSheet
$Sheet
S 5500 5000 1000 500 
U 60B39FE1
F0 "BUZZER" 50
F1 "Buzzer.sch" 50
F2 "EN" I L 5500 5250 50 
$EndSheet
$EndSCHEMATC
