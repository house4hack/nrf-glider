EESchema Schematic File Version 4
LIBS:glider_tx-cache
EELAYER 26 0
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
L power:VCC #PWR019
U 1 1 5BD1D3CE
P 5150 3150
F 0 "#PWR019" H 5150 3000 50  0001 C CNN
F 1 "VCC" H 5167 3323 50  0000 C CNN
F 2 "" H 5150 3150 50  0001 C CNN
F 3 "" H 5150 3150 50  0001 C CNN
	1    5150 3150
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR017
U 1 1 5BD1D429
P 5000 2900
F 0 "#PWR017" H 5000 2750 50  0001 C CNN
F 1 "VDD" H 5017 3073 50  0000 C CNN
F 2 "" H 5000 2900 50  0001 C CNN
F 3 "" H 5000 2900 50  0001 C CNN
	1    5000 2900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR015
U 1 1 5BD1F482
P 4450 4350
F 0 "#PWR015" H 4450 4100 50  0001 C CNN
F 1 "GND" H 4455 4177 50  0000 C CNN
F 2 "" H 4450 4350 50  0001 C CNN
F 3 "" H 4450 4350 50  0001 C CNN
	1    4450 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 4350 4450 4350
Wire Wire Line
	4350 3250 5000 3250
Wire Wire Line
	5000 3250 5000 2900
Wire Wire Line
	4350 3350 5150 3350
Wire Wire Line
	5150 3350 5150 3150
NoConn ~ 5550 3100
$Comp
L Device:R_POT_US RV1
U 1 1 5BD2C04D
P 6050 3500
F 0 "RV1" H 5983 3546 50  0000 R CNN
F 1 "10k" H 5983 3455 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_ACP_CA9-V10_Vertical" H 6050 3500 50  0001 C CNN
F 3 "~" H 6050 3500 50  0001 C CNN
	1    6050 3500
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_POT_US RV2
U 1 1 5BD2C0E7
P 6050 4000
F 0 "RV2" H 5983 4046 50  0000 R CNN
F 1 "10k" H 5983 3955 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_ACP_CA9-V10_Vertical" H 6050 4000 50  0001 C CNN
F 3 "~" H 6050 4000 50  0001 C CNN
	1    6050 4000
	-1   0    0    -1  
$EndComp
$Comp
L Device:Buzzer BZ1
U 1 1 5BD2C1D8
P 5000 4350
F 0 "BZ1" H 5153 4379 50  0000 L CNN
F 1 "Buzzer" H 5153 4288 50  0000 L CNN
F 2 "Buzzer_Beeper:Buzzer_15x7.5RM7.6" V 4975 4450 50  0001 C CNN
F 3 "~" V 4975 4450 50  0001 C CNN
	1    5000 4350
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW2
U 1 1 5BD2C33F
P 5850 4550
F 0 "SW2" H 5850 4835 50  0000 C CNN
F 1 "TRIM" H 5850 4744 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H5mm" H 5850 4750 50  0001 C CNN
F 3 "" H 5850 4750 50  0001 C CNN
	1    5850 4550
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:LM1117-3.3 U4
U 1 1 5BD2C866
P 6300 1450
F 0 "U4" H 6300 1692 50  0000 C CNN
F 1 "LM1117-3.3" H 6300 1601 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Horizontal_TabDown" H 6300 1450 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm1117.pdf" H 6300 1450 50  0001 C CNN
	1    6300 1450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR023
U 1 1 5BD2C86D
P 6300 1750
F 0 "#PWR023" H 6300 1500 50  0001 C CNN
F 1 "GND" H 6305 1577 50  0000 C CNN
F 2 "" H 6300 1750 50  0001 C CNN
F 3 "" H 6300 1750 50  0001 C CNN
	1    6300 1750
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery BT1
U 1 1 5BD2C873
P 5500 1650
F 0 "BT1" H 5608 1696 50  0000 L CNN
F 1 "4.5V - 9.9V" H 5608 1605 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" V 5500 1710 50  0001 C CNN
F 3 "~" V 5500 1710 50  0001 C CNN
	1    5500 1650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR020
U 1 1 5BD2C87B
P 5500 1850
F 0 "#PWR020" H 5500 1600 50  0001 C CNN
F 1 "GND" H 5505 1677 50  0000 C CNN
F 2 "" H 5500 1850 50  0001 C CNN
F 3 "" H 5500 1850 50  0001 C CNN
	1    5500 1850
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR027
U 1 1 5BD2C881
P 7150 1450
F 0 "#PWR027" H 7150 1300 50  0001 C CNN
F 1 "VCC" H 7167 1623 50  0000 C CNN
F 2 "" H 7150 1450 50  0001 C CNN
F 3 "" H 7150 1450 50  0001 C CNN
	1    7150 1450
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 5BD2C887
P 7150 1600
F 0 "C2" H 7242 1646 50  0000 L CNN
F 1 "100nF" H 7242 1555 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 7150 1600 50  0001 C CNN
F 3 "~" H 7150 1600 50  0001 C CNN
	1    7150 1600
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C1
U 1 1 5BD2C88E
P 6700 1600
F 0 "C1" H 6818 1646 50  0000 L CNN
F 1 "10uF" H 6818 1555 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P2.50mm" H 6738 1450 50  0001 C CNN
F 3 "~" H 6700 1600 50  0001 C CNN
	1    6700 1600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR025
