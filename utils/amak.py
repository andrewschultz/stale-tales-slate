#
# amak.py: this makes an anagram of a word that has no identical letter slots in common with the original.
#
# in other words, HEAT and HATE have the first letter identical, but EATH has no letter slots in common with HEAT.
#
# the algorithm simply switches the two most popular letters at the time.
#

from glob import glob
import os
import re
import sys
import i7
from collections import defaultdict
from itertools import permutations

reg_verbs = defaultdict(str)
amak_txt = "c:/writing/scripts/amak.txt"
total_shifts = 0

#option(s). There may be more later.
shift_1_on_no_repeat = False
try_rotating_first = False

unmatches_to_find = 0

add_suggested = True

def usage(header="Usage for amak.py"):
    print(header)
    print("=" * 80)
    print("g= ... lists all anagrams in a region table")
    print("s1 = just rotate if there are no repeats")
    print("tr = try rotating first before the more detailed algorithm")
    print("c/cx = use command/test format for output. x=extended test written ou")
    print("<s=q> start at word q")
    print("<e=q> end at word q")
    print("<a=q> start after word q")
    print("e  = edit the amak.txt text/cfg file")
    print("ts = process output for CSV oif tests")
    print("as = add suggestions (default), nas/asn = turn them off")
    print("Use a number if you need first X anagrams, e.g. if the given anagram is flagged as a mistake command.")
    print("otherwise, words are changed to anagrams, or if they are regions, all words in the region are anagrammed.")
    exit()

def slider_script_check():
    extraneous = linebreak_errs = 0
    for x in glob("rbr-*.txt"):
        with open(x) as file:
            for (line_count, line) in enumerate(file, 1):
                if line.startswith("@sli") and not line.strip:
                    linebreak_errs += 1
                    print("Need line break before @sli in {} line {}.".format(x, line_count))
                prev_blank = not line.strip()
    for x in glob("reg-*.txt"):
        if 'slider' in x: continue
        with open(x) as file:
            for (line_count, line) in enumerate(file, 1):
                if '#slider' in line:
                    print("Extraneous slider test in {} line {}.".format(x, line_count))
                    extraneous += 1
                prev_blank = not line.strip()
    if not extraneous + linebreak_errs: print("No errors in the script check test!")
    else: print(extraneous, "extraneous tests and", linebreak_errs, "line break tests.")

def any_common_slots(list1, list2):
    for x in range(0, len(list1)):
        if list1[x] == list2[x]:
            return True
    return False

def first_x_anagrams(my_word, my_number):
    lw = list(my_word)
    count = 0
    for x in permutations(lw):
        if any_common_slots(lw, x):
            continue
        yield ''.join(x)
        count += 1
        if count == my_number:
            break

def test_search(to_search):
    search_mod = to_search.replace(' ', '-')
    file_names = ["rbr-roi-{0}.txt".format(search_mod), "reg-roi-slider-randoms.txt" ]
    slider_tests = defaultdict(bool)
    if to_search not in reg_verbs:
        print("Uh oh! {} is not in reg_verbs, which has {}.".format(', '.join(sorted(reg_verbs))))
        return
    orig_array = reg_verbs[to_search].split(",")
    cur_rand_test = ""
    for y in reg_verbs[to_search].split(","):
        slider_tests[y] = True
    for file_name in file_names:
        with open(file_name) as file:
            for (line_count, line) in enumerate(file, 1):
                if line.startswith("####randtest"):
                    cur_rand_test = re.sub("####randtest *", "", cur_rand_test)
                if not line.startswith("#slider test for "): continue
                if line.startswith("#extra slider test for"): continue
                l = re.sub(".* for ", "", line.strip().lower())
                if l not in slider_tests:
                    if cur_rand_test != to_search and 'randoms' in file_name: continue
                    print("Extra" if l in orig_array else "Bad", "slider test", l, "at line", line_count, "of", file_name)
                else:
                    slider_tests.pop(l)
    if len(slider_tests):
        print("Slider tests uncaptured ({0}): {1}".format(len(slider_tests), ', '.join(sorted(slider_tests))))
        for x in slider_tests:
            print_string = "@sli\n#slider test for {0}".format(x)
            if add_suggested:
                print_string += "\n>{}\nYour settler begins to make noises: a low hum, but nothing really piercing.".format(find_nomatch_anagram(x))
            print(print_string) # it may not be defined as @sli, but that is the best way, in case the file numbering changes. We can search and replace if it isn't, anyway.
    else:
        print("All slider testfile tests passed for {0}.".format(to_search))
    to_glob = "reg*-{0}*.txt".format(search_mod)
    negtest = glob(to_glob)
    slider_false = 0
    for x in negtest:
        if x == "reg-roi-{0}-slider.txt".format(search_mod): continue
        with open(x) as file:
            for (line_count, line) in enumerate(file, 1):
                if "#slider test for" in line:
                    slider_false += 1
                    print("UH OH errant slider test at line {0}: {:1}".format(line_count, line.strip()))
    if slider_false:
        print(slider_false, "total errant slider tests in", to_glob)
    else:
        print("No false positives in non-slider reg-*{0} test files.".format(search_mod))

