# pos.py: possibility checker from command line or file
#

from collections import defaultdict
import sys
import re
from itertools import permutations
import mytools as mt

track_letter_type = True
show_all_grids = False
search_strings = []
got_one_reading = False

red_anagrams = defaultdict(list)
found_searched = defaultdict(bool)

def alfy(a):
    return ''.join(sorted(a))

def digits_of(x):
    ret_val = 1
    while x >= 10:
        ret_val += 1
        x //= 10
    return ret_val

def max_digits(freqs):
    max_so_far = 1
    for a in freqs:
        for b in freqs[a]:
            if digits_of(freqs[a][b]) > max_so_far:
                max_so_far = digits_of(freqs[a][b])
    return max_so_far

def valid_match(my_answer, my_hints, my_original):
    my_hints = my_hints.lower()
    if track_letter_type:
        for x in range(0, len(my_answer)):
            if my_hints[x] == 'o' or my_hints[x] == 'b':
                if my_answer[x] != 'y': return False
            if my_hints[x] == 'g' or my_hints[x] == 'y':
                if my_answer[x] not in 'aeiou': return False
            if my_hints[x] == 'r' or my_hints[x] == 'p':
                if my_answer[x] in 'aeiouy': return False
    for x in range(0, len(my_answer)):
        rights = 0
        wrongs = 0
        for y in my_original:
            if my_answer[x] == y[x]:
                rights += 1
            else:
                wrongs += 1
        if rights == 0:
            if my_hints[x] == 'g' or my_hints[x] == 'p' or my_hints[x] == '?': return False
        elif wrongs == 0:
            if my_hints[x] == 'r' or my_hints[x] == 'y' or my_hints[x] == '?': return False
        else:
            if my_hints[x] != '?': return False
    return True

def valid_red(word_to_redcheck, my_answer):
    if my_answer not in red_anagrams:
        return True
    for x in red_anagrams[my_answer]:
        for y in range(0, len(x)):
            if x[y] == word_to_redcheck[y]:
                return False
    return True

def find_poss(word_array, bail=False):
    hints = word_array[1]
    original = word_array[2:]
    answer = word_array[0].split("/")[0]
    got_yet = defaultdict(bool)
    print(hints,original,answer)
    for x in original:
        if alfy(x) != alfy(answer):
            print("{} vs {} has different letter lumpings: {} vs {}.".format(answer, x, alfy(answer), alfy(x)))
    if "/" in word_array[0]:
        print("More than one accepted answer in", ', '.join(word_array), "which is beyond the scope of this program.")
        return
    x = list(answer)
    perms = [''.join(p) for p in permutations(x)]
    count = 0
    answet_index = 0
    answers = []
    got_answer = False
    fixed_answer = []
    freqs = defaultdict(lambda:defaultdict(int))
    for p in perms:
        if p in got_yet: continue
        got_yet[p] = True
        pj = ''.join(p)
        if not valid_match(p, hints, original): continue
        if not valid_red(p, answer): continue
        count += 1
        if pj == answer:
            got_answer = True
        else:
            answers.append(pj)
        pjl = list(pj)
        for x in range(0, len(pjl)):
            freqs[x][pjl[x]] += 1
        if not fixed_answer:
            fixed_answer = list(pj)
        else:
            for x in range(0, len(fixed_answer)):
                if fixed_answer[x] != pj[x]:
                    fixed_answer[x] = '-'
    if got_answer:
        answers.insert(0, answer.upper())
        print(len(answers), "<nothing fixed>" if fixed_answer == ['-'] * len(answer) else "(fixed {})".format(''.join(fixed_answer).upper()), ', '.join(sorted(answers)), "from", word_array)
        maxes = max_digits(freqs)
        max_x = 'x' * (maxes + 2)
        if search_strings or show_all_grids:
            for x in list(answer):
                temp_ary = []
                for y in range(0, len(answer)):
                    if x in freqs[y]:
                        temp_ary.append("{}={:{maxes}d}".format(x, freqs[y][x], maxes=maxes))
                    else:
                        temp_ary.append(max_x)
                print("|".join(temp_ary))
    else:
        print("Uh oh, ",word_array, "doesn't work.")
    if bail: sys.exit()

#test usage examples (main new ones)
#find_poss(['nearest', '???RG??', 'earnest', 'eastern', 'neaters'], bail=True)
#find_poss(['reversed', '??RG?RG?', 'reserved', 'deserver', 'edreeves'], bail=True)
#find_poss(['fussier', 'PY??YYR', 'friesus', 'fissure'], bail=True)
#find_poss(['reversed', '??RG?R??', 'reserved', 'deserver', 'drsevere'], bail=True)
#find_poss(['inside', '?RRYRY', 'idiein', 'needsi'])

count = 1

while count < len(sys.argv):
    arg = mt.nohy(sys.argv[count])
    if arg == 'nt' or arg == 'tn': track_letter_type = False
    elif arg == 't': track_letter_type = True
    elif arg == 's': show_all_grids = True
    elif arg == 'ns' or arg == 'sn': show_all_grids = False
    else:
        if ',' in arg:
            a = arg.split(',')
            red_anagrams[a[0]] = a[1:]
            found_searched[a[0]] = False
        else:
            found_searched[arg] = False
    count += 1

with open("c:/writing/dict/reds.txt") as file:
    for (line_count, line) in enumerate(file, 1):
        if '?' not in line: continue
        if line.startswith("#"): continue
        do_search = False
        if len(found_searched):
            for x in found_searched:
                if x in line.lower():
                    do_search = True
                    found_searched[x] = True
        if not (show_all_grids or do_search): continue
        ary = re.split("[=,]", line.strip().lower())
        find_poss(ary)
        got_one_reading = True

y = [x for x in found_searched if found_searched[x]]
z = [x for x in found_searched if not found_searched[x]]

if not len(y):
    print("I didn't find a reading for {}. Look in reds.txt to verify this.".format(', '.join(z)))
elif not len(z):
    print("Request{} found. Yay.".format('' if len(found_searched) == 1 else 's all'))
else:
    print("FOUND:", ', ',join(y))
    print("NOT FOUND:", ', ',join(z))
