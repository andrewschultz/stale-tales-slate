#bop.py = by one point
#
#utility to make sure we have a check for every reverse after getting a point.
#

import os
import re
import i7
import glob

showscore = True
nudmis = False
verbose = False

threshold = 40

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
    for f in x:
        if 'troves' not in f: continue
        local_total = 0
        print(f)
        fb = os.path.basename(f)
        with open(f) as myfi: content = [x.strip() for x in myfi.readlines()]
        for ln in range(0, len(content)):
            if re.search("by (one|two|three) point", content[ln]):
                if '#notmax' in content[ln-1].lower(): continue
                pts_this_region += 1
                if showscore: print(ln-1, content[ln-1])
                if not content[ln-1].startswith('>'):
                    print("Maybe need command before BY ONE POINT at lines", ln, ln-1)
                    continue
                tofind = cmd_to_alfchunk(content[ln-1])
                mycmd = content[ln-1]
                #print(ln-1, tofind)
                got_one_prev = -1
                got_one_fwd = -1
                for x in range(ln, min(len(content)-1, ln+threshold)):
                    if cmd_to_alfchunk(content[x]) == tofind and content[x] != mycmd: got_one_fwd = x
                for x in range(max(0, ln-threshold), ln-1):
                    if cmd_to_alfchunk(content[x]) == tofind and content[x] != mycmd: got_one_prev = x
                if got_one_prev == -1:
                    global_total += 1
                    local_total += 1
                    print(fb, global_total, local_total, "May need something previous for", ln-1, content[ln-1])
                elif verbose:
                    print("PREV of", ln-1, content[ln-1], "is", got_one_prev, content[got_one_prev])
                if got_one_fwd == -1:
                    global_total += 1
                    local_total += 1
                    print(fb, global_total, local_total, "May need something after for", ln-1, content[ln-1])
                elif verbose:
                    print("PREV of", ln-1, content[ln-1], "is", got_one_fwd, content[got_one_fwd])
    print(pts_this_region, "points this region", local_total, "errors")

#testproj('sa')
testproj('roi')
