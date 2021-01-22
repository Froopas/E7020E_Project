EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 6
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
L Device:CP C?
U 1 1 60566D34
P 7550 2150
AR Path="/60566D34" Ref="C?"  Part="1" 
AR Path="/6049DC2E/60566D34" Ref="C4"  Part="1" 
F 0 "C4" V 7295 2150 50  0000 C CNN
F 1 "4.7u" V 7386 2150 50  0000 C CNN
F 2 "Capacitor_SMD:CP_Elec_4x5.4" H 7588 2000 50  0001 C CNN
F 3 "~" H 7550 2150 50  0001 C CNN
	1    7550 2150
	0    1    1    0   
$EndComp
Wire Wire Line
	7850 3350 7850 3550
Wire Wire Line
	7850 3350 8000 3350
Connection ~ 7850 3350
Wire Wire Line
	7850 2950 7850 3350
Wire Wire Line
	7850 2950 7700 2950
Connection ~ 7850 2950
Wire Wire Line
	7850 2550 7850 2950
Wire Wire Line
	7850 2550 8000 2550
Connection ~ 7850 2550
Text GLabel 3200 4150 0    50   Input ~ 0
pwm_rst
Text GLabel 6100 4850 2    50   Input ~ 0
sclk
Wire Wire Line
	5400 3050 5700 3050
$Comp
L power:+5V #PWR?
U 1 1 60566D46
P 5700 3050
AR Path="/60566D46" Ref="#PWR?"  Part="1" 
AR Path="/6049DC2E/60566D46" Ref="#PWR0101"  Part="1" 
F 0 "#PWR0101" H 5700 2900 50  0001 C CNN
F 1 "+5V" V 5715 3178 50  0000 L CNN
F 2 "" H 5700 3050 50  0001 C CNN
F 3 "" H 5700 3050 50  0001 C CNN
	1    5700 3050
	0    1    1    0   
$EndComp
Wire Wire Line
	5900 4950 6100 4950
Connection ~ 5900 4950
Wire Wire Line
	5900 5050 5900 4950
Wire Wire Line
	5700 4850 6100 4850
Connection ~ 5700 4850
Wire Wire Line
	5700 5050 5700 4850
Wire Wire Line
	5400 4850 5700 4850
Wire Wire Line
	5400 4950 5900 4950
$Comp
L power:+3.3V #PWR?
U 1 1 60566D54
P 5800 5350
AR Path="/60566D54" Ref="#PWR?"  Part="1" 
AR Path="/6049DC2E/60566D54" Ref="#PWR0102"  Part="1" 
F 0 "#PWR0102" H 5800 5200 50  0001 C CNN
F 1 "+3.3V" H 5815 5523 50  0000 C CNN
F 2 "" H 5800 5350 50  0001 C CNN
F 3 "" H 5800 5350 50  0001 C CNN
	1    5800 5350
	-1   0    0    1   
$EndComp
Connection ~ 5800 5350
Wire Wire Line
	5700 5350 5800 5350
Wire Wire Line
	5800 5350 5900 5350
$Comp
L Device:R R?
U 1 1 60566D5D
P 5700 5200
AR Path="/60566D5D" Ref="R?"  Part="1" 
AR Path="/6049DC2E/60566D5D" Ref="R4"  Part="1" 
F 0 "R4" H 5630 5154 50  0000 R CNN
F 1 "10k" H 5630 5245 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 5630 5200 50  0001 C CNN
F 3 "~" H 5700 5200 50  0001 C CNN
	1    5700 5200
	1    0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 60566D63
P 5900 5200
AR Path="/60566D63" Ref="R?"  Part="1" 
AR Path="/6049DC2E/60566D63" Ref="R5"  Part="1" 
F 0 "R5" H 5830 5154 50  0000 R CNN
F 1 "10k" H 5830 5245 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 5830 5200 50  0001 C CNN
F 3 "~" H 5900 5200 50  0001 C CNN
	1    5900 5200
	-1   0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 60566D69
P 3550 4800
AR Path="/60566D69" Ref="#PWR?"  Part="1" 
AR Path="/6049DC2E/60566D69" Ref="#PWR0103"  Part="1" 
F 0 "#PWR0103" H 3550 4650 50  0001 C CNN
F 1 "+3.3V" H 3565 4973 50  0000 C CNN
F 2 "" H 3550 4800 50  0001 C CNN
F 3 "" H 3550 4800 50  0001 C CNN
	1    3550 4800
	-1   0    0    1   
