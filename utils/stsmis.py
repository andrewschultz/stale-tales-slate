# this simply checks to make sure no mistakes are in the main file.
#
# this is probably obsolete, since I can just now type ni r mi / ni sa mi.
#

import re

def mis2(p):
    print('finding mistakes in',p)
    shifted = 0
    infile = ("c:/games/inform/{}.inform/source/story.ni".format(p))
    inbak = ("c:/games/inform/{}.inform/source/story.nim".format(p))
    mistakes = ("c:/program files (x86)/inform 7/inform7/extensions/Andrew Schultz/{} mistakes.i7x".format(p))
    fout = open(inbak, "w")
    write_out_string = ""
    last_blank = False
    with open(infile) as file:
        for line in file:
            if last_blank and (line == '\n'):
                continue
            last_blank = (line == '\n')
            if re.search("^understand.*as a mistake", line):
                write_out_string += line + "\n"
                shifted += 1
    fout.close()
    if shifted == 0:
        print("Nothing shifted over.")
    else:
        fout2 = open(mistakes, "a")
        fout2.write("\n" + write_out_string)
        fout2.close()
        print(shifted, 'shifted over. Look at story.nim for differences.')

x = ['shuffling', 'roiling']

for x1 in x:
    mis2(x1)