import string

def rot13(message):
    alphabet_lower = list(string.ascii_lowercase)
    alphabet_upper = list(string.ascii_uppercase)
    
    output = ""
    
    for letter in message:
        if letter in alphabet_lower:
            i = alphabet_lower.index(letter)
            output += alphabet_lower[(i+13)%26]
            
        elif letter in alphabet_upper:
            i = alphabet_upper.index(letter)
            output += alphabet_upper[(i+13)%26]
            
        else:
            output += letter

    return output

print(rot13("EBG13 rknzcyr."))
print(rot13("This is my first ROT13 excercise!"))
print(rot13("test"))