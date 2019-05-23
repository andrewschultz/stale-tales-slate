# logsync.py
#
# checks logic.py is synced with the source code
#
# we need a comment for every b-text with a question mark
#
# and of course no comment if b-text has no question mark
#

from collections import defaultdict

import __main__ as main
import i7
import sys
import re
import os

wks = [ 'fails', 'checks out' ]
vowels = 'aeiou'
consonants='bcdfghjklmnpqrstvwxz'

okay = defaultdict(bool)
need_logic = defaultdict(int)
need_source_logic = defaultdict(int)
got_logic = defaultdict(int)
got_logic_invis = defaultdict(int)
got_logic_reds = defaultdict(int)
open_line = defaultdict(int)
sa_flips = defaultdict(str)
sa_trans = defaultdict(str)
sa_ignore = defaultdict(str)
sa_got = defaultdict(bool)
sa_line = defaultdict(int)
aro_flips = defaultdict(str)
aro_trans = defaultdict(str)
aro_ignore = defaultdict(str)
aro_got = defaultdict(bool)
aro_line = defaultdict(int)

logic_invis = "c:\\writing\\scripts\\invis\\rl.txt"
logic_reds = "c:\\writing\\dict\\reds.txt"
scanned = ""
data_file = "logsync.txt"

print_correct_shuf = False

open_after = False
open_first = True

verbose = False

# this is for oddly, badly or privately named items
# note HONESTLY currently has no ?'s in its b-text
abbrevs = defaultdict(str)

aro_settings = [ "a-text ", "b-text ", "parse-text " ]
sa_settings = [ "lgth ", "gpos ", "rpos ", "rgtext ", "cert-text ", "rect-text " ]

def shortcutcheck(x):
    if x in abbrevs: return abbrevs[x]
    return x

def actual_len(q):
    if ',' not in q: return len(q)
    j = q.split(',')
    retval = len(j[0])
    for x in range(1, len(j)):
        if len(j[x]) != retval: sys.exit("Oops inconsistent array", j)
    return retval

def usage():
    print("-a/oa opens code after if there is a mistake to fix.")
    print("-cod/-ncod turns on/off showing code, default = on.")
    print("-cou/-ncou turns on/off showing counts of errors, default = off.")
    print("-ed/de/e edits the data file", data_file)
    exit()

def match_score(my_l, my_a, lc, str):
    retval = 0
    for q in my_a:
        if q in my_l: retval += 1
        if q + "is " in my_l: print("WARNING", str, lc, "should have", q, "of <NAME> and not", q, "is")
    return retval

def read_data_file():
    in_roiling = False
    with open(data_file) as file:
        for (line_count, line) in enumerate(file, 1):
            if line.startswith('#'): continue
            if line.startswith(';'): break
            ll = line.lower().strip()
            if ll.startswith(">ignore="):
                l2 = re.sub(".*=", "", ll)
                if in_roiling: aro_ignore[l2] = True
                else: sa_ignore[l2] = True
                continue
            if ll == "roiling":
                in_roiling = True
                continue
            if ll == "shuffling":
                in_roiling = True
                continue
            if "%" in ll:
                ary = ll.split("%")
                if len(ary) != 2: sys.exit("Bad % at line {:d} -- only one allowed.".format(line_count))
                if in_roiling:
                    aro_flips[ary[0]] = ary[1]
                    aro_flips[ary[1]] = ary[0]
                    aro_line[ary[1]] = aro_line[ary[0]] = line_count
                else:
                    sa_flips[ary[0]] = ary[1]
                    sa_flips[ary[1]] = ary[0]
                    sa_line[ary[1]] = sa_line[ary[0]] = line_count
                continue
            if ">" in ll:
                ary = ll.split(">")
                if "~" in ary[0]:
                    ary2 = ary[0].split("~")
                    abbrevs[ary2[0]] = ary2[1]
                    if in_roiling: aro_trans[ary2[0]] = ary2[1]
                    else: sa_trans[ary2[0]] = ary2[1]
                    temp = ary2[0]
                    space_check = ary2[1]
                else:
                    temp = ary[0]
                    space_check = temp
                if not len(nosp(ary[1])): sys.exit("Uh oh line {:d} {:s} has nothing arrowed-to.".format(line_count, ll))
                if in_roiling:
                    if len(nosp(space_check)) % actual_len(nosp(ary[1])):
                        sys.exit("Uh oh space/multiple mismatch between {:s} and {:s} at line {:d}.".format(temp, ary[1], line_count))
                else:
                    if len(nosp(space_check)) != len(nosp(ary[1])):
                        sys.exit("Uh oh space mismatch between {:s} and {:s} at line {:d}.".format(temp, ary[1], line_count))
                if in_roiling:
                    aro_flips[temp] = ary[1]
                    aro_line[temp] = line_count
                else:
                    sa_flips[temp] = ary[1]
                    sa_line[temp] = line_count
                continue
            ary = ll.split(",")
            if '=' in line:
                ary = ll.split("=")
                abbrevs[ary[0]] = ary[1]
                if ary[0] not in abbrevs: sys.exit("Uh oh to", line.strip())
                else: print("By-itself abbreviation:", line_count, line.strip())
                continue
            ll = line.lower().strip().split(",")
            for x in ll: okay[x] = True

