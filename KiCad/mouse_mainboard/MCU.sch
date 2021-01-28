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
Wire Wire Line
	7850 3350 7850 3550
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
Text GLabel 3200 4150 0    50   Output ~ 0
pwm_rst
Text GLabel 6100 4850 2    50   Output ~ 0
sclk
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
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" V 5630 5200 50  0001 C CNN
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
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" V 5830 5200 50  0001 C CNN
F 3 "~" H 5900 5200 50  0001 C CNN
	1    5900 5200
	-1   0    0    1   
$EndComp
Wire Wire Line
	3650 4050 3650 4400
Connection ~ 3650 4050
Wire Wire Line
	3200 4050 3650 4050
Wire Wire Line
	3650 4050 4000 4050
Connection ~ 3450 4150
Wire Wire Line
	3200 4150 3450 4150
Wire Wire Line
	3450 4150 4000 4150
Text GLabel 3200 4050 0    50   Output ~ 0
mosi
Text GLabel 3200 3950 0    50   Input ~ 0
miso
Text GLabel 3200 4250 0    50   Input ~ 0
pwm_int
Text GLabel 3200 4350 0    50   Input ~ 0
pwm_gpo
Wire Wire Line
	3200 4250 4000 4250
Wire Wire Line
	4000 4350 3200 4350
NoConn ~ 4000 3550
NoConn ~ 5400 3150
NoConn ~ 5400 2950
NoConn ~ 5400 2850
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
Wire Wire Line
	5750 3250 5400 3250
Wire Wire Line
	5400 3350 5750 3350
Text GLabel 5750 3250 2    50   BiDi ~ 0
usb_d-
Text GLabel 5750 3350 2    50   BiDi ~ 0
usb_d+
Text GLabel 6100 4950 2    50   Output ~ 0
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
Text GLabel 5750 4150 2    50   BiDi ~ 0
sw_o
Text GLabel 5750 3550 2    50   Input ~ 0
sw_clk
Text GLabel 5750 3450 2    50   BiDi ~ 0
sw_io
Wire Wire Line
	2750 3300 2750 3100
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
	0    1    -1   0   
$EndComp
Wire Wire Line
	2750 3500 2750 3300
Connection ~ 3250 3150
Wire Wire Line
	3050 3150 3250 3150
Wire Wire Line
	3050 3150 3050 3100
Connection ~ 3250 3450
Wire Wire Line
	3050 3450 3050 3500
Wire Wire Line
	3250 3450 3050 3450
$Comp
L Device:C C?
U 1 1 60566DF3
P 2900 3100
AR Path="/60566DF3" Ref="C?"  Part="1" 
AR Path="/6049DC2E/60566DF3" Ref="C2"  Part="1" 
F 0 "C2" V 3152 3100 50  0000 C CNN
F 1 "22p" V 3061 3100 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 2938 2950 50  0001 C CNN
F 3 "~" H 2900 3100 50  0001 C CNN
	1    2900 3100
	0    -1   1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 60566DF9
P 2900 3500
AR Path="/60566DF9" Ref="C?"  Part="1" 
AR Path="/6049DC2E/60566DF9" Ref="C1"  Part="1" 
F 0 "C1" V 2648 3500 50  0000 C CNN
F 1 "22p" V 2739 3500 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 2938 3350 50  0001 C CNN
F 3 "~" H 2900 3500 50  0001 C CNN
	1    2900 3500
	0    1    -1   0   
$EndComp
Wire Wire Line
	3650 3150 3250 3150
Wire Wire Line
	3650 3350 3650 3450
Wire Wire Line
	4000 3350 3650 3350
Wire Wire Line
	3650 3450 3250 3450
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
	0    1    -1   0   
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
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 3100 2350 50  0001 C CNN
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
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" V 3430 2050 50  0001 C CNN
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
Wire Wire Line
	7400 2950 7400 3350
