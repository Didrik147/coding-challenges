# -*- coding: utf-8 -*-

from numpy import loadtxt

filename = "input.txt"

data = loadtxt(filename, 'int')

#print(data)

nlarger = 0

w = sum(data[0:0+3])
print(w)
L = [w]


for i in range(1, len(data)-2, 1):
    w = sum(data[i:i+3])
    print(w)
    
    L.append(w)
    
    
    if L[-1] > L[-2]:
        print("increase")
        nlarger += 1
        
print(nlarger)