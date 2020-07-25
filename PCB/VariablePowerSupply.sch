EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A2 23386 16535
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
L Transistor_BJT:TIP41C Q2
U 1 1 5F200515
P 3400 3050
AR Path="/5F200515" Ref="Q2"  Part="1" 
AR Path="/5F0F7A8C/5F200515" Ref="Q?"  Part="1" 
F 0 "Q2" H 3591 3096 50  0000 L CNN
F 1 "TIP41C" H 3591 3005 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 3650 2975 50  0001 L CIN
F 3 "https://www.centralsemi.com/get_document.php?cmp=1&mergetype=pd&mergepath=pd&pdf_id=tip41.PDF" H 3400 3050 50  0001 L CNN
	1    3400 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R_sense2
U 1 1 5F20051B
P 4100 5900
AR Path="/5F20051B" Ref="R_sense2"  Part="1" 
AR Path="/5F0F7A8C/5F20051B" Ref="R_sense?"  Part="1" 
F 0 "R_sense2" H 4168 5946 50  0000 L CNN
F 1 "0R1" H 4168 5855 50  0000 L CNN
F 2 "Resistor_THT:R_Bare_Metal_Element_L21.3mm_W4.8mm_P20.30mm" V 4140 5890 50  0001 C CNN
F 3 "~" H 4100 5900 50  0001 C CNN
	1    4100 5900
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R13
U 1 1 5F200521
P 3250 3600
AR Path="/5F200521" Ref="R13"  Part="1" 
AR Path="/5F0F7A8C/5F200521" Ref="R?"  Part="1" 
F 0 "R13" H 3318 3646 50  0000 L CNN
F 1 "1k" H 3318 3555 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3290 3590 50  0001 C CNN
F 3 "~" H 3250 3600 50  0001 C CNN
	1    3250 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R7
U 1 1 5F200527
P 3050 3250
AR Path="/5F200527" Ref="R7"  Part="1" 
AR Path="/5F0F7A8C/5F200527" Ref="R?"  Part="1" 
F 0 "R7" H 3118 3296 50  0000 L CNN
F 1 "51k" H 3118 3205 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3090 3240 50  0001 C CNN
F 3 "~" H 3050 3250 50  0001 C CNN
	1    3050 3250
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R6
U 1 1 5F20052D
P 3050 2850
AR Path="/5F20052D" Ref="R6"  Part="1" 
AR Path="/5F0F7A8C/5F20052D" Ref="R?"  Part="1" 
F 0 "R6" H 3118 2896 50  0000 L CNN
F 1 "24k" H 3118 2805 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3090 2840 50  0001 C CNN
F 3 "~" H 3050 2850 50  0001 C CNN
	1    3050 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 6050 4100 6250
Text GLabel 3050 2700 1    50   Input ~ 0
VccA
Text GLabel 4100 3150 1    50   Input ~ 0
VccA
Wire Wire Line
	3050 3100 3050 3050
Wire Wire Line
	3200 3050 3050 3050
Connection ~ 3050 3050
Wire Wire Line
	3050 3050 3050 3000
Text GLabel 4450 5250 2    50   Output ~ 0
VoutAP
Text GLabel 4100 5550 2    50   Output ~ 0
VoutAN
Wire Wire Line
	4100 5550 4100 5750
Text GLabel 3050 3050 0    50   Input ~ 0
V_controlA
$Comp
L Device:D_Zener D4
U 1 1 5F200568
P 4000 13750
AR Path="/5F200568" Ref="D4"  Part="1" 
AR Path="/5F0F7A8C/5F200568" Ref="D?"  Part="1" 
F 0 "D4" V 3954 13829 50  0000 L CNN
F 1 "5V1" V 4045 13829 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123" H 4000 13750 50  0001 C CNN
F 3 "~" H 4000 13750 50  0001 C CNN
	1    4000 13750
	0    1    1    0   
$EndComp
$Comp
L Device:D D8
U 1 1 5F200570
P 3350 4050
AR Path="/5F200570" Ref="D8"  Part="1" 
AR Path="/5F0F7A8C/5F200570" Ref="D?"  Part="1" 
F 0 "D8" V 3304 4129 50  0000 L CNN
F 1 "D" V 3395 4129 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 3350 4050 50  0001 C CNN
F 3 "~" H 3350 4050 50  0001 C CNN
	1    3350 4050
	0    1    1    0   
$EndComp
Wire Wire Line
	3250 3450 3500 3450
Wire Wire Line
	3350 3900 3350 3800
Wire Wire Line
	3350 3800 3700 3800
Wire Wire Line
	3350 4200 3350 4400
Wire Wire Line
	3350 4400 3700 4400
Wire Wire Line
	4100 3550 4100 3800
Wire Wire Line
	4100 4400 4100 5250
$Comp
L Device:R_US R3
U 1 1 5F20057E
P 2950 4600
AR Path="/5F20057E" Ref="R3"  Part="1" 
AR Path="/5F0F7A8C/5F20057E" Ref="R?"  Part="1" 
F 0 "R3" V 2745 4600 50  0000 C CNN
F 1 "1k" V 2836 4600 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2990 4590 50  0001 C CNN
F 3 "~" H 2950 4600 50  0001 C CNN
	1    2950 4600
	0    1    1    0   
$EndComp
Text GLabel 2800 4600 0    50   Input ~ 0
OuputA_enable
$Comp
L Transistor_FET:2N7002E Q?
U 1 1 5F200585
P 3600 4600
AR Path="/5F0F7A8C/5F200585" Ref="Q?"  Part="1" 
AR Path="/5F200585" Ref="Q4"  Part="1" 
F 0 "Q4" H 3804 4646 50  0000 L CNN
F 1 "2N7002E" H 3804 4555 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 3800 4525 50  0001 L CIN
F 3 "http://www.diodes.com/assets/Datasheets/ds30376.pdf" H 3600 4600 50  0001 L CNN
	1    3600 4600
	1    0    0    -1  
$EndComp
$Comp
L Device:D D9
U 1 1 5F20058B
P 11250 13100
AR Path="/5F20058B" Ref="D9"  Part="1" 
AR Path="/5F0F7A8C/5F20058B" Ref="D?"  Part="1" 
F 0 "D9" V 11204 13179 50  0000 L CNN
F 1 "D" V 11295 13179 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 11250 13100 50  0001 C CNN
F 3 "~" H 11250 13100 50  0001 C CNN
	1    11250 13100
	1    0    0    -1  
$EndComp
$Comp
L Device:D D10
U 1 1 5F200591
P 11250 13400
AR Path="/5F200591" Ref="D10"  Part="1" 
AR Path="/5F0F7A8C/5F200591" Ref="D?"  Part="1" 
F 0 "D10" V 11204 13479 50  0000 L CNN
F 1 "D" V 11295 13479 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 11250 13400 50  0001 C CNN
F 3 "~" H 11250 13400 50  0001 C CNN
	1    11250 13400
	1    0    0    -1  
$EndComp
Wire Wire Line
	11550 12800 11550 13100
Wire Wire Line
	11550 13100 11400 13100
Wire Wire Line
	10950 12800 10900 12800
Wire Wire Line
	11100 13100 10900 13100
Wire Wire Line
	10900 13100 10900 12800
Connection ~ 10900 12800
Wire Wire Line
	10900 12800 10800 12800
Text GLabel 10950 14150 0    50   Input ~ 0
VoutBP
Text GLabel 11550 11200 0    50   Input ~ 0
VoutAP
Text GLabel 12000 11200 2    50   Output ~ 0
VAP
Wire Wire Line
	10800 13750 10900 13750
Wire Wire Line
	11100 13400 10900 13400
Wire Wire Line
	10900 13400 10900 13750
Connection ~ 10900 13750
Wire Wire Line
	10900 13750 10950 13750
Wire Wire Line
	11550 13400 11400 13400
Text GLabel 13350 13950 2    50   Output ~ 0
VBP
$Comp
L Device:D D11
U 1 1 5F2005AA
P 11250 14750
AR Path="/5F2005AA" Ref="D11"  Part="1" 
AR Path="/5F0F7A8C/5F2005AA" Ref="D?"  Part="1" 
F 0 "D11" V 11204 14829 50  0000 L CNN
F 1 "D" V 11295 14829 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 11250 14750 50  0001 C CNN
F 3 "~" H 11250 14750 50  0001 C CNN
	1    11250 14750
	1    0    0    -1  
$EndComp
Text GLabel 10950 15500 0    50   Input ~ 0
VoutBN
Wire Wire Line
	10800 15100 10900 15100
Wire Wire Line
	11100 14750 10900 14750
Wire Wire Line
	10900 14750 10900 15100
Connection ~ 10900 15100
Wire Wire Line
	10900 15100 10950 15100
Wire Wire Line
	11550 15100 11550 14750
Wire Wire Line
	11550 14750 11400 14750
Text GLabel 12000 15400 2    50   Output ~ 0
VBN
Wire Wire Line
	11550 14250 11800 14250
Text GLabel 12000 12400 2    50   Output ~ 0
VAN
Text GLabel 10950 12500 0    50   Input ~ 0
VoutAN
Wire Wire Line
	11550 12400 11900 12400
Wire Wire Line
	11550 15600 11850 15600
Wire Wire Line
	10250 12300 10950 12300
Wire Wire Line
	11800 11200 11800 14250
Wire Wire Line
	11550 11200 11800 11200
Connection ~ 11800 11200
$Comp
L Device:D D12
U 1 1 5F2005C3
P 12600 13300
AR Path="/5F2005C3" Ref="D12"  Part="1" 
AR Path="/5F0F7A8C/5F2005C3" Ref="D?"  Part="1" 
F 0 "D12" V 12554 13379 50  0000 L CNN
F 1 "D" V 12645 13379 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 12600 13300 50  0001 C CNN
F 3 "~" H 12600 13300 50  0001 C CNN
	1    12600 13300
	1    0    0    -1  
$EndComp
Wire Wire Line
	12150 13650 12250 13650
Wire Wire Line
	12450 13300 12250 13300
Wire Wire Line
	12250 13300 12250 13650
Connection ~ 12250 13650
Wire Wire Line
	12250 13650 12300 13650
Wire Wire Line
	12900 13650 12900 13300
Wire Wire Line
	12900 13300 12750 13300
Wire Wire Line
	11550 14050 12300 14050
Wire Wire Line
	12900 14150 13200 14150
Wire Wire Line
	13200 14150 13200 12950
Wire Wire Line
	13200 12950 11900 12950
Wire Wire Line
	11900 12950 11900 12400
Connection ~ 11900 12400
Wire Wire Line
	11900 12400 12000 12400
