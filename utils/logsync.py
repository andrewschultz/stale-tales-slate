# logsync.py
#
# checks logic.py is synced with the source code
#
# we need a comment for every b-text with a question mark
#
# and of course no comment if b-text has no question mark
#

from collections import defaultdict

import i7
import sys
import re
import os

okay = defaultdict(bool)
need_logic = defaultdict(int)
need_source_logic = defaultdict(int)
got_logic = defaultdict(int)
got_logic_invis = defaultdict(int)
got_logic_reds = defaultdict(int)
open_line = defaultdict(int)

logic_invis = "c:\\writing\\scripts\\invis\\rl.txt"
logic_reds = "c:\\writing\\dict\\reds.txt"
scanned = ""
data_file = "logsync.txt"

open_after = False
open_first = True

verbose = False

# this is for oddly, badly or privately named items
# note HONESTLY currently has no ?'s in its b-text
abbrevs = defaultdict(str)

def shortcutcheck(x):
    if x in abbrevs: return abbrevs[x]
    return x

def usage():
    print("-a/oa opens code after if there is a mistake to fix.")
    print("-cod/-ncod turns on/off showing code, default = on.")
    print("-cou/-ncou turns on/off showing counts of errors, default = off.")
    exit()

def read_data_file():
    with open(data_file) as file:
        for (line_count, line) in enumerate(file, 1):
            if line.startswith('#'): continue
            if line.startswith(';'): break
            ll = line.lower().strip()
            ary = ll.split(",")
            if '=' in line:
                ary = ll.split("=")
                print(ary[0], 'to', ary[1])
                abbrevs[ary[0]] = ary[1]
                continue
            ll = line.lower().strip().split(",")
            for x in ll: okay[x] = True

def check_aftertexts():
    markedokay = 0
    mayneedsource = 0
    mayneedaftertext = 0
    reading_header = False
    in_table = False
    in_aftertexts = defaultdict(int)
    sug_text = defaultdict(str)
    suggestions = []
    with open(mysrc) as file:
        for (line_count, line) in enumerate(file, 1):
            if reading_header:
                in_table = True
                reading_header = False
                continue
            if line.startswith('table of aftertexts'):
                reading_header = True
                continue
            if not in_table: continue
            if not line.strip(): break
            line = re.sub("[ \t]*\[[^\[]*\]$", "", line.strip())
            ll = re.split("\t+", line)
            l0 = ll[0].lower()
            in_aftertexts[l0] = line_count
            if len(ll) > 1 and len(ll) != 6: sys.exit("Uh oh, bad # of tabs at line {:d}: {:s}".format(line_count, line))
            elif len(ll) == 1:
                print("WARNING need to add full row for line", line_count, "in", os.path.basename(mysrc), ":", l0)
                open_line[mysrc] = line_count
            if len(ll) >= 5: sug_text[l0] = ll[5] # I have some filler entries where generic opt-out hints pop up
            if l0 not in need_source_logic.keys():
                if l0 not in okay.keys() and l0 not in abbrevs.values():
                    suggestions.append("{:s} may be superfluous aftertext at line {:d}".format(l0, line_count))
                    mayneedsource += 1
                #print(ll[5])
            else:
                if verbose: print("Got", ll[0], "in aftertexts.")
    if len(suggestions): print("\n".join(sorted(suggestions)))
    for x in sorted(need_source_logic.keys()):
        if x not in in_aftertexts.keys() and x not in abbrevs.keys():
            print("May need", x, "in aftertexts table.")
            mayneedaftertext += 1
    for x in okay.keys():
        if x not in in_aftertexts.keys():
            print(x, "marked as okay for table of aftertexts but doesn't appear there.")
            markedokay += 1
    if mayneedaftertext + mayneedsource + markedokay: print("May need", mayneedaftertext, "aftertext and", mayneedsource, "source and may've wrongly marked", markedokay)

def check_logic_file(needs, gots, outs, format_string, file_desc, launch_message = "", other_test = True):
    print("=" * 40, "Checking", outs)
    # for x in needs.keys(): print (x, needs[x], gots[x])
    t2 = [x for x in needs.keys() if x not in gots.keys()]
    need_in_logic = 0
    if len(t2):
        for y in sorted(t2, key=needs.get):
            need_in_logic = need_in_logic + 1
            if show_count:
                print(need_in_logic, y, "is in the source line", need_logic[y], "but needs to be commented in", file_desc)
            if show_code:
                print(format_string.format(y))
    t3 = sorted([x for x in gots.keys() if x not in needs.keys()], key=gots.get)
    need_in_source = 0
    if len(t3):
        for y in sorted(t3, key=gots.get):
            need_in_source = need_in_source + 1
            print(need_in_source, y, "is commented in {:s} file line".format(outs), gots[y] ,"but is not in the source.")
    if need_in_logic + need_in_source > 0 and other_test:
        print("TEST FAILED:", need_in_logic, file_desc, "comments needed ({:s}),".format(outs), need_in_source, "source file definitions needed.")
        if launch_message: print(launch_message)
    else:
        print("TEST SUCCEEDED:", file_desc, "comments match source definitions exactly.")
    extraneous = list(set(gots) - set(needs))
    if len(extraneous):
        if data_file not in open_line:
            open_line[logic_reds] = gots[min(extraneous, key=gots.get)]
        print("Extraneous elements found in {:s}:".format(os.path.basename(outs)), ', '.join(["{:s}-{:d}".format(x, gots[x]) for x in extraneous]))

count = 0

show_count = False
show_code = True

