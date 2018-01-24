# logsync.py
#
# checks logic.py is synced with the source code
#
# we need a comment for every b-text with a question mark

from collections import defaultdict

import i7
import sys
import re

need_logic = defaultdict(int)
got_logic = defaultdict(int)
got_logic_invis = defaultdict(int)

logic_invis = "c:\\writing\\scripts\\invis\\rl.txt"
scanned = ""

# this is for oddly or privately named items
abbrevs = {
  "a-s": "achers' arches",
  "ltb": "lead",
  "bogus-plains": "plains",
  "b-b": "bleary barley",
  "s-c": "sonic coins"
}

def usage():
    print("-cod/-ncod turns on/off showing code, default = on.")
    print("-cou/-ncou turns on/off showing counts of errors, default = off.")
    exit()

def check_logic_file(needs, gots, outs, format_string, file_desc):
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
            print(need_in_source, y, "is commented in the logic file line", needs[y] ,"but is not in the source.")
    if need_in_logic + need_in_source > 0:
        print("TEST FAILED:", need_in_logic, file_desc, "comments needed ({:s}),".format(outs), need_in_source, "source file definitions needed.")
    else:
        print("TEST SUCCEEDED:", file_desc, "comments match source definitions exactly.")

count = 0

show_count = False
show_code = True

force_next = False

with open(i7.src("roiling")) as file:
    for line in file:
        count = count + 1
        if 'logsync.py force next' in line:
            force_next = True
            continue
        if force_next or ('a-text' in line and 'b-text' in line):
            if 'parse-text' not in line and not line.startswith("\t"):
                print("NEED PARSE-TEXT:", line.strip())
                if force_next: print("Burned a force_next at line", count)
                force_next = False
                continue
            if re.search("b-text.*\?.*parse-text", line) or force_next:
                if re.search("is a mack-idea", line):
                    scanned = re.sub(" is a mack-idea.*", "", line.strip().lower())
                    scanned = re.sub("t-", "", scanned)
                else:
                    scanned = re.sub(" is \".*", "", line.strip().lower())
                    scanned = re.sub("a-text of ", "", scanned)
                need_logic[abbrevs[scanned] if scanned in abbrevs.keys() else scanned] = count
                force_next = False

count = 0
with open(i7.sdir("roiling") + "/logic.htm") as file:
    for line in file:
        count = count + 1
        if '<!--' in line and '-->' in line and 'logic for' in line:
            scanned = re.sub(".*logic for ", "", line.strip().lower())
            scanned = re.sub("( )?-->.*", "", scanned)
            got_logic[scanned] = count


count = 0
last_comment = False
hunt_for_comments = False

with open(logic_invis) as file:
    for line in file:
        if 'STORE P' in line:
            hunt_for_comments = True
        count = count + 1
        ll = line.lower().strip()
        if hunt_for_comments and ll.startswith('?') and not last_comment:
            print("Line", count, "may need line before it:", ll)
        if ll.startswith("# logic for ") or ll.startswith("#logic for"):
            scanned = re.sub("^# ?logic for ", "", ll)
            got_logic_invis[scanned] = count
        last_comment = ll.startswith("#")

arg_count = 1

while arg_count < len(sys.argv):
    x = sys.argv[arg_count].lower()
    if x[0] == '-':
        x = x[1:]
    if x == 'cod':
        show_code = True
    elif x == 'ncod':
        show_code = False
    elif x == 'cou':
        show_count = True
    elif x == 'ncou':
        show_count = False
    elif x == '?' or x == '-?':
        usage()
    else:
        print("Unknown flag", x)
        usage()
    arg_count = arg_count + 1

check_logic_file(need_logic, got_logic, "logic.htm", "<!-- logic for {:s} -->", "old HTML")
check_logic_file(need_logic, got_logic_invis, "c:\\writing\\scripts\\invis\\rl.txt", "# logic for {:s}", "raw InvisiClues")
