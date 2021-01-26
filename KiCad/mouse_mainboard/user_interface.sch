EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 6
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
L Device:R R?
U 1 1 606133D6
P 1450 5650
AR Path="/606133D6" Ref="R?"  Part="1" 
AR Path="/606120FA/606133D6" Ref="R12"  Part="1" 
F 0 "R12" V 1243 5650 50  0000 C CNN
F 1 "750R" V 1334 5650 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" V 1380 5650 50  0001 C CNN
F 3 "~" H 1450 5650 50  0001 C CNN
	1    1450 5650
	0    -1   1    0   
$EndComp
$Comp
L Device:LED D?
U 1 1 606133DC
P 1750 5650
AR Path="/606133DC" Ref="D?"  Part="1" 
AR Path="/606120FA/606133DC" Ref="D1"  Part="1" 
F 0 "D1" H 1743 5395 50  0000 C CNN
F 1 "LED" H 1743 5486 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 1750 5650 50  0001 C CNN
F 3 "~" H 1750 5650 50  0001 C CNN
	1    1750 5650
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0142
U 1 1 6064CE68
P 6200 3750
F 0 "#PWR0142" H 6200 3500 50  0001 C CNN
F 1 "GND" V 6205 3622 50  0000 R CNN
F 2 "" H 6200 3750 50  0001 C CNN
F 3 "" H 6200 3750 50  0001 C CNN
	1    6200 3750
	0    1    -1   0   
$EndComp
$Comp
L Device:R R21
U 1 1 6064CE74
P 6400 4200
F 0 "R21" H 6330 4154 50  0000 R CNN
F 1 "1k" H 6330 4245 50  0000 R CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" V 6330 4200 50  0001 C CNN
F 3 "~" H 6400 4200 50  0001 C CNN
	1    6400 4200
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR0143
U 1 1 6064E222
P 5400 3750
F 0 "#PWR0143" H 5400 3500 50  0001 C CNN
F 1 "GND" V 5405 3622 50  0000 R CNN
F 2 "" H 5400 3750 50  0001 C CNN
F 3 "" H 5400 3750 50  0001 C CNN
	1    5400 3750
	0    1    -1   0   
$EndComp
$Comp
L Device:R R19
U 1 1 6064E22E
P 5600 4200
F 0 "R19" H 5530 4154 50  0000 R CNN
F 1 "1k" H 5530 4245 50  0000 R CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" V 5530 4200 50  0001 C CNN
F 3 "~" H 5600 4200 50  0001 C CNN
	1    5600 4200
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR0144
U 1 1 6064EE1A
P 4600 3750
F 0 "#PWR0144" H 4600 3500 50  0001 C CNN
F 1 "GND" V 4605 3622 50  0000 R CNN
F 2 "" H 4600 3750 50  0001 C CNN
F 3 "" H 4600 3750 50  0001 C CNN
	1    4600 3750
	0    1    -1   0   
$EndComp
$Comp
L Device:R R17
U 1 1 6064EE26
P 4800 4200
F 0 "R17" H 4730 4154 50  0000 R CNN
F 1 "1k" H 4730 4245 50  0000 R CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" V 4730 4200 50  0001 C CNN
F 3 "~" H 4800 4200 50  0001 C CNN
	1    4800 4200
	1    0    0    1   
$EndComp
$Comp
L Device:R R14
U 1 1 606784E7
P 7200 1400
F 0 "R14" H 7130 1354 50  0000 R CNN
F 1 "1k" H 7130 1445 50  0000 R CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" V 7130 1400 50  0001 C CNN
F 3 "~" H 7200 1400 50  0001 C CNN
	1    7200 1400
	1    0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR0145
U 1 1 60699857
P 7000 1850
F 0 "#PWR0145" H 7000 1700 50  0001 C CNN
F 1 "+3.3V" V 7015 1978 50  0000 L CNN
F 2 "" H 7000 1850 50  0001 C CNN
F 3 "" H 7000 1850 50  0001 C CNN
	1    7000 1850
	0    -1   1    0   
$EndComp
$Comp
L Device:R R15
U 1 1 6069BCFC
P 6350 1400
F 0 "R15" H 6280 1354 50  0000 R CNN
F 1 "1k" H 6280 1445 50  0000 R CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" V 6280 1400 50  0001 C CNN
F 3 "~" H 6350 1400 50  0001 C CNN
	1    6350 1400
	1    0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR0146
