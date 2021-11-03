#
# vtc.py: verbs test case checker
#
# makes sure verb test cases are linked up with something in an RBR or REG file
#

invalid_prefixes = [ 'randomize-' ]
valid_rule_types = [ 'ordeal-reload', 'stores', 'routes', 'troves', 'presto', 'oyster', 'towers', 'otters', 'others', 'demo-dome' ]

import os
import glob
import mytools as mt
import re
import sys
from collections import defaultdict
if_levels = defaultdict(str)
rules_to_find = defaultdict(bool)
line_of = defaultdict(int)

current_rule = ''
current_testcase = ''

crit_word = '-'

try:
    crit_word = sys.argv[1].lower()
    print("New critical word:", crit_word)
except:
    print("CMD line can take a parameter for critical word to display source. Default is", crit_word)

crit_word = crit_word.replace('-', '')

def is_valid_rule(my_string):
    for x in invalid_prefixes:
        if my_string.startswith(x):
            return False
    for x in valid_rule_types:
        if x + ' rule' in my_string:
            return True
    return False

def if_statement_of(my_line, backup_string):
    if 'else:' in my_line:
        return 'not-' + backup_string
    my_line = my_line.strip()
    if my_line.startswith('unless') or my_line.startswith('if') or my_line.startswith('else '):
        temp = re.sub("[,:].*", "", my_line.lower())
        temp = temp.replace(' ', '-')
        return temp
    return ''

with open("story.ni") as file:
    for (line_count, line) in enumerate(file, 1):
        l = line.rstrip()
        if l.startswith("this is") and l.endswith(' rule:'):
            current_rule = re.sub("this is (the )?", "", l.strip())
            if is_valid_rule(current_rule):
                current_rule = re.sub(" +rule:", "", current_rule)
                print(current_rule, line_count)
            else:
                current_rule = ''
        if not l.strip():
            current_rule = ''
            if current_testcase:
                rules_to_find[current_testcase] = False
                line_of[current_testcase] = line_count - 1
            current_testcase = ''
            if_levels.clear()
            continue
        if current_rule:
            current_if_level = l.count('\t')
            lev_to_delete = current_if_level + 1
            while lev_to_delete in if_levels:
                if_levels.pop(lev_to_delete)
                lev_to_delete += 1
            temp = if_statement_of(line, if_levels[current_if_level] if current_if_level in if_levels else '')
            if not temp:
                if "instead;" in line and current_if_level == 1:
                    rules_to_find[current_rule + "-default"] = False
                    line_of[current_rule + "-default"] = line_count
                continue
            if current_testcase:
                if current_testcase in rules_to_find:
                    print("Duplicate test case", current_testcase, "line", line_count)
                rules_to_find[current_testcase] = False
                line_of[current_testcase] = line_count
            current_testcase = current_rule
            if_levels[current_if_level] = temp
            for x in sorted(if_levels):
                current_testcase += '-' + if_levels[x]

def comment_to_case(my_line):
    my_line = my_line.lower().strip()
    my_line = re.sub("^#(re)?verb(test|case) *", "", line.strip())
    my_line = re.sub(" [0-9 ]+$", "", my_line)
    return my_line.strip()

for x in glob.glob("rbr*"):
    b = os.path.basename(x)
    with open(x) as file:
        for (line_count, line) in enumerate (file, 1):
            if line.startswith("#verbtest") or line.startswith("#verbcase"):
                this_verb_case = comment_to_case(line)
                if " for " not in line:
                    pass
                    #print("WARNING line {} {} should add < for > after #verbtest/case.".format(line_count, b))
                if this_verb_case not in rules_to_find:
                    print("WARNING {} line {} extraneous verbtest for {}".format(b, line_count, this_verb_case))
                    mt.add_postopen(x, line_count)
                elif rules_to_find[this_verb_case]:
                    print("Duplicate verbtest for", this_verb_case, b, line_count)
                    print("Previously seen at", rules_to_find[this_verb_case])
                    mt.add_postopen(x, line_count)
                else:
                    rules_to_find[this_verb_case] = (b, line_count)
            if line.startswith("#reverbtest") or line.startswith("#reverbcase"):
                this_verb_case = comment_to_case(line)
                if this_verb_case not in rules_to_find:
                    print("WARNING no verb case for", this_verb_case, b, "line", line_count)
                    mt.add_postopen(x, line_count)
                elif not rules_to_find[this_verb_case]:
                    print("Reverbtest before verbtest for", this_verb_case, b, line_count)
                    mt.add_postopen(x, line_count)

count = 0
got = 0

prefixes = defaultdict(int)

for x in rules_to_find:
    if not rules_to_find[x]:
        if not count:
            print('==== TEST CASES NEEDED')
        count += 1
        prefixes[re.sub("-.*", "", x)] += 1
        if crit_word in x:
            print("#verbcase", x, count, line_of[x])
    else:
        got += 1

for q in sorted(prefixes, key=prefixes.get):
    print(q, prefixes[q])

if not count:
    print("All verb test cases tracked!")
else:
    print(count, "verb test cases needed.")
    if got:
        print(got, "verb test cases tracked!")

mt.postopen()