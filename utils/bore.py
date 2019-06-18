#
# bore.py: bore check cutdown
#

import pyperclip
import sys
import re
import i7

from collections import defaultdict
bore_rules_found = defaultdict(int)
bore_check_found = defaultdict(int)
ignore = defaultdict(int)
open_line = defaultdict(int)

def chop_bore_rules(x):
    source = i7.main_src(x)
    sr2 = re.sub("\.[a-z0-9]+$", ".tmp", source)
    if sr2 == source: sys.exit("Bad file name")
    outs = open(sr2, "w")
    in_bore = False
    bore_text = ""
    exam_to_wipe = 0
    instead_to_insert = 0
    with open(source) as file:
        for (line_count, line) in enumerate(file, 1):
            if not line.strip():
                if in_bore:
                    outs.write(bore_text)
                in_bore = False
                outs.write(line)
                continue
            if "bore-check" in line and "\t" not in line:
                bc = re.sub(".*bore-check", "", line.lower().strip())
                bc = re.sub("\..*", "", bc)
                bc = re.sub(".* is +(the +)?", "", bc)
                bc = re.sub("rule.*", "rule", bc)
                if bc in ignore: print("Ignoring", bc, line_count)
                elif bc in bore_check_found: print("Duplicate", bc, line_count, bore_check_found[bc])
                else: bore_check_found[bc] = line_count
            if line.lower().startswith("this is the bore"):
                in_bore = True
                bore_text = ""
                l2 = re.sub("^this is the ", "", line.lower().strip())
                l2 = re.sub(":.*", "", l2)
                if l2 in ignore: print("Ignoring", l2, line_count)
                elif l2 in bore_rules_found: print("Duplicate bore rule", l2, line_count, bore_rules_found[l2])
                else: bore_rules_found[l2] = line_count
            if not in_bore:
                outs.write(line)
                continue
            if "the bore-exam rule" in line:
                exam_to_wipe += 1
                continue
            if "\tthe rule succeeds" in line or "\tcontinue the action" in line:
                instead_to_insert += 1
                bore_text = re.sub("(?<!(instead));?\n$", " instead;\n", bore_text)
            else: bore_text += line
    outs.close()
    if not exam_to_wipe + instead_to_insert:
        print("No syntax adjustments found/needed for", x)
        return
    print("EXAM rules to wipe", exam_to_wipe, "instead rules to add", instead_to_insert)
    i7.wm(source, sr2)

with open("bore.txt") as file:
    for line in file:
        l = line.lower().strip()
        if l.startswith("#"): continue
        if l.startswith(";"): break
        ignore[l] = True

stuff = [ "roi", "sa" ]

for x in stuff:
    bore_rules_found.clear()
    bore_check_found.clear()
    rule_no_check = 0
    check_no_rule = 0
    chop_bore_rules(x)
    for y in sorted(bore_rules_found, key=bore_rules_found.get):
        if y not in bore_check_found:
            print(x, y.upper(), "has bore rules line", bore_rules_found[y], "but no bore check")
            rule_no_check += 1
            open_line[x] = bore_rules_found[y]
            y2 = re.sub("^bore-", "", y)
            y2 = re.sub(" rule", "", y2)
            y2 = re.sub("-", "", y2)
            pyperclip.copy(". bore-check of {:s} is {:s}.".format(y2, y))
    for y in sorted(bore_check_found, key=bore_check_found.get):
        if y not in bore_rules_found:
            print(x, y.upper(), "has bore check line", bore_check_found[y], "but no bore rules")
            check_no_rule += 1
            open_line[x] = bore_check_found[y]
            pyperclip.copy("this is the {:s} rule:".format(y))
    if rule_no_check: print(x, rule_no_check, "orphan bore-rules")
    if check_no_rule: print(x, check_no_rule, "orphan bore-checks")

for q in open_line:
    i7.npo(i7.main_src(q), open_line[q])
    print(1)