def things_of(q):
    ret_2 = re.sub(" +is .*", "", q)
    ret_2 = re.sub(".* of +", "", ret_2)
    if ret_2 in sa_trans:
        ret_1 = sa_trans[ret_2]
    elif ret_2 in aro_trans:
        ret_1 = aro_trans[ret_2]
    else: ret_1 = ret_2
    ret_3 = nosp(ret_1)
    return (ret_1, ret_2, ret_3)

def val_of(q):
    retval = re.sub(".* is +", "", q)
    if "\"" in retval:
        retval = re.sub("\"", "", retval)
    return retval

def nosp_len(q):
    return len(q)-q.count(" ")-q.count("-")

def nosp(q): return re.sub("['\- ]", "", q)

def parse_brackets(q):
    retval = re.sub("\[ast\]", "", q)
    retval = re.sub("\[d[1-2]\]", "-", retval)
    retval = re.sub("\"", "", retval)
    retval = re.sub("\[rc(n?)\]", "r", retval)
    retval = re.sub("\[gc(n?)\]", "g", retval)
    return retval

def err_print(my_line, my_sent, line_num, proj):
    temp = []
    for q in my_sent:
        if q not in my_line:
            temp.append(q.strip())
    if len(temp): print("WARNING", proj, line_num, "NEEDS SENTENCE{:s}".format('S' if len(temp) > 1 else ""), ", ".join(temp))
    return

