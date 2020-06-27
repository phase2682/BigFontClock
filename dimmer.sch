EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 1 1
Title "Big Font Clock Interface Board w/dimmer"
Date "2020-03-08"
Rev "0.0"
Comp "thePHASE"
Comment1 "Dan Koellen AI6XG"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Timer:ICM7555 U1
U 1 1 5E60424A
P 1800 5700
F 0 "U1" H 1800 6281 50  0000 L CNN
F 1 "ICM7555" H 1800 6190 50  0000 L TNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 1800 5700 50  0001 C CNN
F 3 "http://www.intersil.com/content/dam/Intersil/documents/icm7/icm7555-56.pdf" H 1800 5700 50  0001 C CNN
	1    1800 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 5500 1050 5500
Wire Wire Line
	1050 6400 2300 6400
$Comp
L Device:C_Small C1
U 1 1 5E60A0E4
P 1050 6700
F 0 "C1" H 1142 6746 50  0000 L CNN
F 1 "10 nFd" H 1142 6655 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D5.0mm_W2.5mm_P5.00mm" H 1050 6700 50  0001 C CNN
F 3 "~" H 1050 6700 50  0001 C CNN
	1    1050 6700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5E60A68A
P 1050 6800
F 0 "#PWR02" H 1050 6550 50  0001 C CNN
F 1 "GND" H 1055 6627 50  0000 C CNN
F 2 "" H 1050 6800 50  0001 C CNN
F 3 "" H 1050 6800 50  0001 C CNN
	1    1050 6800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5E60CA83
P 1800 6100
F 0 "#PWR03" H 1800 5850 50  0001 C CNN
F 1 "GND" H 1805 5927 50  0000 C CNN
F 2 "" H 1800 6100 50  0001 C CNN
F 3 "" H 1800 6100 50  0001 C CNN
	1    1800 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 5900 2300 6400
$Comp
L Device:R_US R1
U 1 1 5E60FA63
P 3400 5500
F 0 "R1" V 3195 5500 50  0000 C CNN
F 1 " 810 250mW" V 3286 5500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3440 5490 50  0001 C CNN
F 3 "~" H 3400 5500 50  0001 C CNN
	1    3400 5500
	0    1    1    0   
$EndComp
Wire Wire Line
	900  5900 900  5300
$Comp
L power:+5V #PWR01
U 1 1 5E6111F4
P 900 5300
F 0 "#PWR01" H 900 5150 50  0001 C CNN
F 1 "+5V" H 915 5473 50  0000 C CNN
F 2 "" H 900 5300 50  0001 C CNN
F 3 "" H 900 5300 50  0001 C CNN
	1    900  5300
	1    0    0    -1  
$EndComp
Connection ~ 900  5300
$Comp
L Device:C_Small C2
U 1 1 5E611BCF
P 3900 5850
F 0 "C2" H 3992 5896 50  0000 L CNN
F 1 "100n" H 3992 5805 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D6.0mm_W2.5mm_P5.00mm" H 3900 5850 50  0001 C CNN
F 3 "~" H 3900 5850 50  0001 C CNN
	1    3900 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 5750 3900 5550
Wire Wire Line
	3900 5500 3550 5500
$Comp
L power:GND #PWR04
U 1 1 5E612D5D
P 3900 5950
F 0 "#PWR04" H 3900 5700 50  0001 C CNN
F 1 "GND" H 3905 5777 50  0000 C CNN
F 2 "" H 3900 5950 50  0001 C CNN
F 3 "" H 3900 5950 50  0001 C CNN
	1    3900 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1300 5900 900  5900
Wire Wire Line
	1050 5500 1050 6400
Wire Wire Line
	2300 5500 2800 5500
$Comp
L Diode:BAT43 D1
U 1 1 5E614A1D
P 2800 5650
F 0 "D1" V 2846 5571 50  0000 R CNN
F 1 "BAT43" V 2755 5571 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 2800 5475 50  0001 C CNN
F 3 "http://www.vishay.com/docs/85660/bat42.pdf" H 2800 5650 50  0001 C CNN
	1    2800 5650
	0    -1   -1   0   
