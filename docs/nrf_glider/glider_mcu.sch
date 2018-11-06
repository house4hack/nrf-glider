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
L RF:NRF24L01_Breakout U?
U 1 1 5BCECC43
P 5350 2300
AR Path="/5BD3906D/5BCECC43" Ref="U?"  Part="1" 
AR Path="/5BD39338/5BCECC43" Ref="U?"  Part="1" 
AR Path="/5BCECC43" Ref="U3"  Part="1" 
F 0 "U3" H 5828 2278 50  0000 L CNN
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
AR Path="/5BD3906D/5BCECD91" Ref="U?"  Part="1" 
AR Path="/5BD39338/5BCECD91" Ref="U?"  Part="1" 
AR Path="/5BCECD91" Ref="U1"  Part="1" 
F 0 "U1" H 2850 4878 50  0000 C CNN
F 1 "MSP430G2553IPW20" H 2850 4787 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm" H 1400 3350 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/msp430g2553.pdf" H 2800 3900 50  0001 C CNN
	1    2850 3900
	1    0    0    -1  
$EndComp
$Comp
L Memory_EEPROM:25LCxxx U?
U 1 1 5BCED472
P 3950 6250
AR Path="/5BD3906D/5BCED472" Ref="U?"  Part="1" 
AR Path="/5BD39338/5BCED472" Ref="U?"  Part="1" 
AR Path="/5BCED472" Ref="U2"  Part="1" 
F 0 "U2" H 3950 6728 50  0000 C CNN
F 1 "25LC640" H 3950 6637 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 3950 6250 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/21832H.pdf" H 3950 6250 50  0001 C CNN
	1    3950 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 4100 4700 4100
Wire Wire Line
	4700 4100 4700 2100
Wire Wire Line
	4750 4200 4550 4200
Wire Wire Line
	4850 2200 4650 2200
Wire Wire Line
	4650 2200 4650 4000
Wire Wire Line
	4650 4000 4550 4000
Wire Wire Line
	1100 3800 1150 3800
$Comp
L power:VCC #PWR?
U 1 1 5BCEF2DA
P 5350 1700
AR Path="/5BD3906D/5BCEF2DA" Ref="#PWR?"  Part="1" 
AR Path="/5BD39338/5BCEF2DA" Ref="#PWR?"  Part="1" 
AR Path="/5BCEF2DA" Ref="#PWR05"  Part="1" 
F 0 "#PWR05" H 5350 1550 50  0001 C CNN
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
AR Path="/5BD3906D/5BCEF357" Ref="#PWR?"  Part="1" 
AR Path="/5BD39338/5BCEF357" Ref="#PWR?"  Part="1" 
AR Path="/5BCEF357" Ref="#PWR06"  Part="1" 
F 0 "#PWR06" H 5350 2650 50  0001 C CNN
F 1 "GND" H 5355 2727 50  0000 C CNN
F 2 "" H 5350 2900 50  0001 C CNN
F 3 "" H 5350 2900 50  0001 C CNN
	1    5350 2900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5BCEF4A1
P 3950 6600
AR Path="/5BD3906D/5BCEF4A1" Ref="#PWR?"  Part="1" 
AR Path="/5BD39338/5BCEF4A1" Ref="#PWR?"  Part="1" 
AR Path="/5BCEF4A1" Ref="#PWR03"  Part="1" 
F 0 "#PWR03" H 3950 6350 50  0001 C CNN
F 1 "GND" H 3955 6427 50  0000 C CNN
F 2 "" H 3950 6600 50  0001 C CNN
F 3 "" H 3950 6600 50  0001 C CNN
	1    3950 6600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5BCEF4DF
