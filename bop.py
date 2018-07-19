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

showscore = False
nudmis = False
verbose = False

do_before = True
do_after = True

only_reg = 'routes'

threshold = 40

def points_in(x):
    if 'two' in x: return 2
    if 'three' in x: return 3
    return 1

def cmd_to_alfchunk(y):
    ret_string = ''.join(sorted(re.sub("[^a-z]", "", y)))
    return ret_string

def testproj(proj):
    if nudmis:
        rbr_to_glob = "{:s}\\reg-{:s}-*nudmis*.txt".format(i7.proj2dir(proj), proj)
    else:
        rbr_to_glob = "{:s}\\rbr-{:s}-*.txt".format(i7.proj2dir(proj), proj)
    x = glob.glob(rbr_to_glob)
    global_total = 0
    pts_this_region = 0
    this_cmds = defaultdict(int)
    cur_points = 0
    dup_points = 0
    for f in x:
        if only_reg and only_reg not in f: continue
        local_total = 0
        print(f)
        fb = os.path.basename(f)
        with open(f) as myfi: content = [x.strip() for x in myfi.readlines()]
        for ln in range(0, len(content)):
            if re.search("by (one|two|three) point", content[ln]) and not content[ln].startswith("!"):
                if '#notmax' in content[ln-1].lower(): continue # not good enough. There will still be some alternate points such as 2/3 from Hacks Shack.
                cur_points = points_in(content[ln])
                if '#altpath' in content[ln+1].lower(): cur_points = 0
                else: pts_this_region += cur_points
                if cur_points and showscore: print(ln-1, cur_points, pts_this_region, content[ln-1])
                if '#notana' in content[ln-1].lower(): continue
                if not content[ln-1].startswith('>'):
                    print("Maybe need command before BY ONE POINT at lines", ln, ln-1)
                    continue
                tofind = cmd_to_alfchunk(content[ln-1])
                mycmd = content[ln-1]
                if mycmd in this_cmds:
                    print(mycmd, "featured twice in walkthrough at lines", this_cmds[mycmd], "and", ln)
                    dup_points += cur_points
                else: this_cmds[mycmd] = ln
                #print(ln-1, tofind)
                got_one_prev = -1
                got_one_fwd = -1
                if not cur_points: continue
                if do_before:
                    for x in range(max(0, ln-threshold), ln-1):
                        if cmd_to_alfchunk(content[x]) == tofind and content[x] != mycmd: got_one_prev = x
                    if got_one_prev == -1:
                        global_total += 1
                        local_total += 1
                        print(fb, global_total, local_total, "May need something previous for", ln-1, content[ln-1])
                    elif verbose:
                        print("PREV of", ln-1, content[ln-1], "is", got_one_prev, content[got_one_prev])
                if do_after:
                    for x in range(ln, min(len(content)-1, ln+threshold)):
                        if cmd_to_alfchunk(content[x]) == tofind and content[x] != mycmd: got_one_fwd = x
                    if got_one_fwd == -1:
                        global_total += 1
                        local_total += 1
                        print(fb, global_total, local_total, "May need something after for", ln-1, content[ln-1])
                    elif verbose:
                        print("PREV of", ln-1, content[ln-1], "is", got_one_fwd, content[got_one_fwd])
    print(pts_this_region, "points this region", local_total, "errors")
    if dup_points: print("Duplicate points", dup_points)

############################read in cmd line

def usage():
    print("-a = after only, -b = before only")
    print("-r = specific region")
    print("-s = show score commands, -ns/-sn = hide score commands")
    exit()

count = 1
while count < len(sys.argv):
    arg = sys.argv[count].lower()
    if arg[0] == '-': arg = arg[1:]
    if arg == 'a':
        do_after = True
        do_before = False
    elif arg == 'b':
        do_after = False
        do_before = True
    elif arg == 's': showscore = True
    elif arg == 'ns' or arg == 'sn': showscore = False
    elif arg == 'r':
        only_reg = sys.argv[count+1].lower()
        count += 1
    elif arg == '?': usage()
    else:
        print("Unrecognized command", arg)
        usage()
    count += 1

#testproj('sa')
testproj('roi')
