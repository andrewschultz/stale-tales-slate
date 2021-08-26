# calculate towers balancing
import math
from collections import defaultdict
from itertools import combinations

fac = defaultdict(int)
pos = defaultdict(int)

def prods(a, b):
    x = 1
    for z in a: x *= pos[z]
    for z in b: x /= pos[z]
    return x

def facdif(a, b):
    j = defaultdict(int)
    for u in a:
        for u0 in fac[u]:
            j[u0] += 1
    for u in b:
        for u0 in fac[u]:
            j[u0] -= 1
    ret_1 = []
    ret_2 = []
    for x in j:
        if j[x] > 0: ret_1.append("{}^{}".format(x, j[x]))
        if j[x] < 0: ret_2.append("{}^{}".format(x, -j[x]))
    if not ret_1: ret_1 = ['1']
    if not ret_2: ret_2 = ['1']
    ret_string = '*'.join(ret_1) + ' / ' + '*'.join(ret_2)
    ret_num = 1
    ret_denom = 1
    for x in j:
        if j[x] > 0:
            ret_num *= x ** j[x]
        else:
            ret_denom *= x ** (-j[x])
    ret_prod = (ret_num / ret_denom if ret_num >= ret_denom else ret_denom / ret_num)
    return (ret_string, ret_prod, ret_num > ret_denom)

def factor_of(y):
    remaining = y
    ary = []
    while remaining % 2 == 0:
        ary.append(2)
        remaining >>= 1
    seed = 3
    while seed ** 2 <= remaining:
        while remaining % seed == 0:
            remaining //= seed
            ary.append(seed)
        seed += 2
    if remaining > 1: ary.append(remaining)
    return ary

def word_poss(x):
    all = len(x)
    vowels = 0
    freq = defaultdict(int)
    for y in x:
        freq[y] += 1
    for v in 'aeiou':
        vowels += x.lower().count(v) 
    ys = x.lower().count('y')
    consonants = all - vowels - ys
    temp = math.factorial(vowels) * math.factorial(consonants)
    for q in freq:
        temp //= math.factorial(freq[q])
    return (factor_of(temp), temp)

old_low = 5
target_low = 0

with open("c:/games/inform/roiling.inform/source/towbal.txt") as file:
    for (line_count, line) in enumerate(file, 1):
        if line.startswith('#'): continue
        if line.startswith("target="):
            if target_low:
                sys.exit("Redefined target low at line {}. Comment one out.".format(line_count))
            try:
                target_low = float(line[7:])
            except:
                sys.exit("Bad float for target low defined at line {}. Fix it.".format(line_count))
            continue
        x = line.lower().strip()
        (fac[x], pos[x]) = word_poss(x)

for y in combinations(pos, 5):
    y0 = set(pos) - set(y)
    (fd, pd, this_bigger) = facdif(y, y0)
    this_log = abs(math.log(pd))
    if this_log < math.log(2):
        if target_low:
            if this_log < math.log(target_low):
                print(y, y0, fd, "= {:.4f}".format(pd), "Numerator > Denominator?", this_bigger)
            continue
        if this_log < old_low - .00005:
            print(y, y0, fd, "= {:.4f}".format(pd), "Numerator > Denominator?", this_bigger)
            old_low = this_log
            print("New low", old_low, pd)
        elif this_log < old_low + .00005:
            print("Tied low", old_low, pd)
