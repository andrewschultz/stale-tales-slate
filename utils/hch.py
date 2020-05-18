# hch.py
#
# help check e.g. check good guesses for rejects show up
#
# this looks for a table named, say, XYZ, then looks for #xyz in a glob of test files

from collections import defaultdict
import os
import re
import glob
import i7
import sys

debug = False
ignore_nudmis = False
print_details = False
err_max = 0
quiet = 0

sync_detail = defaultdict(str)

region_wildcard = ""

show_wrongs = False
wrong_count = 0

out_to_file = False
launch_outfile = False
houtfile = "hch_out.txt"

def standard_usage():
    print("[asdi]* = aftertexts, spechelp, done rejects / i = ignore 'nudmis' files, only look at RBR generators.")
    print("hch.py 1 si e50 = print 50 maximum errors from shuffling (1) ignoring NUDMIS (nudge/miss) output file testing")
    print("hch.py 2 a e50 o = print 50 maximum errors from roiling (2) only the aftertexts (e.g. what they say after) and sends to output")
    exit()

def usage():
    print("1/2 = sa or roiling only")
    print("[asdi]* = aftertexts, spechelp, done rejects / i = ignore 'nudmis' files, only look at RBR generators.")
    print("w nw wn = switch on/off WRONG notifications")
    print("r= = region wildcard")
    print("e# = maximum errors")
    print("q = quiet")
    print("?? = standard usage")
    exit()

def my_category(my_file):
    if 'nudmis' in my_file: return 'nudmis'
    if 'slider' in my_file: return 'slider'
    return ''

ignore_blank_cat = True

def verify_reg_files(my_proj):
    print("This is hard coded. I need to fix it.")
    x = glob.glob("reg-roi*.txt")
    valids = { 'slider': [ 'slider' ],
      'nudmis': [ 'scannotes', 'spechelp', 'done rejects' ],
      '' : []
    }
    flaggable = defaultdict(bool)
    for q in valids:
        for r in valids[q]:
            flaggable[r] = True
    glo = 0
    for fi in x:
        loc = 0
        cat = my_category(fi)
        fb = os.path.basename(fi)
        if ignore_blank_cat and not cat:
            if not quiet: print("Skipping category for", fi)
            continue
        with open(fi) as file:
            for (line_count, line) in enumerate(file, 1):
                if not line.startswith('#'): continue
                for y in flaggable:
                    if line[1:].lower().startswith(y):
                        if y not in valids[cat]:
                            loc += 1
                            glo += 1
                            print("Invalid comment {}/{} {} line {}: {}".format(loc, glo, fb, line_count, line.strip()))
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
    return "*JUMP* {}".format(a-b-1)

def find_in_glob(sync_stuff, pattern, b, region, details, extras = []):
    for_pattern = "for pattern {} in {}.".format(pattern, b)
    got_sync_yet = defaultdict(str)
    errs = 0
    err_string = 'donereject' if pattern == 'done rejects' else ''
    last_line = 0
    wrong_count = 0
    for x in glob.glob(pattern) + extras:
        with open(x) as file:
            if not quiet: print("Checking", x)
            for (line_count, line) in enumerate(file, 1):
                ll = line.lower().strip()
                if show_wrongs and line.startswith("WRONG"):
                    wrong_count += 1
                    print("WRONG #", wrong_count, "needs to be replaced at", x, "line", line_count)
                    continue
                if ll.startswith('#done reject '):
                    print('PEDANTIC WARNING you want done rejectS to test', no_of_for(line), 'at', x, 'line', line_count)
                    continue
                if ll.startswith('#donereject'):
                    print('PEDANTIC WARNING you want done rejectS (with a space) to test', no_of_for(line), 'at', x, 'line', line_count)
                    continue
                if ll.startswith('#' + b + ' of '):
                    print('PEDANTIC WARNING you want', b, 'FOR, not', b, 'OF, to test', no_of_for(line), 'at', x, 'line', line_count)
                    continue
                if ll.startswith('#re' + b + ' for '):
                    l = re.sub("#re{:s} for ".format(b), "", ll)
                    if l not in sync_stuff.keys():
                        if not region or region in x:
                            if err_max == 0 or errs <= err_max: print('(RETEST)', l, "is invalid", b, "in file", x, "at line", line_count, for_pattern)
                            errs += 1
                    elif l not in got_sync_yet.keys():
                        if not region or region in x:
                            if err_max == 0 or errs <= err_max: print(l, "is retest without test", b, "in file", x, "at line", line_count, for_pattern, "duplicating", got_sync_yet[l])
                            errs += 1
                if ll.startswith('#' + b + ' for '):
                    l = re.sub("#{:s} for ".format(b), "", ll)
                    if l not in sync_stuff.keys():
                        if not region or region in x:
                            if err_max == 0 or errs <= err_max: print(l, "is invalid", b, "in file", x, "at line", line_count, for_pattern)
                            errs += 1
                    elif l in got_sync_yet.keys():
                        if not region or region in x:
                            if err_max == 0 or errs <= err_max: print(l, "is duplicated", b, "in file", x, "at line", line_count, for_pattern, "duplicating", got_sync_yet[l])
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
                print(pattern, ':', q, "in table of", b, sync_stuff[q], "but not in", pattern, jump_str(sync_stuff[q], last_line))
                if print_details:
                    print("#{} for {}".format(b, q))
                    if b == 'scannotes':
                        print(">scan {}".format(q))
                    else:
                        print(">{}".format(q))
                    print(details[q])
                if out_to_file: hout.write("#{:s} for {:s}\n>{:s}\n{:s}\n\n".format(b, q, 'read ' + q if b == 'readables' else lastrev(q), sync_detail[q]))
            elif err_max and errs == err_max + 1: print("Too many errors. Increase with -e##.")
            last_line = sync_stuff[q]
        if q not in sync_stuff.keys():
            errs += 1
            if err_max == 0 or errs <= err_max:
                print(pattern, ':', q, "in", pattern, sync_stuff[q], "but not in table of", b, '*jump' if sync_stuff[q] - last_line > 1 and last_line else '')
            last_line = sync_stuff[q]
    print (errs if errs else "No", "errors found", for_pattern)
    return errs

