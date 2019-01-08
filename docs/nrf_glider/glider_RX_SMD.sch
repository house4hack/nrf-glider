EESchema Schematic File Version 4
LIBS:glider_RX_SMD-cache
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
L RF:NRF24L01_Breakout U?
U 1 1 5BCECC43
P 5350 2300
AR Path="/5BD3906D/5BCECC43" Ref="U?"  Part="1" 
AR Path="/5BD39338/5BCECC43" Ref="U?"  Part="1" 
AR Path="/5BCECC43" Ref="U2"  Part="1" 
F 0 "U2" H 5828 2278 50  0000 L CNN
F 1 "NRF24L01_Breakout" H 5828 2187 50  0000 L CNN
F 2 "mysensors_radios:NRF24L01-SMD" H 5500 2900 50  0001 L CIN
F 3 "http://www.nordicsemi.com/eng/content/download/2730/34105/file/nRF24L01_Product_Specification_v2_0.pdf" H 5350 2200 50  0001 C CNN
	1    5350 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 2200 4650 2200
Wire Wire Line
	4650 2200 4650 3450
$Comp
L power:VCC #PWR?
U 1 1 5BCEF2DA
P 5350 1600
AR Path="/5BD3906D/5BCEF2DA" Ref="#PWR?"  Part="1" 
AR Path="/5BD39338/5BCEF2DA" Ref="#PWR?"  Part="1" 
AR Path="/5BCEF2DA" Ref="#PWR08"  Part="1" 
F 0 "#PWR08" H 5350 1450 50  0001 C CNN
F 1 "VCC" H 5367 1773 50  0000 C CNN
F 2 "" H 5350 1600 50  0001 C CNN
F 3 "" H 5350 1600 50  0001 C CNN
	1    5350 1600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5BCEF357
P 5350 2950
AR Path="/5BD3906D/5BCEF357" Ref="#PWR?"  Part="1" 
AR Path="/5BD39338/5BCEF357" Ref="#PWR?"  Part="1" 
AR Path="/5BCEF357" Ref="#PWR09"  Part="1" 
F 0 "#PWR09" H 5350 2700 50  0001 C CNN
F 1 "GND" H 5355 2777 50  0000 C CNN
F 2 "" H 5350 2950 50  0001 C CNN
F 3 "" H 5350 2950 50  0001 C CNN
	1    5350 2950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5BCEF4DF
P 2900 4750
AR Path="/5BD3906D/5BCEF4DF" Ref="#PWR?"  Part="1" 
AR Path="/5BD39338/5BCEF4DF" Ref="#PWR?"  Part="1" 
AR Path="/5BCEF4DF" Ref="#PWR05"  Part="1" 
F 0 "#PWR05" H 2900 4500 50  0001 C CNN
F 1 "GND" H 2905 4577 50  0000 C CNN
F 2 "" H 2900 4750 50  0001 C CNN
F 3 "" H 2900 4750 50  0001 C CNN
	1    2900 4750
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5BCEF55C
P 2750 2250
AR Path="/5BD3906D/5BCEF55C" Ref="#PWR?"  Part="1" 
AR Path="/5BD39338/5BCEF55C" Ref="#PWR?"  Part="1" 
AR Path="/5BCEF55C" Ref="#PWR02"  Part="1" 
F 0 "#PWR02" H 2750 2100 50  0001 C CNN
F 1 "VCC" H 2767 2423 50  0000 C CNN
F 2 "" H 2750 2250 50  0001 C CNN
F 3 "" H 2750 2250 50  0001 C CNN
	1    2750 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5BCF4A41
P 5150 5750
AR Path="/5BD3906D/5BCF4A41" Ref="R?"  Part="1" 
AR Path="/5BD39338/5BCF4A41" Ref="R?"  Part="1" 
AR Path="/5BCF4A41" Ref="R4"  Part="1" 
F 0 "R4" H 5220 5796 50  0000 L CNN
F 1 "20k" H 5220 5705 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5080 5750 50  0001 C CNN
F 3 "~" H 5150 5750 50  0001 C CNN
	1    5150 5750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5BCF4AC6
