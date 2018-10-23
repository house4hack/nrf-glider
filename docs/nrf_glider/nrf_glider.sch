EESchema Schematic File Version 4
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
F 0 "U?" H 5828 2278 50  0000 L CNN
F 1 "NRF24L01_Breakout" H 5828 2187 50  0000 L CNN
F 2 "RF_Module:nRF24L01_Breakout" H 5500 2900 50  0001 L CIN
F 3 "http://www.nordicsemi.com/eng/content/download/2730/34105/file/nRF24L01_Product_Specification_v2_0.pdf" H 5350 2200 50  0001 C CNN
	1    5350 2300
	1    0    0    -1  
$EndComp
$Comp
L MCU_Texas_MSP430:MSP430G2553IPW20 U?
U 1 1 5BCECD91
P 2850 3900
F 0 "U?" H 2850 4878 50  0000 C CNN
F 1 "MSP430G2553IPW20" H 2850 4787 50  0000 C CNN
F 2 "Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm" H 1400 3350 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/msp430g2553.pdf" H 2800 3900 50  0001 C CNN
	1    2850 3900
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:LM1117-3.3 U?
U 1 1 5BCECE85
P 9750 1000
F 0 "U?" H 9750 1242 50  0000 C CNN
F 1 "LM1117-3.3" H 9750 1151 50  0000 C CNN
F 2 "" H 9750 1000 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm1117.pdf" H 9750 1000 50  0001 C CNN
	1    9750 1000
	1    0    0    -1  
$EndComp
$Comp
L Memory_EEPROM:25LCxxx U?
U 1 1 5BCED472
P 3950 6250
F 0 "U?" H 3950 6728 50  0000 C CNN
F 1 "25LC640" H 3950 6637 50  0000 C CNN
F 2 "" H 3950 6250 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/21832H.pdf" H 3950 6250 50  0001 C CNN
	1    3950 6250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5BCED801
P 9750 1300
F 0 "#PWR?" H 9750 1050 50  0001 C CNN
F 1 "GND" H 9755 1127 50  0000 C CNN
F 2 "" H 9750 1300 50  0001 C CNN
F 3 "" H 9750 1300 50  0001 C CNN
	1    9750 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery BT?
U 1 1 5BCED8B9
P 8950 1200
F 0 "BT?" H 9058 1246 50  0000 L CNN
F 1 "4.5V - 6V" H 9058 1155 50  0000 L CNN
F 2 "" V 8950 1260 50  0001 C CNN
F 3 "~" V 8950 1260 50  0001 C CNN
	1    8950 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 1000 9450 1000
$Comp
L power:GND #PWR?
U 1 1 5BCED983
P 8950 1400
F 0 "#PWR?" H 8950 1150 50  0001 C CNN
F 1 "GND" H 8955 1227 50  0000 C CNN
F 2 "" H 8950 1400 50  0001 C CNN
F 3 "" H 8950 1400 50  0001 C CNN
	1    8950 1400
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5BCED9FA
P 10600 1000
F 0 "#PWR?" H 10600 850 50  0001 C CNN
F 1 "VCC" H 10617 1173 50  0000 C CNN
F 2 "" H 10600 1000 50  0001 C CNN
F 3 "" H 10600 1000 50  0001 C CNN
	1    10600 1000
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5BCEDC62
P 10600 1150
F 0 "C?" H 10692 1196 50  0000 L CNN
F 1 "100nF" H 10692 1105 50  0000 L CNN
F 2 "" H 10600 1150 50  0001 C CNN
F 3 "~" H 10600 1150 50  0001 C CNN
	1    10600 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C?
U 1 1 5BCEDD9D
P 10150 1150
F 0 "C?" H 10268 1196 50  0000 L CNN
F 1 "10uF" H 10268 1105 50  0000 L CNN
F 2 "" H 10188 1000 50  0001 C CNN
F 3 "~" H 10150 1150 50  0001 C CNN
	1    10150 1150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5BCEDF2F