#current bugs: LGTH must come first
#also we need to check for if something is a shortening e.g. TREES should be TREES BUTTON
def sa_r_g_check():
    errs = defaultdict(int)
    count = 0
    print("=" * 40, "SHUFFLING")
    with open(s_src) as file:
        for (line_count, line) in enumerate(file, 1):
            ms = match_score(line, sa_settings, line_count, "SA")
            if ms >= 2 and not line.startswith("\t"):
                err_print(line, sa_settings, line_count, "SA")
                sent = re.split("\. *", line.lower().strip())
                skip = False
                global_raw = ""
                for q in sent:
                    if skip: continue
                    if global_raw and my_raw != global_raw: continue
                    if 'lgth of' in q:
                        (my_thing, my_raw, my_nosp) = things_of(q)
                        sa_got[my_raw] = True
                        if my_raw in sa_ignore:
                            skip = True
                            continue
                        if my_raw not in sa_flips:
                            print(my_raw, "not in flips. Skipping line", line_count)
                            skip = True
                            continue
                        my_length = int(val_of(q))
                        global_raw = my_raw
                        if nosp_len(my_thing) == my_length:
                            if print_correct_shuf: print("Length of", my_thing, "is (correctly)", my_length)
                            pass
                        else:
                            errs["length"] += 1
                            print("Length of", my_thing, "should be", nosp_len(my_thing), "but is", my_length)
                        continue
                    if 'gpos of' in q:
                        (my_thing, my_raw, my_nosp) = things_of(q)
                        global_raw = my_raw
                        if my_raw not in sa_flips:
                            count += 1
                            print(count, "Need to define flips for", my_raw, "/", my_thing, "line", line_count)
                            errs["flip define in logsync.txt"] += 1
                            skip = True
                            continue
                        my_pos = int(val_of(q))
                        if my_nosp[my_pos-1] != sa_flips[my_raw][0]:
                            errs["first-letter"] += 1
                            print("GPOS fails for", my_thing, "->", sa_flips[my_raw], "position", my_pos, "is", my_nosp[my_pos-1], "should be", sa_flips[my_raw][0])
                        continue
                    if 'rpos of' in q:
                        (my_thing, my_raw, my_nosp) = things_of(q)
                        global_raw = my_raw
                        if my_raw not in sa_flips:
                            count += 1
                            print(count, "Need to define flips for", my_raw, "/", my_thing, "line", line_count)
                            errs["flip define in logsync.txt"] += 1
                            skip = True
                            continue
                        my_pos = int(val_of(q))
                        # print(my_thing, "letter", my_pos, "is", my_nosp[my_pos-1], "extra", sa_flips[my_raw][-1])
                        if my_nosp[my_pos-1] != sa_flips[my_raw][-1]:
                            errs["last-letter"] += 1
                            print("RPOS fails for", my_thing, "->", sa_flips[my_raw], "position", my_pos, "is", my_nosp[my_pos-1], "should be", sa_flips[my_raw][-1])
                        continue
                    if 'cert-text of' in q:
                        (my_thing, my_raw, my_nosp) = things_of(q)
                        global_raw = my_raw
                        x = parse_brackets(val_of(q))
                        if len(my_nosp) != len(sa_flips[my_raw]):
                            print("CERT-TEXT size violation", my_nosp, len(my_nosp), sa_flips[my_raw], len(sa_flips[my_raw]), line_count)
                            continue
                        if len(my_nosp) != len(x):
                            print("CERT-TEXT size violation", my_nosp, len(my_nosp), x, len(x), line_count)
                            continue
                        for idx in range(0, len(my_nosp)):
                            if my_nosp[idx] != sa_flips[my_raw][idx] and x[idx] != '-':
                                print(my_thing, "to", sa_flips[my_raw], x, "undetected match character", idx, "line", line_count, my_nosp[idx], sa_flips[my_raw][idx], x[idx])
                                errs["cert-text"] += 1
                        continue
                    if 'rect-text of' in q:
                        (my_thing, my_raw, my_nosp) = things_of(q)
                        global_raw = my_raw
                        x = parse_brackets(val_of(q))
                        if len(sa_flips[my_raw]) != len(x[0]):
                            print("RECT-TEXT size violation", x, len(x), sa_flips[raw], len(sa_flips[raw]))
                            continue
                        if sa_flips[my_raw][0] != x[0]:
                            print("First digit of rect-text wrong for", my_thing, "line", line_count, my_nosp, sa_flips[my_raw], x)
                        l = len(my_nosp)
                        if sa_flips[my_raw][l-1] != x[l-1]:
                            print("Last digit of rect-text wrong for", my_thing, "line", line_count, my_nosp, sa_flips[my_raw], x)
                        for idx in range(1, l-1):
                            if x[idx] != '-':
                                print("Digit", idx+1, "should be blanked out for", my_thing, "line", line_count, my_nosp, sa_flips[my_raw], x)
                        continue
                    if 'rgtext of' in q:
                        (my_thing, my_raw, my_nosp) = things_of(q)
                        global_raw = my_raw
                        if my_thing == 'magenta nametag': continue #this is a copout for the only asterisk-clue in the game. Letter 6 is A, but we can't definitively say if that's right or wrong.
                        x = parse_brackets(val_of(q))
                        if 'else' in x:
                            print("Bad value", val_of(q), "for", my_thing)
                            continue
                        if len(x) != len(my_nosp):
                            print(val_of(q), x, "has bad length for", my_thing, "line", line_count, len(x), len(my_nosp))
                            continue
                        if len(sa_flips[my_raw]) != len(my_nosp):
                            print(val_of(q), x, "has bad length for", sa_flips[my_raw], "line", line_count)
                            continue
                        for idx in range(0, len(x)-1):
                            if x[idx] == 'r':
                                if my_nosp[idx] == sa_flips[my_raw][idx]:
                                    print("False red at line", line_count, "for", my_thing, "character", idx+1, my_thing[idx], sa_flips[my_raw], x)
                            elif x[idx] == 'g':
                                if my_nosp[idx] != sa_flips[my_raw][idx]:
                                    print("False green at line", line_count, "for", my_thing, "character", idx+1, my_thing[idx], sa_flips[my_raw], x)
                            else:
                                print("Line", line_count, "has a bad character", x[idx], "at position", idx)
                if global_raw and my_raw != global_raw:
                    print("WARNING code rewrite of", global_raw, "to", my_thing, "at line", line_count)
    if len(errs):
        for x in sorted(errs, key=errs.get):
            print('SHUFFLING:', x, "had", errs[x], "error{:s}".format(i7.plur(errs[x])))
    else:
        print("I found no errors in the hinting source for Shuffling! Hooray!")
    flip_miss = [x for x in sa_flips if x not in sa_got]
    if len(flip_miss):
        print("Flips from logsync.txt to SA source missed:", ', '.join(flip_miss))
    else:
        print("No SA flips missed.")

