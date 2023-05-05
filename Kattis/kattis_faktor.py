# -*- coding: utf-8 -*-
"""
Created on Mon Jul  9 23:23:10 2018

@author: Didrik
"""

from math import *

A, I = input().split()
A = int(A)
I = int(I)

test = False
C = 1

while(test == False):
  #print("C =", C)
  #print("I =", C/A)
  
  if(ceil(C/A) == I):
    test = True
    print(C)
  else:
    C += 1