$Comp
L Transistor_FET:2N7002E Q?
U 1 1 5F2005D8
P 9250 13550
AR Path="/5F0F7A8C/5F2005D8" Ref="Q?"  Part="1" 
AR Path="/5F2005D8" Ref="Q6"  Part="1" 
F 0 "Q6" H 9454 13596 50  0000 L CNN
F 1 "2N7002E" H 9454 13505 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 9450 13475 50  0001 L CIN
F 3 "http://www.diodes.com/assets/Datasheets/ds30376.pdf" H 9250 13550 50  0001 L CNN
	1    9250 13550
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:2N7002E Q?
U 1 1 5F2005DE
P 13400 14700
AR Path="/5F0F7A8C/5F2005DE" Ref="Q?"  Part="1" 
AR Path="/5F2005DE" Ref="Q8"  Part="1" 
F 0 "Q8" H 13604 14746 50  0000 L CNN
F 1 "2N7002E" H 13604 14655 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 13600 14625 50  0001 L CIN
F 3 "http://www.diodes.com/assets/Datasheets/ds30376.pdf" H 13400 14700 50  0001 L CNN
	1    13400 14700
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:2N7002E Q?
U 1 1 5F2005E4
P 9250 14800
AR Path="/5F0F7A8C/5F2005E4" Ref="Q?"  Part="1" 
AR Path="/5F2005E4" Ref="Q7"  Part="1" 
F 0 "Q7" H 9454 14846 50  0000 L CNN
F 1 "2N7002E" H 9454 14755 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 9450 14725 50  0001 L CIN
F 3 "http://www.diodes.com/assets/Datasheets/ds30376.pdf" H 9250 14800 50  0001 L CNN
	1    9250 14800
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:2N7002E Q?
U 1 1 5F2005EA
P 9250 12800
AR Path="/5F0F7A8C/5F2005EA" Ref="Q?"  Part="1" 
AR Path="/5F2005EA" Ref="Q5"  Part="1" 
F 0 "Q5" H 9454 12846 50  0000 L CNN
F 1 "2N7002E" H 9454 12755 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 9450 12725 50  0001 L CIN
F 3 "http://www.diodes.com/assets/Datasheets/ds30376.pdf" H 9250 12800 50  0001 L CNN
	1    9250 12800
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 12600 9350 12500
Wire Wire Line
	9350 12500 10050 12500
Wire Wire Line
	10050 12500 10050 13250
Wire Wire Line
	10050 13250 11550 13250
Wire Wire Line
	11550 13250 11550 13100
Connection ~ 11550 13100
Wire Wire Line
	9350 13350 9800 13350
Wire Wire Line
	11550 13300 11550 13400
Connection ~ 11550 13400
Wire Wire Line
	13600 13650 13600 14500
Wire Wire Line
	13600 14500 13500 14500
Wire Wire Line
	11850 14450 10250 14450
Wire Wire Line
	10250 14450 10250 12300
Wire Wire Line
	9350 14600 11550 14600
Wire Wire Line
	11550 14600 11550 14750
Connection ~ 11550 14750
$Comp
L Device:R_US R21
U 1 1 5F200600
P 8700 12800
AR Path="/5F200600" Ref="R21"  Part="1" 
AR Path="/5F0F7A8C/5F200600" Ref="R?"  Part="1" 
F 0 "R21" V 8495 12800 50  0000 C CNN
F 1 "1k" V 8586 12800 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8740 12790 50  0001 C CNN
F 3 "~" H 8700 12800 50  0001 C CNN
	1    8700 12800
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R22
U 1 1 5F200606
P 8700 13550
AR Path="/5F200606" Ref="R22"  Part="1" 
AR Path="/5F0F7A8C/5F200606" Ref="R?"  Part="1" 
F 0 "R22" V 8495 13550 50  0000 C CNN
F 1 "1k" V 8586 13550 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8740 13540 50  0001 C CNN
F 3 "~" H 8700 13550 50  0001 C CNN
	1    8700 13550
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R23
U 1 1 5F20060C
P 8700 14800
AR Path="/5F20060C" Ref="R23"  Part="1" 
AR Path="/5F0F7A8C/5F20060C" Ref="R?"  Part="1" 
F 0 "R23" V 8495 14800 50  0000 C CNN
F 1 "1k" V 8586 14800 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8740 14790 50  0001 C CNN
F 3 "~" H 8700 14800 50  0001 C CNN
	1    8700 14800
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R27
U 1 1 5F200612
P 12750 14700
AR Path="/5F200612" Ref="R27"  Part="1" 
AR Path="/5F0F7A8C/5F200612" Ref="R?"  Part="1" 
F 0 "R27" V 12545 14700 50  0000 C CNN
F 1 "1k" V 12636 14700 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 12790 14690 50  0001 C CNN
F 3 "~" H 12750 14700 50  0001 C CNN
	1    12750 14700
	0    1    1    0   
$EndComp
Text GLabel 12600 14700 0    50   Input ~ 0
SeriesOutput
$Comp
L Connector:Conn_01x04_Male J?
U 1 1 5F200619
P 13750 12350
AR Path="/5F0F7A8C/5F200619" Ref="J?"  Part="1" 
AR Path="/5F200619" Ref="J3"  Part="1" 
F 0 "J3" H 13722 12232 50  0000 R CNN
F 1 "Conn_01x04_Male" H 13722 12323 50  0000 R CNN
F 2 "Connector_Molex:Molex_KK-396_A-41791-0004_1x04_P3.96mm_Vertical" H 13750 12350 50  0001 C CNN
F 3 "~" H 13750 12350 50  0001 C CNN
	1    13750 12350
	-1   0    0    1   
$EndComp
Text GLabel 13550 12150 0    50   Input ~ 0
VAP
Text GLabel 13550 12250 0    50   Input ~ 0
VAN
Text GLabel 13550 12350 0    50   Input ~ 0
VBP
Text GLabel 13550 12450 0    50   Input ~ 0
VBN
Text GLabel 4100 6250 3    50   Input ~ 0
VeeA
Text GLabel 4000 13900 3    50   Input ~ 0
VeeA
$Comp
L Symbols:Relay_SPST_Panasonic_ALQ305 K?
U 1 1 5F200627
P 3900 4100
AR Path="/5F0F7A8C/5F200627" Ref="K?"  Part="1" 
AR Path="/5F200627" Ref="K2"  Part="1" 
F 0 "K2" H 4230 4146 50  0000 L CNN
F 1 "Relay_SPST_Panasonic_ALQ305" H 4230 4055 50  0000 L CNN
F 2 "Relays:Relay_SPST_Panasonic_ALQ305" H 4250 4050 50  0001 L CNN
F 3 "https://standexelectronics.com/wp-content/uploads/datasheet_reed_relay_DIP.pdf" H 3900 4100 50  0001 C CNN
	1    3900 4100
	1    0    0    -1  
$EndComp
Connection ~ 3700 4400
$Comp
L Symbols:Relay_SPDT_Panasonic_ALQ105 K?
U 1 1 5F20062E
P 11250 13950
AR Path="/5F0F7A8C/5F20062E" Ref="K?"  Part="1" 
AR Path="/5F20062E" Ref="K4"  Part="1" 
F 0 "K4" V 10683 13950 50  0000 C CNN
F 1 "Relay_SPDT_Panasonic_ALQ105" V 10774 13950 50  0000 C CNN
F 2 "Relays:Relay_SPDT_Panasonic-ALQ105" H 11700 13900 50  0001 L CNN
F 3 "https://standexelectronics.com/wp-content/uploads/datasheet_reed_relay_DIP.pdf" H 11250 13950 50  0001 C CNN
	1    11250 13950
	0    1    1    0   
$EndComp
$Comp
L Symbols:Relay_SPDT_Panasonic_ALQ105 K?
U 1 1 5F200634
P 12600 13850
AR Path="/5F0F7A8C/5F200634" Ref="K?"  Part="1" 
AR Path="/5F200634" Ref="K6"  Part="1" 
F 0 "K6" V 12033 13850 50  0000 C CNN
F 1 "Relay_SPDT_Panasonic_ALQ105" V 12124 13850 50  0000 C CNN
F 2 "Relays:Relay_SPDT_Panasonic-ALQ105" H 13050 13800 50  0001 L CNN
F 3 "https://standexelectronics.com/wp-content/uploads/datasheet_reed_relay_DIP.pdf" H 12600 13850 50  0001 C CNN
	1    12600 13850
	0    1    1    0   
$EndComp
$Comp
L Symbols:Relay_SPDT_Panasonic_ALQ105 K?
U 1 1 5F20063A
P 11250 15300
AR Path="/5F0F7A8C/5F20063A" Ref="K?"  Part="1" 
AR Path="/5F20063A" Ref="K5"  Part="1" 
F 0 "K5" V 10683 15300 50  0000 C CNN
F 1 "Relay_SPDT_Panasonic_ALQ105" V 10774 15300 50  0000 C CNN
F 2 "Relays:Relay_SPDT_Panasonic-ALQ105" H 11700 15250 50  0001 L CNN
F 3 "https://standexelectronics.com/wp-content/uploads/datasheet_reed_relay_DIP.pdf" H 11250 15300 50  0001 C CNN
	1    11250 15300
	0    1    1    0   
$EndComp
$Comp
L Symbols:Relay_SPDT_Panasonic_ALQ105 K?
U 1 1 5F200640
P 11250 12600
AR Path="/5F0F7A8C/5F200640" Ref="K?"  Part="1" 
AR Path="/5F200640" Ref="K3"  Part="1" 
F 0 "K3" V 11817 12600 50  0000 C CNN
F 1 "Relay_SPDT_Panasonic_ALQ105" V 11726 12600 50  0000 C CNN
F 2 "Relays:Relay_SPDT_Panasonic-ALQ105" H 11700 12550 50  0001 L CNN
F 3 "https://standexelectronics.com/wp-content/uploads/datasheet_reed_relay_DIP.pdf" H 11250 12600 50  0001 C CNN
	1    11250 12600
	0    -1   -1   0   
$EndComp
Connection ~ 12900 13650
Wire Wire Line
	11850 14450 11850 15600
$Comp
L Transistor_BJT:TIP41C Q1
U 1 1 5F20064A
P 7250 3050
AR Path="/5F20064A" Ref="Q1"  Part="1" 
AR Path="/5F0F7A8C/5F20064A" Ref="Q?"  Part="1" 
F 0 "Q1" H 7441 3096 50  0000 L CNN
F 1 "TIP41C" H 7441 3005 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 7500 2975 50  0001 L CIN
F 3 "https://www.centralsemi.com/get_document.php?cmp=1&mergetype=pd&mergepath=pd&pdf_id=tip41.PDF" H 7250 3050 50  0001 L CNN
	1    7250 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R_sense1
