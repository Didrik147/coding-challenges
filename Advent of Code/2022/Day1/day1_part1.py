# -*- coding: utf-8 -*-

filename = "input.txt"


elves = []


with open(filename, 'r') as f:
    c = 0
    
    for row in f:
        line = row.strip()
        
        if len(line) > 0:
            c += int(line)
            
        else:
            elves.append(c)
            c = 0

print(elves)        


k = 0
m = elves[k]


for i in range(1, len(elves)):
    if elves[i] > m:
        m = elves[i]
        k = i

print()
print(f"Elf number {k+1} carries the most calories")
print(f"That elf is carrying {elves[k]} calories")