$EndComp
Connection ~ 2800 5500
Wire Wire Line
	2800 5500 3250 5500
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5E618E33
P 1200 5300
F 0 "#FLG0101" H 1200 5375 50  0001 C CNN
F 1 "PWR_FLAG" H 1200 5473 50  0000 C CNN
F 2 "" H 1200 5300 50  0001 C CNN
F 3 "~" H 1200 5300 50  0001 C CNN
	1    1200 5300
	1    0    0    -1  
$EndComp
Connection ~ 1200 5300
Wire Wire Line
	1200 5300 1800 5300
Wire Wire Line
	900  5300 1200 5300
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5E61B517
P 3600 5950
F 0 "#FLG0102" H 3600 6025 50  0001 C CNN
F 1 "PWR_FLAG" H 3600 6123 50  0000 C CNN
F 2 "" H 3600 5950 50  0001 C CNN
F 3 "~" H 3600 5950 50  0001 C CNN
	1    3600 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 5950 3900 5950
Connection ~ 3900 5950
NoConn ~ 1300 5700
$Comp
L dimmer-rescue:CPC1510-AI6XG_Library U2
U 1 1 5E622651
P 5600 5100
F 0 "U2" H 5825 5215 50  0000 C CNN
F 1 "CPC1510" H 5825 5124 50  0000 C CNN
F 2 "Package_DIP:DIP-6_W7.62mm" H 5600 5100 50  0001 C CNN
F 3 "http://www.ixysic.com/home/pdfs.nsf/www/CPC1510.pdf/$file/CPC1510.pdf" H 5600 5100 50  0001 C CNN
	1    5600 5100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 5E623982
P 5100 5450
F 0 "#PWR0101" H 5100 5200 50  0001 C CNN
F 1 "GND" H 5105 5277 50  0000 C CNN
F 2 "" H 5100 5450 50  0001 C CNN
F 3 "" H 5100 5450 50  0001 C CNN
	1    5100 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 5450 5100 5450
Wire Wire Line
	6350 5650 6650 5650
Wire Wire Line
	6650 5650 6650 5250
Wire Wire Line
	6650 5250 6350 5250
Wire Wire Line
	6650 5250 7100 5250
Connection ~ 6650 5250
$Comp
L Device:R_Small R3
U 1 1 5E625430
P 6900 5600
F 0 "R3" H 6959 5646 50  0000 L CNN
F 1 "I_lcd" H 6959 5555 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0309_L9.0mm_D3.2mm_P15.24mm_Horizontal" H 6900 5600 50  0001 C CNN
F 3 "~" H 6900 5600 50  0001 C CNN
	1    6900 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 5500 6900 5450
Wire Wire Line
	6900 5450 6350 5450
$Comp
L power:GND #PWR0102
U 1 1 5E626057
P 6900 5700
F 0 "#PWR0102" H 6900 5450 50  0001 C CNN
F 1 "GND" H 6905 5527 50  0000 C CNN
F 2 "" H 6900 5700 50  0001 C CNN
F 3 "" H 6900 5700 50  0001 C CNN
	1    6900 5700
	1    0    0    -1  
$EndComp
$Comp
L dk_Rectangular-Connectors-Headers-Male-Pins:640456-3 J1
U 1 1 5E626993
P 2600 6800
F 0 "J1" H 2878 6854 50  0000 L CNN
F 1 "3 pos 2.54mm" H 2878 6763 50  0000 L CNN
F 2 "digikey-footprints:PinHeader_1x3_P2.54_Drill1.1mm" H 2800 7000 60  0001 L CNN
F 3 "https://www.te.com/commerce/DocumentDelivery/DDEController?Action=srchrtrv&DocNm=640456&DocType=Customer+Drawing&DocLang=English" H 2800 7100 60  0001 L CNN
F 4 "A19470-ND" H 2800 7200 60  0001 L CNN "Digi-Key_PN"
F 5 "640456-3" H 2800 7300 60  0001 L CNN "MPN"
F 6 "Connectors, Interconnects" H 2800 7400 60  0001 L CNN "Category"
F 7 "Rectangular Connectors - Headers, Male Pins" H 2800 7500 60  0001 L CNN "Family"
F 8 "https://www.te.com/commerce/DocumentDelivery/DDEController?Action=srchrtrv&DocNm=640456&DocType=Customer+Drawing&DocLang=English" H 2800 7600 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/te-connectivity-amp-connectors/640456-3/A19470-ND/259010" H 2800 7700 60  0001 L CNN "DK_Detail_Page"
F 10 "CONN HEADER VERT 3POS 2.54MM" H 2800 7800 60  0001 L CNN "Description"
F 11 "TE Connectivity AMP Connectors" H 2800 7900 60  0001 L CNN "Manufacturer"
F 12 "Active" H 2800 8000 60  0001 L CNN "Status"
	1    2600 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 6700 2600 5700