U 1 1 5F200650
P 7950 5900
AR Path="/5F200650" Ref="R_sense1"  Part="1" 
AR Path="/5F0F7A8C/5F200650" Ref="R_sense?"  Part="1" 
F 0 "R_sense1" H 8018 5946 50  0000 L CNN
F 1 "0R1" H 8018 5855 50  0000 L CNN
F 2 "Resistor_THT:R_Bare_Metal_Element_L21.3mm_W4.8mm_P20.30mm" V 7990 5890 50  0001 C CNN
F 3 "~" H 7950 5900 50  0001 C CNN
	1    7950 5900
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R5
U 1 1 5F20065C
P 6900 3250
AR Path="/5F20065C" Ref="R5"  Part="1" 
AR Path="/5F0F7A8C/5F20065C" Ref="R?"  Part="1" 
F 0 "R5" H 6968 3296 50  0000 L CNN
F 1 "51k" H 6968 3205 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6940 3240 50  0001 C CNN
F 3 "~" H 6900 3250 50  0001 C CNN
	1    6900 3250
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R4
U 1 1 5F200662
P 6900 2850
AR Path="/5F200662" Ref="R4"  Part="1" 
AR Path="/5F0F7A8C/5F200662" Ref="R?"  Part="1" 
F 0 "R4" H 6968 2896 50  0000 L CNN
F 1 "24k" H 6968 2805 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6940 2840 50  0001 C CNN
F 3 "~" H 6900 2850 50  0001 C CNN
	1    6900 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 6050 7950 6250
Text GLabel 6900 2700 1    50   Input ~ 0
VccB
Text GLabel 7350 2850 1    50   Input ~ 0
VccB
Text GLabel 7950 3150 1    50   Input ~ 0
VccB
Wire Wire Line
	6900 3100 6900 3050
Wire Wire Line
	7050 3050 6900 3050
Connection ~ 6900 3050
Wire Wire Line
	6900 3050 6900 3000
Wire Wire Line
	7350 3450 7350 3350
Wire Wire Line
	7650 3350 7350 3350
Connection ~ 7350 3350
Wire Wire Line
	7350 3350 7350 3250
Text GLabel 8300 5250 2    50   Output ~ 0
VoutBP
Text GLabel 8300 5550 2    50   Output ~ 0
VoutBN
Wire Wire Line
	7950 5550 7950 5750
Text GLabel 6900 3050 0    50   Input ~ 0
V_controlB
$Comp
L Device:D D7
U 1 1 5F2006AA
P 7200 4050
AR Path="/5F2006AA" Ref="D7"  Part="1" 
AR Path="/5F0F7A8C/5F2006AA" Ref="D?"  Part="1" 
F 0 "D7" V 7154 4129 50  0000 L CNN
F 1 "D" V 7245 4129 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7200 4050 50  0001 C CNN
F 3 "~" H 7200 4050 50  0001 C CNN
	1    7200 4050
	0    1    1    0   
$EndComp
Wire Wire Line
	7100 3450 7350 3450
Wire Wire Line
	7200 3900 7200 3800
Wire Wire Line
	7200 4200 7200 4400
Wire Wire Line
	7200 4400 7550 4400
Wire Wire Line
	7950 3550 7950 3800
Wire Wire Line
	7950 4400 7950 5250
$Comp
L Device:R_US R8
U 1 1 5F2006B8
P 7000 4600
AR Path="/5F2006B8" Ref="R8"  Part="1" 
AR Path="/5F0F7A8C/5F2006B8" Ref="R?"  Part="1" 
F 0 "R8" V 6795 4600 50  0000 C CNN
F 1 "1k" V 6886 4600 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7040 4590 50  0001 C CNN
F 3 "~" H 7000 4600 50  0001 C CNN
	1    7000 4600
	0    1    1    0   
$EndComp
Text GLabel 6850 4600 0    50   Input ~ 0
OuputB_enable
$Comp
L Transistor_FET:2N7002E Q?
U 1 1 5F2006BF
P 7450 4600
AR Path="/5F0F7A8C/5F2006BF" Ref="Q?"  Part="1" 
AR Path="/5F2006BF" Ref="Q3"  Part="1" 
F 0 "Q3" H 7654 4646 50  0000 L CNN
F 1 "2N7002E" H 7654 4555 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7650 4525 50  0001 L CIN
F 3 "http://www.diodes.com/assets/Datasheets/ds30376.pdf" H 7450 4600 50  0001 L CNN
	1    7450 4600
	1    0    0    -1  
$EndComp
Text GLabel 7950 6250 3    50   Input ~ 0
VeeB
Text GLabel 7550 4800 3    50   Input ~ 0
GND
$Comp
L Symbols:Relay_SPST_Panasonic_ALQ305 K?
U 1 1 5F2006CA
P 7750 4100
AR Path="/5F0F7A8C/5F2006CA" Ref="K?"  Part="1" 
AR Path="/5F2006CA" Ref="K1"  Part="1" 
F 0 "K1" H 8080 4146 50  0000 L CNN
F 1 "Relay_SPST_Panasonic_ALQ305" H 8080 4055 50  0000 L CNN
F 2 "Relays:Relay_SPST_Panasonic_ALQ305" H 8100 4050 50  0001 L CNN
F 3 "https://standexelectronics.com/wp-content/uploads/datasheet_reed_relay_DIP.pdf" H 7750 4100 50  0001 C CNN
	1    7750 4100
	1    0    0    -1  
$EndComp
Connection ~ 7550 4400
$Comp
L Mechanical:Heatsink HS?
U 1 1 5F2006D3
P 4600 3200
AR Path="/5F0F7A8C/5F2006D3" Ref="HS?"  Part="1" 
AR Path="/5F2006D3" Ref="HS1"  Part="1" 
F 0 "HS1" H 4742 3321 50  0000 L CNN
F 1 "Heatsink" H 4742 3230 50  0000 L CNN
F 2 "Footprints:Heatsink_100x36mm_2xfixations_HorizAirflow" H 4612 3200 50  0001 C CNN
F 3 "~" H 4612 3200 50  0001 C CNN
	1    4600 3200
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:Heatsink HS?
U 1 1 5F2006D9
P 8750 3150
AR Path="/5F0F7A8C/5F2006D9" Ref="HS?"  Part="1" 
AR Path="/5F2006D9" Ref="HS2"  Part="1" 
F 0 "HS2" H 8892 3271 50  0000 L CNN
F 1 "Heatsink" H 8892 3180 50  0000 L CNN
F 2 "Footprints:Heatsink_100x36mm_2xfixations_HorizAirflow" H 8762 3150 50  0000 C CNN
F 3 "~" H 8762 3150 50  0001 C CNN
	1    8750 3150
	1    0    0    -1  
$EndComp
Text GLabel 3050 3400 3    50   Input ~ 0
VeeA
Text GLabel 3250 3750 3    50   Input ~ 0
VeeA
Text GLabel 6900 3800 3    50   Input ~ 0
VeeB
Wire Wire Line
	11800 11200 12000 11200
Wire Wire Line
	12900 13950 13350 13950
Wire Wire Line
	11550 15400 12000 15400
Wire Wire Line
	11550 13400 11550 13750
Wire Wire Line
	11550 13300 9800 13300
Wire Wire Line
	9800 13300 9800 13350
Text GLabel 13500 14900 3    50   Input ~ 0
GND
Text GLabel 9350 15000 3    50   Input ~ 0
GND
Text GLabel 9350 13750 3    50   Input ~ 0
GND
Text GLabel 3700 4800 3    50   Input ~ 0
GND
Text GLabel 9350 13000 3    50   Input ~ 0
GND
$Comp
L Device:R_US R25
U 1 1 5F20072B
P 8950 13700
AR Path="/5F20072B" Ref="R25"  Part="1" 
AR Path="/5F0F7A8C/5F20072B" Ref="R?"  Part="1" 
F 0 "R25" V 8745 13700 50  0000 C CNN
F 1 "10k" V 8836 13700 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8990 13690 50  0001 C CNN
F 3 "~" H 8950 13700 50  0001 C CNN
	1    8950 13700
	-1   0    0    1   
$EndComp
Wire Wire Line
	8850 13550 8950 13550
Connection ~ 8950 13550
Wire Wire Line
	8950 13550 9050 13550
Text GLabel 8950 13850 3    50   Input ~ 0
GND
$Comp
L Device:R_US R24
U 1 1 5F200735
P 8950 12950
AR Path="/5F200735" Ref="R24"  Part="1" 
AR Path="/5F0F7A8C/5F200735" Ref="R?"  Part="1" 
F 0 "R24" V 8745 12950 50  0000 C CNN
F 1 "10k" V 8836 12950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8990 12940 50  0001 C CNN
F 3 "~" H 8950 12950 50  0001 C CNN
	1    8950 12950
	-1   0    0    1   
$EndComp
Text GLabel 8950 13100 3    50   Input ~ 0
GND
$Comp
L Device:R_US R26
U 1 1 5F20073C
P 8950 14950
AR Path="/5F20073C" Ref="R26"  Part="1" 
AR Path="/5F0F7A8C/5F20073C" Ref="R?"  Part="1" 
F 0 "R26" V 8745 14950 50  0000 C CNN
F 1 "10k" V 8836 14950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 8990 14940 50  0001 C CNN
F 3 "~" H 8950 14950 50  0001 C CNN
	1    8950 14950
	-1   0    0    1   
$EndComp
Text GLabel 8950 15100 3    50   Input ~ 0
GND
$Comp
L Device:R_US R14
U 1 1 5F200743
P 3250 4750
AR Path="/5F200743" Ref="R14"  Part="1" 
AR Path="/5F0F7A8C/5F200743" Ref="R?"  Part="1" 
F 0 "R14" V 3045 4750 50  0000 C CNN
F 1 "10k" V 3136 4750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3290 4740 50  0001 C CNN
F 3 "~" H 3250 4750 50  0001 C CNN
	1    3250 4750
	-1   0    0    1   
$EndComp
Text GLabel 3250 4900 3    50   Input ~ 0
GND
Wire Wire Line
	3100 4600 3250 4600
Connection ~ 3250 4600
Wire Wire Line
	3250 4600 3400 4600
$Comp
L Device:R_US R28
U 1 1 5F20074D
P 13050 14850
AR Path="/5F20074D" Ref="R28"  Part="1" 
AR Path="/5F0F7A8C/5F20074D" Ref="R?"  Part="1" 
F 0 "R28" V 12845 14850 50  0000 C CNN
F 1 "10k" V 12936 14850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 13090 14840 50  0001 C CNN
F 3 "~" H 13050 14850 50  0001 C CNN
	1    13050 14850
	-1   0    0    1   
$EndComp
Text GLabel 13050 15000 3    50   Input ~ 0
GND
Wire Wire Line
	12900 14700 13050 14700
Connection ~ 13050 14700
Wire Wire Line
	13050 14700 13200 14700
Wire Wire Line
	12900 13650 13600 13650
Wire Wire Line
	8850 12800 8950 12800
Connection ~ 8950 12800
Wire Wire Line
	8950 12800 9050 12800
Wire Wire Line
	8850 14800 8950 14800
Connection ~ 8950 14800
Wire Wire Line
	8950 14800 9050 14800
$Comp
L Device:R_US R12
U 1 1 5F20075E
P 7150 4750
AR Path="/5F20075E" Ref="R12"  Part="1" 
AR Path="/5F0F7A8C/5F20075E" Ref="R?"  Part="1" 
F 0 "R12" V 6945 4750 50  0000 C CNN
F 1 "10k" V 7036 4750 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7190 4740 50  0001 C CNN
F 3 "~" H 7150 4750 50  0001 C CNN
	1    7150 4750
	-1   0    0    1   
