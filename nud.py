#
#nud.py
#
#arrange nudge file alphabetically
#
#

import re
import os
import i7
import sys

from collections import defaultdict

verbose = False

table_starts = defaultdict(int)
table_order = defaultdict(tuple)
first_table = defaultdict(str)
sect_order = defaultdict(int)

temp_file = os.path.join(i7.extdir, "temp.i7x")

def invalid_conditional(s):
    if s == "stopping" or s == "else" or s == "end if" or s == 'i' or s == 'r' or s == 'or' or s == "'" or s == 'paragraph break' or s == 'one of': return True
    if s.startswith("unless ") or s.startswith("else if ") or s.startswith("if "): return True
    return False

def nudge_it(proj):
    in_table = False
    my_table = ""
    my_f = i7.hdr(proj, "nu")
    temp_out = open(temp_file, "w")
    write_lines = True
    near_end = False
    cur_rule_or_quote = ""
    cur_full_quote = defaultdict(str)
    ending_bit = ""
    with open(my_f) as file:
        for (line_count, line) in enumerate(file, 1):
            if not write_lines and line.strip().endswith("ends here."):
                write_lines = True
                near_end = True
            if near_end:
                ending_bit += line
                continue
            if write_lines:
                temp_out.write(line)
            if line.startswith("book text details"):
                write_lines = False
                temp_out.write("\n")
                continue
            if line.startswith("table of"):
                my_table = re.sub("table of ", "", line.lower().strip())
                my_table = re.sub(" nudges", "", my_table)
                table_starts[my_table] = line_count
                continue
            if line.startswith("this-cmd"):
                in_table = True
                continue
            if not line.strip():
                in_table = False
                cur_rule_or_quote = ""
                continue
            if in_table:
                lary = line.lower().split("\t")
                if len(lary) != 6: print("Bad # of tabs in table at line {:d}. Should have 6.".format(line_count))
                if lary[4] != '--':
                    temp = re.sub("^the ", "", lary[4].lower())
                    table_order[lary[4]] = (line_count, 4)
                if lary[5]: #should always be the case but who knows
                    lary[5] = re.sub("^\"", "", lary[5])
                    lary[5] = re.sub("\".*", "", lary[5])
                    line_not = 5
                    for brax in re.findall("\[[^\]]*\]", lary[5]):
                        brax = re.sub("[\[\]]", "", brax)
                        if invalid_conditional(brax): continue
                        brax = re.sub(" +of .*", "", brax)
                        if brax not in table_order:
                            first_table[brax] = my_table
                            if verbose: print("Adding", brax, line_count, my_table, len(table_order))
                            table_order[brax] = (line_count, line_not)
                            line_not += 1
            else:
                if line.startswith("to say"):
                    temp = re.sub("^to say ", "", line.lower().strip())
                    temp = re.sub(" *:.*", "", temp)
                    temp = re.sub(" +of .*", "", temp)
                    if verbose: print(temp, "listed at line", line_count)
                    sect_order[temp] = line_count
                    cur_rule_or_quote = temp
                    cur_full_quote[cur_rule_or_quote] = ""
                if line.startswith("this is "):
                    temp = re.sub("^this is (the )?", "", line.strip())
                    temp = re.sub(" *:.*", "", temp)
                    if verbose: print(temp, "listed at line", line_count)
                    sect_order[temp] = line_count
                    cur_rule_or_quote = temp
                    cur_full_quote[cur_rule_or_quote] = ""
                if cur_rule_or_quote: cur_full_quote[cur_rule_or_quote] += line
    x = list(set(sect_order) - set(table_order))
    if len(x): print("Print commands not in table:", len(x), x)
    y = list(set(table_order) - set(sect_order))
    if len(y): print("Table commands not in print:", len(y), y)
    ts = sorted(table_starts, key=table_starts.get)
    for q in sorted(table_order, key=table_order.get):
        # print(q, table_order[q], ts, ts[0], table_starts[ts[0]])
        if len(ts) and table_order[q][0] > table_starts[ts[0]]:
            temp_out.write("section {:s} nudges\n\n".format(ts[0]))
            ts.pop(0)
        temp_out.write(cur_full_quote[q] + "\n")
    temp_out.write(ending_bit)
    temp_out.close()
    os.system(temp_file)
    i7.wm(temp_file, my_f)
    sys.exit()

nudge_it("sa")
nudge_it("roi")