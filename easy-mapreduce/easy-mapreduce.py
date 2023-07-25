#!/usr/bin/env python3
import sys
import datetime
import os

def file_len(fname):
    with open(fname) as f:
        for i, l in enumerate(f):
            pass
    return i + 1

if len(sys.argv)!=2:
    print(f'Usage: {sys.argv[0]} <file to process>')
    quit()

file = sys.argv[1]
mapped_dict = {}
try:
#    print(file_len("a-tale-of-two-cities.txt"))
#    with open(file, encoding = 'utf-8') as f:
    with open("../input-text/a-tale-of-two-cities_clean_short.txt", encoding = 'utf-8') as f:
        print(file)
        d = f.read()
        l = d.split()
        for x in l:
            if x not in mapped_dict:
                mapped_dict[x] = 1
            else:
                mapped_dict[x] = mapped_dict[x] + 1
        tup_view = mapped_dict.items()
        tup_list = list(tup_view)
        with open("results.txt","w",encoding="utf-8") as ff:
            for y in tup_list:
                ff.write(str(y)+"\n")

except IOError as e:
    print(IOError,e)