def sync_check(a, b, region=""):
    needs_sync_test = defaultdict(int)
    in_syncable_table = False
    table_to_find = 'table of ' + b
    i7.go_proj(a)
    ever_syncable_table = False
    main_or_table = [ i7.main_src(a), i7.hdr(a, 'ta') ]
    detail_column = cols[b] if b in cols else 1
    for fi in main_or_table:
        with open(fi) as file:
            for (line_count, line) in enumerate(file, 1):
                if line.startswith(table_to_find):
                    in_syncable_table = True
                    ever_syncable_table = True
                    reading_header = '(continued)' not in line
                    print("Started", table_to_find, "at line", line_count, "file", os.path.basename(fi))
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
                sync_detail[ary[0]] = noquo(ary[detail_column])
                if debug: print(ary[0])
    if not ever_syncable_table:
        print(a, "/", b, "was not found in main source or table header.")
        return 0
    rbr_find = "rbr-*"
    reg_find = "*-nudmis*"
    ret_val = find_in_glob(needs_sync_test, rbr_find, b, region, sync_detail, ["reg-roi-seed.txt"] if os.path.exists("reg-roi-seed.txt") else [])
    if not ignore_nudmis: ret_val += find_in_glob(needs_sync_test, reg_find, b, region, sync_detail)
    return ret_val

projs = ['sa', 'roi']
tabs = { 'sa' : ['spechelp', 'done rejects', 'readables'],
  'roi': ['scannotes', 'spechelp', 'done rejects', 'readables']
}

cols = { 'scannotes': 5 }

count = 1

while count < len(sys.argv):
    arg = sys.argv[count]
    if arg[0] == '-': arg = arg[1:]
    if arg == '1' or arg == 'sa': projs = ['sa']
    elif arg == '2' or arg == 'roi' or arg == 'ro' or arg == 'r': projs = ['roi']
    elif arg == 'q': quiet = True
    elif arg == 'o': out_to_file = True
    elif arg == 'w': show_wrongs = True
    elif arg == 'nw' or arg == 'wn': show_wrongs = False
    elif arg == 'pd' or arg == 'dp': print_details = True
    elif arg == 'npd' or arg == 'ndp' or arg == 'pdn' or arg == 'dpn': print_details = False
    elif arg == 'lo' or arg == 'ol': out_to_file = launch_outfile = True
    elif arg == 'nq' or arg == 'qb': quiet = False
    elif arg == 'i': ignore_nudmis = True
    elif arg == 'v': verify_reg_files('roi')
    elif re.search("^[asdir]+", arg):
        if 'a' in arg: tabs.append('aftertexts')
        if 's' in arg: tabs.append('spechelp')
        if 'd' in arg: tabs.append('done rejects')
        if 'r' in arg: tabs.append('readables')
        if 'i' in arg: ignore_nudmis = True
    elif arg.lower()[:2] == 'r=': region_wildcard = arg[2:]
    elif arg.lower()[0] == 'e': err_max = int(arg[1:])
    elif arg == '??': standard_usage()
    elif arg == '?': usage()
    else:
        print("Bad command", arg)
        usage()
    count += 1

if out_to_file: hout = open(houtfile, "w")

if not len(projs): sys.exit("No projects defined. Bailing.")
if not len(tabs): sys.exit("No tables defined. Bailing.")

big_error_count = 0

for q in projs:
    for t in tabs[q]:
        print(">>>>>>>>>>>>>>>>>>>>Sync check for ...", q, t, region_wildcard)
        big_error_count += sync_check(q, t, region_wildcard)

print(big_error_count, "total global error count.")

if out_to_file:
    print("Wrote to", houtfile)
    hout.close()
    if launch_outfile: i7.npo(houtfile)
