# -*- coding: utf-8 -*-
"""
14. Longest Common Prefix

Write a function to find the longest common prefix string amongst an array of strings.

If there is no common prefix, return an empty string "".

"""
def longestCommonPrefix(strs):
    # w is window length
    for w in range(1, 300):
        prefixes = []
        for s in strs:
            prefix = s[0:w]
            prefixes.append(prefix)
        
            #print(prefix)
        
        if len(set(prefixes)) != 1:
            prefix = prefixes[0][0:w-1]
            return prefix
        
    return prefix


print(longestCommonPrefix(["flower","flow","flight"])) 
#print(longestCommonPrefix(["dog","racecar","car"]))    
#print(longestCommonPrefix([""]))    
#print(longestCommonPrefix(["a"]))    