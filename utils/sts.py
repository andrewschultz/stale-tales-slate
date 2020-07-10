import re
import math
from collections import defaultdict

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

def pick_reverse_word(hash_to_see, max_letters = 8, cur_word = ""):
    if len(cur_word) > max_letters: return
    global got_one
    if got_one: return
    if hash_to_see == 0:
        print("GOT ONE!", cur_word, word_hash_match(cur_word))
        got_one = True
        return
    for x in rev_word:
        if sts_hash[x] <= hash_to_see:
            pick_reverse_word(hash_to_see - sts_hash[x], max_letters, cur_word + x)
    if cur_word == "" and not got_one:
        print("Nothing found for", hash_to_see)
    return
