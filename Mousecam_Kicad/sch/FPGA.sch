EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 4
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
L Mousecam-rescue:10M50SCE144C8G-10M50SCE U?
U 2 1 6083533B
P 7150 1950
F 0 "U?" H 7278 1696 50  0000 L CNN
F 1 "10M50SCE144C8G" H 7278 1605 50  0000 L CNN
F 2 "10M50SCE144:QFP50P2200X2200X165-145N" H 6600 2250 50  0001 C CNN
F 3 "" H 7150 1950 50  0001 C CNN
	2    7150 1950
	1    0    0    -1  
$EndComp
$Comp
L Mousecam-rescue:10M50SCE144C8G-10M50SCE U?
U 10 1 60851983
P 9900 4350
F 0 "U?" H 9917 1385 50  0000 C CNN
F 1 "10M50SCE144C8G" H 9917 1476 50  0000 C CNN
F 2 "10M50SCE144:QFP50P2200X2200X165-145N" H 9350 6200 50  0001 C CNN
F 3 "" H 9900 5450 50  0001 C CNN
	10   9900 4350
	1    0    0    1   
$EndComp
Wire Wire Line
	9400 1750 9250 1750
Wire Wire Line
	9250 2650 9400 2650
Wire Wire Line
	9400 2550 9250 2550
Connection ~ 9250 2550
Wire Wire Line
	9250 2550 9250 2650
Wire Wire Line
	9400 2450 9250 2450
Connection ~ 9250 2450
Wire Wire Line
	9250 2450 9250 2550
Wire Wire Line
	9250 1750 9250 1850
Wire Wire Line
	9400 2350 9250 2350
Connection ~ 9250 2350
Wire Wire Line
	9250 2350 9250 2450
Wire Wire Line
	9400 2250 9250 2250
Connection ~ 9250 2250
Wire Wire Line
	9250 2250 9250 2350
Wire Wire Line
	9400 2150 9250 2150
Connection ~ 9250 2150
Wire Wire Line
	9250 2150 9250 2250
Wire Wire Line
	9400 2050 9250 2050
Connection ~ 9250 2050
Wire Wire Line
	9250 2050 9250 2150
Wire Wire Line
	9400 1950 9250 1950
Connection ~ 9250 1950
Wire Wire Line
	9250 1950 9250 2050
Wire Wire Line
	9400 1850 9250 1850
Connection ~ 9250 1850
Wire Wire Line
	9250 1850 9250 1950
$Comp
L power:GND #PWR?
U 1 1 60867786
P 9200 6200
F 0 "#PWR?" H 9200 5950 50  0001 C CNN
F 1 "GND" V 9205 6072 50  0000 R CNN
F 2 "" H 9200 6200 50  0001 C CNN
F 3 "" H 9200 6200 50  0001 C CNN
	1    9200 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9400 4800 9200 4800
Wire Wire Line
	9200 4800 9200 4900
Wire Wire Line
	9200 6100 9400 6100
Wire Wire Line
	9400 4900 9200 4900
Connection ~ 9200 4900
Wire Wire Line
	9400 5000 9200 5000
Wire Wire Line
	9200 4900 9200 5000
Connection ~ 9200 5000
Wire Wire Line
	9200 5000 9200 5100
Wire Wire Line
	9400 5100 9200 5100
Connection ~ 9200 5100
Wire Wire Line
	9200 5100 9200 5200
Wire Wire Line
	9400 5200 9200 5200
Connection ~ 9200 5200
Wire Wire Line
	9200 5200 9200 5300
Wire Wire Line
	9400 5300 9200 5300
Connection ~ 9200 5300
Wire Wire Line
	9200 5300 9200 5400
Wire Wire Line
	9400 5400 9200 5400
Connection ~ 9200 5400
Wire Wire Line
	9200 5400 9200 5500
Wire Wire Line
	9400 5500 9200 5500
Connection ~ 9200 5500
Wire Wire Line
	9200 5500 9200 5600
Wire Wire Line
	9200 5600 9400 5600
Connection ~ 9200 5600
Wire Wire Line
	9200 5600 9200 5700
Wire Wire Line
	9400 5700 9200 5700
Connection ~ 9200 5700
Wire Wire Line
	9200 5700 9200 5800
Wire Wire Line
	9400 5800 9200 5800
Connection ~ 9200 5800
Wire Wire Line
	9200 5800 9200 5900