$EndComp
Connection ~ 3550 4800
Wire Wire Line
	3450 4800 3550 4800
Wire Wire Line
	3550 4800 3650 4800
Wire Wire Line
	3650 4050 3650 4500
Connection ~ 3650 4050
Wire Wire Line
	3200 4050 3650 4050
Wire Wire Line
	3650 4050 4000 4050
Wire Wire Line
	3450 4500 3450 4150
Connection ~ 3450 4150
Wire Wire Line
	3200 4150 3450 4150
Wire Wire Line
	3450 4150 4000 4150
Text GLabel 3200 4050 0    50   Input ~ 0
mosi
Text GLabel 3200 3950 0    50   Input ~ 0
miso
Text GLabel 3200 4250 0    50   Input ~ 0
pwm_int
Text GLabel 3200 4350 0    50   Input ~ 0
pwm_gpo
$Comp
L Device:R R?
U 1 1 60566D7E
P 3450 4650
AR Path="/60566D7E" Ref="R?"  Part="1" 
AR Path="/6049DC2E/60566D7E" Ref="R1"  Part="1" 
F 0 "R1" H 3380 4604 50  0000 R CNN
F 1 "10k" H 3380 4695 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 3380 4650 50  0001 C CNN
F 3 "~" H 3450 4650 50  0001 C CNN
	1    3450 4650
	1    0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 60566D84
P 3650 4650
AR Path="/60566D84" Ref="R?"  Part="1" 
AR Path="/6049DC2E/60566D84" Ref="R3"  Part="1" 
F 0 "R3" H 3580 4604 50  0000 R CNN
F 1 "10k" H 3580 4695 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 3580 4650 50  0001 C CNN
F 3 "~" H 3650 4650 50  0001 C CNN
	1    3650 4650
	-1   0    0    1   
$EndComp
Wire Wire Line
	3200 3950 4000 3950
Wire Wire Line
	3200 4250 4000 4250
Wire Wire Line
	4000 4350 3200 4350
NoConn ~ 4000 3550
NoConn ~ 5400 3150
NoConn ~ 5400 2950
NoConn ~ 5400 2850
NoConn ~ 5400 2750
NoConn ~ 5400 2650
NoConn ~ 5400 2550
NoConn ~ 5400 2450
NoConn ~ 5400 2350
NoConn ~ 5400 2250
NoConn ~ 5400 2150
NoConn ~ 5400 3650
NoConn ~ 5400 3850
NoConn ~ 5400 3950
NoConn ~ 5400 4050
NoConn ~ 5400 4250
NoConn ~ 5400 4350
NoConn ~ 5400 4450
NoConn ~ 5400 4550
NoConn ~ 5400 4650
NoConn ~ 5400 4750
NoConn ~ 5400 5050
NoConn ~ 5400 5150
NoConn ~ 5400 5250
NoConn ~ 4000 5250
NoConn ~ 4000 5150
NoConn ~ 4000 5050
NoConn ~ 4000 4950
NoConn ~ 4000 4850
NoConn ~ 4000 4750
NoConn ~ 4000 4650
NoConn ~ 4000 4550
NoConn ~ 4000 4450
NoConn ~ 4000 3850
NoConn ~ 4000 3750
$Comp
L MCU_ST_STM32F4:STM32F411RETx U?
U 1 1 60566DB0
P 4700 3650
AR Path="/60566DB0" Ref="U?"  Part="1" 
AR Path="/6049DC2E/60566DB0" Ref="U1"  Part="1" 
F 0 "U1" H 4700 1761 50  0000 C CNN
F 1 "STM32F411RETx" H 4700 1670 50  0000 C CNN
F 2 "Package_QFP:LQFP-64_10x10mm_P0.5mm" H 4100 1950 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00115249.pdf" H 4700 3650 50  0001 C CNN
	1    4700 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 1950 4600 1950
Wire Wire Line
	4600 1950 4700 1950
Connection ~ 4600 1950
Connection ~ 4700 1950
Connection ~ 4800 1950
Wire Wire Line
	4800 1950 4900 1950
Wire Wire Line
	4900 1950 5000 1950
Connection ~ 4900 1950
Wire Wire Line
	4900 5450 4800 5450
Wire Wire Line
	4800 5450 4700 5450
Connection ~ 4500 5450
Wire Wire Line
	4500 5450 4300 5450