$EndComp
Text GLabel 7150 4900 3    50   Input ~ 0
GND
Wire Wire Line
	7150 4600 7250 4600
Wire Wire Line
	6900 3400 6900 3750
Wire Wire Line
	7100 3750 6900 3750
Connection ~ 6900 3750
Wire Wire Line
	6900 3750 6900 3800
$Comp
L Symbols:2SC5200NS1_E_S U?
U 1 1 5F20076A
P 4000 3350
AR Path="/5F0F7A8C/5F20076A" Ref="U?"  Part="1" 
AR Path="/5F20076A" Ref="U5"  Part="1" 
F 0 "U5" H 4191 3403 60  0000 L CNN
F 1 "2SC5200NS1_E_S" H 4191 3297 60  0000 L CNN
F 2 "footprints:2SC5200NS1_E_S" H 3600 3250 60  0001 C CNN
F 3 "" H 4000 3350 60  0000 C CNN
	1    4000 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 3250 3500 3350
Wire Wire Line
	3800 3350 3500 3350
Connection ~ 3500 3350
Wire Wire Line
	3500 3350 3500 3450
$Comp
L Symbols:2SC5200NS1_E_S U?
U 1 1 5F200774
P 7850 3350
AR Path="/5F0F7A8C/5F200774" Ref="U?"  Part="1" 
AR Path="/5F200774" Ref="U4"  Part="1" 
F 0 "U4" H 8041 3403 60  0000 L CNN
F 1 "2SC5200NS1_E_S" H 8041 3297 60  0000 L CNN
F 2 "footprints:2SC5200NS1_E_S" H 7450 3250 60  0001 C CNN
F 3 "" H 7850 3350 60  0000 C CNN
	1    7850 3350
	1    0    0    -1  
$EndComp
Text Label 7950 3650 0    50   ~ 0
PWR_B_OUT
Text Label 4100 3700 0    50   ~ 0
PWR_A_OUT
Text Label 4100 5700 0    50   ~ 0
PWR_A_RET
Text Label 11900 14050 0    50   ~ 0
PWR_B_INTERNAL
Text Label 11800 14450 0    50   ~ 0
PWR_B_RET_INTERNAL
Connection ~ 7150 4600
$Comp
L Device:C C?
U 1 1 5F21EE00
P 11400 7800
AR Path="/5F0DDE88/5F21EE00" Ref="C?"  Part="1" 
AR Path="/5F21EE00" Ref="C3"  Part="1" 
F 0 "C3" H 11515 7846 50  0000 L CNN
F 1 "C" H 11515 7755 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D22.0mm_P10.00mm_SnapIn" H 11438 7650 50  0001 C CNN
F 3 "~" H 11400 7800 50  0001 C CNN
	1    11400 7800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5F21EE06
P 11800 7800
AR Path="/5F0DDE88/5F21EE06" Ref="C?"  Part="1" 
AR Path="/5F21EE06" Ref="C5"  Part="1" 
F 0 "C5" H 11915 7846 50  0000 L CNN
F 1 "C" H 11915 7755 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D22.0mm_P10.00mm_SnapIn" H 11838 7650 50  0001 C CNN
F 3 "~" H 11800 7800 50  0001 C CNN
	1    11800 7800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5F21EE0C
P 12150 7800
AR Path="/5F0DDE88/5F21EE0C" Ref="C?"  Part="1" 
AR Path="/5F21EE0C" Ref="C7"  Part="1" 
F 0 "C7" H 12265 7846 50  0000 L CNN
F 1 "C" H 12265 7755 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D22.0mm_P10.00mm_SnapIn" H 12188 7650 50  0001 C CNN
F 3 "~" H 12150 7800 50  0001 C CNN
	1    12150 7800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5F21EE12
P 12500 7800
AR Path="/5F0DDE88/5F21EE12" Ref="C?"  Part="1" 
AR Path="/5F21EE12" Ref="C9"  Part="1" 
F 0 "C9" H 12615 7846 50  0000 L CNN
F 1 "C" H 12615 7755 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D22.0mm_P10.00mm_SnapIn" H 12538 7650 50  0001 C CNN
F 3 "~" H 12500 7800 50  0001 C CNN
	1    12500 7800
	1    0    0    -1  
$EndComp
Wire Wire Line
	11000 7750 11000 7650
Wire Wire Line
	11000 7650 11400 7650
Wire Wire Line
	11400 7650 11800 7650
Connection ~ 11400 7650
Wire Wire Line
	11800 7650 12150 7650
Connection ~ 11800 7650
Connection ~ 12150 7650
Wire Wire Line
	10400 7750 10400 8150
Wire Wire Line
	10400 8150 11400 8150
Wire Wire Line
	11400 8150 11400 7950
Wire Wire Line
	11400 7950 11800 7950
Connection ~ 11400 7950
Wire Wire Line
	11800 7950 12150 7950
Connection ~ 11800 7950
Wire Wire Line
	12150 7950 12500 7950
Connection ~ 12150 7950
Wire Wire Line
	10700 8200 10700 8050
$Comp
L Device:C C?
U 1 1 5F21EE29
P 10050 7750
AR Path="/5F0DDE88/5F21EE29" Ref="C?"  Part="1" 
AR Path="/5F21EE29" Ref="C1"  Part="1" 
F 0 "C1" H 10165 7796 50  0000 L CNN
F 1 "C" H 10165 7705 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L18.0mm_W6.0mm_P15.00mm_FKS3_FKP3" H 10088 7600 50  0001 C CNN
F 3 "~" H 10050 7750 50  0001 C CNN
	1    10050 7750
	1    0    0    -1  
$EndComp
Wire Wire Line
	10050 7600 10050 7400
Wire Wire Line
	10050 7400 10700 7400
Wire Wire Line
	10050 7900 10050 8200
Wire Wire Line
	10050 8200 10700 8200
Wire Wire Line
	10700 7450 10700 7400
$Comp
L Device:C C?
U 1 1 5F21EE3A
P 11400 8750
AR Path="/5F0DDE88/5F21EE3A" Ref="C?"  Part="1" 
AR Path="/5F21EE3A" Ref="C4"  Part="1" 
F 0 "C4" H 11515 8796 50  0000 L CNN
F 1 "C" H 11515 8705 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D22.0mm_P10.00mm_SnapIn" H 11438 8600 50  0001 C CNN
F 3 "~" H 11400 8750 50  0001 C CNN
	1    11400 8750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5F21EE40
P 11800 8750
AR Path="/5F0DDE88/5F21EE40" Ref="C?"  Part="1" 
AR Path="/5F21EE40" Ref="C6"  Part="1" 
F 0 "C6" H 11915 8796 50  0000 L CNN
F 1 "C" H 11915 8705 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D22.0mm_P10.00mm_SnapIn" H 11838 8600 50  0001 C CNN
F 3 "~" H 11800 8750 50  0001 C CNN
	1    11800 8750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5F21EE46
P 12150 8750
AR Path="/5F0DDE88/5F21EE46" Ref="C?"  Part="1" 
AR Path="/5F21EE46" Ref="C8"  Part="1" 
F 0 "C8" H 12265 8796 50  0000 L CNN
F 1 "C" H 12265 8705 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D22.0mm_P10.00mm_SnapIn" H 12188 8600 50  0001 C CNN
F 3 "~" H 12150 8750 50  0001 C CNN
	1    12150 8750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5F21EE4C
P 12500 8750
AR Path="/5F0DDE88/5F21EE4C" Ref="C?"  Part="1" 
AR Path="/5F21EE4C" Ref="C10"  Part="1" 
F 0 "C10" H 12615 8796 50  0000 L CNN
F 1 "C" H 12615 8705 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D22.0mm_P10.00mm_SnapIn" H 12538 8600 50  0001 C CNN
F 3 "~" H 12500 8750 50  0001 C CNN
	1    12500 8750
	1    0    0    -1  
$EndComp
Wire Wire Line
	11000 8700 11000 8600
Wire Wire Line
	11000 8600 11400 8600
Wire Wire Line
	11400 8600 11800 8600
Connection ~ 11400 8600
Wire Wire Line
	11800 8600 12150 8600
Connection ~ 11800 8600
Wire Wire Line
	12150 8600 12500 8600
Connection ~ 12150 8600
Wire Wire Line
	10400 8700 10400 9100
Wire Wire Line
	10400 9100 11400 9100
Wire Wire Line
	11400 9100 11400 8900
Wire Wire Line
	11400 8900 11800 8900
Connection ~ 11400 8900
Wire Wire Line
	11800 8900 12150 8900
Connection ~ 11800 8900
Wire Wire Line
	12150 8900 12500 8900
Connection ~ 12150 8900
Wire Wire Line
	10700 9150 10700 9000
$Comp
L Device:C C?
U 1 1 5F21EE64
P 10050 8700
AR Path="/5F0DDE88/5F21EE64" Ref="C?"  Part="1" 
AR Path="/5F21EE64" Ref="C2"  Part="1" 
F 0 "C2" H 10165 8746 50  0000 L CNN
F 1 "C" H 10165 8655 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L18.0mm_W6.0mm_P15.00mm_FKS3_FKP3" H 10088 8550 50  0001 C CNN
F 3 "~" H 10050 8700 50  0001 C CNN
	1    10050 8700
	1    0    0    -1  
$EndComp
Wire Wire Line
	10050 8550 10050 8350
Wire Wire Line
	10050 8350 10700 8350
Wire Wire Line
	10050 8850 10050 9150
Wire Wire Line
	10050 9150 10700 9150
Wire Wire Line
	10700 8400 10700 8350
$Comp
L Connector:Conn_01x04_Male J?
U 1 1 5F21EE6F
P 9600 8250
AR Path="/5F0DDE88/5F21EE6F" Ref="J?"  Part="1" 
AR Path="/5F21EE6F" Ref="J2"  Part="1" 
F 0 "J2" H 9708 8531 50  0000 C CNN
F 1 "Conn_01x04_Male" H 9708 8440 50  0000 C CNN
F 2 "Connector_Molex:Molex_KK-396_A-41791-0004_1x04_P3.96mm_Vertical" H 9600 8250 50  0001 C CNN
F 3 "~" H 9600 8250 50  0001 C CNN
	1    9600 8250
	1    0    0    -1  
$EndComp
Wire Wire Line
	10050 7400 9900 7400
Wire Wire Line
	9900 7400 9900 8150
Wire Wire Line
	9900 8150 9800 8150
Connection ~ 10050 7400
Wire Wire Line
	10050 8200 9900 8200
Wire Wire Line
	9900 8200 9900 8250
Wire Wire Line
	9900 8250 9800 8250
Connection ~ 10050 8200
Wire Wire Line
	10050 8350 9800 8350
Connection ~ 10050 8350
Wire Wire Line
	10050 9150 9900 9150