def settler_read(ltr, ma, mi):
    if ma and mi: return "?"
    if ltr == 'y':
        if ma: return 'b'
        if mi: return 'o'
    if ltr in vowels:
        if ma: return 'g'
        if mi: return 'y'
    if ltr in consonants:
        if ma: return 'p'
        if mi: return 'r'
    return "!"

def aro_settler_check():
    count = 0
    b_count = 0
    desc_count = 0
    with open(r_src) as file:
        for (line_count, line) in enumerate(file, 1):
            skip = False
            if 'boringscen' in line and 'description of' not in line:
                l1 = re.sub(" (is|are).*", "", line.lower().strip())
                l1 = re.sub(" \..*", "", l1)
                desc_count += 1
                print('{:02d} "description of {:s}" needed at line {:d} and not just quoted text for description. {:s}'.format(desc_count, l1, line_count, "<description is>" if 'description is' in line else ''))
            ms = match_score(line, aro_settings, line_count, "ARO")
            if ms >= 2 and not line.startswith("\t"):
                global_raw = ""
                err_print(line, aro_settings, line_count, "ARO")
                if 'parse-text' not in line:
                    print("WARNING need to fill in parse-text in line", line_count)
                elif 'parse-text of' not in line:
                    pass
                    #print("CODE PEDANTRY fill in object name after parse-text in line", line_count)
                sent = re.split("\. *", line.lower().strip())
                for q in sent:
                    if 'a-text' in q:
                        (my_thing, my_raw, my_nosp) = things_of(q)
                        if global_raw and my_raw != global_raw: continue
                        global_raw = my_raw
                        if my_thing in aro_ignore:
                            skip = True
                            break
                        aro_got[my_raw] = True
                        if my_raw not in aro_flips:
                            count += 1
                            print("#", count, "Need logsync.txt entry for what", my_raw + ("/{:s}".format(my_thing) if my_raw in aro_trans else ""), "should become at line", line_count)
                            if count >= 25: sys.exit()
                            skip = True
                            break
                            continue
                        aro_got[my_raw] = True
                        v = val_of(q)
                        vary = aro_flips[my_raw].split(",")
                        if len(vary) == 1: continue
                        lf = len(vary[0])
                        sp = [0] * lf
                        co = [0] * lf
                        vo = [0] * lf
                        ys = [0] * lf
                        for wd in vary:
                            for idx in range(0, lf - 1):
                                if wd[idx] == ' ': sp[idx] = 1
                                if wd[idx] in vowels: vo[idx] = 1
                                if wd[idx] in consonants: co[idx] = 1
                                if wd[idx] == 'y': ys[idx] = 1
                        for idx in range(0, lf - 1):
                            if sp[idx] + vo[idx] + co[idx] + ys[idx] > 1:
                                if v[idx] != '?': print("Need * at slot", idx+1, "at line", line_count, "/", aro_line[my_raw], "for", my_thing, ">", aro_flips[my_raw])
                            elif sp[idx]:
                                if v[idx] != '*': print("Need * at slot", idx+1, "at line", line_count, "/", aro_line[my_raw], "for", my_thing, ">", aro_flips[my_raw])
                            elif co[idx]:
                                if v[idx] != 'r': print("Need R at slot", idx+1, "at line", line_count, "/", aro_line[my_raw], "for", my_thing, ">", aro_flips[my_raw])
                            elif vo[idx]:
                                if v[idx] != 'y': print("Need Y at slot", idx+1, "at line", line_count, "/", aro_line[my_raw], "for", my_thing, ">", aro_flips[my_raw])
                            elif ys[idx]:
                                if v[idx] != 'o': print("Need O at slot", idx+1, "at line", line_count, "/", aro_line[my_raw], "for", my_thing, ">", aro_flips[my_raw])
                    if 'b-text' in q:
                        (my_thing, my_raw, my_nosp) = things_of(q)
                        if global_raw and my_raw != global_raw: continue
                        global_raw = my_raw
                        if my_thing in aro_ignore:
                            skip = True
                            break
                        aro_got[my_raw] = True
                        sol = nosp(aro_flips[my_raw])
                        v = val_of(q)
                        v = re.sub("\*", "", v)
                        sary = sol.split(",")
                        lf = len(sary[0])
                        if 'else' in v:
                            print("TRICKY STUFF 'else' is in the quoted b-value. Fix this with an IGNORE and commented code to check fully.")
                            continue
                        temp = 0
                        wary = []
                        matches = [0] * len(v)
                        mismatches = [0] * len(v)
                        if my_raw in aro_trans:
                            chop_string = nosp(aro_trans[my_raw])
                        else: chop_string = nosp(my_thing)
                        while temp < len(chop_string):
                            wary.append(chop_string[temp:temp+len(v)])
                            temp += len(v)
                        # print(my_thing, wary, aro_flips[my_raw])
                        sp = [0] * lf
                        co = [0] * lf
                        vo = [0] * lf
                        ys = [0] * lf
                        for s in sary:
                            for y in range (0, lf):
                                if s[y] in vowels: vo[y] = 1
                                elif s[y] in consonants: co[y] = 1
                                elif s[y] == 'y': ys[y] = 1
                                else: sys.exit("Uh oh " + s + " has a bad character.")
                        for x in wary:
                            for s in sary:
                                for y in range (0, lf):
                                    if x[y] == s[y]: matches[y] = 1
                                    else: mismatches[y] = 1
                        the_string = ""
                        for y in range(0, lf):
                            if vo[y] + co[y] + ys[y] > 1: the_string += "?"
                            elif mismatches[y] and matches[y]: the_string += "?"
                            elif vo[y]: the_string += "g" if matches[y] else "y"
                            elif co[y]: the_string += "p" if matches[y] else "r"
                            elif ys[y]: the_string += "b" if matches[y] else "o"
                            else: sys.exit("Uh oh couldn't find anything to add to " + s + " of " + ','.join(sary))
                        if v != the_string:
                            b_count += 1
                            print(b_count, "Uh oh line", line_count, my_thing, "->", sol, "had", v, "as the given b-text but should have", the_string)
                    if 'parse-text' is q:
                        if global_raw and my_raw != global_raw: continue
                        global_raw = my_raw
                if global_raw and my_raw != global_raw:
                    print("WARNING code rewrite of", global_raw, "to", my_thing, "at line", line_count)
    flip_miss = [x for x in aro_flips if x not in aro_got]
    if len(flip_miss):
        print("Flips from logsync.txt to ARO source missed:", ', '.join(flip_miss))
    else:
        print("No ARO flips missed.")

