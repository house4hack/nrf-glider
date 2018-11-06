EESchema Schematic File Version 4
LIBS:glider_mcu-cache
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
L RF:NRF24L01_Breakout U3
U 1 1 5BCECC43
P 5350 2300
AR Path="/5BD3906D/5BCECC43" Ref="U3"  Part="1" 
AR Path="/5BD39338/5BCECC43" Ref="U8"  Part="1" 
F 0 "U8" H 5828 2278 50  0000 L CNN
F 1 "NRF24L01_Breakout" H 5828 2187 50  0000 L CNN
F 2 "RF_Module:nRF24L01_Breakout" H 5500 2900 50  0001 L CIN
F 3 "http://www.nordicsemi.com/eng/content/download/2730/34105/file/nRF24L01_Product_Specification_v2_0.pdf" H 5350 2200 50  0001 C CNN
	1    5350 2300
	1    0    0    -1  
$EndComp
$Comp
L MCU_Texas_MSP430:MSP430G2553IPW20 U1
U 1 1 5BCECD91
P 2850 3900
AR Path="/5BD3906D/5BCECD91" Ref="U1"  Part="1" 
AR Path="/5BD39338/5BCECD91" Ref="U6"  Part="1" 
F 0 "U6" H 2850 4878 50  0000 C CNN
F 1 "MSP430G2553IPW20" H 2850 4787 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm" H 1400 3350 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/msp430g2553.pdf" H 2800 3900 50  0001 C CNN
	1    2850 3900
	1    0    0    -1  
$EndComp
$Comp
L Memory_EEPROM:25LCxxx U2
U 1 1 5BCED472
P 3950 6250
AR Path="/5BD3906D/5BCED472" Ref="U2"  Part="1" 
AR Path="/5BD39338/5BCED472" Ref="U7"  Part="1" 
AR Path="/5BCED472" Ref="U7"  Part="1" 
F 0 "U7" H 3950 6728 50  0000 C CNN
F 1 "25LC640" H 3950 6637 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 3950 6250 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/21832H.pdf" H 3950 6250 50  0001 C CNN
	1    3950 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 2000 4850 2000
Wire Wire Line
	4850 2100 4750 2100
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
L power:VCC #PWR0101
U 1 1 5BCEF2DA
P 5350 1700
AR Path="/5BD3906D/5BCEF2DA" Ref="#PWR0101"  Part="1" 
AR Path="/5BD39338/5BCEF2DA" Ref="#PWR0141"  Part="1" 
F 0 "#PWR0141" H 5350 1550 50  0001 C CNN
F 1 "VCC" H 5367 1873 50  0000 C CNN
F 2 "" H 5350 1700 50  0001 C CNN
F 3 "" H 5350 1700 50  0001 C CNN
	1    5350 1700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5BCEF357
P 5350 2900
AR Path="/5BD3906D/5BCEF357" Ref="#PWR0102"  Part="1" 
AR Path="/5BD39338/5BCEF357" Ref="#PWR0142"  Part="1" 
F 0 "#PWR0142" H 5350 2650 50  0001 C CNN
F 1 "GND" H 5355 2727 50  0000 C CNN
F 2 "" H 5350 2900 50  0001 C CNN
F 3 "" H 5350 2900 50  0001 C CNN
	1    5350 2900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5BCEF4A1
P 3950 6550
AR Path="/5BD3906D/5BCEF4A1" Ref="#PWR0103"  Part="1" 
AR Path="/5BD39338/5BCEF4A1" Ref="#PWR0143"  Part="1" 
F 0 "#PWR0143" H 3950 6300 50  0001 C CNN
F 1 "GND" H 3955 6377 50  0000 C CNN
F 2 "" H 3950 6550 50  0001 C CNN
F 3 "" H 3950 6550 50  0001 C CNN
	1    3950 6550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5BCEF4DF
