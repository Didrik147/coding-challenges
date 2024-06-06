def spin_words(sentence):
    words = sentence.split(" ")
    output = ""
    for word in words:
        if len(word) >= 5:
            output += word[::-1]
        else:
            output += word
            
        output += " "
    
    return output[:-1]


print(spin_words("Hey fellow warriors"))
print(spin_words("This is a test"))
print(spin_words("This is another test"))