P 5150 6050
AR Path="/5BD3906D/5BCF4AC6" Ref="R?"  Part="1" 
AR Path="/5BD39338/5BCF4AC6" Ref="R?"  Part="1" 
AR Path="/5BCF4AC6" Ref="R5"  Part="1" 
F 0 "R5" H 5220 6096 50  0000 L CNN
F 1 "10k" H 5220 6005 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5080 6050 50  0001 C CNN
F 3 "~" H 5150 6050 50  0001 C CNN
	1    5150 6050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5BCF4B6F
P 5150 6250
AR Path="/5BD3906D/5BCF4B6F" Ref="#PWR?"  Part="1" 
AR Path="/5BD39338/5BCF4B6F" Ref="#PWR?"  Part="1" 
AR Path="/5BCF4B6F" Ref="#PWR013"  Part="1" 
F 0 "#PWR013" H 5150 6000 50  0001 C CNN
F 1 "GND" H 5155 6077 50  0000 C CNN
F 2 "" H 5150 6250 50  0001 C CNN
F 3 "" H 5150 6250 50  0001 C CNN
	1    5150 6250
	1    0    0    -1  
$EndComp
Connection ~ 5150 5900
$Comp
L power:VDD #PWR?
U 1 1 5BCF63D1
P 5150 5550
AR Path="/5BD3906D/5BCF63D1" Ref="#PWR?"  Part="1" 
AR Path="/5BD39338/5BCF63D1" Ref="#PWR?"  Part="1" 
AR Path="/5BCF63D1" Ref="#PWR012"  Part="1" 
F 0 "#PWR012" H 5150 5400 50  0001 C CNN
F 1 "VDD" H 5167 5723 50  0000 C CNN
F 2 "" H 5150 5550 50  0001 C CNN
F 3 "" H 5150 5550 50  0001 C CNN
	1    5150 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  5300 3100 5300
Text Notes 1100 6650 0    50   ~ 0
MCU Module
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 5BD41D4E
P 6150 1050
AR Path="/5BD3906D/5BD41D4E" Ref="J?"  Part="1" 
AR Path="/5BD39338/5BD41D4E" Ref="J?"  Part="1" 
AR Path="/5BD41D4E" Ref="J1"  Part="1" 
F 0 "J1" H 6250 650 50  0000 R CNN
F 1 "PROG" H 6250 550 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 6150 1050 50  0001 C CNN
F 3 "~" H 6150 1050 50  0001 C CNN
	1    6150 1050
	-1   0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5BD421B2
P 5750 850
AR Path="/5BD3906D/5BD421B2" Ref="#PWR?"  Part="1" 
AR Path="/5BD39338/5BD421B2" Ref="#PWR?"  Part="1" 
AR Path="/5BD421B2" Ref="#PWR010"  Part="1" 
F 0 "#PWR010" H 5750 700 50  0001 C CNN
F 1 "VCC" H 5767 1023 50  0000 C CNN
F 2 "" H 5750 850 50  0001 C CNN
F 3 "" H 5750 850 50  0001 C CNN
	1    5750 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 850  5950 850 
$Comp
L power:GND #PWR?
U 1 1 5BD44828
P 5750 1400
AR Path="/5BD3906D/5BD44828" Ref="#PWR?"  Part="1" 
AR Path="/5BD39338/5BD44828" Ref="#PWR?"  Part="1" 
AR Path="/5BD44828" Ref="#PWR011"  Part="1" 
F 0 "#PWR011" H 5750 1150 50  0001 C CNN
F 1 "GND" H 5755 1227 50  0000 C CNN
F 2 "" H 5750 1400 50  0001 C CNN
F 3 "" H 5750 1400 50  0001 C CNN
	1    5750 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 1350 5950 1350
