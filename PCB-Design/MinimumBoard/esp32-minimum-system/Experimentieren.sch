EESchema Schematic File Version 4
EELAYER 30 0
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
L power:+3V3 #PWR0110
U 1 1 5CF258EB
P 4600 2250
F 0 "#PWR0110" H 4600 2100 50  0001 C CNN
F 1 "+3V3" H 4615 2423 50  0000 C CNN
F 2 "" H 4600 2250 50  0001 C CNN
F 3 "" H 4600 2250 50  0001 C CNN
	1    4600 2250
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push PROG1
U 1 1 5D0ADA73
P 6650 3300
F 0 "PROG1" H 6650 3585 50  0000 C CNN
F 1 "SW_Push" H 6650 3494 50  0000 C CNN
F 2 "Buttons_Switches_SMD:SW_SPST_SKQG" H 6650 3500 50  0001 C CNN
F 3 "~" H 6650 3500 50  0001 C CNN
	1    6650 3300
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0117
U 1 1 5D08D9FF
P 6850 3300
F 0 "#PWR0117" H 6850 3050 50  0001 C CNN
F 1 "GND" H 6855 3127 50  0000 C CNN
F 2 "" H 6850 3300 50  0001 C CNN
F 3 "" H 6850 3300 50  0001 C CNN
	1    6850 3300
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0122
U 1 1 5CFD4E2D
P 6450 3500
F 0 "#PWR0122" H 6450 3250 50  0001 C CNN
F 1 "GND" H 6455 3327 50  0000 C CNN
F 2 "" H 6450 3500 50  0001 C CNN
F 3 "" H 6450 3500 50  0001 C CNN
	1    6450 3500
	1    0    0    -1  
$EndComp
Text Notes 8350 7300 0    79   ~ 0
1/1
$Comp
L Interface_USB:CH340G U1
U 1 1 5D083E54
P 7350 2000
F 0 "U1" H 7350 1311 50  0000 C CNN
F 1 "CH340G" H 7350 1220 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-16_3.9x9.9mm_Pitch1.27mm" H 7400 1450 50  0001 L CNN
F 3 "http://www.datasheet5.com/pdf-local-2195953" H 7000 2800 50  0001 C CNN
	1    7350 2000
	-1   0    0    1   
$EndComp
Wire Wire Line
	8550 2100 7750 2100
Wire Wire Line
	8550 1400 8550 1700
Connection ~ 7950 1400
Wire Wire Line
	8550 2000 7750 2000
$Comp
L power:GND #PWR0106
U 1 1 5D061C57
P 7950 1400
F 0 "#PWR0106" H 7950 1150 50  0001 C CNN
F 1 "GND" H 7955 1227 50  0000 C CNN
F 2 "" H 7950 1400 50  0001 C CNN
F 3 "" H 7950 1400 50  0001 C CNN
	1    7950 1400
	-1   0    0    1   
$EndComp
Wire Wire Line
	7350 3050 7350 2600
Connection ~ 8850 1700
Wire Wire Line
	8550 1700 8850 1700
Wire Wire Line
	8950 1700 8850 1700
$Comp
L Experimentieren-rescue:USB_B_Micro-Connector J1
U 1 1 5D09548D
P 8850 2100
F 0 "J1" H 8907 2567 50  0000 C CNN
F 1 "USB_B_Micro" H 8907 2476 50  0000 C CNN
F 2 "Connectors:USB_Micro-B" H 9000 2050 50  0001 C CNN
F 3 "~" H 9000 2050 50  0001 C CNN
	1    8850 2100
	-1   0    0    1   
$EndComp
Wire Wire Line
	7950 2900 7950 3050
Connection ~ 7950 3050
Wire Wire Line
	7950 2600 7950 1400
Wire Wire Line
	8550 1400 8300 1400
Wire Wire Line
	7950 1400 7350 1400
Wire Wire Line
	8300 2600 8300 1400
Connection ~ 8300 1400
Wire Wire Line
	8300 1400 7950 1400
Wire Wire Line
	8300 2900 8300 3050
Wire Wire Line
	8300 3050 7950 3050
Wire Wire Line
	8300 2750 8300 2800
Wire Wire Line
	8350 2750 8300 2750
$Comp
L Device:C C2
U 1 1 5CFD96E1
P 8300 2750
F 0 "C2" H 8415 2796 50  0000 L CNN
F 1 "C" H 8415 2705 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 8338 2600 50  0001 C CNN
F 3 "~" H 8300 2750 50  0001 C CNN
	1    8300 2750
	-1   0    0    1   