Wire Wire Line
	4600 5450 4500 5450
Connection ~ 4600 5450
Connection ~ 4700 5450
Wire Wire Line
	4700 5450 4600 5450
Connection ~ 4800 5450
$Comp
L power:GND #PWR?
U 1 1 60566DC9
P 3500 2700
AR Path="/60566DC9" Ref="#PWR?"  Part="1" 
AR Path="/6049DC2E/60566DC9" Ref="#PWR0104"  Part="1" 
F 0 "#PWR0104" H 3500 2450 50  0001 C CNN
F 1 "GND" V 3505 2572 50  0000 R CNN
F 2 "" H 3500 2700 50  0001 C CNN
F 3 "" H 3500 2700 50  0001 C CNN
	1    3500 2700
	0    1    1    0   
$EndComp
Wire Wire Line
	3800 2550 3800 2700
Wire Wire Line
	4000 2550 3800 2550
$Comp
L Device:CP C?
U 1 1 60566DD1
P 3650 2700
AR Path="/60566DD1" Ref="C?"  Part="1" 
AR Path="/6049DC2E/60566DD1" Ref="C3"  Part="1" 
F 0 "C3" V 3395 2700 50  0000 C CNN
F 1 "2.2u" V 3486 2700 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 3688 2550 50  0001 C CNN
F 3 "~" H 3650 2700 50  0001 C CNN
	1    3650 2700
	0    1    1    0   
$EndComp
Wire Wire Line
	5750 3250 5400 3250
Wire Wire Line
	5400 3350 5750 3350
Text GLabel 5750 3250 2    50   Input ~ 0
usb_d-
Text GLabel 5750 3350 2    50   Input ~ 0
usb_d+
Text GLabel 6100 4950 2    50   Input ~ 0
ncs
Wire Wire Line
	5750 4150 5400 4150
Wire Wire Line
	5400 3550 5750 3550
Wire Wire Line
	5750 3450 5400 3450
Wire Wire Line
	3850 2150 4000 2150
Text GLabel 3850 2150 0    50   Input ~ 0
sw_rst
Text GLabel 5750 4150 2    50   Input ~ 0
sw_o
Text GLabel 5750 3550 2    50   Input ~ 0
sw_clk
Text GLabel 5750 3450 2    50   Input ~ 0
sw_io
Wire Wire Line
	2750 3300 2750 3500
Connection ~ 2750 3300
$Comp
L power:GND #PWR?
U 1 1 60566DE6
P 2750 3300
AR Path="/60566DE6" Ref="#PWR?"  Part="1" 
AR Path="/6049DC2E/60566DE6" Ref="#PWR0105"  Part="1" 
F 0 "#PWR0105" H 2750 3050 50  0001 C CNN
F 1 "GND" V 2755 3172 50  0000 R CNN
F 2 "" H 2750 3300 50  0001 C CNN
F 3 "" H 2750 3300 50  0001 C CNN
	1    2750 3300
	0    1    1    0   
$EndComp
Wire Wire Line
	2750 3100 2750 3300
Connection ~ 3250 3450
Wire Wire Line
	3050 3450 3250 3450
Wire Wire Line
	3050 3450 3050 3500
Connection ~ 3250 3150
Wire Wire Line
	3050 3150 3050 3100
Wire Wire Line
	3250 3150 3050 3150
$Comp
L Device:C C?
U 1 1 60566DF3
P 2900 3500
AR Path="/60566DF3" Ref="C?"  Part="1" 
AR Path="/6049DC2E/60566DF3" Ref="C2"  Part="1" 
F 0 "C2" V 3152 3500 50  0000 C CNN
F 1 "22p" V 3061 3500 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 2938 3350 50  0001 C CNN
F 3 "~" H 2900 3500 50  0001 C CNN
	1    2900 3500
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C?
U 1 1 60566DF9
P 2900 3100
AR Path="/60566DF9" Ref="C?"  Part="1" 
AR Path="/6049DC2E/60566DF9" Ref="C1"  Part="1" 
F 0 "C1" V 2648 3100 50  0000 C CNN
F 1 "22p" V 2739 3100 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 2938 2950 50  0001 C CNN
F 3 "~" H 2900 3100 50  0001 C CNN
	1    2900 3100
	0    1    1    0   
$EndComp
Wire Wire Line
	3650 3450 3250 3450