P 2850 4650
AR Path="/5BD3906D/5BCEF4DF" Ref="#PWR0104"  Part="1" 
AR Path="/5BD39338/5BCEF4DF" Ref="#PWR0144"  Part="1" 
F 0 "#PWR0144" H 2850 4400 50  0001 C CNN
F 1 "GND" H 2855 4477 50  0000 C CNN
F 2 "" H 2850 4650 50  0001 C CNN
F 3 "" H 2850 4650 50  0001 C CNN
	1    2850 4650
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0105
U 1 1 5BCEF55C
P 2200 3000
AR Path="/5BD3906D/5BCEF55C" Ref="#PWR0105"  Part="1" 
AR Path="/5BD39338/5BCEF55C" Ref="#PWR0145"  Part="1" 
F 0 "#PWR0145" H 2200 2850 50  0001 C CNN
F 1 "VCC" H 2217 3173 50  0000 C CNN
F 2 "" H 2200 3000 50  0001 C CNN
F 3 "" H 2200 3000 50  0001 C CNN
	1    2200 3000
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0106
U 1 1 5BCEF5D9
P 4200 5950
AR Path="/5BD3906D/5BCEF5D9" Ref="#PWR0106"  Part="1" 
AR Path="/5BD39338/5BCEF5D9" Ref="#PWR0146"  Part="1" 
F 0 "#PWR0146" H 4200 5800 50  0001 C CNN
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
	4350 6350 4950 6350
Wire Wire Line
	4950 6350 4950 4100
$Comp
L Device:R R1
U 1 1 5BCF4A41
P 6000 3400
AR Path="/5BD3906D/5BCF4A41" Ref="R1"  Part="1" 
AR Path="/5BD39338/5BCF4A41" Ref="R4"  Part="1" 
F 0 "R4" H 6070 3446 50  0000 L CNN
F 1 "20k" H 6070 3355 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 5930 3400 50  0001 C CNN
F 3 "~" H 6000 3400 50  0001 C CNN
	1    6000 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5BCF4AC6
P 6000 3700
AR Path="/5BD3906D/5BCF4AC6" Ref="R2"  Part="1" 
AR Path="/5BD39338/5BCF4AC6" Ref="R5"  Part="1" 
F 0 "R5" H 6070 3746 50  0000 L CNN
F 1 "10k" H 6070 3655 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 5930 3700 50  0001 C CNN
F 3 "~" H 6000 3700 50  0001 C CNN
	1    6000 3700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 5BCF4B6F
P 6000 3850
AR Path="/5BD3906D/5BCF4B6F" Ref="#PWR0107"  Part="1" 
AR Path="/5BD39338/5BCF4B6F" Ref="#PWR0147"  Part="1" 
F 0 "#PWR0147" H 6000 3600 50  0001 C CNN
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
L power:VDD #PWR0108
U 1 1 5BCF63D1
P 6000 3250
AR Path="/5BD3906D/5BCF63D1" Ref="#PWR0108"  Part="1" 
AR Path="/5BD39338/5BCF63D1" Ref="#PWR0148"  Part="1" 
F 0 "#PWR0148" H 6000 3100 50  0001 C CNN
F 1 "VDD" H 6017 3423 50  0000 C CNN
F 2 "" H 6000 3250 50  0001 C CNN
F 3 "" H 6000 3250 50  0001 C CNN
	1    6000 3250
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x12_Male J2
U 1 1 5BCFA9FB
P 6250 5000
AR Path="/5BD3906D/5BCFA9FB" Ref="J2"  Part="1" 
AR Path="/5BD39338/5BCFA9FB" Ref="J7"  Part="1" 
F 0 "J7" H 6350 4200 50  0000 R CNN
F 1 "Conn_01x12_Male" H 6350 4100 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x12_P2.54mm_Vertical" H 6250 5000 50  0001 C CNN
F 3 "~" H 6250 5000 50  0001 C CNN
	1    6250 5000
	-1   0    0    -1  
$EndComp
$Comp
L power:VDD #PWR0109
U 1 1 5BCFAD35
P 5950 4500
AR Path="/5BD3906D/5BCFAD35" Ref="#PWR0109"  Part="1" 
AR Path="/5BD39338/5BCFAD35" Ref="#PWR0149"  Part="1" 
F 0 "#PWR0149" H 5950 4350 50  0001 C CNN
F 1 "VDD" H 5967 4673 50  0000 C CNN
F 2 "" H 5950 4500 50  0001 C CNN
F 3 "" H 5950 4500 50  0001 C CNN
	1    5950 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 4500 6050 4500
$Comp
L power:VCC #PWR0110
U 1 1 5BCFB594
P 5800 4600
AR Path="/5BD3906D/5BCFB594" Ref="#PWR0110"  Part="1" 
AR Path="/5BD39338/5BCFB594" Ref="#PWR0150"  Part="1" 
F 0 "#PWR0150" H 5800 4450 50  0001 C CNN
F 1 "VCC" H 5817 4773 50  0000 C CNN
F 2 "" H 5800 4600 50  0001 C CNN
F 3 "" H 5800 4600 50  0001 C CNN
	1    5800 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 4600 6050 4600
