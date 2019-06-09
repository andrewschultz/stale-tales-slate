#
#rorg.py
#
#arrange table and nudge files' auxiliary sections in the same order they appear in the table
#
# abc rule / def rule / "[ghi]"
# jkl rule / mno rule / "[pqr] [ghi]"
#
# would list lines with abc, def, ghi, jkl. mno, pqr.
#
# to fix: hard coded ignore and alf_stuff calls
#
#

import mytools
import re
import os
import i7
import sys

from filecmp import cmp
from collections import defaultdict

cfg_file = "c:/writing/scripts/rorg.txt"
ignore_full = defaultdict(bool)
ignore_start = defaultdict(bool)

verbose = False

copy_file = False

# default is to do everything
game_ary = [ "sa", "roi" ]
do_nudges = True
do_tables = False

bail_force = False
bail_on_mismatch = False

table_starts = defaultdict(int)
table_order = defaultdict(tuple)
first_table = defaultdict(str)
sect_order = defaultdict(int)

temp_file = os.path.join(i7.extdir, "temp.i7x")
tbase = os.path.basename(temp_file)

def usage(err_cmd = "General usage"):
    print(err_cmd)
    print("=" * 50)
    print("r/s or both tell whether to use roiling or shuffling")
    print("n/t tells whether to alphabetize nudges or tables")
    print("c/nc/cn tells whether to copy back")
    print("v/nv/vn toggles verbose output")
    print("b/bf/fb forces bail if a section is missed")
    print("bm/mb bails on mismatch")
    print("? gives this")
    exit()

def invalid_conditional(s):
    sl = s.lower()
    for full in ignore_full:
        if sl == full: return True
    for start in ignore_start:
        if sl.startswith(start): return True
    return False

def alf_stuff(my_f, table_start, table_end, sort_start, sort_end, table_col_0, exp_cols = 0):
    sect_order.clear()
    table_order.clear()
    in_table = False
    my_table = ""
    write_lines = True
    near_end = False
    cur_rule_or_quote = ""
    cur_full_quote = defaultdict(str)
    ending_bit = ""
    in_aux = False
    in_necc_section = False
    ever_necc_section = False
    ever_table = False
    ever_sort_start = False
    temp_out = open(temp_file, "w")
    fbase = os.path.basename(my_f)
    dupes = 0
    garbage = ""
    with open(my_f) as file:
        for (line_count, line) in enumerate(file, 1):
            if not write_lines and sort_end in line:
                write_lines = True
                near_end = True
            if near_end:
                ending_bit += line
                continue
            if table_start in line:
                in_necc_section = True
                ever_necc_section = True
            if table_end in line:
                in_necc_section = False
            if write_lines:
                temp_out.write(line)
            if sort_start in line:
                ever_sort_start = True
                in_aux = True
                write_lines = False
                temp_out.write("\n")
                continue
            if line.startswith("table of") and in_necc_section:
                my_table = re.sub("table of ", "", line.lower().strip())
                my_table = re.sub(" *\[.*", "", my_table)
                my_table = re.sub(" *(nudges|anagrams)", "", my_table)
                table_starts[my_table] = line_count
                continue
            if line.startswith(table_col_0):
                in_table = True
                ever_table = True
                continue
            if not line.strip():
                in_table = False
                cur_rule_or_quote = ""
                continue
            if in_table:
                lary = line.lower().split("\t")
                if exp_cols and len(lary) != exp_cols: print("Bad # of tabs in table at line {:d}. Should have 6.".format(line_count))
                for x in range(0, len(lary)):
                    if lary[x].endswith(" rule") and lary[x] != 'a rule' and lary[x] not in table_order:
                        temp = re.sub("^the ", "", lary[x].lower())
                        table_order[lary[x]] = (line_count, x)
                        continue
                    if not lary[x].startswith("\""): continue
                    my_str = re.sub("^\"", "", lary[x])
                    my_str = re.sub("\".*", "", my_str)
                    line_not = x
                    for brax in re.findall("\[[^\]]*\]", my_str):
                        brax = re.sub("[\[\]]", "", brax)
                        if invalid_conditional(brax): continue
                        brax = re.sub(" +of .*", "", brax)
                        if brax not in table_order:
                            first_table[brax] = my_table
                            if verbose: print("Adding", brax, line_count, my_table, len(table_order))
                            table_order[brax] = (line_count, line_not)
                            line_not += 1
            elif in_aux:
                if line.startswith("to say"):
                    temp = re.sub("^to say ", "", line.lower().strip())
                    temp = re.sub(" *:.*", "", temp)
                    temp = re.sub(" +of .*", "", temp)
                    if verbose: print(temp, "listed at line", line_count)
                    if temp in sect_order:
                        print("Duplicate section", temp, "line", line_count)
                        dupes += 1
                    sect_order[temp] = line_count
                    cur_rule_or_quote = temp
                    cur_full_quote[cur_rule_or_quote] = ""
                elif line.startswith("this is "):
                    temp = re.sub("^this is (the )?", "", line.lower().strip())
                    temp = re.sub(" *:.*", "", temp)
                    if verbose: print(temp, "listed at line", line_count)
                    if temp in sect_order:
                        print("Duplicate section", temp, "line", line_count)
                        dupes += 1
                    sect_order[temp] = line_count
                    cur_rule_or_quote = temp
                    cur_full_quote[cur_rule_or_quote] = ""
                elif not line.startswith("\t") and line.strip(): print("Possible rule misfire", line_count, line.strip())
                if cur_rule_or_quote: cur_full_quote[cur_rule_or_quote] += line
                else:
                    if not line.startswith("\t"): garbage += "\n"
                    garbage += line
            # print(line_count, in_table, write_lines, line[:20].strip())
    bail = False
    if not ever_necc_section:
        print("Never crossed necessary section. Need {:s} somewhere.".format(table_start))
        bail = True
    if not ever_sort_start:
        print("Never crossed sort-starting line. Need {:s} somewhere.".format(sort_start))
        bail = True
    if not ever_table:
        print("Never tried to sort table. Need {:s} in first column.".format(table_col_0))
        bail = True
    if bail_force and bail: sys.exit()
    x = list(set(sect_order) - set(table_order) - set(ignore_full))
    if len(x):
        print("Print commands not in table:")
        count = 0
        for cmd in sorted(x, key=lambda x:sect_order[x]):
            count += 1
            print("{:2d} Line {:5d} has print command {:s}.".format(count, sect_order[cmd], cmd))
    y = list(set(table_order) - set(sect_order) - set(ignore_full))
    if len(y):
        print("Table commands not in print:")
        count = 0
        for cmd in sorted(y, key=lambda x:table_order[x]):
            count += 1
            print("{:2d} Line {:5d} has print command {:s}.".format(count, table_order[cmd][0], cmd))
    if not len(x) and not len(y): print("Table and print commands all match up! Yay!")
    elif bail_on_mismatch: sys.exit("Bailing on mismatches.")
    ts = sorted(table_starts, key=table_starts.get)
    table_got = dict(sect_order)
    for q in sorted(table_order, key=table_order.get):
        if q in ignore_full: continue
        if q not in cur_full_quote: continue
        if q in table_got:
            table_got.pop(q, None)
        else:
            print("Something weird happened. Tried to pop", q, "from the table_order dictionary but couldn't.")
        # print(q, table_order[q], ts, ts[0], table_starts[ts[0]])
        if len(ts) and table_order[q][0] > table_starts[ts[0]]:
            #if not pop_yet: temp_out.write("\n")
            temp_out.write("section {:s} auxiliary\n\n".format(ts[0]))
            ts.pop(0)
            #if not pop_yet: temp_out.write("\n")
        temp_out.write(cur_full_quote[q] + "\n")
    if len(table_got):
        print(len(table_got), "unique left over,", dupes, "total duplicates. Dumping unsorted stuff at the end:", '/'.join(table_got))
        temp_out.write("\nbook leftovers\n\n")
        for q in table_got: temp_out.write("{:s}\n\n".format(cur_full_quote[q]))
    else: print("Nothing left over. Hooray.")
    if garbage:
        temp_out.write("book random leftover garbage")
        temp_out.write(garbage)
        print(garbage.count("\n"), "lines of garbage.")
        temp_out.write("\n")
    temp_out.write(ending_bit)
    temp_out.close()
    if cmp(temp_file, my_f):
        print("Files matched!")
        return
    else:
        print("Mismatches between {:s} and {:s}!".format(tbase, fbase))
        mytools.cs(my_f, temp_file, True, 20)
    if copy_file:
        filecpy(temp_file, my_f)
    else:
        i7.wm(temp_file, my_f)
    #os.remove(temp_file)
    print("Finished", fbase)
    sys.exit()