def generate_it(tab_name_short):
    tnl = "table of {:s} anagrams".format(tab_name_short).lower()
    ana_col = 5
    in_table = False
    stuff = []
    with open(i7.hdr("roi", "ta")) as file:
        for (line_count, line) in enumerate(file, 1):
            if tnl in line.lower():
                in_table = True
                print("Started", tnl)
                continue
            if in_table:
                if not line.strip():
                    print("#total anagrams found in table={:d}".format(len(stuff)))
                    print("{:s}={:s}".format(tab_name_short, ','.join(stuff)))
                    return
                ary=line.split("\t")
                the_ana = ary[5]
                if '"' not in the_ana: continue
                the_ana = re.sub("\"", "", the_ana)
                stuff.append(the_ana)
    sys.exit("Failed to generate anagrams for " + tab_name_short)

# determine if we can still switch a pair. With 3 letters left, it is not possible. With 2, it should be.
#

def can_take_even(x):
    if x % 2 == 0: return x > 0
    else: return x > 3

# here is the explanation of the algorithm to produce an anagram without any clashing letters:
#
# 1. unless we have exactly 3 letters to place, we look for the 2 most frequent letters that have not been switched yet and switch the earliest incidences of each
# 2. if there are 3 unique letters remaining, then we go a->b->c.
#   2a. Note that we can never have 2-1 left, because the previous would have to have 3-?-?. If we started with, say, 2-2-1, we would have 1-1-1 after. Similarly we can never have x-(summing less to x) unless we start with something unviable, because we'd have to have had x+1 and (something less than x+1) on the previous try. If we had x on the previous try, we would have deducted from it.
#   note having y>x/2 in x letters means we cannot have a unique anagram. That is because we would have x-y slots to move the y to, but x<2y so that doesn't work.

def find_nomatch_anagram(x):
    x = re.sub("[- '\.]", "", x.lower()) # allow for spaces, apostrophes, etc.
    if not len(x):
        print("Blank string...")
        return ""
    old_string = list(x)
    new_string = ['-'] * len(x)
    f = defaultdict(list)
    letters_to_place = len(old_string)
    for y in range(0, len(x)):
        if old_string[y] not in 'abcdefghijklmnopqrstuvwxyz':
            print("Nonalphabetical character ({:s}) in {:s} slot {:d}".format(old_string[y], x, y+1))
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

def show_results(q, result_string = "{0} has this anagram with no letters in common: {1}"):
    if q != q.lower():
        result_string = result_string.replace('@sli\n', '')
        q = q.lower()
    if unmatches_to_find > 0:
        temp = ','.join(first_x_anagrams(q, unmatches_to_find))
    else:
        temp = find_nomatch_anagram(q)
    if not temp: return
    print(result_string.format(q, temp))
    if unmatches_to_find == 0:
        print("Put a number on the command line if you need more.")

def assign_stuff(x, line_count):
    x = re.sub(" *[\\\/] *$", "", x)
    ary = x.split("=")
    if len(ary) != 2: sys.exit("Need REGION=(CSVS) at line {:d}, has {:d} partitions via =".format(line_count, len(ary)))
    if ',' not in ary[1]: sys.exit("Need CSV on right hand side at line {:d}".format(line_count))
    for rv in ary[0].split("/"):
        reg_verbs[rv] = ary[1]

def read_region_chunks():
    whole_string = ""
    if not os.path.exists(amak_txt):
        print("Skipping word-combo config file.")
        return
    with open(amak_txt) as file:
        for (line_count, line) in enumerate(file, 1):
            if re.search("#.*[a-zA-Z],[a-zA-Z]", line):
                print("WARNING line", line_count, "has commas after #")
            if line.startswith("#"): continue
            if line.startswith(";"): break
            line = re.sub(" *#.*", "", line)
            #print("Adding", line.strip())
            if line.strip().endswith("\\") or line.strip().endswith("/"):
                if whole_string and not whole_string.endswith(","):
                    whole_string += ","
                whole_string += re.sub(" *$", "", line.strip()[:-1])
                continue
            if whole_string:
                if line.strip() and not whole_string.endswith(","):
                    whole_string += ","
                line = whole_string + line.strip()
                whole_string = ""
            ll = line.lower().strip()
            assign_stuff(ll, line_count)
    if whole_string:
        print("OOPS did not end file with proper unslashed line.")
        print(whole_string)
        assign_stuff(whole_string, line_count)

