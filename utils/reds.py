import sys
import re

read_file = True
verbose = False

reds_file = "c:/writing/dict/reds.txt"

def settler_should_read(my_letter, any_right, any_wrong):
    if any_right and any_wrong: return '?'
    if my_letter in 'y':
        return 'B' if any_right else 'O'
    if my_letter in 'aeiou':
        return 'G' if any_right else 'Y'
    return 'P' if any_right else 'R'

def tricky_verify(target_word, from_words):
    ret_val = 0
    for x in from_words:
        if len(x) != len(target_word):
            ret_val += 1
            print("Bad length", target_word, "vs", x)
    if ret_val: return ret_val
    settler_read = from_words[0]
    from_words_mod = from_words[1:]
    for x in range(0, len(target_word)):
        any_right = 0
        any_wrong = 0
        for y in range(0, len(from_words_mod)):
            if from_words_mod[y][x] == target_word[x]:
                any_right += 1
            else:
                any_wrong += 1
        temp = settler_should_read(target_word[x], any_right, any_wrong)
        if  temp != settler_read[x]:
            print("Uh oh position", x, "in", target_word[x], "/", settler_read, "is wrong for", from_words, ": should be", temp, "but is", settler_read[x])
            ret_val += 1
    return ret_val

def verify_one_array(my_array):
    ret_val = 0
    target_word = my_array[0]
    if "/" in target_word:
        print("Can't verify lines with slashes yet, like", my_array)
        return 0
    stuff_array = my_array[1:]
    for idx in range(0, len(stuff_array)):
        my_word = re.sub(" ", "", stuff_array[idx])
        if '=' in my_word:
            ret_val += tricky_verify(target_word, my_word.split("="))
            continue
        if len(my_word) != len(target_word):
            print("Size-mismatched words", target_word, stuff_array)
            ret_val += 1
            continue
        for y in range(0, len(target_word)):
            if target_word[y] == my_word[y]:
                print("Uh oh, letter match between {0} and {1} at index {2}: {3}.".format(target_word, my_word, y+1, target_word[y]))
    return ret_val

def verify_one_line(my_line):
    return verify_one_array(my_line.split(","))

def verify_reds_file(my_file):
    with open(my_file) as file:
        for (line_count, line) in enumerate(file, 1):
            if line.startswith(";"): break
            if line.startswith("#"): continue
            temp = verify_one_line(line.strip())
            if temp != 0:
                print("Bad verification {0} at line {1}: {2}".format(temp, line_count, line.strip()))

cmd_count = 1

while cmd_count < len(sys.argv):
    arg = nohy(sys.argv[cmd_count])
    if arg == 'v':
        verbose = True
    else:
        usage()
    cmd_count += 1

if read_file:
    verify_reds_file(reds_file)
