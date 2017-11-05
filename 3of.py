from collections import defaultdict

print_alf_and_num = False

words = defaultdict(str)
wfreq = defaultdict(int)

def alfy(a):
    return ''.join(sorted(a))

with open("c:/writing/dict/brit-1word.txt") as file:
    for line in file:
        l = line.strip().lower()
        alf = alfy(l)
        if words[alf]:
            words[alf] = words[alf] + " " + l
        else:
            words[alf] = l
        wfreq[alf] = wfreq[alf] + 1

count = 0

for y in sorted(wfreq.keys(), key=lambda x:(wfreq[x], words[x])):
    if wfreq[y] >= 3:
        count = count + 1
        if print_alf_and_num:
            print(count, y, wfreq[y], words[y])
        else:
            print(words[y])
