#
# amak.py: this makes an anagram of a word with no identical letter slots.
#
# in other words, HEAT and HATE have the first letter identical, but EATH has no letter slots in common with HEAT.
#

import os
import re
import sys
from collections import defaultdict

reg_verbs = defaultdict(str)
amak_txt = "c:/writing/scripts/amak.txt"

#option(s). There may be more later.
shift_1_on_no_repeat = False
try_rotating_first = False

# determine if we can still switch a pair. With 3 letters left, it is not possible. With 2, it should be.
#

def can_take_even(x):
    if x % 2 == 0: return x > 0
    else: return x > 3

# here is the explanation of the algorithm:
#
# 1. unless we have exactly 3 letters to place, we look for the 2 most frequent letters that have not been switched yet nd switch the earliest incidences of each
# 2. if there are 3 unique letters remaining, then we go a->b->c.
#   2a. Note that we can never have 2-1 left, because the previous would have to have 3-?-?. If we started with, say, 2-2-1, we would have 1-1-1 after. Similarly we can never have x-(summing less to x) unless we start with something unviable, because we'd have to have had x+1 and (something less than x+1) on the previous try. If we had x on the previous try, we would have deducted from it.
#   note having y>x/2 in x letters means we cannot have a unique anagram. That is because we would have x-y slots to move the y to, but x<2y so that doesn't work.

def find_nomatch_anagram(x):
    x = re.sub("[- '\.]", "", x.lower()) # allow for spaces, apostrophes, etc.
    if not len(x):
        print("Blank string...")
        return ""
    old_string = list(x)
    new_string = ['-'] * len(x)
    f = defaultdict(list)
    letters_to_place = len(old_string)
    for y in range(0, len(x)):
        if old_string[y] not in 'abcdefghijklmnopqrstuvwxyz':
            print("Nonalphabetical character ({:s}) in {:s} slot {:d}".format(old_string[y], x, y+1))
            return ""
        f[x[y]].append(y)
    if shift_1_on_no_repeat and len(f) == len(old_string): return x[1:] + x[0] #abcde quickly sent to bcdea
    if try_rotating_first:
        for y in range(1, len(x)):
            retval = x[-y:] + x[:-y]
            print("Trying", retval)
            bad_matches = False
            for z in range(0, len(x)):
                bad_matches |= (retval[z] == old_string[z])
            if not bad_matches: return retval
    for q in f:
        if len(f[q]) > len(old_string) / 2:
            print(q, "appears too many times in", x, "to create an anagram with no letter slots in common.")
            return ""
    while can_take_even(letters_to_place):
        u = sorted(f, key=lambda x:len(f[x]), reverse=True)
        x1 = f[u[0]].pop(0)
        x2 = f[u[1]].pop(0)
        new_string[x1] = u[1]
        new_string[x2] = u[0]
        letters_to_place -= 2
    if letters_to_place == 3:
        u = sorted(f, key=lambda x:len(f[x]), reverse=True)
        new_string[f[u[0]][0]] = u[1]
        new_string[f[u[1]][0]] = u[2]
        new_string[f[u[2]][0]] = u[0]
    for y in range(0, len(x)):
        if old_string[y] == new_string[y]:
            print("Uh oh, failure at letter", y)
            print(old_string[y])
            print(new_string[y])
            sys.exit()
        if new_string[y] == '-':
            print("Uh oh, blank letter at", y)
            sys.exit()
    return ''.join(new_string)

def show_results(q, result_string = "has this anagram with no letters in common:"):
    temp = find_nomatch_anagram(q)
    if not temp: return
    print(q, result_string, temp)

def assign_stuff(x):
    ary = x.split("=")
    if len(ary) != 2: sys.exit("Need REGION=(CSVS) at line {:d}, has {:d} partitions via =".format(line_count, len(ary)))
    if ',' not in ary[1]: sys.exit("Need CSV on right hand side at line {:d}".format(line_count))
    for rv in ary[0].split("/"):
        reg_verbs[rv] = ary[1]

def read_region_chunks():
    whole_string = ""
    if not os.path.exists(amak_txt):
        print("Skipping word-combo config file.")
        return
    with open(amak_txt) as file:
        for (line_count, line) in enumerate(file, 1):
            if line.startswith("#"): continue
            if line.startswith(";"): continue
            #print("Adding", ary[0])
            if line.strip().endswith("\\") or line.strip().endswith("/"):
                print(line_count)
                whole_string += re.sub(" *$", "", line.strip()[:-1])
                if not whole_string.endswith(","): whole_string += ","
                continue
            if whole_string:
                line = whole_string + line.strip()
                print("Full line", line)
                whole_string = ""
            ll = line.lower().strip()
            assign_stuff(ll)
    if whole_string:
        print("OOPS did not end with proper unslashed line.")
        assign_stuff(whole_string)

read_region_chunks()

my_tests = [ "aabbb",
  "stroll", #this "broke" my original tries of just flipping every next letters, or trying to cycle through letters
  "aaabbbc", # this is a tricky case where if we just swap the a's and b's, we fail. But we can swap an (a or b) with a C.
  "aaabbcc", # this is another case where we only have 3 different letters, which may be tricky
  "babaab", # another boundary case where ababba is the only solution
  "basically", # this is a random word used for a potential puzzle. It has two pairs of identical letters
  "TeTrIs", # making sure odd input like capital letters is processed ok
  "try this", # making sure that we allow spaces and nothing goes wrong
  "123abc", # we need to bail on bad values
  "" # we need to handle blank values acceptably
  ]

words_to_shift = []

if len(sys.argv) > 1:
    for q in sys.argv[1:]:
        if q == 's1': shift_1_on_no_repeat = True #this works for one option, but what if there are several?
        elif q == 'tr': try_rotating_first = True #this works for one option, but what if there are several?
        else:
            if q in reg_verbs:
                rs = reg_verbs[q].split(",")
                print("Getting verb chunk for", q, "and found", len(rs))
                words_to_shift += rs
            else:
                words_to_shift.append(q.lower())

if not len(words_to_shift):
    print("Using my tests")
    words_to_shift = list(my_tests)

for w in words_to_shift: show_results(w, "<=>")

