
import re

def mis2(p):
	print('finding mistakes in',p)
	shifted = 0
	infile = ("c:/games/inform/%s.inform/source/story.ni" % p)
	inbak = ("c:/games/inform/%s.inform/source/story.nim" % p)
	mistakes = ("c:/program files (x86)/inform 7/inform7/extensions/Andrew Schultz/%s mistakes.i7x" % p)
	fout = open(mistakes, "w+")
	fout2 = open(inbak, "w+")
	last_blank = False
	with open(infile) as file:
		for line in file:
			if last_blank and (line == '\n'):
				continue
			last_blank = (line == '\n')
			if re.search("^understand.*as a mistake", line):
				fout.write(line)
				fout.write("\n")
				shifted = shifted + 1
			else:
				fout2.write(line)
	fout.close()
	if shifted == 0:
		print("Nothing shifted over.")
	else:
		print(shifted, 'shifted over.')


x = ['shuffling', 'roiling']

for x1 in x:
	mis2(x1)