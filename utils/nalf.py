# nalf.py
#
# this is a very crude script that chops up table of (REGION) nudges by room
#
# cmd line argument = letter of the last region you wish to see

import re
import sys

end_string = 'end-q'

if len(sys.argv) > 1:
	end_string = 'end-' + sys.argv[1]

def rmsrch(a):
	in_tables = False
	count = 0
	fi = "c:/Program Files (x86)/Inform 7/Inform7/Extensions/Andrew Schultz/{:s} Nudges.i7x".format(a)
	print("BEGINNING NUDGE TABLE READ FOR", a)
	with open(fi) as file:
		for line in file:
			l2 = line.strip()
			count = count + 1
			if l2.startswith("table of"):
				print("TABLE START: Line", count, "starts", l2)
				in_tables = True
			elif in_tables and l2.endswith("]"):
				l3 = re.sub(".*\[", "[", l2).lower()
				l3 = re.sub("(start (of )?| start)", "", l3)
				if 'locname' in l2 or 'no-gate' in l2 or 'dome-rm' in l2:
					print("ROOM: Line", count, "room", l3)
				elif 'end-' in l2:
					print("TABLE END: Line", count, l3)
					if end_string + ']' in l2:
						break
				else:
					print("Line", count, "extra uncomment", l3)
			elif not l2:
				in_tables = False

rmsrch("Shuffling")
# rmsrch("Roiling")
