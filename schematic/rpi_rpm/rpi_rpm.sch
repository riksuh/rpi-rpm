EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L Connector_Generic:Conn_02x13_Odd_Even J1
U 1 1 5DAF62B8
P 5500 2200
F 0 "J1" H 5550 3017 50  0000 C CNN
F 1 "Raspberry Pi Pins" H 5550 2926 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x13_P2.54mm_Vertical" H 5500 2200 50  0001 C CNN
F 3 "~" H 5500 2200 50  0001 C CNN
	1    5500 2200
	1    0    0    -1  
$EndComp
$Comp
L Isolator:4N35 U1
U 1 1 5DAF87AC
P 5550 3600
F 0 "U1" H 5550 3925 50  0000 C CNN
F 1 "4N35" H 5550 3834 50  0000 C CNN
F 2 "Package_DIP:DIP-6_W7.62mm" H 5350 3400 50  0001 L CIN
F 3 "https://www.vishay.com/docs/81181/4n35.pdf" H 5550 3600 50  0001 L CNN
	1    5550 3600
	1    0    0    -1  
$EndComp
$Comp
L Isolator:4N35 U2
U 1 1 5DAF9B30
P 5550 4600
F 0 "U2" H 5550 4925 50  0000 C CNN
F 1 "4N35" H 5550 4834 50  0000 C CNN
F 2 "Package_DIP:DIP-6_W7.62mm" H 5350 4400 50  0001 L CIN
F 3 "https://www.vishay.com/docs/81181/4n35.pdf" H 5550 4600 50  0001 L CNN
	1    5550 4600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5DB00DB0
P 5000 1900
F 0 "#PWR01" H 5000 1650 50  0001 C CNN
F 1 "GND" H 5005 1727 50  0000 C CNN
F 2 "" H 5000 1900 50  0001 C CNN
F 3 "" H 5000 1900 50  0001 C CNN
	1    5000 1900
	-1   0    0    1   
$EndComp
Wire Wire Line
	5000 1900 5000 2000
Wire Wire Line
	5000 2000 5300 2000
Text GLabel 4700 2100 0    50   Input ~ 0
PWR_SW
Text GLabel 4700 2200 0    50   Input ~ 0
RES_SW
Text GLabel 4700 2300 0    50   Input ~ 0
PWR_LED
Wire Wire Line
	4700 2100 5300 2100
Wire Wire Line
	4700 2200 5300 2200
Wire Wire Line
	4700 2300 5300 2300
NoConn ~ 5300 1700
NoConn ~ 5300 1800
NoConn ~ 5300 1900
NoConn ~ 5300 1600
NoConn ~ 5800 1700
NoConn ~ 5800 1800
NoConn ~ 5800 1900
NoConn ~ 5800 2000
NoConn ~ 5800 2100
NoConn ~ 5800 2200
NoConn ~ 5800 2300
NoConn ~ 5800 2400
NoConn ~ 5800 2500
NoConn ~ 5800 2600
NoConn ~ 5800 2700
NoConn ~ 5800 2800
NoConn ~ 5300 2800
NoConn ~ 5300 2700
NoConn ~ 5300 2600
NoConn ~ 5300 2500
NoConn ~ 5300 2400
Text GLabel 4250 3500 0    50   Input ~ 0
PWR_SW
Text GLabel 4250 4500 0    50   Input ~ 0
RES_SW
$Comp
L Device:R R1
U 1 1 5DB0990B
P 4750 3500
F 0 "R1" V 4543 3500 50  0000 C CNN
F 1 "330R" V 4634 3500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4680 3500 50  0001 C CNN
F 3 "~" H 4750 3500 50  0001 C CNN
	1    4750 3500
	0    1    1    0   
$EndComp
Wire Wire Line
	4250 3500 4600 3500
Wire Wire Line
	4900 3500 5250 3500
$Comp
L power:GND #PWR02
U 1 1 5DB0A99F
P 4750 3800
F 0 "#PWR02" H 4750 3550 50  0001 C CNN
F 1 "GND" H 4755 3627 50  0000 C CNN
F 2 "" H 4750 3800 50  0001 C CNN
F 3 "" H 4750 3800 50  0001 C CNN
	1    4750 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 3800 4750 3700
Wire Wire Line
	4750 3700 5250 3700
$Comp
L Device:R R3
U 1 1 5DB0C1CB
P 4750 4500
F 0 "R3" V 4543 4500 50  0000 C CNN
F 1 "330R" V 4634 4500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4680 4500 50  0001 C CNN
F 3 "~" H 4750 4500 50  0001 C CNN
	1    4750 4500
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5DB0C90C
P 4750 4800
F 0 "#PWR03" H 4750 4550 50  0001 C CNN
F 1 "GND" H 4755 4627 50  0000 C CNN
F 2 "" H 4750 4800 50  0001 C CNN
F 3 "" H 4750 4800 50  0001 C CNN
	1    4750 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 4500 4600 4500
