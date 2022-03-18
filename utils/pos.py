# pos.py: possibility/position checker from command line or file
#
# this processes what question mark clues should appear for an item and the word it needs
# it also calculates the total possibilities given these clues as well as any unique letters
#
# usage: (for inducted deductin')
#
# pos.py =peas,apes,apse
# pos.py =rome,mere,moor
# pos.py =cadres,sacred,cedars
# pos.py =sprite,esprit,stripe
# pos.py =sprite,esprit,stripe,!priest (priest red-letter writing)
#
# with and without red writing
#
# pos.py revised
# pos.py revised,idserve

from collections import defaultdict
import sys
import re
from itertools import permutations
import mytools as mt
from string import ascii_lowercase

track_letter_type = True
show_all_grids = False
search_strings = []
got_one_reading = False
details = False
check_v_c = False
show_red_text = False
input_different_reds = False
show_slots = False

red_anagrams = defaultdict(list)
my_match = defaultdict(str)
found_searched = defaultdict(bool)

stuff_to_process = []

examples_array = [ 'peas,apes,apse', 'rome,mere,moor', 'cadres,sacred,cedars',
  'sprite,esprit,stripe', 'sprite,esprit,stripe,!priest' ]

def usage():
    print('==================================USAGE')
    print('? shows everything, because it matches data lines, and this program detects ?\'s.')
    print('You can use a word from the reds.text file or from the examples array. Type e to see them.')
    print('Use =(wanted word,clue word 1,etc.) to give a new set of possible positions. X can be used to give a wildcard "wrong" letter.')
    print('revised,idserve tacks on more red writing to a solution already in reds.txt.')
    print('t = try different reds (useful for long strings)')
    sys.exit()

def red_text(a):
    temp = ''
    for q in a.lower():
        if q == 'y':
            temp += 'O'
        elif q in 'aeiou':
            temp += 'Y'
        else:
            temp += 'R'
    return temp

def alfy(a):
    return ''.join(sorted(a))

def digits_of(x):
    ret_val = 1
    while x >= 10:
        ret_val += 1
        x //= 10
    return ret_val

def max_digits(freqs):
    max_so_far = 1
    for a in freqs:
        for b in freqs[a]:
            if digits_of(freqs[a][b]) > max_so_far:
                max_so_far = digits_of(freqs[a][b])
    return max_so_far

def process_from_string(my_string):
    ary = my_string.split(',')
    if ary.count("+") > 1:
        sys.exit("You can't have more than one + (must-match) in a string.")
    for x in ary:
        if '+' in x:
            my_match[ary[0]] = x.replace('+', '')
            ary.remove(x)
            break
    red_anagrams[ary[0]] = [ x.replace('!', '') for x in ary[1:] if '!' in x ]
    main_clue_array = [ x for x in ary[1:] if '!' not in x ]
    main_clue_array.insert(0, ary[0])
    main_clue_array.insert(1, cheat_reading(main_clue_array))
    find_poss(main_clue_array)

def valid_match(my_answer, my_hints, my_original):
    my_hints = my_hints.lower()
    if track_letter_type:
        for x in range(0, len(my_answer)):
            if my_hints[x] == 'o' or my_hints[x] == 'b':
                if my_answer[x] != 'y': return False
            if my_hints[x] == 'g' or my_hints[x] == 'y':
                if my_answer[x] not in 'aeiou': return False
            if my_hints[x] == 'r' or my_hints[x] == 'p':
                if my_answer[x] in 'aeiouy': return False
    for x in range(0, len(my_answer)):
        rights = 0
        wrongs = 0
        for y in my_original:
            if my_answer[x] == y[x]:
                rights += 1
            else:
                wrongs += 1
        if rights == 0:
            if my_hints[x] == 'g' or my_hints[x] == 'p' or my_hints[x] == '?': return False
        elif wrongs == 0:
            if my_hints[x] == 'r' or my_hints[x] == 'y' or my_hints[x] == '?': return False
        else:
            if my_hints[x] != '?': return False
    return True

def valid_v_c(guess, target):
    for x in range(0, len(guess)):
        for z in ('y', 'aeiou', 'bcdfghjklmnpqrstvwxz'):
            if (guess[x] in z) != (target[x] in z):
                if details:
                    print(guess, 'vs', target, 'bad settler match at slot', x)
                return False
    return True

