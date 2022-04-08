# pach.py:
# parse and cheat text possibility checker
#

import re
from collections import defaultdict
from math import factorial

parse_poss = defaultdict(int)
cheat_poss = defaultdict(int)

def object_of(my_string):
    my_string = re.sub("\".*", "", my_string)
    my_string = re.sub("^.*?of +", "", my_string)
    my_string = re.sub(" +is +$", "", my_string)
    return my_string

def poss_from_cheat(sentence):
    if '"' not in sentence:
        return -1
    quote_ary = sentence.split('"')
    reading = quote_ary[1].lower().replace('*', '')
    if reading.count('?'):
        return -2
    consonant_poss = factorial(reading.count('r')) * factorial(reading.count('y')) * factorial(reading.count('o')) * factorial(reading.count('p')) * factorial(reading.count('g')) * factorial(reading.count('b'))
    return consonant_poss

def poss_from_parse(sentence):
    if '"' not in sentence:
        return -1
    quote_ary = sentence.split('"')
    reading = quote_ary[1].lower().replace('*', '')
    should_be_empty = reading.replace('r', '').replace('y', '').replace('o', '')
    if len(should_be_empty) > 0:
        return -2
    return factorial(reading.count('r')) * factorial(reading.count('y'))
    return settler_poss(quote_ary[1])

def process_sentences(my_line):
    ary = my_line.split(".")
    for sent in ary:
        if 'a-text' in sent:
            temp = poss_from_parse(sent)
            parse_poss[object_of(sent)] = temp
            print("#parse-text poss:", temp)
        if 'b-text' in sent:
            temp = poss_from_cheat(sent)
            print("#cheat-text poss:", temp)
            cheat_poss[object_of(sent)] = temp

with open("story.ni") as file:
    for (line_count, line) in enumerate (file, 1):
        if line.startswith("\t"):
            continue
        if 'a-text of' in line and 'b-text of' in line:
            print(line_count, line.strip())
            process_sentences(line)

pnc = set(parse_poss) - set(cheat_poss)

if len(pnc) > 0:
    print("parse not cheat", pnc)

cnp = set(cheat_poss) - set(parse_poss)

if len(cnp) > 0:
    print("parse not cheat", cnp)

c_and_p = set(cheat_poss).union(set(parse_poss))

x = set(parse_poss.values())

for y in sorted(x, reverse=True):
    print(y, [a for a in parse_poss if parse_poss[a] == y])