P 2850 4700
AR Path="/5BD3906D/5BCEF4DF" Ref="#PWR?"  Part="1" 
AR Path="/5BD39338/5BCEF4DF" Ref="#PWR?"  Part="1" 
AR Path="/5BCEF4DF" Ref="#PWR02"  Part="1" 
F 0 "#PWR02" H 2850 4450 50  0001 C CNN
F 1 "GND" H 2855 4527 50  0000 C CNN
F 2 "" H 2850 4700 50  0001 C CNN
F 3 "" H 2850 4700 50  0001 C CNN
	1    2850 4700
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5BCEF55C
P 2200 3000
AR Path="/5BD3906D/5BCEF55C" Ref="#PWR?"  Part="1" 
AR Path="/5BD39338/5BCEF55C" Ref="#PWR?"  Part="1" 
AR Path="/5BCEF55C" Ref="#PWR01"  Part="1" 
F 0 "#PWR01" H 2200 2850 50  0001 C CNN
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
AR Path="/5BD3906D/5BCEF5D9" Ref="#PWR?"  Part="1" 
AR Path="/5BD39338/5BCEF5D9" Ref="#PWR?"  Part="1" 
AR Path="/5BCEF5D9" Ref="#PWR04"  Part="1" 
F 0 "#PWR04" H 4200 5800 50  0001 C CNN
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
	5000 4200 4750 4200
Connection ~ 4750 4200
Wire Wire Line
	4350 6350 4950 6350
Wire Wire Line
	4950 6350 4950 4100
Wire Wire Line
	4950 4100 4700 4100
Connection ~ 4700 4100
$Comp
L Device:R R?
U 1 1 5BCF4A41
P 6000 3400
AR Path="/5BD3906D/5BCF4A41" Ref="R?"  Part="1" 
AR Path="/5BD39338/5BCF4A41" Ref="R?"  Part="1" 
AR Path="/5BCF4A41" Ref="R1"  Part="1" 
F 0 "R1" H 6070 3446 50  0000 L CNN
F 1 "20k" H 6070 3355 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P20.32mm_Horizontal" V 5930 3400 50  0001 C CNN
F 3 "~" H 6000 3400 50  0001 C CNN
	1    6000 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5BCF4AC6
P 6000 3700
AR Path="/5BD3906D/5BCF4AC6" Ref="R?"  Part="1" 
AR Path="/5BD39338/5BCF4AC6" Ref="R?"  Part="1" 
AR Path="/5BCF4AC6" Ref="R2"  Part="1" 
F 0 "R2" H 6070 3746 50  0000 L CNN
F 1 "10k" H 6070 3655 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0411_L9.9mm_D3.6mm_P12.70mm_Horizontal" V 5930 3700 50  0001 C CNN
F 3 "~" H 6000 3700 50  0001 C CNN
	1    6000 3700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5BCF4B6F
P 6000 3850
AR Path="/5BD3906D/5BCF4B6F" Ref="#PWR?"  Part="1" 
AR Path="/5BD39338/5BCF4B6F" Ref="#PWR?"  Part="1" 
AR Path="/5BCF4B6F" Ref="#PWR013"  Part="1" 
F 0 "#PWR013" H 6000 3600 50  0001 C CNN
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
AR Path="/5BD3906D/5BCF63D1" Ref="#PWR?"  Part="1" 
AR Path="/5BD39338/5BCF63D1" Ref="#PWR?"  Part="1" 
AR Path="/5BCF63D1" Ref="#PWR012"  Part="1" 
F 0 "#PWR012" H 6000 3100 50  0001 C CNN
F 1 "VDD" H 6017 3423 50  0000 C CNN
F 2 "" H 6000 3250 50  0001 C CNN
F 3 "" H 6000 3250 50  0001 C CNN
	1    6000 3250
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR?
U 1 1 5BCFAD35
P 5950 4500
AR Path="/5BD3906D/5BCFAD35" Ref="#PWR?"  Part="1" 
AR Path="/5BD39338/5BCFAD35" Ref="#PWR?"  Part="1" 
AR Path="/5BCFAD35" Ref="#PWR010"  Part="1" 
F 0 "#PWR010" H 5950 4350 50  0001 C CNN
F 1 "VDD" H 5967 4673 50  0000 C CNN
F 2 "" H 5950 4500 50  0001 C CNN
F 3 "" H 5950 4500 50  0001 C CNN
	1    5950 4500
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5BCFB594
P 5800 4600
AR Path="/5BD3906D/5BCFB594" Ref="#PWR?"  Part="1" 
AR Path="/5BD39338/5BCFB594" Ref="#PWR?"  Part="1" 
AR Path="/5BCFB594" Ref="#PWR09"  Part="1" 
F 0 "#PWR09" H 5800 4450 50  0001 C CNN
F 1 "VCC" H 5817 4773 50  0000 C CNN
F 2 "" H 5800 4600 50  0001 C CNN
F 3 "" H 5800 4600 50  0001 C CNN
	1    5800 4600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5BCFBE51