Connection ~ 7400 2950
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
P 7850 2400
AR Path="/60566E49" Ref="#PWR?"  Part="1" 
AR Path="/6049DC2E/60566E49" Ref="#PWR0111"  Part="1" 
F 0 "#PWR0111" H 7850 2250 50  0001 C CNN
F 1 "+3.3V" H 7865 2573 50  0000 C CNN
F 2 "" H 7850 2400 50  0001 C CNN
F 3 "" H 7850 2400 50  0001 C CNN
	1    7850 2400
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
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 8188 2400 50  0001 C CNN
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
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 8188 2800 50  0001 C CNN
F 3 "~" H 8150 2950 50  0001 C CNN
	1    8150 2950
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
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 7588 2800 50  0001 C CNN
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
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 7588 3200 50  0001 C CNN
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
Text GLabel 7850 3550 3    50   Output ~ 0
mcu_cap
$Comp
L Device:C C?
U 1 1 60162059
P 3650 2700
AR Path="/60162059" Ref="C?"  Part="1" 
AR Path="/6049DC2E/60162059" Ref="C3"  Part="1" 
F 0 "C3" V 3398 2700 50  0000 C CNN
F 1 "2.2u" V 3489 2700 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 3688 2550 50  0001 C CNN
F 3 "~" H 3650 2700 50  0001 C CNN
	1    3650 2700
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 601679BC
P 7550 2550
AR Path="/601679BC" Ref="C?"  Part="1" 
AR Path="/6049DC2E/601679BC" Ref="C4"  Part="1" 
F 0 "C4" V 7298 2550 50  0000 C CNN
F 1 "4.7u" V 7389 2550 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 7588 2400 50  0001 C CNN
F 3 "~" H 7550 2550 50  0001 C CNN
	1    7550 2550
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 60566D84
P 3650 4550
AR Path="/60566D84" Ref="R?"  Part="1" 
AR Path="/6049DC2E/60566D84" Ref="R3"  Part="1" 
F 0 "R3" H 3580 4504 50  0000 R CNN
F 1 "10k" H 3580 4595 50  0000 R CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" V 3580 4550 50  0001 C CNN
F 3 "~" H 3650 4550 50  0001 C CNN
	1    3650 4550
	-1   0    0    1   
$EndComp
$Comp
L Device:R R?
U 1 1 60566D7E
P 3450 4550
AR Path="/60566D7E" Ref="R?"  Part="1" 
AR Path="/6049DC2E/60566D7E" Ref="R1"  Part="1" 
F 0 "R1" H 3380 4504 50  0000 R CNN
F 1 "10k" H 3380 4595 50  0000 R CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" V 3380 4550 50  0001 C CNN
F 3 "~" H 3450 4550 50  0001 C CNN
	1    3450 4550
	1    0    0    1   
$EndComp
Wire Wire Line
	3550 4700 3650 4700
Wire Wire Line
	3450 4700 3550 4700
Connection ~ 3550 4700
$Comp
L power:+3.3V #PWR?
U 1 1 60566D69
P 3550 4700
AR Path="/60566D69" Ref="#PWR?"  Part="1" 
AR Path="/6049DC2E/60566D69" Ref="#PWR0103"  Part="1" 
F 0 "#PWR0103" H 3550 4550 50  0001 C CNN
F 1 "+3.3V" H 3565 4873 50  0000 C CNN
F 2 "" H 3550 4700 50  0001 C CNN
F 3 "" H 3550 4700 50  0001 C CNN
	1    3550 4700
	-1   0    0    1   
$EndComp
Wire Wire Line
	3450 4400 3450 4150
Text GLabel 3550 5050 0    50   Input ~ 0
btn_l
Text GLabel 3550 5150 0    50   Input ~ 0
btn_r
Wire Wire Line
	7400 2550 7400 2950
Wire Wire Line
	7850 2400 7850 2550
Text GLabel 3550 5250 0    50   Output ~ 0
led_d
Wire Wire Line
	4000 5050 3900 5050
Wire Wire Line
	3900 5050 3900 5250
Wire Wire Line
	3900 5250 3550 5250
Wire Wire Line
	3800 4950 3800 5150
Wire Wire Line
	3800 5150 3550 5150
Wire Wire Line
	3800 4950 4000 4950
Wire Wire Line
	3700 4850 3700 5050
Wire Wire Line
	3700 5050 3550 5050
Wire Wire Line
	3700 4850 4000 4850
NoConn ~ 5400 3050
Wire Wire Line
	3200 3950 4000 3950
