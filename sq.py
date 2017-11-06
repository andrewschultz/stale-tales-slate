###########################
#
# sq.py
# uses sq.txt to parse through all the puzzles
#

import re

sq = 'sq.txt'

rights = { 'r': 'p',
  'y': 'g',
  'o': 'b'
}

def show_settler(ls):
    base = re.sub(" ", "", ls[0])
    normal = []
    item_name = ''
    vague_clue = ''
    if '=' in ls[1]:
        item_name = re.sub(".*=", "", ls[1])
        ls[1] = re.sub("=.*", "", ls[1])
        vague_clue = re.sub("-", " ", ls[1])
    any_right = [False] * len(base)
    any_wrong = [False] * len(base)
    for x in base:
        if x in ['a', 'e', 'i', 'o', 'u']:
            normal.append('y')
        elif x is 'y':
            normal.append('o')
        else:
            normal.append('r')
    backup = re.sub(" ", "", ls[1])
    backup = re.sub("-", "", ls[1])
    backup = re.sub("'", "", ls[1])
    difs = backup.split(' ')
    if not item_name:
        item_name = re.sub("-", " ", ls[1])
    cheat = list(normal)
    for x in range (0,len(base)):
        for y in difs:
            if base[x] is y[x]:
                any_right[x] = True
            else:
                any_wrong[x] = True
    for x in range (0, len(base)):
        if any_right[x] and any_wrong[x]:
            cheat[x] = '?'
        elif any_right[x]:
            cheat[x] = rights[cheat[x]]
    print('a-text of', item_name, 'is \"' + ''.join(normal).upper() + '\".', 'b-text of', item_name, 'is \"' + ''.join(cheat).upper() + '\".' + ( " [" + vague_clue + " <=> " + ls[0] +"]" if vague_clue else ''))
    return

with open(sq) as file:
    for line in file:
        if line.startswith("#"):
            if line.startswith("########"):
                print(line.strip())
            continue
        if line.startswith(";"):
            break
        line = line.strip().lower()
        ls = line.split('/')
        show_settler(ls)