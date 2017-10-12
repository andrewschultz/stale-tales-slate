#nuch.py
#
#nudge checker for test documents for STS
#
#

# to do: permute something until we get something new, if there is a conflict
# bkoo or sign at the end (?)

from collections import defaultdict

from itertools import permutations

import re
import sys

write_to_file = False
flag_double_comments = False

if len(sys.argv) > 1:
    if sys.argv[1] == 'w':
        write_to_file = True
        print('Writing files with errors')
    if sys.argv[1] == 'd':
        flag_double_comments = True
        print('Flagging double comments')

nudge_files = {}

#nudge_files['table of otters nudges'] = "c:\\games\\inform\\roiling.inform\\Source\\reg-roi-otters.txt"
#nudge_files['table of oyster nudges'] = "c:\\games\\inform\\roiling.inform\\Source\\reg-roi-oyster.txt"
#nudge_files['table of presto nudges'] = "c:\\games\\inform\\roiling.inform\\Source\\reg-roi-presto.txt"
#nudge_files['table of towers nudges'] = "c:\\games\\inform\\roiling.inform\\Source\\reg-roi-towers.txt"
#nudge_files['table of troves nudges'] = "c:\\games\\inform\\roiling.inform\\Source\\reg-roi-troves.txt"
#nudge_files['table of routes nudges'] = "c:\\games\\inform\\roiling.inform\\Source\\reg-roi-routes.txt"
#nudge_files['table of others nudges'] = "c:\\games\\inform\\roiling.inform\\Source\\reg-roi-others.txt"
#nudge_files['table of demo dome nudges'] = "c:\\games\\inform\\roiling.inform\\Source\\reg-roi-demo-dome.txt"
nudge_files['table of means manse nudges'] = "c:\\games\\inform\\roiling.inform\\Source\\reg-roi-means-manse.txt"

cmd_tries = defaultdict(dict)
got_nudges = defaultdict(dict)

def alf(x):
    return ''.join(sorted(x))

def pre_process(gm):
    count = 0
    dupes = 0
    test_match_up = defaultdict(int)
    with open(gm) as file:
        for line in file:
            if re.search("table of .* nudges", line):
                current_table = re.sub("nudges.*", "nudges", line.strip().lower())
                count = count + 1
                continue
            count = count + 1
            if re.search("\"\t[0-9]", line):
                l = re.sub("\t.*", "", line.strip().lower())
                l = re.sub("\"", "", l)
                if ' ' in l:
                    print("WARNING line", count, "has space in the word-key.")
                cmd_tries[current_table][l] = count
                got_nudges[current_table][l] = False
                if test_match_up[l]:
                    suggested_try = "???"
                    dupes = dupes + 1
                    perms = [''.join(p) for p in permutations(l)]
                    for p in perms:
                        if p not in test_match_up.keys():
                            suggested_try = p
                            print("Suggested try", p)
                            break
                        else:
                            continue
                            print("Skipping", p, test_match_up[p])
                    print('Dupe#', dupes, 'Line', count, 'duplicates', test_match_up[l], 'with', l, 'suggestion', suggested_try)
                test_match_up[l] = count
                # print(l)
    if dupes == 0:
        print("WOO no conflicts for", gm + "!")

def int_wo_space(i):
    if re.search("[a-z]", i) or not re.search("[0-9]", i):
        return 999999
    return int(re.sub(" .*", "", i))

def poke_nudge_files(gm):
    count = 0
    nudge_comment = False
    nudge_add = defaultdict(str)
    cmd_lines = defaultdict(str)
    print("poking", q)
    with open(nudge_files[q]) as file:
        for line in file:
            count = count + 1
            ll = line.strip().lower()
            if line.startswith('>') and not nudge_comment:
                alfl = alf(re.sub('>', '', ll))
                cmd_lines[alfl] = cmd_lines[alfl] + ' ' + str(count)
                # print(alfl, cmd_lines[alfl])
            if re.search('##( )?nudge (for|of) ', ll):
                if flag_double_comments:
                    print("Line", count, "has a double comment.")
            elif re.search('#( )?nudge (for|of) ', ll):
                if nudge_comment:
                    print("Uh oh duplicate nudge comments at line", count)
                nudge_comment = True
                ll = re.sub("#( )?nudge (for|of) ", "", ll)
                if ll in got_nudges[gm].keys():
                    if got_nudges[gm][ll] == True:
                        print("Duplicate nudge comment line", count, ll)
                    got_nudges[gm][ll] = True
                else:
                    print("Faulty nudge line", count, ':', ll)
            else:
                nudge_comment = False
    short = re.sub(".*[\\\/]", "", nudge_files[q])
    count2 = 0
    for j in cmd_lines.keys():
        cmd_lines[j] = re.sub("^ *", "", cmd_lines[j])
    for j in sorted(got_nudges[gm].keys(), key=lambda x: (int_wo_space(cmd_lines[alf(x)]), x)):
        if got_nudges[gm][j] == False:
            for x in cmd_lines[alf(j)].split(' '):
                nudge_add[x] = nudge_add[x] + ' ' + j
            count2 = count2 + 1
            if max_errs > 0 and count2 > max_errs:
                continue
            print ("({:4d}) {:s} need #nudge for {:14s} suggestions = {:s}".format(count2, short, j, cmd_lines[alf(j)] if cmd_lines[alf(j)] != '' else 'unavailable'))
    if count2 > max_errs:
        print("Only listed", max_errs, 'of', count2)
    for y in nudge_add.keys():
        nudge_add[y] = re.sub("^ ", "", nudge_add[y])
    if count2 == 0:
        print("Yay, no errors for", gm)
        return
    out_nudge = re.sub("reg-", "prereg-", nudge_files[q], 0, re.IGNORECASE)
    if out_nudge == nudge_files[q]:
        print("Uh oh, ", out_nudge, '=', nudge_files[q])
        return
    if write_to_file and count2 > 0: # just in case this goes outside count2==0 above
        print("Writing to", out_nudge)
        fout = open(out_nudge, "w")
        count = 0
        with open(nudge_files[q]) as file:
            for line in file:
                count = count + 1
                if nudge_add[str(count)]:
                    my_ary = nudge_add[str(count)].split(' ')
                    for x in my_ary:
                        fout.write("##nudge for " + x + "\n")
                fout.write(line)
        fout.close()
    return

d = [ 'shuffling', 'roiling' ]
e = [ 'c:/program files (x86)/inform 7/inform7/extensions/andrew schultz/%s nudges.i7x' % g for g in d]

for gm in e:
    pre_process(gm)

max_errs = 50

for q in nudge_files.keys():
    poke_nudge_files(q)

#dupnudge should be implemented (?)
