#bop.py = by one point
#
#utility to make sure we have a check for every reverse after getting a point.
#

import sys
import os
import re
import i7
import glob
from collections import defaultdict

open_files_after = False
show_score = False
nudmis = False
verbose = False

do_before = True
do_after = True

file_filter = 'routes', 'troves'

threshold = 40

test_ary = [ 'sa', 'roi' ]

ignore_errs = defaultdict(bool)

region_maxes = defaultdict(int)
open_after = defaultdict(int)

ignore_errs['sixteen'] = True

def show_formats():
    print("========stuff before")
    print("#notmax = not part of the maximum path, not worth testing, probably because already tested")
    print("#notana = by-one-point action that is not a testable anagram")
    print("========stuff after")
    print("#altpath = alternate path that gets a point but doesn't count to the main total")
    exit()

def usage():
    print("-(123) = decide which project to look at")
    print("-a = after only, -b = before only")
    print("-f = show file format for RBR/NUDMIS files")
    print("-o = open error-flagged file(s) after, -no/-on=don't open")
    print("-r = specific region")
    print("-s = show score commands, -ns/-sn = hide score commands")
    exit()

def get_region_maxes(x):
    region_maxes.clear()
    found_max_score = False
    with open(i7.src(x)) as file:
        for (line_count, line) in enumerate(file, 1):
            if 'max-score of' in line and 'min-score of' in line:
                l1 = re.sub(".*max-score of *", "", line.strip().lower())
                l1 = re.sub(" .*", "", l1)
                l2 = re.sub(".*max-score.*?is ", "", line.strip().lower())
                l2 = re.sub("\..*", "", l2)
                # print(l1, l2)
                region_maxes[l1] = int(l2)
                found_max_score = True
            if found_max_score:
                if re.search("^(chapter|book|section|volume|part)", line, re.IGNORECASE):
                    return
                    print(line_count, "where we bail")
                    for x in sorted(region_maxes.keys(), key=region_maxes.get): print(x, region_maxes[x])
    sys.exit("Oops {:s} was trawled badly.".format(x))

def points_in(x):
    if 'two' in x: return 2
    if 'three' in x: return 3
    return 1

def cmd_to_alfchunk(y):
    ret_string = ''.join(sorted(re.sub("[^a-z]", "", y)))
    lr = len(ret_string)
    if lr % 2 or lr < 2: return ret_string
    for x in range (0, len(ret_string), 2):
        if ret_string[x] != ret_string[x+1]: return ret_string
    return ret_string[::2]

