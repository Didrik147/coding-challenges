# -*- coding: utf-8 -*-

"""
https://open.kattis.com/problems/echoechoecho
"""

word = input('').strip()

for i in range(3):
    if i < 3:
        print(word, end=" ")
    else:
        print(word)