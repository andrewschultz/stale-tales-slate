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

err_string = ""

if len(sys.argv) > 1:
    if sys.argv[1] == 'w':
        write_to_file = True
        print('Writing files with errors')
    if sys.argv[1] == 'd':
        flag_double_comments = True
        print('Flagging double comments')

nudge_files = {}

with open("c:/writing/scripts/nuch.txt") as file:
    for line in file:
        if line.startswith(';'):
            break
        if line.startswith("#"):
            continue
        lary = line.strip().lower().split('\t')
        if len(lary) < 3:
            print("Badly formed line", line, 'has', len(lary), 'tab columns, should have 3')
            exit()
        nudge_files[lary[1] + '-' + lary[0]] = "c:/games/inform/%s.inform/source/%s" % (lary[1], lary[2])

cmd_tries = defaultdict(dict)
got_nudges = defaultdict(dict)

def alf(x):
    return ''.join(sorted(x))

def pre_process(sts):
    gm =  'c:/program files (x86)/inform 7/inform7/extensions/andrew schultz/%s nudges.i7x' % sts
    count = 0
    dupes = 0
    test_match_up = defaultdict(int)
    with open(gm) as file:
        for line in file:
            if re.search("table of .* nudges", line):
                current_table = sts + '-' + re.sub("nudges.*", "nudges", line.strip().lower())
                # print("Current table now", current_table)
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
    else:
        print(dupes, 'conflicts for', gm)

def int_wo_space(i):
    if re.search("[a-z]", i) or not re.search("[0-9]", i):
        return 999999
    return int(re.sub(" .*", "", i))

def poke_nudge_files(gm):
    tn = re.sub(".*table of", "table of", gm)
    count = 0
    count2 = 0
    count3 = 0
    nudge_comment = False
    nudge_add = defaultdict(str)
    cmd_lines = defaultdict(str)
    print("Poking", tn)
    short_file = re.sub(".*[\\\/]", "", nudge_files[gm])
    with open(nudge_files[gm]) as file:
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
                    if got_nudges[gm][ll] > 0:
                        count2 = count2 + 1
                        count3 = count3 + 1
                        print("Duplicate nudge comment line", ll, 'line', count, 'duplicates', got_nudges[gm][ll])
                    got_nudges[gm][ll] = count
                else:
                    print("Unmatched #NUDGE FOR in", short_file, "line", count, ':', ll)
                    count2 = count2 + 1
                    count3 = count3 + 1
            else:
                nudge_comment = False
    short = re.sub(".*[\\\/]", "", nudge_files[q])
    for j in cmd_lines.keys():
        cmd_lines[j] = re.sub("^ *", "", cmd_lines[j])
    for j in sorted(got_nudges[gm].keys(), key=lambda x: (int_wo_space(cmd_lines[alf(x)]), x)):
        if got_nudges[gm][j] == 0:
            for x in cmd_lines[alf(j)].split(' '):
                nudge_add[x] = nudge_add[x] + ' ' + j
            count2 = count2 + 1
            count3 = count3 + len(cmd_lines[alf(j)].split(' '))
            if max_errs > 0 and count2 > max_errs:
                continue
            c2 = ' '.join([str(int(a) - 1) for a in cmd_lines[alf(j)].split(' ')]) if cmd_lines[alf(j)] != '' else 'unavailable'
            print ("({:4d}) {:s} need #nudge for {:14s} suggestions = {:s}".format(count2, short, j, c2))
    global err_string
    if count2 > 0:
        err_string = "%s\n%s/%s had %d total errors, %d comments." % (err_string, tn, short_file, count2, count3)
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

for gm in d:
    pre_process(gm)

max_errs = 50

for q in nudge_files.keys():
    poke_nudge_files(q)

if err_string != "":
    print("Error summary:", err_string)
#dupnudge should be implemented (?)
