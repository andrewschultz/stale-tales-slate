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
ignore_nudmis = False
err_max = 0
quiet = 0

region_wildcard = ""

def standard_usage():
    print("hch.py 1 si e50 = print 50 maximum errors from shuffling (1) ignoring NUDMIS (nudge/miss) output file testing")
    print("hch.py 2 a e50 = print 50 maximum errors from roiling (2) only the aftertexts (e.g. what they say after)")
    exit()

def usage():
    print("1/2 = sa or roiling only")
    print("[asdi]* = aftertexts, spechelp, done rejects / i = ignore 'nudmis' files, only look at RBR generators.")
    print("r= = region wildcard")
    print("e# = maximum errors")
    print("q = quiet")
    print("?? = standard usage")
    exit()

def no_of_for(x):
    return re.sub(".* (for|of) ", "", x.strip())

def jump_str(a, b):
    if not b: return ''
    if a - b <= 1: return ''
    return "*JUMP*"

def find_in_glob(spec_stuff, pattern, b, region):
    got_spec_yet = defaultdict(str)
    errs = 0
    err_string = 'donereject' if pattern == 'done rejects' else ''
    last_line = 0
    for x in glob.glob(pattern):
        with open(x) as file:
            if not quiet: print("Checking", x)
            for (line_count, line) in enumerate(file, 1):
                if line.startswith('#' + b + ' of '):
                    print('PEDANTIC WARNING you want', b, 'FOR, not', b, 'OF, to test', no_of_for(line), 'at', x, 'line', line_count)
                    continue
                if line.startswith('#' + b + ' for '):
                    l = re.sub("#{:s} for ".format(b), "", line.strip().lower())
                    if l not in spec_stuff.keys():
                        if not region or region in x:
                            if err_max == 0 or errs <= err_max: print(l, "is invalid", b, "in file", x, "at line", line_count, "for pattern", pattern)
                            errs += 1
                    elif l in got_spec_yet.keys():
                        if not region or region in x:
                            if err_max == 0 or errs <= err_max: print(l, "is duplicated", b, "in file", x, "at line", line_count, "for pattern", pattern, "duplicating", got_spec_yet[l])
                            errs += 1
                    else:
                        got_spec_yet[l] = "{:s} line {:d}".format(x, line_count)
                        # print(l, got_spec_yet[l])
                elif err_string and err_string in line: print("Common typo flagged for", pattern, "at line", line_count, line.strip())
    last_line = 0
    for q in sorted(list(set(spec_stuff.keys()) | set(got_spec_yet.keys())), key = lambda x: spec_stuff[x] if x in spec_stuff.keys() else -1):
        if q not in got_spec_yet.keys():
            errs += 1
            if err_max == 0 or errs <= err_max: print(pattern, ':', q, "in table of", b, "but not in", pattern, spec_stuff[q], jump_str(spec_stuff[q], last_line))
            last_line = spec_stuff[q]
        if q not in spec_stuff.keys():
            errs += 1
            if err_max == 0 or errs <= err_max: print(pattern, ':', q, "in", pattern, "but not in table of", b, spec_stuff[q], '*jump' if spec_stuff[q] - last_line > 1 and last_line else '')
            last_line = spec_stuff[q]
    if errs: print(errs, "errors found for pattern", pattern)
    else: print("No errors found for pattern", pattern)

def spec_check(a, b, region=""):
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
    rbr_find = "rbr-*"
    reg_find = "*-nudmis*"
    find_in_glob(needs_spec_test, rbr_find, b, region)
    if not ignore_nudmis: find_in_glob(needs_spec_test, reg_find, b, region)

projs = ['sa', 'roi']
tabs = [ 'aftertexts', 'spechelp', 'done rejects' ]

count = 1

while count < len(sys.argv):
    arg = sys.argv[count]
    if arg[0] == '-': arg = arg[1:]
    if arg == '1' or arg == 'sa': projs = ['sa']
    elif arg == '2' or arg == 'roi' or arg == 'ro' or arg == 'r': projs = ['roi']
    elif arg == 'q': quiet = True
    elif arg == 'nq' or arg == 'qb': quiet = False
    elif re.search("^[asdi]+", arg):
        tabs = []
        if 'a' in arg: tabs.append('aftertexts')
        if 's' in arg: tabs.append('spechelp')
        if 'd' in arg: tabs.append('done rejects')
        if 'i' in arg: ignore_nudmis = True
    elif arg.lower()[:2] == 'r=': region_wildcard = arg[2:]
    elif arg.lower()[0] == 'e': err_max = int(arg[1:])
    else: usage()
    count += 1

for q in projs:
    for t in tabs:
        spec_check(q, t, region_wildcard)