U 1 1 6069BD02
P 6150 1850
F 0 "#PWR0146" H 6150 1700 50  0001 C CNN
F 1 "+3.3V" V 6165 1978 50  0000 L CNN
F 2 "" H 6150 1850 50  0001 C CNN
F 3 "" H 6150 1850 50  0001 C CNN
	1    6150 1850
	0    -1   1    0   
$EndComp
$Comp
L Device:R R16
U 1 1 6069D317
P 5500 1400
F 0 "R16" H 5430 1354 50  0000 R CNN
F 1 "1k" H 5430 1445 50  0000 R CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" V 5430 1400 50  0001 C CNN
F 3 "~" H 5500 1400 50  0001 C CNN
	1    5500 1400
	1    0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR0147
U 1 1 6069D31D
P 5300 1850
F 0 "#PWR0147" H 5300 1700 50  0001 C CNN
F 1 "+3.3V" V 5315 1978 50  0000 L CNN
F 2 "" H 5300 1850 50  0001 C CNN
F 3 "" H 5300 1850 50  0001 C CNN
	1    5300 1850
	0    -1   1    0   
$EndComp
$Comp
L Device:R R18
U 1 1 6069FA0C
P 4650 1400
F 0 "R18" H 4580 1354 50  0000 R CNN
F 1 "1k" H 4580 1445 50  0000 R CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" V 4580 1400 50  0001 C CNN
F 3 "~" H 4650 1400 50  0001 C CNN
	1    4650 1400
	1    0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR0148
U 1 1 6069FA12
P 4450 1850
F 0 "#PWR0148" H 4450 1700 50  0001 C CNN
F 1 "+3.3V" V 4465 1978 50  0000 L CNN
F 2 "" H 4450 1850 50  0001 C CNN
F 3 "" H 4450 1850 50  0001 C CNN
	1    4450 1850
	0    -1   1    0   
$EndComp
$Comp
L Device:R R20
U 1 1 606A1C28
P 3800 1400
F 0 "R20" H 3730 1354 50  0000 R CNN
F 1 "1k" H 3730 1445 50  0000 R CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" V 3730 1400 50  0001 C CNN
F 3 "~" H 3800 1400 50  0001 C CNN
	1    3800 1400
	1    0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR0149
U 1 1 606A1C2E
P 3600 1850
F 0 "#PWR0149" H 3600 1700 50  0001 C CNN
F 1 "+3.3V" V 3615 1978 50  0000 L CNN
F 2 "" H 3600 1850 50  0001 C CNN
F 3 "" H 3600 1850 50  0001 C CNN
	1    3600 1850
	0    -1   1    0   
$EndComp
$Comp
L Device:R R22
U 1 1 606AAAE5
P 2950 1400
F 0 "R22" H 2880 1354 50  0000 R CNN
F 1 "1k" H 2880 1445 50  0000 R CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" V 2880 1400 50  0001 C CNN
F 3 "~" H 2950 1400 50  0001 C CNN
	1    2950 1400
	1    0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR0150
U 1 1 606AAAEB
P 2750 1850
F 0 "#PWR0150" H 2750 1700 50  0001 C CNN
F 1 "+3.3V" V 2765 1978 50  0000 L CNN
F 2 "" H 2750 1850 50  0001 C CNN
F 3 "" H 2750 1850 50  0001 C CNN
	1    2750 1850
	0    -1   1    0   
$EndComp
$Comp
L Device:R R23
U 1 1 606AAAF7
P 2100 1400
F 0 "R23" H 2030 1354 50  0000 R CNN
F 1 "1k" H 2030 1445 50  0000 R CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" V 2030 1400 50  0001 C CNN
F 3 "~" H 2100 1400 50  0001 C CNN
	1    2100 1400
	1    0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR0151
U 1 1 606AAAFD
P 1900 1850
F 0 "#PWR0151" H 1900 1700 50  0001 C CNN
F 1 "+3.3V" V 1915 1978 50  0000 L CNN
F 2 "" H 1900 1850 50  0001 C CNN
F 3 "" H 1900 1850 50  0001 C CNN
	1    1900 1850
	0    -1   1    0   
