# pach.py:
# parse and cheat text possibility checker
#

import sys
import itertools
import re
from collections import defaultdict
from math import factorial

parse_poss = defaultdict(int)
cheat_poss = defaultdict(int)

consonants = 'bcdfghjklmnpqrstvwxyz'
vowels = 'aeiou'
ys = 'y'

def match_up(scanned, scan_results, candidate, ambiguous_forced_matches = []):
    for x in range(0, len(scanned)):
        if scan_results[x] == 'r':
            if candidate[x] not in consonants:
                return False
            if scanned[x] == candidate[x]:
                return False
        elif scan_results[x] == 'p':
            if candidate[x] not in consonants:
                return False
            if scanned[x] != candidate[x]:
                return False
        elif scan_results[x] == 'y':
            if candidate[x] not in vowels:
                return False
            if scanned[x] == candidate[x]:
                return False
        elif scan_results[x] == 'g':
            if candidate[x] not in vowels:
                return False
            if scanned[x] != candidate[x]:
                return False
        elif scan_results[x] == 'o':
            if candidate[x] not in ys:
                return False
            if scanned[x] == candidate[x]:
                return False
        elif scan_results[x] == 'b':
            if candidate[x] not in ys:
                return False
            if scanned[x] != candidate[x]:
                return False
    return True

def b_text_poss(my_string, my_reading, smart_check = False, note_successes = False):
    my_string = my_string.lower()
    my_reading = my_reading.lower()
    if not smart_check:
        total = 0
        a = itertools.permutations(list(my_string.lower()))
        for my_word in a:
            if match_up(my_string, my_reading, my_word):
                total += 1
                if note_successes:
                    print(''.join(my_word), "WORKS!")
        return total
    return total

print(b_text_poss('tyson', 'rryro'))
sys.exit()

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

