import os
import subprocess

command = "ngspice AND_destination.cir"

fp3 = open("AND_delays.txt", 'w')
fp3.close()


for j in range(0, 8):
    if j < 4:
        s1 = 'A'+str(j)
    else:
        s1 = 'B'+str(j-4)
    for i in range(0, 4):
        s2 = 'OUT_AND'+str(i)

        fp1 = open("ALU.cir", "r")
        data = fp1.read()
        fp1.close()

        SearchText = "* Select line S0"
        ReplaceText = "VS0 S0 Gnd DC 'SUPPLY'"
        data = data.replace(SearchText, ReplaceText)

        SearchText = "* Select line S1"
        ReplaceText = "VS1 S1 Gnd DC 'SUPPLY'"
        data = data.replace(SearchText, ReplaceText)

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

        SearchText = "* Operation"
        ReplaceText = '''
        run
        quit
        '''
        data = data.replace(SearchText, ReplaceText)

        fp2 = open("AND_destination.cir", "w")
        fp3 = open("AND_delays.txt", "a")

        mode1 = 'RISE'
        mode2 = 'RISE'
        mode3 = 'FALL'
        mode4 = 'FALL'

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
            output = ("Command execution failed. at", str(i), str(j))

        output = output.split('\n')
        output = output[-4]
        AdditionalText = f" for Input = {s1} and Output = {s2}\n"

        fp3.write(output+AdditionalText)
        fp3.close()
        os.remove("AND_destination.cir")
