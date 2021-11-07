# btext.py
#
# module for determining all possible reasonable combinations given an answer and its corresponding b-text
#

import sys
from itertools import permutations

vowels = 'aeiou'
consonants = 'bcdfghjklmnpqrstvwxz'

def cromulent(my_letter, my_clue):
    if my_clue == '?':
        return True
    if my_clue == 'o' or my_clue == 'b':
        return my_letter == 'y'
    elif my_clue == 'r' or my_clue == 'p':
        return my_letter in consonants
    elif my_clue == 'y' or my_clue == 'g':
        return my_letter in vowels
    else:
        sys.exit("Bad clue letter {}.".format(my_clue))

def poss_list(string_to_go, clues_to_go, string_so_far = ""):
    if clues_to_go == "":
        return [ string_so_far ]
    return_list = []
    letters = list(set(list(string_to_go)))
    for l in letters:
        if cromulent(l, clues_to_go[0]):
            return_list.extend(poss_list(string_to_go.replace(l, '', 1), clues_to_go[1:], string_so_far + l))
    return return_list

def poss_list_word(a, b = ''):
    if not b:
        for x in a:
            if x in vowels:
                b += 'y'
            elif x in consonants:
                b += 'r'
            elif x == 'y':
                b += 'o'
            else:
                b += '?'
    return poss_list(a, b.lower())

def print_word_list(my_list):
    if type(my_list) == str:
        my_list = [my_list]
    for m in my_list:
        x = poss_list_word(m.replace('*', ''))
        print(m, x[:20], len(x))

#
# test
#
# print_word_list(["cranberries", "phooey", "spectacular", "romanticise"])
#
# x = poss_list_word("creationism", "?YR?RRYRGPY")
# print(x[:20], len(x))
