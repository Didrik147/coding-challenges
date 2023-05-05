# -*- coding: utf-8 -*-
"""
Julenissen har fått ei ønskeliste fra Zimbabwe skrevet på språket shona. Han tar fram sin Shona-English ordliste og gjør seg klar til å oversette brevet. Til sin store forskrekkelse innser nissen at brevet er skrevet fullstendig uten mellomrom! Kan du likevel hjelpe nissen med å oversette brevet?

Oversett brevet til engelsk med mellomrom mellom hvert ord. Svaret på oppgaven er lengden av denne teksten.

Hvis brevet er "inichidomunhuimbwa", kan dette i følge ordlista deles opp som "ini chido munhu imbwa", og oversettelsen blir da "I want a dog". Svaret er da lengden på denne teksten som er 12.
"""

# Lager ordbok
ordbok = {}

with open('dictionary.txt', 'r') as f:
    for linje in f:
        rad = linje.strip()
        rad = rad.split(',')
        ordbok[rad[0]] = rad[1]


with open('letter.txt', 'r') as f:
    brev = f.read()
    
i = 0

oversatt = ''

#brev = 'inichidomunhuimbwa'

while len(brev) > 0:
    shona = brev[0:len(brev)-i]
    if shona in ordbok.keys():
        eng = ordbok[shona]
        oversatt += eng
        oversatt += ' '
        #print(shona, "betyr", eng)
        brev = brev[len(shona)::]
        i = 0
    else:
        i += 1
        
    if i > len(brev):
        print(brev)
        break
        

print()
print(oversatt)
print(len(oversatt)-1)