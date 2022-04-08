# hch.py
#
# help check e.g. check good guesses for rejects show up
#
# this looks for a table named, say, XYZ, then looks for #xyz in a glob of test files
#
# todo: check for rules as well. They should always go in MAX.
#
# todo: table of towers anagrams could maybe have branch name or names. Check the config file for that.
#
# todo: check for errant scannotes test

from collections import defaultdict
import os
import re
import glob
import i7
import sys
import mytools as mt
import time

date_warn_yet = False
warn_dates = True
debug = False
ignore_nudmis = False
print_details = False
super_quiet = False
err_max = 0
quiet = 0

valids = defaultdict(list)
valids_reverse = defaultdict(str)

sync_detail = defaultdict(str)

rbr_warn = defaultdict(int)

slider_tracking = defaultdict(lambda: defaultdict(str))

region_wildcard = ""

show_wrongs = False
wrong_count = 0

out_to_file = False
launch_outfile = False
houtfile = "hch_out.txt"
process_regs = False

big_error_count = 0
misplaced_error_count = 0

rbr_lines_to_edit = []

with open("c:/games/inform/roiling.inform/source/hch.txt") as file:
    for (line_count, line) in enumerate (file, 1):
        if line.startswith('#'): continue
        if line.startswith(';'): break
        (prefix, data) = mt.cfg_data_split(line)
        if prefix == 'slider':
            ary = data.split(',')
            for x in ary[1:]:
                if x.split():
                    slider_tracking[ary[0]][x] = False
        elif prefix == 'regfile':
            ary1 = data.split('=')
            try:
                for comment in ary1[1].split(','):
                    valids[ary1[0]] = comment
                    valids_reverse[comment] = ary1[0]
                    valids_reverse['re' + comment] = ary1[0]
            except:
                sys.exit("Need = after REGTEST line {} in hch.txt.".format(line_count))
        else:
            print("WARNING bad prefix {} at line {}.".format(prefix, line_count))

def standard_usage():
    print("[asdi]* = aftertexts, spechelp, done rejects / i = ignore 'nudmis' files, only look at RBR generators.")
    print("hch.py 1 si e50 = print 50 maximum errors from shuffling (1) ignoring NUDMIS (nudge/miss) output file testing")
    print("hch.py rb 2 a e50 o = print 50 maximum errors from roiling (2) only the aftertexts (e.g. what they say after) and sends to output. Also run RBR.PY before.")
    exit()

def usage():
    print("1/2 = sa or roiling only")
    print("[asdi]* = aftertexts, spechelp, done rejects / i = ignore 'nudmis' files, only look at RBR generators.")
    print("w nw wn = switch on/off WRONG notifications")
    print("rb = run RBR before. Useful when wiping out bugs one at a time.")
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

def match_slider_tests():
    global rbr_lines_to_edit
    i7.go_proj('roi')
    fi = i7.hdr('roi', 'ta')
    fi2 = i7.hdr('roi', 'nu')
    regions = [ 'ordeal reload' ]

    in_header = False
    in_table = False
    need_cmd = False
    with open(fi) as file:
        for (line_count, line) in enumerate(file, 1):
            ll = line.lower().strip()
            if ll.startswith('table') and 'anagrams' in ll:
                table_name = re.sub(" anagrams.*", "", ll)
                table_name = re.sub("^table of +", "", table_name)
                in_header = True
                in_table = True
                continue
            if in_header:
                in_header = False
                continue
            if in_table and not ll:
                in_table = False
                continue
            if not in_table: continue
            ary = ll.lower().split("\t")
            string_to_slide = ary[5].replace('"', '').strip()
            slider_tracking[table_name][string_to_slide] = False
    aux_sect = ""
    with open(fi2) as file:
        for (line_count, line) in enumerate(file, 1):
            ll = line.lower().strip()
            if ll.startswith("book"):
                ary = ll.split(' ')
                aux_sect = ary[1]
            if '[slider test ' in ll:
                string_to_slide = re.sub(".*slider test ", "", ll)
                string_to_slide = re.sub("\]", "", string_to_slide)
                if not aux_sect: sys.exit(ll)
                slider_tracking[aux_sect][string_to_slide] = False
    for x in slider_tracking:
        file_name = "reg-roi-{}-slider.txt".format(x.replace(' ', '-'))
        with open(file_name) as file:
            for (line_count, line) in enumerate(file, 1):
                ll = line.lower().strip()
                if need_cmd:
                    if ll.startswith("#"):
                        pass
                    elif not ll.startswith(">"):
                        print("WARNING slider test untested line", line_count, "file", file_name)
                    else:
                        need_cmd = False
                if ll.startswith("#slider test for "):
                    need_cmd = True
                    temp = re.sub(".* test for +", "", ll)
                    if temp not in slider_tracking[x]:
                        print(line_count, file_name, "Bad slider comment test", temp, "... name may need editing")
                        rbr_lines_to_edit.append(line)
                    elif slider_tracking[x][temp]:
                        print(line_count, file_name, "Duplicate slider comment test", temp)
                    else:
                        slider_tracking[x][temp] = True
                elif ll.startswith("#rslider test for "):
                    temp = re.sub(".* test for +", "", ll)
                    if temp not in slider_tracking[x]:
                        print(line_count, file_name, "Bad reslider comment test", temp)
                        rbr_lines_to_edit.append(line)
                    elif not slider_tracking[x][temp]:
                        print(line_count, file_name, "Reslider comment without slider test", temp)
                        rbr_lines_to_edit.append(line)
        for y in slider_tracking[x]:
            if y == 'lamp' or y == 'satchel': continue # kludge for now
            if not slider_tracking[x][y]:
                print("Did not find", y, "/", "#slider test for", y, "in target file", file_name, "... you may wish to amak.py", y)