$EndComp
$Comp
L Device:R R24
U 1 1 606C6569
P 1250 1400
F 0 "R24" H 1180 1354 50  0000 R CNN
F 1 "1k" H 1180 1445 50  0000 R CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" V 1180 1400 50  0001 C CNN
F 3 "~" H 1250 1400 50  0001 C CNN
	1    1250 1400
	1    0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR0152
U 1 1 606C656F
P 1050 1850
F 0 "#PWR0152" H 1050 1700 50  0001 C CNN
F 1 "+3.3V" V 1065 1978 50  0000 L CNN
F 2 "" H 1050 1850 50  0001 C CNN
F 3 "" H 1050 1850 50  0001 C CNN
	1    1050 1850
	0    -1   1    0   
$EndComp
$Comp
L Transistor_BJT:2N3055 Q7
U 1 1 60716530
P 4800 3850
F 0 "Q7" V 5128 3850 50  0000 C CNN
F 1 "BC817" V 5037 3850 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 5000 3775 50  0001 L CIN
F 3 "https://www.elfa.se/Web/Downloads/_t/ds/BC817_eng_tds.pdf" H 4800 3850 50  0001 L CNN
	1    4800 3850
	0    1    -1   0   
$EndComp
$Comp
L Transistor_BJT:2N3055 Q9
U 1 1 6072094B
P 5600 3850
F 0 "Q9" V 5928 3850 50  0000 C CNN
F 1 "BC817" V 5837 3850 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 5800 3775 50  0001 L CIN
F 3 "https://www.elfa.se/Web/Downloads/_t/ds/BC817_eng_tds.pdf" H 5600 3850 50  0001 L CNN
	1    5600 3850
	0    1    -1   0   
$EndComp
$Comp
L Transistor_BJT:2N3055 Q11
U 1 1 60720F32
P 6400 3850
F 0 "Q11" V 6728 3850 50  0000 C CNN
F 1 "BC817" V 6637 3850 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 6600 3775 50  0001 L CIN
F 3 "https://www.elfa.se/Web/Downloads/_t/ds/BC817_eng_tds.pdf" H 6400 3850 50  0001 L CNN
	1    6400 3850
	0    1    -1   0   
$EndComp
$Comp
L Transistor_BJT:BC807 Q12
U 1 1 60725FB0
P 7200 1750
F 0 "Q12" V 7435 1750 50  0000 C CNN
F 1 "BC807" V 7526 1750 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 7400 1675 50  0001 L CIN
F 3 "https://www.elfa.se/Web/Downloads/7x/_e/vfBC856x-to-BC857x_e.pdf" H 7200 1750 50  0001 L CNN
	1    7200 1750
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:BC807 Q10
U 1 1 6072C1A3
P 6350 1750
F 0 "Q10" V 6585 1750 50  0000 C CNN
F 1 "BC807" V 6676 1750 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 6550 1675 50  0001 L CIN
F 3 "https://www.elfa.se/Web/Downloads/7x/_e/vfBC856x-to-BC857x_e.pdf" H 6350 1750 50  0001 L CNN
	1    6350 1750
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:BC807 Q8
U 1 1 6072C724
P 5500 1750
F 0 "Q8" V 5735 1750 50  0000 C CNN
F 1 "BC807" V 5826 1750 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 5700 1675 50  0001 L CIN
F 3 "https://www.elfa.se/Web/Downloads/7x/_e/vfBC856x-to-BC857x_e.pdf" H 5500 1750 50  0001 L CNN
	1    5500 1750
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:BC807 Q6
U 1 1 6072DA9C
P 4650 1750
F 0 "Q6" V 4885 1750 50  0000 C CNN
F 1 "BC807" V 4976 1750 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 4850 1675 50  0001 L CIN
F 3 "https://www.elfa.se/Web/Downloads/7x/_e/vfBC856x-to-BC857x_e.pdf" H 4650 1750 50  0001 L CNN
	1    4650 1750
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:BC807 Q5
U 1 1 6072E075
P 3800 1750
F 0 "Q5" V 4035 1750 50  0000 C CNN
F 1 "BC807" V 4126 1750 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 4000 1675 50  0001 L CIN
F 3 "https://www.elfa.se/Web/Downloads/7x/_e/vfBC856x-to-BC857x_e.pdf" H 3800 1750 50  0001 L CNN
	1    3800 1750
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:BC807 Q4
U 1 1 6072F524
P 2950 1750
F 0 "Q4" V 3185 1750 50  0000 C CNN
F 1 "BC807" V 3276 1750 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 3150 1675 50  0001 L CIN
F 3 "https://www.elfa.se/Web/Downloads/7x/_e/vfBC856x-to-BC857x_e.pdf" H 2950 1750 50  0001 L CNN
	1    2950 1750
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:BC807 Q2
U 1 1 6072FE45
P 2100 1750
F 0 "Q2" V 2335 1750 50  0000 C CNN
F 1 "BC807" V 2426 1750 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 2300 1675 50  0001 L CIN
F 3 "https://www.elfa.se/Web/Downloads/7x/_e/vfBC856x-to-BC857x_e.pdf" H 2100 1750 50  0001 L CNN
	1    2100 1750
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:BC807 Q1
U 1 1 60730AE2
P 1250 1750
F 0 "Q1" V 1485 1750 50  0000 C CNN
F 1 "BC807" V 1576 1750 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 1450 1675 50  0001 L CIN
F 3 "https://www.elfa.se/Web/Downloads/7x/_e/vfBC856x-to-BC857x_e.pdf" H 1250 1750 50  0001 L CNN
	1    1250 1750
	0    1    1    0   
