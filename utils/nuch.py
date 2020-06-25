#nuch.py
#
#nudge checker for test documents for STS
#
#

# to do: permute something until we get something new, if there is a conflict
# bkoo or sign at the end (?)

from collections import defaultdict
from itertools import permutations
import i7
import mytools as mt

nudge_text = defaultdict(lambda: defaultdict(str))
nudge_proj = defaultdict(str)
say_dict = defaultdict(str)

import os
import re
import sys

pattern = ''

err_string = ""
html_string = ""
excess_global = dupe_global = re_global = to_add_global = 0

count = 1

#cmd line options
use_html = False
launch_html = False
max_errs = 50
write_to_need_file = False
write_to_pre_file = False
open_after_write = False
flag_double_comments = False
open_post = False
clear_files = False

TEXT_COLUMN = 4

def poss_tweak(a):
    for to_say in say_dict:
        if to_say in a:
            a = a.replace(to_say, say_dict[to_say])
    return a

def usage():
    print("-m# = max errors per region")
    print("-w  = write to file (reg/rbr => need-*) or ow/wo opens after, -wp writes to prerbr (outdated)")
    print("-e  = erase files")
    print("-d  = flag double comments")
    print("p=  = suggest file pattern")
    print("-h  = create HTML file and (with -l) launch it")
    print("-o  = open post, no/on (or other combos) = don't")
    exit()

def alf(x):
    return ''.join(sorted(x))

def trivial_anagram(x):
    for y in range(len(x)-2, 0, -1):
        if x[y] == x[-1]: continue
        retval = x[:y] + x[-1] + x[y+1:-1] + x[y]
        return retval
    print("WARNING could not trivially anagram", x)
    return x