P 5950 5800
AR Path="/5BD3906D/5BCFBE51" Ref="#PWR?"  Part="1" 
AR Path="/5BD39338/5BCFBE51" Ref="#PWR?"  Part="1" 
AR Path="/5BCFBE51" Ref="#PWR011"  Part="1" 
F 0 "#PWR011" H 5950 5550 50  0001 C CNN
F 1 "GND" H 5955 5627 50  0000 C CNN
F 2 "" H 5950 5800 50  0001 C CNN
F 3 "" H 5950 5800 50  0001 C CNN
	1    5950 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 3500 5700 4700
Wire Wire Line
	5550 3700 5550 4900
Wire Wire Line
	4550 3800 5450 3800
Wire Wire Line
	5450 3800 5450 5000
Wire Wire Line
	1150 4950 5350 4950
Wire Wire Line
	1150 4100 1050 4100
Wire Wire Line
	950  5300 5150 5300
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
AR Path="/5BD421B2" Ref="#PWR07"  Part="1" 
F 0 "#PWR07" H 5750 700 50  0001 C CNN
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
AR Path="/5BD3906D/5BD44828" Ref="#PWR?"  Part="1" 
AR Path="/5BD39338/5BD44828" Ref="#PWR?"  Part="1" 
AR Path="/5BD44828" Ref="#PWR08"  Part="1" 
F 0 "#PWR08" H 5750 1100 50  0001 C CNN
F 1 "GND" H 5755 1177 50  0000 C CNN
F 2 "" H 5750 1350 50  0001 C CNN
F 3 "" H 5750 1350 50  0001 C CNN
	1    5750 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 1350 5950 1350
Wire Wire Line
	4600 3700 5550 3700
Wire Wire Line
	4800 1250 5950 1250
Wire Wire Line
	4550 3500 5700 3500
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
Text Notes 5400 6100 0    50   ~ 0
* IO0 shared with EEPROM chip select
Text Notes 7400 7500 0    50   ~ 0
NRF and MSP430 based RC control
Text Notes 8250 7650 0    50   ~ 0
23 October 2018
Text Notes 10300 7350 0    50   ~ 0
created by Toby Kurien
Wire Wire Line
	3550 6250 3550 6150
Wire Wire Line
	3550 6150 3550 5950
Connection ~ 3550 6150
Connection ~ 3950 5950
Wire Wire Line
	3550 5950 3950 5950
Wire Wire Line
	3950 5950 4200 5950
Text HLabel 6600 4500 2    50   Input ~ 0
Vbatt
Text HLabel 6600 4600 2    50   Input ~ 0
3V3
Text HLabel 6600 4700 2    50   BiDi ~ 0
A0
Text HLabel 6600 4800 2    50   BiDi ~ 0
A1.RX
Text HLabel 6600 4900 2    50   BiDi ~ 0
A2.TX
Text HLabel 6600 5000 2    50   BiDi ~ 0
A3
Text HLabel 6600 5300 2    50   BiDi ~ 0
IO0
Text HLabel 6600 5400 2    50   BiDi ~ 0
IO1
Text HLabel 6600 5500 2    50   BiDi ~ 0
IO2
Text HLabel 6600 5600 2    50   BiDi ~ 0
IO3
Text HLabel 6600 5700 2    50   BiDi ~ 0
IO4
Wire Wire Line
	650  2500 4850 2500
