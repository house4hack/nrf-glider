EESchema Schematic File Version 4
LIBS:nrf_glider-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 5
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
L Regulator_Linear:LM1117-3.3 U?
U 1 1 5BCECE85
P 4500 1850
F 0 "U?" H 4500 2092 50  0000 C CNN
F 1 "LM1117-3.3" H 4500 2001 50  0000 C CNN
F 2 "" H 4500 1850 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm1117.pdf" H 4500 1850 50  0001 C CNN
	1    4500 1850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5BCED801
P 4500 2150
F 0 "#PWR?" H 4500 1900 50  0001 C CNN
F 1 "GND" H 4505 1977 50  0000 C CNN
F 2 "" H 4500 2150 50  0001 C CNN
F 3 "" H 4500 2150 50  0001 C CNN
	1    4500 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery BT?
U 1 1 5BCED8B9
P 3700 2050
F 0 "BT?" H 3808 2096 50  0000 L CNN
F 1 "4.5V - 9.9V" H 3808 2005 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" V 3700 2110 50  0001 C CNN
F 3 "~" V 3700 2110 50  0001 C CNN
	1    3700 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 1850 4200 1850
$Comp
L power:GND #PWR?
U 1 1 5BCED983
P 3700 2250
F 0 "#PWR?" H 3700 2000 50  0001 C CNN
F 1 "GND" H 3705 2077 50  0000 C CNN
F 2 "" H 3700 2250 50  0001 C CNN
F 3 "" H 3700 2250 50  0001 C CNN
	1    3700 2250
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5BCED9FA
P 5350 1850
F 0 "#PWR?" H 5350 1700 50  0001 C CNN
F 1 "VCC" H 5367 2023 50  0000 C CNN
F 2 "" H 5350 1850 50  0001 C CNN
F 3 "" H 5350 1850 50  0001 C CNN
	1    5350 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5BCEDC62
P 5350 2000
F 0 "C?" H 5442 2046 50  0000 L CNN
F 1 "100nF" H 5442 1955 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 5350 2000 50  0001 C CNN
F 3 "~" H 5350 2000 50  0001 C CNN
	1    5350 2000
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C?
U 1 1 5BCEDD9D
P 4900 2000
F 0 "C?" H 5018 2046 50  0000 L CNN
F 1 "10uF" H 5018 1955 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P2.50mm" H 4938 1850 50  0001 C CNN
F 3 "~" H 4900 2000 50  0001 C CNN
	1    4900 2000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5BCEDF2F
P 4900 2150
F 0 "#PWR?" H 4900 1900 50  0001 C CNN
F 1 "GND" H 4905 1977 50  0000 C CNN
F 2 "" H 4900 2150 50  0001 C CNN
F 3 "" H 4900 2150 50  0001 C CNN
	1    4900 2150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5BCEDF6D
P 5350 2100
F 0 "#PWR?" H 5350 1850 50  0001 C CNN
F 1 "GND" H 5355 1927 50  0000 C CNN
F 2 "" H 5350 2100 50  0001 C CNN
F 3 "" H 5350 2100 50  0001 C CNN
	1    5350 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 1850 4900 1850
$Comp
L power:VDD #PWR?
U 1 1 5BCF6415
P 3700 1850
F 0 "#PWR?" H 3700 1700 50  0001 C CNN
F 1 "VDD" H 3717 2023 50  0000 C CNN
F 2 "" H 3700 1850 50  0001 C CNN
F 3 "" H 3700 1850 50  0001 C CNN
	1    3700 1850
	1    0    0    -1  
$EndComp
Connection ~ 3700 1850
Wire Wire Line
	5350 1850 5350 1900
Connection ~ 5350 1850
Wire Wire Line
	4900 1850 5350 1850
Connection ~ 4900 1850
$Comp
L Connector:Conn_01x12_Female J?
U 1 1 5BD137AB
P 3250 3750
F 0 "J?" H 3144 4435 50  0000 C CNN
F 1 "Conn_01x12_Female" H 3144 4344 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x12_P2.54mm_Vertical" H 3250 3750 50  0001 C CNN
F 3 "~" H 3250 3750 50  0001 C CNN
	1    3250 3750
	-1   0    0    -1  
$EndComp
$Comp
L power:VDD #PWR?
U 1 1 5BD1962D
P 3900 3250
F 0 "#PWR?" H 3900 3100 50  0001 C CNN
F 1 "VDD" H 3917 3423 50  0000 C CNN
F 2 "" H 3900 3250 50  0001 C CNN
F 3 "" H 3900 3250 50  0001 C CNN
	1    3900 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 3250 3450 3250
$Comp
L power:VCC #PWR?
U 1 1 5BD1B4CC
P 4100 3350
F 0 "#PWR?" H 4100 3200 50  0001 C CNN
F 1 "VCC" H 4117 3523 50  0000 C CNN
F 2 "" H 4100 3350 50  0001 C CNN
F 3 "" H 4100 3350 50  0001 C CNN
	1    4100 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 3350 4100 3350
