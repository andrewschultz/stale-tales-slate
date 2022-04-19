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

consonants = 'bcdfghjklmnpqrstvwxz'
vowels = 'aeiou'
ys = 'y'

parse_threshold = 6
cheat_threshold = 12

def freq_print(my_dict, header = 'dict'):
    count = 0
    total = len(my_dict)
    x = set(my_dict.values())
    print('=' * 50, header, '=' * 50)
    for y in sorted(x, reverse=True):
        ary = [a for a in my_dict if my_dict[a] == y]
        count += len(ary)
        print("{} ({}/{}) {}".format(y, count, total, ary))

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
        else:
            return False
    return True

def b_text_poss(my_string, my_reading, my_poss_string = '', smart_check = False, note_successes = False):
    my_string = my_string.lower()
    my_reading = my_reading.lower()
    if not my_poss_string:
        my_poss_string = my_string
    if smart_check and '?' in my_reading: # to implement later
        return -3
    if not smart_check:
        print("checking permutations of {} with reading {} and possibility string {}.".format(my_string, my_reading, my_poss_string))
        return_array = []
        a = itertools.permutations(list(my_string.lower()))
        #print("!", list(a))
        for my_word in a:
            print("!!", my_word, my_string, my_poss_string, my_reading)
            if match_up(my_poss_string, my_reading, my_word):
                return_array.append(''.join(my_word))
                if note_successes:
                    print(''.join(my_word), "WORKS!")
        return return_array
    total = 1
    vowel_filter = vowel_string = vowel_reading = ''
    vowel_poss = ''.join(x for x in my_string if x in vowels)
    for a in range(0, len(my_string)):
        if my_reading[a] == 'y' or my_reading[a] == 'g':
            vowel_string += my_string[a]
            vowel_reading += my_reading[a]
            vowel_filter += '+'
        else:
            vowel_filter += '-'
    cons_filter = cons_string = cons_reading = ''
    cons_poss = ''.join(x for x in my_string if x in consonants)
    for a in range (0, len(my_string)):
        if my_reading[a] == 'r' or my_reading[a] == 'p':
            cons_string += my_string[a]
            cons_reading += my_reading[a]
            cons_filter += '+'
        else:
            cons_filter += '-'
    print(vowel_string, vowel_reading, cons_string, cons_reading)
    t1 = b_text_poss(vowel_poss, vowel_reading, my_poss_string = vowel_string, smart_check = False, note_successes = False)
    t2 = b_text_poss(cons_poss, cons_reading, my_poss_string = cons_string, smart_check = False, note_successes = False)
    print(t1, t2)
    return

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
    consonant_poss = factorial(reading.count('r')) * factorial(reading.count('y')) * factorial(reading.count('o')) * factorial(reading.count('p')) * factorial(reading.count('g')) * factorial(reading.count('b')) * (2 ** reading.count('?'))
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
    temp1 = -1
    temp2 = -1
    for sent in ary:
        if 'a-text' in sent:
            temp1 = poss_from_parse(sent)
            parse_poss[object_of(sent)] = temp1
            print("#parse-text poss:", temp1)
            if temp1 <= parse_threshold:
                print(" {} is parse-spoilable.".format(object_of(sent)))
        if 'b-text' in sent:
            temp2 = poss_from_cheat(sent)
            print("#cheat-text poss:", temp2)
            cheat_poss[object_of(sent)] = temp2
            if temp2 <= cheat_threshold:
                print(" {} is cheat-spoilable.".format(object_of(sent)))

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

freq_print(parse_poss, 'parse-spoilable notes (<= 12 and a-text)')
freq_print(cheat_poss, 'cheat-spoilable notes (<= 6 and b-text)')
