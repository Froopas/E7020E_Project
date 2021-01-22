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
L Display_Character:CC56-12EWA U1
U 1 1 609305D0
P 5700 3750
F 0 "U1" H 5700 4417 50  0000 C CNN
F 1 "CC56-12EWA" H 5700 4326 50  0000 C CNN
F 2 "Display_7Segment:CA56-12EWA" H 5700 3150 50  0001 C CNN
F 3 "http://www.kingbrightusa.com/images/catalog/SPEC/CA56-12EWA.pdf" H 5270 3780 50  0001 C CNN
	1    5700 3750
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x12_Male J1
U 1 1 60932D15
P 7500 3550
F 0 "J1" H 7472 3524 50  0000 R CNN
F 1 "Conn_01x12_Male" H 7472 3433 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x12_P2.54mm_Vertical" H 7500 3550 50  0001 C CNN
F 3 "~" H 7500 3550 50  0001 C CNN
	1    7500 3550
	-1   0    0    -1  
$EndComp
Text GLabel 7100 3050 0    50   Input ~ 0
dpx
Text GLabel 7100 3150 0    50   Input ~ 0
g
Text GLabel 7100 3250 0    50   Input ~ 0
f
Text GLabel 7100 3350 0    50   Input ~ 0
e
Text GLabel 7100 3450 0    50   Input ~ 0
d
Text GLabel 7100 3550 0    50   Input ~ 0
c
Text GLabel 7100 3650 0    50   Input ~ 0
b
Text GLabel 7100 3750 0    50   Input ~ 0
a
Wire Wire Line
	7100 3050 7300 3050
Wire Wire Line
	7100 3150 7300 3150
Wire Wire Line
	7100 3250 7300 3250
Wire Wire Line
	7300 3350 7100 3350
Wire Wire Line
	7100 3450 7300 3450
Wire Wire Line
	7300 3550 7100 3550
Wire Wire Line
	7100 3650 7300 3650
Wire Wire Line
	7300 3750 7100 3750
Wire Wire Line
	7300 3850 6800 3850
Wire Wire Line
	6800 3950 7300 3950
Wire Wire Line
	7300 4050 6800 4050
Wire Wire Line
	6800 4150 7300 4150
Text GLabel 4400 4150 0    50   Input ~ 0
dpx
Text GLabel 4400 4050 0    50   Input ~ 0
g
Text GLabel 4400 3950 0    50   Input ~ 0
f
Text GLabel 4400 3850 0    50   Input ~ 0
e
Text GLabel 4400 3750 0    50   Input ~ 0
d
Text GLabel 4400 3650 0    50   Input ~ 0
c
Text GLabel 4400 3550 0    50   Input ~ 0
b
Text GLabel 4400 3450 0    50   Input ~ 0
a
Wire Wire Line
	4400 4150 4600 4150
Wire Wire Line
	4400 4050 4600 4050
Wire Wire Line
	4400 3950 4600 3950
Wire Wire Line
	4600 3850 4400 3850
Wire Wire Line
	4400 3750 4600 3750
Wire Wire Line
	4600 3650 4400 3650
Wire Wire Line
	4400 3550 4600 3550
Wire Wire Line
	4600 3450 4400 3450
$EndSCHEMATC