Text Notes 6200 900  0    50   ~ 0
3V3
Text Notes 6200 1200 0    50   ~ 0
RESET
Text Notes 6200 1300 0    50   ~ 0
TEST
Text Notes 6200 1000 0    50   ~ 0
RX
Text Notes 6200 1100 0    50   ~ 0
TX
Text Notes 6200 1400 0    50   ~ 0
GND
Text Notes 7400 7500 0    50   ~ 0
NRF and MSP430 based RC control
Text Notes 8250 7650 0    50   ~ 0
23 October 2018
Text Notes 10300 7350 0    50   ~ 0
created by Toby Kurien
Wire Wire Line
	1100 5150 4450 5150
Wire Wire Line
	4750 2000 4850 2000
Wire Wire Line
	4750 2000 4750 3650
Wire Wire Line
	4850 2100 4700 2100
Wire Wire Line
	4600 1050 5950 1050
Wire Wire Line
	5850 950  5950 950 
Wire Wire Line
	1150 1250 1150 2800
$Comp
L Device:R R?
U 1 1 5C250A55
P 2650 950
AR Path="/5BD3906D/5C250A55" Ref="R?"  Part="1" 
AR Path="/5BD39338/5C250A55" Ref="R?"  Part="1" 
AR Path="/5C250A55" Ref="R2"  Part="1" 
F 0 "R2" H 2720 996 50  0000 L CNN
F 1 "47k" H 2720 905 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2580 950 50  0001 C CNN
F 3 "~" H 2650 950 50  0001 C CNN
	1    2650 950 
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5C250AE1
P 2650 700
AR Path="/5BD3906D/5C250AE1" Ref="#PWR?"  Part="1" 
AR Path="/5BD39338/5C250AE1" Ref="#PWR?"  Part="1" 
AR Path="/5C250AE1" Ref="#PWR03"  Part="1" 
F 0 "#PWR03" H 2650 550 50  0001 C CNN
F 1 "VCC" H 2667 873 50  0000 C CNN
F 2 "" H 2650 700 50  0001 C CNN
F 3 "" H 2650 700 50  0001 C CNN
	1    2650 700 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5C250AFC
P 2650 1650
AR Path="/5BD3906D/5C250AFC" Ref="#PWR?"  Part="1" 
AR Path="/5BD39338/5C250AFC" Ref="#PWR?"  Part="1" 
AR Path="/5C250AFC" Ref="#PWR04"  Part="1" 
F 0 "#PWR04" H 2650 1400 50  0001 C CNN
F 1 "GND" H 2655 1477 50  0000 C CNN
F 2 "" H 2650 1650 50  0001 C CNN
F 3 "" H 2650 1650 50  0001 C CNN
	1    2650 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 700  2650 800 
Wire Wire Line
	2650 1100 2650 1250
Connection ~ 2650 1250
Wire Wire Line
	2650 1250 1150 1250
$Comp
L Device:C C1
U 1 1 5C254594
P 2650 1450
F 0 "C1" H 2765 1496 50  0000 L CNN
F 1 "10n" H 2765 1405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2688 1300 50  0001 C CNN
F 3 "~" H 2650 1450 50  0001 C CNN
	1    2650 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 1250 2650 1300
Wire Wire Line
	2650 1600 2650 1650
$Comp
L Regulator_Linear:LM1117-3.3 U3
U 1 1 5C25ACC4
P 9250 1050
F 0 "U3" H 9250 1292 50  0000 C CNN
F 1 "LM1117-3.3" H 9250 1201 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223" H 9250 1050 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm1117.pdf" H 9250 1050 50  0001 C CNN
	1    9250 1050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR017
U 1 1 5C25ACCB
P 9250 1500
F 0 "#PWR017" H 9250 1250 50  0001 C CNN
F 1 "GND" H 9255 1327 50  0000 C CNN
F 2 "" H 9250 1500 50  0001 C CNN
F 3 "" H 9250 1500 50  0001 C CNN
	1    9250 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery BT1
U 1 1 5C25ACD1
P 7850 1200
F 0 "BT1" H 7958 1246 50  0000 L CNN
F 1 "4.5V - 7.2V" H 7958 1155 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" V 7850 1260 50  0001 C CNN
F 3 "~" V 7850 1260 50  0001 C CNN
	1    7850 1200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR015
