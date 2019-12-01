#
# aw.py: command line and stdin generator
#

import subprocess
import re
import sys
import os

from string import ascii_lowercase

from collections import defaultdict

ag = defaultdict(str)
all_words = defaultdict(bool)

def on_off(a):
    return ". Default=" + ['off', 'on'][a]

def usage():
    print("-1/2 = see what happens with one or two letters removed")
    print("-o/no = only anagram, or (no) add/lose a letter" + on_off(only_anagram))
    print("-p/np = plurals, or no plurals" + on_off(plural))
    print("-v/nv = verbose or not" + on_off(verbose))
    print("-? = this usage message")
    print("You can put more than one word on the command line or on STDIN. This is case insensitive, too.")
    print("-s/-i = get STDIN, can be combined with command line")
    print("?(word) on stdin launches the word in Thefreedictionary. /(word) launches it in thesaurus.com. (123)word sends that word * (123) to the anagram server.")
    print("`/~ searches for the word in the STS source.")
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
            minuses += 1
        elif verbose:
            print(x, '-', y[q], 'gives nothing.')
    for q in ascii_lowercase:
        z = alfy(x + q);
        if z in ag.keys():
            print(x, '+', q, '=', z + ' /' + ag[z])
            adds += 1
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
    print("Need an argument. Most common is -s for stdin, if you're running multiple queries. Otherwise, any words will do.")
    usage()
    exit()

only_anagram = True
plural = True
verbose = False
minus_ones = False
minus_twos = False
get_stdin = False

new_arg = []

count = 1

while count < len(sys.argv):
    arg = sys.argv[count]
    if arg[0] == '-':
        arg = arg[1:]
    if arg == 's' or arg == 'i':
        get_stdin = True
    elif arg == 'o':
        print("Checking only-anagram, no +/- 1 letter")
        only_anagram = True
    elif arg == 'p':
        print("Checking plurals")
        plural = True
    elif arg == 'v':
        print("Verbose checking")
        verbose = True
    elif arg == '12':
        minus_ones = True
        minus_twos = True
    elif arg == '1':
        minus_ones = True
    elif arg == '2':
        minus_twos = True
    elif arg == 'no':
        print("Not checking only-anagram, no +/- 1 letter")
        only_anagram = False
    elif arg == 'np':
        print("Not checking plurals")
        plural = False
    elif arg == 'nv':
        print("Not verbose checking")
        verbose = False
    elif arg == '?':
        usage()
        exit()
    else:
        new_arg = new_arg + re.split("[, ]", arg)
    count += 1

def anagram_check(x):
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
                twos_count += 1
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

for x in new_arg:
    anagram_check(x)

if get_stdin:
    input_line = "Enter line (blank quits, ? at start=find definitions, ~=search, 123=call up anagram server):\n>>>>"
    print(input_line, end='')
    for line in sys.stdin:
        ll = line.strip().lower()
        if not ll or ll == 'q':
            print("Exiting.")
            exit()
        skip = False
        if ll.startswith('`') or ll.startswith('~'):
            ll = ll[1:].strip()
            q = ['gr.bat']
            q.extend(ll.split(" "))
            x = [('"' + a + '"' if ' ' in a else a) for a in q]
            print("Running command: {}".format(' '.join(x)))
            result=subprocess.run(q, stdout=subprocess.PIPE).stdout.decode("utf-8")
            print(result)
        if ll[0].isdigit():
            mult = int(ll[0])
            ll = ll[1:]
            if mult > 3:
                print("Multiplier too big. Try 1, 2 or 3.")
            elif mult == 0:
                print("A multiplier of 0 doesn't do any good.")
            else:
                print("Anagramming", ll, "*", mult)
                sys_string = "start https://new.wordsmith.org/anagram/anagram.cgi?anagram={:s}^&t=500^&a=n".format(ll * mult)
                print(sys_string)
                os.system(sys_string)
            skip = True
        if ll.startswith('?') or ll.startswith('/'):
            ll = ll[1:]
            new_arg = re.split("[ ,]", ll.strip())
            for x in new_arg:
                os.system("start http://www.thefreedictionary.com/{:s}".format(x))
            skip = True
        if re.search("[^a-z, ]", ll, re.IGNORECASE):
            ll_old = ll
            ll = re.sub("[^a-z, ]", "", ll_old, 0, re.IGNORECASE)
            print("WARNING: invalid characters. Changing {} to {}.".format(ll_old, ll))
        if not skip:
            new_arg = re.split("[ ,]", ll.strip())
            for x in new_arg:
                anagram_check(x)
        print(input_line, end='')
else:
    if len(new_arg) > 1: print("Remember -s is stdin. This makes runs go faster in the future.")