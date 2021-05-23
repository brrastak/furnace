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
L furnace_230V-rescue:BTA16-600B-Triac_Thyristor Q?
U 1 1 60AB340A
P 6300 3850
F 0 "Q?" H 6429 3896 50  0000 L CNN
F 1 "BTA16-600B" H 6429 3805 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 6500 3775 50  0001 L CIN
F 3 "https://www.st.com/resource/en/datasheet/bta16.pdf" H 6300 3850 50  0001 L CNN
	1    6300 3850
	1    0    0    -1  
$EndComp
$Comp
L Relay_SolidState:MOC3052M U?
U 1 1 60AB3410
P 5100 4100
F 0 "U?" H 5100 4425 50  0000 C CNN
F 1 "MOC3052M" H 5100 4334 50  0000 C CNN
F 2 "" H 4900 3900 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/MOC3052M-D.PDF" H 5100 4100 50  0001 L CNN
	1    5100 4100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 60AB3416
P 5450 3450
F 0 "R?" H 5520 3496 50  0000 L CNN
F 1 "470 0,5W" H 5520 3405 50  0000 L CNN
F 2 "" V 5380 3450 50  0001 C CNN
F 3 "~" H 5450 3450 50  0001 C CNN
	1    5450 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 60B5C7C1
P 4100 4000
F 0 "R?" V 3893 4000 50  0000 C CNN
F 1 "100" V 3984 4000 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4030 4000 50  0001 C CNN
F 3 "~" H 4100 4000 50  0001 C CNN
	1    4100 4000
	0    1    1    0   
$EndComp
$EndSCHEMATC