U 1 1 5C25ACD8
P 7850 1450
F 0 "#PWR015" H 7850 1200 50  0001 C CNN
F 1 "GND" H 7855 1277 50  0000 C CNN
F 2 "" H 7850 1450 50  0001 C CNN
F 3 "" H 7850 1450 50  0001 C CNN
	1    7850 1450
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR021
U 1 1 5C25ACDE
P 10100 1050
F 0 "#PWR021" H 10100 900 50  0001 C CNN
F 1 "VCC" H 10117 1223 50  0000 C CNN
F 2 "" H 10100 1050 50  0001 C CNN
F 3 "" H 10100 1050 50  0001 C CNN
	1    10100 1050
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C3
U 1 1 5C25ACEB
P 9650 1200
F 0 "C3" H 9768 1246 50  0000 L CNN
F 1 "22uF Tan" H 9768 1155 50  0000 L CNN
F 2 "Capacitor_Tantalum_SMD:CP_EIA-3216-18_Kemet-A_Pad1.58x1.35mm_HandSolder" H 9688 1050 50  0001 C CNN
F 3 "~" H 9650 1200 50  0001 C CNN
	1    9650 1200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR020
U 1 1 5C25ACF2
P 9650 1400
F 0 "#PWR020" H 9650 1150 50  0001 C CNN
F 1 "GND" H 9655 1227 50  0000 C CNN
F 2 "" H 9650 1400 50  0001 C CNN
F 3 "" H 9650 1400 50  0001 C CNN
	1    9650 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	9550 1050 9650 1050
$Comp
L power:VDD #PWR014
U 1 1 5C25ACFF
P 7850 850
F 0 "#PWR014" H 7850 700 50  0001 C CNN
F 1 "VDD" H 7867 1023 50  0000 C CNN
F 2 "" H 7850 850 50  0001 C CNN
F 3 "" H 7850 850 50  0001 C CNN
	1    7850 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	9650 1050 10100 1050
Connection ~ 9650 1050
Wire Wire Line
	9250 1350 9250 1500
Wire Wire Line
	8950 1050 8950 950 
Wire Wire Line
	8950 950  8200 950 
$Comp
L Motor:Motor_Servo M5
U 1 1 5C25FEE3
P 9850 3850
F 0 "M5" H 10181 3915 50  0000 L CNN
F 1 "Servo Left" H 10181 3824 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 9850 3660 50  0001 C CNN
F 3 "http://forums.parallax.com/uploads/attachments/46831/74481.png" H 9850 3660 50  0001 C CNN
	1    9850 3850
	1    0    0    -1  
$EndComp
$Comp
L Motor:Motor_Servo M2
U 1 1 5C25FEEA
P 9850 4800
F 0 "M2" H 10181 4865 50  0000 L CNN
F 1 "Servo Right" H 10181 4774 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 9850 4610 50  0001 C CNN
F 3 "http://forums.parallax.com/uploads/attachments/46831/74481.png" H 9850 4610 50  0001 C CNN
	1    9850 4800
	1    0    0    -1  
$EndComp
$Comp
L Device:Buzzer BZ1
U 1 1 5C25FEF1
P 5800 3550
F 0 "BZ1" H 5953 3579 50  0000 L CNN
F 1 "Buzzer" H 5953 3488 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" V 5775 3650 50  0001 C CNN
F 3 "~" V 5775 3650 50  0001 C CNN
	1    5800 3550
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR019
U 1 1 5C25FEFE
P 9400 3000
F 0 "#PWR019" H 9400 2850 50  0001 C CNN
F 1 "VDD" H 9417 3173 50  0000 C CNN
F 2 "" H 9400 3000 50  0001 C CNN
F 3 "" H 9400 3000 50  0001 C CNN
	1    9400 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 4300 9550 4300
Wire Wire Line
	9400 4800 9550 4800
$Comp
L power:GND #PWR018
U 1 1 5C25FF09
P 9250 6100
F 0 "#PWR018" H 9250 5850 50  0001 C CNN
F 1 "GND" H 9255 5927 50  0000 C CNN
F 2 "" H 9250 6100 50  0001 C CNN
F 3 "" H 9250 6100 50  0001 C CNN
	1    9250 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 4900 9550 4900
