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

count = 0

show_count = False
show_code = True

with open("story.ni") as file:
    for line in file:
        count = count + 1
        if 'a-text' in line and 'b-text' in line and 'parse-text' in line:
            if re.search("b-text.*\?.*parse-text", line):
                if re.search("is a mack-idea", line):
                    scanned = re.sub(" is a mack-idea.*", "", line.strip().lower())
                    scanned = re.sub("t-", "", scanned)
                else:
                    scanned = re.sub(" is \".*", "", line.strip().lower())
                    scanned = re.sub("a-text of ", "", scanned)
                need_logic[scanned] = count

with open("logic.htm") as file:
    for line in file:
        count = count + 1
        if '<!--' in line and '-->' in line and 'logic for' in line:
            scanned = re.sub(".*logic for ", "", line.strip().lower())
            scanned = re.sub(" -->.*", "", scanned)
            got_logic[scanned] = count

t2 = [x for x in need_logic.keys() if x not in got_logic.keys()]

count = 0

if len(t2):
    for y in sorted(t2, key=lambda x: need_logic[x]):
        count = count + 1
        if show_count:
            print(count, y, "is in the source but needs to be commented in the logic file.")
        if show_code:
            print("<!-- logic for", y, "-->")

if not show_count and count > 0:
    print(count, "logic file comments needed.")
elif count == 0:
    print("TEST SUCCEEDED: logic file comments from source")

t3 = [x for x in got_logic.keys() if x not in need_logic.keys()]

count = 0

if len(t3):
    for y in t3:
        count = count + 1
        print(count, y, "is commented in the logic file but is not in the source.")

if not show_count and count > 0:
    print(count, "logic file comments needed.")
elif count == 0:
    print("TEST SUCCEEDED: logic file comments from logic.htm")