Wire Wire Line
	2600 5700 2300 5700
Wire Wire Line
	2800 5800 2800 6700
Wire Wire Line
	2700 6700 2700 6400
Wire Wire Line
	2700 6400 2300 6400
Connection ~ 2300 6400
Connection ~ 1050 6400
Wire Wire Line
	1050 6400 1050 6600
$Comp
L Connector:Raspberry_Pi_2_3 J3
U 1 1 5E634D07
P 8350 2550
F 0 "J3" H 8350 4031 50  0000 C CNN
F 1 "Raspberry_Pi_Zero_W" H 8350 3940 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x20_P2.54mm_Vertical" H 8350 2550 50  0001 C CNN
F 3 "https://www.raspberrypi.org/documentation/hardware/raspberrypi/schematics/rpi_SCH_3bplus_1p0_reduced.pdf" H 8350 2550 50  0001 C CNN
	1    8350 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 1250 8150 1250
$Comp
L power:+5V #PWR0105
U 1 1 5E65A8CF
P 7900 1250
F 0 "#PWR0105" H 7900 1100 50  0001 C CNN
F 1 "+5V" H 7915 1423 50  0000 C CNN
F 2 "" H 7900 1250 50  0001 C CNN
F 3 "" H 7900 1250 50  0001 C CNN
	1    7900 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 1250 8150 1250
Connection ~ 8150 1250
Wire Wire Line
	8450 1250 8550 1250
$Comp
L power:+3.3V #PWR0106
U 1 1 5E65CCB0
P 8800 1250
F 0 "#PWR0106" H 8800 1100 50  0001 C CNN
F 1 "+3.3V" H 8815 1423 50  0000 C CNN
F 2 "" H 8800 1250 50  0001 C CNN
F 3 "" H 8800 1250 50  0001 C CNN
	1    8800 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8800 1250 8550 1250
Connection ~ 8550 1250
Wire Wire Line
	7950 3850 8050 3850
Wire Wire Line
	8050 3850 8150 3850
Connection ~ 8050 3850
Wire Wire Line
	8150 3850 8250 3850
Connection ~ 8150 3850
Wire Wire Line
	8350 3850 8250 3850
Connection ~ 8250 3850
Wire Wire Line
	8350 3850 8450 3850
Connection ~ 8350 3850
Wire Wire Line
	8550 3850 8450 3850
Connection ~ 8450 3850
Wire Wire Line
	8650 3850 8550 3850
Connection ~ 8550 3850
$Comp
L power:GND #PWR0107
U 1 1 5E662266
P 8350 3850
F 0 "#PWR0107" H 8350 3600 50  0001 C CNN
F 1 "GND" H 8355 3677 50  0000 C CNN
F 2 "" H 8350 3850 50  0001 C CNN
F 3 "" H 8350 3850 50  0001 C CNN
	1    8350 3850
	1    0    0    -1  