def verify_reg_files(my_proj):
    i7.go_proj(my_proj)
    x = glob.glob("reg-{}*.txt".format(my_proj))
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
        need_cmd = False
        with open(fi) as file:
            for (line_count, line) in enumerate(file, 1):
                if line.startswith(">"):
                    need_cmd = False
                if not line.startswith('#'): continue
                for y in flaggable:
                    if line[1:].lower().startswith(y):
                        if y not in valids[cat]:
                            if not loc:
                                print("INVALID COMMENT(S) FOR {}:".format(fb))
                            loc += 1
                            glo += 1
                            print("    {}/{} line {}: {}".format(loc, glo, line_count, line.strip()))
                        if need_cmd:
                            print("Two test comments in a row without a command", fi, line_count)
                        need_cmd = True
                if line.startswith("#mistake"):
                    if need_cmd:
                        print("Two test comments in a row without a command", fi, line_count)
                    need_cmd = True
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

def rbr_of(loc_proj, x):
    x = x.replace("lone-", "")
    ary = os.path.basename(x).split('-')
    the_name = '-'.join(ary[2:-1])
    return "rbr-{}-{}.txt".format(loc_proj, the_name)

def catch_bad_reg(p):
    i7.go_proj(p)
    reg_pattern = "reg-*.txt"
    global misplaced_error_count
    for x in glob.glob(reg_pattern):
        if 'sa-thru' in x: continue
        with open(x) as file:
            for (line_count, line) in enumerate(file, 1):
                if not line.startswith('#'): continue
                ll = line.lower().strip()
                if ll.startswith("#re"): ll = ll[3:]
                if ll.startswith("#"): ll = ll[1:]
                for y in valids_reverse:
                    if ll.startswith(y) and valids_reverse[y] not in x:
                        print("Misplaced test case", x, line_count, line.lower().strip(), "... maybe put this in another section")
                        misplaced_error_count += 1
                if 'hints' not in x and ll.startswith("DEBUG INFO") and "objhinting" in ll:
                    print("Erroneous hint check", x, line_count, line.lower().strip())