def check_aftertexts():
    markedokay = 0
    mayneedsource = 0
    mayneedaftertext = 0
    reading_header = False
    in_table = False
    in_aftertexts = defaultdict(int)
    sug_text = defaultdict(str)
    suggestions = []
    with open(r_src) as file:
        for (line_count, line) in enumerate(file, 1):
            if reading_header:
                in_table = True
                reading_header = False
                continue
            if line.startswith('table of aftertexts'):
                reading_header = True
                continue
            if not in_table: continue
            if not line.strip(): break
            line = re.sub("[ \t]*\[[^\[]*\]$", "", line.strip())
            ll = re.split("\t+", line)
            l0 = ll[0].lower()
            in_aftertexts[l0] = line_count
            if len(ll) > 1 and len(ll) != 6: sys.exit("Uh oh, bad # of tabs at line {:d}: {:s}".format(line_count, line))
            elif len(ll) == 1:
                print("WARNING need to add full row for line", line_count, "in", os.path.basename(r_src), ":", l0)
                open_line[r_src] = line_count
            if len(ll) >= 5: sug_text[l0] = ll[5] # I have some filler entries where generic opt-out hints pop up
            if l0 not in need_source_logic.keys():
                if l0 not in okay.keys() and l0 not in abbrevs.values():
                    suggestions.append("{:s} may be superfluous aftertext at line {:d}".format(l0, line_count))
                    mayneedsource += 1
                #print(ll[5])
            else:
                if verbose: print("Got", ll[0], "in aftertexts.")
    if len(suggestions): print("\n".join(sorted(suggestions)))
    for x in sorted(need_source_logic.keys()):
        if x not in in_aftertexts.keys() and x not in abbrevs.keys():
            print("May need", x, "in aftertexts table.")
            mayneedaftertext += 1
    for x in okay.keys():
        if x not in in_aftertexts.keys():
            print(x, "marked as okay for table of aftertexts but doesn't appear there.")
            markedokay += 1
    if mayneedaftertext + mayneedsource + markedokay: print("May need", mayneedaftertext, "aftertext and", mayneedsource, "source and may've wrongly marked", markedokay)

