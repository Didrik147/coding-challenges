# -*- coding: utf-8 -*-

from numpy import loadtxt

filename = "input.txt"

data = loadtxt(filename, 'int')

#print(data)

nlarger = 0

for i in range(1, len(data)):
    if data[i] > data[i-1]:
        #print("increase")
        nlarger += 1
        
print(nlarger)