def find_in_glob(sync_stuff, pattern, loc_proj, b, region, details, extras = []):
    for_pattern = "for pattern {} in {}.".format(pattern, b)
    got_sync_yet = defaultdict(str)
    errs = 0
    err_string = 'donereject' if pattern == 'done rejects' else ''
    last_line = 0
    wrong_count = 0
    for x in glob.glob(pattern) + extras:
        if not os.path.exists(x):
            print("WARNING skipping {} which doesn't seem to exist.".format(x))
        if x.startswith("reg-"):
            rox = rbr_of(loc_proj, x)
            if not os.path.exists(rox):
                if "-general" not in rox:
                    print("WARNING no rbr file for", x)
                continue
            if mt.last_mod(rox) > mt.last_mod(x):
                if warn_dates and rox not in rbr_warn:
                    print("WARNING", rox, "modified after", x, time.strftime('%Y-%m-%d %H:%M:%S', time.localtime(mt.last_mod(rox))), "vs", time.strftime('%Y-%m-%d %H:%M:%S', time.localtime(mt.last_mod(x))))
                    global date_warn_yet
                    if not date_warn_yet:
                        print("    (Turn off date warning with -nwd/-ndw--this may throw false positives if the main file *meant* to tweak just one sub-file)")
                        date_warn_yet = True
                rbr_warn[rox] += 1
        with open(x) as file:
            if not quiet: print("Checking", x)
            for (line_count, line) in enumerate(file, 1):
                lb = line.lower().strip()
                if lb.startswith("{"):
                    lb = re.sub("^.*?\}", "", lb)
                for ll in lb.split("\\\\"):
                    if show_wrongs and line.startswith("WRONG"):
                        wrong_count += 1
                        print("WRONG #", wrong_count, "needs to be replaced at", x, "line", line_count)
                        mt.add_open(x, line_count, priority = 4)
                        continue
                    if ll.startswith('#done reject '):
                        print('PEDANTIC WARNING you want done rejectS to test', no_of_for(line), 'at', x, 'line', line_count)
                        mt.add_open(x, line_count, priority = 4)
                        continue
                    if ll.startswith('#donereject'):
                        print('PEDANTIC WARNING you want done rejectS (with a space) to test', no_of_for(line), 'at', x, 'line', line_count)
                        mt.add_open(x, line_count, priority = 4)
                        continue
                    if ll.startswith('#' + b + ' of '):
                        print('PEDANTIC WARNING you want', b, 'FOR, not', b, 'OF, to test', no_of_for(line), 'at', x, 'line', line_count)
                        mt.add_open(x, line_count, priority = 4)
                        continue
                    if ll.startswith('#re' + b + ' for '):
                        l = re.sub("#re{:s} for ".format(b), "", ll)
                        if l not in sync_stuff.keys():
                            if not region or region in x:
                                if err_max == 0 or errs <= err_max: print('(RETEST)', l, "is invalid", b, "in file", x, "at line", line_count, for_pattern)
                                errs += 1
                                mt.add_open(x, line_count)
                        elif l not in got_sync_yet.keys():
                            if not region or region in x:
                                if err_max == 0 or errs <= err_max: print(l, "is retest without test", b, "in file", x, "at line", line_count, for_pattern, "duplicating", got_sync_yet[l])
                                errs += 1
                                mt.add_open(x, line_count)
                    if ll.startswith('#' + b + ' for '):
                        l = re.sub("#{:s} for ".format(b), "", ll)
                        if l not in sync_stuff.keys():
                            if not region or region in x:
                                if err_max == 0 or errs <= err_max: print(l, "is invalid", b, "in file", x, "at line", line_count, for_pattern)
                                errs += 1
                                mt.add_open(x, line_count)
                        elif l in got_sync_yet.keys():
                            if not region or region in x:
                                if err_max == 0 or errs <= err_max: print(l, "is duplicated", b, "in file", x, "at line", line_count, for_pattern, "duplicating", got_sync_yet[l])
                                errs += 1
                                mt.add_open(x, line_count)
                        else:
                            got_sync_yet[l] = "{:s} line {:d}".format(x, line_count)
                            # print(l, got_sync_yet[l])
                    elif err_string and err_string in line:
                        print("Common typo flagged for", pattern, "at line", line_count, line.strip())
                        mt.add_open(x, line_count, priority = 4)
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
                if out_to_file: hout.write("#{:s} for {:s}\n>{:s}\n{:s}\n\n".format(b, q, 'read ' + q if b == 'readables' else 'scan ' + q if b == 'scannotes' else lastrev(q), sync_detail[q]))
            elif err_max and errs == err_max + 1: print("Too many errors. Increase with -e##.")
            last_line = sync_stuff[q]
        if q not in sync_stuff.keys():
            errs += 1
            if err_max == 0 or errs <= err_max:
                print(pattern, ':', q, "in", pattern, sync_stuff[q], "but not in table of", b, '*jump' if sync_stuff[q] - last_line > 1 and last_line else '')
            last_line = sync_stuff[q]
    if not super_quiet: print (errs if errs else "No", "errors found", for_pattern)
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
        fb = os.path.basename(fi)
        with open(fi) as file:
            for (line_count, line) in enumerate(file, 1):
                if line.startswith('table of') and b in line.lower():
                    in_syncable_table = True
                    ever_syncable_table = True
                    reading_header = '(continued)' not in line
                    if not super_quiet: print("Started", line.strip(), "at line", line_count, "file", os.path.basename(fi))
                    continue
                if not in_syncable_table: continue
                if reading_header:
                    reading_header = False
                    continue
                if not line.strip() or "\t" not in line:
                    in_syncable_table = False
                    continue
                ary = line.strip().split("\t")
                ary[0] = ary[0].lower()
                if ary[0] in needs_sync_test.keys(): sys.exit("{} duplication ({:s}): {:s} already defined at {:s} line {:d}, redefined at line {:d}.".format(fb, b, ary[0], fb, needs_sync_test[ary[0]], line_count))
                needs_sync_test[ary[0]] = line_count
                sync_detail[ary[0]] = noquo(ary[detail_column])
                if debug: print(ary[0])
    if not ever_syncable_table:
        print(a, "/", b, "was not found in main source or table header.")
        return 0
    rbr_find = "rbr-*"
    ret_val = find_in_glob(needs_sync_test, rbr_find, a, b, region, sync_detail, []) # formerly ["reg-roi-seed.txt"] if os.path.exists("reg-roi-seed.txt") else [] until I moved that to RBRs. Included this comment for posterity if we need to use this again.
    if b not in valids_reverse:
        print("WARNING {} not in valids_reverse in hch.txt.")
        return ret_val
    if process_regs:
        reg_find = "*-{}*".format(valids_reverse[b])
        ret_val += find_in_glob(needs_sync_test, reg_find, a, b, region, sync_detail, [])
    #if not ignore_nudmis: ret_val += find_in_glob(needs_sync_test, reg_find, a, b, region, sync_detail)
    return ret_val

