#
# amak.py: this makes an anagram of a word with no identical letter slots.
#
# in other words, HEAT and HATE have the first letter identical, but EATH has no letter slots in common with HEAT.
#

import re
import sys
from collections import defaultdict

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
    old_string = list(x)
    new_string = ['-'] * len(x)
    f = defaultdict(list)
    letters_to_place = len(old_string)
    if not len(x):
        print("Blank string...")
        return ""
    for y in range(0, len(x)):
        if old_string[y] not in 'abcdefghijklmnopqrstuvwxyz':
            print("Nonalphabetical character in", x, 'slot', y, "--", old_string[y])
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

if len(sys.argv) > 1:
    for q in sys.argv[1:]:
        if q == 's1': shift_1_on_no_repeat = True #this works for one option, but what if there are several?
        elif q == 'tr': try_rotating_first = True #this works for one option, but what if there are several?
    for q in sys.argv[1:]:
        if q != 's1' and q != 'tr': show_results(q, "<=>") # this feels like a real hack, again. I want to process meta commands before any results, though.
else:
    show_results("aabbb") #throw error
    show_results("stroll")
    show_results("aaabbbc")
    show_results("aaabbcc")
    show_results("basically")
    show_results("TeTrIs")
    show_results("try this")
    show_results("")
