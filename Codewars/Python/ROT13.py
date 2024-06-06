# Work in progress (not done)

import string

def rot13(message):
    alphabet = list(string.ascii_lowercase)
    
    output = ""
    
    for letter in message:
        if letter.lower() in alphabet:
            i = alphabet.index(letter.lower())


print(rot13("EBG13 rknzcyr."))
print(rot13("This is my first ROT13 excercise!"))