def slots_matching(word_1, word_2):
    ret_ary = []
    for x in range(0, len(word_1)):
        if word_1[x] == word_2[x]:
            ret_ary.append(x)
    return ret_ary

def valid_force_match(word_to_check, force_string):
    for x in range(0, len(word_to_check)):
        if force_string[x] == 'x':
            continue
        if word_to_check[x] != force_string[x]:
            return False
    return True

def valid_red(word_to_redcheck, my_answer):
    if my_answer not in red_anagrams:
        return True
    for x in red_anagrams[my_answer]:
        if len(slots_matching(x, word_to_redcheck)):
            if details:
                print("red-text {} rejected {}.".format(x, word_to_redcheck))
            return False
    return True

def new_reds_try(answer, answers, hints):
    bail_early = False
    remaining_answers = list(answers)
    my_str = input("Type in CSV of reds ->")
    if not my_str:
        return False
    ary = my_str.lower().replace(' ', '').strip().split(',')
    for x in ary:
        x0 = x.replace('+', '')
        adjlen = len(x0)
        if adjlen > len(answer):
            print("Too-long length matchup {} vs. {}.".format(x, answer))
            bail_early = True
        elif adjlen < len(answer):
            x1 = x + 'x' * (len(answer) - adjlen)
            print("Extending", x, "to", x1)
    for x in ary:
        if '+' not in x:
            temp = slots_matching(x, answer)
            if len(temp):
                print("{} and {} have matching slots at {}.".format(x, answer, ", ".join([str(x+1) for x in temp])))
                bail_early = True
    if bail_early:
        return True
    for x in ary:
        if '+' in x:
            modified_answers = []
            x0 = x.replace('+', '')
            for y in remaining_answers:
                if valid_force_match(y, x0):
                    modified_answers.append(y)
            remaining_answers = list(modified_answers)
            ary.remove(x)
    for x in ary:
        modified_answers = []
        for y in remaining_answers:
            if slots_matching(x, y):
                pass
            else:
                modified_answers.append(y)
        remaining_answers = list(modified_answers)
    print("Remaining answer{} ({} from {}): {}".format('s' if len(remaining_answers) > 1 else '', len(remaining_answers), len(answers), ', '.join(remaining_answers)))
    print(poss_string(remaining_answers))
    return True

def poss_string(my_answers):
    freqs = defaultdict(lambda:defaultdict(int))
    for x in my_answers:
        x0 = x.lower()
        for y in range(0, len(x)):
            freqs[y][x0[y]] += 1
    full_poss = [ ''.join(sorted(freqs[q])).upper() for q in freqs ]
    return ''.join(["({})".format(x) if len(x) > 1 else x for x in full_poss])