P 10150 1300
F 0 "#PWR?" H 10150 1050 50  0001 C CNN
F 1 "GND" H 10155 1127 50  0000 C CNN
F 2 "" H 10150 1300 50  0001 C CNN
F 3 "" H 10150 1300 50  0001 C CNN
	1    10150 1300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5BCEDF6D
P 10600 1250
F 0 "#PWR?" H 10600 1000 50  0001 C CNN
F 1 "GND" H 10605 1077 50  0000 C CNN
F 2 "" H 10600 1250 50  0001 C CNN
F 3 "" H 10600 1250 50  0001 C CNN
	1    10600 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	10050 1000 10150 1000
Wire Wire Line
	4550 4100 4700 4100
Wire Wire Line
	4700 4100 4700 2000
Wire Wire Line
	4700 2000 4850 2000
Wire Wire Line
	4850 2100 4750 2100
Wire Wire Line
	4750 2100 4750 4200
Wire Wire Line
	4750 4200 4550 4200
Wire Wire Line
	4850 2200 4650 2200
Wire Wire Line
	4650 2200 4650 4000
Wire Wire Line
	4650 4000 4550 4000
Wire Wire Line
	4850 2300 1000 2300
Wire Wire Line
	1000 2300 1000 3700
Wire Wire Line
	1000 3700 1150 3700
Wire Wire Line
	4850 2500 1050 2500
Wire Wire Line
	1050 2500 1050 3600
Wire Wire Line
	1050 3600 1150 3600
Wire Wire Line
	4850 2600 1100 2600
Wire Wire Line
	1100 2600 1100 3800
Wire Wire Line
	1100 3800 1150 3800
$Comp
L power:VCC #PWR?
U 1 1 5BCEF2DA
P 5350 1700
F 0 "#PWR?" H 5350 1550 50  0001 C CNN
F 1 "VCC" H 5367 1873 50  0000 C CNN
F 2 "" H 5350 1700 50  0001 C CNN
F 3 "" H 5350 1700 50  0001 C CNN
	1    5350 1700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5BCEF357
P 5350 2900
F 0 "#PWR?" H 5350 2650 50  0001 C CNN
F 1 "GND" H 5355 2727 50  0000 C CNN
F 2 "" H 5350 2900 50  0001 C CNN
F 3 "" H 5350 2900 50  0001 C CNN
	1    5350 2900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5BCEF4A1
P 3950 6550
F 0 "#PWR?" H 3950 6300 50  0001 C CNN
F 1 "GND" H 3955 6377 50  0000 C CNN
F 2 "" H 3950 6550 50  0001 C CNN
F 3 "" H 3950 6550 50  0001 C CNN
	1    3950 6550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5BCEF4DF
P 2850 4650
F 0 "#PWR?" H 2850 4400 50  0001 C CNN
F 1 "GND" H 2855 4477 50  0000 C CNN
F 2 "" H 2850 4650 50  0001 C CNN
F 3 "" H 2850 4650 50  0001 C CNN
	1    2850 4650
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5BCEF55C
P 2200 3000
F 0 "#PWR?" H 2200 2850 50  0001 C CNN
F 1 "VCC" H 2217 3173 50  0000 C CNN
F 2 "" H 2200 3000 50  0001 C CNN
F 3 "" H 2200 3000 50  0001 C CNN
	1    2200 3000
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5BCEF5D9
P 4200 5950
F 0 "#PWR?" H 4200 5800 50  0001 C CNN
F 1 "VCC" H 4217 6123 50  0000 C CNN
F 2 "" H 4200 5950 50  0001 C CNN
F 3 "" H 4200 5950 50  0001 C CNN
	1    4200 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 3100 2200 3100
Wire Wire Line
	2200 3100 2200 3000
Wire Wire Line
	3950 5950 4200 5950
Wire Wire Line
	4350 6150 5050 6150
Wire Wire Line
	5050 6150 5050 4000
Wire Wire Line
	5050 4000 4650 4000
Connection ~ 4650 4000
Wire Wire Line
	4350 6250 5000 6250
Wire Wire Line
	5000 6250 5000 4200
Wire Wire Line
	5000 4200 4750 4200
Connection ~ 4750 4200
Wire Wire Line
	4350 6350 4950 6350
Wire Wire Line
	4950 6350 4950 4100