Wire Wire Line
	9900 9150 9900 8450
Wire Wire Line
	9900 8450 9800 8450
Connection ~ 10050 9150
Wire Wire Line
	12150 7650 12500 7650
Connection ~ 12500 7650
Wire Wire Line
	12500 7650 13050 7650
Wire Wire Line
	13050 7950 12500 7950
Connection ~ 12500 7950
Wire Wire Line
	13050 8600 12500 8600
Connection ~ 12500 8600
Wire Wire Line
	13050 8900 12500 8900
Connection ~ 12500 8900
Text GLabel 13050 7650 2    50   Output ~ 0
VccA
Text GLabel 13050 8600 2    50   Output ~ 0
VccB
Text GLabel 13050 7950 2    50   Output ~ 0
VeeA
Text GLabel 13050 8900 2    50   Output ~ 0
VeeB
$Comp
L Symbols:Conn_01x03_Power_Male J?
U 1 1 5F21EEA8
P 9950 9700
AR Path="/5F0DDE88/5F21EEA8" Ref="J?"  Part="1" 
AR Path="/5F21EEA8" Ref="J1"  Part="1" 
F 0 "J1" H 10058 9981 50  0000 C CNN
F 1 "Conn_01x03_Power_Male" H 10058 9890 50  0000 C CNN
F 2 "Connector_Molex:Molex_KK-396_A-41791-0003_1x03_P3.96mm_Vertical" H 9950 9700 50  0001 C CNN
F 3 "~" H 9950 9700 50  0001 C CNN
	1    9950 9700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 8550 7350 8550
Wire Wire Line
	7250 8650 7250 8550
Wire Wire Line
	7150 8650 7250 8650
Connection ~ 7250 8550
Wire Wire Line
	7150 8550 7250 8550
Wire Wire Line
	5950 8450 6050 8450
Wire Wire Line
	5950 8550 6050 8550
Wire Wire Line
	5950 8450 5950 8550
Connection ~ 5950 8450
Wire Wire Line
	5850 8450 5950 8450
Wire Wire Line
	7150 9850 7150 8750
Wire Wire Line
	3900 9850 7150 9850
Wire Wire Line
	3900 9250 3900 9850
Wire Wire Line
	12800 3800 13250 3800
Wire Wire Line
	12200 3800 12800 3800
Connection ~ 12800 3800
Wire Wire Line
	12800 3650 12800 3800
Wire Wire Line
	13050 3900 13250 3900
Wire Wire Line
	12200 3900 13050 3900
Connection ~ 13050 3900
Wire Wire Line
	13050 3650 13050 3900
Text GLabel 14000 5800 3    50   Input ~ 0
GND
Wire Wire Line
	14000 5200 14050 5200
Wire Wire Line
	14000 5400 14000 5200
Wire Wire Line
	14000 4750 14000 5100
Wire Wire Line
	14000 5100 14050 5100
$Comp
L Motor:Fan M?
U 1 1 5F278C8D
P 15050 5150
AR Path="/5F0F7A8C/5F278C8D" Ref="M?"  Part="1" 
AR Path="/5F278C8D" Ref="M1"  Part="1" 
F 0 "M1" H 15208 5246 50  0000 L CNN
F 1 "Fan" H 15208 5155 50  0000 L CNN
F 2 "Footprints:Fan_Orion_OD7020_vertical" H 15050 5160 50  0001 C CNN
F 3 "~" H 15050 5160 50  0001 C CNN
	1    15050 5150
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J?
U 1 1 5F278C87
P 14250 5200
AR Path="/5F0F7A8C/5F278C87" Ref="J?"  Part="1" 
AR Path="/5F278C87" Ref="J6"  Part="1" 
F 0 "J6" H 14222 5082 50  0000 R CNN
F 1 "Conn_01x02_Male" H 14222 5173 50  0000 R CNN
F 2 "Connector_JST:JST_EH_B2B-EH-A_1x02_P2.50mm_Vertical" H 14250 5200 50  0001 C CNN
F 3 "~" H 14250 5200 50  0001 C CNN
	1    14250 5200
	-1   0    0    1   
$EndComp
Text GLabel 13700 5600 0    50   Input ~ 0
FanControl
$Comp
L Transistor_FET:TSM2302CX Q?
U 1 1 5F278C80
P 13900 5600
AR Path="/5F0F7A8C/5F278C80" Ref="Q?"  Part="1" 
AR Path="/5F278C80" Ref="Q9"  Part="1" 
F 0 "Q9" H 14105 5646 50  0000 L CNN
F 1 "TSM2302CX" H 14105 5555 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 14100 5525 50  0001 L CIN
F 3 "https://www.taiwansemi.com/products/datasheet/TSM2302CX_E1608.pdf" H 13900 5600 50  0001 L CNN
	1    13900 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 8200 5100 8200
Wire Wire Line
	4950 8350 4950 8200
Connection ~ 4950 8200
Wire Wire Line
	4800 8200 4950 8200
$Comp
L Device:C C19
U 1 1 5F22A2B4
P 5100 8050
F 0 "C19" H 5215 8096 50  0000 L CNN
F 1 "10uF" H 5215 8005 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 5138 7900 50  0001 C CNN
F 3 "~" H 5100 8050 50  0001 C CNN
	1    5100 8050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 7900 4800 7900
Wire Wire Line
	4800 7900 5100 7900
Connection ~ 4800 7900
$Comp
L Device:C C18
U 1 1 5F22A2AE
P 4800 8050
F 0 "C18" H 4915 8096 50  0000 L CNN
F 1 "0.1uF" H 4915 8005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4838 7900 50  0001 C CNN
F 3 "~" H 4800 8050 50  0001 C CNN
	1    4800 8050
	1    0    0    -1  
$EndComp
Text GLabel 11200 3100 0    50   Output ~ 0
FanControl
Text GLabel 2800 8100 0    50   Output ~ 0
GND
Wire Wire Line
	4150 8450 4150 9050
Wire Wire Line
	2300 8450 4150 8450
Wire Wire Line
	2300 9250 2300 8450
Wire Wire Line
	2800 9250 2300 9250
Connection ~ 4150 9050
Wire Wire Line
	3900 9050 4150 9050
Wire Wire Line
	4950 9350 5100 9350
Wire Wire Line
	4950 9500 4950 9350
Connection ~ 4950 9350
Wire Wire Line
	4800 9350 4950 9350
$Comp
L Device:C C17
U 1 1 5F160845
P 5100 9200
F 0 "C17" H 5215 9246 50  0000 L CNN
F 1 "10uF" H 5215 9155 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 5138 9050 50  0001 C CNN
F 3 "~" H 5100 9200 50  0001 C CNN
	1    5100 9200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 9050 4800 9050
Wire Wire Line
	4800 9050 5100 9050
Connection ~ 4800 9050
$Comp
L Device:C C16
U 1 1 5F16083F
P 4800 9200
F 0 "C16" H 4915 9246 50  0000 L CNN
F 1 "0.1uF" H 4915 9155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4838 9050 50  0001 C CNN
F 3 "~" H 4800 9200 50  0001 C CNN
	1    4800 9200
	1    0    0    -1  
$EndComp
Text GLabel 2800 9150 0    50   BiDi ~ 0
I2C_SCL
Text GLabel 2800 9050 0    50   BiDi ~ 0
I2C_SDA
$Comp
L Symbols:MCP4725A0T-E_CH U3
U 1 1 5F160835
P 3900 9250
F 0 "U3" H 4450 8663 60  0000 C CNN
F 1 "MCP4725A0T-E_CH" H 4450 8769 60  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6_Handsoldering" H 4450 9540 60  0001 C CNN
F 3 "" H 3900 9250 60  0000 C CNN
	1    3900 9250
	-1   0    0    1   
$EndComp
Text GLabel 7350 8550 2    50   Output ~ 0
V_controlB
Text GLabel 14550 6950 3    50   Output ~ 0
GND
Text GLabel 11200 3200 0    50   Output ~ 0
SeriesOutput
Text GLabel 11200 3300 0    50   Output ~ 0
ParallelOutput
Text GLabel 11200 3500 0    50   Output ~ 0
OuputB_enable
Text GLabel 11200 3400 0    50   Output ~ 0
OuputA_enable
Text GLabel 13250 3900 2    50   BiDi ~ 0
I2C_SCL
Text GLabel 13250 3800 2    50   BiDi ~ 0
I2C_SDA
Text GLabel 12200 3400 2    50   Input ~ 0
V_temp
$Comp
L MCU_Module:Arduino_Nano_v2.x A1
U 1 1 5F1368E1
P 11700 3400
AR Path="/5F1368E1" Ref="A1"  Part="1" 
AR Path="/5F0CDA13/5F1368E1" Ref="A?"  Part="1" 
F 0 "A1" H 11700 2311 50  0000 C CNN
F 1 "Arduino_Nano_v2.x" H 11700 2220 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 11700 3400 50  0001 C CIN
F 3 "https://www.arduino.cc/en/uploads/Main/ArduinoNanoManual23.pdf" H 11700 3400 50  0001 C CNN
	1    11700 3400
	1    0    0    -1  
$EndComp
Text GLabel 5850 8450 0    50   Output ~ 0
V_controlA
Text GLabel 2800 8000 0    50   BiDi ~ 0
I2C_SCL
Text GLabel 2800 7900 0    50   BiDi ~ 0
I2C_SDA
$Comp
L Symbols:MCP4725A0T-E_CH U7
U 1 1 5F174571
P 3900 8100
F 0 "U7" H 4450 7513 60  0000 C CNN
F 1 "MCP4725A0T-E_CH" H 4450 7619 60  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6_Handsoldering" H 4450 8390 60  0001 C CNN
F 3 "" H 3900 8100 60  0000 C CNN
	1    3900 8100
	-1   0    0    1   
$EndComp
Text GLabel 14950 6650 2    50   Output ~ 0
V_temp
$Comp
L Sensor_Temperature:LM35-NEB U1
U 1 1 5F0FE3CC
P 14550 6650
F 0 "U1" H 14220 6696 50  0000 R CNN
F 1 "LM35-NEB" H 14220 6605 50  0000 R CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 14600 6400 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm35.pdf" H 14550 6650 50  0001 C CNN
	1    14550 6650
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R1
U 1 1 5F0BD0C1
P 12800 3500
F 0 "R1" H 12868 3546 50  0000 L CNN
F 1 "4k7" H 12868 3455 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 12840 3490 50  0001 C CNN
F 3 "~" H 12800 3500 50  0001 C CNN
	1    12800 3500
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R2
U 1 1 5F0BC0D8
P 13050 3500
F 0 "R2" H 13118 3546 50  0000 L CNN
F 1 "4k7" H 13118 3455 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 13090 3490 50  0001 C CNN
F 3 "~" H 13050 3500 50  0001 C CNN
	1    13050 3500
	-1   0    0    1   
