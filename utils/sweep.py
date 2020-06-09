# sweep.py: this sweeps through source code to look for potential anagrams and red-writing verification

import sys
import re
import sts
from collections import defaultdict

description_of = defaultdict(str)

output_string = defaultdict(str)

nums_to_flag = defaultdict(list)

stuff_to_flag = defaultdict(str)

ignore_words = defaultdict(bool)

last_line_and_file = defaultdict(tuple)

region_of = defaultdict(str)

with open("sweep.txt") as file:
    for line in file:
        if line.lower().startswith("ignore:"):
            for x in line[7:].strip().lower().split(','):
                if x in ignore_words:
                    print("Re-ignore of", x, "at line", line_count)
                else:
                    ignore_words[x] = True
            continue
        if '~' in line:
            ary = line.strip().split("~")
            if len(ary) == 2:
                region_of[ary[0]] = "undefined"
                description_of[ary[0]] = ary[1]
            elif len(ary) == 3:
                region_of[ary[0]] = ary[1]
                description_of[ary[0]] = ary[2]
            else:
                print(line_count, "Length of ~ separated arry must be 2 or 3. words:description or words:region:description.")
                continue
            stuff_to_flag[ary[0]] = "!"

for x in stuff_to_flag:
    nums_to_flag[sts.word_hash_match(x)].append(x)

def ignorable(word_array):
    full_word = ' '.join(word_array).lower()
    if full_word in ignore_words: return True
    return False

def print_red_letters(string1, wordary, double_first = False):
    if double_first: string1 *= 2
    string2 = ''.join(wordary)
    string3 = ' '.join(wordary)
    print(string1, string2, string3)
    if len(string1) != len(string2):
        return("STRING SIZE MISMATCH {} {}\n".format(string1, string2))
    any_matches = False
    s1 = string1.lower()
    s2 = string2.lower()
    s3 = string3.lower()
    clash = []
    for x in range(0, len(s1)):
        if s1[x] == s2[x]: clash.append(str(x+1))
    return("{} RED: {} vs {}/{} {}\n".format("NOT" if len(clash) else "   ", s1, s2, s3, ' ' + '/'.join(clash) if len(clash) else ''))

def find_reasonable_hashes(my_line):
    if '"' not in my_line: return
    x = ' '.join(my_line.strip().split('"')[1::2])
    x = x.replace('-', ' ')
    x = re.sub("\[[^\]]*\]", " ", x)
    x = re.sub("[^a-zA-Z ]", "", x)
    y = [u for u in x.strip().split(' ') if re.search("[a-zA-Z]", u)]
    q = [sts.word_hash_match(my_word) for my_word in y]
    for z in range(0, len(y)):
        for w in range(1, min(8, len(y) - z + 1)):
            j = sum(q[z:w+z])
            comp_word = y[z:w+z]
            nospace = ''.join(comp_word).lower()
            withspace = ' '.join(comp_word).lower()
            if j/2 in nums_to_flag:
                if ignorable(comp_word):
                    continue
                for cand in nums_to_flag[j/2]:
                    if cand.lower() == ''.join(comp_word).lower(): continue
                    if last_line_and_file[cand] == (line_count, file):
                        pass
                        #print("Duplicate line/file for", cand)
                    else:
                        output_string[cand] += "{} {}".format(line_count, line)
                    last_line_and_file[cand] = (line_count, file)
                    output_string[cand] += print_red_letters(cand, comp_word, double_first = True)
            continue
            if j in nums_to_flag:
                if ignorable(comp_word):
                    continue
                for cand in nums_to_flag[j]:
                    if cand.lower() == ''.join(comp_word).lower(): continue
                    if last_line_and_file[cand] == (line_count, file):
                        pass
                        #print("Duplicate line/file for", cand)
                    else:
                        output_string[cand] += "{} {}".format(line_count, line)
                    last_line_and_file[cand] = (line_count, file)
                    output_string[cand] += print_red_letters(cand, comp_word)

with open("story.ni") as file:
    for (line_count, line) in enumerate(file, 1):
        find_reasonable_hashes(line)

for x in sorted(output_string, key=lambda x:(region_of[x], x)):
    print("{} ({}) {}/{}".format("=" * 50, region_of[x], x, description_of[x]))
    print(output_string[x])