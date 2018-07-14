# hch.py
#
# help check e.g. check good guesses for rejects show up
#

from collections import defaultdict
import os
import re
import glob
import i7
import sys

debug = False
ignore_nudmis = False
err_max = 0
quiet = 0

sync_detail = defaultdict(str)

region_wildcard = ""

out_to_file = False
launch_outfile = False
houtfile = "hch_out.txt"

def standard_usage():
    print("hch.py 1 si e50 = print 50 maximum errors from shuffling (1) ignoring NUDMIS (nudge/miss) output file testing")
    print("hch.py 2 a e50 o = print 50 maximum errors from roiling (2) only the aftertexts (e.g. what they say after) and sends to output")
    exit()

def usage():
    print("1/2 = sa or roiling only")
    print("[asdi]* = aftertexts, spechelp, done rejects / i = ignore 'nudmis' files, only look at RBR generators.")
    print("r= = region wildcard")
    print("e# = maximum errors")
    print("q = quiet")
    print("?? = standard usage")
    exit()

def lastrev(x):
    x2 = x.lower()
    for y in range(-1, -len(x), -1):
        if x2[y] != x2[-1]: return x[:y] + x[-1] + x[y:-1]
    return x[::-1] # might as well reverse if the last n-1 letters are the same

def noquo(x):
    temp = re.sub("^\"", "", x)
    return re.sub("\".*", "", temp)

def no_of_for(x):
    return re.sub(".* (for|of) ", "", x.strip())

def jump_str(a, b):
    if not b: return ''
    if a - b <= 1: return ''
    return "*JUMP*"

def find_in_glob(sync_stuff, pattern, b, region, extras = []):
    got_sync_yet = defaultdict(str)
    errs = 0
    err_string = 'donereject' if pattern == 'done rejects' else ''
    last_line = 0
    for x in glob.glob(pattern) + extras:
        with open(x) as file:
            if not quiet: print("Checking", x)
            for (line_count, line) in enumerate(file, 1):
                if line.startswith('#done reject '):
                    print('PEDANTIC WARNING you want done rejectS to test', no_of_for(line), 'at', x, 'line', line_count)
                    continue
                if line.startswith('#' + b + ' of '):
                    print('PEDANTIC WARNING you want', b, 'FOR, not', b, 'OF, to test', no_of_for(line), 'at', x, 'line', line_count)
                    continue
                if line.startswith('#' + b + ' for '):
                    l = re.sub("#{:s} for ".format(b), "", line.strip().lower())
                    if l not in sync_stuff.keys():
                        if not region or region in x:
                            if err_max == 0 or errs <= err_max: print(l, "is invalid", b, "in file", x, "at line", line_count, "for pattern", pattern)
                            errs += 1
                    elif l in got_sync_yet.keys():
                        if not region or region in x:
                            if err_max == 0 or errs <= err_max: print(l, "is duplicated", b, "in file", x, "at line", line_count, "for pattern", pattern, "duplicating", got_sync_yet[l])
                            errs += 1
                    else:
                        got_sync_yet[l] = "{:s} line {:d}".format(x, line_count)
                        # print(l, got_sync_yet[l])
                elif err_string and err_string in line: print("Common typo flagged for", pattern, "at line", line_count, line.strip())
    last_line = 0
    for q in sorted(list(set(sync_stuff.keys()) | set(got_sync_yet.keys())), key = lambda x: sync_stuff[x] if x in sync_stuff.keys() else -1):
        if q not in got_sync_yet.keys():
            errs += 1
            if err_max == 0 or errs <= err_max:
                print(pattern, ':', q, "in table of", b, "but not in", pattern, sync_stuff[q], jump_str(sync_stuff[q], last_line))
                if out_to_file: hout.write("#{:s} for {:s}\n>{:s}\n{:s}\n\n".format(b, q, 'read ' + q if b == 'readables' else lastrev(q), sync_detail[q]))
            elif err_max and errs == err_max + 1: print("Too many errors. Increase with -e##.")
            last_line = sync_stuff[q]
        if q not in sync_stuff.keys():
            errs += 1
            if err_max == 0 or errs <= err_max: print(pattern, ':', q, "in", pattern, "but not in table of", b, sync_stuff[q], '*jump' if sync_stuff[q] - last_line > 1 and last_line else '')
            last_line = sync_stuff[q]
    if errs: print(errs, "errors found for pattern", pattern)
    else: print("No errors found for pattern", pattern)

def sync_check(a, b, region=""):
    needs_sync_test = defaultdict(int)
    in_syncable_table = False
    table_to_find = 'table of ' + b
    i7.go_proj(a)
    ever_syncable_table = False
    with open("story.ni") as file:
        for (line_count, line) in enumerate(file, 1):
            if line.startswith(table_to_find):
                in_syncable_table = True
                ever_syncable_table = True
                reading_header = '(continued)' not in line
                continue
            if not in_syncable_table: continue
            if reading_header:
                reading_header = False
                continue
            if not line.strip() or "\t" not in line: break
            ary = line.strip().split("\t")
            ary[0] = ary[0].lower()
            if ary[0] in needs_sync_test.keys(): sys.exit("STORY.NI duplication ({:s}): {:s} already defined at line {:d}, redefined at line {:d}.".format(b, ary[0], needs_sync_test[ary[0]], line_count))
            needs_sync_test[ary[0]] = line_count
            sync_detail[ary[0]] = noquo(ary[1])
            if debug: print(ary[0])
    if not ever_syncable_table:
        print(a, "/", b, "was not found in story.ni.")
        return
    rbr_find = "rbr-*"
    reg_find = "*-nudmis*"
    find_in_glob(needs_sync_test, rbr_find, b, region, ["reg-roi-seed.txt"] if os.path.exists("reg-roi-seed.txt") else [])
    if not ignore_nudmis: find_in_glob(needs_sync_test, reg_find, b, region)

projs = ['sa', 'roi']
tabs = [ 'aftertexts', 'spechelp', 'done rejects', 'readables' ]

count = 1

while count < len(sys.argv):
    arg = sys.argv[count]
    if arg[0] == '-': arg = arg[1:]
    if arg == '1' or arg == 'sa': projs = ['sa']
    elif arg == '2' or arg == 'roi' or arg == 'ro' or arg == 'r': projs = ['roi']
    elif arg == 'q': quiet = True
    elif arg == 'o': out_to_file = True
    elif arg == 'lo' or arg == 'ol': out_to_file = launch_outfile = True
    elif arg == 'nq' or arg == 'qb': quiet = False
    elif re.search("^[asdir]+", arg):
        tabs = []
        if 'a' in arg: tabs.append('aftertexts')
        if 's' in arg: tabs.append('spechelp')
        if 'd' in arg: tabs.append('done rejects')
        if 'r' in arg: tabs.append('readables')
        if 'i' in arg: ignore_nudmis = True
    elif arg.lower()[:2] == 'r=': region_wildcard = arg[2:]
    elif arg.lower()[0] == 'e': err_max = int(arg[1:])
    else: usage()
    count += 1

if out_to_file: hout = open(houtfile, "w")

if not len(projs): sys.exit("No projects defined. Bailing.")
if not len(tabs): sys.exit("No tables defined. Bailing.")

for q in projs:
    for t in tabs:
        sync_check(q, t, region_wildcard)

if out_to_file:
    print("Wrote to", houtfile)
    hout.close()
    if launch_outfile: i7.npo(houtfile)
