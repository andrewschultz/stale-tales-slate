# first last name generator from a string
# so much quicker than PERL!
# it takes a word, pulls a first name from it, then checks if the remaining string is in the "last words" dict

import sys
from collections import defaultdict

def show_exacts(my_name, my_dict, my_description = "no description"):
    matches = []
    for x in my_dict:
        if sorted(my_name) == sorted(x):
            matches.extend(my_dict[x])
    if len(matches):
        print("Got matches for {} and {}: {}".format(my_name, my_description, ', '.join(matches)))
    else:
        print("No matches for {} and {}.".format(my_name, my_description))

def read_names(file_string):
	temp_dict = defaultdict(list)
	with open(file_string) as file:
		for (line_count, line) in enumerate(file, 1):
			my_entry = line.lower().strip()
			temp_dict[''.join(sorted(list(my_entry)))].append(my_entry)
	return temp_dict

def remove_from(my_name, my_list):
	for n in my_name:
		try:
			my_list.remove(n)
		except:
			return ''
	return ''.join(my_list)

first_names = read_names("c:/writing/dict/firsts.txt")
last_names = read_names("c:/writing/dict/lasts.txt")

try:
	my_name = sys.argv[1]
except:
	sys.exit("Need a name or word.")

smn = set(my_name)

show_exacts(my_name, first_names, "first names")
show_exacts(my_name, last_names, "last names")

print("Two-name matches:")

for f in first_names:
	stemp = sorted(list(my_name))
	poss_last = remove_from(f, stemp)
	if not poss_last:
		continue
	if poss_last not in last_names:
		continue
	print("got", '/'.join(first_names[f]), '/'.join(last_names[poss_last]))