$EndComp
$Comp
L Device:R R26
U 1 1 607582FF
P 1600 6900
F 0 "R26" H 1530 6854 50  0000 R CNN
F 1 "1k" H 1530 6945 50  0000 R CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" V 1530 6900 50  0001 C CNN
F 3 "~" H 1600 6900 50  0001 C CNN
	1    1600 6900
	0    -1   1    0   
$EndComp
$Comp
L Transistor_BJT:2N3055 Q3
U 1 1 60758305
P 1950 6900
F 0 "Q3" H 2141 6946 50  0000 L CNN
F 1 "BC817" H 2141 6855 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 2150 6825 50  0001 L CIN
F 3 "https://www.elfa.se/Web/Downloads/_t/ds/BC817_eng_tds.pdf" H 1950 6900 50  0001 L CNN
	1    1950 6900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 6076889F
P 1450 6500
AR Path="/6076889F" Ref="R?"  Part="1" 
AR Path="/606120FA/6076889F" Ref="R25"  Part="1" 
F 0 "R25" V 1243 6500 50  0000 C CNN
F 1 "750R" V 1334 6500 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" V 1380 6500 50  0001 C CNN
F 3 "~" H 1450 6500 50  0001 C CNN
	1    1450 6500
	0    -1   1    0   
$EndComp
$Comp
L Device:LED D?
U 1 1 607688A5
P 1750 6500
AR Path="/607688A5" Ref="D?"  Part="1" 
AR Path="/606120FA/607688A5" Ref="D2"  Part="1" 
F 0 "D2" H 1743 6245 50  0000 C CNN
F 1 "LED" H 1743 6336 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 1750 6500 50  0001 C CNN
F 3 "~" H 1750 6500 50  0001 C CNN
	1    1750 6500
	-1   0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 606133CA
P 1300 5650
AR Path="/606133CA" Ref="#PWR?"  Part="1" 
AR Path="/606120FA/606133CA" Ref="#PWR0139"  Part="1" 
F 0 "#PWR0139" H 1300 5500 50  0001 C CNN
F 1 "+3.3V" V 1315 5778 50  0000 L CNN
F 2 "" H 1300 5650 50  0001 C CNN
F 3 "" H 1300 5650 50  0001 C CNN
	1    1300 5650
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 60778E2C
P 1300 6500
AR Path="/60778E2C" Ref="#PWR?"  Part="1" 
AR Path="/606120FA/60778E2C" Ref="#PWR0154"  Part="1" 
F 0 "#PWR0154" H 1300 6350 50  0001 C CNN
F 1 "+3.3V" V 1315 6628 50  0000 L CNN
F 2 "" H 1300 6500 50  0001 C CNN
F 3 "" H 1300 6500 50  0001 C CNN
	1    1300 6500
	0    -1   -1   0   
$EndComp
Text GLabel 1200 6900 0    50   Input ~ 0
sw_io
Wire Wire Line
	1200 6900 1450 6900
Wire Wire Line
	1900 6500 2050 6500
Wire Wire Line
	2050 6500 2050 6700
Wire Wire Line
	6400 4450 6400 4350
Wire Wire Line
	5600 4450 5600 4350
Wire Wire Line
	4800 4450 4800 4350
Wire Wire Line
	7200 1150 7200 1250