read_region_chunks()

my_tests = [ "aabbb",
  "stroll", #this "broke" my original tries of just flipping every next letters, or trying to cycle through letters
  "aaabbbc", # this is a tricky case where if we just swap the a's and b's, we fail. But we can swap an (a or b) with a C.
  "aaabbcc", # this is another case where we only have 3 different letters, which may be tricky
  "babaab", # another boundary case where ababba is the only solution
  "basically", # this is a random word used for a potential puzzle. It has two pairs of identical letters
  "TeTrIs", # making sure odd input like capital letters is processed ok
  "try this", # making sure that we allow spaces and nothing goes wrong
  "123abc", # we need to bail on bad values
  "" # we need to handle blank values acceptably
  ]

words_to_shift = []

NO_FORMATS = 1
COMMAND_AND_COMMENT = 2
FULL_TEST_FILE_NOTES = 3
format_type = FULL_TEST_FILE_NOTES
start_word = ""
end_word = ""
start_after = False
tests_to_search = []

if len(sys.argv) > 1:
    for q in sys.argv[1:]:
        if q[:2] == 'g=':
            generate_it(q[2:])
        elif q == 's1': shift_1_on_no_repeat = True #this works for one option, but what if there are several?
        elif q == 'tr': try_rotating_first = True #this works for one option, but what if there are several?
        elif q == 'c': format_type = COMMAND_AND_COMMENT
        elif q == 'cx': format_type = FULL_TEST_FILE_NOTES
        elif q == 'nc': format_type = NO_FORMATS
        elif q.isdigit():
            unmatches_to_find = int(q)
        elif q[:2] == 's=':
            start_word = q[2:]
        elif q[:2] == 'e=':
            end_word = q[2:]
        elif q[:2] == 'a=':
            start_word = q[2:]
            start_after = True
        elif q == 'e':
            os.system(amak_txt)
            sys.exit()
        elif q == 'sc':
            slider_script_check()
            sys.exit()
        elif q == 'as':
            add_suggested = True
        elif q == 'asn' or q == 'nas':
            add_suggested = False
        elif q[:3] == 'tsa':
            tests_to_search = [ "ordeal-reload", "routes", "troves", "presto", "oyster", "towers", "otters", "others"]
        elif q[:3] == 'ts=':
            tests_to_search = q[3:].split(",")
        elif q == '?':
            usage()
            exit()
        else:
            if q in reg_verbs:
                rs = reg_verbs[q].split(",")
                print("Getting verb chunk for", q, "and found", len(rs))
                words_to_shift += rs
                total_shifts += len(rs)
            else:
                ary = q.split(',')
                words_to_shift.append(ary[0].lower())
                for x in range(1,len(ary)):
                    words_to_shift.append(ary[x].upper())

if format_type == FULL_TEST_FILE_NOTES:
    format_string = "@sli\n#slider test for {0}\n>{1}\nYour settler begins to make noises: a low hum, but nothing really piercing."
elif format_type == COMMAND_AND_COMMENT:
    format_string = "@sli\n#slider test for {0}\n>{1}"
elif format_type == NO_FORMATS:
    format_string = "{0} <=> {1}"
else:
    sys.exit("Unknown format string.")

if len(tests_to_search):
    for x in tests_to_search:
        test_search(x)
    exit()

if not len(words_to_shift):
    print("Nothing found. Using my tests")
    words_to_shift = list(my_tests)
    print("amak.py should be used to see how to shift a word.")

actual_convert = 0
found_end_word = True
found_start_word = True
if start_word:
    found_start_word = False

for w in words_to_shift:
    if not found_start_word:
        if start_word in w:
            found_start_word = True
            if start_after: continue
        else:
            continue
    show_results(w, format_string)
    actual_convert += 1
    if not found_end_word:
        if end_word in w:
            if not found_start_word:
                print("End word found before start word.")
            break

if not found_start_word: print("Did not find start word", start_word)

if actual_convert < total_shifts:
    print(actual_convert, "of", total_shifts, "words converted.")