Wire Wire Line
	4950 4100 4700 4100
Connection ~ 4700 4100
Wire Wire Line
	3550 6150 3550 5950
Wire Wire Line
	3550 5950 3950 5950
Connection ~ 3950 5950
Wire Wire Line
	3550 6250 3550 6150
Connection ~ 3550 6150
$Comp
L Device:R R?
U 1 1 5BCF4A41
P 6000 3400
F 0 "R?" H 6070 3446 50  0000 L CNN
F 1 "10k" H 6070 3355 50  0000 L CNN
F 2 "" V 5930 3400 50  0001 C CNN
F 3 "~" H 6000 3400 50  0001 C CNN
	1    6000 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5BCF4AC6
P 6000 3700
F 0 "R?" H 6070 3746 50  0000 L CNN
F 1 "10k" H 6070 3655 50  0000 L CNN
F 2 "" V 5930 3700 50  0001 C CNN
F 3 "~" H 6000 3700 50  0001 C CNN
	1    6000 3700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5BCF4B6F
P 6000 3850
F 0 "#PWR?" H 6000 3600 50  0001 C CNN
F 1 "GND" H 6005 3677 50  0000 C CNN
F 2 "" H 6000 3850 50  0001 C CNN
F 3 "" H 6000 3850 50  0001 C CNN
	1    6000 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 3550 4900 3550
Wire Wire Line
	4900 3550 4900 3900
Wire Wire Line
	4900 3900 4550 3900
Connection ~ 6000 3550
$Comp
L power:VDD #PWR?
U 1 1 5BCF63D1
P 6000 3250
F 0 "#PWR?" H 6000 3100 50  0001 C CNN
F 1 "VDD" H 6017 3423 50  0000 C CNN
F 2 "" H 6000 3250 50  0001 C CNN
F 3 "" H 6000 3250 50  0001 C CNN
	1    6000 3250
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR?
U 1 1 5BCF6415
P 8950 1000
F 0 "#PWR?" H 8950 850 50  0001 C CNN
F 1 "VDD" H 8967 1173 50  0000 C CNN
F 2 "" H 8950 1000 50  0001 C CNN
F 3 "" H 8950 1000 50  0001 C CNN
	1    8950 1000
	1    0    0    -1  
$EndComp
Connection ~ 8950 1000
Wire Wire Line
	10600 1000 10600 1050
Connection ~ 10600 1000
Wire Wire Line
	10150 1000 10600 1000
Connection ~ 10150 1000
$Comp
L Connector:Conn_01x12_Male J?
U 1 1 5BCFA9FB
P 6250 5000
F 0 "J?" H 6350 4200 50  0000 R CNN
F 1 "Conn_01x12_Male" H 6350 4100 50  0000 R CNN
F 2 "" H 6250 5000 50  0001 C CNN
F 3 "~" H 6250 5000 50  0001 C CNN
	1    6250 5000
	-1   0    0    -1  
$EndComp
$Comp
L power:VDD #PWR?
U 1 1 5BCFAD35
P 5950 4500
F 0 "#PWR?" H 5950 4350 50  0001 C CNN
F 1 "VDD" H 5967 4673 50  0000 C CNN
F 2 "" H 5950 4500 50  0001 C CNN
F 3 "" H 5950 4500 50  0001 C CNN
	1    5950 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 4500 6050 4500
$Comp
L power:VCC #PWR?
U 1 1 5BCFB594
P 5800 4600
F 0 "#PWR?" H 5800 4450 50  0001 C CNN
F 1 "VCC" H 5817 4773 50  0000 C CNN
F 2 "" H 5800 4600 50  0001 C CNN
F 3 "" H 5800 4600 50  0001 C CNN
	1    5800 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 4600 6050 4600
$Comp
L power:GND #PWR?
U 1 1 5BCFBE51
P 5950 5600
F 0 "#PWR?" H 5950 5350 50  0001 C CNN
F 1 "GND" H 5955 5427 50  0000 C CNN
F 2 "" H 5950 5600 50  0001 C CNN
F 3 "" H 5950 5600 50  0001 C CNN
	1    5950 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 5600 6050 5600