def find_poss(word_array_raw, bail=False):
    word_array = [x.replace(' ', '').replace('-', '') for x in word_array_raw]
    hints = word_array[1].lower()
    original = [x.replace('-', '') for x in word_array_raw][2:]
    original_raw = word_array_raw[2:]
    answer = word_array[0].split("/")[0]
    got_yet = defaultdict(bool)
    check_overall = False
    for x in original:
        if alfy(x) != alfy(answer):
            print("{} vs {} has different letter lumpings: {} vs {}.".format(answer, x, alfy(answer), alfy(x)))
            if '.' in x:
                print("    However, this may just be a general logic-check. You may wish to put (!) before {}.".format(x))
            check_overall = True
    orig_total = ''.join(original)
    if check_overall:
        any_delta = False
        expected_each = len(orig_total) // len(answer)
        extra_xes = orig_total.count('x')
        for x in ascii_lowercase:
            delta = orig_total.count(x) - answer.count(x) * expected_each
            if delta > 0:
                if x == 'x':
                    print("Found {} x which may be a placeholder.".format(orig_total.count('x')))
                    continue
                print(delta, 'too many of', x, 'in clues.')
                any_delta = True
            elif delta < 0:
                if x != 'x' and extra_xes > 0:
                    if extra_xes + delta >= 0:
                        extra_xes += delta
                        print(-delta, x, 'replaced by x')
                        continue
                print(abs(delta), 'too few of', x, 'in clues.')
                any_delta = True
        if any_delta:
            print("Imbalance in from/to anagrams.")
        else:
            print("Despite different letter lumpings or possible wildcards, no anagram imbalances.")
    if "/" in word_array[0]:
        print("More than one accepted answer in", ', '.join(word_array), "which is beyond the scope of this program.")
        return
    x = list(answer)
    perms = [''.join(p) for p in permutations(x)]
    count = 0
    answers = []
    got_answer = False
    fixed_answer = []
    freqs = defaultdict(lambda:defaultdict(int))
    for p in perms:
        if p in got_yet: continue
        got_yet[p] = True
        pj = ''.join(p)
        if answer in my_match and not valid_force_match(p, my_match[answer]): continue
        if not valid_match(p, hints, original): continue
        if not valid_red(p, answer): continue
        if check_v_c and not valid_v_c(p, answer): continue
        count += 1
        if pj == answer:
            got_answer = True
        else:
            answers.append(pj)
        pjl = list(pj)
        for x in range(0, len(pjl)):
            freqs[x][pjl[x]] += 1
        if not fixed_answer:
            fixed_answer = list(pj)
        else:
            for x in range(0, len(fixed_answer)):
                if fixed_answer[x] != pj[x]:
                    fixed_answer[x] = '-'
    if len(answers) > 0 and not got_answer:
        print("UH OH, we have a list of answers but the right one isn't in them.")
        print(answers)
        print(answer)
        sys.exit()
    if got_answer:
        answers.insert(0, answer.upper())
        if len(answers) == 1:
            print("UNIQUE SOLUTION for {} given reading of {}, clues of {}/{} and answer of {}.".format(answer, hints, red_anagrams[answer] if answer in red_anagrams else '(no red writing)', original_raw, answer))
        else:
            print(len(answers), poss_string(answers), "<nothing fixed>" if fixed_answer == ['-'] * len(answer) else "(fixed {})".format(''.join(fixed_answer).upper()), ', '.join(sorted(answers)), "from {}{}".format(word_array, '' if not red_anagrams[answer] else ' red: {}'.format(', '.join(red_anagrams[answer]))))
        if show_slots:
            for slot in range(0, len(answer)):
                if len(freqs[slot]) == 1:
                    continue
                print('Slot {}:'.format(slot), ', '.join(['{}={}'.format(x,freqs[slot][x]) for x in freqs[slot]]))
        if show_red_text:
            my_red = red_text(answer)
            print("    RED TEXT:", my_red)
            poss_array = []
            full_poss = [ ''.join(sorted(freqs[q])).upper() for q in freqs ]
            for p in full_poss:
                if len(p) == 1:
                    poss_array.append(p)
                elif re.search("^[aeiou]+$", p.lower()):
                    poss_array.append('-')
                elif re.search("^[^aeiouy]+$", p.lower()):
                    poss_array.append('x')
                else:
                    poss_array.append('?')
            my_object = ' '.join(original_raw).replace('-', ' ')
            print('    a-text of {} is "{}". b-text of {} is "{}". parse-text of {} is "{}".'.format(my_object, my_red, my_object, hints.upper(), my_object, '[sp]'.join(poss_array).lower()))
        else:
            print("-r shows generated red/source text, if you want to show that.")
        maxes = max_digits(freqs)
        max_x = 'x' * (maxes + 2)
        if search_strings or show_all_grids:
            for x in list(answer):
                temp_ary = []
                for y in range(0, len(answer)):
                    if x in freqs[y]:
                        temp_ary.append("{}={:{maxes}d}".format(x, freqs[y][x], maxes=maxes))
                    else:
                        temp_ary.append(max_x)
                print("|".join(temp_ary))
    else:
        print("Uh oh, ",word_array, "has no good answers.")
    if input_different_reds:
        answers[0] = answers[0].lower()
        while new_reds_try(answer, answers, hints):
            pass
    if bail: sys.exit()

def cheat_reading(words_array, go_lower = True):
    my_string = ''
    words_array = [x.lower().replace('-', '').replace("'", '').replace(' ', '') for x in words_array]
    rights = [0] * len(words_array[0])
    wrongs = [0] * len(words_array[0])
    for y in range(0, len(words_array[0])):
        for x in range(1, len(words_array)):
            if words_array[x][y] == words_array[0][y]:
                rights[y] += 1
            else:
                wrongs[y] += 1
        if rights[y] and wrongs[y]:
            my_string += '?'
        elif words_array[0][y] == 'y':
            my_string += 'B' if rights[y] else 'O'
        elif words_array[0][y] in 'aeiou':
            my_string += 'G' if rights[y] else 'Y'
        else:
            my_string += 'P' if rights[y] else 'R'
    if go_lower:
        return my_string.lower()
    return my_string