Wire Wire Line
	9250 4400 9550 4400
$Comp
L power:GND #PWR016
U 1 1 5C25FF14
P 5700 3700
F 0 "#PWR016" H 5700 3450 50  0001 C CNN
F 1 "GND" H 5705 3527 50  0000 C CNN
F 2 "" H 5700 3700 50  0001 C CNN
F 3 "" H 5700 3700 50  0001 C CNN
	1    5700 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 4300 9400 4800
Connection ~ 9400 4300
Wire Wire Line
	9250 4900 9250 4400
Connection ~ 9250 4900
$Comp
L Motor:Motor_Servo M3
U 1 1 5C271CD0
P 9850 5250
F 0 "M3" H 10181 5315 50  0000 L CNN
F 1 "Servo Left" H 10181 5224 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 9850 5060 50  0001 C CNN
F 3 "http://forums.parallax.com/uploads/attachments/46831/74481.png" H 9850 5060 50  0001 C CNN
	1    9850 5250
	1    0    0    -1  
$EndComp
$Comp
L Motor:Motor_Servo M4
U 1 1 5C271D34
P 9850 5650
F 0 "M4" H 10181 5715 50  0000 L CNN
F 1 "Servo Left" H 10181 5624 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 9850 5460 50  0001 C CNN
F 3 "http://forums.parallax.com/uploads/attachments/46831/74481.png" H 9850 5460 50  0001 C CNN
	1    9850 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 4900 9250 5350
Wire Wire Line
	9550 5350 9250 5350
Connection ~ 9250 5350
Wire Wire Line
	9250 5350 9250 5750
Wire Wire Line
	9550 5750 9250 5750
Connection ~ 9250 5750
Wire Wire Line
	9250 5750 9250 6100
Wire Wire Line
	9400 5650 9550 5650
Connection ~ 9400 4800
Wire Wire Line
	9550 5250 9400 5250
Wire Wire Line
	9400 4800 9400 5250
Connection ~ 9400 5250
Wire Wire Line
	9400 5250 9400 5650
Wire Wire Line
	9000 5150 9550 5150
Wire Wire Line
	9550 5550 8950 5550
Wire Wire Line
	5700 4200 9550 4200
Wire Wire Line
	5450 4700 9550 4700
Wire Wire Line
	8950 5050 8950 5550
$Comp
L Device:CP C2
U 1 1 5C2A7832
P 6100 2150
F 0 "C2" H 6218 2196 50  0000 L CNN
F 1 "10uF" H 6218 2105 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_5x5.8" H 6138 2000 50  0001 C CNN
F 3 "~" H 6100 2150 50  0001 C CNN
	1    6100 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 1650 6100 1650
Wire Wire Line
	6100 1650 6100 2000
Wire Wire Line
	5350 2900 5350 2950
Wire Wire Line
	6100 2900 5350 2900
Wire Wire Line
	6100 2300 6100 2900
Connection ~ 5350 2900
Wire Wire Line
	5350 1600 5350 1650
Connection ~ 5350 1650
Wire Wire Line
	5350 1650 5350 1700
$Comp
L Switch:SW_Push SW1
U 1 1 5C2B770F
P 3300 6400
F 0 "SW1" H 3300 6685 50  0000 C CNN
F 1 "Pair" H 3300 6594 50  0000 C CNN
F 2 "Button_Switch_SMD:SW_SPST_FSMSM" H 3300 6600 50  0001 C CNN
F 3 "" H 3300 6600 50  0001 C CNN
	1    3300 6400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5C2B7716
P 3500 6450
F 0 "#PWR06" H 3500 6200 50  0001 C CNN
F 1 "GND" H 3505 6277 50  0000 C CNN
F 2 "" H 3500 6450 50  0001 C CNN
F 3 "" H 3500 6450 50  0001 C CNN
	1    3500 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 6450 3500 6400
Wire Wire Line
	3100 5300 3100 6300
