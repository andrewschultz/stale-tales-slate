# pres.py: this marks test cases/lines for both PREEF commands and pre- rules.
#
# we should probably make things so that this is subsumed into the ttc.py framework e.g. not just searching for tables.
#
# creating rule test cases and so forth, as well as specific keywords matched to tables
#
# todo: add PREEFSAY
#

import sys
import re
import i7
import os
from collections import defaultdict
import mytools as mt

prerules_from_source = defaultdict(lambda:defaultdict(int))
prerules_from_script = defaultdict(lambda:defaultdict(int))
preefs_table = defaultdict(bool)
preefs_source = defaultdict(int)
preefs_source_line = defaultdict(int)
preefs_source_clue = defaultdict(str)
preefs_testfile = defaultdict(int)

my_projs = [ 'roi', 'sa' ]

ignore_preef = [ 'noun', 'x', 'pfy' ]

arg_count = 1
while arg_count < len(sys.argv):
    arg = sys.argv[arg_count]
    if arg == 'r':
        my_projs = [ 'roi' ]
    elif arg == 's':
        my_projs = [ 'sa' ]
    arg_count += 1

def get_preef_source(my_file):
    with open(my_file) as file:
        for (line_count, line) in enumerate(file, 1):
            if re.search("^\t+preef ", line):
                if "the-from entry" in line: continue
                if "[preef" in line:
                    line_post = re.sub(".*\[preef *", "", line.rstrip().lower())
                    line_post = re.sub("\].*", "", line_post)
                    preef_array = re.split(" */ *", line_post)
                    for p in preef_array:
                        if p in ignore_preef: continue
                        preefs_source[p] = True
                        #print(p, preefs_source[p], os.path.basename(my_file), line_count)
                    continue
                to_preef = re.sub("^\t+preef *", "", line.rstrip().lower())
                to_preef = re.sub("( *instead)?;.*", "", to_preef)
                if to_preef in ignore_preef: continue
                preefs_source[to_preef] = True
                #print(to_preef, preefs_source[to_preef], os.path.basename(my_file), line_count)

def check_preflips(my_proj, pre_col):
    my_src = i7.main_src(my_proj)
    skip_next = False
    cur_table = ""
    table_file = i7.hdr(my_proj, 'ta')
    mistake_file = i7.hdr(my_proj, 'mi') # for mistake-clue constructions
    os.chdir(i7.proj2dir(my_proj))
    preefs_table.clear()
    preefs_source.clear()
    preefs_source_line.clear()
    preefs_testfile.clear()
    get_preef_source(my_src)
    get_preef_source(table_file)
    prerules_from_source.clear()
    prerules_from_script.clear()
    with open(my_src) as file:
        for (line_count, line) in enumerate(file, 1):
            if skip_next:
                skip_next = False
                continue
            if line.startswith("table of preflip clues"):
                cur_table = "table of preflip clues"
                skip_next = True
                continue
            if cur_table and not line.strip():
                cur_table = ""
                continue
            if not cur_table: continue
            ary = line.split("\t")
            ary[0] = ary[0].lower()
            if ary[0] in preefs_source_line:
                print("Double entry in table of preflips:", ary[0], line_count, preefs_source_line[ary[0]])
            else:
                preefs_source_line[ary[0]] = line_count
                try:
                    preefs_source_clue[ary[0]] = ary[2].replace('"', '').strip()
                except:
                    print(line_count, ary[0], "no suggested text.")
            preefs_table[ary[0]] = 1
    with open(mistake_file) as file:
        for (line_count, line) in enumerate(file, 1):
            if skip_next:
                skip_next = False
            if "[mistake-clue of" in line:
                ll = re.sub(".*\[mistake-clue of ", "", line.lower().strip())
                ll = re.sub("\].*", "", ll)
                preefs_source[ll] = True
                continue
    skip_next = False
    cur_table = ""
    with open(table_file) as file:
        for (line_count, line) in enumerate(file, 1):
            if skip_next:
                skip_next = False
                continue
            if line.startswith("table of") and "anagrams" in line:
                cur_table = line.strip().lower()
                cur_table_short = re.sub("table of ", "", cur_table)
                cur_table_short = re.sub(" anagrams.*", "", cur_table_short)
                skip_next = True
                continue
            if not line.strip():
                cur_table = ""
                continue
            if not cur_table: continue
            ary = line.split("\t")
            rule_val = ary[pre_col]
            if rule_val == '--': continue
            if rule_val == 'a rule': continue
            #print(cur_table_short, "<- table rule->", rule_val)
            prerules_from_source[cur_table_short][rule_val] += 1
    occur_global = 0
    bad_global = 0
    for x in prerules_from_source:
        occur = 0
        bad_rules = 0
        file_name = "rbr-{}-{}.txt".format(my_proj, x.replace(' ', '-'))
        print(file_name)
        if not os.path.exists(file_name):
            print("No rbr file for", x)
            continue
        full_file = os.path.join(os.getcwd(), file_name)
        with open(file_name) as file:
            for (line_count, line) in enumerate(file, 1):
                line_orig = line
                if line.startswith ("#preefcheck "):
                    ll = re.sub("^#preefcheck *(of )?", "", line.lower().strip())
                    preefs_testfile[ll] = True
                if not (line.startswith("#pre-") and 'rule' in line): continue
                line = line.replace(" retry", "")
                rule_val = re.sub("rule .*", "rule", line[1:].lower().strip())
                if rule_val not in prerules_from_source[x]:
                    print("Pre_rule in", file_name, "but not header file:", rule_val)
                    bad_rules += 1
                else:
                    #print(rule_val, prerules_from_script[x], line)
                    if (rule_val in prerules_from_script[x]) == (' retry' not in line_orig):
                        if ' retry' in line_orig:
                            print("Extraneous retry in line:", line_count, file_name, rule_val)
                        else:
                            print("May need to add retry in line:", line_count, file_name, rule_val)
                            mt.add_postopen(full_file, line_count)
                        print("    " + line.strip())
                    prerules_from_script[x][rule_val] = True
        for y in prerules_from_source[x]:
            if y not in prerules_from_script[x]:
                print("Need", y, "in test file for", x)
                bad_rules += 1
        if bad_rules: print(bad_rules, "rules to add/subtract in", file_name)
        bad_global += bad_rules
    if (bad_global):
        print(bad_global, "Total occurrences of rules needing editing in", my_proj)
    else:
        print(my_proj, "PASSED pre-rule testing!")
    pst = sorted(list(set(preefs_source) | set(preefs_table)))
    total_count = count = 0
    for x in pst:
        if x not in preefs_source:
            count += 1
            print(count, x, "in table of preflips but not source. Add #preef", x)
    total_count += count
    if count > 0: print("=" * 50, count, total_count)
    count = 0
    for x in pst:
        if x not in preefs_table:
            count += 1
            print(count, x, "in source but not table of preflips.")
    total_count += count
    if count > 0: print("=" * 50, count, total_count)
    count = 0
    for x in pst:
        if x not in preefs_testfile:
            count += 1
            print(count, x, "in source/tables but not testfile. Suggested text added below:")
            print("#preefcheck {}".format(x))
            print(">pf")
            print(preefs_source_clue[x])
    total_count += count
    if count > 0: print("=" * 50, count, total_count)

pre_col_of = defaultdict(int)
pre_col_of['roi'] = 7
pre_col_of['sa'] = 4

for pr in my_projs:
    check_preflips(pr, pre_col_of[pr])

mt.post_open()