def pre_process(sts):
    gm =  i7.hdr(sts, 'nu')
    dupes = 0
    test_match_up = defaultdict(int)
    with open(gm) as file:
        for (line_count, line) in enumerate(file, 1):
            if line.startswith("to say"):
                say_ary = line.strip().split(":", 1)
                say_note = "[{}]".format(re.sub("to say *", "", say_ary[0]))
                say_stuff = re.sub(".*say +\"", "", say_ary[1])
                say_stuff = re.sub("\".*", "", say_stuff)
                say_dict[say_note] = say_stuff
                continue
            if line.startswith("chapter "):
                chapter_name = re.sub("^chapter ", "", line.strip().lower())
                chapter_name = re.sub(" nudges.*", "", chapter_name.strip().lower())
                current_chapter = sts + '-' + chapter_name
                print("Current chapter now", current_chapter)
                continue
            if re.search("\"\t[0-9]", line) and not line.startswith('['):
                line = re.sub(" *\[[^\]]+\]$", "", line.strip())
                tlist = line.split('\t')
                l = re.sub("\"", "", tlist[0])
                if ' ' in l:
                    print("WARNING line", line_count, "has space in the word-key.")
                cmd_tries[current_chapter][l] = line_count
                got_nudges[current_chapter][l] = False
                if l in nudge_text[sts]:
                    print("Redefinition of {} at line {} in nudge file for {}.".format(l, line_count, sts))
                nudge_text[sts][l] = re.sub("\"", "", tlist[TEXT_COLUMN])
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
                    print('Dupe#', dupes, 'Line', line_count, 'duplicates', test_match_up[l], 'with', l, 'suggestion', suggested_try)
                    mt.add_postopen(gm, line_count)
                test_match_up[l] = line_count
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
    global err_string
    global html_string
    global excess_global
    global dupe_global
    global re_global
    global to_add_global
    ary = gm.split("-")
    tn = ary[1]
    proj = ary[0]
    nf = i7.hdr(proj, 'nu')
    count = count2 = count3 = 0
    to_add = 0
    renudges = 0
    nudge_comment = False
    force_ignore = False
    nudge_add = defaultdict(str)
    cmd_lines = defaultdict(str)
    cur_file = nudge_files[gm]
    excess_nudges = 0
    dupe_nudges = 0
    short_file = os.path.basename(cur_file)
    if not os.path.exists(cur_file):
        print("WARNING", cur_file, "does not exist.")
        return
    gb = os.path.basename(nudge_files[gm])
    with open(nudge_files[gm]) as file:
        for (line_count, line) in enumerate(file, 1):
            if line.startswith('#forceignore'):
                force_ignore = True
                continue
            if force_ignore:
                force_ignore = False
                continue
            ll = line.strip().lower()
            if line.startswith('>') and not nudge_comment:
                alfl = alf(re.sub('>', '', ll))
                cmd_lines[alfl] += ' ' + str(line_count)
                # print(alfl, cmd_lines[alfl])
            if "#dupnudge" in ll.lower():
                ll = re.sub(".*#( )?dupnudge (for|of) *", "", ll)
                print("WARNING dupnudge {} should be replaced with renudge line {} {}.".format(ll, line_count, gb))
                renudges += 1
                count2 += 1
                count3 += 1
                mt.add_open(nudge_files[gm], line_count)
            if re.search('##( )?nudge (for|of) ', ll):
                if flag_double_comments:
                    print("Line", line_count, "has a double comment.")
            elif re.search("#( )?renudge (for|of)", ll):
                ll = re.sub(".*#( )?renudge (for|of) *", "", ll)
                if "\\" in ll:
                    ll = re.sub(r"\\{2,}.*", "", ll)
                if ll not in got_nudges[gm].keys():
                    print("Renudge-without-nudge", ll, "line", line_count, short_file)
                    renudges += 1
                    count2 += 1
                    count3 += 1
                elif not got_nudges[gm][ll]:
                    print("Renudge-before-nudge", ll, "line", line_count, short_file)
                    renudges += 1
                    count2 += 1
                    count3 += 1
            elif re.search('#( )?nudge (for|of) ', ll):
                if nudge_comment:
                    print("Uh oh duplicate nudge comments at line", line_count)
                nudge_comment = True
                ll = re.sub("#( )?nudge (for|of) ", "", ll)
                if ll in got_nudges[gm].keys():
                    if got_nudges[gm][ll] > 0:
                        count2 += 1
                        count3 += 1
                        dupe_nudges += 1
                        print("Duplicate nudge comment line", ll, 'line', line_count, 'duplicates', got_nudges[gm][ll])
                        mt.add_post(nudge_files[gm], line_count)
                    got_nudges[gm][ll] = line_count
                else:
                    sys.exit(list(got_nudges))
                    print("Unmatched #NUDGE FOR in", short_file, "line", line_count, ':', ll)
                    excess_nudges += 1
                    count2 += 1
                    count3 += 1
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
            count3 += len(cmd_lines[alf(j)].split(' '))
            to_add = to_add + len(cmd_lines[alf(j)].split(' '))
            if max_errs > 0:
                if count2 > max_errs:
                    if count2 == max_errs + 1: print("Spillover. Use -m to increase max errs from", max_errs)
                    continue
            c2 = 'Branch file line(s) ' + ' '.join([str(int(a)) for a in cmd_lines[alf(j)].split(' ')]) if cmd_lines[alf(j)] != '' else 'Nudge file line ' + str(cmd_tries[gm][j])
            print ("({:4d}) {:s} need #nudge for {:14s} suggestions = {:s}".format(count2, short, j, c2))
            mt.add_open(nf, cmd_tries[gm][j])
            html_string += "<tr><td>{:s}<td>{:s}<td>need #nudge for {:s}<td>{:s}</tr>".format(nudge_proj[short], short, j, c2)
    if count2 > 0:
        err_string = "{:s}\n{:s}/{:s} had {:d} total errors ({:d} lines): {:d} to add, {:d} excess nudges, {:d} duplicate nudges, {:d} bad renudges.".format(err_string, tn, short_file, count3, count2, to_add, excess_nudges, dupe_nudges, renudges)
        to_add_global += to_add
        excess_global += excess_nudges
        dupe_global += dupe_nudges
        re_global += renudges
    for y in nudge_add.keys():
        nudge_add[y] = re.sub("^ ", "", nudge_add[y])
    if count2 == 0:
        print("Yay, no errors for", gm)
        return
    qb = os.path.basename(nudge_files[q])
    out_nudge = re.sub(r'(reg|rbr)-', r"pre\1-", nudge_files[q], 0, re.IGNORECASE)
    nudge_needed = re.sub(r'(reg|rbr)-', r"need-\1-", nudge_files[q], 0, re.IGNORECASE)
    if out_nudge == nudge_files[q]:
        print("Uh oh, ", out_nudge, '=', nudge_files[q])
        return
    if write_to_need_file and count2 > 0: # just in case this goes outside count2==0 above
        print("Writing nudges to", nudge_needed)
        new_nudge = re.sub("^rbr", "reg", qb)
        got_any_here = False
        # for j in sorted(got_nudges[gm].keys(), key=lambda x: (int_wo_space(cmd_lines[alf(x)]), cmd_tries[gm][x], x)):\
        for j in sorted(got_nudges[gm].keys(), key=lambda x: (cmd_tries[gm][x], x)):
            if got_nudges[gm][j] == 0:
                if not got_any_here:
                    fout = open(nudge_needed, "w")
                    fout.write("#this file is used to list out likely additions to the test/branch file {} or {}. It can be deleted or modified.\n\n".format(qb, new_nudge))
                got_any_here = True
                # fout.write("###{:s} {:d} {:d}\n".format(cmd_lines[alf(j)], int_wo_space(cmd_lines[alf(j)]), cmd_tries[gm][j], j))
                tweak_text = poss_tweak(nudge_text[proj][j])
                tweak_array = i7.if_oneof_crude_convert(tweak_text)
                for t in range(0, len(tweak_array)):
                    ja = trivial_anagram(j)
                    if t == 0:
                        fout.write("#nudge for {:s}\n>{:s}\n{:s}\n".format(j, ja, tweak_array[t]))
                    else:
                        fout.write("\\\\\n#renudge for {:s}\n>{:s}\n{:s}\n".format(j, ja, tweak_array[t]))
                fout.write("\n")
        try:
            fout.close()
            if got_any_here and open_after_write: mt.add_post(nudge_needed)
        except:
            return
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

