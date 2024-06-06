* SPICE3 file created from FA.ext - technology: scmos

.include TSMC_180nm.txt
.param SUPPLY = 1.8
.global Gnd
Vdd VDD Gnd 'SUPPLY'

.option scale=0.09u

vinA A Gnd PULSE('SUPPLY' 0 0ns 100ps 100ps 5n 10n)
VinB B Gnd PULSE('SUPPLY' 0 0ns 100ps 100ps 10n 20n)
VinC Cin Gnd PULSE('SUPPLY' 0 0ns 100ps 100ps 20n 40n)

M1000 a_362_235# A a_375_183# Gnd CMOSN w=20 l=4
+  ad=220 pd=62 as=440 ps=124
M1001 S1 a_431_10# Cin VDD CMOSP w=10 l=2
+  ad=140 pd=68 as=70 ps=34
M1002 C a_762_298# VDD w_855_331# CMOSP w=20 l=2
+  ad=220 pd=62 as=2040 ps=632
M1003 a_313_43# A Gnd Gnd CMOSN w=10 l=4
+  ad=60 pd=32 as=1780 ps=562
M1004 a_762_298# a_473_226# a_773_344# w_767_338# CMOSP w=20 l=2
+  ad=220 pd=62 as=440 ps=124
M1005 a_579_235# Cin VDD VDD CMOSP w=20 l=2
+  ad=440 pd=124 as=0 ps=0
M1006 a_579_235# a_431_10# VDD VDD CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1007 a_638_41# Cin Gnd Gnd CMOSN w=10 l=4
+  ad=120 pd=64 as=0 ps=0
M1008 Gnd a_473_226# a_762_298# Gnd CMOSN w=20 l=4
+  ad=0 pd=0 as=440 ps=124
M1009 a_473_226# a_362_235# Gnd Gnd CMOSN w=20 l=4
+  ad=440 pd=124 as=0 ps=0
M1010 a_568_45# a_431_10# Gnd Gnd CMOSN w=10 l=4
+  ad=60 pd=32 as=0 ps=0
M1011 Gnd a_473_226# a_762_298# Gnd CMOSN w=20 l=4
+  ad=0 pd=0 as=0 ps=0
M1012 a_375_183# B Gnd Gnd CMOSN w=20 l=4
+  ad=0 pd=0 as=0 ps=0
M1013 a_431_10# a_313_43# B Gnd CMOSN w=10 l=4
+  ad=120 pd=64 as=60 ps=32
M1014 VDD Cin a_638_41# VDD CMOSP w=10 l=2
+  ad=0 pd=0 as=140 ps=68
M1015 a_473_226# a_579_235# VDD w_671_220# CMOSP w=20 l=2
+  ad=440 pd=124 as=0 ps=0
M1016 VDD a_431_10# a_568_45# VDD CMOSP w=10 l=2
+  ad=0 pd=0 as=70 ps=34
M1017 C a_762_298# Gnd Gnd CMOSN w=20 l=4
+  ad=220 pd=62 as=0 ps=0
M1018 a_383_39# A a_431_10# Gnd CMOSN w=10 l=4
+  ad=120 pd=64 as=0 ps=0
M1019 a_362_235# B VDD VDD CMOSP w=20 l=2
+  ad=440 pd=124 as=0 ps=0
M1020 a_579_235# a_431_10# a_592_183# Gnd CMOSN w=20 l=4
+  ad=220 pd=62 as=440 ps=124
M1021 a_638_41# a_568_45# S1 VDD CMOSP w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1022 a_383_39# B Gnd Gnd CMOSN w=10 l=4
+  ad=0 pd=0 as=0 ps=0
M1023 a_431_10# A B VDD CMOSP w=10 l=2
+  ad=140 pd=68 as=70 ps=34
M1024 VDD B a_383_39# VDD CMOSP w=10 l=2
+  ad=0 pd=0 as=140 ps=68
M1025 a_473_226# a_579_235# Gnd Gnd CMOSN w=20 l=4
+  ad=0 pd=0 as=0 ps=0
M1026 a_592_183# Cin Gnd Gnd CMOSN w=20 l=4
+  ad=0 pd=0 as=0 ps=0
M1027 a_362_235# A VDD VDD CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1028 a_773_344# a_473_226# VDD VDD CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1029 a_383_39# a_313_43# a_431_10# VDD CMOSP w=10 l=2
+  ad=0 pd=0 as=0 ps=0
M1030 a_638_41# a_431_10# S1 Gnd CMOSN w=10 l=4
+  ad=0 pd=0 as=120 ps=64
M1031 a_473_226# a_362_235# VDD w_454_220# CMOSP w=20 l=2
+  ad=0 pd=0 as=0 ps=0
M1032 VDD A a_313_43# VDD CMOSP w=10 l=2
+  ad=0 pd=0 as=70 ps=34
M1033 S1 a_568_45# Cin Gnd CMOSN w=10 l=4
+  ad=0 pd=0 as=60 ps=32
C0 a_762_298# w_855_331# 0.06fF
C1 S1 VDD 0.19fF
C2 a_473_226# w_454_220# 0.06fF
C3 VDD w_454_220# 0.06fF
C4 S1 a_568_45# 0.09fF
C5 w_671_220# a_579_235# 0.06fF
C6 A a_362_235# 0.47fF
C7 a_362_235# a_375_183# 0.21fF
C8 Gnd a_383_39# 0.07fF
C9 Gnd C 0.14fF
C10 A Gnd 0.27fF
C11 VDD a_383_39# 0.24fF
C12 a_592_183# a_579_235# 0.21fF
C13 C VDD 0.21fF
C14 A VDD 0.40fF
C15 a_313_43# Gnd 0.25fF
C16 Gnd a_375_183# 0.21fF
C17 a_313_43# VDD 0.17fF
C18 S1 a_638_41# 0.23fF
C19 Cin a_592_183# 0.19fF
C20 a_431_10# a_383_39# 0.23fF
C21 a_313_43# a_431_10# 0.09fF
C22 w_671_220# a_473_226# 0.06fF
C23 Cin a_579_235# 0.10fF
C24 w_671_220# VDD 0.06fF
C25 VDD w_855_331# 0.06fF
C26 a_773_344# w_767_338# 0.09fF
C27 B A 0.01fF
C28 B a_375_183# 0.19fF
C29 Gnd a_592_183# 0.21fF
C30 a_762_298# a_473_226# 0.75fF
C31 a_762_298# Gnd 0.41fF
C32 VDD a_579_235# 0.67fF
C33 Cin Gnd 0.10fF
C34 Cin VDD 1.02fF
C35 a_431_10# a_579_235# 0.47fF
C36 a_362_235# VDD 0.74fF
C37 Cin a_431_10# 0.01fF
C38 Gnd a_473_226# 0.59fF
C39 VDD a_473_226# 0.69fF
C40 Gnd VDD 0.07fF
C41 a_568_45# Gnd 0.25fF
C42 a_568_45# VDD 0.17fF
C43 B a_362_235# 0.10fF
C44 a_762_298# a_773_344# 0.27fF
C45 Gnd a_431_10# 0.39fF
C46 a_431_10# VDD 0.60fF
C47 a_568_45# a_431_10# 0.14fF
C48 a_313_43# A 0.14fF
C49 a_762_298# w_767_338# 0.06fF
C50 B Gnd 0.10fF
C51 B VDD 0.94fF
C52 Gnd a_638_41# 0.07fF
C53 a_638_41# VDD 0.24fF
C54 C w_855_331# 0.06fF
C55 B a_431_10# 0.23fF
C56 Cin S1 0.23fF
C57 a_773_344# a_473_226# 0.05fF
C58 a_773_344# VDD 0.34fF
C59 a_362_235# w_454_220# 0.06fF
C60 w_767_338# a_473_226# 0.06fF
C61 a_638_41# Gnd 0.30fF
C62 a_568_45# Gnd 2.06fF
C63 a_383_39# Gnd 0.30fF
C64 a_313_43# Gnd 2.06fF
C65 S1 Gnd 0.63fF
C66 a_592_183# Gnd 0.20fF
C67 a_579_235# Gnd 0.78fF
C68 Cin Gnd 3.38fF
C69 a_431_10# Gnd 4.46fF
C70 Gnd Gnd 6.90fF
C71 C Gnd 0.13fF
C72 a_762_298# Gnd 0.74fF
C73 a_375_183# Gnd 0.20fF
C74 a_362_235# Gnd 0.05fF
C75 B Gnd 3.00fF
C76 A Gnd 3.51fF
C77 a_773_344# Gnd 0.13fF
C78 a_473_226# Gnd 5.55fF
C79 w_671_220# Gnd 1.16fF
C80 w_454_220# Gnd 1.16fF
C81 w_855_331# Gnd 1.16fF
C82 w_767_338# Gnd 1.16fF
C83 VDD Gnd 16.59fF

.tran 1n 40n
.control
run
set color0 = white
set color1 = black
plot v(A) v(B)+2 v(Cin)+4 v(S1)+6 v(C)+8
.endc
.end