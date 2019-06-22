#
# anc.py : python anagram checker
#

import mytools as mt
from math import gcd
from collections import defaultdict
from shutil import copy
import sys
import os
import re
import i7

replacement_dict_file = "anc.txt"
anagram_focus_file = "anc-focus.txt"

mt.bail_if_not(replacement_dict_file)
mt.bail_if_not(anagram_focus_file)

open_the_files = defaultdict(int)
focused_already = defaultdict(int)
last_table_search = ""
first_table_search = ""

show_skips = False
print_freq = False
view_different = False
open_after = False

focus_max = 10
max_do = 0
brax = defaultdict(str)
acc = defaultdict(str)
all_ana = 0

def usage(cmd="GENERAL USAGE"):
    print(cmd)
    print('=' * 50)
    print("s = show skips, f = print frequencies")
    exit()

def ignore_tokens(x): #should have a dict with iterations if there are more than 2 tables to skip
    if 'of psas' in x: return True
    if 'of megachatter' in x: return True
    return False

def check_valid_token_count(x):
    x1 = x
    if '"' in x: x = to_end_quote(x)
    tix = x.count('`')
    if tix % 2: sys.exit("UH OH bailing. We need even number of backticks but have {:d} for this line: {:s}".format(tix, x.strip()))
    gt = x.count('>')
    if gt > 1: sys.exit("UH OH bailing. We can only have 1 greater-than sign but have {:d} for this line: {:s}".format(gt, x.strip()))
    lt = x.count('<')
    if lt > 1: sys.exit("UH OH bailing. We can only have 1 greater-than sign but have {:d} for this line: {:s}".format(lt, x.strip()))

def use_isolate_tokens(x):
    if ignore_tokens(this_table): return x
    check_valid_token_count(x)
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
    if re.search("^(continues|the|an|a) ", lx):
        lx = re.sub("^(continues|the|an|a) ", "", lx)
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
    last_err = 0
    consec_err = 0
    f = i7.hdr(a, "ra")
    fb = os.path.basename(f)
    print("Going through", fb)
    first_table_yet = False
    last_table_yet = False
    any_in = defaultdict(int)
    any_count = defaultdict(int)
    with open(f) as file:
        for (line_count, line) in enumerate(file, 1):
            if line.startswith("table") and "\t" not in line:
                this_table = re.sub(" *\[.*", "", line.lower().strip())
                if first_table_search and not first_table_yet and first_table_search not in this_table:
                    this_table = ""
                else:
                    first_table_yet = True
                    this_tl = 0
                continue
            ll = to_end_quote(line.lower().strip())
            if last_table_search and last_table_search in this_table and not ll:
                last_table_yet = True
                break
            if ll in focused_already:
                if show_skips: print("Skipping line", line_count, ll[:15])
                focused_already.pop(ll)
                continue
            if 'huck taft' in ll:
                print(ll)
                sys.exit(focused_already)
            this_tl += 1
            if not first_table_yet: continue
            if not line.startswith("\""): continue
            if actual_anagram(line): continue
            if this_table != last_table:
                any_in[this_table] = line_count
                print("**** new table ****", this_table, "line", line_count, "for", fb)
                last_table = this_table
            all_ana += 1
            this_ana += 1
            any_count[this_table] += 1
            if open_after: open_the_files[f] = line_count
            if line_count == last_err + 1:
                consec_err += 1
            else:
                consec_err = 0
            print("{:4d}/{:4d} LINE {:5d} TAB-ROW {:4d}{:s} may not be anagram: {:s}".format(this_ana, all_ana, line_count, this_tl, "" if consec_err == 0 else "/{:d}".format(consec_err),line.strip()))
            last_err = line_count
            if all_ana == max_do:
                print("Got", max_do, "bailing.")
                break
    if open_the_files[f]: i7.npo(f, open_the_files[f], bail = False)
    if len(any_in) > 1:
        print('SUMMARY ({:d}):'.format(len(any_in)), ' '.join(["{:s}-{:d}-{:d}".format(x, any_in[x], any_count[x]) for x in sorted(any_in, key=any_in.get)]))

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
    return r'\[({:s})\]'.format('|'.join(brax))

def no_focus_markers(s, reduce = False):
    if reduce: s = s.lower().strip()
    return re.sub("[`><]", "", s)

def to_end_quote(s):
    if len(s) == 0: return ""
    if s[0] == '"': s = s[1:]
    return re.sub("\".*", "", s)

def has_focus_markers(s):
    return '`' in s or '<' in s or '>' in s

def pre_commit_check(my_game):
    hdr = i7.hdr(my_game, "ra")
    my_table = ""
    bad_lines = 0
    last_bad_line = 0
    with open(hdr) as file:
        for (line_count, line) in enumerate(file, 1):
            if line.startswith('table') and not '\t' in line:
                my_table = line.lower().strip()
                continue
            if not line.strip():
                my_table = ""
                continue
            if not my_table: continue
            if not ignore_tokens(my_table):
                ll = to_end_quote(line)
                if '`' in ll or '>' in ll or '<' in ll:
                    last_bad_line = line_count
                    bad_lines += 1
                    print("Line", line_count, "in", os.path.basename(hdr), "/", my_table, "needs tokens removed:", line.lower().strip())
    if last_bad_line: open_the_files[hdr] = last_bad_line
    return bad_lines

