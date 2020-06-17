import os
import sys
from collections import defaultdict
import re
import i7
import mytools as mt

#future cmd line options
print_unused = True
remove_bracketed = True

source_start = defaultdict(str)

valid_matchdict = ['shorts', 'to_fixes', 'flag_outside_quotes', 'ignores', 'replaceables', 'deffos_start', 'deffos_anywhere', 'source_start_line']

#truth state which/that varies
replaced = defaultdict(int)
# zap m-bk
# zap no-lag's boat?

#the match dictionary is a dictionary of dictionaries of integers because we may wish to keep track of how many matches we find.
match_dictionary = defaultdict(lambda: defaultdict(int))

starts = defaultdict(int)
replace_first = defaultdict(int)

this_section = ""
count = 0

def cut_down_need_fixing(line, line_count):
    temp = line
    for x in match_dictionary['to_fixes']:
        t2 = temp
        temp = temp.replace(x, 'zzz')
        if t2 != temp:
            replaced[x] += 1
            if x not in replace_first:
                replace_first[x] = line_count
    return temp

def cut_down(line):
    temp = line.lower()
    for x in match_dictionary['replaceables']:
        temp = temp.replace(x, 'xxx')
        match_dictionary['replaceables'][x] += 1
    return temp

def is_ignorable(line):
    for x in match_dictionary['ignores']:
        if line.startswith(x):
            match_dictionary['ignores'][x] += 1
            return True
    return False

def is_definition(line):
    exact_found = False
    for x in match_dictionary['deffos_start']:
        if line.startswith(x):
            match_dictionary['deffos_start'][x] += 1
            exact_found = True
    for x in match_dictionary['deffos_anywhere']:
        if x in line:
            if 'popstar' in line: print("!!", x)
            match_dictionary['deffos_anywhere'][x] += 1
            exact_found = True
    if exact_found: return True
    if '-quip' in line and re.search("^[a-zA-Z0-9-]+-quip", line): return True
    if line.startswith('t-') and re.search("^t-[a-z]+ly", line): return True
    return False;

def cut_down_shorts(line):
    temp = line
    for x in match_dictionary['shorts']:
        if x not in temp: continue
        if x in temp and re.search(r'\b{}\b'.format(x), temp):
            match_dictionary['shorts'][x] += 1
            temp = re.sub(r'\b{}\b'.format(x), 'yyy', temp)
    return temp

def find_strings(my_project):
    this_section = ""
    with open("rmpun-{}.txt".format(my_project)) as file:
        for (line_count, line) in enumerate(file, 1):
            if line.startswith("#"): continue
            if line.startswith(";"): break
            ll = line.lower().strip()
            if not ll: continue
            if line == line.upper():
                if ll not in valid_matchdict:
                    print("WARNING: invalid section", ll, "line", line_count)
                    this_section = ""
                    continue
                else:
                    # print("Section", ll, "line", line_count)
                    this_section = ll
                    continue
            if not this_section: continue
            if this_section == "source_start_line":
                ary = line.lower().strip().split('=')
                source_start[ary[0]] = ary[1]
                continue
            for x in ll.split(","):
                x0 = x.strip()
                if not x0:
                    print("WARNING blank string line", line_count)
                    continue
                if x in match_dictionary[this_section]:
                    print("Duplicate entry", x, "for", this_section, "line", line_count)
                else:
                    match_dictionary[this_section][x] = 0

def has_flaggable(my_line):
    if i7.is_outline_start(my_line): return
    if my_line.startswith("["): return
    try:
        x = int(my_line[0])
        return
    except:
        pass
    ml = ' '.join(my_line.split('"')[0::2])
    if remove_bracketed: ml = re.sub("\[[^\]]+\]", "", ml)
    ary = []
    for q in match_dictionary['flag_outside_quotes']:
        if q in ml:
            ml = ml.replace("bore-" + q, "borexxx")
            ml = ml.replace("table of " + q, "borexxx")
            if q in ml:
                ary.append(q)
    return ary