$EndComp
Wire Wire Line
	7450 3050 7450 2600
Connection ~ 7450 3050
Wire Wire Line
	7450 3050 7350 3050
$Comp
L power:+5V #PWR0125
U 1 1 5D1B2D6E
P 8550 2300
F 0 "#PWR0125" H 8550 2150 50  0001 C CNN
F 1 "+5V" H 8565 2473 50  0000 C CNN
F 2 "" H 8550 2300 50  0001 C CNN
F 3 "" H 8550 2300 50  0001 C CNN
	1    8550 2300
	-1   0    0    1   
$EndComp
$Comp
L Device:R R2
U 1 1 5D013130
P 6750 1550
F 0 "R2" H 6820 1596 50  0000 L CNN
F 1 "R" H 6820 1505 50  0000 L CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 6680 1550 50  0001 C CNN
F 3 "~" H 6750 1550 50  0001 C CNN
	1    6750 1550
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0126
U 1 1 5D013A6D
P 6750 1400
F 0 "#PWR0126" H 6750 1150 50  0001 C CNN
F 1 "GND" H 6755 1227 50  0000 C CNN
F 2 "" H 6750 1400 50  0001 C CNN
F 3 "" H 6750 1400 50  0001 C CNN
	1    6750 1400
	-1   0    0    1   
$EndComp
Wire Wire Line
	7700 3050 7450 3050
Wire Wire Line
	7950 3050 7700 3050
Connection ~ 7700 3050
$Comp
L power:+3V3 #PWR0107
U 1 1 5D188482
P 7700 3050
F 0 "#PWR0107" H 7700 2900 50  0001 C CNN
F 1 "+3V3" H 7715 3223 50  0000 C CNN
F 2 "" H 7700 3050 50  0001 C CNN
F 3 "" H 7700 3050 50  0001 C CNN
	1    7700 3050
	-1   0    0    1   
$EndComp
Wire Wire Line
	6950 1700 6750 1700
$Comp
L power:GND #PWR0123
U 1 1 5CFD5C2B
P 5100 3900
F 0 "#PWR0123" H 5100 3650 50  0001 C CNN
F 1 "GND" H 5105 3727 50  0000 C CNN
F 2 "" H 5100 3900 50  0001 C CNN
F 3 "" H 5100 3900 50  0001 C CNN
	1    5100 3900
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:LM1117-3.3 U2
U 1 1 5D0C05F6
P 8100 3700
F 0 "U2" H 8100 3942 50  0000 C CNN
F 1 "LM1117-3.3" H 8100 3851 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-223" H 8100 3700 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm1117.pdf" H 8100 3700 50  0001 C CNN
	1    8100 3700
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0108
U 1 1 5D062AD9
P 7550 3700
F 0 "#PWR0108" H 7550 3550 50  0001 C CNN
F 1 "+5V" H 7565 3873 50  0000 C CNN
F 2 "" H 7550 3700 50  0001 C CNN
F 3 "" H 7550 3700 50  0001 C CNN
	1    7550 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 3700 7700 3700
Connection ~ 7700 3700
$Comp
L Device:CP C3
U 1 1 5D07460D
P 7700 3850
F 0 "C3" H 7818 3896 50  0000 L CNN
F 1 "CP" H 7818 3805 50  0000 L CNN
F 2 "Capacitors_Tantalum_SMD:CP_Tantalum_Case-A_EIA-3216-18_Hand" H 7738 3700 50  0001 C CNN
F 3 "~" H 7700 3850 50  0001 C CNN
	1    7700 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 3700 7800 3700
Wire Wire Line
	7700 4000 8100 4000
Connection ~ 8100 4000
Wire Wire Line
	8500 4000 8100 4000
Wire Wire Line
	8500 3700 8650 3700
Connection ~ 8500 3700
$Comp
L Device:CP C4
U 1 1 5D074FEA
P 8500 3850
F 0 "C4" H 8618 3896 50  0000 L CNN
F 1 "CP" H 8618 3805 50  0000 L CNN
F 2 "Capacitors_Tantalum_SMD:CP_Tantalum_Case-A_EIA-3216-18_Hand" H 8538 3700 50  0001 C CNN
F 3 "~" H 8500 3850 50  0001 C CNN
	1    8500 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8400 3700 8500 3700