Wire Wire Line
	6350 1150 6350 1250
Wire Wire Line
	5500 1150 5500 1250
Wire Wire Line
	4650 1150 4650 1250
Wire Wire Line
	3800 1150 3800 1250
Wire Wire Line
	2950 1150 2950 1250
Wire Wire Line
	2100 1150 2100 1250
Wire Wire Line
	1250 1150 1250 1250
Text GLabel 4800 4450 3    50   Input ~ 0
disp_d1
Text GLabel 5600 4450 3    50   Input ~ 0
disp_d2
Text GLabel 6400 4450 3    50   Input ~ 0
disp_d3
Text GLabel 7200 1150 1    50   Input ~ 0
disp_1
Text GLabel 6350 1150 1    50   Input ~ 0
disp_2
Text GLabel 5500 1150 1    50   Input ~ 0
disp_3
Text GLabel 4650 1150 1    50   Input ~ 0
disp_4
Text GLabel 3800 1150 1    50   Input ~ 0
disp_5
Text GLabel 2950 1150 1    50   Input ~ 0
disp_6
Text GLabel 2100 1150 1    50   Input ~ 0
disp_7
Text GLabel 1250 1150 1    50   Input ~ 0
disp_8
Wire Wire Line
	7750 3250 6600 3250
Wire Wire Line
	6600 3250 6600 3750
Wire Wire Line
	7750 3150 5800 3150
Wire Wire Line
	5800 3150 5800 3750
Wire Wire Line
	7750 3050 5000 3050
Wire Wire Line
	5000 3050 5000 3750
Wire Wire Line
	7750 2250 7400 2250
Wire Wire Line
	7400 2250 7400 1850
Wire Wire Line
	7750 2350 6550 2350
Wire Wire Line
	6550 2350 6550 1850
Wire Wire Line
	7750 2450 5700 2450
Wire Wire Line
	5700 1850 5700 2450
Wire Wire Line
	7750 2550 4850 2550
Wire Wire Line
	4850 2550 4850 1850
Wire Wire Line
	7750 2650 4000 2650
Wire Wire Line
	4000 2650 4000 1850
Wire Wire Line
	7750 2750 3150 2750
Wire Wire Line
	3150 2750 3150 1850
Wire Wire Line
	7750 2850 2300 2850
Wire Wire Line
	2300 2850 2300 1850
Wire Wire Line
	7750 2950 1450 2950
Wire Wire Line
	1450 2950 1450 1850
$Comp
L Connector:Conn_01x11_Male J2
U 1 1 60147FF8
P 7950 2750
F 0 "J2" H 7922 2774 50  0000 R CNN
F 1 "Conn_01x11_Male" H 7922 2683 50  0000 R CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 7950 2750 50  0001 C CNN
F 3 "~" H 7950 2750 50  0001 C CNN
	1    7950 2750
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 601A1A15
P 1450 6100
AR Path="/601A1A15" Ref="R?"  Part="1" 
AR Path="/606120FA/601A1A15" Ref="R13"  Part="1" 
F 0 "R13" V 1243 6100 50  0000 C CNN
F 1 "50R" V 1334 6100 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" V 1380 6100 50  0001 C CNN
F 3 "~" H 1450 6100 50  0001 C CNN
	1    1450 6100
	0    -1   1    0   
$EndComp
$Comp
L Device:LED D?
U 1 1 601A1A1B
P 1750 6100
AR Path="/601A1A1B" Ref="D?"  Part="1" 
AR Path="/606120FA/601A1A1B" Ref="D3"  Part="1" 
F 0 "D3" H 1743 5845 50  0000 C CNN
F 1 "LED" H 1743 5936 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 1750 6100 50  0001 C CNN
F 3 "~" H 1750 6100 50  0001 C CNN
	1    1750 6100
	-1   0    0    1   
$EndComp
$Comp
L power:VDD #PWR0140
U 1 1 601A3688
P 1300 6100
F 0 "#PWR0140" H 1300 5950 50  0001 C CNN
F 1 "VDD" V 1315 6227 50  0000 L CNN
F 2 "" H 1300 6100 50  0001 C CNN
F 3 "" H 1300 6100 50  0001 C CNN
	1    1300 6100
	0    -1   -1   0   
