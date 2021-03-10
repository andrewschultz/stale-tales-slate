import sys
import re
from collections import defaultdict

min_match = 2

print_alf_and_num = False

use_adverbs = False

words = defaultdict(str)
wfreq = defaultdict(int)

def alfy(a):
    return ''.join(sorted(a))

my_file = "c:/writing/dict/brit-1word.txt"

while cmd_count < len(sys.argv):
    arg = sys.argv[cmd_count]
    if arg[0] == 'w':
        word_spec = int(arg[1:])
    elif arg[0] == 'm':
        min_match = int(arg[1:])
    else:
        print("Bad argument, w# = word length m# = minimum matches.")
        exit()
    cmd_count += 1

try:
    word_spec = int(sys.argv[1])
    my_file = "c:/writing/dict/words-{}.txt".format(word_spec)
except:
    print("No valid specification for word length. Reading whole dictionary.")

with open(my_file) as file:
    for line in file:
        l = line.strip().lower()
        if use_adverbs:
            if 'l' not in l or 'y' not in l: continue
        alf = alfy(l)
        if words[alf]:
            words[alf] = words[alf] + " " + l
        else:
            words[alf] = l
        wfreq[alf] = wfreq[alf] + 1

count = 0

for y in sorted(wfreq.keys(), key=lambda x:(wfreq[x], words[x])):
    if wfreq[y] >= min_match:
        count = count + 1
    else:
        continue
    if use_adverbs and not re.search(r'ly\b', words[y]): continue
    if print_alf_and_num:
        print(count, y, wfreq[y], words[y])
    else:
        print(words[y])
