import re
import sys

from string import ascii_lowercase

from collections import defaultdict

ag = defaultdict(str)
all_words = defaultdict(bool)

def on_off(a):
    return ". Default=" + ['off', 'on'][a]

def usage():
    print("-o/no = only anagram, or add/lose a letter" + on_off(only_anagram))
    print("-p/np = plurals, or no plurals" + on_off(plural))
    print("-v/nv = verbose or not" + on_off(verbose))
    print("-? = this usage message")
    exit()

def alfy(a):
    return ''.join(sorted(list(a)))

def see_anagram_or_close(x, oa):
    adds = 0
    minuses = 0
    if alfy(x) in ag.keys():
        if ag[alfy(x)] == ' ' + x:
            print(x,"IS A WORD BUT NO ANAGRAMS")
        else:
            a2 = ag[alfy(x)].replace(' ' + x, '')
            print(x, "ORIG ANAGRAM(S):" + a2)
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

if len(sys.argv) is 1:
    print("Need an argument")
    exit()

only_anagram = True
plural = True
verbose = False
minus_ones = False
minus_twos = False

new_arg = []

for x in sys.argv[1:]:
    if x == 'o' or x == '-o':
        print("Checking only-anagram, no +/- 1 letter")
        only_anagram = True
        continue
    if x == 'p' or x == '-p':
        print("Checking plurals")
        plural = True
        continue
    if x is 'v' or x is '-v':
        print("Verbose checking")
        verbose = True
        continue
    if x == '12':
        minus_ones = True
        minus_twos = True
        continue
    if x == '1':
        minus_ones = True
        continue
    if x == '2':
        minus_twos = True
        continue
    if x == 'no' or x == '-no':
        print("Not checking only-anagram, no +/- 1 letter")
        only_anagram = False
        continue
    if x == 'np' or x == '-np':
        print("Checking plurals")
        plural = False
        continue
    if x is 'nv' or x is '-nv':
        print("Not verbose checking")
        verbose = False
        continue
    if x is '?' or x is '-?':
        usage()
        exit()
    new_arg.append(x)

for x in new_arg:
    if x == 'ing':
        do_ings()
        exit()
    if len(x) < 3 or (x.startswith("-") and len(x) < 4):
        print(x, "is an invalid flag.")
        usage()
        exit()
    if minus_twos is True:
        remove_hash = defaultdict(bool)
        twos_count = 0
        print("Results from skipping 2 letters...")
        see_anagram_or_close(x, only_anagram)
        for i in range(0, len(x)):
            for j in range(i+1, len(x)):
                if remove_hash[x[i]+x[j]] or remove_hash[x[j]+x[i]]:
                    if verbose: print("Skipping", x[i], x[j], "already done")
                    continue
                twos_count = twos_count + 1
                temp = x[:i] + x[i+1:j] + x[j+1:]
                see_anagram_or_close(temp, only_anagram)
                remove_hash[x[j]+x[i]] = True
                remove_hash[x[i]+x[j]] = True
                if verbose: print("Zapping", x[i], x[j])
                # print(temp)
        xc2 = len(x) * (len(x) - 1) // 2
        if twos_count != xc2:
            print("Repeats mean we checked only", twos_count, "unique word combos of", xc2, "total.")
    if minus_ones is True:
        print("Results from skipping 1 letter...")
        see_anagram_or_close(x, only_anagram)
        for i in range(0, len(x)):
            see_anagram_or_close(x[:i] + x[i+1:], only_anagram)
    if minus_ones or minus_twos:
        exit()
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