def testproj(proj):
    get_region_maxes(proj)
    print('Looking for project', proj, 'wildcard {:s}'.format(file_filter) if file_filter else 'all files')
    if nudmis:
        rbr_to_glob = "{:s}\\reg-{:s}-*nudmis*.txt".format(i7.proj2dir(proj), proj)
    else:
        rbr_to_glob = "{:s}\\rbr-{:s}-*.txt".format(i7.proj2dir(proj), proj)
    glob_fi = glob.glob(rbr_to_glob)
    global_total = 0
    pts_this_region = 0
    this_cmds = defaultdict(int)
    cur_points = 0
    dup_points = 0
    alt_points_this_region = 0
    local_total = -1
    spechelps = defaultdict(int)
    for f in glob_fi:
        if file_filter and file_filter not in f: continue
        local_total = 0
        print(f)
        fb = os.path.basename(f)
        with open(f) as myfi: content = [x.strip() for x in myfi.readlines()]
        for ln in range(0, len(content)):
            if content[ln].startswith('>'): last_cmd = content[ln] # this can be used in place of ln-1 etc. later
            if content[ln-1].startswith('#spechelp'):
                if content[ln].startswith(">"):
                    spechelps[cmd_to_alfchunk(content[ln])] = ln - 1
                else:
                    sys.exit("Need a command right after spechelp, {:s} line {:d}.".format(f, ln))
            if re.search("by (one|two|three) point", content[ln]) and not content[ln].startswith("!"):
                if '#notmax' in content[ln-1].lower(): continue # not good enough. There will still be some alternate points such as 2/3 from Hacks Shack. I've put in, uh, a hack for this now, but I can do better
                cur_points = points_in(content[ln])
                if '#altpath' in content[ln+1].lower():
                    alt_points_this_region += cur_points
                    cur_points = 0
                else: pts_this_region += cur_points
                is_anagram = True
                if cur_points and show_score:
                    lntemp = ln - 1
                    if '#notana' in content[lntemp]:
                        is_anagram = "'" in content[lntemp]
                        lntemp -= 1
                    print("{:5d} {:d} {:2d} {:s} {:s}".format(lntemp, cur_points, pts_this_region, content[lntemp], '' if is_anagram else '(not anagram)'))
                if '#notana' in content[ln-1].lower(): continue
                if not content[ln-1].startswith('>'):
                    print("Maybe need command before BY ONE POINT at lines", ln, ln-1)
                    continue
                tofind = cmd_to_alfchunk(content[ln-1])
                mycmd = content[ln-1]
                if mycmd in this_cmds:
                    print(mycmd, "featured twice in walkthrough at lines", this_cmds[mycmd], "and", ln)
                    if f not in open_after.keys(): open_after[f] = ln
                    dup_points += cur_points
                else: this_cmds[mycmd] = ln
                #print(ln-1, tofind)
                got_one_prev = -1
                got_one_fwd = -1
                if not cur_points: continue
                if do_before:
                    cmdalf = cmd_to_alfchunk(content[ln-1])
                    if cmdalf in spechelps.keys():
                        got_one_prev = spechelps[cmdalf]
                    else:
                        if 1 == 2:
                            for x in range(max(0, ln-threshold), ln):
                                if cmdalf == cmd_to_alfchunk(content[x]) and content[x] != mycmd and content[x].startswith('#'):
                                    print('!!', x, mycmd, content[x])
                                    got_one_prev = x
                    if got_one_prev == -1:
                        global_total += 1
                        local_total += 1
                        if f not in open_after.keys(): open_after[f] = ln
                        print(fb, global_total, local_total, "May need something previous--or #notana tag--for", ln-1, content[ln-1])
                    elif verbose:
                        print("PREV of", ln-1, content[ln-1], "is", got_one_prev, content[got_one_prev])
                if do_after:
                    for x in range(ln, min(len(content)-1, ln+threshold)):
                        if cmd_to_alfchunk(content[x]) == tofind and content[x] != mycmd: got_one_fwd = x
                    if got_one_fwd == -1:
                        global_total += 1
                        local_total += 1
                        if f not in open_after.keys(): open_after[f] = ln
                        print(fb, global_total, local_total, "May need something after for", ln-1, content[ln-1])
                    elif verbose:
                        print("PREV of", ln-1, content[ln-1], "is", got_one_fwd, content[got_one_fwd])
    if local_total == -1:
        print("No files matching", file_filter.upper(), "found for project", proj)
        return
    print(pts_this_region, "points this region", alt_points_this_region, "alt points", local_total, "errors")
    if file_filter:
        if file_filter not in region_maxes.keys():
            print("Nothing in file filter", file_filter)
        else:
            if pts_this_region != region_maxes[file_filter]:
                print("Have", pts_this_region, "need", region_maxes[file_filter])
                if open_files_after:
                    for q in glob_fi:
                        if q not in open_after.keys() and file_filter in q:
                            print("Opening", q)
                            os.system(q)
    if dup_points: print("Duplicate points", dup_points)

############################start main program: read in command line, etc.

count = 1

while count < len(sys.argv):
    arg = sys.argv[count].lower()
    if arg[0] == '-': arg = arg[1:]
    if arg == '3' or arg == '12' or arg == '21': test_ary = ['sa', 'roi']
    elif arg == '2': test_ary = ['roi']
    elif arg == '1': test_ary = ['sa']
    if arg == 'a':
        do_after = True
        do_before = False
    elif arg == 'b':
        do_after = False
        do_before = True
    elif arg == 'f': show_formats()
    elif arg == 'o': open_files_after = True
    elif arg == 'no' or arg == 'on': open_files_after = False
    elif arg == 's': show_score = True
    elif arg == 'ns' or arg == 'sn': show_score = False
    elif arg == 'r':
        file_filter = sys.argv[count+1].lower()
        count += 1
    elif arg[0] =='r': file_filter = arg[1:]
    elif arg == '?': usage()
    else:
        print("Unrecognized command", arg)
        usage()
    count += 1

for proj in test_ary: testproj(proj)

if open_files_after:
    if open_after.keys():
        for f in open_after.keys():
            i7.npo(f, open_after[f], bail = False)
        else:
            print("No error files to open.")
else:
    if open_after.keys(): print("Use -o to open files that flagged errors.")
    else: print("No error files, but if there were any, -o would open them.")