def get_anagram_focus():
    with open(anagram_focus_file) as file:
        for (line_count, line) in enumerate(file, 1):
            if line.startswith("#"): continue
            if line.startswith(";"): break
            ll = to_end_quote(line.lower().strip())
            if not ll: continue
            ll = no_focus_markers(ll)
            if ll in focused_already:
                print("Uh oh duplicate focused already", ll, "at", line_count, "duplicating", focused_already[ll])
            else:
                focused_already[ll] = line_count

def rewrite_focus_examples(my_game):
    hdr = i7.hdr(my_game, "ra")
    file_out = "hdr_{:s}_temp.i7x".format(my_game)
    ana_temp = "anc_focus_temp.txt"
    fout = open(file_out, "w", newline='\n')
    copy(anagram_focus_file, ana_temp)
    focout = open(ana_temp, "a")
    changes_sent = 0
    in_table = False
    table_name = ""
    hbase = os.path.basename(hdr)
    with open(hdr) as file:
        for (line_count, line) in enumerate(file, 1):
            if not in_table:
                fout.write(line)
                if line.startswith("table of") and "\t" not in line:
                    in_table = True
                    table_name = line
                continue
            if in_table and not line.strip():
                in_table = False
            if not ignore_tokens(table_name) and has_focus_markers(to_end_quote(line)):
                if not actual_anagram(line):
                    print("{:s} line {:d} has bad focus-marked anagram: {:s}".format(hbase, line_count, line.strip()))
                    i7.npo(hdr, line_count)
                    sys.exit()
                fout.write(no_focus_markers(line))
                focout.write(line)
                changes_sent += 1
                # print(changes_sent, line.strip())
            else:
                fout.write(line)
    focout.close()
    fout.close()
    if not changes_sent:
        print("No changes added to", my_game)
    else:
        print(changes_sent, "changes added to", my_game)
        if copy_i7x_back:
            copy(file_out, hdr)
            copy(ana_temp, anagram_focus_file)
        else:
            print("Use -cc or -cb to copy back the changes.")
    if view_different:
        if changes_sent:
            i7.wm(hdr, file_out)
            i7.wm(anagram_focus_file, ana_temp)
    os.remove(file_out)
    os.remove(ana_temp)
                

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

regex_str = get_brackets()

cmd_count = 1
while cmd_count < len(sys.argv):
    arg = sys.argv[cmd_count].lower()
    if arg == 'f' or arg == 'fp' or arg == 'pf': print_freq = True
    elif arg[0] == '.' or arg[-1] == '.':
        table_search = re.sub("\.", " ", arg).strip()
        if arg[-1] == '.': first_table_search = table_search
        if arg[0] == '.': last_table_search = table_search
    elif ' ' in arg or arg[0] == '=':
        print_freq = True
        if actual_anagram(arg):
            print("Anagram ok")
        else:
            print("for", arg)
        exit()
    elif arg == 'c': convert_anagram_focused = True
    elif arg == 'v' or arg == 'vd': view_different = True
    elif arg[0] == 'm' and arg[1:].isdigit():
        max_do = int(arg[1:])
    elif arg == 'cb' or arg == 'cc':
        convert_anagram_focused = True
        copy_i7x_back = True
    elif arg == 'ss': show_skips = True
    elif arg == 'o': open_after = True
    elif arg == 'ec': i7.npo("anc.txt")
    elif arg == 'ef': i7.npo("anc-focus.txt")
    elif arg == 'es': i7.npo("anc.py")
    elif arg == 'no' or arg == 'on': open_after = False
    elif arg[:2] == 'fm':
        if isdigit(arg[2:]):
            focus_max = int(arg[2:])
        else:
            sys.exit("fm requires a number after.")
    elif arg[:2] == 'pc':
        temp = 0
        if 'r' in arg or arg == 'pc': temp += pre_commit_check('roi')
        if 's' in arg or arg == 'pc': temp += pre_commit_check('sa')
        if temp > 0:
            print("Fix errors before continuing. -pc or -pcors will open the last wrong line automatically.")
            if 'o' in arg or arg == 'pc':
                for q in open_the_files: i7.npo(q, open_the_files[q], bail=False)
            sys.exit(temp)
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

get_anagram_focus()

for a in anas: ana_check(a)

if not first_table_search and not last_table_search:
    lfa = len(focused_already)
    if lfa:
        q = list(focused_already)
        print("Did not find i7x file for focus file entries:")
        for temp in range(0, min(focus_max, lfa)):
            print(temp+1, q[temp])
        if focus_max < lfa:
            print("Only showed", focus_max, "of", lfa, "unused.")