$Comp
L Device:R R1
U 1 1 5C2C046C
P 2250 6300
F 0 "R1" H 2320 6346 50  0000 L CNN
F 1 "4k7" H 2320 6255 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2180 6300 50  0001 C CNN
F 3 "~" H 2250 6300 50  0001 C CNN
	1    2250 6300
	0    1    1    0   
$EndComp
$Comp
L power:VCC #PWR01
U 1 1 5C2C0473
P 1800 6150
F 0 "#PWR01" H 1800 6000 50  0001 C CNN
F 1 "VCC" H 1817 6323 50  0000 C CNN
F 2 "" H 1800 6150 50  0001 C CNN
F 3 "" H 1800 6150 50  0001 C CNN
	1    1800 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 6150 1800 6300
Wire Wire Line
	1800 6300 2100 6300
Wire Wire Line
	2400 6300 3100 6300
Connection ~ 3100 6300
Wire Wire Line
	3100 6300 3100 6400
$Comp
L Device:LED D1
U 1 1 5C2D19DC
P 4450 6050
F 0 "D1" V 4488 5933 50  0000 R CNN
F 1 "LED" V 4397 5933 50  0000 R CNN
F 2 "LED_SMD:LED_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 4450 6050 50  0001 C CNN
F 3 "~" H 4450 6050 50  0001 C CNN
	1    4450 6050
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5C2D1B54
P 4450 6450
F 0 "#PWR07" H 4450 6200 50  0001 C CNN
F 1 "GND" H 4455 6277 50  0000 C CNN
F 2 "" H 4450 6450 50  0001 C CNN
F 3 "" H 4450 6450 50  0001 C CNN
	1    4450 6450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5C2D1B85
P 4450 5650
F 0 "R3" H 4520 5696 50  0000 L CNN
F 1 "220" H 4520 5605 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4380 5650 50  0001 C CNN
F 3 "~" H 4450 5650 50  0001 C CNN
	1    4450 5650
	-1   0    0    1   
$EndComp
Wire Wire Line
	4450 6450 4450 6200
Wire Wire Line
	4450 5900 4450 5800
Wire Wire Line
	4450 5500 4450 5150
Wire Wire Line
	9650 1350 9650 1400
Wire Wire Line
	5150 6200 5150 6250
Wire Wire Line
	7850 1400 7850 1450
Wire Wire Line
	5750 1350 5750 1400
$Comp
L MCU_Texas_MSP430:MSP430G2553IPW28 U1
U 1 1 5C2689FC
P 2750 3650
F 0 "U1" H 2750 4928 50  0000 C CNN
F 1 "MSP430G2553IPW28" H 2750 4837 50  0000 C CNN
F 2 "Package_SO:TSSOP-28_4.4x9.7mm_P0.65mm" H 1600 2650 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/msp430g2553.pdf" H 2750 3650 50  0001 C CNN
	1    2750 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 4750 2900 4750
Wire Wire Line
	1350 2800 1150 2800
Wire Wire Line
	4150 2800 4800 2800
Wire Wire Line
	4150 3050 5850 3050
Wire Wire Line
	5850 3050 5850 950 
Wire Wire Line
	4150 3150 4600 3150
Wire Wire Line
	4600 3150 4600 1050
Wire Wire Line
	4150 3450 4650 3450
Wire Wire Line
	4150 3550 4700 3550
Wire Wire Line
	4700 3550 4700 2100
Wire Wire Line
	4150 3650 4750 3650
Wire Wire Line
	4150 3800 4350 3800
Wire Wire Line
	4350 3800 4350 2300
Wire Wire Line
	4350 2300 4850 2300
Wire Wire Line
	4150 3900 4450 3900
Wire Wire Line
	4450 3900 4450 2500
Wire Wire Line
	4450 2500 4850 2500
Wire Wire Line
	4250 2600 4250 4000
Wire Wire Line
	4250 4000 4150 4000
Wire Wire Line
	4250 2600 4850 2600
Wire Wire Line
	1350 3950 1100 3950
Wire Wire Line
	1100 3950 1100 5150
Wire Wire Line
	1350 4150 1250 4150