def check_logic_file(needs, gots, outs, format_string, file_desc, launch_message = "", other_test = True):
    print("=" * 40, "Checking", outs)
    # for x in needs.keys(): print (x, needs[x], gots[x])
    t2 = [x for x in needs.keys() if x not in gots.keys()]
    need_in_logic = 0
    if len(t2):
        for y in sorted(t2, key=needs.get):
            need_in_logic = need_in_logic + 1
            if show_count:
                print(need_in_logic, y, "is in the source line", need_logic[y], "but needs to be commented in", file_desc)
            if show_code:
                print(format_string.format(y))
    t3 = sorted([x for x in gots.keys() if x not in needs.keys()], key=gots.get)
    need_in_source = 0
    if len(t3):
        for y in sorted(t3, key=gots.get):
            need_in_source = need_in_source + 1
            print(need_in_source, y, "is commented in {:s} file line".format(outs), gots[y] ,"but is not in the source.")
    if need_in_logic + need_in_source > 0 and other_test:
        print("TEST FAILED:", need_in_logic, file_desc, "comments needed ({:s}),".format(outs), need_in_source, "source file definitions needed.")
        if launch_message: print(launch_message)
    else:
        print("TEST SUCCEEDED:", file_desc, "comments match source definitions exactly.")
    extraneous = list(set(gots) - set(needs))
    if len(extraneous):
        if data_file not in open_line:
            open_line[logic_reds] = gots[min(extraneous, key=gots.get)]
        print("Extraneous elements found in {:s}:".format(os.path.basename(outs)), ', '.join(["{:s}-{:d}".format(x, gots[x]) for x in extraneous]))

show_count = False
show_code = True

force_next = False

r_src = i7.src("roiling")
s_src = i7.src("shuffling")

arg_count = 1

while arg_count < len(sys.argv):
    x = sys.argv[arg_count].lower()
    if x[0] == '-':
        x = x[1:]
    if x == 'cod': show_code = True
    elif x == 'ncod': show_code = False
    elif x == 'cou': show_count = True
    elif x == 'ncou': show_count = False
    elif x == 'se' or x == 'es':
        i7.npo(main.__file__)
        exit()
    elif x == 'ed' or x == 'de' or x == 'e':
        os.system(data_file)
        exit()
    elif x == 'a' or x == 'oa': open_after = True
    elif x == 'af' or x == 'oaf':
        open_after = True
        open_first = True
    elif x == 'al' or x == 'oal':
        open_after = True
        open_first = False
    elif x == '?' or x == '-?': usage()
    else:
        print("Unknown flag", x)
        usage()
    arg_count = arg_count + 1

i7.go_proj("roiling")
read_data_file()

