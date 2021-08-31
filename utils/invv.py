import re
import sys
import i7
from collections import defaultdict
import mytools as mt

do_shuf = False
do_roil = True

table_of = defaultdict(str)
space_convert = defaultdict(str)
reject = defaultdict(bool)
first_match = defaultdict(str)
congruences = defaultdict(list)

def check_anagram_tables(my_proj, col_num):
    word_dict_need = defaultdict(int)
    word_dict_got = defaultdict(int)
    in_anagram_table = False
    table_file = i7.hdr(my_proj, 'ta')
    with open(table_file) as file:
        for (line_count, line) in enumerate (file, 1):
            if line.startswith("table of") and "anagrams" in line:
                in_anagram_table = True
                first_row = True
                current_table = re.sub("\[.*", "", line).strip()
                current_table = re.sub("table of ", "<", current_table)
                current_table = re.sub(" anagrams", ">", current_table)
                continue
            if not line.strip():
                in_anagram_table = False
            if not in_anagram_table:
                continue
            if first_row:
                first_row = False
                continue
            ary = line.split("\t")
            this_equivalence = sorted(i7.topics_to_array(ary[col_num]))
            this_equivalence = sorted(this_equivalence, key=lambda x: len(x))
            for x in this_equivalence:
                first_match[x] = this_equivalence[0]
            congruences[this_equivalence[0]] = this_equivalence
            word_dict_need[this_equivalence[0]] = line_count
            word_dict_got[this_equivalence[0]] = 0
            table_of[this_equivalence[0]] = current_table
    invis_file = "c:/writing/scripts/invis/{}.txt".format(my_proj)
    with open(invis_file) as file:
        for (line_count, line) in enumerate (file, 1):
            if 'GENERAL QUESTIONS' in line:
                break
            if line.startswith(">") or line.startswith("?"):
                continue
            if ' </b>' in line:
                print("Space before bold tag at line", line_count)
            fa = [x[0].strip() for x in re.findall("<b>([A-Z]([A-Z ]+[A-Z])?)</b>", line)]
            if not fa:
                continue
            for x in fa:
                if x.startswith("A "):
                    x = x[2:].strip()
                if x in reject:
                    sys.exit("Found {} on line {}.".format(x, line_count))
                xl = x.lower()
                if xl not in first_match:
                    print("Line", line_count, "has un-anagrammy (apparently) all-caps", x)
                else:
                    base_word = first_match[xl]
                    if word_dict_got[base_word] != 0:
                        print("Duplicate find for", base_word.upper(), invis_file, line_count, "copies line", word_dict_got[base_word])
                        print("    " + line.strip())
                    else:
                        word_dict_got[base_word] = line_count
    count = 0
    for x in word_dict_need:
        if not word_dict_got[x]:
            count += 1
            print(count, table_of[x], x.upper(), "needed but not in {} invisiclues, original line {}.".format(my_proj, word_dict_need[x]))
            if count == 50:
                print("Maximum hit. Returning.")
                return

with open("invv.txt") as file:
    for (line_count, line) in enumerate (file, 1):
        if line.startswith("#"):
            continue
        if line.startswith("X:"):
            ary = line[2:].split(' ')
            for a in ary:
                reject[a] = True
        else:
            print("Space conversion is deprecated. Delete or comment out line {}.".format(line_count))
            #space_convert[line.strip().replace(' ', '')] = line.strip()

cmd_count = 1
while cmd_count < len(sys.argv):
    arg = mt.nohy(sys.argv[cmd_count])
    if 'n' in arg: do_shuf = do_roil = False
    if 's' in arg: do_shuf = True
    if 'r' in arg: do_roil = True
    cmd_count += 1

if do_shuf:
    check_anagram_tables("sa", 3)
if do_roil:
    check_anagram_tables("roi", 6)

if not (do_shuf or do_roil):
    print("Specify shuffling or roiling with s or r.")