$Comp
L power:GND #PWR0111
U 1 1 5BCFBE51
P 5950 5600
AR Path="/5BD3906D/5BCFBE51" Ref="#PWR0111"  Part="1" 
AR Path="/5BD39338/5BCFBE51" Ref="#PWR0151"  Part="1" 
F 0 "#PWR0151" H 5950 5350 50  0001 C CNN
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
Text Notes 1100 6650 0    50   ~ 0
MCU Module
$Comp
L Connector:Conn_01x06_Male J1
U 1 1 5BD41D4E
P 6150 1050
AR Path="/5BD3906D/5BD41D4E" Ref="J1"  Part="1" 
AR Path="/5BD39338/5BD41D4E" Ref="J6"  Part="1" 
F 0 "J6" H 6250 650 50  0000 R CNN
F 1 "PROG" H 6250 550 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 6150 1050 50  0001 C CNN
F 3 "~" H 6150 1050 50  0001 C CNN
	1    6150 1050
	-1   0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0112
U 1 1 5BD421B2
P 5750 850
AR Path="/5BD3906D/5BD421B2" Ref="#PWR0112"  Part="1" 
AR Path="/5BD39338/5BD421B2" Ref="#PWR0152"  Part="1" 
F 0 "#PWR0152" H 5750 700 50  0001 C CNN
F 1 "VCC" H 5767 1023 50  0000 C CNN
F 2 "" H 5750 850 50  0001 C CNN
F 3 "" H 5750 850 50  0001 C CNN
	1    5750 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 850  5950 850 
$Comp
L power:GND #PWR0113
U 1 1 5BD44828
P 5750 1350
AR Path="/5BD3906D/5BD44828" Ref="#PWR0113"  Part="1" 
AR Path="/5BD39338/5BD44828" Ref="#PWR0153"  Part="1" 
F 0 "#PWR0153" H 5750 1100 50  0001 C CNN
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
Wire Wire Line
	3550 6350 1150 6350
Wire Wire Line
	1150 6350 1150 4950
Connection ~ 1150 4950
Text Notes 5400 6100 0    50   ~ 0
* IO0 shared with EEPROM chip select
Text Notes 7400 7500 0    50   ~ 0
NRF and MSP430 based RC control
Text Notes 8250 7650 0    50   ~ 0
23 October 2018
Text Notes 10300 7350 0    50   ~ 0
created by Toby Kurien
Text HLabel 6250 4500 2    50   Input ~ 0
Vbatt
Text HLabel 6250 4600 2    50   Input ~ 0
3V3
Text HLabel 6250 4700 2    50   BiDi ~ 0
A0
Text HLabel 6250 4800 2    50   BiDi ~ 0
A1.RX
Text HLabel 6250 4900 2    50   BiDi ~ 0
A2.TX
Text HLabel 6250 5000 2    50   BiDi ~ 0
A3
Text HLabel 6250 5100 2    50   BiDi ~ 0
IO0
Text HLabel 6250 5200 2    50   BiDi ~ 0
IO1
Text HLabel 6250 5300 2    50   BiDi ~ 0
IO2
Text HLabel 6250 5400 2    50   BiDi ~ 0
IO3
Text HLabel 6250 5500 2    50   BiDi ~ 0
IO4
Text HLabel 6250 5600 2    50   Input ~ 0
GND
Wire Wire Line
	3950 5950 4200 5950
Wire Wire Line
	3950 6550 3450 6550
Wire Wire Line
	3450 6550 3450 6150
Wire Wire Line
	3450 6150 3550 6150
Connection ~ 3950 6550
Wire Wire Line
	3550 6250 3500 6250
Wire Wire Line
	3500 6250 3500 5950
Wire Wire Line
	3500 5950 3950 5950
Connection ~ 3950 5950
Wire Wire Line
	4550 4100 4750 4100
Wire Wire Line
	4550 4200 4700 4200
Wire Wire Line
	4750 2100 4750 4100
Connection ~ 4750 4100
Wire Wire Line
	4750 4100 4950 4100
Wire Wire Line
	4700 2000 4700 4200
Connection ~ 4700 4200
Wire Wire Line
	4700 4200 5000 4200
$EndSCHEMATC