$EndComp
$Comp
L Device:Jumper JP?
U 1 1 601B6470
P 2800 6350
AR Path="/601B6470" Ref="JP?"  Part="1" 
AR Path="/6049DC2E/601B6470" Ref="JP?"  Part="1" 
AR Path="/606120FA/601B6470" Ref="JP2"  Part="1" 
F 0 "JP2" H 2800 6614 50  0000 C CNN
F 1 "Jumper" H 2800 6523 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 2800 6350 50  0001 C CNN
F 3 "~" H 2800 6350 50  0001 C CNN
	1    2800 6350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0141
U 1 1 601B7B2B
P 3100 6350
F 0 "#PWR0141" H 3100 6100 50  0001 C CNN
F 1 "GND" V 3105 6222 50  0000 R CNN
F 2 "" H 3100 6350 50  0001 C CNN
F 3 "" H 3100 6350 50  0001 C CNN
	1    3100 6350
	0    -1   1    0   
$EndComp
Wire Wire Line
	1900 5650 2500 5650
Wire Wire Line
	2500 5650 2500 6100
Wire Wire Line
	2500 6100 1900 6100
Connection ~ 2500 6100
Wire Wire Line
	2500 6100 2500 6350
Wire Wire Line
	2500 7100 2050 7100
Connection ~ 2500 6350
Wire Wire Line
	2500 6350 2500 7100
$Comp
L LED:WS2812B D4
U 1 1 6022E04C
P 5850 5750
F 0 "D4" H 6194 5796 50  0000 L CNN
F 1 "WS2812B" H 6194 5705 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 5900 5450 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 5950 5375 50  0001 L TNN
	1    5850 5750
	1    0    0    -1  
$EndComp
Text GLabel 4200 6350 0    50   Input ~ 0
led_d
$Comp
L power:+5V #PWR0153
U 1 1 60241861
P 5850 5450
F 0 "#PWR0153" H 5850 5300 50  0001 C CNN
F 1 "+5V" H 5865 5623 50  0000 C CNN
F 2 "" H 5850 5450 50  0001 C CNN
F 3 "" H 5850 5450 50  0001 C CNN
	1    5850 5450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0155
U 1 1 60242C3C
P 5850 6050
F 0 "#PWR0155" H 5850 5800 50  0001 C CNN
F 1 "GND" H 5855 5877 50  0000 C CNN
F 2 "" H 5850 6050 50  0001 C CNN
F 3 "" H 5850 6050 50  0001 C CNN
	1    5850 6050
	1    0    0    -1  
$EndComp
$Comp
L LED:WS2812B D5
U 1 1 6024DA69
P 5850 6900
F 0 "D5" H 6194 6946 50  0000 L CNN
F 1 "WS2812B" H 6194 6855 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 5900 6600 50  0001 L TNN
F 3 "https://cdn-shop.adafruit.com/datasheets/WS2812B.pdf" H 5950 6525 50  0001 L TNN
	1    5850 6900
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0156
U 1 1 6024DA6F
P 5850 6600
F 0 "#PWR0156" H 5850 6450 50  0001 C CNN
F 1 "+5V" H 5865 6773 50  0000 C CNN
F 2 "" H 5850 6600 50  0001 C CNN
F 3 "" H 5850 6600 50  0001 C CNN
	1    5850 6600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0157
U 1 1 6024DA75
P 5850 7200
F 0 "#PWR0157" H 5850 6950 50  0001 C CNN
F 1 "GND" H 5855 7027 50  0000 C CNN
F 2 "" H 5850 7200 50  0001 C CNN
F 3 "" H 5850 7200 50  0001 C CNN
	1    5850 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 5750 6150 6350
Wire Wire Line
	6150 6350 5550 6350
Wire Wire Line
	5550 6350 5550 6900
Wire Notes Line
	650  5100 3550 5100
Wire Notes Line
	3550 5100 3550 7550
Wire Notes Line
	3550 7550 650  7550
Wire Notes Line
	650  7550 650  5100
$Comp
L Device:R R27
U 1 1 60125569
P 4350 6350
F 0 "R27" H 4280 6304 50  0000 R CNN
F 1 "1k" H 4280 6395 50  0000 R CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" V 4280 6350 50  0001 C CNN
F 3 "~" H 4350 6350 50  0001 C CNN
	1    4350 6350
	0    -1   1    0   