$EndComp
$Comp
L Device:D_Bridge_-AA+ D1
U 1 1 5F2C954F
P 10700 7750
F 0 "D1" H 11044 7796 50  0000 L CNN
F 1 "D_Bridge_-AA+" H 11044 7705 50  0000 L CNN
F 2 "Miscellaneous:Diode_Bridge_22.3x3.5x18.3mm_P5.0mm" H 10700 7750 50  0001 C CNN
F 3 "~" H 10700 7750 50  0001 C CNN
	1    10700 7750
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Bridge_-AA+ D2
U 1 1 5F2CAE71
P 10700 8700
F 0 "D2" H 11044 8746 50  0000 L CNN
F 1 "D_Bridge_-AA+" H 11044 8655 50  0000 L CNN
F 2 "Miscellaneous:Diode_Bridge_22.3x3.5x18.3mm_P5.0mm" H 10700 8700 50  0001 C CNN
F 3 "~" H 10700 8700 50  0001 C CNN
	1    10700 8700
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 5F2EC21A
P 11250 5700
F 0 "H1" H 11350 5749 50  0000 L CNN
F 1 "MountingHole_Pad" H 11350 5658 50  0000 L CNN
F 2 "MountingHole:MountingHole_4.3mm_M4_Pad_Via" H 11250 5700 50  0001 C CNN
F 3 "~" H 11250 5700 50  0001 C CNN
	1    11250 5700
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 5F2EED70
P 11450 5700
F 0 "H2" H 11550 5749 50  0000 L CNN
F 1 "MountingHole_Pad" H 11550 5658 50  0000 L CNN
F 2 "MountingHole:MountingHole_4.3mm_M4_Pad_Via" H 11450 5700 50  0001 C CNN
F 3 "~" H 11450 5700 50  0001 C CNN
	1    11450 5700
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H3
U 1 1 5F2EEF2E
P 11650 5700
F 0 "H3" H 11750 5749 50  0000 L CNN
F 1 "MountingHole_Pad" H 11750 5658 50  0000 L CNN
F 2 "MountingHole:MountingHole_4.3mm_M4_Pad_Via" H 11650 5700 50  0001 C CNN
F 3 "~" H 11650 5700 50  0001 C CNN
	1    11650 5700
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H4
U 1 1 5F2EF0DD
P 11850 5700
F 0 "H4" H 11950 5749 50  0000 L CNN
F 1 "MountingHole_Pad" H 11950 5658 50  0000 L CNN
F 2 "MountingHole:MountingHole_4.3mm_M4_Pad_Via" H 11850 5700 50  0001 C CNN
F 3 "~" H 11850 5700 50  0001 C CNN
	1    11850 5700
	1    0    0    -1  
$EndComp
Text GLabel 11250 5800 3    50   Input ~ 0
GND
Text GLabel 11450 5800 3    50   Input ~ 0
GND
Text GLabel 11650 5800 3    50   Input ~ 0
GND
Text GLabel 11850 5800 3    50   Input ~ 0
GND
Text GLabel 8550 14800 0    50   Input ~ 0
ParallelOutput
Text GLabel 8550 12800 0    50   Input ~ 0
ParallelOutput
Text GLabel 8550 13550 0    50   Input ~ 0
ParallelOutput
$Comp
L Symbols:LT1490CN8PBF U6
U 1 1 5F179588
P 6050 8450
F 0 "U6" H 6850 8815 50  0000 C CNN
F 1 "LT1490CN8PBF" H 6850 8724 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 6050 8450 50  0001 L BNN
F 3 "Linear Technology" H 6050 8450 50  0001 L BNN
F 4 "LT1490CN8#PBF" H 6050 8450 50  0001 L BNN "Field4"
F 5 "Copyright C 2016 Accelerated Designs. All rights reserved" H 6050 8450 50  0001 L BNN "Field5"
F 6 "LT1490CN8#PBFND" H 6050 8450 50  0001 L BNN "Field6"
	1    6050 8450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0101
U 1 1 5F36FBCE
P 10450 9600
F 0 "#PWR0101" H 10450 9450 50  0001 C CNN
F 1 "+5V" H 10465 9773 50  0000 C CNN
F 2 "" H 10450 9600 50  0001 C CNN
F 3 "" H 10450 9600 50  0001 C CNN
	1    10450 9600
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0102
U 1 1 5F385492
P 10600 9800
F 0 "#PWR0102" H 10600 9650 50  0001 C CNN
F 1 "+12V" H 10615 9973 50  0000 C CNN
F 2 "" H 10600 9800 50  0001 C CNN
F 3 "" H 10600 9800 50  0001 C CNN
	1    10600 9800
	1    0    0    -1  
$EndComp
Wire Wire Line
	10150 9800 10600 9800
$Comp
L power:GND #PWR?
U 1 1 5F21EE9F
P 10300 9900
AR Path="/5F0DDE88/5F21EE9F" Ref="#PWR?"  Part="1" 
AR Path="/5F21EE9F" Ref="#PWR0103"  Part="1" 
F 0 "#PWR0103" H 10300 9650 50  0001 C CNN
F 1 "GND" H 10305 9727 50  0000 C CNN
F 2 "" H 10300 9900 50  0001 C CNN
F 3 "" H 10300 9900 50  0001 C CNN
	1    10300 9900
	1    0    0    -1  
$EndComp
Wire Wire Line
	10150 9700 10300 9700
Wire Wire Line
	10300 9700 10300 9900
$Comp
L power:+5V #PWR0104
U 1 1 5F3DC71D
P 5100 7900
F 0 "#PWR0104" H 5100 7750 50  0001 C CNN
F 1 "+5V" H 5115 8073 50  0000 C CNN
F 2 "" H 5100 7900 50  0001 C CNN
F 3 "" H 5100 7900 50  0001 C CNN
	1    5100 7900
	1    0    0    -1  
$EndComp
Connection ~ 5100 7900
$Comp
L power:+5V #PWR0105
U 1 1 5F3DD898
P 5100 9050
F 0 "#PWR0105" H 5100 8900 50  0001 C CNN
F 1 "+5V" H 5115 9223 50  0000 C CNN
F 2 "" H 5100 9050 50  0001 C CNN
F 3 "" H 5100 9050 50  0001 C CNN
	1    5100 9050
	1    0    0    -1  
$EndComp
Connection ~ 5100 9050
$Comp
L power:GND #PWR?
U 1 1 5F3F546F
P 4950 9500
AR Path="/5F0DDE88/5F3F546F" Ref="#PWR?"  Part="1" 
AR Path="/5F3F546F" Ref="#PWR0106"  Part="1" 
F 0 "#PWR0106" H 4950 9250 50  0001 C CNN
F 1 "GND" H 4955 9327 50  0000 C CNN
F 2 "" H 4950 9500 50  0001 C CNN
F 3 "" H 4950 9500 50  0001 C CNN
	1    4950 9500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F3F5BEF
P 4050 9150
AR Path="/5F0DDE88/5F3F5BEF" Ref="#PWR?"  Part="1" 
AR Path="/5F3F5BEF" Ref="#PWR0107"  Part="1" 
F 0 "#PWR0107" H 4050 8900 50  0001 C CNN
F 1 "GND" H 4055 8977 50  0000 C CNN
F 2 "" H 4050 9150 50  0001 C CNN
F 3 "" H 4050 9150 50  0001 C CNN
	1    4050 9150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 9150 4050 9150
$Comp
L power:GND #PWR?
U 1 1 5F40B9E1
P 4950 8350
AR Path="/5F0DDE88/5F40B9E1" Ref="#PWR?"  Part="1" 
AR Path="/5F40B9E1" Ref="#PWR0108"  Part="1" 
F 0 "#PWR0108" H 4950 8100 50  0001 C CNN
F 1 "GND" H 4955 8177 50  0000 C CNN
F 2 "" H 4950 8350 50  0001 C CNN
F 3 "" H 4950 8350 50  0001 C CNN
	1    4950 8350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 8000 4450 8000
Wire Wire Line
	3900 8100 4250 8100
Wire Wire Line
	4250 8100 4250 8650
Wire Wire Line
	4250 8650 6050 8650
$Comp
L power:GND #PWR?
U 1 1 5F43843C
P 6050 8750
AR Path="/5F0DDE88/5F43843C" Ref="#PWR?"  Part="1" 
AR Path="/5F43843C" Ref="#PWR0110"  Part="1" 
F 0 "#PWR0110" H 6050 8500 50  0001 C CNN
F 1 "GND" H 6055 8577 50  0000 C CNN
F 2 "" H 6050 8750 50  0001 C CNN
F 3 "" H 6050 8750 50  0001 C CNN
	1    6050 8750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F43B87C
P 11700 4400
AR Path="/5F0DDE88/5F43B87C" Ref="#PWR?"  Part="1" 
AR Path="/5F43B87C" Ref="#PWR0111"  Part="1" 
F 0 "#PWR0111" H 11700 4150 50  0001 C CNN
F 1 "GND" H 11705 4227 50  0000 C CNN
F 2 "" H 11700 4400 50  0001 C CNN
F 3 "" H 11700 4400 50  0001 C CNN
	1    11700 4400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F43BB91
P 11800 4400
AR Path="/5F0DDE88/5F43BB91" Ref="#PWR?"  Part="1" 
AR Path="/5F43BB91" Ref="#PWR0112"  Part="1" 
F 0 "#PWR0112" H 11800 4150 50  0001 C CNN
F 1 "GND" H 11805 4227 50  0000 C CNN
F 2 "" H 11800 4400 50  0001 C CNN
F 3 "" H 11800 4400 50  0001 C CNN
	1    11800 4400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0113
U 1 1 5F43BE60
P 12450 2400
F 0 "#PWR0113" H 12450 2250 50  0001 C CNN
F 1 "+5V" H 12465 2573 50  0000 C CNN
F 2 "" H 12450 2400 50  0001 C CNN
F 3 "" H 12450 2400 50  0001 C CNN
	1    12450 2400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0114
U 1 1 5F43C545
P 12800 3250
F 0 "#PWR0114" H 12800 3100 50  0001 C CNN
F 1 "+5V" H 12815 3423 50  0000 C CNN
F 2 "" H 12800 3250 50  0001 C CNN
F 3 "" H 12800 3250 50  0001 C CNN
	1    12800 3250
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0115
U 1 1 5F43C8E4
P 13050 3250
F 0 "#PWR0115" H 13050 3100 50  0001 C CNN
F 1 "+5V" H 13065 3423 50  0000 C CNN
F 2 "" H 13050 3250 50  0001 C CNN
F 3 "" H 13050 3250 50  0001 C CNN
	1    13050 3250
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0116
U 1 1 5F43D652
P 11600 2350
F 0 "#PWR0116" H 11600 2200 50  0001 C CNN
F 1 "+5V" H 11615 2523 50  0000 C CNN
F 2 "" H 11600 2350 50  0001 C CNN
F 3 "" H 11600 2350 50  0001 C CNN
	1    11600 2350
	1    0    0    -1  
