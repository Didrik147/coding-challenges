def camel_case(s):
    words = s.split(" ")
    output = ""
    for word in words:
        output += word.capitalize()

    return output

print(camel_case("hello case"))
print(camel_case("camel case word"))