$Comp
L power:+3V3 #PWR0111
U 1 1 5D06425C
P 8650 3700
F 0 "#PWR0111" H 8650 3550 50  0001 C CNN
F 1 "+3V3" H 8665 3873 50  0000 C CNN
F 2 "" H 8650 3700 50  0001 C CNN
F 3 "" H 8650 3700 50  0001 C CNN
	1    8650 3700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 5D0633CF
P 8100 4000
F 0 "#PWR0109" H 8100 3750 50  0001 C CNN
F 1 "GND" H 8105 3827 50  0000 C CNN
F 2 "" H 8100 4000 50  0001 C CNN
F 3 "" H 8100 4000 50  0001 C CNN
	1    8100 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 2300 6950 2300
Wire Wire Line
	6950 2400 6450 2400
$Comp
L Device:C C1
U 1 1 5CFDA650
P 7950 2750
F 0 "C1" H 8065 2796 50  0000 L CNN
F 1 "C" H 8065 2705 50  0000 L CNN
F 2 "Capacitors_SMD:C_1206_HandSoldering" H 7988 2600 50  0001 C CNN
F 3 "~" H 7950 2750 50  0001 C CNN
	1    7950 2750
	-1   0    0    1   
$EndComp
$Comp
L Experimentieren-rescue:ESP32-WROOM-ESP32-footprints-Shem-Lib U3
U 1 1 5CF7A3E2
P 5550 2850
F 0 "U3" H 5525 4237 60  0000 C CNN
F 1 "ESP32-WROOM" H 5525 4131 60  0000 C CNN
F 2 "ExperimentierenV2:ESP32-WROOM" H 5900 4200 60  0001 C CNN
F 3 "" H 5100 3300 60  0001 C CNN
	1    5550 2850
	1    0    0    -1  
$EndComp
$Comp
L Device:Rotary_Encoder_Switch SW?
U 1 1 60707A2A
P 5550 4900
F 0 "SW?" H 5550 5267 50  0000 C CNN
F 1 "Rotary_Encoder_Switch" H 5550 5176 50  0000 C CNN
F 2 "" H 5400 5060 50  0001 C CNN
F 3 "~" H 5550 5160 50  0001 C CNN
	1    5550 4900
	1    0    0    -1  
$EndComp
$Comp
L Connector:Micro_SD_Card J?
U 1 1 60709B28
P 9350 5500
F 0 "J?" H 9300 6217 50  0000 C CNN
F 1 "Micro_SD_Card" H 9300 6126 50  0000 C CNN
F 2 "" H 10500 5800 50  0001 C CNN
F 3 "http://katalog.we-online.de/em/datasheet/693072010801.pdf" H 9350 5500 50  0001 C CNN
	1    9350 5500
	1    0    0    -1  
$EndComp
$Comp
L Sensor_Motion:MPU-6050 U?
U 1 1 6070BEDC
P 2450 4800
F 0 "U?" H 2450 4011 50  0000 C CNN
F 1 "MPU-6050" H 2450 3920 50  0000 C CNN
F 2 "Sensor_Motion:InvenSense_QFN-24_4x4mm_P0.5mm" H 2450 4000 50  0001 C CNN
F 3 "https://store.invensense.com/datasheets/invensense/MPU-6050_DataSheet_V3%204.pdf" H 2450 4650 50  0001 C CNN
	1    2450 4800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 6070E3E5
P 4850 4950
F 0 "#PWR?" H 4850 4700 50  0001 C CNN
F 1 "GND" H 4855 4777 50  0000 C CNN
F 2 "" H 4850 4950 50  0001 C CNN
F 3 "" H 4850 4950 50  0001 C CNN
	1    4850 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 2350 4600 2350
$Comp
L power:GND #PWR0113
U 1 1 5CF7FA15
P 4250 1900
F 0 "#PWR0113" H 4250 1650 50  0001 C CNN
F 1 "GND" H 4255 1727 50  0000 C CNN
F 2 "" H 4250 1900 50  0001 C CNN
F 3 "" H 4250 1900 50  0001 C CNN
	1    4250 1900
	0    -1   -1   0   
$EndComp
$Comp
L power:+3V3 #PWR0114
U 1 1 5CF7BDAF
P 4250 2700
F 0 "#PWR0114" H 4250 2550 50  0001 C CNN
F 1 "+3V3" H 4265 2873 50  0000 C CNN
F 2 "" H 4250 2700 50  0001 C CNN
F 3 "" H 4250 2700 50  0001 C CNN
	1    4250 2700
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R1
U 1 1 5CF7A79B
P 4250 2550
F 0 "R1" V 4043 2550 50  0000 C CNN
F 1 "R" V 4134 2550 50  0000 C CNN
F 2 "Resistors_SMD:R_1206_HandSoldering" V 4180 2550 50  0001 C CNN
F 3 "~" H 4250 2550 50  0001 C CNN
	1    4250 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 2300 4250 2350
