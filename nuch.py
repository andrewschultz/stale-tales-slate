#nuch.py
#
#nudge checker for test documents for STS
#
#

# to do: permute something until we get something new, if there is a conflict
# bkoo or sign at the end (?)

from collections import defaultdict

from itertools import permutations

nudge_text = defaultdict(str)

import os
import re
import sys

pattern = ''

write_to_file = False
flag_double_comments = False

err_string = ""

count = 1
max_errs = 50

def poss_tweak(a):
    if 'locname' in a:
        a = re.sub("\[locname\]", "You don't need to riff on any location names to win the game, unless there's not that much else to see", a)
        a = re.sub("\[locname-part\]", "You should never need to riff on part of a location name", a)
    return a

def usage():
    print("-m# = max errors per region")
    print("-w = write to file (reg/rbr => prereg/prerbr at start)")
    print("-d = flag double comments")
    print("p= = suggest file pattern")

while count < len(sys.argv):
    arg = sys.argv[count].lower()
    if arg[0] == '-': arg = arg[1:]
    if arg == 'w':
        write_to_file = True
        print('Writing files with errors')
    elif arg[0] == 'm' and arg[1:].isdigit():
        max_errs = int(arg[1:])
    elif arg == 'd':
        flag_double_comments = True
        print('Flagging double comments')
    elif arg[:2] == 'p=': pattern = arg[2:]
    else:
        print("Unrecognized command", arg)
        usage()
    count += 1

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
                count += 1
                continue
            count += 1
            if re.search("\"\t[0-9]", line) and not line.startswith('['):
                tlist = line.split('\t')
                l = re.sub("\"", "", tlist[0])
                if ' ' in l:
                    print("WARNING line", count, "has space in the word-key.")
                cmd_tries[current_table][l] = count
                got_nudges[current_table][l] = False
                nudge_text[l] = re.sub("\"", "", tlist[5])
                if test_match_up[l]:
                    suggested_try = "???"
                    dupes += 1
                    perms = [''.join(p) for p in permutations(l)]
                    for p in perms:
                        if p not in test_match_up.keys():
                            suggested_try = p
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
    to_add = 0
    renudges = 0
    nudge_comment = False
    force_ignore = False
    nudge_add = defaultdict(str)
    cmd_lines = defaultdict(str)
    cur_file = nudge_files[gm]
    excess_nudges = 0
    dupe_nudges = 0
    print("Poking", tn)
    short_file = re.sub(".*[\\\/]", "", cur_file)
    if not os.path.exists(cur_file):
        print("WARNING", cur_file, "does not exist.")
        return
    with open(nudge_files[gm]) as file:
        for line in file:
            if line.startswith('#forceignore'):
                force_ignore = True
                continue
            if force_ignore:
                force_ignore = False
                continue
            count += 1
            ll = line.strip().lower()
            if line.startswith('>') and not nudge_comment:
                alfl = alf(re.sub('>', '', ll))
                cmd_lines[alfl] = cmd_lines[alfl] + ' ' + str(count)
                # print(alfl, cmd_lines[alfl])
            if re.search('##( )?nudge (for|of) ', ll):
                if flag_double_comments:
                    print("Line", count, "has a double comment.")
            elif re.search("#( )?renudge (for|of)", ll):
                ll = re.sub(".*#( )?renudge (for|of) *", "", ll)
                if "\\" in ll:
                    ll = re.sub(r"\\{2,}.*", "", ll)
                if ll not in got_nudges[gm].keys():
                    print("Bad renudge", ll, "line", count, "need nudge first")
                    renudges += 1
                    count2 += 1
            elif re.search('#( )?nudge (for|of) ', ll):
                if nudge_comment:
                    print("Uh oh duplicate nudge comments at line", count)
                nudge_comment = True
                ll = re.sub("#( )?nudge (for|of) ", "", ll)
                if ll in got_nudges[gm].keys():
                    if got_nudges[gm][ll] > 0:
                        count2 += 1
                        dupe_nudges += 1
                        print("Duplicate nudge comment line", ll, 'line', count, 'duplicates', got_nudges[gm][ll])
                    got_nudges[gm][ll] = count
                else:
                    print("Unmatched #NUDGE FOR in", short_file, "line", count, ':', ll)
                    excess_nudges += 1
                    count2 += 1
            else:
                nudge_comment = False
    short = re.sub(".*[\\\/]", "", nudge_files[q])
    for j in cmd_lines.keys():
        cmd_lines[j] = re.sub("^ *", "", cmd_lines[j])
    for j in sorted(got_nudges[gm].keys(), key=lambda x: (int_wo_space(cmd_lines[alf(x)]), cmd_tries[gm][x], x)):
        if got_nudges[gm][j] == 0:
            for x in cmd_lines[alf(j)].split(' '):
                nudge_add[x] = nudge_add[x] + ' ' + j
            count2 += 1
            to_add = to_add + len(cmd_lines[alf(j)].split(' '))
            if max_errs > 0:
                if count2 > max_errs:
                    if count2 == max_errs + 1: print("Spillover. Use -m to increase max errs from", max_errs)
                    continue
            c2 = 'Branch file line(s) ' + ' '.join([str(int(a)) for a in cmd_lines[alf(j)].split(' ')]) if cmd_lines[alf(j)] != '' else 'Nudge file line ' + str(cmd_tries[gm][j])
            print ("({:4d}) {:s} need #nudge for {:14s} suggestions = {:s}".format(count2, short, j, c2))
    global err_string
    if count2 > 0:
        err_string = "{:s}\n{:s}/{:s} had {:d} total errors: {:d} to add, {:d} excess nudges, {:d} duplicate nudges, {:d} bad renudges.".format(err_string, tn, short_file, count2, to_add, excess_nudges, dupe_nudges, renudges)
    for y in nudge_add.keys():
        nudge_add[y] = re.sub("^ ", "", nudge_add[y])
    if count2 == 0:
        print("Yay, no errors for", gm)
        return
    out_nudge = re.sub(r'(reg|rbr)-', r"pre\1-", nudge_files[q], 0, re.IGNORECASE)
    nudge_needed = re.sub(r'(reg|rbr)-', r"need-\1-", nudge_files[q], 0, re.IGNORECASE)
    if out_nudge == nudge_files[q]:
        print("Uh oh, ", out_nudge, '=', nudge_files[q])
        return
    if write_to_file and count2 > 0: # just in case this goes outside count2==0 above
        print("Writing nudges to", nudge_needed)
        fout = open(nudge_needed, "w")
        # for j in sorted(got_nudges[gm].keys(), key=lambda x: (int_wo_space(cmd_lines[alf(x)]), cmd_tries[gm][x], x)):
        for j in sorted(got_nudges[gm].keys(), key=lambda x: (cmd_tries[gm][x], x)):
            if got_nudges[gm][j] == 0:
                # fout.write("###{:s} {:d} {:d}\n".format(cmd_lines[alf(j)], int_wo_space(cmd_lines[alf(j)]), cmd_tries[gm][j], j))
                fout.write("#nudge for {:s}\n>{:s}\n{:s}\n".format(j, j[:-2] + j[-1] + j[-2], poss_tweak(nudge_text[j])))
        fout.close()
        print("Writing to", out_nudge)
        fout = open(out_nudge, "w")
        count = 0
        with open(nudge_files[q]) as file:
            for line in file:
                count += 1
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

for q in nudge_files.keys():
    if pattern and pattern not in q: continue
    poke_nudge_files(q)

if err_string != "":
    print("Error summary:", err_string)
#dupnudge should be implemented (?)
