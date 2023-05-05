# -*- coding: utf-8 -*-

from numpy import loadtxt

t = loadtxt('problem13_number.txt')
S = 0
for tall in t:
    S += tall

i = int(S) # Gjør om til heltall
t = str(i) # Gjør om til tekststreng
print(t[:10]) # Finner 10 første siffer


#Answer: 5537376230