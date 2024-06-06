* SPICE3 file created from adder_subtractor.ext - technology: scmos

.include TSMC_180nm.txt
.param SUPPLY = 1.8
.global Gnd
Vdd VDD Gnd 'SUPPLY'
.option scale=0.09u

VinASA3 ASA3 Gnd DC 'SUPPLY'
VinASA2 ASA2 Gnd DC 0
VinASA1 ASA1 Gnd DC 'SUPPLY'
VinASA0 ASA0 Gnd DC 'SUPPLY'

VinASB3 ASB3 Gnd DC 'SUPPLY'
VinASB2 ASB2 Gnd DC 'SUPPLY'
VinASB1 ASB1 Gnd DC 0
VinASB0 ASB0 Gnd DC 'SUPPLY'

* VinD1 D1 Gnd PULSE('SUPPLY' 0 0ns 100ps 100ps 5n 10n)

M1000 a_4468_6134# a_4242_6168# vdd vdd CMOSP w=5 l=5
+  ad=60 pd=34 as=22252 ps=5096
M1001 a_2992_6187# a_2954_6037# bs2 Gnd CMOSN w=10 l=7
+  ad=1150 pd=290 as=1150 ps=290
M1002 a_2968_7563# bs0 vdd vdd CMOSP w=5 l=5
+  ad=330 pd=108 as=0 ps=0
M1003 a_1836_6032# ASA2 gnd Gnd CMOSN w=11 l=7
+  ad=1220 pd=228 as=13315 ps=3844
M1004 a_3998_7076# a_3772_7110# vdd vdd CMOSP w=5 l=5
+  ad=60 pd=34 as=0 ps=0
M1005 a_4717_6987# a_3998_7076# gnd Gnd CMOSN w=9 l=11
+  ad=630 pd=176 as=0 ps=0
M1006 a_3004_5417# a_2058_5355# a_2941_5142# Gnd CMOSN w=10 l=7
+  ad=1150 pd=290 as=375 ps=118
M1007 a_3332_5151# a_3004_5417# vdd vdd CMOSP w=5 l=5
+  ad=330 pd=108 as=0 ps=0
M1008 a_1836_7815# DAS vdd vdd CMOSP w=16 l=7
+  ad=768 pd=160 as=0 ps=0
M1009 bs0 D1 a_2459_7780# vdd CMOSP w=10 l=8
+  ad=1120 pd=284 as=350 ps=114
M1010 a_2235_7677# ASB0 gnd Gnd CMOSN w=11 l=7
+  ad=1133 pd=228 as=0 ps=0
M1011 a_2941_5142# bs3 gnd Gnd CMOSN w=5 l=5
+  ad=0 pd=0 as=0 ps=0
M1012 a_3311_6949# a_4717_7789# gnd Gnd CMOSN w=5 l=5
+  ad=65 pd=36 as=0 ps=0
M1013 OUT_AS0 a_3311_7686# a_3286_7561# vdd CMOSP w=10 l=13
+  ad=840 pd=208 as=330 ps=108
M1014 a_2929_5912# bs2 vdd vdd CMOSP w=5 l=5
+  ad=330 pd=108 as=0 ps=0
M1015 a_1719_8395# D1 vdd vdd CMOSP w=9 l=11
+  ad=720 pd=178 as=0 ps=0
M1016 a_3772_6162# a_2060_6135# vdd vdd CMOSP w=16 l=13
+  ad=624 pd=142 as=0 ps=0
M1017 a_2648_6037# D1 gnd Gnd CMOSN w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M1018 DAS a_1719_8250# vdd vdd CMOSP w=5 l=5
+  ad=60 pd=34 as=0 ps=0
M1019 bs2 a_2648_6037# a_2461_6140# Gnd CMOSN w=10 l=7
+  ad=0 pd=0 as=385 ps=122
M1020 a_3772_7110# bs1 vdd vdd CMOSP w=16 l=13
+  ad=672 pd=148 as=0 ps=0
M1021 OUT_AS2 a_3309_6058# a_2992_6187# vdd CMOSP w=10 l=8
+  ad=840 pd=208 as=1120 ps=284
M1022 a_2459_7780# a_2235_7814# vdd vdd CMOSP w=5 l=3
+  ad=0 pd=0 as=0 ps=0
M1023 a_3311_7686# D1 gnd Gnd CMOSN w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M1024 a_3772_6162# bs2 a_3772_6026# Gnd CMOSN w=16 l=13
+  ad=1120 pd=172 as=1750 ps=244
M1025 a_2648_6037# D1 vdd vdd CMOSP w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M1026 a_4242_6168# a_3309_6058# vdd vdd CMOSP w=16 l=16
+  ad=640 pd=144 as=0 ps=0
M1027 OUT_AS0 a_3311_7686# axorb Gnd CMOSN w=10 l=7
+  ad=840 pd=208 as=1150 ps=290
M1028 a_4243_5369# a_3004_5417# gnd Gnd CMOSN w=16 l=14
+  ad=1734 pd=242 as=0 ps=0
M1029 bs0 a_2675_7683# a_2650_7558# vdd CMOSP w=10 l=13
+  ad=0 pd=0 as=330 ps=108
M1030 OUT_AS1 a_3321_6941# a_3016_7093# Gnd CMOSN w=10 l=7
+  ad=840 pd=208 as=1150 ps=290
M1031 bs3 a_2624_5257# a_2459_5360# Gnd CMOSN w=10 l=7
+  ad=1150 pd=290 as=385 ps=122
M1032 a_2059_7026# a_1835_7060# gnd Gnd CMOSN w=5 l=3
+  ad=75 pd=40 as=0 ps=0
M1033 a_2235_7814# DAS vdd vdd CMOSP w=16 l=7
+  ad=768 pd=160 as=0 ps=0
M1034 a_2060_6135# a_1836_6169# vdd vdd CMOSP w=5 l=3
+  ad=70 pd=38 as=0 ps=0
M1035 a_3772_6974# a_2059_7026# gnd Gnd CMOSN w=16 l=13
+  ad=1750 pd=244 as=0 ps=0
M1036 a_1719_8250# D1 gnd Gnd CMOSN w=9 l=11
+  ad=630 pd=176 as=0 ps=0
M1037 a_4717_7789# a_4465_7854# gnd Gnd CMOSN w=9 l=11
+  ad=630 pd=176 as=0 ps=0
M1038 a_2993_7688# a_2060_7781# gnd Gnd CMOSN w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M1039 a_3016_7093# a_2059_7026# bs1 vdd CMOSP w=10 l=8
+  ad=1120 pd=284 as=1120 ps=284
M1040 a_3357_5276# a_3347_5284# gnd Gnd CMOSN w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M1041 a_4717_6036# a_3998_6128# gnd Gnd CMOSN w=9 l=11
+  ad=630 pd=176 as=0 ps=0
M1042 a_4242_6168# a_3309_6058# a_4242_6032# Gnd CMOSN w=16 l=13
+  ad=1120 pd=172 as=1750 ps=244
M1043 a_2461_6140# a_2237_6174# gnd Gnd CMOSN w=5 l=3
+  ad=0 pd=0 as=0 ps=0
M1044 a_2953_6818# bs1 gnd Gnd CMOSN w=5 l=5
+  ad=375 pd=118 as=0 ps=0
M1045 OUT_AS3 a_3357_5276# a_3004_5417# Gnd CMOSN w=10 l=7
+  ad=840 pd=208 as=0 ps=0
M1046 a_4465_7854# a_4239_7888# vdd vdd CMOSP w=5 l=5
+  ad=60 pd=34 as=0 ps=0
M1047 a_3311_7686# D1 vdd vdd CMOSP w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M1048 axorb a_2060_7781# bs0 vdd CMOSP w=10 l=8
+  ad=1120 pd=284 as=0 ps=0
M1049 bs1 a_2624_6928# a_2460_7031# Gnd CMOSN w=10 l=7
+  ad=1150 pd=290 as=385 ps=122
M1050 a_3309_6058# a_4717_6987# vdd vdd CMOSP w=5 l=5
+  ad=60 pd=34 as=0 ps=0
M1051 OUT_AS1 a_3321_6941# a_3296_6816# vdd CMOSP w=10 l=13
+  ad=840 pd=208 as=330 ps=108
M1052 a_2460_7031# a_2236_7065# vdd vdd CMOSP w=5 l=3
+  ad=350 pd=114 as=0 ps=0
M1053 a_4717_7132# a_3998_7076# vdd vdd CMOSP w=9 l=11
+  ad=720 pd=178 as=0 ps=0
M1054 a_4242_6980# a_3016_7093# gnd Gnd CMOSN w=16 l=13
+  ad=1750 pd=244 as=0 ps=0
M1055 a_3357_5276# a_3347_5284# vdd vdd CMOSP w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M1056 a_3769_7882# a_2060_7781# vdd vdd CMOSP w=16 l=13
+  ad=608 pd=140 as=0 ps=0
M1057 a_3319_6050# a_3309_6058# gnd Gnd CMOSN w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M1058 a_2237_6174# DAS a_2237_6037# Gnd CMOSN w=12 l=8
+  ad=600 pd=126 as=1209 ps=226
M1059 a_1836_7815# ASA0 vdd vdd CMOSP w=16 l=7
+  ad=0 pd=0 as=0 ps=0
M1060 a_2060_7781# a_1836_7815# gnd Gnd CMOSN w=5 l=3
+  ad=75 pd=40 as=0 ps=0
M1061 C a_4717_5372# gnd Gnd CMOSN w=5 l=5
+  ad=65 pd=36 as=0 ps=0
M1062 a_2993_7688# a_2060_7781# vdd vdd CMOSP w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M1063 a_1836_6169# DAS a_1836_6032# Gnd CMOSN w=12 l=7
+  ad=626 pd=136 as=0 ps=0
M1064 a_2236_7065# DAS vdd vdd CMOSP w=16 l=7
+  ad=768 pd=160 as=0 ps=0
M1065 bs1 a_2624_6928# a_2599_6803# vdd CMOSP w=10 l=13
+  ad=0 pd=0 as=330 ps=108
M1066 a_2992_6187# a_2954_6037# a_2929_5912# vdd CMOSP w=10 l=13
+  ad=0 pd=0 as=0 ps=0
M1067 a_3296_6816# a_3016_7093# gnd Gnd CMOSN w=5 l=5
+  ad=375 pd=118 as=0 ps=0
M1068 a_1834_5389# ASA3 vdd vdd CMOSP w=16 l=7
+  ad=752 pd=158 as=0 ps=0
M1069 a_3769_7882# bs0 a_3769_7746# Gnd CMOSN w=16 l=13
+  ad=1120 pd=172 as=1750 ps=244
M1070 a_3319_6050# a_3309_6058# vdd vdd CMOSP w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M1071 a_3311_6949# a_4717_7789# vdd vdd CMOSP w=5 l=5
+  ad=60 pd=34 as=0 ps=0
M1072 axorb a_2993_7688# a_2968_7563# vdd CMOSP w=10 l=13
+  ad=0 pd=0 as=0 ps=0
M1073 a_3998_5465# a_3772_5499# vdd vdd CMOSP w=5 l=5
+  ad=60 pd=34 as=0 ps=0
M1074 a_4239_7888# D1 vdd vdd CMOSP w=16 l=16
+  ad=640 pd=144 as=0 ps=0
M1075 a_4717_7934# a_3995_7848# vdd vdd CMOSP w=9 l=11
+  ad=720 pd=178 as=0 ps=0
M1076 a_4468_7082# a_4242_7116# vdd vdd CMOSP w=5 l=5
+  ad=60 pd=34 as=0 ps=0
M1077 a_3321_6941# a_3311_6949# gnd Gnd CMOSN w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M1078 a_4717_5372# a_4468_5471# a_4717_5517# vdd CMOSP w=9 l=11
+  ad=396 pd=106 as=720 ps=178
M1079 a_4717_6036# a_4468_6134# a_4717_6181# vdd CMOSP w=9 l=11
+  ad=396 pd=106 as=720 ps=178
M1080 a_2236_7065# DAS a_2236_6928# Gnd CMOSN w=11 l=8
+  ad=517 pd=116 as=1133 ps=228
M1081 a_3286_7561# axorb vdd vdd CMOSP w=5 l=5
+  ad=0 pd=0 as=0 ps=0
M1082 a_2623_5912# a_2461_6140# vdd vdd CMOSP w=5 l=5
+  ad=330 pd=108 as=0 ps=0
M1083 a_2058_5355# a_1834_5389# gnd Gnd CMOSN w=5 l=3
+  ad=75 pd=40 as=0 ps=0
M1084 a_4242_6168# a_2992_6187# vdd vdd CMOSP w=16 l=13
+  ad=0 pd=0 as=0 ps=0
M1085 a_2599_5132# a_2459_5360# vdd vdd CMOSP w=5 l=5
+  ad=330 pd=108 as=0 ps=0
M1086 a_1836_6169# DAS vdd vdd CMOSP w=16 l=7
+  ad=784 pd=162 as=0 ps=0
M1087 a_2599_6803# a_2460_7031# gnd Gnd CMOSN w=5 l=5
+  ad=375 pd=118 as=0 ps=0
M1088 a_4239_7888# D1 a_4239_7752# Gnd CMOSN w=16 l=13
+  ad=1120 pd=172 as=1750 ps=244
M1089 OUT_AS1 a_3311_6949# a_3016_7093# vdd CMOSP w=10 l=8
+  ad=0 pd=0 as=0 ps=0
M1090 bs2 a_2648_6037# a_2623_5912# vdd CMOSP w=10 l=13
+  ad=1120 pd=284 as=0 ps=0
M1091 a_4242_7116# a_3311_6949# vdd vdd CMOSP w=16 l=13
+  ad=672 pd=148 as=0 ps=0
M1092 a_3321_6941# a_3311_6949# vdd vdd CMOSP w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M1093 a_3998_6128# a_3772_6162# gnd Gnd CMOSN w=5 l=5
+  ad=65 pd=36 as=0 ps=0
M1094 a_2235_7814# ASB0 vdd vdd CMOSP w=16 l=7
+  ad=0 pd=0 as=0 ps=0
M1095 a_2624_6928# D1 gnd Gnd CMOSN w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M1096 OUT_AS1 a_3311_6949# a_3296_6816# Gnd CMOSN w=10 l=7
+  ad=0 pd=0 as=0 ps=0
M1097 a_1834_5389# DAS a_1834_5252# Gnd CMOSN w=11 l=9
+  ad=539 pd=126 as=1133 ps=228
M1098 a_4717_5372# a_4468_5471# gnd Gnd CMOSN w=9 l=11
+  ad=630 pd=176 as=0 ps=0
M1099 a_3772_6026# a_2060_6135# gnd Gnd CMOSN w=16 l=13
+  ad=0 pd=0 as=0 ps=0
M1100 a_2650_7558# a_2459_7780# gnd Gnd CMOSN w=5 l=5
+  ad=375 pd=118 as=0 ps=0
M1101 a_2059_7026# a_1835_7060# vdd vdd CMOSP w=5 l=3
+  ad=70 pd=38 as=0 ps=0
M1102 a_2235_5257# ASB3 gnd Gnd CMOSN w=11 l=7
+  ad=1034 pd=228 as=0 ps=0
M1103 bs1 D1 a_2599_6803# Gnd CMOSN w=10 l=7
+  ad=0 pd=0 as=0 ps=0
M1104 OUT_AS3 a_3357_5276# a_3332_5151# vdd CMOSP w=10 l=13
+  ad=840 pd=208 as=0 ps=0
M1105 a_2459_5360# a_2235_5394# vdd vdd CMOSP w=5 l=3
+  ad=350 pd=114 as=0 ps=0
M1106 a_2237_6037# ASB2 gnd Gnd CMOSN w=11 l=7
+  ad=0 pd=0 as=0 ps=0
M1107 a_4468_5471# a_4242_5505# vdd vdd CMOSP w=5 l=5
+  ad=60 pd=34 as=0 ps=0
M1108 a_3294_5925# a_2992_6187# vdd vdd CMOSP w=5 l=5
+  ad=330 pd=108 as=0 ps=0
M1109 a_2624_6928# D1 vdd vdd CMOSP w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M1110 axorb a_2060_7781# a_2968_7563# Gnd CMOSN w=10 l=7
+  ad=0 pd=0 as=375 ps=118
M1111 a_4468_6134# a_4242_6168# gnd Gnd CMOSN w=5 l=5
+  ad=65 pd=36 as=0 ps=0
M1112 a_2968_7563# bs0 gnd Gnd CMOSN w=5 l=5
+  ad=0 pd=0 as=0 ps=0
M1113 a_2953_6818# bs1 vdd vdd CMOSP w=5 l=5
+  ad=330 pd=108 as=0 ps=0
M1114 a_4242_6032# a_2992_6187# gnd Gnd CMOSN w=16 l=13
+  ad=0 pd=0 as=0 ps=0
M1115 a_3332_5151# a_3004_5417# gnd Gnd CMOSN w=5 l=5
+  ad=375 pd=118 as=0 ps=0
M1116 DAS a_1719_8250# gnd Gnd CMOSN w=5 l=5
+  ad=65 pd=36 as=0 ps=0
M1117 a_2992_6187# a_2060_6135# bs2 vdd CMOSP w=10 l=8
+  ad=0 pd=0 as=0 ps=0
M1118 a_2235_5394# DAS vdd vdd CMOSP w=16 l=7
+  ad=768 pd=160 as=0 ps=0
M1119 a_2992_6187# a_2060_6135# a_2929_5912# Gnd CMOSN w=10 l=7
+  ad=0 pd=0 as=375 ps=118
M1120 a_3772_5499# bs3 a_3772_5363# Gnd CMOSN w=16 l=13
+  ad=1120 pd=172 as=1750 ps=244
M1121 a_2929_5912# bs2 gnd Gnd CMOSN w=5 l=5
+  ad=0 pd=0 as=0 ps=0
M1122 a_2459_7780# a_2235_7814# gnd Gnd CMOSN w=5 l=3
+  ad=385 pd=122 as=0 ps=0
M1123 a_4242_5505# a_3347_5284# vdd vdd CMOSP w=16 l=16
+  ad=624 pd=142 as=0 ps=0
M1124 a_3347_5284# a_4717_6036# gnd Gnd CMOSN w=5 l=5
+  ad=65 pd=36 as=0 ps=0
M1125 OUT_AS2 a_3319_6050# a_2992_6187# Gnd CMOSN w=10 l=7
+  ad=840 pd=208 as=0 ps=0
M1126 bs0 D1 a_2650_7558# Gnd CMOSN w=10 l=7
+  ad=1150 pd=290 as=0 ps=0
M1127 a_2237_6174# DAS vdd vdd CMOSP w=16 l=7
+  ad=768 pd=160 as=0 ps=0
M1128 a_4717_6987# a_4468_7082# gnd Gnd CMOSN w=9 l=11
+  ad=0 pd=0 as=0 ps=0
M1129 a_3004_5417# a_2058_5355# bs3 vdd CMOSP w=10 l=8
+  ad=1120 pd=284 as=1120 ps=284
M1130 a_2236_7065# ASB1 vdd vdd CMOSP w=16 l=7
+  ad=0 pd=0 as=0 ps=0
M1131 a_1719_8250# D0 a_1719_8395# vdd CMOSP w=9 l=11
+  ad=396 pd=106 as=0 ps=0
M1132 a_1836_7815# DAS a_1836_7678# Gnd CMOSN w=10 l=7
+  ad=515 pd=128 as=1024 ps=226
M1133 a_2941_5142# bs3 vdd vdd CMOSP w=5 l=5
+  ad=330 pd=108 as=0 ps=0
M1134 a_4239_7888# axorb vdd vdd CMOSP w=16 l=13
+  ad=0 pd=0 as=0 ps=0
M1135 a_1836_6169# ASA2 vdd vdd CMOSP w=16 l=7
+  ad=0 pd=0 as=0 ps=0
M1136 a_4242_5505# a_3347_5284# a_4243_5369# Gnd CMOSN w=16 l=13
+  ad=1120 pd=172 as=0 ps=0
M1137 a_1835_7060# DAS vdd vdd CMOSP w=16 l=7
+  ad=768 pd=160 as=0 ps=0
M1138 a_3296_6816# a_3016_7093# vdd vdd CMOSP w=5 l=5
+  ad=0 pd=0 as=0 ps=0
M1139 OUT_AS3 a_3347_5284# a_3332_5151# Gnd CMOSN w=10 l=7
+  ad=0 pd=0 as=0 ps=0
M1140 a_3995_7848# a_3769_7882# gnd Gnd CMOSN w=5 l=5
+  ad=65 pd=36 as=0 ps=0
M1141 a_3769_7746# a_2060_7781# gnd Gnd CMOSN w=16 l=13
+  ad=0 pd=0 as=0 ps=0
M1142 a_2060_6135# a_1836_6169# gnd Gnd CMOSN w=5 l=3
+  ad=75 pd=40 as=0 ps=0
M1143 a_2978_6943# a_2059_7026# gnd Gnd CMOSN w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M1144 a_4717_7789# a_3995_7848# gnd Gnd CMOSN w=9 l=11
+  ad=0 pd=0 as=0 ps=0
M1145 a_1835_7060# DAS a_1835_6923# Gnd CMOSN w=11 l=7
+  ad=549 pd=128 as=1133 ps=228
M1146 axorb a_2993_7688# bs0 Gnd CMOSN w=10 l=7
+  ad=0 pd=0 as=0 ps=0
M1147 a_3016_7093# a_2978_6943# bs1 Gnd CMOSN w=10 l=7
+  ad=0 pd=0 as=0 ps=0
M1148 OUT_AS0 D1 axorb vdd CMOSP w=10 l=8
+  ad=0 pd=0 as=0 ps=0
M1149 a_3772_7110# a_2059_7026# vdd vdd CMOSP w=16 l=14
+  ad=0 pd=0 as=0 ps=0
M1150 a_1719_8250# D0 gnd Gnd CMOSN w=9 l=11
+  ad=0 pd=0 as=0 ps=0
M1151 a_3998_7076# a_3772_7110# gnd Gnd CMOSN w=5 l=5
+  ad=65 pd=36 as=0 ps=0
M1152 a_2236_6928# ASB1 gnd Gnd CMOSN w=11 l=7
+  ad=0 pd=0 as=0 ps=0
M1153 bs3 D1 a_2459_5360# vdd CMOSP w=10 l=8
+  ad=0 pd=0 as=0 ps=0
M1154 a_3772_5499# a_3759_5358# vdd vdd CMOSP w=16 l=13
+  ad=672 pd=148 as=0 ps=0
M1155 bs2 D1 a_2623_5912# Gnd CMOSN w=10 l=7
+  ad=0 pd=0 as=375 ps=118
M1156 a_3998_6128# a_3772_6162# vdd vdd CMOSP w=5 l=5
+  ad=60 pd=34 as=0 ps=0
M1157 a_4465_7854# a_4239_7888# gnd Gnd CMOSN w=5 l=5
+  ad=65 pd=36 as=0 ps=0
M1158 a_2235_7814# DAS a_2235_7677# Gnd CMOSN w=11 l=8
+  ad=517 pd=116 as=0 ps=0
M1159 a_4239_7752# axorb gnd Gnd CMOSN w=16 l=13
+  ad=0 pd=0 as=0 ps=0
M1160 a_4242_7116# a_3016_7093# vdd vdd CMOSP w=16 l=13
+  ad=0 pd=0 as=0 ps=0
M1161 a_2650_7558# a_2459_7780# vdd vdd CMOSP w=5 l=5
+  ad=0 pd=0 as=0 ps=0
M1162 a_2460_7031# a_2236_7065# gnd Gnd CMOSN w=5 l=3
+  ad=0 pd=0 as=0 ps=0
M1163 a_2978_6943# a_2059_7026# vdd vdd CMOSP w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M1164 a_4717_6036# a_4468_6134# gnd Gnd CMOSN w=9 l=11
+  ad=0 pd=0 as=0 ps=0
M1165 a_2461_6140# a_2237_6174# vdd vdd CMOSP w=5 l=3
+  ad=350 pd=114 as=0 ps=0
M1166 a_2966_5267# a_2058_5355# gnd Gnd CMOSN w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M1167 bs0 a_2675_7683# a_2459_7780# Gnd CMOSN w=10 l=7
+  ad=0 pd=0 as=0 ps=0
M1168 bs1 D1 a_2460_7031# vdd CMOSP w=10 l=8
+  ad=0 pd=0 as=0 ps=0
M1169 a_2954_6037# a_2060_6135# gnd Gnd CMOSN w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M1170 a_1834_5252# ASA3 gnd Gnd CMOSN w=11 l=7
+  ad=0 pd=0 as=0 ps=0
M1171 a_3772_6162# bs2 vdd vdd CMOSP w=16 l=16
+  ad=0 pd=0 as=0 ps=0
M1172 bs3 a_2624_5257# a_2599_5132# vdd CMOSP w=10 l=13
+  ad=0 pd=0 as=0 ps=0
M1173 a_4717_6987# a_4468_7082# a_4717_7132# vdd CMOSP w=9 l=11
+  ad=396 pd=106 as=0 ps=0
M1174 a_3016_7093# a_2978_6943# a_2953_6818# vdd CMOSP w=10 l=13
+  ad=0 pd=0 as=0 ps=0
M1175 a_4468_7082# a_4242_7116# gnd Gnd CMOSN w=5 l=5
+  ad=65 pd=36 as=0 ps=0
M1176 a_2235_5394# ASB3 vdd vdd CMOSP w=16 l=7
+  ad=0 pd=0 as=0 ps=0
M1177 a_2966_5267# a_2058_5355# vdd vdd CMOSP w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M1178 a_2237_6174# ASB2 vdd vdd CMOSP w=16 l=7
+  ad=0 pd=0 as=0 ps=0
M1179 a_2235_5394# DAS a_2235_5257# Gnd CMOSN w=10 l=6
+  ad=490 pd=118 as=0 ps=0
M1180 a_3772_5499# bs3 vdd vdd CMOSP w=16 l=15
+  ad=0 pd=0 as=0 ps=0
M1181 OUT_AS2 a_3309_6058# a_3294_5925# Gnd CMOSN w=10 l=7
+  ad=0 pd=0 as=375 ps=118
M1182 a_2954_6037# a_2060_6135# vdd vdd CMOSP w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M1183 a_3998_5465# a_3772_5499# gnd Gnd CMOSN w=5 l=5
+  ad=65 pd=36 as=0 ps=0
M1184 a_3772_5363# a_3759_5358# gnd Gnd CMOSN w=16 l=13
+  ad=0 pd=0 as=0 ps=0
M1185 C a_4717_5372# vdd vdd CMOSP w=5 l=5
+  ad=60 pd=34 as=0 ps=0
M1186 bs2 D1 a_2461_6140# vdd CMOSP w=10 l=8
+  ad=0 pd=0 as=0 ps=0
M1187 a_3004_5417# a_2966_5267# a_2941_5142# vdd CMOSP w=10 l=13
+  ad=0 pd=0 as=0 ps=0
M1188 a_4242_5505# a_3004_5417# vdd vdd CMOSP w=16 l=13
+  ad=0 pd=0 as=0 ps=0
M1189 a_1834_5389# DAS vdd vdd CMOSP w=16 l=8
+  ad=0 pd=0 as=0 ps=0
M1190 a_4717_5517# a_3998_5465# vdd vdd CMOSP w=9 l=11
+  ad=0 pd=0 as=0 ps=0
M1191 a_4717_6181# a_3998_6128# vdd vdd CMOSP w=9 l=11
+  ad=0 pd=0 as=0 ps=0
M1192 a_3286_7561# axorb gnd Gnd CMOSN w=5 l=5
+  ad=375 pd=118 as=0 ps=0
M1193 a_2623_5912# a_2461_6140# gnd Gnd CMOSN w=5 l=5
+  ad=0 pd=0 as=0 ps=0
M1194 a_2599_5132# a_2459_5360# gnd Gnd CMOSN w=5 l=5
+  ad=375 pd=118 as=0 ps=0
M1195 OUT_AS2 a_3319_6050# a_3294_5925# vdd CMOSP w=10 l=13
+  ad=0 pd=0 as=0 ps=0
M1196 a_2060_7781# a_1836_7815# vdd vdd CMOSP w=5 l=3
+  ad=70 pd=38 as=0 ps=0
M1197 a_4717_7789# a_4465_7854# a_4717_7934# vdd CMOSP w=9 l=11
+  ad=396 pd=106 as=0 ps=0
M1198 a_1835_7060# ASA1 vdd vdd CMOSP w=16 l=7
+  ad=0 pd=0 as=0 ps=0
M1199 a_3772_7110# bs1 a_3772_6974# Gnd CMOSN w=16 l=13
+  ad=1120 pd=172 as=0 ps=0
M1200 a_3347_5284# a_4717_6036# vdd vdd CMOSP w=5 l=5
+  ad=60 pd=34 as=0 ps=0
M1201 a_2675_7683# D1 gnd Gnd CMOSN w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M1202 a_2624_5257# D1 gnd Gnd CMOSN w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M1203 a_4468_5471# a_4242_5505# gnd Gnd CMOSN w=5 l=5
+  ad=65 pd=36 as=0 ps=0
M1204 a_2058_5355# a_1834_5389# vdd vdd CMOSP w=5 l=3
+  ad=70 pd=38 as=0 ps=0
M1205 a_3995_7848# a_3769_7882# vdd vdd CMOSP w=5 l=5
+  ad=60 pd=34 as=0 ps=0
M1206 a_4717_5372# a_3998_5465# gnd Gnd CMOSN w=9 l=11
+  ad=0 pd=0 as=0 ps=0
M1207 a_1836_7678# ASA0 gnd Gnd CMOSN w=11 l=7
+  ad=0 pd=0 as=0 ps=0
M1208 a_2599_6803# a_2460_7031# vdd vdd CMOSP w=5 l=5
+  ad=0 pd=0 as=0 ps=0
M1209 a_2624_5257# D1 vdd vdd CMOSP w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M1210 a_2459_5360# a_2235_5394# gnd Gnd CMOSN w=5 l=3
+  ad=0 pd=0 as=0 ps=0
M1211 OUT_AS0 D1 a_3286_7561# Gnd CMOSN w=10 l=7
+  ad=0 pd=0 as=0 ps=0
M1212 a_3309_6058# a_4717_6987# gnd Gnd CMOSN w=5 l=5
+  ad=65 pd=36 as=0 ps=0
M1213 a_4242_7116# a_3311_6949# a_4242_6980# Gnd CMOSN w=16 l=13
+  ad=1120 pd=172 as=0 ps=0
M1214 a_3016_7093# a_2059_7026# a_2953_6818# Gnd CMOSN w=10 l=7
+  ad=0 pd=0 as=0 ps=0
M1215 a_3294_5925# a_2992_6187# gnd Gnd CMOSN w=5 l=5
+  ad=0 pd=0 as=0 ps=0
M1216 bs3 D1 a_2599_5132# Gnd CMOSN w=10 l=7
+  ad=0 pd=0 as=0 ps=0
M1217 a_3769_7882# bs0 vdd vdd CMOSP w=16 l=17
+  ad=0 pd=0 as=0 ps=0
M1218 a_2675_7683# D1 vdd vdd CMOSP w=4 l=2
+  ad=20 pd=18 as=0 ps=0
M1219 a_1835_6923# ASA1 gnd Gnd CMOSN w=11 l=7
+  ad=0 pd=0 as=0 ps=0
M1220 a_3004_5417# a_2966_5267# bs3 Gnd CMOSN w=10 l=7
+  ad=0 pd=0 as=0 ps=0
M1221 OUT_AS3 a_3347_5284# a_3004_5417# vdd CMOSP w=10 l=8
+  ad=0 pd=0 as=0 ps=0
C0 gnd a_3998_6128# 0.28fF
C1 vdd a_3357_5276# 0.82fF
C2 gnd a_3772_5499# 0.04fF
C3 D1 a_1719_8250# 0.47fF
C4 gnd a_3772_7110# 0.04fF
C5 vdd a_1836_7815# 0.21fF
C6 a_4242_5505# a_3998_5465# 0.23fF
C7 vdd a_4468_5471# 0.49fF
C8 a_1719_8250# gnd 0.06fF
C9 a_3309_6058# a_2060_6135# 0.30fF
C10 vdd a_2675_7683# 0.82fF
C11 vdd a_2060_7781# 2.21fF
C12 DAS a_1836_7815# 0.16fF
C13 gnd ASA0 0.02fF
C14 a_3311_6949# a_2059_7026# 0.14fF
C15 a_3998_7076# a_4468_7082# 0.28fF
C16 vdd axorb 1.50fF
C17 gnd a_2992_6187# 1.07fF
C18 D1 a_2058_5355# 0.60fF
C19 vdd ASA2 0.18fF
C20 DAS a_2060_7781# 0.05fF
C21 a_3311_6949# a_3321_6941# 0.03fF
C22 vdd a_2978_6943# 0.82fF
C23 gnd a_2954_6037# 0.04fF
C24 a_2058_5355# a_2966_5267# 0.03fF
C25 gnd a_2058_5355# 0.14fF
C26 vdd a_2599_5132# 0.12fF
C27 vdd a_4465_7854# 0.49fF
C28 gnd a_4242_6168# 0.04fF
C29 gnd a_3311_6949# 0.36fF
C30 a_4468_6134# a_4717_6036# 0.33fF
C31 gnd a_3016_7093# 0.94fF
C32 vdd a_4717_6036# 0.26fF
C33 a_3004_5417# a_3998_5465# 0.03fF
C34 vdd a_3998_5465# 0.49fF
C35 D1 a_2060_6135# 0.33fF
C36 vdd a_4468_7082# 0.49fF
C37 gnd a_1835_7060# 0.16fF
C38 D1 a_2624_5257# 0.03fF
C39 gnd a_3309_6058# 0.32fF
C40 vdd a_2459_7780# 0.45fF
C41 gnd a_2060_6135# 0.36fF
C42 D1 a_2648_6037# 0.03fF
C43 a_3309_6058# a_3319_6050# 0.03fF
C44 gnd a_3347_5284# 0.28fF
C45 a_4239_7888# a_3995_7848# 0.22fF
C46 gnd a_2624_5257# 0.04fF
C47 D1 a_3311_7686# 0.03fF
C48 vdd a_2460_7031# 0.45fF
C49 gnd a_2648_6037# 0.04fF
C50 vdd bs3 1.81fF
C51 D1 a_2059_7026# 0.51fF
C52 vdd a_2941_5142# 0.12fF
C53 gnd a_4717_5372# 0.06fF
C54 vdd a_3995_7848# 0.49fF
C55 gnd a_3772_6162# 0.04fF
C56 gnd a_3311_7686# 0.04fF
C57 vdd D0 0.40fF
C58 gnd a_2059_7026# 0.33fF
C59 gnd a_2237_6174# 0.11fF
C60 vdd ASA1 0.18fF
C61 vdd a_4242_5505# 0.24fF
C62 gnd a_1834_5389# 0.22fF
C63 vdd a_3998_7076# 0.49fF
C64 vdd bs0 1.82fF
C65 D1 gnd 2.49fF
C66 vdd bs2 1.81fF
C67 gnd a_3321_6941# 0.04fF
C68 a_4242_7116# a_3998_7076# 0.23fF
C69 vdd a_2235_7814# 0.21fF
C70 gnd a_4717_7789# 0.06fF
C71 a_3347_5284# a_3357_5276# 0.03fF
C72 gnd a_2235_5394# 0.19fF
C73 gnd a_2966_5267# 0.04fF
C74 D1 a_2461_6140# 0.19fF
C75 gnd a_2236_7065# 0.16fF
C76 bs3 a_3772_5499# 0.44fF
C77 DAS a_2235_7814# 0.16fF
C78 gnd ASB0 0.01fF
C79 gnd a_3319_6050# 0.04fF
C80 vdd a_2929_5912# 0.12fF
C81 vdd a_3332_5151# 0.12fF
C82 vdd a_4239_7888# 0.24fF
C83 gnd a_2461_6140# 0.01fF
C84 gnd a_2993_7688# 0.04fF
C85 vdd bs1 1.59fF
C86 D1 a_2459_5360# 0.19fF
C87 gnd a_4717_6987# 0.06fF
C88 vdd ASB2 0.18fF
C89 vdd ASA3 0.18fF
C90 bs0 a_3769_7882# 0.48fF
C91 a_4468_5471# a_4717_5372# 0.33fF
C92 axorb OUT_AS0 0.29fF
C93 D1 a_2624_6928# 0.03fF
C94 vdd a_4468_6134# 0.49fF
C95 vdd a_3004_5417# 0.70fF
C96 gnd a_2459_5360# 0.01fF
C97 vdd a_4242_7116# 0.24fF
C98 D0 a_1719_8250# 0.47fF
C99 gnd a_2624_6928# 0.04fF
C100 vdd a_2599_6803# 0.12fF
C101 vdd ASB3 0.18fF
C102 axorb a_3311_7686# 0.03fF
C103 vdd DAS 4.08fF
C104 vdd ASB1 0.18fF
C105 gnd a_3357_5276# 0.04fF
C106 D1 a_2675_7683# 0.03fF
C107 bs3 a_2058_5355# 0.82fF
C108 D1 a_2060_7781# 0.66fF
C109 vdd OUT_AS2 0.07fF
C110 gnd a_1836_7815# 0.17fF
C111 a_3347_5284# a_3998_5465# 0.03fF
C112 vdd a_2623_5912# 0.12fF
C113 a_2059_7026# a_2978_6943# 0.03fF
C114 D1 axorb 0.23fF
C115 vdd a_3769_7882# 0.24fF
C116 gnd a_2675_7683# 0.04fF
C117 vdd a_3286_7561# 0.12fF
C118 vdd a_1836_6169# 0.21fF
C119 gnd a_2060_7781# 0.33fF
C120 bs1 a_3772_7110# 0.40fF
C121 vdd OUT_AS3 0.07fF
C122 a_3998_6128# a_4468_6134# 0.28fF
C123 vdd a_3998_6128# 0.49fF
C124 gnd axorb 0.80fF
C125 vdd a_3772_5499# 0.24fF
C126 gnd ASA2 0.01fF
C127 DAS a_1836_6169# 0.15fF
C128 a_3311_6949# a_3998_7076# 0.03fF
C129 a_2060_7781# a_2993_7688# 0.03fF
C130 vdd a_3772_7110# 0.24fF
C131 vdd a_3296_6816# 0.12fF
C132 gnd a_2978_6943# 0.04fF
C133 a_3347_5284# bs3 0.46fF
C134 a_3016_7093# a_3998_7076# 0.03fF
C135 a_4465_7854# a_4717_7789# 0.33fF
C136 vdd a_1719_8250# 0.30fF
C137 vdd ASA0 0.18fF
C138 vdd a_2992_6187# 0.70fF
C139 a_3309_6058# bs2 0.46fF
C140 a_3347_5284# a_4242_5505# 0.46fF
C141 vdd a_3294_5925# 0.12fF
C142 gnd a_4717_6036# 0.06fF
C143 gnd a_3998_5465# 0.28fF
C144 D1 a_2459_7780# 0.19fF
C145 a_3311_6949# bs1 0.25fF
C146 bs2 a_2060_6135# 1.65fF
C147 vdd a_2650_7558# 0.12fF
C148 vdd a_2954_6037# 0.82fF
C149 vdd a_2058_5355# 1.44fF
C150 D1 a_2460_7031# 0.19fF
C151 vdd a_4242_6168# 0.24fF
C152 vdd a_3311_6949# 1.93fF
C153 gnd a_2459_7780# 0.01fF
C154 vdd a_3759_5358# 0.99fF
C155 D1 a_3995_7848# 0.02fF
C156 a_3311_6949# a_4242_7116# 0.40fF
C157 bs2 a_3772_6162# 0.46fF
C158 vdd a_3016_7093# 0.70fF
C159 a_4468_7082# a_4717_6987# 0.33fF
C160 DAS a_2058_5355# 0.02fF
C161 vdd a_2953_6818# 0.12fF
C162 gnd a_2460_7031# 0.01fF
C163 gnd bs3 0.01fF
C164 D1 D0 0.05fF
C165 vdd a_1835_7060# 0.21fF
C166 gnd a_3995_7848# 0.26fF
C167 vdd a_3309_6058# 2.30fF
C168 a_2992_6187# a_3998_6128# 0.03fF
C169 D1 bs0 0.42fF
C170 vdd a_2060_6135# 4.05fF
C171 vdd OUT_AS0 0.07fF
C172 a_3347_5284# a_3004_5417# 0.33fF
C173 vdd a_3347_5284# 2.13fF
C174 DAS a_1835_7060# 0.15fF
C175 gnd ASA1 0.01fF
C176 vdd a_2624_5257# 0.82fF
C177 gnd a_4242_5505# 0.04fF
C178 vdd a_2968_7563# 0.12fF
C179 gnd a_3998_7076# 0.28fF
C180 DAS a_2060_6135# 0.02fF
C181 gnd bs2 0.01fF
C182 gnd bs0 0.01fF
C183 vdd a_2648_6037# 0.82fF
C184 a_3998_5465# a_4468_5471# 0.28fF
C185 bs1 a_2059_7026# 0.52fF
C186 vdd a_4717_5372# 0.26fF
C187 a_4242_6168# a_3998_6128# 0.23fF
C188 vdd a_3772_6162# 0.24fF
C189 vdd a_3311_7686# 0.82fF
C190 gnd a_2235_7814# 0.16fF
C191 vdd OUT_AS1 0.07fF
C192 D1 a_4239_7888# 0.46fF
C193 vdd a_2059_7026# 2.61fF
C194 vdd a_2237_6174# 0.21fF
C195 vdd a_1834_5389# 0.21fF
C196 vdd C 0.09fF
C197 a_3309_6058# a_3998_6128# 0.03fF
C198 gnd a_4239_7888# 0.04fF
C199 vdd D1 5.99fF
C200 DAS a_2059_7026# 0.02fF
C201 gnd bs1 0.01fF
C202 vdd a_3321_6941# 0.82fF
C203 DAS a_2237_6174# 0.16fF
C204 gnd ASB2 0.01fF
C205 gnd ASA3 0.02fF
C206 DAS a_1834_5389# 0.18fF
C207 vdd a_4717_7789# 0.26fF
C208 vdd a_2235_5394# 0.21fF
C209 vdd a_2966_5267# 0.82fF
C210 gnd a_3004_5417# 1.05fF
C211 D1 DAS 0.36fF
C212 vdd gnd 9.34fF
C213 vdd a_2236_7065# 0.21fF
C214 gnd a_4242_7116# 0.04fF
C215 vdd ASB0 0.18fF
C216 vdd a_3319_6050# 0.82fF
C217 a_3759_5358# a_2058_5355# 0.55fF
C218 gnd ASB3 0.02fF
C219 DAS a_2235_5394# 0.16fF
C220 axorb a_3995_7848# 0.02fF
C221 DAS gnd 0.12fF
C222 vdd a_2461_6140# 0.45fF
C223 a_3309_6058# a_2992_6187# 0.28fF
C224 vdd a_2993_7688# 0.82fF
C225 DAS a_2236_7065# 0.15fF
C226 gnd ASB1 0.01fF
C227 vdd a_4717_6987# 0.26fF
C228 a_3311_6949# a_3016_7093# 0.29fF
C229 bs0 a_2060_7781# 0.75fF
C230 vdd a_2459_5360# 0.45fF
C231 a_3995_7848# a_4465_7854# 0.24fF
C232 a_3309_6058# a_4242_6168# 0.46fF
C233 gnd a_3769_7882# 0.04fF
C234 a_2060_6135# a_2954_6037# 0.03fF
C235 vdd a_2624_6928# 0.82fF
C236 gnd a_1836_6169# 0.11fF
C237 a_3347_5284# a_2058_5355# 0.32fF
C238 a_2599_5132# Gnd 0.43fF
C239 a_2941_5142# Gnd 0.43fF
C240 a_3332_5151# Gnd 0.43fF
C241 a_2624_5257# Gnd 1.09fF
C242 a_2966_5267# Gnd 1.09fF
C243 a_3357_5276# Gnd 1.09fF
C244 C Gnd 0.10fF
C245 a_2459_5360# Gnd 4.42fF
C246 OUT_AS3 Gnd 3.86fF
C247 a_2058_5355# Gnd 6.24fF
C248 a_4717_5372# Gnd 2.22fF
C249 a_4468_5471# Gnd 3.30fF
C250 a_3998_5465# Gnd 3.97fF
C251 a_4242_5505# Gnd 2.18fF
C252 a_3004_5417# Gnd 29.31fF
C253 a_3772_5499# Gnd 2.19fF
C254 a_3759_5358# Gnd 3.48fF
C255 bs3 Gnd 26.01fF
C256 a_2929_5912# Gnd 0.43fF
C257 a_2623_5912# Gnd 0.43fF
C258 a_3294_5925# Gnd 0.43fF
C259 a_3347_5284# Gnd 33.87fF
C260 a_2235_5394# Gnd 1.46fF
C261 ASB3 Gnd 0.08fF
C262 a_1834_5389# Gnd 1.41fF
C263 ASA3 Gnd 0.11fF
C264 a_2954_6037# Gnd 1.09fF
C265 a_2648_6037# Gnd 1.09fF
C266 a_3319_6050# Gnd 1.09fF
C267 a_4717_6036# Gnd 2.22fF
C268 a_4468_6134# Gnd 3.32fF
C269 a_3998_6128# Gnd 4.05fF
C270 a_4242_6168# Gnd 2.18fF
C271 a_3772_6162# Gnd 2.18fF
C272 a_2461_6140# Gnd 4.47fF
C273 OUT_AS2 Gnd 3.93fF
C274 a_2992_6187# Gnd 27.23fF
C275 a_2060_6135# Gnd 10.80fF
C276 bs2 Gnd 27.62fF
C277 a_2599_6803# Gnd 0.43fF
C278 a_3296_6816# Gnd 0.43fF
C279 a_2953_6818# Gnd 0.43fF
C280 a_2237_6174# Gnd 1.42fF
C281 ASB2 Gnd 0.08fF
C282 a_1836_6169# Gnd 1.41fF
C283 ASA2 Gnd 0.11fF
C284 a_3309_6058# Gnd 35.97fF
C285 a_3321_6941# Gnd 1.09fF
C286 a_2624_6928# Gnd 1.09fF
C287 a_2978_6943# Gnd 1.09fF
C288 a_2460_7031# Gnd 4.41fF
C289 OUT_AS1 Gnd 3.83fF
C290 a_4717_6987# Gnd 2.22fF
C291 a_4468_7082# Gnd 3.29fF
C292 a_3998_7076# Gnd 4.08fF
C293 a_4242_7116# Gnd 2.20fF
C294 a_3772_7110# Gnd 2.20fF
C295 a_3016_7093# Gnd 26.88fF
C296 a_2059_7026# Gnd 8.51fF
C297 bs1 Gnd 25.28fF
C298 a_3286_7561# Gnd 0.43fF
C299 a_2650_7558# Gnd 0.43fF
C300 a_2968_7563# Gnd 0.43fF
C301 a_2236_7065# Gnd 1.44fF
C302 ASB1 Gnd 0.08fF
C303 a_1835_7060# Gnd 1.41fF
C304 ASA1 Gnd 0.11fF
C305 a_3311_6949# Gnd 26.27fF
C306 a_3311_7686# Gnd 1.09fF
C307 a_2993_7688# Gnd 1.09fF
C308 a_2675_7683# Gnd 1.09fF
C309 OUT_AS0 Gnd 3.73fF
C310 a_4717_7789# Gnd 2.22fF
C311 a_4465_7854# Gnd 3.12fF
C312 a_3995_7848# Gnd 4.18fF
C313 a_4239_7888# Gnd 2.18fF
C314 a_3769_7882# Gnd 2.17fF
C315 axorb Gnd 13.88fF
C316 a_2459_7780# Gnd 4.62fF
C317 a_2235_7814# Gnd 1.42fF
C318 ASB0 Gnd 0.08fF
C319 a_1836_7815# Gnd 1.41fF
C320 ASA0 Gnd 0.10fF
C321 a_2060_7781# Gnd 10.50fF
C322 bs0 Gnd 29.94fF
C323 gnd Gnd 262.85fF
C324 DAS Gnd 63.04fF
C325 a_1719_8250# Gnd 3.20fF
C326 D1 Gnd 0.47fF
C327 vdd Gnd 511.48fF

.tran 1n 10n
.control
run
set color0 = white
set color1 = black
plot v(OUT_AS0) v(OUT_AS1)+2 v(OUT_AS2)+4 v(OUT_AS3)+6 v(C)+8
.endc
.end