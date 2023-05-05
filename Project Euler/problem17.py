# -*- coding: utf-8 -*-

import inflect

engine = inflect.engine()
""""
word = engine.number_to_words(115) 

print(word)
word = word.replace('-', '')
word = word.replace(' ', '')
print(word)
print(len(word))
"""
S = 0

for i in range(1,1000+1):
    word = engine.number_to_words(i)
    word = word.replace('-', '')
    word = word.replace(' ', '')
    S += len(word)

print(S)