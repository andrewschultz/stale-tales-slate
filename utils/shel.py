from collections import defaultdict
import re
import i7
import sys

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

def scrape_stuff_from(table_name, dict_name, col_number):
    in_table = False
    got_table = False
    got_header = False
    with open(rfile) as file:
        for (line_count, line) in enumerate(file, 1):
            ll = line.lower().strip()
            if ll.startswith(table_name):
                got_table = True
                in_table = True
                continue
            if not ll:
                in_table = False
                continue
            if not in_table: continue
            if not got_header:
                got_header = True
                continue
            ary = ll.split("\t")
            comp_dir[dict_name][ary[0]] = table_name
    if not got_table: sys.exit("Failed to scrape {:s}, bailing".format(table_name))
    print("Successfully scraped", table_name)

rfile = i7.hdr("roi", "ta")

scrape_stuff_from("table of ordeal reload anagrams", "flippable", 0)
scrape_stuff_from("table of stores anagrams", "flippable", 0)
scrape_stuff_from("table of routes anagrams", "flippable", 0)
scrape_stuff_from("table of troves anagrams", "flippable", 0)
scrape_stuff_from("table of presto anagrams", "flippable", 0)
scrape_stuff_from("table of oyster anagrams", "flippable", 0)
scrape_stuff_from("table of towers anagrams", "flippable", 0)
scrape_stuff_from("table of otters anagrams", "flippable", 0)
scrape_stuff_from("table of others anagrams", "flippable", 0)
scrape_stuff_from("table of spechelp", "flipto", 0)

count_difs("flippable", "flipto", "May need spechelp entry for <{:s}>.")

count_difs("flipto", "flippable", "Spechelp entry <{:s}> doesn't correspond to any anagram table entry.")