with open(r_src) as file:
    for (line_count, line) in enumerate(file, 1):
        if 'logsync.py force next' in line:
            force_next = True
            continue
        if force_next or ('a-text' in line and 'b-text' in line):
            if 'parse-text' not in line and not line.startswith("\t"):
                print("NEED PARSE-TEXT:", line.strip())
                if force_next: print("Burned a force_next at line", line_count)
                force_next = False
                continue
            if re.search("b-text.*\?.*parse-text", line) or force_next:
                if re.search("is a mack-idea", line):
                    scanned = re.sub(" is a mack-idea.*", "", line.strip().lower())
                else:
                    scanned = re.sub(" is \".*", "", line.strip().lower())
                    scanned = re.sub("a-text of ", "", scanned)
                need_source_logic[scanned] = line_count
                if scanned.startswith("t-") and 'ly' in scanned: scanned = scanned[2:]
                # print(scanned, "/", shortcutcheck(scanned), "/", line_count)
                need_logic[shortcutcheck(scanned)] = line_count
                force_next = False

with open(i7.sdir("roiling") + "/logic.htm") as file:
    for (line_count, line) in enumerate(file, 1):
        if '<!--' in line and '-->' in line and 'logic for' in line:
            scanned = re.sub(".*logic for ", "", line.strip().lower())
            scanned = re.sub("( )?-->.*", "", scanned)
            if scanned in got_logic.keys():
                print("Duplicate logic-for in logic.htm:", scanned, "line", line_count, "originally", got_logic[scanned])
            else:
                got_logic[shortcutcheck(scanned)] = line_count


count = 0
last_comment = False
hunt_for_comments = False

last_comment_line = 0
last_question_line = 0

with open(logic_invis) as file:
    for (line_count, line) in enumerate(file, 1):
        if 'STORE P' in line:
            hunt_for_comments = True
        ll = line.lower().strip()
        if ll.startswith('?'):
            if hunt_for_comments and last_question_line > last_comment_line:
                print("RL.TXT Line", line_count, "may be two questions in a row. Last question =", last_question_line, "Last comment = ", last_comment_line)
            last_question_line = line_count
        if ll.startswith("# logic for ") or ll.startswith("#logic for"):
            scanned = re.sub("^# ?logic for ", "", ll)
            if scanned in got_logic_invis.keys():
                print("Duplicate logic-for in rl.txt:", scanned, "line", line_count, "originally", got_logic_invis[scanned])
            else:
                got_logic_invis[scanned] = line_count
            got_logic_invis[scanned] = line_count
            if last_comment_line > last_question_line:
                print("RL.TXT Two logic-for comments in a row without a question:", last_comment_line, line_count, ll)
            last_comment_line = line_count
        last_comment = ll.startswith("#")

with open(logic_reds) as file:
    qm_needed = 0
    need_question_mark = 0
    last_qver = ""
    for (line_count, line) in enumerate(file, 1):
        ll = line.lower().strip()
        if re.search("#qver (of|for) ", ll):
            if need_question_mark:
                print("REDS.TXT: Need question mark in settler results before line", line_count, "to cover last #qver ({:s})".format(last_qver), "at line", need_question_mark)
                if logic_reds not in open_line.keys() or not open_first: open_line[logic_reds] = line_count
                qm_needed += 1
            scanned = re.sub("#qver (of|for) ", "", ll)
            scanned = re.sub("~.*", "", scanned)
            if 'qver for' in ll: print("WARNING line", line_count, "qver of = preferred for", ll)
            last_qver = scanned
            if scanned in got_logic_reds.keys(): print("WARNING line", line_count, "duplicates", scanned)
            got_logic_reds[scanned] = line_count
            need_question_mark = line_count
        elif '?' in ll or 'qver ignore' in ll or 'qver-ignore' in ll: need_question_mark = 0

# check_aftertexts()

check_logic_file(need_logic, got_logic, "logic.htm", "<!-- logic for {:s} -->", "old HTML", launch_message = "lh.bat")
check_logic_file(need_logic, got_logic_invis, "c:\\writing\\scripts\\invis\\rl.txt", "# logic for {:s}", "raw InvisiClues", launch_message = "invis.pl rl e")
check_logic_file(need_logic, got_logic_reds, logic_reds, "#qver of {:s}", "reds.txt verification, {:d} question mark{:s} needed".format(qm_needed, i7.plur(qm_needed)), other_test = (qm_needed > 0), launch_message = "reds.txt")

aro_settler_check()
sa_r_g_check()

if open_after:
    for q in open_line.keys():
        i7.npo(q, open_line[q], bail = False)
    if not len(open_line.keys()): print("Nothing to open. Everything worked.")
    exit()
elif len(open_line):
    print("You could open automatically with the -a or -oa flag.")
