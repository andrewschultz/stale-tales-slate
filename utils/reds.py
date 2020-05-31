# reds.py
#
# anagram checker in python, rewritten from perl

from collections import defaultdict
from sympy.utilities.iterables import multiset_permutations
from mytools import nohy
from math import factorial
import sys
import re

INVALID=5
CONSONANT=1
VOWEL=2
Y=3

check_every = 10000
know_types = False
read_file = True
verbose = False
wild_card = ""
space_char = 'x'

reds_file = "c:/writing/dict/reds.txt"

def comb_calc(this_word, try_perms = False):
    freq = defaultdict(int)
    ret_val = factorial(len(this_word))
    if try_perms: return ret_val
    for x in this_word:
        freq[x] += 1
    for x in freq:
        ret_val //= factorial(freq[x])
    return ret_val

def match_types(w1, w2):
    if len(w1) != len(w2): return False
    for x in range(len(w1)):
        if letter_type(w1[x]) != letter_type(w2[x]): return False
    return True

def reds_okay(w1, w2):
    for x in range(0, len(w1)):
        if w1[x] == w2[x]: return False
    return True

def count_remaining_possibilities(my_array, print_whats_valid = True, collate_results = True, show_poss = True, max_guesses = 0):
    target = my_array[0]
    match_array = my_array[1:]
    tl = list(target)
    total_valid_perms = 0
    total_combinations = 0
    poss_dict = defaultdict(lambda:defaultdict(int))
    print(comb_calc(target), "total combinations of", target, "out of", comb_calc(target, True), "permutations")
    ptl = multiset_permutations(tl)
    for x in ptl:
        total_combinations += 1
        if check_every and total_combinations % check_every == 0:
            print(total_combinations, "....")
        if know_types and not match_types(x, target):
            continue
        valid_perm = True
        for y in match_array:
            if not valid_perm: continue
            if not reds_okay(x, y):
                valid_perm = False
        if valid_perm:
            if print_whats_valid:
                total_valid_perms += 1
                if max_guesses:
                    if total_valid_perms == max_guesses + 1:
                        print("Went over maximum of", max_guesses)
                    if total_valid_perms > max_guesses: continue
                print(total_valid_perms, ''.join(x), "is a valid possible guess")
            if collate_results or show_poss:
                for l in range(0, len(x)):
                    # print("Adding", x[l], "to slot", l)
                    poss_dict[l][x[l]] += 1
    print("Read through", total_combinations, "total combinations")
    if max_guesses and max_guesses < total_valid_perms:
        print(total_valid_perms, "total valid permutations, only", max_guesses, "shown.")
    if show_poss:
        possibility_string = ''
        for j in range(0, len(tl)):
            temp = ''
            temp = ''.join(poss_dict[j])
            if len(temp) > 1: temp = "({0})".format(temp)
            possibility_string += temp
        print("Possibilities:", possibility_string)
    if collate_results:
        max_digits = 1
        for x in poss_dict:
            for j in poss_dict[x]:
                digits = len(str(poss_dict[x][j]))
                max_digits = max(digits, max_digits)
        header = ""
        for x in range(0, len(tl)):
            header += " " * max_digits + "{:<2d}|".format(x)
        print(header)
        got_yet = defaultdict(bool)
        for j in tl:
            if j in got_yet: continue
            got_yet[j] = True
            this_line = ""
            for x in range(0, len(tl)):
                if j not in poss_dict[x]:
                    this_line += space_char * (max_digits + 2) + "|"
                else:
                    this_line += ('{:s}={:{:d}d}|').format(j, poss_dict[x][j], max_digits)
                    #this_line += j + "=" + "{num:{width}}".format(num=poss_dict[x][j], width=max_digits) + "|"
            print(this_line)

def letter_type(ltr):
    ll = ltr.lower()
    if len(ll) > 1: return INVALID
    if ll == 'y': return Y
    if ll in 'aeiou': return VOWEL
    return CONSONANT

def type_conflict(word_array, word_index):
    if len(word_array) == 1: return False
    base_letter_type = letter_type(word_array[0][word_index])
    for idx in range(1, len(word_array)):
        if letter_type(word_array[idx][word_index]) != base_letter_type: return True
    return False

def settler_should_read(my_letter, any_right, any_wrong):
    if any_right and any_wrong: return '?'
    if letter_type(my_letter) == Y:
        return 'B' if any_right else 'O'
    if letter_type(my_letter) == VOWEL:
        return 'G' if any_right else 'Y'
    return 'P' if any_right else 'R'

