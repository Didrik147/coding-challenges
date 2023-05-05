# -*- coding: utf-8 -*-

def factorial(n):
    p = 1
    while n > 1:
        p *= n
        n -= 1
        
    return p

number = factorial(100)
text = str(number)
S = 0
for digit in text:
    S += int(digit)
    
print(S)
    