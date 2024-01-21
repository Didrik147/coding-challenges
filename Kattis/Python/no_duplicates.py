# -*- coding: utf-8 -*-

def duplicates(s):
  s = str.split(s)
  L = len(s)
  
  if L == len(set(s)):
    print("yes")
  else:
    print("no")
  
  

"""
s1 = "THE RAIN IN SPAIN"
s2 = "IN THE RAIN AND THE SNOW"
s3 = "THE RAIN IN SPAIN IN THE PLAIN"

duplicates(s1)
duplicates(s2)
duplicates(s3)
"""

s = input("")
duplicates(s)