$EndComp
Text GLabel 7550 2550 0    50   Output ~ 0
EN1
Text GLabel 7550 2450 0    50   Output ~ 0
RS
Text GLabel 7550 1950 0    50   Output ~ 0
EN0
Text GLabel 9150 3250 2    50   Output ~ 0
DB1
Text GLabel 9150 2650 2    50   Output ~ 0
DB3
Text GLabel 9150 2750 2    50   Output ~ 0
DB5
Text GLabel 7550 3050 0    50   Output ~ 0
DB7
Text GLabel 9150 3350 2    50   Output ~ 0
DB0
Text GLabel 9150 2450 2    50   Output ~ 0
DB2
Text GLabel 9150 2350 2    50   Output ~ 0
DB4
Text GLabel 9150 3050 2    50   Output ~ 0
DB6
Text GLabel 7550 2750 0    50   Input ~ 0
LSB_M
Text GLabel 9150 2850 2    50   Input ~ 0
USB_M
NoConn ~ 7550 1650
NoConn ~ 7550 1750
NoConn ~ 7550 2050
NoConn ~ 7550 2150
NoConn ~ 7550 2350
NoConn ~ 7550 2850
NoConn ~ 7550 2950
NoConn ~ 7550 3150
NoConn ~ 7550 3250
NoConn ~ 9150 2950
NoConn ~ 9150 2250
NoConn ~ 9150 2050
NoConn ~ 9150 1950
NoConn ~ 9150 1750
NoConn ~ 9150 1650
$Comp
L Connector_Generic:Conn_02x09_Odd_Even J2
U 1 1 5E66DD7F
P 2450 2350
F 0 "J2" H 2500 2967 50  0000 C CNN
F 1 "LCD" H 2500 2876 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x09_P2.54mm_Vertical" H 2450 2350 50  0001 C CNN
F 3 "~" H 2450 2350 50  0001 C CNN
	1    2450 2350
	1    0    0    -1  
$EndComp
Text GLabel 2250 2650 0    50   Input ~ 0
EN1
Text GLabel 2250 2450 0    50   Input ~ 0
RS
Text GLabel 2250 2350 0    50   Input ~ 0
EN0
Text GLabel 2250 2250 0    50   Input ~ 0
DB1
Text GLabel 2250 2150 0    50   Input ~ 0
DB3
Text GLabel 2250 2050 0    50   Input ~ 0
DB5
Text GLabel 2250 1950 0    50   Input ~ 0
DB7
NoConn ~ 2750 2650
Text GLabel 2750 1950 2    50   Input ~ 0
DB6
Text GLabel 2750 2050 2    50   Input ~ 0
DB4
Text GLabel 2750 2150 2    50   Input ~ 0
DB2
Text GLabel 2750 2250 2    50   Input ~ 0
DB0
Text GLabel 7100 5250 2    50   Input ~ 0
LCD_K
Text GLabel 2750 2750 2    50   Input ~ 0
LCD_K
$Comp
L power:+5V #PWR0108
U 1 1 5E672D57
P 3100 2650
F 0 "#PWR0108" H 3100 2500 50  0001 C CNN
F 1 "+5V" H 3115 2823 50  0000 C CNN
F 2 "" H 3100 2650 50  0001 C CNN
F 3 "" H 3100 2650 50  0001 C CNN
	1    3100 2650
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0109
U 1 1 5E6735E0
P 1950 2900
F 0 "#PWR0109" H 1950 2750 50  0001 C CNN
F 1 "+5V" H 1965 3073 50  0000 C CNN
F 2 "" H 1950 2900 50  0001 C CNN
F 3 "" H 1950 2900 50  0001 C CNN
	1    1950 2900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 5E6739C8
P 1650 2550
F 0 "#PWR0110" H 1650 2300 50  0001 C CNN
F 1 "GND" H 1655 2377 50  0000 C CNN
F 2 "" H 1650 2550 50  0001 C CNN
F 3 "" H 1650 2550 50  0001 C CNN
	1    1650 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1650 2550 2250 2550
Wire Wire Line
	2250 2750 2250 2900
Wire Wire Line
	2250 2900 1950 2900
Wire Wire Line
	2750 2550 2950 2550
Wire Wire Line
	2950 2550 2950 2650
Wire Wire Line
	2950 2650 3100 2650
Text GLabel 2750 2450 2    50   Input ~ 0
VEE
$Comp
L power:GND #PWR0111
U 1 1 5E67929D
P 3350 2350
F 0 "#PWR0111" H 3350 2100 50  0001 C CNN
F 1 "GND" H 3355 2177 50  0000 C CNN
F 2 "" H 3350 2350 50  0001 C CNN
F 3 "" H 3350 2350 50  0001 C CNN
	1    3350 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 2350 3350 2350
