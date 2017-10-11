#nuch.py
#
#nudge checker for test documents for STS
#
#

# to do: permute something until we get something new, if there is a conflict
# bkoo or sign at the end (?)

from collections import defaultdict

from itertools import permutations

import re

def pre_process(gm):
	count = 0
	dupes = 0
	test_match_up = defaultdict(int)
	with open(gm) as file:
		for line in file:
			count = count + 1
			if re.search("\"\t[0-9]", line):
				l = re.sub("\t.*", "", line.strip().lower())
				l = re.sub("\"", "", l)
				if test_match_up[l]:
					suggested_try = "???"
					dupes = dupes + 1
					perms = [''.join(p) for p in permutations(l)]
					for p in perms:
						if p not in test_match_up.keys():
							suggested_try = p
							print("Suggested try", p)
							break
						else:
							continue
							print("Skipping", p, test_match_up[p])
					print('Dupe#', dupes, 'Line', count, 'duplicates', test_match_up[l], 'with', l, 'suggestion', suggested_try)
				test_match_up[l] = count
				# print(l)
	if dupes == 0:
		print("WOO no conflicts for", gm + "!")


d = [ 'shuffling', 'roiling' ]
e = [ 'c:/program files (x86)/inform 7/inform7/extensions/andrew schultz/%s nudges.i7x' % g for g in d]

for gm in e:
	pre_process(gm)
