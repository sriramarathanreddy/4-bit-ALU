import os
import subprocess

command = "ngspice Comparator_destination.cir"

mode1 = 'RISE'
mode2 = 'RISE'
mode3 = 'FALL'
mode4 = 'FALL'

fp3 = open("Comparator_delays.txt", 'w')
fp3.close()

# input-G pairs
for i in range(0, 8):
    fp1 = open("ALU.cir", "r")
    data = fp1.read()
    fp1.close()

    SearchText = "* Select line S0"
    ReplaceText = "VS0 S0 Gnd DC 0"
    data = data.replace(SearchText, ReplaceText)

    SearchText = "* Select line S1"
    ReplaceText = "VS1 S1 Gnd DC 'SUPPLY'"
    data = data.replace(SearchText, ReplaceText)

    if i < 4:
        s1 = 'A'+str(i)

        SearchText = "* Supply for A3"
        if i == 3:
            ReplaceText = "VA3 A3 Gnd PULSE('SUPPLY' 0 0ns 100ps 100ps 10ns 20ns)"
        else:
            ReplaceText = "VA3 A3 DC 0"
        data = data.replace(SearchText, ReplaceText)

        SearchText = "* Supply for A2"
        if i == 2:
            ReplaceText = "VA2 A2 Gnd PULSE('SUPPLY' 0 0ns 100ps 100ps 10ns 20ns)"
        else:
            ReplaceText = "VA2 A2 Gnd DC 0"
        data = data.replace(SearchText, ReplaceText)

        SearchText = "* Supply for A1"
        if i == 1:
            ReplaceText = "VA1 A1 Gnd PULSE('SUPPLY' 0 0ns 100ps 100ps 10ns 20ns)"
        else:
            ReplaceText = "VA1 A1 Gnd DC 0"
        data = data.replace(SearchText, ReplaceText)

        SearchText = "* Supply for A0"
        if i == 0:
            ReplaceText = "VA0 A0 Gnd PULSE('SUPPLY' 0 0ns 100ps 100ps 10ns 20ns)"
        else:
            ReplaceText = "VA0 A0 Gnd DC 0"
        data = data.replace(SearchText, ReplaceText)

        SearchText = "* Supply for B3"
        ReplaceText = "VB3 B3 Gnd DC 0"
        data = data.replace(SearchText, ReplaceText)

        SearchText = "* Supply for B2"
        ReplaceText = "VB2 B2 Gnd DC 0"
        data = data.replace(SearchText, ReplaceText)

        SearchText = "* Supply for B1"
        ReplaceText = "VB1 B1 Gnd DC 0"
        data = data.replace(SearchText, ReplaceText)

        SearchText = "* Supply for B0"
        ReplaceText = "VB0 B0 Gnd DC 0"
        data = data.replace(SearchText, ReplaceText)
    else:
        s1 = 'B'+str(i-4)

        SearchText = "* Supply for A3"
        ReplaceText = "VA3 A3 Gnd DC 1"
        data = data.replace(SearchText, ReplaceText)

        SearchText = "* Supply for A2"
        ReplaceText = "VA2 A2 Gnd DC 1"
        data = data.replace(SearchText, ReplaceText)

        SearchText = "* Supply for A1"
        ReplaceText = "VA1 A1 Gnd DC 1"
        data = data.replace(SearchText, ReplaceText)

        SearchText = "* Supply for A0"
        ReplaceText = "VA0 A0 Gnd DC 1"
        data = data.replace(SearchText, ReplaceText)

        SearchText = "* Supply for B3"
        ReplaceText = "VB3 B3 Gnd PULSE('SUPPLY' 0 0ns 100ps 100ps 10ns 20ns)"
        data = data.replace(SearchText, ReplaceText)

        SearchText = "* Supply for B2"
        ReplaceText = "VB2 B2 Gnd PULSE('SUPPLY' 0 0ns 100ps 100ps 10ns 20ns)"
        data = data.replace(SearchText, ReplaceText)

        SearchText = "* Supply for B1"
        ReplaceText = "VB1 B1 Gnd PULSE('SUPPLY' 0 0ns 100ps 100ps 10ns 20ns)"
        data = data.replace(SearchText, ReplaceText)

        SearchText = "* Supply for B0"
        ReplaceText = "VB0 B0 Gnd PULSE('SUPPLY' 0 0ns 100ps 100ps 10ns 20ns)"
        data = data.replace(SearchText, ReplaceText)

    s2 = 'G'

    SearchText = "* Operation"
    ReplaceText = '''
    run
    quit
'''
    data = data.replace(SearchText, ReplaceText)
    fp2 = open("Comparator_destination.cir", "w")
    fp3 = open("Comparator_delays.txt", "a")

    SearchText = "* Text to be Replaced"
    ReplaceText = f'''
.measure tran trise 
+ TRIG v({s1}) VAL = 'SUPPLY/2' {mode3} =1
+ TARG v({s2}) VAL = 'SUPPLY/2' {mode2} =1 

.measure tran tfall 
+ TRIG v({s1}) VAL = 'SUPPLY/2' {mode2} =1 
+ TARG v({s2}) VAL = 'SUPPLY/2' {mode4}=1

.measure tran tpd param = '(trise + tfall)/2' goal = 0
'''
    data = data.replace(SearchText, ReplaceText)

    fp2.write(data)
    fp2.close()

    Simulation = subprocess.run(
        command, shell=True, text=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    if Simulation.returncode == 0:
        output = Simulation.stdout
    else:
        output = ("Command execution failed. at", str(i))

    output = output.split('\n')
    output = output[-4]
    AdditionalText = f" for Input = {s1} and Output = {s2}\n"

    fp3.write(output+AdditionalText)
    fp3.close()

# input-E pairs
for i in range(0, 8):
    fp1 = open("ALU.cir", "r")
    data = fp1.read()
    fp1.close()

    SearchText = "* Select line S0"
    ReplaceText = "VS0 S0 Gnd DC 0"
    data = data.replace(SearchText, ReplaceText)

    SearchText = "* Select line S1"
    ReplaceText = "VS1 S1 Gnd DC 'SUPPLY'"
    data = data.replace(SearchText, ReplaceText)

    SearchText = "* Select line S0"
    ReplaceText = "VS0 S0 Gnd DC 'SUPPLY'"
    data = data.replace(SearchText, ReplaceText)

    if i < 4:
        s1 = 'A'+str(i)

        SearchText = "* Supply for A3"
        ReplaceText = "VA3 A3 Gnd PULSE('SUPPLY' 0 0ns 100ps 100ps 10ns 20ns)"
        data = data.replace(SearchText, ReplaceText)

        SearchText = "* Supply for A2"
        ReplaceText = "VA2 A2 Gnd PULSE('SUPPLY' 0 0ns 100ps 100ps 10ns 20ns)"
        data = data.replace(SearchText, ReplaceText)

        SearchText = "* Supply for A1"
        ReplaceText = "VA1 A1 Gnd PULSE('SUPPLY' 0 0ns 100ps 100ps 10ns 20ns)"
        data = data.replace(SearchText, ReplaceText)

        SearchText = "* Supply for A0"
        ReplaceText = "VA0 A0 Gnd PULSE('SUPPLY' 0 0ns 100ps 100ps 10ns 20ns)"
        data = data.replace(SearchText, ReplaceText)

        SearchText = "* Supply for B3"
        ReplaceText = "VB3 B3 Gnd DC 1"
        data = data.replace(SearchText, ReplaceText)

        SearchText = "* Supply for B2"
        ReplaceText = "VB2 B2 Gnd DC 1"
        data = data.replace(SearchText, ReplaceText)

        SearchText = "* Supply for B1"
        ReplaceText = "VB1 B1 Gnd DC 1"
        data = data.replace(SearchText, ReplaceText)

        SearchText = "* Supply for B0"
        ReplaceText = "VB0 B0 Gnd DC 1"
        data = data.replace(SearchText, ReplaceText)
    else:
        s1 = 'B'+str(i-4)

        SearchText = "* Supply for A3"
        ReplaceText = "VA3 A3 Gnd DC 1"
        data = data.replace(SearchText, ReplaceText)

        SearchText = "* Supply for A2"
        ReplaceText = "VA2 A2 Gnd DC 1"
        data = data.replace(SearchText, ReplaceText)

        SearchText = "* Supply for A1"
        ReplaceText = "VA1 A1 Gnd DC 1"
        data = data.replace(SearchText, ReplaceText)

        SearchText = "* Supply for A0"
        ReplaceText = "VA0 A0 Gnd DC 1"
        data = data.replace(SearchText, ReplaceText)

        SearchText = "* Supply for B3"
        ReplaceText = "VB3 B3 Gnd PULSE('SUPPLY' 0 0ns 100ps 100ps 10ns 20ns)"
        data = data.replace(SearchText, ReplaceText)

        SearchText = "* Supply for B2"
        ReplaceText = "VB2 B2 Gnd PULSE('SUPPLY' 0 0ns 100ps 100ps 10ns 20ns)"
        data = data.replace(SearchText, ReplaceText)

        SearchText = "* Supply for B1"
        ReplaceText = "VB1 B1 Gnd PULSE('SUPPLY' 0 0ns 100ps 100ps 10ns 20ns)"
        data = data.replace(SearchText, ReplaceText)

        SearchText = "* Supply for B0"
        ReplaceText = "VB0 B0 Gnd PULSE('SUPPLY' 0 0ns 100ps 100ps 10ns 20ns)"
        data = data.replace(SearchText, ReplaceText)

    s2 = 'E'

    SearchText = "* Operation"
    ReplaceText = '''
    run
    quit
'''
    data = data.replace(SearchText, ReplaceText)
    fp2 = open("Comparator_destination.cir", "w")
    fp3 = open("Comparator_delays.txt", "a")

    SearchText = "* Text to be Replaced"
    ReplaceText = f'''
.measure tran trise 
+ TRIG v({s1}) VAL = 'SUPPLY/2' {mode1} =1
+ TARG v({s2}) VAL = 'SUPPLY/2' {mode2} =1 

.measure tran tfall 
+ TRIG v({s1}) VAL = 'SUPPLY/2' {mode3} =1 
+ TARG v({s2}) VAL = 'SUPPLY/2' {mode4}=1

.measure tran tpd param = '(trise + tfall)/2' goal = 0
'''
    data = data.replace(SearchText, ReplaceText)

    fp2.write(data)
    fp2.close()

    Simulation = subprocess.run(
        command, shell=True, text=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    if Simulation.returncode == 0:
        output = Simulation.stdout
    else:
        output = ("Command execution failed. at", str(i))

    output = output.split('\n')
    output = output[-4]
    AdditionalText = f" for Input = {s1} and Output = {s2}\n"

    fp3.write(output+AdditionalText)
    fp3.close()

# input-L pairs
for i in range(0, 8):
    fp1 = open("ALU.cir", "r")
    data = fp1.read()
    fp1.close()

    SearchText = "* Select line S0"
    ReplaceText = "VS0 S0 Gnd DC 0"
    data = data.replace(SearchText, ReplaceText)

    SearchText = "* Select line S1"
    ReplaceText = "VS1 S1 Gnd DC 'SUPPLY'"
    data = data.replace(SearchText, ReplaceText)

    SearchText = "* Select line S0"
    ReplaceText = "VS0 S0 Gnd DC 'SUPPLY'"
    data = data.replace(SearchText, ReplaceText)

    if i < 4:
        s1 = 'A'+str(i)
        SearchText = "* Text to be Replaced"
        ReplaceText = f'''
.measure tran trise 
+ TRIG v({s1}) VAL = 'SUPPLY/2' {mode1} =1
+ TARG v({s2}) VAL = 'SUPPLY/2' {mode2} =1 

.measure tran tfall 
+ TRIG v({s1}) VAL = 'SUPPLY/2' {mode3} =1 
+ TARG v({s2}) VAL = 'SUPPLY/2' {mode4}=1

.measure tran tpd param = '(trise + tfall)/2' goal = 0
'''
        data = data.replace(SearchText, ReplaceText)
        SearchText = "* Supply for A3"
        if i == 3:
            ReplaceText = "VA3 A3 Gnd PULSE('SUPPLY' 0 0ns 100ps 100ps 10ns 20ns)"
        else:
            ReplaceText = "VA3 A3 Gnd DC 1"
        data = data.replace(SearchText, ReplaceText)

        SearchText = "* Supply for A2"
        if i == 2:
            ReplaceText = "VA2 A2 Gnd PULSE('SUPPLY' 0 0ns 100ps 100ps 10ns 20ns)"
        else:
            ReplaceText = "VA2 A2 Gnd DC 1"
        data = data.replace(SearchText, ReplaceText)

        SearchText = "* Supply for A1"
        if i == 1:
            ReplaceText = "VA1 A1 Gnd PULSE('SUPPLY' 0 0ns 100ps 100ps 10ns 20ns)"
        else:
            ReplaceText = "VA1 A1 Gnd DC 1"
        data = data.replace(SearchText, ReplaceText)

        SearchText = "* Supply for A0"
        if i == 0:
            ReplaceText = "VA0 A0 Gnd PULSE('SUPPLY' 0 0ns 100ps 100ps 10ns 20ns)"
        else:
            ReplaceText = "VA0 A0 Gnd DC 1"
        data = data.replace(SearchText, ReplaceText)

        SearchText = "* Supply for B3"
        ReplaceText = "VB3 B3 Gnd DC 1"
        data = data.replace(SearchText, ReplaceText)

        SearchText = "* Supply for B2"
        ReplaceText = "VB2 B2 Gnd DC 1"
        data = data.replace(SearchText, ReplaceText)

        SearchText = "* Supply for B1"
        ReplaceText = "VB1 B1 Gnd DC 1"
        data = data.replace(SearchText, ReplaceText)

        SearchText = "* Supply for B0"
        ReplaceText = "VB0 B0 Gnd DC 1"
        data = data.replace(SearchText, ReplaceText)

        SearchText = "* Text to be Replaced"
        ReplaceText = f'''
.measure tran trise 
+ TRIG v({s1}) VAL = 'SUPPLY/2' {mode3} =1
+ TARG v({s2}) VAL = 'SUPPLY/2' {mode2} =1 

.measure tran tfall 
+ TRIG v({s1}) VAL = 'SUPPLY/2' {mode2} =1 
+ TARG v({s2}) VAL = 'SUPPLY/2' {mode4}=1

.measure tran tpd param = '(trise + tfall)/2' goal = 0
'''
        data = data.replace(SearchText, ReplaceText)
    else:
        s1 = 'B'+str(i-4)

        SearchText = "* Supply for A3"
        ReplaceText = "VA3 A3 Gnd DC 0"
        data = data.replace(SearchText, ReplaceText)

        SearchText = "* Supply for A2"
        ReplaceText = "VA2 A2 Gnd DC 0"
        data = data.replace(SearchText, ReplaceText)

        SearchText = "* Supply for A1"
        ReplaceText = "VA1 A1 Gnd DC 0"
        data = data.replace(SearchText, ReplaceText)

        SearchText = "* Supply for A0"
        ReplaceText = "VA0 A0 Gnd DC 0"
        data = data.replace(SearchText, ReplaceText)

        SearchText = "* Supply for B3"
        ReplaceText = "VB3 B3 Gnd PULSE('SUPPLY' 0 0ns 100ps 100ps 10ns 20ns)"
        data = data.replace(SearchText, ReplaceText)

        SearchText = "* Supply for B2"
        ReplaceText = "VB2 B2 Gnd PULSE('SUPPLY' 0 0ns 100ps 100ps 10ns 20ns)"
        data = data.replace(SearchText, ReplaceText)

        SearchText = "* Supply for B1"
        ReplaceText = "VB1 B1 Gnd PULSE('SUPPLY' 0 0ns 100ps 100ps 10ns 20ns)"
        data = data.replace(SearchText, ReplaceText)

        SearchText = "* Supply for B0"
        ReplaceText = "VB0 B0 Gnd PULSE('SUPPLY' 0 0ns 100ps 100ps 10ns 20ns)"
        data = data.replace(SearchText, ReplaceText)

        SearchText = "* Text to be Replaced"
        ReplaceText = f'''
        .measure tran trise 
        + TRIG v({s1}) VAL = 'SUPPLY/2' {mode1} =1
        + TARG v({s2}) VAL = 'SUPPLY/2' {mode2} =1 

        .measure tran tfall 
        + TRIG v({s1}) VAL = 'SUPPLY/2' {mode3} =1 
        + TARG v({s2}) VAL = 'SUPPLY/2' {mode4}=1

        .measure tran tpd param = '(trise + tfall)/2' goal = 0
        '''
        data = data.replace(SearchText, ReplaceText)
    s2 = 'L'

    SearchText = "* Operation"
    ReplaceText = '''
    run
    quit
'''
    data = data.replace(SearchText, ReplaceText)
    fp2 = open("Comparator_destination.cir", "w")
    fp3 = open("Comparator_delays.txt", "a")

    fp2.write(data)
    fp2.close()

    Simulation = subprocess.run(
        command, shell=True, text=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    if Simulation.returncode == 0:
        output = Simulation.stdout
    else:
        output = ("Command execution failed. at", str(i))

    output = output.split('\n')
    output = output[-4]
    AdditionalText = f" for Input = {s1} and Output = {s2}\n"

    fp3.write(output+AdditionalText)
    fp3.close()
    os.remove("Comparator_destination.cir")