Connection ~ 4250 2350
Wire Wire Line
	4250 2350 4250 2400
$Comp
L Switch:SW_Push RESET1
U 1 1 5CF79DB1
P 4250 2100
F 0 "RESET1" H 4250 2385 50  0000 C CNN
F 1 "SW_Push" H 4250 2294 50  0000 C CNN
F 2 "Buttons_Switches_SMD:SW_SPST_SKQG" H 4250 2300 50  0001 C CNN
F 3 "~" H 4250 2300 50  0001 C CNN
	1    4250 2100
	0    -1   1    0   
$EndComp
$Comp
L power:GND #PWR0120
U 1 1 5CFD63FF
P 4600 3550
F 0 "#PWR0120" H 4600 3300 50  0001 C CNN
F 1 "GND" H 4605 3377 50  0000 C CNN
F 2 "" H 4600 3550 50  0001 C CNN
F 3 "" H 4600 3550 50  0001 C CNN
	1    4600 3550
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 6071180D
P 4400 4850
F 0 "#PWR?" H 4400 4700 50  0001 C CNN
F 1 "+3.3V" H 4415 5023 50  0000 C CNN
F 2 "" H 4400 4850 50  0001 C CNN
F 3 "" H 4400 4850 50  0001 C CNN
	1    4400 4850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 60713B94
P 4850 4650
F 0 "R?" V 4643 4650 50  0000 C CNN
F 1 "R" V 4734 4650 50  0000 C CNN
F 2 "" V 4780 4650 50  0001 C CNN
F 3 "~" H 4850 4650 50  0001 C CNN
	1    4850 4650
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 60714232
P 4850 5450
F 0 "R?" V 4643 5450 50  0000 C CNN
F 1 "R" V 4734 5450 50  0000 C CNN
F 2 "" V 4780 5450 50  0001 C CNN
F 3 "~" H 4850 5450 50  0001 C CNN
	1    4850 5450
	0    1    1    0   
$EndComp
Wire Wire Line
	5250 5000 5250 5450
Wire Wire Line
	4700 5450 4400 5450
Wire Wire Line
	4400 5450 4400 4850
Wire Wire Line
	4700 4850 4400 4850
Connection ~ 4400 4850
Wire Wire Line
	5250 4650 5250 4800
Wire Wire Line
	4700 4650 4700 4850
Wire Wire Line
	5250 4950 5250 4900
Wire Wire Line
	5000 5450 5250 5450
Wire Wire Line
	5000 4650 5050 4650
Wire Wire Line
	4850 4950 5250 4950
Wire Wire Line
	5050 4650 5050 5900
Connection ~ 5050 4650
Wire Wire Line
	5050 4650 5250 4650
$Comp
L Device:R R?
U 1 1 60726E50
P 5050 6050
F 0 "R?" H 5120 6096 50  0000 L CNN
F 1 "R" H 5120 6005 50  0000 L CNN
F 2 "" V 4980 6050 50  0001 C CNN
F 3 "~" H 5050 6050 50  0001 C CNN
	1    5050 6050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 60727950
P 5650 6050
F 0 "R?" H 5720 6096 50  0000 L CNN
F 1 "R" H 5720 6005 50  0000 L CNN
F 2 "" V 5580 6050 50  0001 C CNN
F 3 "~" H 5650 6050 50  0001 C CNN
	1    5650 6050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 60728DB1
P 5500 6200
F 0 "C?" V 5248 6200 50  0000 C CNN
F 1 "C" V 5339 6200 50  0000 C CNN
F 2 "" H 5538 6050 50  0001 C CNN
F 3 "~" H 5500 6200 50  0001 C CNN
	1    5500 6200
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 6072BC27
P 5200 6200
F 0 "C?" V 4948 6200 50  0000 C CNN
F 1 "C" V 5039 6200 50  0000 C CNN
F 2 "" H 5238 6050 50  0001 C CNN
F 3 "~" H 5200 6200 50  0001 C CNN
	1    5200 6200
	0    1    1    0   
$EndComp
Wire Wire Line
	5650 5900 5650 5450
Wire Wire Line
	5650 5450 5250 5450