Wire Wire Line
	4900 4500 5250 4500
Wire Wire Line
	5250 4700 4750 4700
Wire Wire Line
	4750 4700 4750 4800
$Comp
L Connector_Generic:Conn_01x02 J2
U 1 1 5DB0F773
P 6950 3600
F 0 "J2" H 7030 3592 50  0000 L CNN
F 1 "PWR_SW_CONN" H 7030 3501 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x01_P2.54mm_Vertical" H 6950 3600 50  0001 C CNN
F 3 "~" H 6950 3600 50  0001 C CNN
	1    6950 3600
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J3
U 1 1 5DB1090C
P 6950 4600
F 0 "J3" H 7030 4592 50  0000 L CNN
F 1 "RES_SW_CONN" H 7030 4501 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x01_P2.54mm_Vertical" H 6950 4600 50  0001 C CNN
F 3 "~" H 6950 4600 50  0001 C CNN
	1    6950 4600
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J4
U 1 1 5DB11132
P 5000 5800
F 0 "J4" H 5100 5700 50  0000 C CNN
F 1 "PWR_LED_CONN" H 5350 5800 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x01_P2.54mm_Vertical" H 5000 5800 50  0001 C CNN
F 3 "~" H 5000 5800 50  0001 C CNN
	1    5000 5800
	-1   0    0    1   
$EndComp
$Comp
L Device:R R2
U 1 1 5DB1AEE0
P 6250 3600
F 0 "R2" V 6043 3600 50  0000 C CNN
F 1 "100R" V 6134 3600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6180 3600 50  0001 C CNN
F 3 "~" H 6250 3600 50  0001 C CNN
	1    6250 3600
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 5DB1BC1D
P 6250 4600
F 0 "R4" V 6043 4600 50  0000 C CNN
F 1 "100R" V 6134 4600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 6180 4600 50  0001 C CNN
F 3 "~" H 6250 4600 50  0001 C CNN
	1    6250 4600
	0    1    1    0   
$EndComp
Wire Wire Line
	5850 3600 6100 3600
Wire Wire Line
	6400 3600 6750 3600
Wire Wire Line
	5850 3700 6750 3700
Wire Wire Line
	5850 4600 6100 4600
Wire Wire Line
	6400 4600 6750 4600
Wire Wire Line
	5850 4700 6750 4700
NoConn ~ 5850 3500
NoConn ~ 5850 4500
$Comp
L power:GND #PWR04
U 1 1 5DB3355E
P 5650 5600
F 0 "#PWR04" H 5650 5350 50  0001 C CNN
F 1 "GND" H 5655 5427 50  0000 C CNN
F 2 "" H 5650 5600 50  0001 C CNN
F 3 "" H 5650 5600 50  0001 C CNN
	1    5650 5600
	-1   0    0    1   
$EndComp
$Comp
L Device:R R6
U 1 1 5DB34608
P 6050 6100
F 0 "R6" V 5843 6100 50  0000 C CNN
F 1 "33k" V 5934 6100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5980 6100 50  0001 C CNN
F 3 "~" H 6050 6100 50  0001 C CNN
	1    6050 6100
	0    1    1    0   
$EndComp
NoConn ~ 5800 1600
Wire Wire Line
	5650 6100 5900 6100
Wire Wire Line
	6200 6100 6450 6100
Wire Wire Line
	6200 5800 6450 5800
$Comp
L power:GND #PWR05
U 1 1 5DB5FD79
P 6450 6100
F 0 "#PWR05" H 6450 5850 50  0001 C CNN
F 1 "GND" V 6455 5972 50  0000 R CNN
F 2 "" H 6450 6100 50  0001 C CNN
F 3 "" H 6450 6100 50  0001 C CNN
	1    6450 6100
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R5
U 1 1 5DB0DBB8
P 6050 5800
F 0 "R5" V 5843 5800 50  0000 C CNN
F 1 "18k" V 5934 5800 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5980 5800 50  0001 C CNN
F 3 "~" H 6050 5800 50  0001 C CNN
	1    6050 5800
	0    1    1    0   
$EndComp
Text GLabel 6450 5800 2    50   Input ~ 0
PWR_LED
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5DB752CF
P 5300 5600
F 0 "#FLG0101" H 5300 5675 50  0001 C CNN
F 1 "PWR_FLAG" H 5300 5773 50  0000 C CNN
F 2 "" H 5300 5600 50  0001 C CNN
F 3 "~" H 5300 5600 50  0001 C CNN
	1    5300 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 5700 5300 5700
Wire Wire Line
	5650 5700 5650 5600
Wire Wire Line
	5300 5700 5300 5600
Connection ~ 5300 5700
Wire Wire Line
	5300 5700 5650 5700
Wire Wire Line
	5200 5800 5650 5800
Wire Wire Line
	5650 6100 5650 5800
Connection ~ 5650 5800
Wire Wire Line
	5650 5800 5900 5800
$EndSCHEMATC