Wire Wire Line
	3650 3350 3650 3450
Wire Wire Line
	4000 3350 3650 3350
Wire Wire Line
	3650 3150 3250 3150
Wire Wire Line
	3650 3250 3650 3150
Wire Wire Line
	4000 3250 3650 3250
$Comp
L Device:Crystal Y?
U 1 1 60566E05
P 3250 3300
AR Path="/60566E05" Ref="Y?"  Part="1" 
AR Path="/6049DC2E/60566E05" Ref="Y1"  Part="1" 
F 0 "Y1" V 3204 3431 50  0000 L CNN
F 1 "Crystal" V 3295 3431 50  0000 L CNN
F 2 "Crystal:Crystal_HC49-4H_Vertical" H 3250 3300 50  0001 C CNN
F 3 "~" H 3250 3300 50  0001 C CNN
	1    3250 3300
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 60566E0B
P 2800 2350
AR Path="/60566E0B" Ref="#PWR?"  Part="1" 
AR Path="/6049DC2E/60566E0B" Ref="#PWR0106"  Part="1" 
F 0 "#PWR0106" H 2800 2200 50  0001 C CNN
F 1 "+3.3V" V 2815 2478 50  0000 L CNN
F 2 "" H 2800 2350 50  0001 C CNN
F 3 "" H 2800 2350 50  0001 C CNN
	1    2800 2350
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60566E11
P 3500 1900
AR Path="/60566E11" Ref="#PWR?"  Part="1" 
AR Path="/6049DC2E/60566E11" Ref="#PWR0107"  Part="1" 
F 0 "#PWR0107" H 3500 1650 50  0001 C CNN
F 1 "GND" H 3505 1727 50  0000 C CNN
F 2 "" H 3500 1900 50  0001 C CNN
F 3 "" H 3500 1900 50  0001 C CNN
	1    3500 1900
	-1   0    0    1   
$EndComp
Wire Wire Line
	3500 2350 4000 2350
Connection ~ 3500 2350
Wire Wire Line
	3500 2200 3500 2350
Wire Wire Line
	3400 2350 3500 2350
$Comp
L Device:Jumper JP?
U 1 1 60566E1B
P 3100 2350
AR Path="/60566E1B" Ref="JP?"  Part="1" 
AR Path="/6049DC2E/60566E1B" Ref="JP1"  Part="1" 
F 0 "JP1" H 3100 2614 50  0000 C CNN
F 1 "Jumper" H 3100 2523 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 3100 2350 50  0001 C CNN
F 3 "~" H 3100 2350 50  0001 C CNN
	1    3100 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 60566E21
P 3500 2050
AR Path="/60566E21" Ref="R?"  Part="1" 
AR Path="/6049DC2E/60566E21" Ref="R2"  Part="1" 
F 0 "R2" H 3430 2004 50  0000 R CNN
F 1 "10k" H 3430 2095 50  0000 R CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 3430 2050 50  0001 C CNN
F 3 "~" H 3500 2050 50  0001 C CNN
	1    3500 2050
	1    0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60566E27
P 4300 5450
AR Path="/60566E27" Ref="#PWR?"  Part="1" 
AR Path="/6049DC2E/60566E27" Ref="#PWR0108"  Part="1" 
F 0 "#PWR0108" H 4300 5200 50  0001 C CNN
F 1 "GND" H 4305 5277 50  0000 C CNN
F 2 "" H 4300 5450 50  0001 C CNN
F 3 "" H 4300 5450 50  0001 C CNN
	1    4300 5450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60566E2D
P 8300 2950
AR Path="/60566E2D" Ref="#PWR?"  Part="1" 
AR Path="/6049DC2E/60566E2D" Ref="#PWR0109"  Part="1" 
F 0 "#PWR0109" H 8300 2700 50  0001 C CNN
F 1 "GND" V 8305 2822 50  0000 R CNN
F 2 "" H 8300 2950 50  0001 C CNN
F 3 "" H 8300 2950 50  0001 C CNN
	1    8300 2950
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60566E33
P 7400 2950
AR Path="/60566E33" Ref="#PWR?"  Part="1" 
AR Path="/6049DC2E/60566E33" Ref="#PWR0110"  Part="1" 
F 0 "#PWR0110" H 7400 2700 50  0001 C CNN
F 1 "GND" V 7405 2822 50  0000 R CNN
F 2 "" H 7400 2950 50  0001 C CNN
F 3 "" H 7400 2950 50  0001 C CNN
	1    7400 2950
	0    1    1    0   
