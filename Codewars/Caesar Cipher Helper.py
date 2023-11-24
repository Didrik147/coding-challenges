# -*- coding: utf-8 -*-
"""
Write a class that, when given a string, will return an uppercase string with each letter shifted forward in the alphabet by however many spots the cipher was initialized to.
"""

class CaesarCipher(object):
    def __init__(self, shift):
        self.alphabet = 'abcdefghijklmnopqrstuvwxyz'
        self.shift = shift

    def encode(self, st):
        st = st.upper()
        
        
        
    def decode(self, st):
        pass