$Comp
L power:PWR_FLAG #FLG0103
U 1 1 5E64DE63
P 9200 1250
F 0 "#FLG0103" H 9200 1325 50  0001 C CNN
F 1 "PWR_FLAG" H 9200 1423 50  0000 C CNN
F 2 "" H 9200 1250 50  0001 C CNN
F 3 "~" H 9200 1250 50  0001 C CNN
	1    9200 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 1250 8800 1250
Connection ~ 8800 1250
Text Notes 2650 6950 3    50   ~ 0
BRT
Text Notes 2750 6950 3    50   ~ 0
WIPER
Text Notes 2850 6950 3    50   ~ 0
OFF
Text Notes 2900 7550 2    50   ~ 0
To Panel\nMounted\n50k linear\nPotentiometer
$Comp
L Connector_Generic:Conn_01x05 J4
U 1 1 5E655C5E
P 9450 5500
F 0 "J4" H 9530 5542 50  0000 L CNN
F 1 "uUSB PWR" H 9530 5451 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 9450 5500 50  0001 C CNN
F 3 "~" H 9450 5500 50  0001 C CNN
	1    9450 5500
	1    0    0    -1  
$EndComp
NoConn ~ 9250 5600
NoConn ~ 9250 5500
NoConn ~ 9250 5400
$Comp
L power:GND #PWR0104
U 1 1 5E658A57
P 9250 5700
F 0 "#PWR0104" H 9250 5450 50  0001 C CNN
F 1 "GND" H 9255 5527 50  0000 C CNN
F 2 "" H 9250 5700 50  0001 C CNN
F 3 "" H 9250 5700 50  0001 C CNN
	1    9250 5700
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0103
U 1 1 5E657EA3
P 9250 5300
F 0 "#PWR0103" H 9250 5150 50  0001 C CNN
F 1 "+5V" H 9265 5473 50  0000 C CNN
F 2 "" H 9250 5300 50  0001 C CNN
F 3 "" H 9250 5300 50  0001 C CNN
	1    9250 5300
	1    0    0    -1  
$EndComp
Text Notes 10000 5350 2    50   ~ 0
To uUSB\nPower\nConnector
$Comp
L power:+5V #PWR05
U 1 1 5E616490
P 4300 4800
F 0 "#PWR05" H 4300 4650 50  0001 C CNN
F 1 "+5V" H 4315 4973 50  0000 C CNN
F 2 "" H 4300 4800 50  0001 C CNN
F 3 "" H 4300 4800 50  0001 C CNN
	1    4300 4800
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R2
U 1 1 5E615707
P 4300 4950
F 0 "R2" H 4400 4950 50  0000 L CNN
F 1 "390 250mW" H 4200 4950 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4340 4940 50  0001 C CNN
F 3 "~" H 4300 4950 50  0001 C CNN
	1    4300 4950
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:PN2222A Q1
U 1 1 5E6135A0
P 4700 5350
F 0 "Q1" V 5000 5300 50  0000 L CNN
F 1 "PN2222A" V 4900 5200 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 4900 5275 50  0001 L CIN
F 3 "https://media.digikey.com/pdf/Data%20Sheets/ON%20Semiconductor%20PDFs/PN2222.pdf" H 4700 5350 50  0001 L CNN
	1    4700 5350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4300 5100 4300 5250
Wire Wire Line
	4300 5250 4500 5250
Wire Wire Line
	4900 5250 5300 5250
Wire Wire Line
	3900 5550 4700 5550
Connection ~ 3900 5550
Wire Wire Line
	3900 5550 3900 5500
