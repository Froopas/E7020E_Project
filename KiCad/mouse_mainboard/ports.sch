EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 6
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
L Connector:Conn_01x06_Male PrgmPrt1
U 1 1 605DE1A3
P 5950 2350
F 0 "PrgmPrt1" H 5922 2324 50  0000 R CNN
F 1 "Conn_01x06_Male" H 5922 2233 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 5950 2350 50  0001 C CNN
F 3 "~" H 5950 2350 50  0001 C CNN
	1    5950 2350
	-1   0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0132
U 1 1 605DE1A9
P 5550 2150
F 0 "#PWR0132" H 5550 2000 50  0001 C CNN
F 1 "+3.3V" V 5565 2278 50  0000 L CNN
F 2 "" H 5550 2150 50  0001 C CNN
F 3 "" H 5550 2150 50  0001 C CNN
	1    5550 2150
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0133
U 1 1 605DE1AF
P 5550 2350
F 0 "#PWR0133" H 5550 2100 50  0001 C CNN
F 1 "GND" V 5555 2222 50  0000 R CNN
F 2 "" H 5550 2350 50  0001 C CNN
F 3 "" H 5550 2350 50  0001 C CNN
	1    5550 2350
	0    1    1    0   
$EndComp
Wire Wire Line
	5750 2150 5550 2150
Wire Wire Line
	5550 2350 5750 2350
Text GLabel 5500 2250 0    50   Output ~ 0
sw_clk
Text GLabel 5500 2450 0    50   BiDi ~ 0
sw_io
Text GLabel 5500 2550 0    50   Output ~ 0
sw_rst
Text GLabel 5500 2650 0    50   Output ~ 0
sw_o
Wire Wire Line
	5500 2450 5750 2450
Wire Wire Line
	5750 2550 5500 2550
Wire Wire Line
	5750 2650 5500 2650
Wire Wire Line
	5750 2250 5500 2250
$Comp
L Connector:USB_OTG J1
U 1 1 605DE1BF
P 6450 3800
F 0 "J1" H 6220 3789 50  0000 R CNN
F 1 "USB_OTG" H 6220 3698 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 6600 3750 50  0001 C CNN
F 3 " ~" H 6600 3750 50  0001 C CNN
	1    6450 3800
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6450 4200 6550 4200
$Comp
L power:GND #PWR0134
U 1 1 605DE1C6
P 6550 4350
F 0 "#PWR0134" H 6550 4100 50  0001 C CNN
F 1 "GND" H 6555 4177 50  0000 C CNN
F 2 "" H 6550 4350 50  0001 C CNN
F 3 "" H 6550 4350 50  0001 C CNN
	1    6550 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 4350 6550 4200
Connection ~ 6550 4200
Text GLabel 5950 3800 0    50   BiDi ~ 0
usb_d+
Text GLabel 5950 3900 0    50   BiDi ~ 0
usb_d-
$Comp
L power:+5V #PWR0135
U 1 1 605DE1D0
P 5900 3600
F 0 "#PWR0135" H 5900 3450 50  0001 C CNN
F 1 "+5V" V 5915 3728 50  0000 L CNN
F 2 "" H 5900 3600 50  0001 C CNN
F 3 "" H 5900 3600 50  0001 C CNN
	1    5900 3600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6150 3600 5900 3600
NoConn ~ 6150 4000
Wire Wire Line
	6150 3800 5950 3800
Wire Wire Line
	5950 3900 6150 3900
$EndSCHEMATC
