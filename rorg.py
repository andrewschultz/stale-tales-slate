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
to_ignore = defaultdict(bool)

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
    if s == "stopping" or s == "else" or s == "end if" or s == 'i' or s == 'r' or s == 'or' or s == "'" or s == 'paragraph break' or s == 'one of' or s == 'run paragraph on': return True
    if s.startswith("unless ") or s.startswith("else if ") or s.startswith("if ") or s.startswith("start "): return True
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
    in_necc_section = False
    ever_necc_section = False
    ever_table = False
    ever_sort_start = False
    temp_out = open(temp_file, "w")
    fbase = os.path.basename(my_f)
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
            else:
                if line.startswith("to say"):
                    temp = re.sub("^to say ", "", line.lower().strip())
                    temp = re.sub(" *:.*", "", temp)
                    temp = re.sub(" +of .*", "", temp)
                    if verbose: print(temp, "listed at line", line_count)
                    sect_order[temp] = line_count
                    cur_rule_or_quote = temp
                    cur_full_quote[cur_rule_or_quote] = ""
                if line.startswith("this is "):
                    temp = re.sub("^this is (the )?", "", line.strip())
                    temp = re.sub(" *:.*", "", temp)
                    if verbose: print(temp, "listed at line", line_count)
                    sect_order[temp] = line_count
                    cur_rule_or_quote = temp
                    cur_full_quote[cur_rule_or_quote] = ""
                if cur_rule_or_quote: cur_full_quote[cur_rule_or_quote] += line
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
    x = list(set(sect_order) - set(table_order) - set(to_ignore))
    if len(x):
        print("Print commands not in table:")
        for cmd in sorted(x, key=lambda x:sect_order[x]):
            print("Line {:5d} has print command {:s}.".format(sect_order[cmd], cmd))
    y = list(set(table_order) - set(sect_order) - set(to_ignore))
    if len(y):
        print("Table commands not in print:")
        for cmd in sorted(y, key=lambda x:table_order[x]):
            print("Line {:5d} has print command {:s}.".format(table_order[cmd][0], cmd))
    if not len(x) and not len(y): print("Table and print commands all match up! Yay!")
    elif bail_on_mismatch: sys.exit("Bailing on mismatches.")
    ts = sorted(table_starts, key=table_starts.get)
    for q in sorted(table_order, key=table_order.get):
        if q in to_ignore: continue
        if q not in cur_full_quote:
            print(q, "line", table_order[q][0], "is in a table but not in auxiliary/ignore.")
        # print(q, table_order[q], ts, ts[0], table_starts[ts[0]])
        if len(ts) and table_order[q][0] > table_starts[ts[0]]:
            #if not pop_yet: temp_out.write("\n")
            temp_out.write("section {:s} auxiliary\n\n".format(ts[0]))
            ts.pop(0)
            #if not pop_yet: temp_out.write("\n")
        temp_out.write(cur_full_quote[q] + "\n")
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
        line = re.sub("#.*", "", line) # comments after listed items are okay
        lary = [ x.strip() for x in line.strip().lower().split(",") ] # a, b and a,b should work
        for l in lary: to_ignore[l] = True

for x in game_ary:
    if do_nudges:
        alf_stuff(i7.hdr(x, "nu"), "book nudge tables", "book auxiliary text and rules", "book auxiliary text and rules", "book support rules", "this-cmd", 6)
    if do_tables:
        alf_stuff(i7.hdr(x, "ta"), "volume main anagram tables", "book auxiliary text and rules", "book auxiliary text and rules", "volume demo dome tables" if x == "roi" else "volume specific help for things you need to flip", "the-from", 0)
