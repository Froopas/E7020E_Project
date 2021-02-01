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
Text GLabel 6100 4050 0    50   Input ~ 0
dpx
Text GLabel 6100 3950 0    50   Input ~ 0
g
Text GLabel 6100 3850 0    50   Input ~ 0
f
Text GLabel 6100 3750 0    50   Input ~ 0
e
Text GLabel 6100 3650 0    50   Input ~ 0
d
Text GLabel 6100 3550 0    50   Input ~ 0
c
Text GLabel 6100 3450 0    50   Input ~ 0
b
Text GLabel 6100 3350 0    50   Input ~ 0
a
Wire Wire Line
	6100 4050 6300 4050
Wire Wire Line
	6100 3950 6300 3950
Wire Wire Line
	6100 3850 6300 3850
Wire Wire Line
	6300 3750 6100 3750
Wire Wire Line
	6100 3650 6300 3650
Wire Wire Line
	6300 3550 6100 3550
Wire Wire Line
	6100 3450 6300 3450
Wire Wire Line
	6300 3350 6100 3350
$Comp
L Connector:Conn_01x11_Male J1
U 1 1 601BF9A8
P 7500 3550
F 0 "J1" H 7472 3574 50  0000 R CNN
F 1 "Conn_01x11_Male" H 7472 3483 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x11_P2.54mm_Vertical" H 7500 3550 50  0001 C CNN
F 3 "~" H 7500 3550 50  0001 C CNN
	1    7500 3550
	-1   0    0    -1  
$EndComp
$Comp
L e7020e_custom_footprint_lib:7_Segment_Display_3_char U1
U 1 1 601C1AAB
P 6550 3700
F 0 "U1" H 6550 4150 50  0000 C CNN
F 1 "7_Segment_Display_3_char" H 6550 3250 50  0000 C CNN
F 2 "e7020e_custom_footprint_lib:7 Segment Display 3 char" H 6550 4200 50  0001 C CNN
F 3 "" H 6550 4200 50  0001 C CNN
	1    6550 3700
	1    0    0    -1  
$EndComp
$EndSCHEMATC
