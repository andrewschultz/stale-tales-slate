# sts.py: this is a can-opener sort of application
# it gives a hash of any word according to STS
# it can also reverse lookup any word from any integer, starting with E as the biggest number and working its way down
# so that it doesn't go through too many possibilities
#
# this partially replaces hv.pl and extends it, but it doesn't have functions like "detect hash in file" ... yet
#

import mytools as mt
import sys
import re
import math
from collections import defaultdict

word_hash = defaultdict(list)

write_to_file = False

nudge_out_file = "c:/writing/dict/hv.txt"

sts_hash = {
  "a" : 2187818,
  "b" : 18418905,
  "c" : 19005585,
  "d" : 21029089,
  "e" : 127806109,
  "f" : 26514896,
  "g" : 32599702,
  "h" : 37282299,
  "i" : 44992846,
  "j" : 48960525,
  "k" : 52933178,
  "l" : 53813839,
  "m" : 64075153,
  "n" : 68907508,
  "o" : 74352577,
  "p" : 81465959,
  "q" : 84405617,
  "r" : 85323803,
  "s" : 96273966,
  "t" : 103110018,
  "u" : 105105807,
  "v" : 107164820,
  "w" : 107934773,
  "x" : 112768081,
  "y" : 122359252,
  "z" : 122969618 }

rev_word = sorted(sts_hash, key=sts_hash.get, reverse = True)

def usage():
    print("Entering a number allows hash reverse-lookup. That is the only option so far.")
    sys.exit()

def letters_only(my_word):
    return re.sub("[^a-z]", "", my_word.lower())

def ana_alf(my_word):
    return ''.join(sorted(list(my_word)))

def roi_poss(my_word, count_duplicates = False, full_factorial = False):
    count = defaultdict(int)
    my_word = letters_only(my_word)
    vowels = sum([my_word.count(x) for x in 'aeiou'])
    ys = my_word.count('y')
    consonants = sum([my_word.count(x) for x in 'bcdfghjklmnpqrstvwxz'])
    for x in my_word:
        count[x] += 1
    if full_factorial:
        ret_val = math.factorial(len(my_word))
        for x in count:
            if count[x] > 1:
                ret_val //= math.factorial(count[x])
        return ret_val
    ret_val = math.factorial(vowels)*math.factorial(ys)*math.factorial(consonants)
    if not count_duplicates:
        for x in count:
            if count[x] >= 2:
                ret_val //= math.factorial(count[x])
    return ret_val

def word_hash_match(my_word):
    temp = 0
    for q in my_word.lower():
        if q in sts_hash:
            temp += sts_hash[q]
    return temp

got_one = False

def word_by_libe(hash_to_see):
    with open("c:/writing/dict/brit-1word.txt") as file:
        for line in file:
            if word_hash_match(line.lower().strip()) == hash_to_see:
                print("(DICT) Got a match!", hash_to_see, "matches", line.strip())
                return
    print("(DICT) No dictionary matches for", hash_to_see)

def get_word_hash():
    global word_hash
    with open(mt.words_file) as file:
        for (line_count, line) in enumerate (file, 1):
            ll = line.lower().strip()
            alf = ''.join(sorted(ll))
            word_hash[alf].append(ll)

def get_anagrams(cur_word):
    if not len(word_hash):
        get_word_hash()
    if cur_word not in word_hash:
        print(cur_word, "not in", word_hash)
    else:
        print(cur_word, ",".join(word_hash[cur_word]))

def pick_reverse_word(hash_to_see, max_letters = 8, cur_word = ""):
    if len(cur_word) > max_letters: return
    global got_one
    if got_one: return
    if hash_to_see == 0:
        cur_word = ''.join(sorted(cur_word))
        print("GOT ONE!", cur_word, word_hash_match(cur_word))
        get_anagrams(cur_word)
        got_one = True
        return
    for x in rev_word:
        if sts_hash[x] <= hash_to_see:
            pick_reverse_word(hash_to_see - sts_hash[x], max_letters, cur_word + x)
    if cur_word == "" and not got_one:
        print("Nothing found for", hash_to_see)
    return

cmd_count = 1

while cmd_count < len(sys.argv):
    arg = sys.argv[cmd_count]
    if arg.isdigit():
        pick_reverse_word(int(arg))
    elif arg == 'f':
        write_to_file = True
    elif len(arg) > 3:
        for x in arg.split(","):
            print(x, word_hash_match(x))
            if write_to_file:
                f = open(nudge_out_file, "a")
                this_line = '"{}"\t{}\t--\t--\t"some text"\n'.format(x,word_hash_match(x))
                f.write(this_line)
                f.close()
    else:
        usage()
    cmd_count += 1