projs = ['sa', 'roi']
tabs = { 'sa' : ['spechelp', 'done rejects', 'readables'],
  'roi': ['scannotes', 'spechelp', 'done rejects', 'readables', 'towers anagrams']
}

cols = { 'scannotes': 5 }

count = 1
verify_roi = False
verify_sa = False
rbr_before = False

while count < len(sys.argv):
    arg = sys.argv[count]
    if arg[0] == '-': arg = arg[1:]
    if arg == '1' or arg == 'sa': projs = ['sa']
    elif arg == '2' or arg == 'roi' or arg == 'ro' or arg == 'r':
        if projs == [ 'roi' ]:
            print("WARNING: You may have wanted RB instead of R, to run RBR.")
        projs = ['roi']
    elif arg == 'q': quiet = True
    elif arg == 'sq' or arg == 'qs' or arg == 'qq': super_quiet = quiet = True
    elif arg == 'rb' or arg == 'br': rbr_before = True
    elif arg == 'o': out_to_file = True
    elif arg == 'w': show_wrongs = True
    elif arg == 'nw' or arg == 'wn': show_wrongs = False
    elif arg == 'pd' or arg == 'dp': print_details = True
    elif arg == 'npd' or arg == 'ndp' or arg == 'pdn' or arg == 'dpn': print_details = False
    elif arg == 'lo' or arg == 'ol': out_to_file = launch_outfile = True
    elif arg == 'nq' or arg == 'qb': quiet = False
    elif arg == 'i': ignore_nudmis = True
    elif arg == 'v': verify_roi = verify_sa = True
    elif arg == 'rv' or arg == 'vr': verify_roi = True
    elif arg == 'sv' or arg == 'vs': verify_sa = True
    elif arg == 'wd' or arg == 'dw': warn_dates = True
    elif mt.alpha_match('dwn', arg): warn_dates = False
    elif arg == 'rp' or arg == 'pr': process_regs = True
    elif mt.alpha_match('nrp', arg): process_regs = False
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

if rbr_before: os.system("rbr.py")

for p in projs:
    catch_bad_reg(p)

if verify_roi or verify_sa:
    if verify_roi: verify_reg_files('roi')
    if verify_sa: verify_reg_files('sa')
    sys.exit()

if out_to_file: hout = open(houtfile, "w")

if not len(projs): sys.exit("No projects defined. Bailing.")
if not len(tabs): sys.exit("No tables defined. Bailing.")

for q in projs:
    for t in tabs[q]:
        if not super_quiet: print(">>>>>>>>>>>>>>>>>>>>Sync check for ...", q, t, region_wildcard)
        big_error_count += sync_check(q, t, region_wildcard)
    if q == 'roi':
        match_slider_tests()

if big_error_count or misplaced_error_count:
    print(big_error_count, "total global error count.")
    print(misplaced_error_count, "misplaced test case error count.")
else:
    print("No missing or misplaced test cases.")

if big_error_count and not print_details:
    print("NOTE: if you want to add code, print_details can be set to TRUE with -pd/-dp.")

if not big_error_count and not process_regs:
    print("NOTE: -pr will process reg-* files and not just rbr")

if rbr_lines_to_edit:
    rbr_wants = defaultdict(bool)
    for r in rbr_lines_to_edit:
        rbr_wants[r] = False
    for x in glob.glob("c:/games/inform/roiling.inform/source/rbr*.txt"):
        xb = os.path.basename(x)
        with open(x) as file:
            for (line_count, line) in enumerate(file, 1):
                for r in rbr_lines_to_edit:
                    if r == line:
                        print("Found original", xb, line_count, "for", r.strip())
                        mt.add_postopen_file_line(x, line_count)
                        rbr_wants[line] = True
    for r in rbr_wants:
        if not rbr_wants[r]:
            print("Not able to find original line for", r.strip())

mt.postopen_files()

if out_to_file:
    print("Wrote to", houtfile)
    hout.close()
    if launch_outfile: i7.npo(houtfile)