Wire Wire Line
	5700 3500 5700 4700
Wire Wire Line
	5700 4700 6050 4700
Wire Wire Line
	4550 3600 4800 3600
Wire Wire Line
	5650 3600 5650 4800
Wire Wire Line
	5650 4800 6050 4800
Wire Wire Line
	4550 3700 4600 3700
Wire Wire Line
	5550 3700 5550 4900
Wire Wire Line
	5550 4900 6050 4900
Wire Wire Line
	4550 3800 5450 3800
Wire Wire Line
	5450 3800 5450 5000
Wire Wire Line
	5450 5000 6050 5000
Wire Wire Line
	1150 4300 1150 4950
Wire Wire Line
	1150 4950 5350 4950
Wire Wire Line
	5350 4950 5350 5100
Wire Wire Line
	5350 5100 6050 5100
Wire Wire Line
	1150 4200 1100 4200
Wire Wire Line
	1100 4200 1100 5050
Wire Wire Line
	1100 5050 5300 5050
Wire Wire Line
	5300 5050 5300 5200
Wire Wire Line
	5300 5200 6050 5200
Wire Wire Line
	1150 4100 1050 4100
Wire Wire Line
	1050 4100 1050 5150
Wire Wire Line
	1050 5150 5200 5150
Wire Wire Line
	5200 5150 5200 5300
Wire Wire Line
	5200 5300 6050 5300
Wire Wire Line
	1150 4000 950  4000
Wire Wire Line
	950  4000 950  5300
Wire Wire Line
	950  5300 5150 5300
Wire Wire Line
	5150 5300 5150 5400
Wire Wire Line
	5150 5400 6050 5400
Wire Wire Line
	1150 3900 800  3900
Wire Wire Line
	800  3900 800  5500
Wire Wire Line
	800  5500 6050 5500
$Comp
L Connector:Conn_01x12_Female J?
U 1 1 5BD137AB
P 7950 2300
F 0 "J?" H 7844 2985 50  0000 C CNN
F 1 "Conn_01x12_Female" H 7844 2894 50  0000 C CNN
F 2 "" H 7950 2300 50  0001 C CNN
F 3 "~" H 7950 2300 50  0001 C CNN
	1    7950 2300
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x12_Female J?
U 1 1 5BD138DF
P 7550 5300
F 0 "J?" H 7444 5985 50  0000 C CNN
F 1 "Conn_01x12_Female" H 7444 5894 50  0000 C CNN
F 2 "" H 7550 5300 50  0001 C CNN
F 3 "~" H 7550 5300 50  0001 C CNN
	1    7550 5300
	-1   0    0    -1  
$EndComp
$Comp
L power:VDD #PWR?
U 1 1 5BD1962D
P 8600 1800
F 0 "#PWR?" H 8600 1650 50  0001 C CNN
F 1 "VDD" H 8617 1973 50  0000 C CNN
F 2 "" H 8600 1800 50  0001 C CNN
F 3 "" H 8600 1800 50  0001 C CNN
	1    8600 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 1800 8150 1800
$Comp
L power:VCC #PWR?
U 1 1 5BD1B4CC
P 8800 1900
F 0 "#PWR?" H 8800 1750 50  0001 C CNN
F 1 "VCC" H 8817 2073 50  0000 C CNN
F 2 "" H 8800 1900 50  0001 C CNN
F 3 "" H 8800 1900 50  0001 C CNN
	1    8800 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 1900 8800 1900
$Comp
L power:VCC #PWR?
U 1 1 5BD1D3CE
P 8550 4700
F 0 "#PWR?" H 8550 4550 50  0001 C CNN
F 1 "VCC" H 8567 4873 50  0000 C CNN
F 2 "" H 8550 4700 50  0001 C CNN
F 3 "" H 8550 4700 50  0001 C CNN
	1    8550 4700
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR?
U 1 1 5BD1D429
P 8400 4450
F 0 "#PWR?" H 8400 4300 50  0001 C CNN
F 1 "VDD" H 8417 4623 50  0000 C CNN
F 2 "" H 8400 4450 50  0001 C CNN
F 3 "" H 8400 4450 50  0001 C CNN
	1    8400 4450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5BD1F411