Wire Wire Line
	9400 5900 9200 5900
Connection ~ 9200 5900
Wire Wire Line
	9400 6000 9200 6000
Wire Wire Line
	9200 5900 9200 6000
Connection ~ 9200 6000
Wire Wire Line
	9200 6000 9200 6100
Wire Wire Line
	9200 6200 9200 6100
Connection ~ 9200 6100
Text HLabel 6300 1850 0    50   Input ~ 0
JTAGEN
Text HLabel 6300 1950 0    50   Input ~ 0
TMS
Text HLabel 6300 2050 0    50   Input ~ 0
TCK
Text HLabel 6300 2150 0    50   Input ~ 0
TDI
Text HLabel 6300 2250 0    50   Input ~ 0
TDO
Text HLabel 4500 1650 0    50   Input ~ 0
D9
Text HLabel 4500 1750 0    50   Input ~ 0
D8
Text HLabel 4500 1850 0    50   Input ~ 0
D7
Text HLabel 4500 1950 0    50   Input ~ 0
D6
Text HLabel 4500 2050 0    50   Input ~ 0
D5
Text HLabel 4500 2150 0    50   Input ~ 0
D4
Text HLabel 4500 2250 0    50   Input ~ 0
D3
Text HLabel 4500 2350 0    50   Input ~ 0
D2
Text HLabel 4500 2450 0    50   Input ~ 0
D1
Text HLabel 4500 2550 0    50   Input ~ 0
D0
Text HLabel 8850 2150 0    50   Input ~ 0
VCC_ONE
Wire Wire Line
	8850 2150 9250 2150
Text HLabel 9300 4600 0    50   Input ~ 0
VCCIO1A
Wire Wire Line
	9400 4600 9300 4600
Text HLabel 9300 4500 0    50   Input ~ 0
VCCIO1B
Wire Wire Line
	9400 4500 9300 4500
Text HLabel 9300 4400 0    50   Input ~ 0
VCCIO2
Wire Wire Line
	9400 4400 9300 4400
Text HLabel 9300 4300 0    50   Input ~ 0
VCCIO3
Wire Wire Line
	9400 4300 9300 4300
Text HLabel 9300 4200 0    50   Input ~ 0
VCCIO3
Wire Wire Line
	9400 4200 9300 4200
Text HLabel 9300 4100 0    50   Input ~ 0
VCCIO4
Wire Wire Line
	9400 4100 9300 4100
Text HLabel 9300 4000 0    50   Input ~ 0
VCCIO5
Wire Wire Line
	9400 4000 9300 4000
Text HLabel 9300 3900 0    50   Input ~ 0
VCCIO6
Wire Wire Line
	9400 3900 9300 3900
Text HLabel 9300 3800 0    50   Input ~ 0
VCCIO6
Wire Wire Line
	9400 3800 9300 3800
Text HLabel 9300 3700 0    50   Input ~ 0
VCCIO7
Wire Wire Line
	9400 3700 9300 3700
Text HLabel 9300 3600 0    50   Input ~ 0
VCCIO8
Wire Wire Line
	9400 3600 9300 3600
Text HLabel 9300 3500 0    50   Input ~ 0
VCCIO8
Wire Wire Line
	9400 3500 9300 3500
Wire Wire Line
	4500 2650 4200 2650
Wire Wire Line
	4500 2750 4200 2750
Wire Wire Line
	4500 2850 4200 2850
Wire Wire Line
	4500 2950 4200 2950
Text HLabel 4200 2650 0    50   Input ~ 0
SCK
Text HLabel 4200 2750 0    50   Input ~ 0
MOSI
Text HLabel 4200 2850 0    50   Input ~ 0
MISO
Text HLabel 4200 2950 0    50   Input ~ 0
SS_N
$Comp
L Mousecam-rescue:10M50SCE144C8G-10M50SCE U?
U 4 1 6082CFF3
P 5200 1850
F 0 "U?" H 5328 1446 50  0000 L CNN
F 1 "10M50SCE144C8G" H 5328 1355 50  0000 L CNN
F 2 "10M50SCE144:QFP50P2200X2200X165-145N" H 4650 3700 50  0001 C CNN
F 3 "" H 5200 2950 50  0001 C CNN
	4    5200 1850
	1    0    0    -1  
$EndComp
$EndSCHEMATC
