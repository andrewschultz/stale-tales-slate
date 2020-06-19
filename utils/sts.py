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
