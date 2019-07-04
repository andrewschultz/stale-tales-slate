#
# shel.py
#
# table of spechelp/table of anagrams comparator
#

from collections import defaultdict
import re
import i7
import sys

# these should technically be defined by project, but I'm 99.99% sure there'll be no overlap.

ok_dupe = {
  'ye hoop': 1,
  'tunes': 1,
  'trim socks': 1,
  'coins': 3,
  'oils': 1, #shuffling
  'chain links': 1
  }

ignore = ['marble blamer mr beal']
comp_dir = defaultdict(lambda: defaultdict(str))

def count_difs(from_d, to_d, msg):
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
    if nam.startswith("table of "): return nam
    return "table of " + nam.strip()

def scrape_stuff_from(table_names, dict_name, col_number, hdr_name):
    all_froms = [table_ext(x) for x in table_names] if type(table_names) == list else [table_ext(table_names)]
    got_yet = defaultdict(bool)
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
                if ary[0] not in ok_dupe:
                    print("Possible duplicate", ary[0], "at line", line_count, table_name)
                else:
                    ok_dupe[ary[0]] -= 1
                    if ok_dupe[ary[0]] == 0: ok_dupe.pop(ary[0])
            comp_dir[dict_name][ary[0]] = table_name
    bail = False
    for q in got_yet:
        if not got_yet[q]:
            print("Failed to scrape {:s}, bailing".format(q))
            bail = True
    if bail: sys.exit()
    print("Successfully scraped all tables")

def scrape_project(table_array, table_file):
    comp_dir.clear()
    scrape_stuff_from(table_array, "flippable", 0, table_file)
    scrape_stuff_from("table of spechelp", "flipto", 0, table_file)
    count_difs("flippable", "flipto", "May need spechelp entry for <{:s}>.")
    count_difs("flipto", "flippable", "Spechelp entry <{:s}> doesn't correspond to any anagram table entry.")

scrape_project([ "ordeal reload", "stores", "routes", "troves", "presto", "oyster", "towers", "otters", "others" ], i7.hdr("roi", "ta"))
scrape_project([ "ordeal loader", "stores", "forest", "sortie", "metros", "resort" ], i7.hdr("sa", "ta"))

