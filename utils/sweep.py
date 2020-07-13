# sweep.py: this sweeps through source code to look for potential double anagrams and red-writing verification
#
# the slashes in output text indicate before/after space removal

import os
import i7
import sys
import re
import sts
from collections import defaultdict

dont_print_old = False
show_max_min = False

description_of = defaultdict(str)

output_string = defaultdict(str)

nums_to_flag = defaultdict(list)

stuff_to_flag = defaultdict(str)

ignore_words = defaultdict(bool)

last_line_and_file = defaultdict(tuple)

region_of = defaultdict(str)

ans_yet = defaultdict(int)

my_proj = 'roi'

try:
    if sys.argv[1] == 's' or sys.argv[1] == 'sa':
        my_proj = 'sa'
except:
    pass

file_list = [ i7.main_src(my_proj), i7.hdr(my_proj, 'nu'), i7.hdr(my_proj, 'ta') ]

with open("sweep.txt") as file:
    for line in file:
        if line.startswith(";"): break
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

hash_min = min(nums_to_flag.keys())
hash_max = max(nums_to_flag.keys())

if show_max_min:
    print(hash_min, nums_to_flag[hash_min])
    print(hash_max, nums_to_flag[hash_max])

def ignorable(word_array):
    full_word = ' '.join(word_array).lower()
    if full_word in ignore_words: return True
    return False

def print_red_letters(string1, wordary, double_first = False):
    s1 = string1.lower()
    if double_first: s1 *= 2
    string2 = ''.join(wordary)
    string3 = ' '.join(wordary)
    if len(s1) != len(string2):
        return("STRING SIZE MISMATCH {} {}\n".format(string1, string2))
    any_matches = False
    s2 = string2.lower()
    s3 = string3.lower()
    clash = []
    for x in range(0, len(s1)):
        if s1[x] == s2[x]: clash.append(str(x+1))
    ret_val = "{}RED: {} vs {}/{} {}{}\n".format("NOT " if len(clash) else "   ", string1, s2, s3, ' ' + '/'.join(clash) if len(clash) else '', " <NEW>" if s3 not in ans_yet else " <OLD>")
    if dont_print_old and s3 in ans_yet:
        return ""
    ans_yet[s3] += 1
    return ret_val

def find_reasonable_hashes(file_base, my_line):
    if '"' not in my_line: return
    x = ' '.join(my_line.strip().split('"')[1::2])
    x = x.replace('-', ' ')
    x = re.sub("\[[^\]]*\]", " ", x)
    x = re.sub("[^a-zA-Z ]", "", x)
    y = [u for u in x.strip().split(' ') if re.search("[a-zA-Z]", u)]
    q = [sts.word_hash_match(my_word) for my_word in y]
    low_end = 0
    high_end = 0
    for low_end in range(0, len(y)):
        rolling_sum = 0
        word_length = 0
        for high_end in range(low_end, len(y)):
            word_length += len(y[high_end])
            rolling_sum += q[high_end]
            if rolling_sum < hash_min:
                continue
            if rolling_sum > hash_max * 2:
                break
            if word_length > 24:
                break
            comp_word = y[low_end:high_end+1]
            nospace = ''.join(comp_word).lower()
            withspace = ' '.join(comp_word).lower()
            if (rolling_sum & 1) and (rolling_sum / 2 in nums_to_flag):
                if ignorable(comp_word):
                    continue
                for cand in nums_to_flag[rolling_sum/2]:
                    if cand.lower() == ''.join(comp_word).lower(): continue
                    if last_line_and_file[cand] == (line_count, file):
                        pass
                        #print("Duplicate line/file for", cand)
                    else:
                        output_string[cand] += "{} L{}: {}".format(file_base, line_count, line)
                    last_line_and_file[cand] = (line_count, file)
                    output_string[cand] += print_red_letters(cand, comp_word, double_first = True)
                continue
            if rolling_sum in nums_to_flag:
                if ignorable(comp_word):
                    continue
                for cand in nums_to_flag[rolling_sum]:
                    if cand.lower() == ''.join(comp_word).lower(): continue
                    if last_line_and_file[cand] == (line_count, file):
                        pass
                        #print("Duplicate line/file for", cand)
                    else:
                        output_string[cand] += "{} L{}: {}".format(file_base, line_count, line)
                    last_line_and_file[cand] = (line_count, file)
                    output_string[cand] += print_red_letters(cand, comp_word)

for x in file_list:
    xb = os.path.basename(x)
    with open(x) as file:
        for (line_count, line) in enumerate(file, 1):
            find_reasonable_hashes(xb, line)

for x in sorted(output_string, key=lambda x:(region_of[x], x)):
    print("{} ({}) {}/{}".format("=" * 50, region_of[x], x, description_of[x]))
    print(output_string[x])