#!/usr/bin/env python

import csv

mapping = {}

f = open("taxonomy.txtree","r")
data = f.read() # string of all file content

def read_mapping(fn="authors.tsv"):
    with open(fn) as fd:
        rd = csv.reader(fd, delimiter="\t", quotechar='"')
        for row in rd:
            mapping[row[0]]=row[1]

def replace_all(text, dic):
    for i, j in dic.items():
        text = text.replace(i, j) 
    return text

read_mapping()
data = replace_all(data,mapping)

with open("out.txtree", "x", encoding='utf-8') as f:
  f.write(data)