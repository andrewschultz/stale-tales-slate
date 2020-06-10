import sys
from collections import defaultdict
import re

#truth state which/that varies
# feeling you're a perp -> fleeing feeling (PERP)
replaced = defaultdict(int)
# zap m-bk
# zap no-lag's boat?

starts = defaultdict(int)

count = 0

shorts = [ 's-c', 's-i', 's-d', 'c-p', 'w-p', 'm-bk' ]

ignores = [ '--', 'a-text', '"', "\t", "index map with", "to ", "this is the ", "volume ", "chapter ", "book ", "part ", "section ", "[", "check ", "before ", "instead of ", "carry out ", "after ", "report ", "-)", 'does the player mean', 'every turn', 'start-pre-fruit', 'reg-needed', 'hint-entry', 'sum-page', 'this-reg', 'num-ascii', 'this-animal', 'hint-reg', '{-', 'rank-name', 'him-asked', 'default-talker', 'the-person' ]

replaceables = [ 'singular-named', 'plural-named', 'privately-named', 'proper-named', 'improper-named', 'improperly-named', 'mack-idea', 'pill-thing', 'my-loc', 'quest-item', 'cur-hint-sto', 'hub-room', 'aside-llp', 'big-let', 'n-t-air', 'pre-haun', 'to-read', 'my-let', 'him-who', 'person-subj', 'disamb-store', 'bogus-lamps', 'bogus-plains', 'nowt-town-p', 'final-puz', 'mack-idea', 'mack-prio', 'bogus-detours' ]

deffos_start = [ 'figure ', 'the graphics-window is a ', 'altroutes of', 'definition:', 'to decide ', 'a thing can be', 'table of ', "persuasion rule for ", "rule for ", "for printing", 'description of ', 'the specification of ', 'a room can be', 'to decide ', 'to protect ', 'a thing has ', 'orig-region is ', 'hub-region is ', 'a region has ', '1=', '2=', 'include ', 'bore-check of ', 'last-loc of ', 'tmc  =', 'tsn  =', 'tdr  =', 'pre  =', 'vrt  =' , 'tosb =', "the graphics window is ", 'current-idea' ]

deffos_anywhere = [ 'is a truth state that varies', 'is a truth state which varies', 'is a number that varies', 'is a person that varies',  'is a number variable', 'is a number that varies', 'is a room that varies', 'is a list of', 'is a thing that varies', 'is a region that varies', 'are an object-based rulebook', 'text that varies', 'is not listed in any rulebook', 'is a guardian that varies', 'is a picaro that varies', 'other-g', 'a person can be ', 'a quip can be ', 'is an object that varies', ' is listed before the ', 'start-pre-fruit' ]

to_fixes = [ "natives' site van", "hostile-is-he lot", "gadflies' gasfield", "sporties' ripostes", "wait-seer", "so-great storage", "lapsin' plains", 'gretta garett-tatger', "ol' trap", "achers' chaser arches", 'perma-amper', "vets' vest", 'asset-hit atheists', "shrewin' whiners", "hacks' shack", "tenfold teflon'd den loft", "i'm le cop polemic", "l'clear cellar", 'atmo-moat', "animals' laminas", "a banna'", "tech etcha'", "idlers' slider", "pedanto-notepad", "largely all-grey gallery", "saps' pass", "pester'n serpent", "cretins' cistern", "rude 'n nuder", "pg-on-up popgun", "spec-o-scope", "unripe ur-pine", "popstar's passport", "stand-up dustpan", "plastic scalp-it", "bee's head", "mount um-not", "deil's slide", "tekno-token", 'un-road', "questin' inquest", 'shatter-threats', "gropin' roping", "reed's ale", "feeling you're a perp", "godlings' lodgings", "ned's dens", "so-great storage", "mutilate-it amulet", "slopinc clip-ons", "look-kool shades", "nerd-aid", "accu-plaster", "coevals' alcoves", "by li'l billy", "li'l p's pills", "welt-proof flowerpot", "shout-so hut", "unorg'd ground", "i'd cede", "mum ray's summary", "no-lag's boat", "owers'-bin brownies", "claire's scalier" ]

def cut_down_need_fixing(line):
    temp = line
    for x in to_fixes:
        t2 = temp
        temp = temp.replace(x, 'zzz')
        if t2 != temp:
            replaced[x] += 1
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

with open("story.ni") as file:
    for (line_count, line) in enumerate(file, 1):
        ll = line.lower()
        if is_ignorable(ll): continue
        first_sentence = re.sub("[\.\t\(\"].*", "", line.strip()).lower()
        if is_definition(first_sentence): continue
        l2 = cut_down(first_sentence)
        if "'" not in l2 and "-" not in l2: continue
        l4 = cut_down_shorts(l2)
        if "'" not in l4 and "-" not in l4: continue
        l3 = cut_down_need_fixing(l2)
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
    print(fix_no_replace)
else:
    print("Everything in the fix array is targeted in the source.")