U 1 1 5BD2C895
P 6700 1750
F 0 "#PWR025" H 6700 1500 50  0001 C CNN
F 1 "GND" H 6705 1577 50  0000 C CNN
F 2 "" H 6700 1750 50  0001 C CNN
F 3 "" H 6700 1750 50  0001 C CNN
	1    6700 1750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR028
U 1 1 5BD2C89B
P 7150 1700
F 0 "#PWR028" H 7150 1450 50  0001 C CNN
F 1 "GND" H 7155 1527 50  0000 C CNN
F 2 "" H 7150 1700 50  0001 C CNN
F 3 "" H 7150 1700 50  0001 C CNN
	1    7150 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 1450 6700 1450
$Comp
L power:VDD #PWR021
U 1 1 5BD2C8A2
P 6000 1350
F 0 "#PWR021" H 6000 1200 50  0001 C CNN
F 1 "VDD" H 6017 1523 50  0000 C CNN
F 2 "" H 6000 1350 50  0001 C CNN
F 3 "" H 6000 1350 50  0001 C CNN
	1    6000 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 1450 7150 1500
Connection ~ 7150 1450
Wire Wire Line
	6700 1450 7150 1450
Connection ~ 6700 1450
$Comp
L power:GND #PWR016
U 1 1 5BD90917
P 4900 4650
F 0 "#PWR016" H 4900 4400 50  0001 C CNN
F 1 "GND" H 4905 4477 50  0000 C CNN
F 2 "" H 4900 4650 50  0001 C CNN
F 3 "" H 4900 4650 50  0001 C CNN
	1    4900 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 3450 5700 3450
Wire Wire Line
	5700 3450 5700 3500
Wire Wire Line
	5700 3500 5900 3500
Wire Wire Line
	4350 3750 5800 3750
Wire Wire Line
	5800 3750 5800 4000
Wire Wire Line
	5800 4000 5900 4000
$Comp
L power:VCC #PWR026
U 1 1 5BDA8B66
P 6700 3250
F 0 "#PWR026" H 6700 3100 50  0001 C CNN
F 1 "VCC" H 6717 3423 50  0000 C CNN
F 2 "" H 6700 3250 50  0001 C CNN
F 3 "" H 6700 3250 50  0001 C CNN
	1    6700 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 3350 6700 3350
Wire Wire Line
	6700 3350 6700 3250
Wire Wire Line
	6700 3350 6700 3850
Wire Wire Line
	6700 3850 6050 3850
Connection ~ 6700 3350
$Comp
L power:GND #PWR024
U 1 1 5BDB1721
P 6650 4250
F 0 "#PWR024" H 6650 4000 50  0001 C CNN
F 1 "GND" H 6655 4077 50  0000 C CNN
F 2 "" H 6650 4250 50  0001 C CNN
F 3 "" H 6650 4250 50  0001 C CNN
	1    6650 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 4150 6650 4150
Wire Wire Line
	6650 4150 6650 4250
Wire Wire Line
	6650 4150 6650 3650
Wire Wire Line
	6650 3650 6050 3650
Connection ~ 6650 4150
$Comp
L power:GND #PWR022
U 1 1 5BDC42C6
P 6050 4600
F 0 "#PWR022" H 6050 4350 50  0001 C CNN
F 1 "GND" H 6055 4427 50  0000 C CNN
F 2 "" H 6050 4600 50  0001 C CNN
F 3 "" H 6050 4600 50  0001 C CNN
	1    6050 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 4600 6050 4550
Wire Wire Line
	5650 4150 5650 4550
$Comp
L Device:R R3
U 1 1 5BDCDB06
P 5100 3950
F 0 "R3" H 5170 3996 50  0000 L CNN
F 1 "4k7" H 5170 3905 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 5030 3950 50  0001 C CNN
F 3 "~" H 5100 3950 50  0001 C CNN
	1    5100 3950
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR018
U 1 1 5BDCDC3B
P 5100 3700
F 0 "#PWR018" H 5100 3550 50  0001 C CNN
F 1 "VCC" H 5117 3873 50  0000 C CNN
F 2 "" H 5100 3700 50  0001 C CNN
F 3 "" H 5100 3700 50  0001 C CNN
	1    5100 3700
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J5
U 1 1 5BCF8F2B
P 4150 2500
F 0 "J5" H 4256 2778 50  0000 C CNN
F 1 "UART" H 4256 2687 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Horizontal" H 4150 2500 50  0001 C CNN
F 3 "~" H 4150 2500 50  0001 C CNN
	1    4150 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 3550 4650 3550