$EndComp
NoConn ~ 11200 2800
NoConn ~ 11200 2900
NoConn ~ 11200 3000
NoConn ~ 11200 3600
NoConn ~ 11200 3700
NoConn ~ 11200 3800
NoConn ~ 11200 3900
NoConn ~ 11200 4000
NoConn ~ 11200 4100
NoConn ~ 12200 4100
NoConn ~ 12200 4000
NoConn ~ 12200 3700
NoConn ~ 12200 3600
NoConn ~ 12200 3500
NoConn ~ 12200 3200
NoConn ~ 15050 4850
NoConn ~ 15050 5350
Wire Wire Line
	12450 2400 12450 2800
Wire Wire Line
	12450 2900 12200 2900
Wire Wire Line
	12200 2800 12450 2800
Connection ~ 12450 2800
Wire Wire Line
	12450 2800 12450 2900
NoConn ~ 11800 2400
NoConn ~ 11900 2400
$Comp
L power:+12V #PWR0117
U 1 1 5F5F9E5F
P 14000 4750
F 0 "#PWR0117" H 14000 4600 50  0001 C CNN
F 1 "+12V" H 14015 4923 50  0000 C CNN
F 2 "" H 14000 4750 50  0001 C CNN
F 3 "" H 14000 4750 50  0001 C CNN
	1    14000 4750
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0118
U 1 1 5F5FB189
P 8300 8450
F 0 "#PWR0118" H 8300 8300 50  0001 C CNN
F 1 "+12V" H 8315 8623 50  0000 C CNN
F 2 "" H 8300 8450 50  0001 C CNN
F 3 "" H 8300 8450 50  0001 C CNN
	1    8300 8450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C14
U 1 1 5F5FEE4B
P 8300 8600
F 0 "C14" H 8415 8646 50  0000 L CNN
F 1 "10uF" H 8415 8555 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 8338 8450 50  0001 C CNN
F 3 "~" H 8300 8600 50  0001 C CNN
	1    8300 8600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 8450 8300 8450
$Comp
L Device:C C13
U 1 1 5F5FEE54
P 8000 8600
F 0 "C13" H 8115 8646 50  0000 L CNN
F 1 "0.1uF" H 8115 8555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 8038 8450 50  0001 C CNN
F 3 "~" H 8000 8600 50  0001 C CNN
	1    8000 8600
	1    0    0    -1  
$EndComp
Connection ~ 8300 8450
Wire Wire Line
	7150 8450 8000 8450
Connection ~ 8000 8450
Text GLabel 3500 2850 1    50   Input ~ 0
VccA
$Comp
L power:+5V #PWR0120
U 1 1 5F62E38A
P 3700 3800
F 0 "#PWR0120" H 3700 3650 50  0001 C CNN
F 1 "+5V" H 3715 3973 50  0000 C CNN
F 2 "" H 3700 3800 50  0001 C CNN
F 3 "" H 3700 3800 50  0001 C CNN
	1    3700 3800
	1    0    0    -1  
$EndComp
Connection ~ 3700 3800
$Comp
L power:+5V #PWR0121
U 1 1 5F62F3C1
P 10800 12800
F 0 "#PWR0121" H 10800 12650 50  0001 C CNN
F 1 "+5V" H 10815 12973 50  0000 C CNN
F 2 "" H 10800 12800 50  0001 C CNN
F 3 "" H 10800 12800 50  0001 C CNN
	1    10800 12800
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0122
U 1 1 5F630FEB
P 10800 13750
F 0 "#PWR0122" H 10800 13600 50  0001 C CNN
F 1 "+5V" H 10815 13923 50  0000 C CNN
F 2 "" H 10800 13750 50  0001 C CNN
F 3 "" H 10800 13750 50  0001 C CNN
	1    10800 13750
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0123
U 1 1 5F63154D
P 10800 15100
F 0 "#PWR0123" H 10800 14950 50  0001 C CNN
F 1 "+5V" H 10815 15273 50  0000 C CNN
F 2 "" H 10800 15100 50  0001 C CNN
F 3 "" H 10800 15100 50  0001 C CNN
	1    10800 15100
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0124
U 1 1 5F6319B6
P 12150 13650
F 0 "#PWR0124" H 12150 13500 50  0001 C CNN
F 1 "+5V" H 12165 13823 50  0000 C CNN
F 2 "" H 12150 13650 50  0001 C CNN
F 3 "" H 12150 13650 50  0001 C CNN
	1    12150 13650
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0125
U 1 1 5F631E77
P 7550 3800
F 0 "#PWR0125" H 7550 3650 50  0001 C CNN
F 1 "+5V" H 7565 3973 50  0000 C CNN
F 2 "" H 7550 3800 50  0001 C CNN
F 3 "" H 7550 3800 50  0001 C CNN
	1    7550 3800
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0127
U 1 1 5F633C27
P 14550 6350
F 0 "#PWR0127" H 14550 6200 50  0001 C CNN
F 1 "+5V" H 14565 6523 50  0000 C CNN
F 2 "" H 14550 6350 50  0001 C CNN
F 3 "" H 14550 6350 50  0001 C CNN
	1    14550 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 3800 7550 3800
Connection ~ 7550 3800
$Comp
L power:GND #PWR?
U 1 1 5F5FEE61
P 8150 8900
AR Path="/5F0DDE88/5F5FEE61" Ref="#PWR?"  Part="1" 
AR Path="/5F5FEE61" Ref="#PWR0119"  Part="1" 
F 0 "#PWR0119" H 8150 8650 50  0001 C CNN
F 1 "GND" H 8155 8727 50  0000 C CNN
F 2 "" H 8150 8900 50  0001 C CNN
F 3 "" H 8150 8900 50  0001 C CNN
	1    8150 8900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 8900 8150 8750
Wire Wire Line
	8000 8750 8150 8750
Wire Wire Line
	8150 8750 8300 8750
Connection ~ 8150 8750
$Comp
L Device:R_US R9
U 1 1 5F200656
P 7100 3600
AR Path="/5F200656" Ref="R9"  Part="1" 
AR Path="/5F0F7A8C/5F200656" Ref="R?"  Part="1" 
F 0 "R9" H 7168 3646 50  0000 L CNN
F 1 "1k" H 7168 3555 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7140 3590 50  0001 C CNN
F 3 "~" H 7100 3600 50  0001 C CNN
	1    7100 3600
	1    0    0    -1  
$EndComp
Wire Notes Line
	9200 7150 9200 10250
Wire Notes Line
	9200 10250 13700 10250
Wire Notes Line
	13700 10250 13700 7150
Wire Notes Line
	13700 7150 9200 7150
Text Notes 9200 7100 0    50   ~ 0
Power input
Wire Notes Line
	2050 7250 2050 10400
Wire Notes Line
	2050 10400 8700 10400
Wire Notes Line
	8700 10400 8700 7250
Wire Notes Line
	8700 7250 2050 7250
Text Notes 2050 7200 0    50   ~ 0
Output stage driver
Wire Notes Line
	7800 10900 7800 15950
Wire Notes Line
	7800 15950 14800 15950
Wire Notes Line
	14800 15950 14800 10900
Wire Notes Line
	14800 10900 7800 10900
Text Notes 7800 10850 0    50   ~ 0
Output connection mode management\n
Connection ~ 3250 13300
$Comp
L power:+5V #PWR0126
U 1 1 5F632FED
P 3250 13300
F 0 "#PWR0126" H 3250 13150 50  0001 C CNN
F 1 "+5V" H 3265 13473 50  0000 C CNN
F 2 "" H 3250 13300 50  0001 C CNN
F 3 "" H 3250 13300 50  0001 C CNN
	1    3250 13300
	1    0    0    -1  
$EndComp
Text GLabel 2600 12550 0    50   Output ~ 0
GND
Text GLabel 2600 12450 0    50   Output ~ 0
GND
Connection ~ 2950 13300
Wire Wire Line
	2950 13300 3250 13300
Wire Wire Line
	3100 13600 3250 13600
Connection ~ 3100 13600
Wire Wire Line
	3100 13750 3100 13600
Wire Wire Line
	2950 13600 3100 13600
Text GLabel 3100 13750 3    50   Output ~ 0
GND
$Comp
L Device:C C12
U 1 1 5F200706
P 3250 13450
AR Path="/5F200706" Ref="C12"  Part="1" 
AR Path="/5F0F7A8C/5F200706" Ref="C?"  Part="1" 
F 0 "C12" H 3365 13496 50  0000 L CNN
F 1 "10uF" H 3365 13405 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 3288 13300 50  0001 C CNN
F 3 "~" H 3250 13450 50  0001 C CNN
	1    3250 13450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C11
U 1 1 5F200700
P 2950 13450
AR Path="/5F200700" Ref="C11"  Part="1" 
AR Path="/5F0F7A8C/5F200700" Ref="C?"  Part="1" 
F 0 "C11" H 3065 13496 50  0000 L CNN
F 1 "0.1uF" H 3065 13405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2988 13300 50  0001 C CNN
F 3 "~" H 2950 13450 50  0001 C CNN
	1    2950 13450
	1    0    0    -1  
$EndComp
Connection ~ 3650 12850
Wire Wire Line
	3650 12450 3400 12450
Wire Wire Line
	3650 12850 3650 12450
Text GLabel 3000 12050 1    50   Input ~ 0
GND
Text GLabel 3650 13500 3    50   Input ~ 0
GND
Wire Wire Line
	3650 12850 3650 13500
Wire Wire Line
	3400 12850 3650 12850
Text GLabel 2600 12850 0    50   BiDi ~ 0
I2C_SCL
Text GLabel 2600 12750 0    50   BiDi ~ 0
I2C_SDA
$Comp
L Analog_ADC:MCP3428 U?
U 1 1 5F2006DF
P 3000 12650
AR Path="/5F0F7A8C/5F2006DF" Ref="U?"  Part="1" 
AR Path="/5F2006DF" Ref="U2"  Part="1" 
F 0 "U2" H 3000 11869 50  0000 C CNN
F 1 "MCP3428" H 3000 11960 50  0000 C CNN
F 2 "Package_SO:SOIC-14_3.9x8.7mm_P1.27mm" H 3000 12650 50  0001 C CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/22226a.pdf" H 3000 12650 50  0001 C CNN
	1    3000 12650
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R20
U 1 1 5F3B43E1
P 4500 13600
AR Path="/5F3B43E1" Ref="R20"  Part="1" 
AR Path="/5F0F7A8C/5F3B43E1" Ref="R?"  Part="1" 
F 0 "R20" V 4295 13600 50  0000 C CNN
F 1 "9k" V 4386 13600 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4540 13590 50  0001 C CNN
F 3 "~" H 4500 13600 50  0001 C CNN
	1    4500 13600
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R15
U 1 1 5F3E354C
P 4250 13750
AR Path="/5F3E354C" Ref="R15"  Part="1" 
AR Path="/5F0F7A8C/5F3E354C" Ref="R?"  Part="1" 
F 0 "R15" H 4318 13796 50  0000 L CNN
F 1 "1k" H 4318 13705 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4290 13740 50  0001 C CNN
F 3 "~" H 4250 13750 50  0001 C CNN
	1    4250 13750
	1    0    0    -1  