$Comp
L power:GND #PWR?
U 1 1 5BD1F411
P 3550 4350
F 0 "#PWR?" H 3550 4100 50  0001 C CNN
F 1 "GND" H 3555 4177 50  0000 C CNN
F 2 "" H 3550 4350 50  0001 C CNN
F 3 "" H 3550 4350 50  0001 C CNN
	1    3550 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 4350 3550 4350
$Comp
L Motor:Motor_Servo M?
U 1 1 5BD298F1
P 5200 3600
F 0 "M?" H 5531 3665 50  0000 L CNN
F 1 "Servo Left" H 5531 3574 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 5200 3410 50  0001 C CNN
F 3 "http://forums.parallax.com/uploads/attachments/46831/74481.png" H 5200 3410 50  0001 C CNN
	1    5200 3600
	1    0    0    -1  
$EndComp
$Comp
L Motor:Motor_Servo M?
U 1 1 5BD29998
P 5200 4100
F 0 "M?" H 5531 4165 50  0000 L CNN
F 1 "Servo Right" H 5531 4074 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 5200 3910 50  0001 C CNN
F 3 "http://forums.parallax.com/uploads/attachments/46831/74481.png" H 5200 3910 50  0001 C CNN
	1    5200 4100
	1    0    0    -1  
$EndComp
$Comp
L Device:Buzzer BZ?
U 1 1 5BD29AB3
P 4100 4350
F 0 "BZ?" H 4253 4379 50  0000 L CNN
F 1 "Buzzer" H 4253 4288 50  0000 L CNN
F 2 "Buzzer_Beeper:Buzzer_15x7.5RM7.6" V 4075 4450 50  0001 C CNN
F 3 "~" V 4075 4450 50  0001 C CNN
	1    4100 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 3450 3600 3450
Wire Wire Line
	3600 3450 3600 3500
Wire Wire Line
	3600 3500 4900 3500
Wire Wire Line
	3450 3750 4450 3750
Wire Wire Line
	4450 3750 4450 4000
Wire Wire Line
	4450 4000 4900 4000
$Comp
L power:VDD #PWR?
U 1 1 5BD6892B
P 4750 3400
F 0 "#PWR?" H 4750 3250 50  0001 C CNN
F 1 "VDD" H 4767 3573 50  0000 C CNN
F 2 "" H 4750 3400 50  0001 C CNN
F 3 "" H 4750 3400 50  0001 C CNN
	1    4750 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 3400 4750 3600
Wire Wire Line
	4750 3600 4900 3600
Wire Wire Line
	4750 3600 4750 4100
Wire Wire Line
	4750 4100 4900 4100
Connection ~ 4750 3600
$Comp
L power:GND #PWR?
U 1 1 5BD6F7A2
P 4600 4400
F 0 "#PWR?" H 4600 4150 50  0001 C CNN
F 1 "GND" H 4605 4227 50  0000 C CNN
F 2 "" H 4600 4400 50  0001 C CNN
F 3 "" H 4600 4400 50  0001 C CNN
	1    4600 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 4400 4600 4200
Wire Wire Line
	4600 4200 4900 4200
Wire Wire Line
	4600 4200 4600 3700
Wire Wire Line
	4600 3700 4900 3700
Connection ~ 4600 4200
Wire Wire Line
	3450 4250 4000 4250
$Comp
L power:GND #PWR?
U 1 1 5BD8512D
P 4000 4500
F 0 "#PWR?" H 4000 4250 50  0001 C CNN
F 1 "GND" H 4005 4327 50  0000 C CNN
F 2 "" H 4000 4500 50  0001 C CNN
F 3 "" H 4000 4500 50  0001 C CNN
	1    4000 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 4450 4000 4500
Text Notes 7400 7500 0    50   ~ 0
NRF and MSP430 based RC control
Text Notes 8250 7650 0    50   ~ 0
23 October 2018
Text Notes 10300 7350 0    50   ~ 0
created by Toby Kurien
Text HLabel 3250 3250 0    50   Output ~ 0
Vbatt
Text HLabel 3250 3350 0    50   Output ~ 0
3V3
Text HLabel 3250 3450 0    50   BiDi ~ 0
A0
Text HLabel 3250 3550 0    50   BiDi ~ 0
A1.RX
Text HLabel 3250 3650 0    50   BiDi ~ 0
A2.TX
Text HLabel 3250 3750 0    50   BiDi ~ 0
A3
Text HLabel 3250 3850 0    50   BiDi ~ 0
IO0
Text HLabel 3250 3950 0    50   BiDi ~ 0
IO1
Text HLabel 3250 4050 0    50   BiDi ~ 0
IO2
Text HLabel 3250 4150 0    50   BiDi ~ 0
IO3
Text HLabel 3250 4250 0    50   BiDi ~ 0
IO4
Text HLabel 3250 4350 0    50   Output ~ 0
GND
$EndSCHEMATC
