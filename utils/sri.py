#
#sri.py = Shuffling-Roiling Identical script
#
# finds lines identical in Shuffling and Roiling and lists them
#

from collections import defaultdict
import i7
import sys
import mytools as mt

shuffling = defaultdict(int)
roiling = defaultdict(int)
niceties = defaultdict(int)

roiling_shuffling = False
get_nice = False

def usage(head_text = "COMMAND LINE PARAMETERS"):
    print(head_text)
    print("=" * 50)
    print("r/rs/sr/s = roiling/shuffling identicals")
    print("n/g/gn/ng = niceties identicals with either roiling or shuffling")
    exit()

def get_unique_lines(linedict, source):
    print("Hashing unique lines for", source, "...")
    with open(source) as file:
        for (line_count, line) in enumerate(file, 1):
            ll = line.strip().lower()
            if ll not in linedict:
                linedict[ll] = line_count

cmd_count = 1
while cmd_count < len(sys.argv):
    arg = mt.nohy(sys.argv[cmd_count])
    if arg == 'r' or arg == 'rs' or arg == 'sr' or arg == 's': roiling_shuffling = True
    elif arg == 'g' or arg == 'n' or arg == 'ng' or arg == 'gn': get_nice = True
    elif arg == '?': usage()
    else: usage("invalid parameter " + arg)
    cmd_count += 1

if not get_nice and not roiling_shuffling:
    sys.exit("gn or rs flags needed to get niceties links or roiling/shuffling equivalencies.")

get_unique_lines(shuffling, i7.main_src("sa"))
get_unique_lines(roiling, i7.main_src("roi"))
get_unique_lines(niceties, i7.nice)

if roiling_shuffling:
    count = 0
    for x in sorted(shuffling, key=shuffling.get):
        if x in roiling:
            count += 1
            print("{:4d} SHUFFLING-ROILING {:5d} {:5d} ----".format(count, shuffling[x], roiling[x]), x)

if get_nice:
    count_both = 0
    count_r = 0
    count_s = 0
    print("NICETIES MATCHES")
    for x in sorted(niceties, key=niceties.get):
        if x in roiling and x in shuffling:
            count_both += 1
            print("{:4d} {:5d} SHUFFLING & ROILING {:5d} {:5d} ----".format(count_both, niceties[x], shuffling[x], roiling[x]), x)
        elif x in roiling:
            count_r += 1
            print("{:4d} {:5d} ROILING {:5d} ----".format(count_both, niceties[x], roiling[x]), x)
        elif x in shuffling:
            count_s += 1
            print("{:4d} SHUFFLING {:5d} {:5d} ----".format(count_both, niceties[x], shuffling[x]), x)
    print("Total both", count_both, "Total roil", count_r, "Total shuf", count_s)
