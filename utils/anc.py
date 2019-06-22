#
# anc.py : python anagram checker
#

import mytools as mt
from math import gcd
from collections import defaultdict
import sys
import os
import re
import i7

replacement_dict_file = "anc.txt"
anagram_focus_file = "anc-focus.txt"

mt.bail_if_not(replacement_dict_file)
mt.bail_if_not(anagram_focus_file)

focused_already = defaultdict(int)

show_skips = False
print_freq = False

max_do = 0
brax = defaultdict(str)
acc = defaultdict(str)
all_ana = 0

def usage(cmd="GENERAL USAGE"):
    print(cmd)
    print('=' * 50)
    print("s = show skips, f = print frequencies")
    exit()

def ignore_tokens(x):
    if 'of psas' in x: return True
    return False

def use_isolate_tokens(x):
    if ignore_tokens(this_table): return x
    if '>' in x: x = re.sub(".*>", "", x)
    if '<' in x: x = re.sub("<.*", "", x)
    if '`' in x:
        y = x.split("`")
        x = ' '.join(y[1::2])
    return x

def fm(l):
    m = re.sub("\[if player is male\](.*?)\[else\].*?\[end if\]", lambda x: x.group(1), l)
    f = re.sub("\[if player is male\].*?\[else\](.*?)\[end if\]", lambda x: x.group(1), l)
    return (m, f)
    
def convert_brackets(l):
    if l[0] == '"': l = l[1:]
    l = re.sub("\".*", "", l.strip().lower())
    l = re.sub("\[r\],? *by", "", l)
    l0 = l
    l = re.sub(regex_str, lambda x:brax[x.group(1)], l)
    for q in acc:
        if q in l: l = re.sub(q, acc[q], l)
    return l

def actual_anagram(l):
    print_freq_loc = True
    if 'if player is male' in l:
        x = fm(l)
        return actual_anagram(x[0]) + actual_anagram(x[1])
    lx = use_isolate_tokens(l)
    lx = convert_brackets(lx)
    letter_count = defaultdict(int)
    for j in lx:
        if j.isalpha(): letter_count[j] += 1
    lcv = list(letter_count.values())
    if len(lcv) < 2:
        if show_skips: print("Skipping", l.strip())
        return 1
    q = gcd(lcv[0], lcv[1])
    for x in range(2, len(lcv)): q = gcd(q, lcv[x])
    if q > 1: return True
    if re.search("^(the|an|a) ", lx):
        lx = re.sub("^(the|an|a) ", "", lx)
        if actual_anagram(lx): return True
        print_freq_loc = False
    if print_freq and print_freq_loc: print(' '.join(["{:s}={:d}".format(x, letter_count[x]) for x in sorted(letter_count)]))
    return q > 1

this_table = ""
last_table = ""

def ana_check(a):
    global this_tl
    global this_table
    global last_table
    global all_ana
    this_ana = 0
    this_tl = 0
    f = i7.hdr(a, "ra")
    fb = os.path.basename(f)
    print("Going through", fb)
    with open(f) as file:
        for (line_count, line) in enumerate(file, 1):
            if line.startswith("table") and "\t" not in line:
                this_table = re.sub(" *\[.*", "", line.lower().strip())
                this_tl = 0
                continue
            ll = line.lower().strip()
            if ll in focused_already: continue
            this_tl += 1
            if not line.startswith("\""): continue
            if actual_anagram(line): continue
            if this_table != last_table:
                print("**** new table ****", this_table, "line", line_count, "for", fb)
                last_table = this_table
            all_ana += 1
            this_ana += 1
            print("{:4d}/{:4d} LINE {:5d} TAB-ROW {:4d} may not be anagram: {:s}".format(this_ana, all_ana, line_count, this_tl, line.strip()))
            if all_ana == max_do:
                print("Got", max_do, "bailing.")
                sys.exit()

def get_brackets():
    with open(replacement_dict_file) as file:
        for (line_count, line) in enumerate(file, 1):
            if line.startswith("#"): continue
            if line.startswith(";"): break
            l = line.lower().strip().split("\t")
            if len(l) != 2: sys.exit("Line {:d} needs exactly one tab. It has {:d}.".format(line_count, len(l)-1))
            if l[0] in brax: sys.exit("Line {:d} has duplicate bracket term defined: {:s}".format(line_count, l[0]))
            if l[1] == '-': l[1] = ''
            if l[0].startswith("!"):
                acc[l[0][1:]] = l[1]
            else:
                brax[l[0]] = l[1]

def no_focus_markers(s, reduce = False):
    if reduce: s = s.lower().strip()
    return re.sub("[`><]", "", s)

def get_anagram_focus():
    with open(anagram_focus_file) as file:
        for (line_count, line) in enumerate(file, 1):
            if line.startswith("#"): continue
            if line.startswith(";"): break
            ll = line.lower().strip()
            if not ll: continue
            ll = no_focus_markers(ll)
            if ll in focused_already:
                print("Uh oh duplicate focused already", ll, "at", line_count, "duplicating", focused_already[ll])
            else:
                focused_already[ll] = line_count

def rewrite_focus_examples(my_game):
    hdr = i7.hdr(my_game, "ra")
    file_out = "hdr_temp.i7x"
    ana_temp = "anc_focus_temp.txt"
    fout = open(file_out, "w")
    focout = open(ana_temp, "a")
    changes_sent = 0
    with open(hdr) as file:
        for (line_count, line) in enumerate(file, 1):
            if has_focus_markers(line):
                fout.write(no_focus_markers(line))
                if copy_i7x_back:
                    focout.write(line)
                changes_sent += 1
            else:
                fout.write(line)
    focout.close()
    fout.write()
    if not changes_sent:
        print("No changes added to", my_game)
    else:
        print(changes_sent, "changes added to", my_game)
        if copy_i7x_back:
            os.copy(file_out, hdr)
        else:
            print("Use -cc or -cb to copy back the changes.")
    os.delete(file_out)
                

def rewrite_focused_file():
    rewrite_focus_examples("sa")
    rewrite_focus_examples("roi")

###################################
# main program
###################################

get_roiling = False
get_shuffling = False
convert_anagram_focused = False
copy_i7x_back = False

cmd_count = 1
while cmd_count < len(sys.argv):
    arg = sys.argv[cmd_count].lower()
    if arg == 'f' or arg == 'fp' or arg == 'pf': print_freq = True
    elif arg == 'c': convert_anagram_focused = True
    elif arg == 'cb' or arg == 'cc':
        convert_anagram_focused = True
        copy_i7x_back = True
    elif arg == 'ss': show_skips = True
    elif re.search("^[rs]+", arg):
        get_roiling = 'r' in arg
        get_shuffling = 's' in arg
    else: usage("bad command " + arg)
    cmd_count += 1

if convert_anagram_focused:
    rewrite_focused_file()
    exit()

if not get_roiling and not get_shuffling: get_roiling = get_shuffling = True

anas = [ ]

if get_roiling: anas.append("roi")
if get_shuffling: anas.append("sa")

get_brackets()
get_anagram_focus()

regex_str = r'\[({:s})\]'.format('|'.join(brax))

for a in anas: ana_check(a)