P 8250 2900
F 0 "#PWR?" H 8250 2650 50  0001 C CNN
F 1 "GND" H 8255 2727 50  0000 C CNN
F 2 "" H 8250 2900 50  0001 C CNN
F 3 "" H 8250 2900 50  0001 C CNN
	1    8250 2900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5BD1F482
P 7850 5900
F 0 "#PWR?" H 7850 5650 50  0001 C CNN
F 1 "GND" H 7855 5727 50  0000 C CNN
F 2 "" H 7850 5900 50  0001 C CNN
F 3 "" H 7850 5900 50  0001 C CNN
	1    7850 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7750 5900 7850 5900
Wire Wire Line
	7750 4800 8400 4800
Wire Wire Line
	8400 4800 8400 4450
Wire Wire Line
	7750 4900 8550 4900
Wire Wire Line
	8550 4900 8550 4700
Wire Wire Line
	8150 2900 8250 2900
$Comp
L Motor:Motor_Servo M?
U 1 1 5BD298F1
P 9900 2150
F 0 "M?" H 10231 2215 50  0000 L CNN
F 1 "Motor_Servo" H 10231 2124 50  0000 L CNN
F 2 "" H 9900 1960 50  0001 C CNN
F 3 "http://forums.parallax.com/uploads/attachments/46831/74481.png" H 9900 1960 50  0001 C CNN
	1    9900 2150
	1    0    0    -1  
$EndComp
$Comp
L Motor:Motor_Servo M?
U 1 1 5BD29998
P 9900 2650
F 0 "M?" H 10231 2715 50  0000 L CNN
F 1 "Motor_Servo" H 10231 2624 50  0000 L CNN
F 2 "" H 9900 2460 50  0001 C CNN
F 3 "http://forums.parallax.com/uploads/attachments/46831/74481.png" H 9900 2460 50  0001 C CNN
	1    9900 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:Buzzer BZ?
U 1 1 5BD29AB3
P 8800 2900
F 0 "BZ?" H 8953 2929 50  0000 L CNN
F 1 "Buzzer" H 8953 2838 50  0000 L CNN
F 2 "" V 8775 3000 50  0001 C CNN
F 3 "~" V 8775 3000 50  0001 C CNN
	1    8800 2900
	1    0    0    -1  
$EndComp
NoConn ~ 8950 4650
$Comp
L Device:R_POT_US RV?
U 1 1 5BD2C04D
P 9450 5050
F 0 "RV?" H 9383 5096 50  0000 R CNN
F 1 "10k" H 9383 5005 50  0000 R CNN
F 2 "" H 9450 5050 50  0001 C CNN
F 3 "~" H 9450 5050 50  0001 C CNN
	1    9450 5050
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_POT_US RV?
U 1 1 5BD2C0E7
P 9450 5550
F 0 "RV?" H 9383 5596 50  0000 R CNN
F 1 "10k" H 9383 5505 50  0000 R CNN
F 2 "" H 9450 5550 50  0001 C CNN
F 3 "~" H 9450 5550 50  0001 C CNN
	1    9450 5550
	-1   0    0    -1  
$EndComp
$Comp
L Device:Buzzer BZ?
U 1 1 5BD2C1D8
P 8400 5900
F 0 "BZ?" H 8553 5929 50  0000 L CNN
F 1 "Buzzer" H 8553 5838 50  0000 L CNN
F 2 "" V 8375 6000 50  0001 C CNN
F 3 "~" V 8375 6000 50  0001 C CNN
	1    8400 5900
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW?
U 1 1 5BD2C33F
P 9250 6100
F 0 "SW?" H 9250 6385 50  0000 C CNN
F 1 "SW_Push" H 9250 6294 50  0000 C CNN
F 2 "" H 9250 6300 50  0001 C CNN
F 3 "" H 9250 6300 50  0001 C CNN
	1    9250 6100
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:LM1117-3.3 U?
U 1 1 5BD2C866
P 9600 3950
F 0 "U?" H 9600 4192 50  0000 C CNN
F 1 "LM1117-3.3" H 9600 4101 50  0000 C CNN
F 2 "" H 9600 3950 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm1117.pdf" H 9600 3950 50  0001 C CNN
	1    9600 3950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5BD2C86D