$Comp
L Connector:TestPoint TP1
U 1 1 6010F7FC
P 1700 3950
F 0 "TP1" V 1895 4022 50  0000 C CNN
F 1 "TestPoint" V 1804 4022 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 1900 3950 50  0001 C CNN
F 3 "~" H 1900 3950 50  0001 C CNN
	1    1700 3950
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint TP2
U 1 1 6012A4BE
P 1700 4250
F 0 "TP2" V 1895 4322 50  0000 C CNN
F 1 "TestPoint" V 1804 4322 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 1900 4250 50  0001 C CNN
F 3 "~" H 1900 4250 50  0001 C CNN
	1    1700 4250
	0    -1   -1   0   
$EndComp
$Comp
L Connector:TestPoint TP4
U 1 1 6012A910
P 2200 4250
F 0 "TP4" V 2395 4322 50  0000 C CNN
F 1 "TestPoint" V 2304 4322 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 2400 4250 50  0001 C CNN
F 3 "~" H 2400 4250 50  0001 C CNN
	1    2200 4250
	0    -1   -1   0   
$EndComp
Text GLabel 1700 4250 2    50   Input ~ 0
miso
$Comp
L Connector:TestPoint TP3
U 1 1 6012AE60
P 2200 3950
F 0 "TP3" V 2395 4022 50  0000 C CNN
F 1 "TestPoint" V 2304 4022 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 2400 3950 50  0001 C CNN
F 3 "~" H 2400 3950 50  0001 C CNN
	1    2200 3950
	0    -1   -1   0   
$EndComp
Text GLabel 1700 3950 2    50   Output ~ 0
mosi
Text GLabel 2200 4250 2    50   Input ~ 0
pwm_gpo
Text GLabel 2200 3950 2    50   Input ~ 0
pwm_int
$Comp
L Connector:TestPoint TP7
U 1 1 6014AF7A
P 6550 3450
F 0 "TP7" V 6504 3638 50  0000 L CNN
F 1 "TestPoint" V 6595 3638 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 6750 3450 50  0001 C CNN
F 3 "~" H 6750 3450 50  0001 C CNN
	1    6550 3450
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP6
U 1 1 6014C141
P 6550 3250
F 0 "TP6" V 6504 3438 50  0000 L CNN
F 1 "TestPoint" V 6595 3438 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 6750 3250 50  0001 C CNN
F 3 "~" H 6750 3250 50  0001 C CNN
	1    6550 3250
	0    1    1    0   
$EndComp
Text GLabel 6550 3250 0    50   BiDi ~ 0
usb_d-
Text GLabel 6550 3450 0    50   BiDi ~ 0
usb_d+
$Comp
L Connector:TestPoint TP8
U 1 1 601B5F62
P 6700 4800
F 0 "TP8" V 6654 4988 50  0000 L CNN
F 1 "TestPoint" V 6745 4988 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 6900 4800 50  0001 C CNN
F 3 "~" H 6900 4800 50  0001 C CNN
	1    6700 4800
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP9
U 1 1 601BA315
P 6700 4950
F 0 "TP9" V 6654 5138 50  0000 L CNN
F 1 "TestPoint" V 6745 5138 50  0000 L CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 6900 4950 50  0001 C CNN
F 3 "~" H 6900 4950 50  0001 C CNN
	1    6700 4950
	0    1    1    0   
$EndComp
Text GLabel 6700 4800 0    50   Output ~ 0
sclk
Text GLabel 6700 4950 0    50   Output ~ 0
ncs
$Comp
L Connector:TestPoint TP5
U 1 1 601CF8E0
P 3300 5650
F 0 "TP5" V 3495 5722 50  0000 C CNN
F 1 "TestPoint" V 3404 5722 50  0000 C CNN
F 2 "TestPoint:TestPoint_Pad_1.0x1.0mm" H 3500 5650 50  0001 C CNN
F 3 "~" H 3500 5650 50  0001 C CNN
	1    3300 5650
	0    -1   -1   0   
$EndComp
Text GLabel 3300 5650 2    50   Output ~ 0
led_d
Text GLabel 5750 2750 2    50   Input ~ 0
strip_out
Wire Wire Line
	5750 2750 5400 2750
$EndSCHEMATC
