import sys
import sts
import re
import i7

from collections import defaultdict

anagram_check = defaultdict(lambda: defaultdict(int))
got_yet = defaultdict(lambda: defaultdict(int))
ignore = defaultdict(int)

anagrams_outside_tables = defaultdict(int)
metrics_unneeded = defaultdict(int)

show_poss = False

def unquoted(x):
    x = re.sub("/[a-z]+", "", x).replace(' ', '')
    try:
        return x.split('"')[1]
    except:
        return("OOPS " + x)

def is_anagram_header(x):
    return x.startswith("table of ") and " anagrams" in x

def region_of(x):
    temp = re.sub("^table of +", "", x.strip().lower())
    return re.sub(" +anagrams.*", "", temp)

def get_all_anagrams(my_proj, word_index):
    next_header = False
    in_table = False
    with open(i7.hdr(my_proj, 'ta')) as file:
        for (line_count, line) in enumerate(file, 1):
            if is_anagram_header(line):
                new_table = region_of(line)
                next_header = True
                continue
            if next_header:
                next_header = False
                in_table = True
                continue
            if not line.strip():
                in_table = False
                continue
            if not in_table:
                continue
            right_word = unquoted(line.split('\t')[word_index])
            if show_poss:
                print(right_word, sts.roi_poss(right_word), sts.roi_poss(right_word, count_duplicates=True))
            anagram_check[my_proj][right_word] += 1
            got_yet[my_proj][right_word] = False

get_all_anagrams('sa',2)
get_all_anagrams('roi', 5)

if show_poss: sys.exit()

cur_proj = 'sa'

weight = 2

#for x in not_in_anagram_tables.split(","): ignore[x] = True

with open("wvet.txt") as file:
    for (line_count, line) in enumerate(file, 1):
        ll = line.lower().strip()
        if ll.startswith("#"): continue
        if ll.startswith(";"): break
        if not ll.strip(): continue
        ll = re.sub(" *#.*", "", ll)
        if ll.startswith("noan:"):
            for x in ll[5:].split(","):
                anagrams_outside_tables[x] = True
            continue
        if ll.startswith("nometrics:"):
            for x in ll[10:].split(","):
                metrics_unneeded[x] = True
            continue
        print("Erroneous line", line_count, ll)

with open("c:/writing/dict/wmet.txt") as file:
    count = 0
    for (line_count, line) in enumerate(file, 1):
        if '====' in line:
            cur_proj = 'roi'
            continue
        if "(" in line:
            continue
        if line.startswith("#"): continue
        if line.startswith(";"):
            weight = 1
            continue
        ary = line.lower().strip().split('/')
        if not ary[-1]:
            print("WARNING: blank end entry deleted at line", line_count)
            ary = ary[:-1]
        for p in ary:
            if p in got_yet[cur_proj]:
                #if got_yet[cur_proj][p] > 0 and got_yet[cur_proj][p] != weight: print("?REDEFINITION", p, line_count)
                got_yet[cur_proj][p] = weight
                #print("Got", cur_proj, q)
            elif p not in anagrams_outside_tables and p + "ly" not in anagrams_outside_tables and p + 'ly' not in got_yet[cur_proj]:
                count += 1
                print(count, "WARNING", p, "is included in wmet.txt but not in any anagram tables or noan: construction.", line_count)
            for x in got_yet:
                if x == cur_proj: continue
                if p in got_yet[x] and p != 'sorbet': #hack for now as only sorbet is in both games
                    print(p, "in", x, "but listed in", cur_proj)

count = 0
for q in got_yet:
    for r in got_yet[q]:
        if r in metrics_unneeded:
            if r in got_yet[q] and got_yet[q][r] > 1:
                print(r, "may have been put in NOMETRICS by mistake.")
            continue
        if not got_yet[q][r]:
            count += 1
            print(count, q, "mentioned", r, "in tables of anagrams without including it in wmet.txt or nometrics: construction.")

if not count: print("No mismatches found.")