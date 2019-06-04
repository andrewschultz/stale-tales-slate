#ans.py : anagram search

from collections import defaultdict
import sys
import re
import time

red_note = ["--------", "RED TEXT"]

ana_types = defaultdict(int)
first_line = defaultdict(int)

cmd_count = 1
max_lines = 0

searches = []
default_ana = "compile"

def letters_only(x):
    return re.sub("[^a-z]", "", x.lower())

def redtext(word1, word2):
    word2 = letters_only(word2)
    word1 = letters_only(word1)
    for x in range(0, len(word2)):
        if word2[x] == word1[x]: return False
    return True

def to_alf(q):
    return "".join(sorted(list(q)))

def alf_compare(compare_word, compare_array, line_count, line, start_entry, end_entry):
    # print(compare_word, compare_array, line_count, line, start_entry, end_entry)
    temp1 = "".join(compare_array)
    temp2 = to_alf(temp1)
    if compare_word == temp2:
        if ana == temp1: return
        # print("Found a match:", compare_word, compare_array, line_count, line.strip(), start_entry, end_entry)
        space_thing = ' '.join(compare_array)
        ana_types[space_thing] += 1
        if temp1 not in first_line: first_line[temp1] = line_count

def look_for_line(ana_alf, l):
    my_str = to_alf(ana)
    needed_length = len(my_str)
    if not l: return
    l = re.sub("\[[^\]]*\]", " ", l.lower())
    q = re.split("[^\w]+", l)
    total_length = 0
    my_words = []
    # print(q)
    for i in range(0, len(q)):
        my_words.append(q[i])
        total_length += len(q[i])
        # print(total_length, needed_length, my_words)
        while total_length > needed_length:
            total_length -= len(my_words[0])
            # print("Popping", my_words[0])
            my_words.pop(0)
        if total_length == needed_length:
            alf_compare(ana_alf, my_words, line_count, line, i - len(my_words) + 1, i)

start_time = time.time()

while cmd_count < len(sys.argv):
    searches.append(sys.argv[cmd_count])
    cmd_count += 1

if not len(searches):
    print("Going with default,", default_ana)
    searches.append(default_ana)

for ana in searches:
    ana_alf = to_alf(ana)
    ana_types.clear()
    first_line.clear()

    with open("story.ni") as file:
        for (line_count, line) in enumerate(file, 1):
            if line.startswith("volume testing"): break
            if max_lines and line_count > max_lines: break
            look_for_line(ana_alf, line.lower().strip())

    if len(ana_types):
        print("Possible anagrams found:")
        for x in sorted(ana_types, key=ana_types.get, reverse=True):
            print(x.strip(), ana_types[x], "<", ana, '-', x, red_note[redtext(ana, x)], "> first line {:d}".format(first_line[letters_only(x)]))

end_time = time.time()
print("Time elapsed:", end_time - start_time, "seconds")