def process_reds():
    with open("c:/writing/dict/reds.txt") as file:
        for (line_count, line) in enumerate(file, 1):
            if '?' not in line: continue
            if line.startswith("#"): continue
            do_search = False
            if len(found_searched):
                for x in found_searched:
                    if x in line.lower():
                        do_search = True
                        found_searched[x] = True
            if not (show_all_grids or do_search): continue
            ary = re.split("[=,]", line.strip().lower())
            find_poss(ary)
            got_one_reading = True

    y = [x for x in found_searched if found_searched[x]]
    z = [x for x in found_searched if not found_searched[x]]

    if not len(y):
        print("I didn't find a reading for {}. Look in reds.txt to verify this or preface the string with =.".format(', '.join(z)))
    elif not len(z):
        print("Request{} found. Yay.".format('' if len(found_searched) == 1 else 's all'))
    else:
        print("FOUND:", ', ',join(y))
        print("NOT FOUND:", ', ',join(z))

#test usage examples (main new ones)
#find_poss(['nearest', '???RG??', 'earnest', 'eastern', 'neaters'], bail=True)
#find_poss(['reversed', '??RG?RG?', 'reserved', 'deserver', 'edreeves'], bail=True)
#find_poss(['fussier', 'PY??YYR', 'friesus', 'fissure'], bail=True)
#find_poss(['reversed', '??RG?R??', 'reserved', 'deserver', 'drsevere'], bail=True)
#find_poss(['inside', '?RRYRY', 'idiein', 'needsi'])

count = 1
file_search = False
warn_about_usage = False

if len(sys.argv) == 1:
    usage()

examples_flat = ','.join(examples_array).split(',')

while count < len(sys.argv):
    arg = mt.nohy(sys.argv[count])
    if arg[0] == '!':
        sys.exit("You want an auxiliary string to start with !, not the first one. Change it to =.")
    if arg == '?': # no ELIF since we want to pop this warning after seeing all anagrams
        warn_about_usage = True
    if arg == 'd': details = True
    elif arg in ( 'nd', 'dn' ): details = False
    elif arg in ( 'nt', 'tn' ): track_letter_type = False
    elif arg == 'e':
        print("Pull any word from these examples to see calculations:")
        for e in examples_array:
            print("    ----", e)
        sys.exit()
    elif arg == 't': track_letter_type = True
    elif arg == 's': show_all_grids = True
    elif arg == 'r': show_red_text = True
    elif arg == 'i': input_different_reds = True
    elif arg in ( 'ns', 'sn' ): show_all_grids = False
    elif arg in ( 'vc', 'cv', 'c', 'v'): check_vc = True
    elif arg == 'ss': show_slots = True
    elif arg[0] == 'x' and arg[1:].isdigit():
        temp = int(arg[1:])
        if temp < 1 or temp > len(examples_array):
            sys.exit("Not a valid example. x requires a digit from 0 to {}.".format(len(examples_array)))
        stuff_to_process.append(examples_array[temp-1])
    elif '=' not in arg:
        file_search = True
        if ',' in arg:
            a = arg.split(',')
            red_anagrams[a[0]] = a[1:]
            found_searched[a[0]] = False
        else:
            found_searched[arg] = False
    elif arg in examples_flat:
        for u in examples_array:
            if arg in u:
                print("Will be processing example", arg)
                stuff_to_process.append(arg)
    else:
        if arg.startswith('='):
            arg = arg.replace('=', '')
            stuff_to_process.append(arg)
        elif '=' in arg:
            if arg.count('=') > 1:
                print("Oh no! We can't have more than one =.")
            arg = '=' + arg.replace('=', ',')
            print("= should be at the start of the string, so I am moving it there and throwing in a comma.")
            stuff_to_process.append(arg)
        else:
            print("I couldn't do anything with", arg)
            sys.exit()
    count += 1

if len(stuff_to_process) == 0 and not file_search:
    sys.exit("You didn't seem to specify anything to guess.")

for stp in stuff_to_process:
    process_from_string(stp)

if file_search:
    process_reds()

if warn_about_usage:
    print("You used ? as a parameter. If you want usage, run pos.py without arguments.")