P 9600 4250
F 0 "#PWR?" H 9600 4000 50  0001 C CNN
F 1 "GND" H 9605 4077 50  0000 C CNN
F 2 "" H 9600 4250 50  0001 C CNN
F 3 "" H 9600 4250 50  0001 C CNN
	1    9600 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery BT?
U 1 1 5BD2C873
P 8800 4150
F 0 "BT?" H 8908 4196 50  0000 L CNN
F 1 "4.5V - 6V" H 8908 4105 50  0000 L CNN
F 2 "" V 8800 4210 50  0001 C CNN
F 3 "~" V 8800 4210 50  0001 C CNN
	1    8800 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 3950 9300 3950
$Comp
L power:GND #PWR?
U 1 1 5BD2C87B
P 8800 4350
F 0 "#PWR?" H 8800 4100 50  0001 C CNN
F 1 "GND" H 8805 4177 50  0000 C CNN
F 2 "" H 8800 4350 50  0001 C CNN
F 3 "" H 8800 4350 50  0001 C CNN
	1    8800 4350
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5BD2C881
P 10450 3950
F 0 "#PWR?" H 10450 3800 50  0001 C CNN
F 1 "VCC" H 10467 4123 50  0000 C CNN
F 2 "" H 10450 3950 50  0001 C CNN
F 3 "" H 10450 3950 50  0001 C CNN
	1    10450 3950
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5BD2C887
P 10450 4100
F 0 "C?" H 10542 4146 50  0000 L CNN
F 1 "100nF" H 10542 4055 50  0000 L CNN
F 2 "" H 10450 4100 50  0001 C CNN
F 3 "~" H 10450 4100 50  0001 C CNN
	1    10450 4100
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C?
U 1 1 5BD2C88E
P 10000 4100
F 0 "C?" H 10118 4146 50  0000 L CNN
F 1 "10uF" H 10118 4055 50  0000 L CNN
F 2 "" H 10038 3950 50  0001 C CNN
F 3 "~" H 10000 4100 50  0001 C CNN
	1    10000 4100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5BD2C895
P 10000 4250
F 0 "#PWR?" H 10000 4000 50  0001 C CNN
F 1 "GND" H 10005 4077 50  0000 C CNN
F 2 "" H 10000 4250 50  0001 C CNN
F 3 "" H 10000 4250 50  0001 C CNN
	1    10000 4250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5BD2C89B
P 10450 4200
F 0 "#PWR?" H 10450 3950 50  0001 C CNN
F 1 "GND" H 10455 4027 50  0000 C CNN
F 2 "" H 10450 4200 50  0001 C CNN
F 3 "" H 10450 4200 50  0001 C CNN
	1    10450 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 3950 10000 3950
$Comp
L power:VDD #PWR?
U 1 1 5BD2C8A2
P 8800 3950
F 0 "#PWR?" H 8800 3800 50  0001 C CNN
F 1 "VDD" H 8817 4123 50  0000 C CNN
F 2 "" H 8800 3950 50  0001 C CNN
F 3 "" H 8800 3950 50  0001 C CNN
	1    8800 3950
	1    0    0    -1  
$EndComp
Connection ~ 8800 3950
Wire Wire Line
	10450 3950 10450 4000
Connection ~ 10450 3950
Wire Wire Line
	10000 3950 10450 3950
Connection ~ 10000 3950
Wire Notes Line
	7300 650  11000 650 
Wire Notes Line
	11000 650  11000 3400
Wire Notes Line
	11000 3400 7300 3400
Wire Notes Line
	7300 3400 7300 650 
Wire Notes Line
	7200 3600 11000 3600
Wire Notes Line
	11000 3600 11000 6450
Wire Notes Line
	11000 6450 7200 6450
Wire Notes Line
	7200 6450 7200 3600
