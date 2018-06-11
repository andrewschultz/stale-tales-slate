# hch.py
#
# help check e.g. check good guesses for rejects show up
#

from collections import defaultdict
import re
import glob
import i7
import sys

debug = False

def find_in_glob(spec_stuff, pattern, b):
    got_spec_yet = defaultdict(str)
    errs = 0
    for x in glob.glob(pattern):
        with open(x) as file:
            print("Checking", x)
            for (line_count, line) in enumerate(file, 1):
                if line.startswith('#' + b + ' of'):
                    print('WARNING you need', b, 'for, not', b, 'of at', x, 'line', line_count)
                    continue
                if line.startswith('#' + b + ' for '):
                    l = re.sub("#{:s} for ".format(b), "", line.strip().lower())
                    if l not in spec_stuff.keys():
                        print(l, "is invalid", b, "in file", x, "at line", line_count, "for pattern", pattern)
                        errs += 1
                    elif l in got_spec_yet.keys():
                        print(l, "is duplicated", b, "in file", x, "at line", line_count, "for pattern", pattern, "duplicating", got_spec_yet[l])
                        errs += 1
                    else:
                        got_spec_yet[l] = "{:s} line {:d}".format(x, line_count)
                        # print(l, got_spec_yet[l])
    for q in list(set(spec_stuff.keys()) | set(got_spec_yet.keys())):
        if q not in got_spec_yet.keys():
            errs += 1
            print(pattern, ':', q, "in table of", b, "but not in", pattern)
        if q not in spec_stuff.keys():
            errs += 1
            print(pattern, ':', q, "in", pattern, "but not in table of", b)
    if errs: print(errs, "errors found for pattern", pattern)
    else: print("No errors found for pattern", pattern)

def spec_check(a, b):
    needs_spec_test = defaultdict(int)
    in_spechelp = False
    table_to_find = 'table of ' + b
    i7.go_proj(a)
    with open("story.ni") as file:
        for (line_count, line) in enumerate(file, 1):
            if line.startswith(table_to_find):
                in_spechelp = True
                continue
            if not in_spechelp: continue
            if line.startswith("xtrhelp"): continue
            if not line.strip() or "\t" not in line: break
            ary = line.strip().lower().split("\t")
            if ary[0] in needs_spec_test.keys(): sys.exit("STORY.NI duplication ({:s}): {:s} already defined at line {:d}, redefined at line {:d}.".format(b, ary[0], needs_spec_test[ary[0]], line_count))
            needs_spec_test[ary[0]] = line_count
            if debug: print(ary[0])
    find_in_glob(needs_spec_test, "rbr-*", b)
    find_in_glob(needs_spec_test, "*-nudmis*", b)

spec_check('sa', 'spechelp')
spec_check('sa', 'done rejects')
# spec_check('roi', 'spechelp')
# spec_check('roi', 'done rejects')