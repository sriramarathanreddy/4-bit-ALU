arr = []
with open("ADDER_delays.txt", "r") as f:
    for lin in f.readlines():
        arr.append(lin + "for ADDER Circiut")

with open("SUBTRACTOR_delays.txt", "r") as f:
    for lin in f.readlines():
        arr.append(lin + "for SUBTRACTOR Circuit")

with open("Comparator_delays.txt", "r") as f:
    for lin in f.readlines():
        arr.append(lin+"for Comparator Circuit")

with open("AND_delays.txt", "r") as f:
    for lin in f.readlines():
        arr.append(lin + "gfor AND Circuit")

a = max(arr, key=lambda x: float(x[23:35]))
print(a)