Text Notes 10400 6300 0    50   ~ 0
TX Module
Text Notes 10350 3250 0    50   ~ 0
RX Module
Text Notes 1100 6650 0    50   ~ 0
MCU Module
$Comp
L Connector:Conn_01x06_Male J?
U 1 1 5BD41D4E
P 6150 1050
F 0 "J?" H 6250 650 50  0000 R CNN
F 1 "PROG" H 6250 550 50  0000 R CNN
F 2 "" H 6150 1050 50  0001 C CNN
F 3 "~" H 6150 1050 50  0001 C CNN
	1    6150 1050
	-1   0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5BD421B2
P 5750 850
F 0 "#PWR?" H 5750 700 50  0001 C CNN
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
P 5750 1350
F 0 "#PWR?" H 5750 1100 50  0001 C CNN
F 1 "GND" H 5755 1177 50  0000 C CNN
F 2 "" H 5750 1350 50  0001 C CNN
F 3 "" H 5750 1350 50  0001 C CNN
	1    5750 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 1350 5950 1350
Wire Wire Line
	4550 3350 4550 950 
Wire Wire Line
	4550 950  5950 950 
Wire Wire Line
	1150 3450 1150 1050
Wire Wire Line
	1150 1050 5950 1050
Wire Wire Line
	4600 3700 4600 1150
Wire Wire Line
	4600 1150 5950 1150
Connection ~ 4600 3700
Wire Wire Line
	4600 3700 5550 3700
Wire Wire Line
	4800 1250 5950 1250
Wire Wire Line
	4550 3500 5700 3500
Wire Wire Line
	4800 3600 4800 1250
Connection ~ 4800 3600
Wire Wire Line
	4800 3600 5650 3600
Text Notes 6300 4550 0    50   ~ 0
Vbatt\n
Text Notes 6300 4650 0    50   ~ 0
3v3
Text Notes 6300 4750 0    50   ~ 0
A0/PWM0
Text Notes 6300 4850 0    50   ~ 0
RX/A1/PWM1
Text Notes 6300 4950 0    50   ~ 0
TX/A2/PWM2
Text Notes 6300 5050 0    50   ~ 0
A3/PWM3
Text Notes 6300 5150 0    50   ~ 0
IO0
Text Notes 6300 5250 0    50   ~ 0
IO1
Text Notes 6300 5350 0    50   ~ 0
IO2
Text Notes 6300 5450 0    50   ~ 0
IO3
Text Notes 6300 5550 0    50   ~ 0
IO4
Text Notes 6200 900  0    50   ~ 0
3V3
Text Notes 6200 1000 0    50   ~ 0
TEST
Text Notes 6200 1100 0    50   ~ 0
RESET
Text Notes 6200 1200 0    50   ~ 0
RX
Text Notes 6200 1300 0    50   ~ 0
TX
Text Notes 6200 1400 0    50   ~ 0
GND
Text Notes 6300 5650 0    50   ~ 0
GND
Wire Wire Line
	8150 2000 8300 2000
Wire Wire Line
	8300 2000 8300 2050
Wire Wire Line
	8300 2050 9600 2050
Wire Wire Line
	8150 2300 9150 2300
Wire Wire Line
	9150 2300 9150 2550
Wire Wire Line
	9150 2550 9600 2550
$Comp
L power:VDD #PWR?
U 1 1 5BD6892B
P 9450 1950
F 0 "#PWR?" H 9450 1800 50  0001 C CNN
F 1 "VDD" H 9467 2123 50  0000 C CNN
F 2 "" H 9450 1950 50  0001 C CNN
F 3 "" H 9450 1950 50  0001 C CNN
	1    9450 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 1950 9450 2150
Wire Wire Line
	9450 2150 9600 2150
Wire Wire Line
	9450 2150 9450 2650
Wire Wire Line
	9450 2650 9600 2650
Connection ~ 9450 2150
$Comp
L power:GND #PWR?
U 1 1 5BD6F7A2
P 9300 2950
F 0 "#PWR?" H 9300 2700 50  0001 C CNN
F 1 "GND" H 9305 2777 50  0000 C CNN
F 2 "" H 9300 2950 50  0001 C CNN
F 3 "" H 9300 2950 50  0001 C CNN
	1    9300 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 2950 9300 2750
