import sys
from collections import defaultdict
import re

#done = ['asset-hit atheists', 'welt-proof flowerpot', 'shout-so hut', "unorg'd ground", "pedanto-notepad", "idlers' slider", "tech etcha'", 'stand-up dustpan', 'plastic scalp-it', "ned's dens" ]

#truth state which/that varies
# feeling you're a perp -> fleeing feeling (PERP)
replaced = defaultdict(int)
# zap m-bk
# zap no-lag's boat?

starts = defaultdict(int)
replace_first = defaultdict(int)

show_first_lines = False
count = 0

#shorts is for tricky hyphenations. For instance, we want to flag s-c but not corses-crosse. So we use a regex (slower than just comparing text) on these,
shorts = [ 's-c', 's-i', 's-d', 'c-p', 'w-p', 'm-bk' ]

#ignores means that we can flat out ignore a line starting with this.
ignores = [ '--', 'a-text', '"', "\t", "index map with", "to ", "this is the ", "volume ", "chapter ", "book ", "part ", "section ", "[", "check ", "before ", "instead of ", "carry out ", "after ", "report ", "-)", 'does the player mean', 'every turn', 'start-pre-fruit', 'reg-needed', 'hint-entry', 'sum-page', 'this-reg', 'num-ascii', 'this-animal', 'hint-reg', '{-', 'rank-name', 'him-asked', 'default-talker', 'the-person', 'mack-randomize', 'thing-to-note' ]

# replaceables means we can replace this text with XXX and continue checking for bad punctuation.
replaceables = [ 'singular-named', 'plural-named', 'privately-named', 'proper-named', 'improper-named', 'improperly-named', 'mack-idea', 'pill-thing', 'my-loc', 'quest-item', 'cur-hint-sto', 'hub-room', 'aside-llp', 'big-let', 'n-t-air', 'pre-haun', 'to-read', 'my-let', 'him-who', 'person-subj', 'disamb-store', 'bogus-lamps', 'bogus-plains', 'nowt-town-p', 'final-puz', 'mack-prio', 'bogus-detours', 'pod-num', 'pod-ord', 'maze-order', 'yow-talk', 'yow-yell', 'mack-brief', 'mack-move', 'cheat-spoilable' ]

# deffos_anywhere means that a sentence/paragraph starting with this should be ignored in all cases.
deffos_start = [ 'figure ', 'the graphics-window is a ', 'altroutes of', 'definition:', 'to decide ', 'a thing can be', 'table of ', "persuasion rule for ", "rule for ", "for printing", 'description of ', 'the specification of ', 'a room can be', 'to decide ', 'to protect ', 'a thing has ', 'orig-region is ', 'hub-region is ', 'a region has ', '1=', '2=', '3=', '5=', 'include ', 'tmc  =', 'tsn  =', 'tdr  =', 'pre  =', 'vrt  =' , 'tosb =', "the graphics window is ", 'current-idea' ]

# deffos_anywhere means that a sentence/paragraph containing this should be ignored in all cases.
deffos_anywhere = [ 'is a truth state that varies', 'is a truth state which varies', 'is a number that varies', 'is a person that varies',  'is a number variable', 'is a number that varies', 'is a room that varies', 'is a list of', 'is a thing that varies', 'is a region that varies', 'are an object-based rulebook', 'text that varies', 'is not listed in any rulebook', 'is a guardian that varies', 'is a picaro that varies', 'other-g', 'a person can be ', 'a quip can be ', 'is an object that varies', ' is listed before the ', 'start-pre-fruit', 'bore-check ', 'bore-text ', 'last-loc of ', 'a-text', 'b-text', 'last-loc', '(this is the', 'go-region', 'reg-hint-rule', 'passed-on', 'locale-text' ]

to_fixes = [
"accu-plaster", "gropin' roping", "reed's ale", "spec-o-scope", "unripe ur-pine", "pester'n serpent", "natives' site van", "hostile-is-he lot", "gadflies' gasfield", "sporties' ripostes", "wait-seer", "owers'-bin brownies", "claire's scalier",
# store w above
"so-great storage", "feeling you're a perp", "tekno-token", "popstar's passport", "a banna'", "so-great storage",
# store h above
'perma-amper', "vets' vest", "achers' chaser arches", "lapsin' plains", "ol' trap",
#store y above
"coevals' alcoves", "mutilate-it amulet", "slopinc clip-ons", "look-kool", 'atmo-moat', "animals' laminas", "shrewin' whiners", 'gretta garett-tatger', "tenfold teflon'd den loft", "li'l p's pills",
#store t above
"mount um-not", "deil's slide", "cretins' cistern", "pg-on-up popgun", "saps' pass", "i'm le cop polemic", "hacks' shack", 
#store p above
"bee's head", "godlings' lodgings", "l'clear cellar", 
#store v above
"by li'l billy", "questin' inquest", 'shatter-threats', "largely all-grey gallery", "i'd cede",
#ordeal reload above
'un-road', "rude 'n nuder", "mum ray's summary", "no-lag's boat", 
#store u above
#demo dome (cleared)
#general above
]

def cut_down_need_fixing(line, line_count):
    temp = line
    for x in to_fixes:
        t2 = temp
        temp = temp.replace(x, 'zzz')
        if t2 != temp:
            replaced[x] += 1
            if x not in replace_first:
                replace_first[x] = line_count
    return temp

def cut_down(line):
    temp = line.lower()
    for x in replaceables:
        temp = temp.replace(x, 'xxx')
    return temp

def is_ignorable(line):
    for x in ignores:
        if line.startswith(x):
            starts[x] += 1
            return True
    return False

def is_definition(line):
    for x in deffos_start:
        if line.startswith(x):
            return True
    for x in deffos_anywhere:
        if x in line:
            if 'popstar' in line: print("!!", x)
            return True
    if '-quip' in line and re.search("^[a-zA-Z0-9-]+-quip", line): return True
    if line.startswith('t-') and re.search("^t-[a-z]+ly", line): return True
    return False;

def cut_down_shorts(line):
    temp = line
    for x in shorts:
        if x not in temp: continue
        if x in temp and re.search(r'\b{}\b'.format(x), temp):
            temp = re.sub(r'\b{}\b'.format(x), 'yyy', temp)
    return temp

caught_need_fix = 0
final_string = ""

try:
    if sys.argv[1] == 'f':
        show_first_lines = True
except:
    pass

with open("story.ni") as file:
    for (line_count, line) in enumerate(file, 1):
        ll = line.lower()
        if is_ignorable(ll): continue
        first_sentence = re.sub("[\"\t\(\[].*", "", line.strip()).lower()
        if is_definition(first_sentence): continue
        l2 = cut_down(first_sentence)
        if "'" not in l2 and "-" not in l2: continue
        l4 = cut_down_shorts(l2)
        if "'" not in l4 and "-" not in l4: continue
        l3 = cut_down_need_fixing(l4, line_count)
        if "'" not in l3 and "-" not in l3:
            caught_need_fix += 1
            final_string += line
            continue
        else:
            count += 1
        print(count, line_count, first_sentence, '/', l2, '/', l3)

print("Caught needing a fix:", caught_need_fix)
print(len(replaced))
fix_no_replace = [x for x in to_fixes if x not in replaced]
if len(fix_no_replace):
    print("No longer in the source:", fix_no_replace)
else:
    print("Everything in the fix array is targeted in the source.")

if show_first_lines:
    for x in replace_first: print(x, replace_first[x])