cmd_count = 1
while cmd_count < len(sys.argv):
    arg = sys.argv[cmd_count].lower()
    if arg == 'c': copy_file = True
    elif arg == 'nc' or arg == 'cn': copy_file = False
    elif arg == 'v': verbose = True
    elif arg == 'nv' or arg == 'vn': verbose = False
    elif arg == 'nt' or arg == 'tn': do_tables = do_nudges = True
    elif arg == 'n':
        do_nudges = True
        do_tables = False
    elif arg == 't':
        do_nudges = False
        do_tables = True
    elif arg == 'b' or arg == 'bf' or arg == 'fb': bail_force = True
    elif arg == 'bm' or arg == 'mb': bail_on_mismatch = True
    elif arg == 'rs': game_ary = [ "roi", "sa" ]
    elif arg == 'sr': game_ary = [ "sa", "roi" ]
    elif arg == 'r' or arg == 'roi': game_ary = [ "roi" ]
    elif arg == 'sa' or arg == 's': game_ary = [ "sa" ]
    elif arg == '?': usage()
    else: usage("Bad command " + arg)
    cmd_count += 1

with open(cfg_file) as file:
    for (line_count, line) in enumerate(file, 1):
        if line.startswith(";"): break
        if line.startswith("#"): continue
        line = re.sub("#.*", "", line.lower()) # comments after listed items are okay
        start_dict = False
        if line.startswith("start:"):
            line = line[6:]
            start_dict = True
        lary = [ x.lstrip() for x in line.strip().lower().split(",") ] # a, b and a,b should work, but a, b will want the space at the end
        for l in lary:
            if start_dict: ignore_start[l] = True
            else: ignore_full[l] = True

for x in game_ary:
    if do_nudges:
        alf_stuff(i7.hdr(x, "nu"), "book nudge tables", "book auxiliary text and rules", "book auxiliary text and rules", "book support rules", "this-cmd", 6)
    if do_tables:
        alf_stuff(i7.hdr(x, "ta"), "volume main anagram tables", "book auxiliary text and rules", "book auxiliary text and rules", "book general auxiliary rules" if x == "roi" else "volume specific help for things you need to flip", "the-from", 0)