Wire Wire Line
	1250 4150 1250 4950
$Comp
L power:VDD #PWR0101
U 1 1 5C2BDB04
P 8200 850
F 0 "#PWR0101" H 8200 700 50  0001 C CNN
F 1 "VDD" H 8217 1023 50  0000 C CNN
F 2 "" H 8200 850 50  0001 C CNN
F 3 "" H 8200 850 50  0001 C CNN
	1    8200 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 850  8200 950 
Wire Wire Line
	2750 2250 2750 2550
Wire Wire Line
	7850 850  7850 1000
Wire Wire Line
	950  3750 950  5300
Wire Wire Line
	950  3750 1350 3750
Wire Wire Line
	5700 4200 5700 4950
Wire Wire Line
	4150 4100 5450 4100
Wire Wire Line
	5450 4100 5450 4700
Wire Wire Line
	5700 3700 5700 3650
Wire Wire Line
	5700 3450 5700 3350
Wire Wire Line
	4150 3350 5700 3350
Wire Wire Line
	1250 4950 5700 4950
Wire Wire Line
	4150 4200 5250 4200
Wire Wire Line
	5250 4200 5250 4850
Wire Wire Line
	5250 4850 9000 4850
Wire Wire Line
	9000 4850 9000 5150
Wire Wire Line
	4150 4300 5100 4300
Wire Wire Line
	5100 4300 5100 5050
Wire Wire Line
	5100 5050 8950 5050
Wire Wire Line
	4950 5900 5150 5900
Wire Wire Line
	4150 3250 4950 3250
Wire Wire Line
	2650 1250 4000 1250
Wire Wire Line
	4800 1250 4800 2800
Wire Wire Line
	4800 1250 5950 1250
Wire Wire Line
	4000 1150 4000 1250
Wire Wire Line
	4000 1150 5950 1150
Wire Wire Line
	9400 3000 9400 3450
$Comp
L Motor:Motor_Servo M1
U 1 1 5C275A79
P 9850 4300
F 0 "M1" H 10181 4365 50  0000 L CNN
F 1 "Servo Left" H 10181 4274 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 9850 4110 50  0001 C CNN
F 3 "http://forums.parallax.com/uploads/attachments/46831/74481.png" H 9850 4110 50  0001 C CNN
	1    9850 4300
	1    0    0    -1  
$EndComp
$Comp
L Motor:Motor_Servo M6
U 1 1 5C275AC1
P 9850 3450
F 0 "M6" H 10181 3515 50  0000 L CNN
F 1 "Servo Left" H 10181 3424 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 9850 3260 50  0001 C CNN
F 3 "http://forums.parallax.com/uploads/attachments/46831/74481.png" H 9850 3260 50  0001 C CNN
	1    9850 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	9550 3450 9400 3450
Connection ~ 9400 3450
Wire Wire Line
	9400 3450 9400 3850
Wire Wire Line
	9600 3850 9550 3850
Connection ~ 9400 3850
Wire Wire Line
	9400 3850 9400 4300
Connection ~ 9550 3850
Wire Wire Line
	9550 3850 9400 3850
Wire Wire Line
	9550 3550 9250 3550
Wire Wire Line
	9250 3550 9250 3950
Connection ~ 9250 4400
Wire Wire Line
	9550 3950 9250 3950
Connection ~ 9250 3950
Wire Wire Line
	9250 3950 9250 4400
Wire Wire Line
	1300 4850 4850 4850
Wire Wire Line
	4850 4850 4850 3750
Wire Wire Line
	4850 3750 9550 3750
Wire Wire Line
	1350 4350 750  4350
Wire Wire Line
	750  4350 750  5400
Wire Wire Line
	8450 5400 8450 3350
Wire Wire Line
	8450 3350 9550 3350
Wire Wire Line
	1300 4250 1350 4250
Wire Wire Line
	1300 4250 1300 4850
Wire Wire Line
	750  5400 8450 5400
Wire Wire Line
	5150 5550 5150 5600
Wire Wire Line
	4950 3250 4950 5900
$EndSCHEMATC
