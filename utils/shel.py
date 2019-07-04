#
# shel.py
#
# table of spechelp/table of anagrams comparator
#
# probably does not need any parameters but just in case you want to run just one, you can:
#
# shel.py (r) (s)
#

from collections import defaultdict
import re
import i7
import sys

ok_dupe = defaultdict(lambda: defaultdict(int))
ok_dupe = { 'roi':
    {
    'ye hoop': 1,
    'tunes': 1,
    'trim socks': 1,
    'coins': 3
    },
  'sa':
    {
    'oils': 1, #shuffling
    'chain links': 1
    }
  }

ignore = ['marble blamer mr beal']
comp_dir = defaultdict(lambda: defaultdict(str))

# functions below

def count_difs(from_d, to_d, msg):
    ''' counts the differences between the anagram tables and the spechelp tables
    It ignores specific items and the t- (macks' ideas) '''
    count = 0
    part_count = 0
    for x in comp_dir[from_d]:
        if x not in comp_dir[to_d]:
            if x in ignore: continue
            if x.startswith("t-"): continue #mack ideas are treated generically
            got_short_long = False
            for y in comp_dir[to_d]:
                if x in y and re.search(r'\b{:s}\b'.format(x), y):
                    part_count += 1
                    print("<PARTIAL {:d}>".format(part_count), x, "from", comp_dir[from_d][x].upper(), "is part of", y, "from", comp_dir[to_d][y].upper())
                    got_short_long = True
                    break
                elif y in x and re.search(r'\b{:s}\b'.format(y), x):
                    part_count += 1
                    print("<PARTIAL {:d}>".format(part_count), y, "from", comp_dir[to_d][y].upper(), "is part of", x, "from", comp_dir[from_d][x].upper())
                    got_short_long = True
                    break
            if not got_short_long:
                count += 1
                print(count, msg.format(x))
    print("==============FINAL STATS", count, "misses", part_count, "partial misses.")

def table_ext(nam):
    '''in case of bad input, we tack on "table of " to the start of table names'''
    if nam.startswith("table of "): return nam
    return "table of " + nam.strip()

def scrape_stuff_from(table_names, dict_name, col_number, hdr_abb):
    '''given a list of table names and a file, we scrape the first column from that file for each table'''
    all_froms = [table_ext(x) for x in table_names.split(",")]
    got_yet = defaultdict(bool)
    hdr_name = i7.hdr(hdr_abb, "ta")
    for q in all_froms: got_yet[q] = False
    in_table = False
    got_table = False
    got_header = False
    table_name = ""
    with open(hdr_name) as file:
        for (line_count, line) in enumerate(file, 1):
            ll = line.lower().strip()
            if ll.startswith("table of"):
                for x in got_yet:
                    if ll.startswith(x):
                        if got_yet[x]: print("WARNING duplicate table name", x, "at line", line_count)
                        got_yet[x] = True
                        table_name = x
                        in_table = True
                        got_header = False
                continue
            if not ll:
                in_table = False
                got_header = False
                table_name = ""
                continue
            if not in_table: continue
            if not got_header:
                got_header = True
                continue
            ary = ll.split("\t")
            if ary[0] in comp_dir[dict_name]:
                if hdr_abb not in ok_dupe or ary[0] not in ok_dupe[hdr_abb]:
                    print("Possible duplicate", ary[0], "at line", line_count, table_name)
                else:
                    ok_dupe[hdr_abb][ary[0]] -= 1
                    if ok_dupe[hdr_abb][ary[0]] == 0: ok_dupe[hdr_abb].pop(ary[0])
            comp_dir[dict_name][ary[0]] = table_name
    if len(ok_dupe[hdr_abb]):
        print("The number of flagged duplicates was not quite right:", ', '.join(["{:s} {:d}".format(x, ok_dupe[hdr_abb][x]) for x in ok_dupe[hdr_abb]]))
    bail = False
    for q in got_yet:
        if not got_yet[q]:
            print("Failed to scrape {:s}, bailing".format(q))
            bail = True
    if bail: sys.exit()
    print("Successfully scraped all tables")

def scrape_project(table_csv, table_file):
    '''scrape from the anagram tables and spechelp table'''
    comp_dir.clear()
    scrape_stuff_from(table_csv, "flippable", 0, table_file)
    scrape_stuff_from("table of spechelp", "flipto", 0, table_file)
    count_difs("flippable", "flipto", "May need spechelp entry for <{:s}>.")
    count_difs("flipto", "flippable", "Spechelp entry <{:s}> doesn't correspond to any anagram table entry.")

do_roiling = False
do_shuffling = False
cmd_count = 1
while cmd_count < len(sys.argv):
    cmd = nohy(sys.argv[cmd_count])
    if cmd == 'r' or cmd == 'roi': do_roiling = True
    elif cmd == 's' or cmd == 'sa': do_shuffling = True
    else: sys.exit("Can only specify roiling/shuffling or we do both if it is left blank.")
    cmd_count += 1

if not do_roiling and not do_shuffling:
    do_roiling = do_shuffling = True
elif do_roiling and do_shuffling:
    print("You can just run with no arguments to try both projects.")

if do_roiling: scrape_project("ordeal reload,stores,routes,troves,presto,oyster,towers,otters,others", "roi")

if do_shuffling: scrape_project("ordeal loader,stores,forest,sortie,metros,resort", "sa")

