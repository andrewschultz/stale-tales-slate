import codecs
import re
import sys
from collections import defaultdict

min_to_print = 3

ignore_duplicates = True

alfs = defaultdict(str)
sums = defaultdict(str)

def see_left():
    print("Here's what's left:")
    for x in sorted(sums.keys(), key=lambda x:(len(sums[x].split()),x)):
        print("(" + x + ")", len(sums[x].split()), sums[x])
    print(str(len(sums.keys())), len(sums.keys()), "of", old, "total unused")
    return

def alfy(a):
    return ''.join(sorted(a))

def scour(a):
    print("=" * 50, "scouring", a, "for popular anagrams")
    this_hash = defaultdict(bool)
    count = 0
    with codecs.open(a, "r", "utf-8") as file:
        for line in file:
            count = count + 1
            l = line.strip().lower()
            if "\"" not in l:
                continue
            l = re.sub(r"\[[^\]*]*\]", " / ", l)
            l = re.sub("^\t", "", l)
            l = re.sub("-", " ", l)
            l = re.sub("\t", " / ", l)
            l = re.sub("[\",\.!';\?]", "", l)
            # la = l.split("\"")[1::2]
            la = re.split("[ \t]", l)
            if "xxxxxx" in line:
                print(line)
                print(l)
                # exit()
            this_hash = defaultdict(bool)
            for word in la:
                if word in alfs.keys():
                    this_hash[word] = True
                    # print("Adding", word, "line", count)
            # print(this_hash.keys())
            next_hash = defaultdict(int)
            for alf_entry in this_hash.keys():
                aa = alfy(alf_entry)
                next_hash[aa] = next_hash[aa] + 1
                if next_hash[aa] == min_to_print:
                    l = re.sub(" +", " ", l)
                    print(aa, "(", sums[aa], ") had more than 1", count, ":", l)
            if ignore_duplicates:
                for dupes in next_hash.keys():
                    if next_hash[dupes] > 1:
                        for q in sums[dupes].split():
                            alfs.pop(q)
                            # print("Deleting", q, "from alfs")
                        sums.pop(dupes)
                        # print("Deleting", dupes, "from sums")
                        # exit()

anagrams = "3re.txt"

with open(anagrams) as file:
    for line in file:
        l = line.strip().lower()
        for x in l.split():
            ax = alfy(x)
            alfs[x] = ax
            sums[ax] = l

old = len(sums.keys())

# scour("trust-strut.txt")
# print(old, len(sums.keys()))
# exit()

# 2 main files
scour("C:/games/inform/shuffling.inform/Source/story.ni")
scour("C:/games/inform/roiling.inform/Source/story.ni")

# side files
scour("C:/Program Files (x86)/Inform 7/Inform7/Extensions/Andrew Schultz/shuffling mistakes.i7x")
scour("C:/Program Files (x86)/Inform 7/Inform7/Extensions/Andrew Schultz/Shuffling Nudges.i7x")
scour("C:/Program Files (x86)/Inform 7/Inform7/Extensions/Andrew Schultz/Shuffling Random Text.i7x")
scour("C:/Program Files (x86)/Inform 7/Inform7/Extensions/Andrew Schultz/roiling mistakes.i7x")
scour("C:/Program Files (x86)/Inform 7/Inform7/Extensions/Andrew Schultz/roiling Nudges.i7x")
scour("C:/Program Files (x86)/Inform 7/Inform7/Extensions/Andrew Schultz/roiling Random Text.i7x")

see_left()
exit()
