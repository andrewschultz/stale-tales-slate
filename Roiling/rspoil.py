import os
import sys
import re
from collections import defaultdict
from filecmp import cmp
from shutil import copy

second_fill_location = defaultdict(str)
second_fill = defaultdict(str)
tracked_yet = defaultdict(bool)

rtriz = "c:/games/inform/triz/mine/roiling.trizbort"
rtrizs = "c:/games/inform/triz/mine/roiling-llp-clue.trizbort"
rtrizt = "c:/games/inform/temp/roiling-llp-clue.trizbort"
trizdat = "c:/games/inform/roiling.inform/source/llp-roi-triz.txt"

def rmmod(x):
    x2 = re.sub("secondFill=\".*?\"", "secondFill=\"" + second_fill[rmname(x)] + "\"", x)
    x2 = re.sub("secondFillLocation=\".*?\"", "secondFillLocation=\"" + second_fill_location[rmname(x)] + "\"", x2)
    return x2

def rmname(l):
    if ' name=' not in l: return ''
    l2 = re.sub(".* name=.", "", l.strip())
    l2 = re.sub("\".*", "", l2)
    return l2.lower()

f2 = open(rtrizt, "w")

with open(trizdat) as file:
    for (line_count, line) in enumerate(file):
        if line.startswith(';'): break
        if line.startswith('#'): continue
        ll = line.strip()
        l2 = ll.split("\t")
        llo = l2[0].lower()
        if llo != 'default': tracked_yet[llo] = False
        if len(l2) == 1:
            print(llo, second_fill['default'], second_fill_location['default'])
            second_fill[llo] = second_fill['default']
            second_fill_location[llo] = second_fill_location['default']
            continue
        elif len(l2) != 3:
            sys.exit("Need 2 tabs in line", line_count, ll)
        second_fill[llo] = l2[1]
        second_fill_location[llo] = l2[2]

with open(rtriz) as file:
    for (line_count, line) in enumerate(file, 1):
        q = re.match("\"[^\"]+\"", line.strip())
        #print(q.group(0), q.group(1))
        next_line = line
        #if 'room id' in line: print(rmname(line))
        rn = rmname(line)
        if rn in second_fill_location.keys():
            next_line = rmmod(line)
            tracked_yet[rn] = True
        f2.write(next_line)
        # print(line_count, line.strip())
    f2.close()

for k in tracked_yet.keys():
    if not tracked_yet[k]: print(k, "untracked.")

if os.path.exists(rtrizs) and cmp(rtrizt, rtrizs):
    print("No changes, no copying")
else:
    print("Changes made, copying")
    copy(rtrizt, rtrizs)
