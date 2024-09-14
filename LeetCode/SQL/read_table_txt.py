
with open('table.txt', 'r') as file:
    line = file.readline()
    print(line.split('|'))