$EndComp
$Comp
L Transistor_BJT:2N3055 Q13
U 1 1 6012556F
P 4700 6350
F 0 "Q13" V 5028 6350 50  0000 C CNN
F 1 "BC817" V 4937 6350 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 4900 6275 50  0001 L CIN
F 3 "https://www.elfa.se/Web/Downloads/_t/ds/BC817_eng_tds.pdf" H 4700 6350 50  0001 L CNN
	1    4700 6350
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N3055 Q14
U 1 1 60156702
P 5150 6000
F 0 "Q14" V 5478 6000 50  0000 C CNN
F 1 "BC817" V 5387 6000 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 5350 5925 50  0001 L CIN
F 3 "https://www.elfa.se/Web/Downloads/_t/ds/BC817_eng_tds.pdf" H 5150 6000 50  0001 L CNN
	1    5150 6000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R28
U 1 1 6015DF29
P 4800 5550
F 0 "R28" H 4730 5504 50  0000 R CNN
F 1 "1k" H 4730 5595 50  0000 R CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" V 4730 5550 50  0001 C CNN
F 3 "~" H 4800 5550 50  0001 C CNN
	1    4800 5550
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R29
U 1 1 6015ECA7
P 5250 5550
F 0 "R29" H 5180 5504 50  0000 R CNN
F 1 "1k" H 5180 5595 50  0000 R CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" V 5180 5550 50  0001 C CNN
F 3 "~" H 5250 5550 50  0001 C CNN
	1    5250 5550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4800 6150 4800 6000
Wire Wire Line
	4800 6000 4950 6000
Wire Wire Line
	4800 5700 4800 6000
Connection ~ 4800 6000
Wire Wire Line
	5250 5700 5250 5750
Wire Wire Line
	4800 5400 5000 5400
$Comp
L power:GND #PWR0158
U 1 1 6016EE04
P 4800 6550
F 0 "#PWR0158" H 4800 6300 50  0001 C CNN
F 1 "GND" H 4805 6377 50  0000 C CNN
F 2 "" H 4800 6550 50  0001 C CNN
F 3 "" H 4800 6550 50  0001 C CNN
	1    4800 6550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0159
U 1 1 6016FE21
P 5250 6200
F 0 "#PWR0159" H 5250 5950 50  0001 C CNN
F 1 "GND" H 5255 6027 50  0000 C CNN
F 2 "" H 5250 6200 50  0001 C CNN
F 3 "" H 5250 6200 50  0001 C CNN
	1    5250 6200
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0160
U 1 1 601710C0
P 5000 5400
F 0 "#PWR0160" H 5000 5250 50  0001 C CNN
F 1 "+5V" H 5015 5573 50  0000 C CNN
F 2 "" H 5000 5400 50  0001 C CNN
F 3 "" H 5000 5400 50  0001 C CNN
	1    5000 5400
	1    0    0    -1  
$EndComp
Connection ~ 5000 5400
Wire Wire Line
	5000 5400 5250 5400
Wire Wire Line
	5550 5750 5250 5750
Connection ~ 5250 5750
Wire Wire Line
	5250 5750 5250 5800
Wire Notes Line
	3900 5100 6700 5100
Wire Notes Line
	6700 5100 6700 7600
Wire Notes Line
	6700 7600 3850 7600
Wire Notes Line
	3850 7600 3850 5100
Wire Notes Line
	650  700  9000 700 
Wire Notes Line
	9000 700  9000 4950
Wire Notes Line
	9000 4950 650  4950
Wire Notes Line
	650  4950 650  700 
NoConn ~ 6150 6900
$Comp
L Switch:SW_Push SW?
U 1 1 60239EE4
P 7750 5650
AR Path="/605D51A7/60239EE4" Ref="SW?"  Part="1" 
AR Path="/606120FA/60239EE4" Ref="RST1"  Part="1" 
F 0 "RST1" H 7750 5935 50  0000 C CNN
F 1 "SW_Push" H 7750 5844 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 7750 5850 50  0001 C CNN
F 3 "~" H 7750 5850 50  0001 C CNN
	1    7750 5650
	1    0    0    -1  
$EndComp
Text GLabel 7300 5650 0    50   Output ~ 0
sw_rst
Wire Wire Line
	7300 5650 7550 5650
