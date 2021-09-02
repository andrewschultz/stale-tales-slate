# calculate towers balancing

import sys
import math
from collections import defaultdict
from itertools import combinations
from operator import mul
from functools import reduce
from math import gcd

fac = defaultdict(int)
pos = defaultdict(int)
cheat_poss = defaultdict(int)

max_worthwhile = 2
go_with_cheats = False

def factor_with_powers(my_num):
    if my_num == 0:
        return "0"
    my_powers = defaultdict(int)
    remaining_to_factor = my_num
    while not remaining_to_factor % 2:
        my_powers[2] += 1
        remaining_to_factor >>= 1
    index = 3
    while index <= remaining_to_factor:
        while not remaining_to_factor % index:
            my_powers[index] += 1
            remaining_to_factor //= index
        index += 2
    if remaining_to_factor > 1:
        my_powers[remaining_to_factor] += 1
    factor_list = [ "{}^{}".format(x, my_powers[x]) for x in my_powers ]
    return(" * ".join(factor_list))

def cheat_dif(a, b):
    l1 = [cheat_poss[x] for x in a]
    l2 = [cheat_poss[x] for x in b]
    num = reduce(mul, l1, 1)
    den = reduce(mul, l2, 1)
    if num < den:
        flipped = True
        (num, den) = (den, num)
    else:
        flipped = False
    g = gcd(num, den)
    num //= g
    den //= g
    compare_string = factor_with_powers(num) + ' / ' + factor_with_powers(den)
    return (compare_string, num / den, num > den)
    
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

def determine_fit(i_path, h_path):
    i_list = sorted(i_path, key = lambda x: len(x))
    h_list = sorted(h_path, key = lambda x: len(x))
    if 'rinsed' in i_path:
        my_list = i_list + h_list
    else:
        my_list = h_list + i_list
    #print("checking fit for", my_list)
    diffs = 0
    if original_order[1] == my_list[2] or original_order[2] == my_list[1]:
        (my_list[2], my_list[1]) = (my_list[1], my_list[2])
    if original_order[3] == my_list[4] or original_order[4] == my_list[3]:
        (my_list[4], my_list[3]) = (my_list[3], my_list[4])
    if original_order[6] == my_list[7] or original_order[7] == my_list[6]:
        (my_list[7], my_list[6]) = (my_list[6], my_list[7])
    if original_order[8] == my_list[9] or original_order[9] == my_list[8]:
        (my_list[9], my_list[8]) = (my_list[8], my_list[9])
    for y in range(0, len(my_list)):
        if len(original_order[y]) != len(my_list[y]):
            print("Bad length match at index {}.".format(y))
            return
        diffs += (original_order.index(my_list[y]) != y)
    if diffs > min_diffs:
        print("Too many differences.")
        return
    #print(list(original_order.index(my_list[y]) == y for y in range(0, 10)))
    print(["{}".format(x if original_order.index(x) != my_list.index(x) else x.upper()) for x in my_list])
    print("Total diffs: {}".format(diffs))

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
original_order = []
min_diffs = 10

cmd_count = 1
while cmd_count < len(sys.argv):
    arg = sys.argv[cmd_count].lower()
    if arg == 'c':
        go_with_cheats = True
    else:
        print("Bad argument", arg)
    cmd_count += 1

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
        if line.startswith("diffs="):
            if min_diffs != 10:
                sys.exit("Redefined minimum diffs at line {}. Comment one out.".format(line_count))
            try:
                min_diffs = int(line[6:])
            except:
                sys.exit("Bad int for max diffs at line {}. Fix it.".format(line_count))
            continue
        x = line.lower().strip()
        ary = x.split(",")
        if len(ary) != 2 or not ary[1].isdigit():
            sys.exit("Fix line {} ({}) to have ANAGRAM,VALUE".format(line_count, x))
        (fac[ary[0]], pos[ary[0]]) = word_poss(ary[0])
        cheat_poss[ary[0]] = int(ary[1])
        original_order.append(ary[0])

if go_with_cheats:
    max_worthwhile = 2000
    old_low = 200
    target_low = 0

for y in combinations(pos, 5):
    y0 = set(pos) - set(y)
    if go_with_cheats:
        (fd, pd, this_bigger) = cheat_dif(y, y0)
    else:
        (fd, pd, this_bigger) = facdif(y, y0)
    this_log = abs(math.log(pd))
    if this_log < math.log(max_worthwhile):
        y = sorted(y, key = lambda x: len(x))
        y0 = sorted(y0, key = lambda x: len(x))
        if target_low:
            if this_log <= math.log(target_low) + .0005:
                print(y, y0, fd, "= {:.4f}".format(pd), "Numerator > Denominator?", this_bigger)
                determine_fit(y, y0)
            else:
                continue
        elif this_log < old_low - .00005:
            print(y, y0, fd, "= {:.4f}".format(pd), "Numerator > Denominator?", this_bigger)
            old_low = this_log
            print("New low", old_low, pd)
            determine_fit(y, y0)
        elif this_log < old_low + .00005:
            print(y, y0, fd, "= {:.4f}".format(pd), "Numerator > Denominator?", this_bigger)
            print("Tied low", old_low, pd)
            determine_fit(y, y0)
        else:
            continue
        if go_with_cheats:
            print(facdif(y, y0))
        else:
            print(cheat_dif(y, y0))