force_next = False

i7.go_proj("roiling")
mysrc = i7.src("roiling")

read_data_file()

with open(mysrc) as file:
    for (line_count, line) in enumerate(file, 1):
        if 'logsync.py force next' in line:
            force_next = True
            continue
        if force_next or ('a-text' in line and 'b-text' in line):
            if 'parse-text' not in line and not line.startswith("\t"):
                print("NEED PARSE-TEXT:", line.strip())
                if force_next: print("Burned a force_next at line", line_count)
                force_next = False
                continue
            if re.search("b-text.*\?.*parse-text", line) or force_next:
                if re.search("is a mack-idea", line):
                    scanned = re.sub(" is a mack-idea.*", "", line.strip().lower())
                else:
                    scanned = re.sub(" is \".*", "", line.strip().lower())
                    scanned = re.sub("a-text of ", "", scanned)
                need_source_logic[scanned] = line_count
                if scanned.startswith("t-") and 'ly' in scanned: scanned = scanned[2:]
                # print(scanned, "/", shortcutcheck(scanned), "/", line_count)
                need_logic[shortcutcheck(scanned)] = line_count
                force_next = False

count = 0
with open(i7.sdir("roiling") + "/logic.htm") as file:
    for (line_count, line) in enumerate(file, 1):
        if '<!--' in line and '-->' in line and 'logic for' in line:
            scanned = re.sub(".*logic for ", "", line.strip().lower())
            scanned = re.sub("( )?-->.*", "", scanned)
            if scanned in got_logic.keys():
                print("Duplicate logic-for in logic.htm:", scanned, "line", line_count, "originally", got_logic[scanned])
            else:
                got_logic[shortcutcheck(scanned)] = line_count


count = 0
last_comment = False
hunt_for_comments = False

last_comment_line = 0
last_question_line = 0

with open(logic_invis) as file:
    for (line_count, line) in enumerate(file, 1):
        if 'STORE P' in line:
            hunt_for_comments = True
        ll = line.lower().strip()
        if ll.startswith('?'):
            if hunt_for_comments and last_question_line > last_comment_line:
                print("RL.TXT Line", line_count, "may be two questions in a row. Last question =", last_question_line, "Last comment = ", last_comment_line)
            last_question_line = line_count
        if ll.startswith("# logic for ") or ll.startswith("#logic for"):
            scanned = re.sub("^# ?logic for ", "", ll)
            if scanned in got_logic_invis.keys():
                print("Duplicate logic-for in rl.txt:", scanned, "line", line_count, "originally", got_logic_invis[scanned])
            else:
                got_logic_invis[scanned] = line_count
            got_logic_invis[scanned] = line_count
            if last_comment_line > last_question_line:
                print("RL.TXT Two logic-for comments in a row without a question:", last_comment_line, line_count, ll)
            last_comment_line = line_count
        last_comment = ll.startswith("#")

with open(logic_reds) as file:
    qm_needed = 0
    need_question_mark = 0
    last_qver = ""
    for (line_count, line) in enumerate(file, 1):
        ll = line.lower().strip()
        if re.search("#qver (of|for) ", ll):
            if need_question_mark:
                print("REDS.TXT: Need question mark in settler results before line", line_count, "to cover last #qver ({:s})".format(last_qver), "at line", need_question_mark)
                if logic_reds not in open_line.keys() or not open_first: open_line[logic_reds] = line_count
                qm_needed += 1
            scanned = re.sub("#qver (of|for) ", "", ll)
            if 'qver for' in ll: print("WARNING line", line_count, "qver of = preferred for", ll)
            last_qver = scanned
            if scanned in got_logic_reds.keys(): print("WARNING line", line_count, "duplicates", scanned)
            got_logic_reds[scanned] = line_count
            need_question_mark = line_count
        elif '?' in ll or 'qver ignore' in ll or 'qver-ignore' in ll: need_question_mark = 0

arg_count = 1

while arg_count < len(sys.argv):
    x = sys.argv[arg_count].lower()
    if x[0] == '-':
        x = x[1:]
    if x == 'cod': show_code = True
    elif x == 'ncod': show_code = False
    elif x == 'cou': show_count = True
    elif x == 'ncou': show_count = False
    elif x == '?' or x == '-?': usage()
    elif x == 'ed' or x == 'de':
        os.system(data_file)
        exit()
    elif x == 'a' or x == 'oa': open_after = True
    elif x == 'af' or x == 'oaf':
        open_after = True
        open_first = True
    elif x == 'al' or x == 'oal':
        open_after = True
        open_first = False
    else:
        print("Unknown flag", x)
        usage()
    arg_count = arg_count + 1

check_aftertexts()

check_logic_file(need_logic, got_logic, "logic.htm", "<!-- logic for {:s} -->", "old HTML", launch_message = "lh.bat")
check_logic_file(need_logic, got_logic_invis, "c:\\writing\\scripts\\invis\\rl.txt", "# logic for {:s}", "raw InvisiClues", launch_message = "invis.pl rl e")
check_logic_file(need_logic, got_logic_reds, logic_reds, "#qver of {:s}", "reds.txt verification, {:d} question mark{:s} needed".format(qm_needed, i7.plur(qm_needed)), other_test = (qm_needed > 0), launch_message = "reds.txt")

if open_after:
    for q in open_line.keys():
        i7.npo(q, open_line[q], bail = False)
    if not len(open_line.keys()): print("Nothing to open. Everything worked.")
    exit()
elif len(open_line):
    print("You could open automatically with the -a or -oa flag.")