$Comp
L power:GND #PWR?
U 1 1 60239EEC
P 8200 5650
AR Path="/605D51A7/60239EEC" Ref="#PWR?"  Part="1" 
AR Path="/606120FA/60239EEC" Ref="#PWR0136"  Part="1" 
F 0 "#PWR0136" H 8200 5400 50  0001 C CNN
F 1 "GND" V 8205 5522 50  0000 R CNN
F 2 "" H 8200 5650 50  0001 C CNN
F 3 "" H 8200 5650 50  0001 C CNN
	1    8200 5650
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C?
U 1 1 60239EF2
P 7750 6000
AR Path="/605D51A7/60239EF2" Ref="C?"  Part="1" 
AR Path="/606120FA/60239EF2" Ref="C23"  Part="1" 
F 0 "C23" V 8002 6000 50  0000 C CNN
F 1 "100n" V 7911 6000 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 7788 5850 50  0001 C CNN
F 3 "~" H 7750 6000 50  0001 C CNN
	1    7750 6000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7600 6000 7550 6000
Wire Wire Line
	7550 6000 7550 5650
Connection ~ 7550 5650
Wire Wire Line
	7950 5650 7950 6000
Wire Wire Line
	7950 6000 7900 6000
Wire Wire Line
	7950 5650 8200 5650
Connection ~ 7950 5650
$Comp
L Switch:SW_Push RST?
U 1 1 6023FD8C
P 9450 5500
AR Path="/605D51A7/6023FD8C" Ref="RST?"  Part="1" 
AR Path="/606120FA/6023FD8C" Ref="Left1"  Part="1" 
F 0 "Left1" H 9450 5785 50  0000 C CNN
F 1 "SW_Push" H 9450 5694 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 9450 5700 50  0001 C CNN
F 3 "~" H 9450 5700 50  0001 C CNN
	1    9450 5500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60243545
P 9650 5500
AR Path="/605D51A7/60243545" Ref="#PWR?"  Part="1" 
AR Path="/606120FA/60243545" Ref="#PWR0161"  Part="1" 
F 0 "#PWR0161" H 9650 5250 50  0001 C CNN
F 1 "GND" V 9655 5372 50  0000 R CNN
F 2 "" H 9650 5500 50  0001 C CNN
F 3 "" H 9650 5500 50  0001 C CNN
	1    9650 5500
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R30
U 1 1 60244AFD
P 9100 5500
F 0 "R30" H 9030 5454 50  0000 R CNN
F 1 "1k" H 9030 5545 50  0000 R CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" V 9030 5500 50  0001 C CNN
F 3 "~" H 9100 5500 50  0001 C CNN
	1    9100 5500
	0    1    -1   0   
$EndComp
Text GLabel 8950 5500 0    50   Output ~ 0
btn_l
$Comp
L power:GND #PWR?
U 1 1 6024AFC9
P 9650 6050
AR Path="/605D51A7/6024AFC9" Ref="#PWR?"  Part="1" 
AR Path="/606120FA/6024AFC9" Ref="#PWR0162"  Part="1" 
F 0 "#PWR0162" H 9650 5800 50  0001 C CNN
F 1 "GND" V 9655 5922 50  0000 R CNN
F 2 "" H 9650 6050 50  0001 C CNN
F 3 "" H 9650 6050 50  0001 C CNN
	1    9650 6050
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R31
U 1 1 6024AFCF
P 9100 6050
F 0 "R31" H 9030 6004 50  0000 R CNN
F 1 "1k" H 9030 6095 50  0000 R CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" V 9030 6050 50  0001 C CNN
F 3 "~" H 9100 6050 50  0001 C CNN
	1    9100 6050
	0    1    -1   0   
$EndComp
Text GLabel 8950 6050 0    50   Output ~ 0
btn_r
Wire Notes Line
	6850 5100 10150 5100
Wire Notes Line
	10150 5100 10150 6350
Wire Notes Line
	10150 6350 6850 6350
Wire Notes Line
	6850 6350 6850 5100
$Comp
L Switch:SW_Push RST?
U 1 1 602A4F97
P 9450 6050
AR Path="/605D51A7/602A4F97" Ref="RST?"  Part="1" 
AR Path="/606120FA/602A4F97" Ref="Right1"  Part="1" 
F 0 "Right1" H 9450 6335 50  0000 C CNN
F 1 "SW_Push" H 9450 6244 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 9450 6250 50  0001 C CNN
F 3 "~" H 9450 6250 50  0001 C CNN
	1    9450 6050
	1    0    0    -1  
$EndComp
$EndSCHEMATC