$EndComp
Text GLabel 4250 13900 3    50   Input ~ 0
VeeA
Text GLabel 4650 13600 2    50   Input ~ 0
VoutAP
Wire Wire Line
	4100 5250 4450 5250
Text GLabel 4150 12000 3    50   Input ~ 0
VeeB
Text GLabel 4300 12000 3    50   Input ~ 0
VeeB
$Comp
L Device:D_Zener D5
U 1 1 5F20069B
P 4150 11850
AR Path="/5F20069B" Ref="D5"  Part="1" 
AR Path="/5F0F7A8C/5F20069B" Ref="D?"  Part="1" 
F 0 "D5" V 4104 11929 50  0000 L CNN
F 1 "5V1" V 4195 11929 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123" H 4150 11850 50  0001 C CNN
F 3 "~" H 4150 11850 50  0001 C CNN
	1    4150 11850
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R11
U 1 1 5F20067D
P 4300 11850
AR Path="/5F20067D" Ref="R11"  Part="1" 
AR Path="/5F0F7A8C/5F20067D" Ref="R?"  Part="1" 
F 0 "R11" H 4368 11896 50  0000 L CNN
F 1 "1k" H 4368 11805 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4340 11840 50  0001 C CNN
F 3 "~" H 4300 11850 50  0001 C CNN
	1    4300 11850
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R17
U 1 1 5F200677
P 4500 11700
AR Path="/5F200677" Ref="R17"  Part="1" 
AR Path="/5F0F7A8C/5F200677" Ref="R?"  Part="1" 
F 0 "R17" V 4295 11700 50  0000 C CNN
F 1 "9k" V 4386 11700 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4540 11690 50  0001 C CNN
F 3 "~" H 4500 11700 50  0001 C CNN
	1    4500 11700
	0    1    1    0   
$EndComp
Wire Wire Line
	4000 13600 4250 13600
Connection ~ 4250 13600
Wire Wire Line
	4250 13600 4350 13600
Wire Wire Line
	3400 12750 4000 12750
Wire Wire Line
	4000 12750 4000 13600
Connection ~ 4000 13600
Connection ~ 4300 11700
Wire Wire Line
	4300 11700 4350 11700
Connection ~ 4150 11700
Wire Wire Line
	4150 11700 4300 11700
Wire Wire Line
	3750 11700 4150 11700
Wire Wire Line
	3400 12250 3750 12250
Wire Wire Line
	3750 12250 3750 11700
Text GLabel 4650 11700 2    50   Input ~ 0
VoutBN
Wire Wire Line
	7950 5550 8300 5550
Wire Wire Line
	8300 5250 7950 5250
$Comp
L Device:R_US R19
U 1 1 5F20053E
P 5700 12800
AR Path="/5F20053E" Ref="R19"  Part="1" 
AR Path="/5F0F7A8C/5F20053E" Ref="R?"  Part="1" 
F 0 "R19" V 5495 12800 50  0000 C CNN
F 1 "9k" V 5586 12800 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5740 12790 50  0001 C CNN
F 3 "~" H 5700 12800 50  0001 C CNN
	1    5700 12800
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R16
U 1 1 5F200544
P 5500 12950
AR Path="/5F200544" Ref="R16"  Part="1" 
AR Path="/5F0F7A8C/5F200544" Ref="R?"  Part="1" 
F 0 "R16" H 5568 12996 50  0000 L CNN
F 1 "1k" H 5568 12905 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5540 12940 50  0001 C CNN
F 3 "~" H 5500 12950 50  0001 C CNN
	1    5500 12950
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Zener D6
U 1 1 5F200562
P 5350 12950
AR Path="/5F200562" Ref="D6"  Part="1" 
AR Path="/5F0F7A8C/5F200562" Ref="D?"  Part="1" 
F 0 "D6" V 5304 13029 50  0000 L CNN
F 1 "5V1" V 5395 13029 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123" H 5350 12950 50  0001 C CNN
F 3 "~" H 5350 12950 50  0001 C CNN
	1    5350 12950
	0    1    1    0   
$EndComp
Text GLabel 5500 13100 3    50   Input ~ 0
VeeA
Text GLabel 5350 13100 3    50   Input ~ 0
VeeA
Connection ~ 5500 12800
Wire Wire Line
	5500 12800 5550 12800
Connection ~ 5350 12800
Wire Wire Line
	5350 12800 5500 12800
$Comp
L Device:R_US R10
U 1 1 5F200685
P 5500 12300
AR Path="/5F200685" Ref="R10"  Part="1" 
AR Path="/5F0F7A8C/5F200685" Ref="R?"  Part="1" 
F 0 "R10" H 5568 12346 50  0000 L CNN
F 1 "1k" H 5568 12255 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5540 12290 50  0001 C CNN
F 3 "~" H 5500 12300 50  0001 C CNN
	1    5500 12300
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R18
U 1 1 5F20068B
P 5700 12150
AR Path="/5F20068B" Ref="R18"  Part="1" 
AR Path="/5F0F7A8C/5F20068B" Ref="R?"  Part="1" 
F 0 "R18" V 5495 12150 50  0000 C CNN
F 1 "9k" V 5586 12150 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5740 12140 50  0001 C CNN
F 3 "~" H 5700 12150 50  0001 C CNN
	1    5700 12150
	0    1    1    0   
$EndComp
Text GLabel 5500 12450 3    50   Input ~ 0
VeeB
Text GLabel 5850 12150 2    50   Input ~ 0
VoutBP
Connection ~ 5500 12150
Wire Wire Line
	5500 12150 5550 12150
$Comp
L Device:D_Zener D3
U 1 1 5F2006A1
P 5350 12300
AR Path="/5F2006A1" Ref="D3"  Part="1" 
AR Path="/5F0F7A8C/5F2006A1" Ref="D?"  Part="1" 
F 0 "D3" V 5304 12379 50  0000 L CNN
F 1 "5V1" V 5395 12379 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123" H 5350 12300 50  0001 C CNN
F 3 "~" H 5350 12300 50  0001 C CNN
	1    5350 12300
	0    1    1    0   
$EndComp
Wire Wire Line
	5350 12150 5500 12150
Connection ~ 5350 12150
Text GLabel 5350 12450 3    50   Input ~ 0
VeeB
Wire Wire Line
	3400 12350 5200 12350
Wire Wire Line
	5200 12350 5200 12150
Wire Wire Line
	5200 12150 5350 12150
Wire Wire Line
	5200 12800 5350 12800
Text GLabel 5850 12800 2    50   Input ~ 0
VoutAN
Wire Wire Line
	3400 12650 3850 12650
Wire Wire Line
	5200 12650 5200 12800
Wire Wire Line
	3400 12550 3750 12550
Wire Wire Line
	3750 12550 3750 12250
Connection ~ 3750 12250
Wire Wire Line
	3400 12950 3850 12950
Wire Wire Line
	3850 12950 3850 12650
Connection ~ 3850 12650
Wire Wire Line
	3850 12650 5200 12650
Wire Wire Line
	3000 13150 2950 13150
Wire Wire Line
	2950 13150 2950 13300
Wire Notes Line
	2100 11400 2100 14350
Wire Notes Line
	2100 14350 6600 14350
Wire Notes Line
	6600 14350 6600 11400
Wire Notes Line
	6600 11400 2100 11400
Text Notes 2100 11350 0    50   ~ 0
Voltage and current sensing
Wire Notes Line
	9300 6750 9300 2300
Wire Notes Line
	9300 2300 1950 2300
Wire Notes Line
	1950 2300 1950 6750
Wire Notes Line
	1950 6750 9300 6750
Text Notes 1950 2250 0    50   ~ 0
Output stages A and B
Wire Wire Line
	13050 3250 13050 3350
Wire Wire Line
	11600 2400 11600 2350
Wire Wire Line
	12800 3250 12800 3350
Wire Wire Line
	10150 9600 10450 9600
$Comp
L power:GND #PWR?
U 1 1 5F32C84F
P 4450 8000
AR Path="/5F0DDE88/5F32C84F" Ref="#PWR?"  Part="1" 
AR Path="/5F32C84F" Ref="#PWR0109"  Part="1" 
F 0 "#PWR0109" H 4450 7750 50  0001 C CNN
F 1 "GND" H 4455 7827 50  0000 C CNN
F 2 "" H 4450 8000 50  0001 C CNN
F 3 "" H 4450 8000 50  0001 C CNN
	1    4450 8000
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R30
U 1 1 5F1D7F47
P 10950 9800
F 0 "R30" V 10745 9800 50  0000 C CNN
F 1 "1k" V 10836 9800 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 10990 9790 50  0001 C CNN
F 3 "~" H 10950 9800 50  0001 C CNN
	1    10950 9800
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R29
U 1 1 5F1D9035
P 10950 9600
F 0 "R29" V 10745 9600 50  0000 C CNN
F 1 "220" V 10836 9600 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 10990 9590 50  0001 C CNN
F 3 "~" H 10950 9600 50  0001 C CNN
	1    10950 9600
	0    1    1    0   
$EndComp
$Comp
L Device:LED D13
U 1 1 5F1D9850
P 11400 9600
F 0 "D13" H 11393 9345 50  0000 C CNN
F 1 "LED" H 11393 9436 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric_Castellated" H 11400 9600 50  0001 C CNN
F 3 "~" H 11400 9600 50  0001 C CNN
	1    11400 9600
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D14
U 1 1 5F1DB263
P 11400 9800
F 0 "D14" H 11393 9545 50  0000 C CNN
F 1 "LED" H 11393 9636 50  0000 C CNN
F 2 "LED_SMD:LED_0805_2012Metric_Castellated" H 11400 9800 50  0001 C CNN
F 3 "~" H 11400 9800 50  0001 C CNN
	1    11400 9800
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F1DB6E2
P 11700 9800
AR Path="/5F0DDE88/5F1DB6E2" Ref="#PWR?"  Part="1" 
AR Path="/5F1DB6E2" Ref="#PWR01"  Part="1" 
F 0 "#PWR01" H 11700 9550 50  0001 C CNN
F 1 "GND" H 11705 9627 50  0000 C CNN
F 2 "" H 11700 9800 50  0001 C CNN
F 3 "" H 11700 9800 50  0001 C CNN
	1    11700 9800
	1    0    0    -1  
$EndComp
Wire Wire Line
	10450 9600 10800 9600
Connection ~ 10450 9600
Wire Wire Line
	10800 9800 10600 9800
Connection ~ 10600 9800
Wire Wire Line
	11100 9600 11250 9600
Wire Wire Line
	11100 9800 11250 9800
Wire Wire Line
	11700 9800 11550 9800
Wire Wire Line
	11550 9600 11700 9600
Wire Wire Line
	11700 9600 11700 9800
Connection ~ 11700 9800
$EndSCHEMATC
