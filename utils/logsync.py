# logsync.py
#
# checks logic.py is synced with the source code
#
# we need a comment for every b-text with a question mark

from collections import defaultdict

import re

need_logic = defaultdict(int)
got_logic = defaultdict(int)

scanned = ""

# this is for oddly or privately named items
abbrevs = { "a-s": "achers' arches" }

count = 0

show_count = False
show_code = True

with open("story.ni") as file:
    for line in file:
        count = count + 1
        if 'a-text' in line and 'b-text' in line:
            if 'parse-text' not in line and not line.startswith("\t"):
                print("NEED PARSE-TEXT:", line.strip())
                continue
            if re.search("b-text.*\?.*parse-text", line):
                if re.search("is a mack-idea", line):
                    scanned = re.sub(" is a mack-idea.*", "", line.strip().lower())
                    scanned = re.sub("t-", "", scanned)
                else:
                    scanned = re.sub(" is \".*", "", line.strip().lower())
                    scanned = re.sub("a-text of ", "", scanned)
                need_logic[abbrevs[scanned] if scanned in abbrevs.keys() else scanned] = count

with open("logic.htm") as file:
    for line in file:
        count = count + 1
        if '<!--' in line and '-->' in line and 'logic for' in line:
            scanned = re.sub(".*logic for ", "", line.strip().lower())
            scanned = re.sub("( )?-->.*", "", scanned)
            got_logic[scanned] = count

t2 = [x for x in need_logic.keys() if x not in got_logic.keys()]

need_in_logic = 0

if len(t2):
    for y in sorted(t2, key=lambda x: need_logic[x]):
        need_in_logic = need_in_logic + 1
        if show_count:
            print(need_in_logic, y, "is in the source but needs to be commented in the logic file.")
        if show_code:
            print("<!-- logic for", y, "-->")

t3 = [x for x in got_logic.keys() if x not in need_logic.keys()]

need_in_source = 0

if len(t3):
    for y in t3:
        need_in_source = need_in_source + 1
        print(need_in_source, y, "is commented in the logic file but is not in the source.")

if need_in_logic + need_in_source > 0:
    print("TEST FAILED:", need_in_logic, "logic file comments needed,", need_in_source, "source file definitions needed.")
else:
    print("TEST SUCCEEDED: logic file comments match source definitions exactly.")