def tricky_verify(target_words, from_words):
    ret_val = 0
    for x in from_words:
        if len(x) != len(target_words[0]):
            ret_val += 1
            print("Bad length", target_words[0], "vs", x)
    if ret_val: return ret_val
    settler_read = from_words[0]
    from_words_mod = from_words[1:]
    flag_this = False
    correct_str = ""
    for x in range(0, len(target_words[0])):
        if type_conflict(target_words, x):
            print("Type conflict character", x)
            temp = '?'
        else:
            any_right = 0
            any_wrong = 0
            for z in range(0, len(target_words)):
                for y in range(0, len(from_words_mod)):
                    if from_words_mod[y][x] == target_words[z][x]:
                        any_right += 1
                    else:
                        any_wrong += 1
            temp = settler_should_read(target_words[0][x], any_right, any_wrong)
        correct_str += temp
        if temp != settler_read[x]:
            print("Uh oh position", x+1, "/", target_words[0][x], "in", settler_read, "is wrong for", ','.join(target_words), '/', ','.join(from_words[1:]), ": should be", temp, "but is", settler_read[x])
            ret_val += 1
            flag_this = True
    if flag_this:
        print("Change", settler_read, "to", correct_str)
    return ret_val

def verify_one_array(my_array):
    ret_val = 0
    target_words = my_array[0].split("/")
    if len(target_words) > 1:
        for idx in range(1, len(target_words)):
            if len(target_words[0]) != len(target_words[idx]):
                ret_val += 1
                print("Target words have different length:", target_words[idx], target_words[idx])
    if ret_val: return ret_val
    stuff_array = my_array[1:]
    for idx in range(0, len(stuff_array)):
        my_word = re.sub(" ", "", stuff_array[idx])
        if '=' in my_word:
            ret_val += tricky_verify(target_words, my_word.split("="))
            continue
        if len(my_word) != len(target_words[0]):
            print("Size-mismatched words", target_words[0], stuff_array)
            ret_val += 1
            continue
        for y in range(0, len(target_words[0])):
            if target_words[0][y] == my_word[y]:
                print("Uh oh, letter match between {0} and {1} at index {2}: {3}.".format(target_words[0], my_word, y+1, target_words[0][y]))
            elif my_word[y] != '.' and my_word[y] == my_word[y].upper() and target_words[0][y] != my_word[y].lower():
                print("Uh oh, we need a letter match between {0} and {1} at index {2}: {3}.".format(target_words[0], my_word, y+1, target_words[0][y]))
    return ret_val

def verify_one_line(my_line):
    return verify_one_array(my_line.split(","))

def test_for_code_change():
    print("Should be ok:")
    tricky_verify(['until'], ['YRR?R', 'nulli', 'tunit']) # right
    print("Should not be ok:")
    tricky_verify(['until'], ['YRY?R', 'nulli', 'tunit']) # wrong
    sys.exit()

def verify_reds_file(my_file):
    bad_lines = total_errors = 0
    with open(my_file) as file:
        for (line_count, line) in enumerate(file, 1):
            if line.startswith(";"): break
            if line.startswith("#"): continue
            if wild_card:
                if wild_card not in line.lower(): continue
                print("Line", line_count, "contains", wild_card)
            temp = verify_one_line(line.strip())
            if temp != 0:
                print("Bad verification {0} at line {1}: {2}".format(temp, line_count, line.strip()))
                bad_lines += 1
                total_errors += temp
    if not total_errors:
        print("Hooray! {0} verified.".format(my_file))
    else:
        print("{0} had {1} lines with {2} errors.".format(my_file, bad_lines, total_errors))
    sys.exit(total_errors)

cmd_count = 1

my_array = []
count_remaining = True
max_guesses = 1000

while cmd_count < len(sys.argv):
    arg = nohy(sys.argv[cmd_count])
    if arg == 'v':
        verbose = True
    elif arg.startswith("w="):
        wild_card = arg[2:]
    elif arg == '%':
        know_types = True
    elif arg[0] == 'm' and arg[1:].isdigit():
        max_guesses = int(arg[1:])
    elif arg[0] == 'ce' and arg[2:].isdigit():
        check_every = int(arg[2:])
    elif len(arg) >= 3:
        my_array.append(arg)
    else:
        usage()
    cmd_count += 1

if len(my_array): read_file = False

if read_file:
    verify_reds_file(reds_file)
else:
    if len(my_array) < 2 and not know_types:
        sys.exit("Need more than 2 arguments.")
    if verify_one_array(my_array) == 0:
        print(my_array, "verified OK.")
    else:
        print(my_array, "failed.")
        sys.exit()
    if count_remaining:
        count_remaining_possibilities(my_array, max_guesses=max_guesses)