Connection ~ 5250 5450
$Comp
L power:GND #PWR?
U 1 1 6071DFA4
P 2450 5500
F 0 "#PWR?" H 2450 5250 50  0001 C CNN
F 1 "GND" H 2455 5327 50  0000 C CNN
F 2 "" H 2450 5500 50  0001 C CNN
F 3 "" H 2450 5500 50  0001 C CNN
	1    2450 5500
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 6071E93C
P 2550 4100
F 0 "#PWR?" H 2550 3950 50  0001 C CNN
F 1 "+3.3V" H 2565 4273 50  0000 C CNN
F 2 "" H 2550 4100 50  0001 C CNN
F 3 "" H 2550 4100 50  0001 C CNN
	1    2550 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 4500 1750 4050
Wire Wire Line
	1750 4050 3650 4050
Wire Wire Line
	5700 4050 5700 3900
Wire Wire Line
	5800 3900 5800 4000
Wire Wire Line
	5800 4000 2400 4000
Wire Wire Line
	1700 4000 1700 4600
Wire Wire Line
	1700 4600 1750 4600
$Comp
L Connector_Generic:Conn_02x03_Counter_Clockwise J?
U 1 1 60727A5B
P 2750 2650
F 0 "J?" H 2800 2967 50  0000 C CNN
F 1 "Conn_02x03_Counter_Clockwise" H 2800 2876 50  0000 C CNN
F 2 "" H 2750 2650 50  0001 C CNN
F 3 "~" H 2750 2650 50  0001 C CNN
	1    2750 2650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60728055
P 2550 2550
F 0 "#PWR?" H 2550 2300 50  0001 C CNN
F 1 "GND" V 2555 2422 50  0000 R CNN
F 2 "" H 2550 2550 50  0001 C CNN
F 3 "" H 2550 2550 50  0001 C CNN
	1    2550 2550
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 60728D5C
P 3050 2550
F 0 "#PWR?" H 3050 2400 50  0001 C CNN
F 1 "+3.3V" V 3065 2678 50  0000 L CNN
F 2 "" H 3050 2550 50  0001 C CNN
F 3 "" H 3050 2550 50  0001 C CNN
	1    3050 2550
	0    1    1    0   
$EndComp
Wire Wire Line
	3050 2650 3650 2650
Wire Wire Line
	3650 2650 3650 4050
Connection ~ 3650 4050
Wire Wire Line
	3650 4050 5700 4050
Wire Wire Line
	2550 2650 2400 2650
Wire Wire Line
	2400 2650 2400 4000
Connection ~ 2400 4000
Wire Wire Line
	2400 4000 1700 4000
Wire Wire Line
	4600 3150 2550 3150
Wire Wire Line
	2550 3150 2550 2750
Wire Wire Line
	4600 3050 3050 3050
Wire Wire Line
	3050 3050 3050 2750
Wire Wire Line
	4600 2950 3900 2950
Wire Wire Line
	3900 2950 3900 6200
Wire Wire Line
	3900 6200 5050 6200
Connection ~ 5050 6200
Wire Wire Line
	5650 6200 5650 6350
Wire Wire Line
	5650 6350 3950 6350
Wire Wire Line
	3950 6350 3950 2650
Wire Wire Line
	3950 2650 4600 2650
Connection ~ 5650 6200
Wire Wire Line
	4600 2750 4000 2750
Wire Wire Line
	4000 2750 4000 4450
Wire Wire Line
	4000 4450 5850 4450
Wire Wire Line
	5850 4450 5850 4800
Wire Wire Line
	5850 5000 6000 5000
$Comp
L power:+3.3V #PWR?
U 1 1 6073987A
P 6000 5000
F 0 "#PWR?" H 6000 4850 50  0001 C CNN
F 1 "+3.3V" H 6015 5173 50  0000 C CNN
F 2 "" H 6000 5000 50  0001 C CNN
F 3 "" H 6000 5000 50  0001 C CNN
	1    6000 5000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60739D9D
P 6150 4450
F 0 "#PWR?" H 6150 4200 50  0001 C CNN
F 1 "GND" H 6155 4277 50  0000 C CNN
F 2 "" H 6150 4450 50  0001 C CNN
F 3 "" H 6150 4450 50  0001 C CNN
	1    6150 4450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 6073A96C
P 6000 4450
F 0 "R?" V 5793 4450 50  0000 C CNN
F 1 "R" V 5884 4450 50  0000 C CNN
F 2 "" V 5930 4450 50  0001 C CNN
F 3 "~" H 6000 4450 50  0001 C CNN
	1    6000 4450
	0    1    1    0   
$EndComp
Connection ~ 5850 4450
$EndSCHEMATC