Wire Wire Line
	9300 2750 9600 2750
Wire Wire Line
	9300 2750 9300 2250
Wire Wire Line
	9300 2250 9600 2250
Connection ~ 9300 2750
Wire Wire Line
	8150 2800 8700 2800
$Comp
L power:GND #PWR?
U 1 1 5BD8512D
P 8700 3050
F 0 "#PWR?" H 8700 2800 50  0001 C CNN
F 1 "GND" H 8705 2877 50  0000 C CNN
F 2 "" H 8700 3050 50  0001 C CNN
F 3 "" H 8700 3050 50  0001 C CNN
	1    8700 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 3000 8700 3050
Wire Wire Line
	7750 5800 8300 5800
$Comp
L power:GND #PWR?
U 1 1 5BD90917
P 8300 6100
F 0 "#PWR?" H 8300 5850 50  0001 C CNN
F 1 "GND" H 8305 5927 50  0000 C CNN
F 2 "" H 8300 6100 50  0001 C CNN
F 3 "" H 8300 6100 50  0001 C CNN
	1    8300 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 6000 8300 6100
Wire Wire Line
	7750 5000 9100 5000
Wire Wire Line
	9100 5000 9100 5050
Wire Wire Line
	9100 5050 9300 5050
Wire Wire Line
	7750 5300 9200 5300
Wire Wire Line
	9200 5300 9200 5550
Wire Wire Line
	9200 5550 9300 5550
$Comp
L power:VCC #PWR?
U 1 1 5BDA8B66
P 10100 4800
F 0 "#PWR?" H 10100 4650 50  0001 C CNN
F 1 "VCC" H 10117 4973 50  0000 C CNN
F 2 "" H 10100 4800 50  0001 C CNN
F 3 "" H 10100 4800 50  0001 C CNN
	1    10100 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 4900 10100 4900
Wire Wire Line
	10100 4900 10100 4800
Wire Wire Line
	10100 4900 10100 5400
Wire Wire Line
	10100 5400 9450 5400
Connection ~ 10100 4900
$Comp
L power:GND #PWR?
U 1 1 5BDB1721
P 10050 5800
F 0 "#PWR?" H 10050 5550 50  0001 C CNN
F 1 "GND" H 10055 5627 50  0000 C CNN
F 2 "" H 10050 5800 50  0001 C CNN
F 3 "" H 10050 5800 50  0001 C CNN
	1    10050 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 5700 10050 5700
Wire Wire Line
	10050 5700 10050 5800
Wire Wire Line
	10050 5700 10050 5200
Wire Wire Line
	10050 5200 9450 5200
Connection ~ 10050 5700
$Comp
L power:GND #PWR?
U 1 1 5BDC42C6
P 9450 6150
F 0 "#PWR?" H 9450 5900 50  0001 C CNN
F 1 "GND" H 9455 5977 50  0000 C CNN
F 2 "" H 9450 6150 50  0001 C CNN
F 3 "" H 9450 6150 50  0001 C CNN
	1    9450 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 6150 9450 6100
Wire Wire Line
	7750 5700 8800 5700
Wire Wire Line
	9050 5700 9050 6100
$Comp
L Device:R R?
U 1 1 5BDCDB06
P 8800 5550
F 0 "R?" H 8870 5596 50  0000 L CNN
F 1 "10k" H 8870 5505 50  0000 L CNN
F 2 "" V 8730 5550 50  0001 C CNN
F 3 "~" H 8800 5550 50  0001 C CNN
	1    8800 5550
	1    0    0    -1  
$EndComp
Connection ~ 8800 5700
Wire Wire Line
	8800 5700 9050 5700
$Comp
L power:VCC #PWR?
U 1 1 5BDCDC3B
P 8800 5250
F 0 "#PWR?" H 8800 5100 50  0001 C CNN
F 1 "VCC" H 8817 5423 50  0000 C CNN
F 2 "" H 8800 5250 50  0001 C CNN
F 3 "" H 8800 5250 50  0001 C CNN
	1    8800 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 5250 8800 5400
$EndSCHEMATC
