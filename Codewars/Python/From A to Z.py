"""
"a-z" ➞ "abcdefghijklmnopqrstuvwxyz"
"h-o" ➞ "hijklmno"
"Q-Z" ➞ "QRSTUVWXYZ"
"J-J" ➞ "J"
"""

def gimme_the_letters(sp):
    alphabet = 'abcdefghijklmnopqrstuvwxyz'
    s, p = sp.split('-')
    
    if s.isupper():
        alphabet = alphabet.upper()
    
    for i in range(len(alphabet)):
        letter = alphabet[i]
        
        if letter == s:
            start = i
            
        if letter == p:
            end = i
    
    return alphabet[start:end+1]
    
    
print(gimme_the_letters("a-z"))