$EndComp
Connection ~ 7400 2550
Wire Wire Line
	7400 2150 7400 2550
Wire Wire Line
	7850 2150 7850 2550
Connection ~ 7850 2150
Wire Wire Line
	7700 2150 7850 2150
Wire Wire Line
	7850 2050 7850 2150
Wire Wire Line
	7400 2950 7400 3350
Connection ~ 7400 2950
Wire Wire Line
	7400 2550 7400 2950
Wire Wire Line
	8300 2950 8300 3350
Connection ~ 8300 2950
Wire Wire Line
	8300 2550 8300 2950
Wire Wire Line
	7700 2550 7850 2550
Wire Wire Line
	8000 2950 7850 2950
Wire Wire Line
	7700 3350 7850 3350
$Comp
L power:+3.3V #PWR?
U 1 1 60566E49
P 7850 2050
AR Path="/60566E49" Ref="#PWR?"  Part="1" 
AR Path="/6049DC2E/60566E49" Ref="#PWR0111"  Part="1" 
F 0 "#PWR0111" H 7850 1900 50  0001 C CNN
F 1 "+3.3V" H 7865 2223 50  0000 C CNN
F 2 "" H 7850 2050 50  0001 C CNN
F 3 "" H 7850 2050 50  0001 C CNN
	1    7850 2050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 60566E4F
P 8150 2550
AR Path="/60566E4F" Ref="C?"  Part="1" 
AR Path="/6049DC2E/60566E4F" Ref="C8"  Part="1" 
F 0 "C8" V 7898 2550 50  0000 C CNN
F 1 "100n" V 7989 2550 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 8188 2400 50  0001 C CNN
F 3 "~" H 8150 2550 50  0001 C CNN
	1    8150 2550
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 60566E55
P 8150 2950
AR Path="/60566E55" Ref="C?"  Part="1" 
AR Path="/6049DC2E/60566E55" Ref="C9"  Part="1" 
F 0 "C9" V 7898 2950 50  0000 C CNN
F 1 "100n" V 7989 2950 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 8188 2800 50  0001 C CNN
F 3 "~" H 8150 2950 50  0001 C CNN
	1    8150 2950
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 60566E5B
P 8150 3350
AR Path="/60566E5B" Ref="C?"  Part="1" 
AR Path="/6049DC2E/60566E5B" Ref="C10"  Part="1" 
F 0 "C10" V 7898 3350 50  0000 C CNN
F 1 "100n" V 7989 3350 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 8188 3200 50  0001 C CNN
F 3 "~" H 8150 3350 50  0001 C CNN
	1    8150 3350
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 60566E61
P 7550 2550
AR Path="/60566E61" Ref="C?"  Part="1" 
AR Path="/6049DC2E/60566E61" Ref="C5"  Part="1" 
F 0 "C5" V 7298 2550 50  0000 C CNN
F 1 "100n" V 7389 2550 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 7588 2400 50  0001 C CNN
F 3 "~" H 7550 2550 50  0001 C CNN
	1    7550 2550
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 60566E67
P 7550 2950
AR Path="/60566E67" Ref="C?"  Part="1" 
AR Path="/6049DC2E/60566E67" Ref="C6"  Part="1" 
F 0 "C6" V 7298 2950 50  0000 C CNN
F 1 "100n" V 7389 2950 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 7588 2800 50  0001 C CNN
F 3 "~" H 7550 2950 50  0001 C CNN
	1    7550 2950
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 60566E6D
P 7550 3350
AR Path="/60566E6D" Ref="C?"  Part="1" 
AR Path="/6049DC2E/60566E6D" Ref="C7"  Part="1" 
F 0 "C7" V 7298 3350 50  0000 C CNN
F 1 "100n" V 7389 3350 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 7588 3200 50  0001 C CNN
F 3 "~" H 7550 3350 50  0001 C CNN
	1    7550 3350
	0    1    1    0   
$EndComp
Wire Wire Line
	4700 1950 4750 1950
Text GLabel 4750 1850 1    50   Input ~ 0
mcu_cap
Wire Wire Line
	4750 1950 4750 1850
Connection ~ 4750 1950
Wire Wire Line
	4750 1950 4800 1950
Text GLabel 7850 3550 3    50   Input ~ 0
mcu_cap
$EndSCHEMATC
