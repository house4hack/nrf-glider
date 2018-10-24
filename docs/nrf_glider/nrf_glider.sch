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
Text Notes 7400 7500 0    50   ~ 0
NRF and MSP430 based RC control
Text Notes 8250 7650 0    50   ~ 0
23 October 2018
Text Notes 10300 7350 0    50   ~ 0
created by Toby Kurien
$Sheet
S 1050 4600 1400 2350
U 5BD3906D
F0 "Glider MCU" 50
F1 "glider_mcu.sch" 50
F2 "Vbatt" I R 2450 4800 50 
F3 "3V3" I R 2450 4900 50 
F4 "A0" B R 2450 5000 50 
F5 "A1.RX" B R 2450 5100 50 
F6 "A2.TX" B R 2450 5200 50 
F7 "A3" B R 2450 5300 50 
F8 "IO0" B R 2450 5400 50 
F9 "IO1" B R 2450 5500 50 
F10 "IO2" B R 2450 5600 50 
F11 "IO3" B R 2450 5700 50 
F12 "IO4" B R 2450 5800 50 
F13 "GND" I R 2450 5900 50 
$EndSheet
$Sheet
S 3750 1350 1400 1650
U 5BD39174
F0 "Glider transmitter" 50
F1 "glider_tx.sch" 50
F2 "Vbatt" O L 3750 1550 50 
F3 "3V3" O L 3750 1650 50 
F4 "A0" B L 3750 1750 50 
F5 "A1.RX" B L 3750 1850 50 
F6 "A2.TX" B L 3750 1950 50 
F7 "A3" B L 3750 2050 50 
F8 "IO0" B L 3750 2150 50 
F9 "IO1" B L 3750 2250 50 
F10 "IO2" B L 3750 2350 50 
F11 "IO3" B L 3750 2450 50 
F12 "IO4" B L 3750 2550 50 
F13 "GND" O L 3750 2650 50 
$EndSheet
$Sheet
S 3750 4700 1350 1800
U 5BD39234
F0 "Glider Receiver" 50
F1 "glider_rx.sch" 50
F2 "Vbatt" O L 3750 4900 50 
F3 "3V3" O L 3750 5000 50 
F4 "A0" B L 3750 5100 50 
F5 "A1.RX" B L 3750 5200 50 
F6 "A2.TX" B L 3750 5300 50 
F7 "A3" B L 3750 5400 50 
F8 "IO0" B L 3750 5500 50 
F9 "IO1" B L 3750 5600 50 
F10 "IO2" B L 3750 5700 50 
F11 "IO3" B L 3750 5800 50 
F12 "IO4" B L 3750 5900 50 
F13 "GND" O L 3750 6000 50 
$EndSheet
$Sheet
S 1100 1350 1400 2350
U 5BD39338
F0 "sheet5BD3932A" 50
F1 "glider_mcu.sch" 50
F2 "Vbatt" I R 2500 1550 50 
F3 "3V3" I R 2500 1650 50 
F4 "A0" B R 2500 1750 50 
F5 "A1.RX" B R 2500 1850 50 
F6 "A2.TX" B R 2500 1950 50 
F7 "A3" B R 2500 2050 50 
F8 "IO0" B R 2500 2150 50 
F9 "IO1" B R 2500 2250 50 
F10 "IO2" B R 2500 2350 50 
F11 "IO3" B R 2500 2450 50 
F12 "IO4" B R 2500 2550 50 
F13 "GND" I R 2500 2650 50 
$EndSheet
Wire Wire Line
	3750 4900 3400 4900
Wire Wire Line
	3400 4900 3400 4800
Wire Wire Line
	3400 4800 2450 4800
Wire Wire Line
	2450 4900 3350 4900
Wire Wire Line
	3350 4900 3350 5000
Wire Wire Line
	3350 5000 3750 5000
Wire Wire Line
	3750 5100 3250 5100
Wire Wire Line
	3250 5100 3250 5000
Wire Wire Line
	3250 5000 2450 5000
Wire Wire Line
	2450 5100 3150 5100
Wire Wire Line
	3150 5100 3150 5200
Wire Wire Line
	3150 5200 3750 5200
Wire Wire Line
	3750 5300 3050 5300
Wire Wire Line
	3050 5300 3050 5200
Wire Wire Line
	3050 5200 2450 5200
Wire Wire Line
	2450 5300 2950 5300
Wire Wire Line
	2950 5300 2950 5400
Wire Wire Line
	2950 5400 3750 5400
Wire Wire Line
	3750 5500 2850 5500
Wire Wire Line
	2850 5500 2850 5400
Wire Wire Line
	2850 5400 2450 5400
Wire Wire Line
	2450 5500 2750 5500
Wire Wire Line
	2750 5500 2750 5600
Wire Wire Line
	2750 5600 3750 5600
Wire Wire Line
	2450 5600 2650 5600
Wire Wire Line
	2650 5600 2650 5700
Wire Wire Line
	2650 5700 3750 5700
Wire Wire Line
	2450 5700 2600 5700
Wire Wire Line
	2600 5700 2600 5800
Wire Wire Line
	2600 5800 3750 5800
Wire Wire Line
	2450 5800 2550 5800
Wire Wire Line
	2550 5800 2550 5900
Wire Wire Line
	2550 5900 3750 5900
Wire Wire Line
	2450 5900 2500 5900
Wire Wire Line
	2500 5900 2500 6000
Wire Wire Line
	2500 6000 3750 6000
Wire Wire Line
	2500 1550 3750 1550
Wire Wire Line
	2500 1650 3750 1650
Wire Wire Line
	2500 1750 3750 1750
Wire Wire Line
	2500 1850 3750 1850
Wire Wire Line
	2500 1950 3750 1950
Wire Wire Line
	2500 2050 3750 2050
Wire Wire Line
	2500 2150 3750 2150
Wire Wire Line
	2500 2250 3750 2250
Wire Wire Line
	2500 2350 3750 2350
Wire Wire Line
	2500 2450 3750 2450
Wire Wire Line
	2500 2550 3750 2550
Wire Wire Line
	2500 2650 3750 2650
$EndSCHEMATC