def just_flag(my_file):
    my_file_short = os.path.basename(my_file)
    short_lower = my_file_short.lower()
    source_started_yet = short_lower not in source_start
    with open(my_file) as f:
        for (line_count, line) in enumerate(f, 1):
            if not source_started_yet:
                if line.startswith(source_start[short_lower]):
                    #print("Starting to read", my_file_short, "source line", line_count)
                    source_started_yet = True
                continue
            ll = line.lower().strip()
            temp = has_flaggable(ll)
            if temp:
                print(my_file_short, line_count, "FLAGGED TEXT WE THOUGHT WAS DONE:", temp)
                print("----" + ll)
                print()
                mt.add_open(my_file, line_count)
                continue

caught_need_fix = 0
final_string = ""

my_project = "roiling"
cmd_count = 1

show_first_lines = False

while cmd_count < len(sys.argv):
    arg = sys.argv[cmd_count]
    if arg == 'f':
        show_first_lines = True
    elif arg == 's':
        my_project = "shuffling"
    elif arg == 'r':
        my_project = "roiling"
    elif arg == 'er' or arg == 're':
        os.system("rmpun-roiling.txt")
        exit()
    elif arg == 'es' or arg == 'se':
        os.system("rmpun-shuffling.txt")
        exit()
    elif arg == 'eg' or arg == 'ge':
        os.system("rmpun-globals.txt")
        exit()
    elif arg == 'ec' or arg == 'ce':
        mt.open_this()
        exit()
    cmd_count += 1

try:
    find_strings("globals")
except:
    print("Could not find globals file. This is not a big deal.")

find_strings(my_project)
i7.go_proj(my_project)

short_main = os.path.basename(i7.main_src(my_project)).lower()
source_started_yet = short_main not in source_start

full_file_list = [ i7.main_src(my_project), i7.hdr(my_project, 'ta'), i7.hdr(my_project, 'nu'), i7.hdr(my_project, 'mi') ]

with open("story.ni") as file:
    for (line_count, line) in enumerate(file, 1):
        ll = line.lower()
        if not source_started_yet:
            if ll.startswith(source_start[short_main]):
                source_started_yet = True
                print("Started reading source at line", line_count)
            continue
        temp = has_flaggable(ll)
        if temp:
            continue
        if is_ignorable(ll): continue
        first_sentence = re.sub("[\"\t\(\[].*", "", line.rstrip()).lower()
        if is_definition(first_sentence): continue
        l2 = cut_down(first_sentence)
        if "'" not in l2 and "-" not in l2: continue
        l4 = cut_down_shorts(l2)
        if "'" not in l4 and "-" not in l4: continue
        l3 = cut_down_need_fixing(l4, line_count)
        if "'" not in l3 and "-" not in l3:
            caught_need_fix += 1
            final_string += line
            continue
        else:
            count += 1
        print(count, line_count, first_sentence, '/', l2, '/', l3)

for x in full_file_list:
    just_flag(x)

print("Caught needing a fix:", caught_need_fix)
print(len(replaced))
fix_no_replace = [x for x in match_dictionary['to_fixes'] if x not in replaced]
if len(fix_no_replace):
    print("Slated for fix with no replacement:", ', '.join(sorted(fix_no_replace)))

full_count = local_count = 0

if print_unused:
    for x in sorted(match_dictionary):
        local_count = 0
        if x == 'flag_outside_quotes': continue
        if x == 'to_fixes': continue
        for y in sorted(match_dictionary[x]):
            if not match_dictionary[x][y]:
                local_count += 1
                full_count += 1
                print("{}{}".format(local_count, "/" + str(full_count) if full_count > local_count else ""), x, "did not use", y)

if show_first_lines:
    for x in replace_first: print(x, replace_first[x])

mt.postopen()