while count < len(sys.argv):
    arg = sys.argv[count].lower()
    if arg[0] == '-': arg = arg[1:]
    if arg == 'w':
        write_to_need_file = True
        print('Writing files with errors')
    elif arg == 'pw' or arg == 'wp':
        write_to_pre_file = True
        print('Writing pre-files')
    elif arg == 'wo' or arg == 'ow':
        write_to_need_file = True
        open_after_write = True
    elif arg == 'e':
        clear_files = True
    elif arg[0] == 'm' and arg[1:].isdigit():
        max_errs = int(arg[1:])
    elif arg == 'd':
        flag_double_comments = True
        print('Flagging double comments')
    elif arg[:2] == 'p=': pattern = arg[2:]
    elif arg == 'h': use_html = True
    elif arg == 'hl' or arg == 'lh':
        use_html = True
        launch_html = True
    elif arg == 'o':
        open_post = True
    elif arg == 'no' or arg == 'on':
        open_post = False
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
        nudge_files[lary[1] + '-' + lary[0]] = "c:/games/inform/{:s}.inform/source/{:s}".format(lary[1], lary[2])
        nudge_proj[lary[2]] = lary[1]

if clear_files:
    if write_to_need_file or not write_to_pre_file:
        os.system("erase need-*")
    if write_to_pre_file or not write_to_need_file:
        os.system("erase prerbr-*")

cmd_tries = defaultdict(dict)
got_nudges = defaultdict(dict)

d = [ 'shuffling', 'roiling' ]

for gm in d:
    pre_process(gm)

for q in nudge_files.keys():
    if pattern and pattern not in q: continue
    poke_nudge_files(q)

if err_string != "":
    print("Error summary:", err_string)
    print("TOTAL:", to_add_global, 'to add', excess_global, 'excess', dupe_global, 'dupe', re_global, 'bad renudges')
#dupnudge should be implemented (?)

if use_html:
    if html_string:
        html_file = "c:\writing\scripts\sts-nudge-summary.htm"
        f = open(html_file, "w")
        f.write("<html>\n<title>Nudge stuff</title>\n<body>\n<table border=1>\n")
        f.write(html_string)
        f.write("</table>\n</body>\n</html>")
        f.close()
        if launch_html:
            os.system(html_file)
    else:
        print("EVERYTHING PASSED! No need to launch HTML file.")

if not write_to_need_file: print("You can write to file with the w flag.")

if open_post or open_after_write:
    mt.postopen_files()
elif len(mt.file_post_list):
    print("Use the -o/-wo flags to postopen files.")

