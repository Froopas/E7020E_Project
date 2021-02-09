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
$Comp
L Device:R R1
U 1 1 602830E3
P 7450 3050
F 0 "R1" V 7350 3850 50  0000 C CNN
F 1 "220R" V 7350 4050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7380 3050 50  0001 C CNN
F 3 "~" H 7450 3050 50  0001 C CNN
	1    7450 3050
	0    1    1    0   
$EndComp
$Comp
L Device:R R2
U 1 1 60286E76
P 7450 3150
F 0 "R2" V 7350 3950 50  0000 C CNN
F 1 "220R" V 7350 4150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7380 3150 50  0001 C CNN
F 3 "~" H 7450 3150 50  0001 C CNN
	1    7450 3150
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 6028741A
P 7450 3250
F 0 "R3" V 7350 4050 50  0000 C CNN
F 1 "220R" V 7350 4250 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7380 3250 50  0001 C CNN
F 3 "~" H 7450 3250 50  0001 C CNN
	1    7450 3250
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 60287A15
P 7450 3350
F 0 "R4" V 7350 4150 50  0000 C CNN
F 1 "220R" V 7350 4350 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7380 3350 50  0001 C CNN
F 3 "~" H 7450 3350 50  0001 C CNN
	1    7450 3350
	0    1    1    0   
$EndComp
$Comp
L Device:R R5
U 1 1 6028810D
P 7450 3450
F 0 "R5" V 7350 4250 50  0000 C CNN
F 1 "220R" V 7350 4450 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7380 3450 50  0001 C CNN
F 3 "~" H 7450 3450 50  0001 C CNN
	1    7450 3450
	0    1    1    0   
$EndComp
$Comp
L Device:R R6
U 1 1 602886CF
P 7450 3550
F 0 "R6" V 7350 4350 50  0000 C CNN
F 1 "220R" V 7350 4550 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7380 3550 50  0001 C CNN
F 3 "~" H 7450 3550 50  0001 C CNN
	1    7450 3550
	0    1    1    0   
$EndComp
$Comp
L Device:R R7
U 1 1 60288D1C
P 7450 3650
F 0 "R7" V 7350 4450 50  0000 C CNN
F 1 "220R" V 7350 4650 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7380 3650 50  0001 C CNN
F 3 "~" H 7450 3650 50  0001 C CNN
	1    7450 3650
	0    1    1    0   
$EndComp
$Comp
L Device:R R8
U 1 1 602893DE
P 7450 3750
F 0 "R8" V 7350 4550 50  0000 C CNN
F 1 "220R" V 7350 4750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7380 3750 50  0001 C CNN
F 3 "~" H 7450 3750 50  0001 C CNN
	1    7450 3750
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x11_Male J1
U 1 1 601BF9A8
P 7800 3550
F 0 "J1" H 7900 4300 50  0000 R CNN
F 1 "Conn_01x11_Male" H 8150 4200 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x11_P2.54mm_Vertical" H 7800 3550 50  0001 C CNN
F 3 "~" H 7800 3550 50  0001 C CNN
	1    7800 3550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6800 3850 7600 3850
Wire Wire Line
	6800 3950 7600 3950
Wire Wire Line
	6800 4050 7600 4050
$EndSCHEMATC