Wire Wire Line
	4650 3550 4650 2500
Wire Wire Line
	4650 2500 4350 2500
Wire Wire Line
	4350 2400 4700 2400
Wire Wire Line
	4700 2400 4700 3650
Wire Wire Line
	4700 3650 4350 3650
$Comp
L power:GND #PWR014
U 1 1 5BD038ED
P 4450 2700
F 0 "#PWR014" H 4450 2450 50  0001 C CNN
F 1 "GND" H 4455 2527 50  0000 C CNN
F 2 "" H 4450 2700 50  0001 C CNN
F 3 "" H 4450 2700 50  0001 C CNN
	1    4450 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 2600 4450 2600
Wire Wire Line
	4450 2600 4450 2700
Text Notes 4000 2450 0    50   ~ 0
TX
Text Notes 4000 2550 0    50   ~ 0
RX
Text Notes 3950 2650 0    50   ~ 0
GND
Wire Notes Line
	5850 3300 6850 3300
Wire Notes Line
	6850 3300 6850 4200
Wire Notes Line
	6850 4200 5850 4200
Wire Notes Line
	5850 4200 5850 3300
Text Notes 5900 3250 0    50   ~ 0
Joystick
Text Notes 5400 3400 0    50   ~ 0
Left/Right\n
Text Notes 5400 3700 0    50   ~ 0
Up/Down
Wire Wire Line
	5100 3700 5100 3800
Wire Wire Line
	5100 4100 5100 4150
Connection ~ 5100 4150
Wire Wire Line
	5100 4150 5650 4150
Text Notes 7400 7500 0    50   ~ 0
NRF and MSP430 based RC control
Text Notes 8250 7650 0    50   ~ 0
23 October 2018
Text Notes 10300 7350 0    50   ~ 0
created by Toby Kurien
$Comp
L Switch:SW_SPST SW1
U 1 1 5BD0D3D1
P 5700 1450
F 0 "SW1" H 5700 1685 50  0000 C CNN
F 1 "SW_SPST" H 5700 1594 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_SKQG_WithStem" H 5700 1450 50  0001 C CNN
F 3 "" H 5700 1450 50  0001 C CNN
	1    5700 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 1450 6000 1450
Wire Wire Line
	6000 1350 6000 1450
Connection ~ 6000 1450
Text HLabel 4150 3250 0    50   Output ~ 0
Vbatt
Text HLabel 4150 3350 0    50   Output ~ 0
3V3
Text HLabel 4150 3450 0    50   BiDi ~ 0
A0
Text HLabel 4150 3550 0    50   BiDi ~ 0
A1.RX
Text HLabel 4150 3650 0    50   BiDi ~ 0
A2.TX
Text HLabel 4150 3750 0    50   BiDi ~ 0
A3
Text HLabel 3900 4050 0    50   BiDi ~ 0
IO0
Text HLabel 3900 4150 0    50   BiDi ~ 0
IO1
Text HLabel 3900 4250 0    50   BiDi ~ 0
IO2
Text HLabel 3900 4350 0    50   BiDi ~ 0
IO3
Text HLabel 3900 4450 0    50   BiDi ~ 0
IO4
Text HLabel 3900 4550 0    50   Output ~ 0
GND
$Comp
L Connector:Conn_01x06_Female J6
U 1 1 5BE9EDB9
P 4150 3450
F 0 "J6" H 4044 3835 50  0000 C CNN
F 1 "Conn_01x06_Female" H 4044 3744 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 4150 3450 50  0001 C CNN
F 3 "~" H 4150 3450 50  0001 C CNN
	1    4150 3450
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x06_Female J4
U 1 1 5BE9FD1D
P 3900 4250
F 0 "J4" H 3794 4635 50  0000 C CNN
F 1 "Conn_01x06_Female" H 3794 4544 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 3900 4250 50  0001 C CNN
F 3 "~" H 3900 4250 50  0001 C CNN
	1    3900 4250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4050 4550 4100 4550
Connection ~ 4100 4550
Wire Wire Line
	4100 4550 4350 4550
Wire Wire Line
	4350 4550 4350 4350
Wire Wire Line
	4100 4450 4300 4450
Wire Wire Line
	4300 4450 4300 4250
Wire Wire Line
	4250 4150 4250 4350
Wire Wire Line
	4250 4350 4100 4350
Wire Wire Line
	4250 4150 5100 4150
Wire Wire Line
	4900 4450 4900 4650
Wire Wire Line
	4300 4250 4900 4250
$EndSCHEMATC
