# pach.py:
# parse and cheat text possibility checker
#

from math import factorial

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
    should_be_empty = reading.replace('r', '').replace('y', '')
    if len(should_be_empty) > 0:
        return -2
    return factorial(reading.count('r')) * factorial(reading.count('y'))
    return settler_poss(quote_ary[1])

def process_sentences(my_line):
    ary = my_line.split(".")
    for sent in ary:
        if 'a-text' in sent:
            print("#parse-text poss:", poss_from_parse(sent))
        if 'b-text' in sent:
            print("#cheat-text poss:", poss_from_cheat(sent))

with open("story.ni") as file:
    for (line_count, line) in enumerate (file, 1):
        if 'a-text of' in line and 'b-text of' in line:
            print(line_count, line.strip())
            process_sentences(line)
