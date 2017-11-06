import re
import sys

from string import ascii_lowercase

from collections import defaultdict

ag = defaultdict(str)
all_words = defaultdict(bool)

def alfy(a):
    return ''.join(sorted(list(a)))

verbose = False

def see_anagram_or_close(x, oa):
    adds = 0
    minuses = 0
    if alfy(x) in ag.keys():
        if ag[alfy(x)] == ' ' + x:
            print(x,"IS A WORD BUT NO ANAGRAMS")
        else:
            print("ORIG ANAGRAM(S):" + ag[alfy(x)])
    else:
        print(x, "ANAGRAMLESS NON-WORD.")
    if oa is True:
        return
    y = list(x)
    for q in range(0,len(x)):
        z = ''.join(sorted(y[0:q] + y[q+1:len(y)]))
        if z in ag.keys():
            print(x, '-', y[q], '=', z + ' /' + ag[z])
            minuses = minuses + 1
        elif verbose:
            print(x, '-', y[q], 'gives nothing.')
    for q in ascii_lowercase:
        z = alfy(x + q);
        if z in ag.keys():
            print(x, '+', q, '=', z + ' /' + ag[z])
            adds = adds + 1
        elif verbose:
            print(x, '+', q, 'gives nothing.')
    if adds + minuses > 0:
        print("adds", adds, "minuses", minuses)
    return

def do_ings():
    print("Reading the ings")
    for x in all_words.keys():
        if not x.endswith("ing"):
            continue
        temp_string = ""
        x2 = re.sub("ing$", "in", x)
        if alfy(x2) in ag.keys():
            temp_string = temp_string + ag[alfy(x2)]
        if temp_string:
            temp_string = re.sub(" %s" % x2, "", temp_string)
            if temp_string:
                print(re.sub("g$", "'", x) + ":" + temp_string + "!")

with open("c:/writing/dict/brit-1word.txt") as file:
    for line in file:
        line = line.strip().lower()
        l2 = ''.join(sorted(list(line)))
        all_words[line] = True
        ag[l2] = ag[l2] + ' ' + line

print(sys.argv)

if len(sys.argv) is 1:
    print("Need an argument")
    exit()

only_anagram = False
plural = False

for x in sys.argv[1:]:
    if x == 'ing':
        do_ings()
        exit()
    if x == 'o' or x == '-o':
        only_anagram = True
        continue
    if x == 'p' or x == '-p':
        plural = True
        continue
    if x is 'v' or x is '-v':
        verbose = True
        continue
    see_anagram_or_close(x, only_anagram)
    if x.endswith("ing"):
        x2 = re.sub("g$", "", x, 1)
        see_anagram_or_close(x2, only_anagram)
    if plural is True:
        if x.endswith('y'):
            see_anagram_or_close(re.sub("y$", "ies", x), only_anagram)
        see_anagram_or_close(x + 's', only_anagram)
        if 's' in x:
            x2 = re.sub("s", "", x, 1)
            see_anagram_or_close(x2, only_anagram)
