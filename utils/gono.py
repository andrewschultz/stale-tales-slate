#
# gono.py: going nowhere test verifier
#
# Stale Tales Slate only, for the moment
#
# though I suppose it could be expanded
#

import sys
import mytools as mt
import re
import i7
from collections import defaultdict
import os

ignores = defaultdict(list)
adds = defaultdict(list)

testdirs = defaultdict(str)

default_dir = 'nw'

falseglo = needglo = 0

gono_cfg = "c:/games/inform/Roiling.inform/source/gono.txt"

def read_ignore_need():
    ignore = True
    with open(gono_cfg) as file:
        for (line_count, line) in enumerate(file, 1):
            if line.startswith(";"): break
            if line.startswith("#"): continue
            (prefix, data) = mt.cfg_data_split(line)
            if line.startswith("ignore"):
                ignore = True
                continue
            elif line.startswith("add"):
                ignore = False
                continue
            if prefix == "testdir":
                ary = data.split(",")
                for a in ary[1:]:
                    testdirs[a] = ary[0]
            elif prefix == "force":
                ary = data.split(",")
                for q in ary[1:]:
                    if ignore:
                        ignores[ary[0]].append(q)
                    else:
                        adds[ary[0]].append(q)
            else:
                print("WARNING invalid prefix", prefix, "at line", line_count, "in", gono_cfg)
                mt.add_postopen(gono_cfg, line_count)
                continue

def check_exits(my_project, table_to_proc = "table of nowheres"):
    in_nowhere_table = False
    skip_next = False
    ever_table = False
    print("Looking up", my_project)
    to_find = defaultdict(int)
    likely_text = defaultdict(str)
    found_in_test = defaultdict(int)
    for x in adds[my_project]: to_find[x] = 0
    file_base = "reg-{}-go-nowhere.txt".format(my_project)
    file_dir = i7.proj2dir(my_project)
    file_full = os.path.join(file_dir, file_base)
    my_src = i7.main_src(my_project)
    with open(my_src) as file:
        for (line_count, line) in enumerate(file, 1):
            if in_nowhere_table:
                if not line.strip():
                    in_nowhere_table = False
                    print("Ended", table_to_proc, "line", line_count)
                    continue
            if skip_next:
                skip_next = False
                continue
            if line.startswith(table_to_proc):
                skip_next = True
                ever_table = True
                print("Started", table_to_proc, "line", line_count)
                in_nowhere_table = True
                continue
            if in_nowhere_table:
                ary = line.strip().split("\t")
                my_loc = ary[0].lower()
            elif line.startswith("check going nowhere"):
                if ' in' not in line: continue
                my_loc = re.sub(" *(:|\().*", "", line.strip().lower())
                my_loc = re.sub(".* in ", "", my_loc)
            else:
                continue
            if my_loc in to_find:
                print("Duplicate nowhere-ing for {} line {} vs {}.".format(my_loc, line_count, to_find[my_loc]))
                mt.add_postopen_file_line(my_src, line_count)
            else:
                to_find[my_loc] = line_count
                likely_text[my_loc] = ary[1].replace('"', '')
    if not ever_table: sys.exit("Could not find table: {}".format(table_to_proc))
    next_thing = ""
    need_dir_next = False
    with open(file_full) as file:
        for (line_count, line) in enumerate(file, 1):
            ll = line.lower().strip()
            if need_dir_next:
                if not ll.startswith(">"):
                    print("Need a command after {} at line {} of {}".format(next_thing, line_count, file_full))
                    mt.add_postopen_file_line(file_full, line_count)
                need_dir_next = False
                continue
            if ll.startswith("#nowhere"):
                my_loc = re.sub("#nowhere *", "", ll)
                if my_loc in found_in_test:
                    print("WARNING duplicate {} at line {} duplicates {}.".format(my_loc, line_count, found_in_test[my_loc]))
                    mt.add_postopen_file_line(file_full, line_count)
                else:
                    found_in_test[my_loc] = line_count
                next_thing = re.sub("^#nowhere *", "", ll)
                need_dir_next = True
    if need_dir_next:
        print("File ended on a #nowhere ({}).".format(line_count))
        mt.add_postopen_file_line(file_full, line_count)
    falsepos = needed = 0
    for x in found_in_test:
        if x not in to_find:
            print("Errant test for {} at line {} of test file.".format(x, found_in_test[x]))
            falsepos += 1
            mt.add_postopen_file_line(file_full, line_count)
    for x in to_find:
        if x not in found_in_test:
            if max_errs and needed <= max_errs:
                print("Need test for {} {}. SEE BELOW ===================".format(x, "at line {} of source".format(to_find[x]) if x in to_find else 'specified in CFG'))
                if print_what:
                    print(">gonear", x)
                    print("#nowhere", x)
                    print(">{}".format(testdirs[my_project]))
                    print(likely_text[x])
                    print()
            if to_find[x]: mt.add_postopen_file_line(my_src, to_find[x])
            needed += 1
    print(falsepos, "false positives,", needed, "needed")
    global falseglo
    global needglo
    if not falsepos and not needed:
        print("HOORAY! {} worked out.".format(my_project))
    needglo += needed
    falseglo += falsepos
    if falseglo or needglo:
        print("Totals:", falseglo, "false positives,", needglo, "needed")

cmd_count = 1

read_ignore_need()

check_roiling = check_shuffling = True

print_what = True
max_errs = 15

while cmd_count < len(sys.argv):
    arg = mt.nohy(sys.argv[cmd_count])
    cmd_count += 1
    if re.search("^[rs]+$", arg):
        check_roiling = 'r' in arg
        check_shuffling = 's' in arg
    elif arg.isdigit():
        max_errs = int(arg)

if check_roiling:
    check_exits("roi")

if check_shuffling:
    check_exits("sa")

if not (falseglo + needglo):
    print("EVERYTHING WORKED!")

mt.postopen_files()