Text Notes 4750 2500 2    50   ~ 0
Contrast
$Comp
L power:GND #PWR0113
U 1 1 5E65E6CF
P 4200 2600
F 0 "#PWR0113" H 4200 2350 50  0001 C CNN
F 1 "GND" H 4205 2427 50  0000 C CNN
F 2 "" H 4200 2600 50  0001 C CNN
F 3 "" H 4200 2600 50  0001 C CNN
	1    4200 2600
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0112
U 1 1 5E65E286
P 4200 2300
F 0 "#PWR0112" H 4200 2150 50  0001 C CNN
F 1 "+5V" H 4215 2473 50  0000 C CNN
F 2 "" H 4200 2300 50  0001 C CNN
F 3 "" H 4200 2300 50  0001 C CNN
	1    4200 2300
	1    0    0    -1  
$EndComp
Text GLabel 4050 2450 0    50   Input ~ 0
VEE
$Comp
L Device:R_POT_US RV1
U 1 1 5E65D515
P 4200 2450
F 0 "RV1" H 4132 2404 50  0000 R CNN
F 1 "10k" H 4132 2495 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Vishay_T73YP_Vertical" H 4200 2450 50  0001 C CNN
F 3 "~" H 4200 2450 50  0001 C CNN
	1    4200 2450
	-1   0    0    1   
$EndComp
Text Notes 5600 2950 2    50   ~ 0
To SPST\nPanel \nMount
Text Notes 5600 2300 2    50   ~ 0
To SPST\nPanel \nMount
Text GLabel 5950 2250 2    50   Input ~ 0
USB_M
Text GLabel 5950 2900 2    50   Input ~ 0
LSB_M
$Comp
L power:+3.3V #PWR08
U 1 1 5E661D2A
P 5950 2800
F 0 "#PWR08" H 5950 2650 50  0001 C CNN
F 1 "+3.3V" H 5965 2973 50  0000 C CNN
F 2 "" H 5950 2800 50  0001 C CNN
F 3 "" H 5950 2800 50  0001 C CNN
	1    5950 2800
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR07
U 1 1 5E661510
P 5950 2150
F 0 "#PWR07" H 5950 2000 50  0001 C CNN
F 1 "+3.3V" H 5965 2323 50  0000 C CNN
F 2 "" H 5950 2150 50  0001 C CNN
F 3 "" H 5950 2150 50  0001 C CNN
	1    5950 2150
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J6
U 1 1 5E66111E
P 5750 2900
F 0 "J6" H 5750 2550 50  0000 C CNN
F 1 "Local" H 5750 2650 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 5750 2900 50  0001 C CNN
F 3 "~" H 5750 2900 50  0001 C CNN
	1    5750 2900
	-1   0    0    1   
$EndComp
$Comp
L Connector_Generic:Conn_01x02 J5
U 1 1 5E660408
P 5750 2150
F 0 "J5" H 5750 2400 50  0000 C CNN
F 1 "UTC" H 5750 2300 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 5750 2150 50  0001 C CNN
F 3 "~" H 5750 2150 50  0001 C CNN
	1    5750 2150
	-1   0    0    -1  
$EndComp
$Comp
L Device:CP1_Small C3
U 1 1 5E68F2B6
P 2500 3150
F 0 "C3" V 2650 3150 50  0000 C CNN
F 1 "C_LCD" V 2350 3150 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D6.0mm_W4.4mm_P5.00mm" H 2500 3150 50  0001 C CNN
F 3 "~" H 2500 3150 50  0001 C CNN
	1    2500 3150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2250 2900 2250 3150
Wire Wire Line
	2250 3150 2400 3150
Connection ~ 2250 2900
Wire Wire Line
	2600 3150 2750 3150
Wire Wire Line
	2750 3150 2750 2750
$Comp
L Device:CP1_Small C4
U 1 1 5E693B1F
P 8900 5500
F 0 "C4" H 8991 5546 50  0000 L CNN
F 1 "10ufd 16V" H 8400 5500 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.00mm" H 8900 5500 50  0001 C CNN
F 3 "~" H 8900 5500 50  0001 C CNN
	1    8900 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 5400 8900 5300
Wire Wire Line
	8900 5300 9250 5300
Connection ~ 9250 5300
Wire Wire Line
	8900 5600 8900 5700
Wire Wire Line
	8900 5700 9250 5700
Connection ~ 9250 5700
$EndSCHEMATC