Wire Wire Line
	550  2300 4850 2300
Connection ~ 1150 4950
$Comp
L Connector:Conn_01x06_Male J2
U 1 1 5BDB9DE8
P 6600 4700
F 0 "J2" H 6706 5078 50  0000 C CNN
F 1 "Conn_01x06_Male" H 6706 4987 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 6600 4700 50  0001 C CNN
F 3 "~" H 6600 4700 50  0001 C CNN
	1    6600 4700
	-1   0    0    -1  
$EndComp
Text HLabel 6600 5800 2    50   Input ~ 0
GND
$Comp
L Connector:Conn_01x06_Male J3
U 1 1 5BDB9E88
P 6600 5500
F 0 "J3" H 6700 5150 50  0000 R CNN
F 1 "Conn_01x06_Male" H 6900 5050 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 6600 5500 50  0001 C CNN
F 3 "~" H 6600 5500 50  0001 C CNN
	1    6600 5500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5350 5300 6400 5300
Wire Wire Line
	5300 5400 6400 5400
Wire Wire Line
	5200 5500 6400 5500
Wire Wire Line
	800  5700 6400 5700
Wire Wire Line
	5950 5800 6400 5800
Wire Wire Line
	6400 5000 5450 5000
Wire Wire Line
	5550 4900 6400 4900
Wire Wire Line
	5650 4800 6400 4800
Wire Wire Line
	5700 4700 6400 4700
Wire Wire Line
	5800 4600 6400 4600
Wire Wire Line
	5950 4500 6400 4500
Wire Wire Line
	1150 4200 650  4200
Wire Wire Line
	650  4200 650  2500
Wire Wire Line
	550  4300 1150 4300
Wire Wire Line
	550  2300 550  4300
Wire Wire Line
	800  3600 1150 3600
Wire Wire Line
	5350 4950 5350 5300
Wire Wire Line
	5300 5050 5300 5400
Wire Wire Line
	5200 5150 5200 5500
Wire Wire Line
	5150 5300 5150 5600
Wire Wire Line
	5150 5600 6400 5600
Wire Wire Line
	800  3600 800  5700
Wire Wire Line
	3950 6550 3950 6600
Wire Wire Line
	2850 4650 2850 4700
Wire Wire Line
	750  4000 1150 4000
Wire Wire Line
	1000 3900 1150 3900
Wire Wire Line
	950  3700 950  5300
Wire Wire Line
	950  3700 1150 3700
Wire Wire Line
	1100 3800 1100 5150
Wire Wire Line
	1100 5150 5200 5150
Wire Wire Line
	1000 5050 5300 5050
Wire Wire Line
	750  4000 750  4950
Wire Wire Line
	750  4950 1150 4950
Wire Wire Line
	1050 4100 1050 2600
Wire Wire Line
	1050 2600 4850 2600
Wire Wire Line
	4550 3350 4800 3350
Wire Wire Line
	4800 3350 4800 1250
Wire Wire Line
	1000 3900 1000 5050
Wire Wire Line
	4550 3600 5650 3600
Wire Wire Line
	5850 3600 5850 950 
Wire Wire Line
	5850 950  5950 950 
Wire Wire Line
	5650 4800 5650 3600
Connection ~ 5650 3600
Wire Wire Line
	5650 3600 5850 3600
Wire Wire Line
	1150 1150 1150 3450
Wire Wire Line
	1150 1150 5950 1150
Wire Wire Line
	4600 3700 4600 1050
Wire Wire Line
	4600 1050 5950 1050
Wire Wire Line
	4550 3700 4600 3700
Connection ~ 4600 3700
Wire Wire Line
	4750 2000 4850 2000
Wire Wire Line
	4750 2000 4750 4200
Wire Wire Line
	4850 2100 4700 2100
$EndSCHEMATC
