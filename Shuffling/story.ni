"Shuffling Around" by "Ned Yompus"

volume 1 - the main program

[I don't recommend building, though it is possible. You'll need a 6G version of Flexible windows. Most everything should be in https://github.com/andrewschultz/stale-tales-slate/, but I won't give much help building my own programs. I have trouble enough myself!

Glulx Text Effects.i7x
Flexible Windows.i7x

are modified versions.

You may have some problems with Glulx Text Effects.i7x / Glulx Text Effects - New.i7x naming and getting duplicate tables. If you are getting an already defined table, make sure other extensions all point to one of the two. This is the big hurdle to building. I may need to sort this out or update modules if there are new ones.
]

[Given that the total source is over 900000 bytes, I've tried to provide a rough outline as well as places to look to find the tricky bits. The standard method of searching game text in the source will probably get you pretty far, but also, I used some search markers repeatedly when I needed to change something in this game.

Shuffling Random Text.i7x includes all the random text. It is searchable by xx(f,m,i,r,x) -- x is introductory names, and the others are the store the region is behind.

Shuffling Nudges.i7x includes all the nudges for good guesses. By good guesses I mean trying objects that can't be anagrammed, but they're descibed prominently enough.

TMC=table of megachatter, where all the random text is forked.
TON=table of nudges, where a good try is rejected, so the player knows they are on the wrong track. It's in Shuffling Nudges.i7x now.
TOA=table of anagrams, or the big one.
TOH=table of hint objects
TOSH=table of specialized help (for specific rejects, e.g. ELCISH for the liches)
AIP=check if action is procedural

Note to self: there are many places to put in a SKIP UPCOMING RULEBOOK BREAK, but they're too minor to hunt down. Still, they'd be nice to fix, and anyone who helps me with this will get my gratitude and probably a place in the credits.
]

book disambig

include Bypass Disambiguation by Climbing Stars.

rule for asking which do you mean (this is the bypass disambiguation rule):
	if current action is objasking or current action is objasking generically:
		say "Sorry, [one of]but you may not have been specific enough with what to ask for. I'm going to err on the side of caution instead of possibly disambiguating something you haven't seen. This is a possible coding bug (and I'd like to know,) but it may also prevent spoilers. For best results, you should try to visit the location of whatever you want hinted or be more detailed in your request[or]this request seems too vague. If this is a bug, let me know[stopping].";
		bypass disambiguation;
		the rule succeeds;
	continue the action;

after asking which do you mean (this is the bypass disambiguation 2 rule):
	if current action is objasking or current action is objasking generically:
		bypass disambiguation;
		the rule succeeds;
	continue the action;

book i6 replacement

Include (-
Replace LanguageVerb;
-) after "Definitions.i6t".

Include (-
[ LanguageVerb i;
	switch (i) {
	  'i//','inv','inventory':
			   print "take inventory";
	  'a//':   print "ask about";
	  'rk//', 'kr//', 'nk//', 'kn//', 'hrk//', 'hnk//':   print "glean";
	  'l//':   print "look";
	  'x//':   print "examine";
	  'xx//':   print "examine magically";
	  'rc//', 'cr//':   print "scan both ways";
	  'r//', 'rec//', 'rect//':   print "rectify";
	  'poss//':   print "track possible points";
	  'pad//':   print "look up in your pad";
	  'c//', 'cert//', 'cer//':   print "certify";
	  'xx//':   print "examine closely";
	  'z//':   print "wait";
	  default: rfalse;
	}
	rtrue;
];
-) after "Language.i6t".

book separate modules

include Shuffling Random Text by Andrew Schultz.

include Shuffling Nudges by Andrew Schultz.

include Shuffling Mistakes by Andrew Schultz.

book debug modules - not for release

include Object Response Tests by Juhana Leinonen.

include Property Checking by Emily Short.

include Direction Response Testing by Andrew Schultz.

include Rules-Based Testing by Andrew Schultz.

a thing can be abstract. a thing is usually not abstract.

section default to true debug - not for release

when play begins (this is the debug version info that should not be in the release rule):
	[repeat with X running through things:
		if X is not scenery and x is not fixed in place:
			say "[X] is [if X is not fixed in place]not [end if]fixed in place[if number of things containing X is 1]--it's part of something[end if].";
	repeat with X running through warpable things:
		say "[X] is warpable.";
	repeat with X running through things:
		if X is a person:
			say "[X] is a person.";]
	[end temporary tests]
	now debug-state is true;
	now debug-print is true;
	[now debug-state is false;
	now debug-print is false;]

book inform 6 stubs

chapter pronoun setting

[This allows us to refer to a plural noun as it/them. Thanks to Climbingstars!]

To set the/-- pronoun it to (O - an object): (- LanguagePronouns-->3 = {O}; -).
To set the/-- pronoun him to (O - an object): (- LanguagePronouns-->6 = {O}; -).
To set the/-- pronoun her to (O - an object): (- LanguagePronouns-->9 = {O}; -).
To set the/-- pronoun them to (O - an object): (- LanguagePronouns-->12 = {O}; -).

section setting specific pronouns

after doing something with a flower:
	set the pronoun them to the noun;
	continue the action;

chapter transcripting

[This makes a check for if the transcript is on. I use it to check if a person starts with * but transcripting is off. Thanks to Zarf!]

Include (-
[ CheckTranscriptStatus;
#ifdef TARGET_ZCODE;
return ((0-->8) & 1);
#ifnot;
return (gg_scriptstr ~= 0);
#endif;
];
-).

To decide whether currently transcripting: (- CheckTranscriptStatus() -)

book d = debug-say

to d (a - indexed text):
	if debug-print is true:
		say "DEBUG INFO: [a][line break]"

to dn (a - indexed text):
	if debug-print is true:
		say "DEBUG INFO: [a]"

book globals

the release number is 5.

release along with cover art. [and a website?]

use American dialect.

include Conditional Undo by Jesse McGrew.

include Flexible Windows by Jon Ingold.

include Glulx Status Window Control by Erik Temple.

include Basic Screen Effects by Emily Short.

include Punctuation Removal by Emily Short.

the story description is "Yorpwald's a weirdly-named land. Perfect for your weird powers to save it."

the story headline is "Putzing around is unmagical. Shuffling around, though..."

the story genre is "Humor/wordplay"

[release along with a solution.]

Procedural rule: ignore the print final score rule.

section variables i'd like to NFR but can't quite--mostly debug stubs

showtabname is a truth state that varies.

debug-state is a truth state that varies. debug-state is usually false.

debug-scan is a truth state that varies. debug-scan is usually false. [a testing variable for if we want to check scaning beforehand]

debug-parse is a truth state that varies. debug-scan is usually false. [a testing variable for if we want to check parse-scaning beforehand]

tnt is a truth state that varies.

ff is a truth state that varies.

chapter basic things about things

a thing has text called rgtext. rgtext of a thing is usually "[bug-report]".

a thing has text called cert-text.

a thing has text called rect-text.

a thing can be prefigured, unfigured or done-for. a thing is usually unfigured.

a thing can be thruhinted. a thing is usually not thruhinted.

a thing can be reversible. a thing is usually not reversible.

a thing has a number called rpos. a thing has a number called gpos. a thing has a number called lgth.

a thing can be padded. a thing is usually not padded.

an undesc is a kind of thing. The description of an undesc is usually "BUG".

a portal is a kind of thing. a portal is usually fixed in place.

a portal can be fake-enterable. a portal is usually fake-enterable.

a portal can be checkedoff or available. a portal is usually available.

a portal can be enter-clued. a portal is usually not enter-clued.

a thing can be examined or unexamined. a thing is usually unexamined.

a thing can be flipped-yet. a thing is usually not flipped-yet.

a thing can be flippable, auxiliary or inflexible. a thing is usually inflexible.

a thing can be universal, useless, amusing, unimportant, abstract or practical. a thing is usually practical.

a disguise-piece is a kind of thing. a disguise-piece has a number called elevation.

a flower is a kind of thing. understand "flower" and "flowers" as a flower.

chapter colors

when play begins (this is the status window rule):
	set the background of the status window to colored;
	set the background color of the status window to g-black;
	set the text color of the status window to g-white;
	open the status window;

section compiler adjust constant section

[This is the main section to edit if I get a compiler error not due to syntax. With the 6.33 compiler, Inform should be a bit more descriptive, but just in case, I want to write this in]

use MAX_STATIC_DATA of 300000.

use MAX_NUM_STATIC_STRINGS of 21000.

use MAX_ACTIONS of 290.

use MAX_VERBS of 390.

use MAX_VERBSPACE of 4500.

use MAX_SYMBOLS of 33000.

use MAX_PROP_TABLE_SIZE of 240000.

section compiler adjust constant section - not for release

use MAX_VERBS of 400.

section about the player

does the player mean examining the player: it is unlikely.

description of player is "[player-descrip][run paragraph on]"

to say player-descrip:
	if Trips Strip is unvisited:
		say "You're [tag-status]. And hey, your ex-company let you dress casually[one of]. It'd stink if the dress code STILL applied[or][stopping]";
	otherwise:
		if warts are part of player:
			say "Those warts are making you feel ugly right now";
		otherwise:
			say "You're wearing generic, comfortable and inoffensive clothes, which have enough pockets for a modest inventory";
	say "."

section diagonals

a direction can be diagonal. a direction is usually not diagonal.

a direction can be ordinal. a direction is usually not ordinal.

northeast,southeast,northwest,southwest are diagonal.

north,east,south,west are ordinal.

before going (this is the reject diagonals rule):
	if location is Means Manse:
		say "[one of]You don't feel like getting up. Suddenly you're in the middle of an exitstential crisis.[or]You've had it with doing and going[or]Sit, ex-adventurer.[or]Where would you go? Texis? You see red at the thought![or]Seeing exits just makes you want to...[or]Come on, this one's just switching TWO WHOLE LETTERS. You had other tougher ones to MAKE it here![stopping]" instead;
	if noun is a diagonal:
		if player is in busiest subsite:
			say "You walk around the perimeter of the big hall. It's weird. The passage by the sign isn't stuck in a corner--it's just off to the side a bit, so it's not really north or whatever. You should be able to ENTER it or go INSIDE." instead;
		if trips strip is visited:
			say "[one of]Intermediate? Terminate! Die![or]Diagonals?! A sad lingo.[or]Diagonals?! So anal. Dig?[at random]" instead;

section dropping

check dropping:
	if noun is shotgun:
		say "You[if wolves are visible] probably [else]'re going to [end if] need that gun." instead;
	say "You shouldn't need to drop [if noun is plural-named]those[else]that[end if]. You have enough hands and pockets." instead;

to say tag-status:
	if player is wearing the nametag:
		say "still wearing that nametag";
	otherwise:
		say "[if gateman is visible]at least [end if]not wearing that stupid nametag any more";

instead of dropping tomato:
	say "Much as you'd like to drop it, it [if player is in Hotel]is actually handy here[else]might come in handy somewhere[end if]."

chapter special help

[We need a non-backdrop first here, or the compiler complains.]

table of spechelp [tosh] [tsh] [this is for specific error messages for specific items]
xtrhelp	helptxt
bolt	"You think back to a combination lock you had with, well, forty cubed possibilities. Only, hmm--twenty-four, here."
bulge	"The bulge swells and makes a squeal, like it's trying to make music."
toga	"The toga blows in an unseen breeze, exposing what's written on it a bit more."
nametag	"The nametag peels infinitesimally."
static	"You [if attics are in lalaland]don't think you can change it to anything but the attics[else]think a bit, and the static seems like a bad extension to the doll house[end if]."
attics	"Hm, you can't think of anything to do with the attics but change them back."
Store B	"You smell a variety of fruits and feel a cold blast, but nothing definitive happens--yet."
Store F	"That seemed right but didn't seem quite natural."
Store I	"Store I shakes a bit. You see red wondering how you'll rise to the challenge of entering it."
Store M	"Store M shudders slightly. You wonder what sort of rapid transit is behind it."
Store R	"Store R remains impassive. 'Or rest?' you muse. You're sort of ready for vacation, and sort of not."
acne-bit cabinet	"The cabinet wobbles a bit."
odor	"The odor doesn't seem too complex. You pause. You can figure what it should be." [forest]
bulge	"The bulge taps, slightly, you think."
ones	"The ones rattle a bit. Maybe you can sense out what they should be."
dashes	"The dashes seemed to rattle a bit, but you feel slightly uncool."
noughts	"Hmm. The noughts rattled, but nothing. Perhaps the elegy will help you."
banshee	"The banshee whines, sure someone is trying to kill it! Or send it to a lower ring of the death-kingdom."
liches	"The liches whine, sure someone is trying to kill them! Or send it to a lower ring of the death-kingdom."
bread	"A few crumbs fall from the bread and leave a scuzzy growth before vanishing."
livers	"The livers seem to prick you for a moment, as if to say you're not quite right."
sliver	"The sliver shines a bit as you focus on it. It suddenly feels slightly more valuable."
spread	"As you ponder the spread, it turns bright red and burst into something else--a red asp! You jump away[red-to]."
red asp	"The red asp strikes at something you can't see, unaware it's you that's trying to change it."
Spam	"Nothing happens, but you think you can make out odd shapes in the Spam for a moment."
hoses	"Something leaks out of the hoses. Hm. What else can be rubber, now."
vowels	"The vowels continue to howl in defiance. OU...AIE...like a wild animal."
wolves	"You can't change them back. But maybe you can get rid of them."
cask	"[if sack is in lalaland]You doubt the sack/cask has a triple purpose[else]Nothing happens. Maybe you are trying to do too much to change the cask[end if]." [sortie]
sack	"You doubt the sack/cask has a triple purpose."
warts	"The warts itch slightly."
poem	"[if poem is not folded]You need to fold the poem into a plane before you can try that[else]The plane can probably become something else, but not that[end if]."
CATHOUSE	"The CATHOUSE perfume suddenly smells a bit spicier."
roadblock	"The roadblock changes all the colors of the rainbow, but none seem appropriate."
grist	"The grist looks a bit less bland."
cake pan	"It's a cake pan, backwards and forwards."
skate	"You thought you smelled meat there, for a minute. Hm."
tall trio	"The tall trio seem to look interested for a minute."
spearman	"The spearman's smile seems to get a bit cheesier--you may or may not need to try a few other pre-names."
taco	"Weird. The taco almost seemed to grow arms, or even sleeves."
cult tee	"The cult tee seems to vegetate there. Change things around and it may become something."
scraped wall	"Hm, yes, a haywall might become something more passable, if you muddle it right."
anapest	"You think you had the right idea, but your execution was poor. Maybe be more workmanlike."
smilies	"The smilies momentarily grow eyebrows that point aggressively, then vanish."
hoots button	"You suppress a few minor swears as you realize that can't be right."
trees button	"Hmm, that doesn't work, but you bet you can bull your way through things."
oils	"The oils need a purpose--to build something great. You don't want to waste them." [separate if statement below takes other cases]
drainage	"The drainage bubbles a bit." [metros start]
motto	"Hm, you maybe could bend the motto a bit differently."
brocade	"The brocade design seems simple, yet complex, and perhaps you don't have to change a lot."
lost corn	"You thought you heard electronic beeping from the corn."
heaths	"You stare at the heaths, picturing them in the circle and wondering which is the 'starter.'"
begonias	"The begonias seem quiet. Almost too quiet. But surely you can find something to do with them."
antlers	"You could've sworn you the thing grew eyelids! And the eyes moved, begging you for any excuse it doesn't belong here!"
dry cake	"You feel like can almost identify what the cake can become."
clover	"The clover seems overcome with fuzz for a moment--but no, you missed a little something."
words	"The words [if words are in noise bag]slash at the bag a bit[else]seem to whizz around the air a bit[end if], but they aren't tempered into something that can really do damage."
beats	"The beats shift up for a second."
siren	"The siren continues to blind you--like it's throwing dust in your eyes."
neon pig	"The neon pig blinks as if in last-ditch defiance."
tiles	"The tiles rattle as if to shift but settle down." [resort start]
swing	"The swing goes slightly airborne."
tool shed	"You hear an unseen hinge neigh as if in defiance."
rock	"Hmm, a rock, but only so much you can do with it."
sprig	"The sprig seems to grow less fragile for a moment."
poles	"The poles start to bend at an angle--or maybe that's the light."
spore	"You briefly wonder what the spore could grow into, given time. Time you don't have. Maye something circular, or something long and stringy."
protest	"The protesters mumble at you for trying to exert mind control. You've struck a nerve."
chain links	"The links rattle slightly. Perhaps they are chaining others['] creativity as well as your own, as they are now."
riot	"The riot's still a crowd. A BIG crowd."
r2	"[m-r-almost]."
m2	"[m-r-almost]."
t-n	"The nick blurs a little but snaps back to normal."

to say m-r-almost:
	if moor is visited:
		say "The [if player is in moor]moor[else]room[end if] sways a bit. You do some brief mental calculation. There's no third place between them";
	else:
		say "You almost feel something picking you up for a second. You must have been close"

to say red-to:
	now red asp is in Enclosure;
	set the pronoun it to red asp;
	now spread is in lalaland;

to say spec-help of (itm - a thing):
	if itm is begonias:
		if player has heaths or player has sheath:
			say "You made your choice.";
			continue the action;
	if itm is heaths:
		if player has begonias or player has noise bag:
			say "You made your choice.";
			continue the action;
	if itm is oils and oils are not in cask:
		say "[if player is in cedars]Changing Lois is highly unlikely, and y[else]Y[end if]ou should possess the oils before doing anything with them.";
		continue the action;
	if itm is a xtrhelp listed in the table of spechelp:
		choose row with xtrhelp of itm in table of spechelp;
		if point is true or tnt is true:
			say "[helptxt entry][line break]";
		else if point is false or tnt is true:
			say "You feel a slight psychic push-pull coming from [if itm is r2 or itm is t-n or itm is m2]all around[else][the itm][end if]. Keep at it.";
			d "There is a spechelp entry for this.";
	else:
		d "Add something to the table of spechelp for [the itm], maybe? Search for to[r]sh.";
		say "You feel a slight psychic push-pull coming from [the itm]. Keep at it.";
	if pointcue is false:
		say "[i][bracket]NOTE: You can toggle detailed nudges when you're on the right track with OPT IN (to get them) and NO TIP (to hide them,) though they may give more hints than you want. You will always get this generic message, at least, in any case.[close bracket][roman type][line break]";
		pad-rec "opt in/no tip";
		now pointcue is true;

pointcue is a truth state that varies.

last-hash is a number that varies. last-hash is usually -1.
num-in-row is a number that varies.
cur-ceil is a number that varies. cur-ceil is usually 3.

firstword is a number that varies. [key2]
fullcmd is a number that varies. [key]

to decide whether (nt - a table name) is hash-found:
	repeat through nt:
		if firstword is the hashval entry or fullcmd is the hashval entry:
			if there is a this-rule entry:
				say "[run paragraph on]";
				consider this-rule entry;
				if the rule succeeded:
					say "[this-clue entry][line break]";
					decide yes;
			if there is a this-room entry:
				if location of player is this-room entry:
					say "[this-clue entry][line break]";
					decide yes;
			if there is a this-item entry:
				if this-item entry is visible:
					say "[this-clue entry][line break]";
					decide yes;
	decide no;

to say reject:
	now fullcmd is the hash of the player's command;
	now firstword is the hash of word number 1 in the player's command;
	d "The hash of the command is [fullcmd]. The hash of word #1 is [firstword].";
	repeat through regana of mrlp:
		if the-from entry is visible:
			if firstword is the hashkey entry or fullcmd is the hashkey entry:
				say "[spec-help of the-from entry]";
				if last-hash is fullcmd or last-hash is firstword:
					increment num-in-row;
					if point is false and num-in-row is cur-ceil:
						say "[i][bracket]NOTE: it looks like you've tried a second anagram in a row. It may help to OPT IN. You can always switch back with NO TIP.[close bracket][roman type][line break]";
						now num-in-row is 0;
						if cur-ceil < 6:
							increment cur-ceil;
				now last-hash is hashkey entry;
				continue the action;
	now num-in-row is 0;
	if regtab of mrlp is hash-found:
		continue the action;
	if table of general nudges is hash-found:
		continue the action;
	say "[verb-cue]."

to say verb-cue:
	say "That's not something you can say, do or see here. For a list of common verbs, type VERBS"

to say set-bug:
	say "BUG. You shouldn't have the settler yet. If this is wrong, contact me at [email] or report a bug at [ghsite]. Transcripts are a big help. Up arrows work too."

to say bug-report:
	say "BUG. Contact me at [email] with a transcript or description of where you are/what you did, or report a bug at [ghsite]. Use up arrow to see previous commands. Or use UNDO several times and hit TRANSCRIPT to show me how you got here, what your inventory was, etc."

understand "nick" as nick when player is in nick.

a room can be noisy. a room is usually not noisy.

the pockets are part of the player. the pockets are plural-named and useless.

description of pockets is "This shouldn't be here since any action gives a default message."

instead of doing something with the pockets:
	say "[if location of player is busiest subsite]That would be unprofessional in future job interviews[else if location of player is Dry Yard]You fidget nervously with your pockets for a bit .There's not much else you can do with them[else][one of]Your pockets have no holes. But r[or]R[stopping]eal adventurers don't futz with their pockets. Or pocket-equivalents[end if]."

chapter done rejects

table of done rejects [tdr]
donething	donemsg
yard-door	"The door is probably the way out. Best not change it into something else." [intro]
bugle	"The bugle emits a sad 'don't change me back' noise."
gateman	"Don't scramble the gateman. He's here to help."
nose	"Don't get that nose bent out of shape."
shades	"Anything you do to bend the shades might break them."
shotgun	"Anything you do might violate firearm safety rules, or something."
beard	"For a beard, it's actually pretty cool."
maps	"The maps are probably right, you hope. No need to change them."
chisel	"It's a perfectly good tool. Trying to refine it might break it."
drapes	"They look forbidding, but you might turn them into something worse. Maybe you can just dispose of them physically."
silver	"Hard to beat silver. It's what it should be."
HOTSAUCE	"[keep-food-simple]."
parmesan	"[keep-food-simple]."
steak	"[keep-food-simple]."
lettuce	"[keep-food-simple]."
tortilla	"[keep-food-simple]."
grits	"[keep-food-simple]."
pancake	"[keep-food-simple]."
coat	"No need for fashion tweaks."
straw	"The straw remains motionless."
black door	"The black door just sits there."
missile	"The missile emits an almost giggly sound but doesn't actually change."
panel	"The panel bleeps a 'stop that' sort of warning."
hallway	"You already have a passage east. Don't close it."
silo	"That silo was pretty big. You probably have little more to do with the oils."
steer button	"No, the steer button HAS to be right."
shoot button	"No, the shoot button HAS to be right."
gardenia	"The flowers are fine as-is." [metros]
tomato	"It's pretty gross, but you can't really change it. Maybe it can gross someone, or something, else out."
Velcro	"The Velcro remains tangled."
controls	"The controls stay as they are."
barcode	"The barcode does not shift."
keycard	"The keycard remains stiff. Looks like it's as it should be."
sheath	"The sheath remains still."
sword	"Meddling with the sword right now, you're worried it might poke you."
beast	"You've changed the beats to something tangible, physically beatable."
cork	"Your head swims then sinks as you realize the cork can't become much else."	[resort]
wings	"The wings should be able to propel you enough."
slope	"You wouldn't want to make the slope crumble away."
ropes	"The ropes are useful for climbing, which you need to do to get east."
grips	"You can't get ahold of anything that would be more useful than the grips."
protest	"You can deal with three people. But you'll have to change their motivations."

to say keep-food-simple:
	say "Best not to get too crazy with food preparation"

chapter say shortcuts

to say i:
	say "[italic type]";

to say b:
	say "[bold type]";

to say r:
	say "[roman type]";

to say on-off of (t - a truth state):
	say "[if t is true]on[else]off[end if]";

to say off-on of (t - a truth state):
	say "[if t is true]off[else]on[end if]";

to say email:
	say "blurglecruncheon@gmail.com";

to say ghsite:
	say "http://github.com/andrewschultz/stale-tales-slate/Shuffling"

to ital-say (x - indexed text):
	say "[italic type][bracket]NOTE: [x][close bracket][roman type][line break]";

section debugging flags and such

debug-print is a truth state that varies. debug-print is usually false.

helpdebugflag is a truth state that varies. helpdebugflag is usually false.

hintfull is a truth state that varies. hintfull is usually false.

chapter glulx stuff

Table of Common Color Values (continued)
glulx color value	assigned number
g-pure-blue	255	[== $0000FF]
g-pure-green	40960	[== $00A000]
g-pure-red	16719904	[== $FF2020]

Table of User Styles (continued)
style name	justification	obliquity	indentation	first-line indentation	boldness	fixed width	relative size	glulx color
header-style	--	--	--	--	bold-weight	--	2	g-black
special-style-1	--	--	--	--	regular-weight	proportional-font	0	g-pure-red
special-style-2	--	--	--	--	regular-weight	proportional-font	0	g-pure-green
italic-style	--	--	--	--	--	--	0	g-black
fixed-letter-spacing-style	--	--	--	--	--	--	0	g-black
bold-style	--	--	--	--	--	--	0	g-black
alert-style	--	--	--	--	--	--	0	g-black
note-style	--	--	--	--	--	--	0	g-black
input-style	--	--	--	--	--	--	0	g-black
blockquote-style	left-justified	no-obliquity	0	0	regular-weight	proportional-font	0	g-pure-blue
[normal-style	--	--	--	--	--	--	0	g-black]

The back-colour of the main-window is g-white.

to say bluetext:
	(- glk_set_style(style_BlockQuote); -)

to say hc-sp:
	if sr-acc is true or spaces-on is true, say " ";

[the syntax here is, only screen-reader space for *c, neither for *cn, forced space for *cf]

to say bc:
	say "[bluetext]B[r]";

to say bcn:
	say "[hc-sp][bluetext]B[r]";

to say bcf:
	say " [bluetext]B[r]";

to say gc:
	say "[second custom style]G[r]"

to say gcn:
	say "[hc-sp][second custom style]G[r]"

to say gcf:
	say " [second custom style]G[r]"

to say rc:
	say "[first custom style][hc-sp]R[r]"

to say rcn:
	say "[hc-sp][first custom style]R[r]"

to say rcf:
	say " [first custom style]R[r]"

to say ast:
	say "[if sr-acc is true or spaces-on is true] [end if]"

to say d1:
	say "[ast]-";

to say d2:
	say "[ast]-[ast]";

book hashcodes

[ this is so the computer can determine if we have an anagram without doing crazy string manipulations]

Table of Hashcodes
Letter(indexed text)	Code
"a"	2187818
"b"	18418905
"c"	19005585
"d"	21029089
"e"	127806109
"f"	26514896
"g"	32599702
"h"	37282299
"i"	44992846
"j"	48960525
"k"	52933178
"l"	53813839
"m"	64075153
"n"	68907508
"o"	74352577
"p"	81465959
"q"	84405617
"r"	85323803
"s"	96273966
"t"	103110018
"u"	105105807
"v"	107164820
"w"	107934773
"x"	112768081
"y"	122359252
"z"	122969618

to decide what indexed text is the filtered name of (t - a value of kind K):
	let s be t in lower case;
	replace the regular expression "<^abcdefghijklmnopqrstuvwxyz>" in s with "";	[ a-z would include accented characters]
	decide on s;

to decide what number is the hash of (t - a value of kind K):
	let s be the filtered name of t;
	let hash be 0;
	repeat with c running from 1 to the number of characters in s:
		increase hash by the Code corresponding to a Letter of character number c in s in the Table of Hashcodes;
	decide on hash;

book procedural AIP

to decide whether the action is procedural: [aip]
	if examining, yes;
	if fliptoing, yes;
	if kicking, yes;
	if attacking, yes;
	if scaning, yes;
	if objhinting, yes;
	if smelling, yes;
	if cring, yes;
	if reading, yes;
	if listening, yes;
	if saying yes, yes;
	if saying no, yes;
	if xmxing, yes;
	if dropping, yes;
	if looking, yes;
	if certifying, yes;
	if rectifying, yes;
	if objasking about, yes;
	if requesting the score, yes;
	if taking inventory, yes;
[	if out of world, yes;]
	no;

book megachatter

chat-rand is a truth state that varies.

talk-quiet is a truth state that varies.

every turn  (this is the process random dialogue rule):
	if current action is mainhelping:
		do nothing instead;
	if current action is helping:
		do nothing instead;
	if current action is fliptoing:
		do nothing instead;
	now chat-rand is true;
	consider the find-blather rule;
	now chat-rand is false;

this is the find-blather rule:
	let zz be 0;
	repeat through table of megachatter:
		if eturn entry is chat-rand:
			if there is a go-ahead entry:
				consider the go-ahead entry;
				if the rule succeeded:
					if chat-rand is true and talk-quiet is true and done-once entry is true:
						the rule succeeds;
					if showtabname is true:
						say "([mytab entry])";
					now done-once entry is true;
					increment curidx entry;
					if curidx entry > maxidx entry:
						if there is a lasties entry:
							say "[lasties entry]";
							now curidx entry is 0;
							the rule succeeds;
						else:
							[say "(generic note that random text is cycling)[paragraph break]";]
							now curidx entry is 1;
					if there is a prefix entry:
						say "[prefix entry]";
					let whrow be curidx entry;
					let posties be suffix entry;
					choose row whrow in mytab entry;
					say "[blurb entry][posties][line break]";
					if chat-rand is true:
						if talk-quiet is true:
							say "[line break][i][bracket]NOTE: the above was random dialogue that won't be repeated since you have HUSH on. You can undo this with UHHS.[close bracket][r][line break]";
						else if quiet-warn is false: [this is skipped if you jump to RBB]
							say "[line break][i][bracket]Note: the above was random dialogue that can be turned off with HUSH or on with UHHS. If you forget this, it's in your notepad. Also, if you want all the dialogue, no need to hit Z a ton. You can read the source or, to see it formatted a bit better, solve the game.[close bracket][r][line break]";
							pad-rec-q "random dialogue";
							now quiet-warn is true;
					the rule succeeds;

to say randbla:
	say "[run paragraph on]";
	repeat through table of megachatter:
		if eturn entry is chat-rand:
			if there is a go-ahead entry:
				consider the go-ahead entry;
				if the rule succeeded:
					if showtabname is true:
						say "([mytab entry])";
					increment curidx entry;
					let whrow be curidx entry; [needed for the multiple-name entry]
					let mdx be maxidx entry;
					let posties be suffix entry;
					let lly be "";
					if there is a lasties entry:
						now lly is lasties entry;
					if there is a prefix entry:
						say "[prefix entry]";
					if ent-per entry > 1:
						let thistab be mytab entry;
						let q be ent-per entry;
						if maxidx entry - curidx entry + 1 < q:
							now q is maxidx entry - curidx entry + 1;
						now curidx entry is curidx entry + q - 1;
						if curidx entry >= maxidx entry:
							now curidx entry is 0;
						repeat with tmp running from 1 to q:
							if tmp is q and tmp > 1:
								say " and ";
							choose row whrow + tmp - 1 in thistab;
							say "[blurb entry]";
							if tmp < q - 1:
								say ", ";
						if mdx is q + whrow - 1:
							say "[lly]";
						the rule succeeds;
					[d "[curidx entry] vs [maxidx entry].";]
					if curidx entry > maxidx entry:
						if there is a lasties entry:
							say "[lasties entry]";
							now curidx entry is 0;
							the rule succeeds;
						else:
							[say "(generic note that random text is cycling)[paragraph break]";]
							now curidx entry is 1;
							now whrow is 1;
					choose row whrow in mytab entry;
					say "[blurb entry][posties]";
					the rule succeeds;

to say post-brk:
	if resort is solved:
		say "[paragraph break]";

[in case I need to use this, it's here]
[to say post-lb:
	if resort is solved:
		say "[line break]";]

bull-taunt is a number that varies.

to say 1-in-5:
	increment bull-taunt;
	if bull-taunt is 5:
		now bull-taunt is 0;
		say ".[paragraph break]You think how you can use your word power. Somehow going 'TUT, EGO!' won't be incisive enough. You need action";

this is the reading-the-map rule:
	if current action is examining the maps:
		the rule succeeds;
	the rule fails;

this is the x-psa rule:
	if current action is examining Pa's PSA:
		the rule succeeds;
	the rule fails;

this is the x-namelist rule:
	if current action is examining name list:
		the rule succeeds;
	the rule fails;

this is the pat-poem rule:
	if player is in moor and pat is in moor:
		the rule succeeds;
	the rule fails;

this is the talk-in-condo rule:
	if player is in condo and talkers are in condo:
		the rule succeeds;
	the rule fails;

this is the burdell rule:
	if player is in hotspot and burdell is in hotspot:
		the rule succeeds;
	the rule fails;

this is the protests rule:
	if player is in hotspot:
		if riot is in hotspot or protest is in hotspot:
			the rule succeeds;
	the rule fails;

this is the in-mensa rule:
	if player is in anti-cool location:
		if current action is not objasking about and current action is not objasking generically:
			the rule succeeds;
	the rule fails;

this is the with-hippies rule:
	if player is in cramped red camp:
		the rule succeeds;
	the rule fails;

book final question options

Table of Final Question Options (continued)
final question wording	only if victorious	topic		final response rule		final response activity
"see what you may've MISSED (with minor spoilers for alternate routes) point-wise"	true	"missed"	--	showing what the player missed

showing what the player missed is an activity.

sect-missed is a truth state that varies.

to say 2da of (rg - a region):
	if sect-missed is false:
		say "Missed in [rg]:[line break]";
	now sect-missed is true;
	say "[2dn]";

to say 2dn:
	say "[unless sr-acc is true]--[end if]";

rule for showing what the player missed:
	let missed-points be 0;
	repeat with zq running through solved regions:
		increase missed-points by (max-score of zq - cur-score of zq);
	if missed-points is 0:
		say "You got all the points! Well done! You are definitely ready for the extra challenge of [i]A Roiling Original[r].";
	else:
		say "You did very well to get through the game. So you deserve to see [if missed-points > 1]all [end if]the Last Lousy Point[if missed-points > 1]s[end if] you missed.";
	if darn-slan is false:
		say "[2da of intro]you could've tried to SLANDER the darnels.";
	if attics are off-stage:
		say "[2da of intro]the static in Notices Section was changeable to ATTICS.";
	now sect-missed is false;
	if store b is in trips strip:
		say "[2da of stores]store B had some food for you. SORBET.";
	if store f is in trips strip:
		say "[2da of stores]store F in the trips strip led to a forest.";
	if store i is in trips strip:
		say "[2da of stores]store I in the trips strip led to a sortie. Which is both an exit and a missile launch.";
	if store m is in trips strip:
		say "[2da of stores]store M in the trips strip led to the Metros.";
	if cabinet is in trips strip:
		say "[2da of stores]the cabinet, once it followed you, could've become something really alive. A nice bat.";
	now sect-missed is false;
	if rock is in Isle:
		say "[2da of resort]the rock on the [isle] was changeable to CORK.";
	if swing is in isle:
		say "[2da of resort]the swing on the [isle] was changeable to WINGS.";
	if spore is in Rived Drive:
		say "[2da of resort]the spore in the Rived Drive was changeable to ROPES[toolwood].";
	if sprig is in Rived Drive:
		say "[2da of resort]the sprig in the Rived Drive was changeable to GRIPS[toolwood].";
	if tool shed is in Rived Drive:
		say "[2da of resort]the tool shed in the Rived Drive was changeable to TOEHOLDS.";
	if china is off-stage:
		say "[2da of resort]the chain links could've become china. [i][bracket]Note: you need to change it to china before making the kilns.[close bracket][r][line break]";
	now sect-missed is false;
	if forest is solved:
		if has-been is off-stage:
			say "[2da of forest]the banshee could've become a HASBEEN (space or not).";
	if sortie is solved:
		if pancake is off-stage:
			say "[2da of sortie]the cake pan in the fridge could've become a PANCAKE.";
		if grits are off-stage:
			say "[2da of sortie]the grist in the fridge could've become GRITS.";
	if metros is solved:
		if antlers are in cordoned red condo:
			say "[2da of metros]the antlers in the Cordoned Red Condo could've become RENTALS.";
		say "[line break]Also, while the other regions are linear, the Metros has five paths based on the flowers you choose and how you get the tulip.";
		say "[2dn]the [if begonias are in elf row's flowers]begonias could've made a noise bag[else]heaths could've made a sheath[end if].";
		say "[2dn]the other ways to get the tulip are to [alt-sols].";

to say toolwood:
	say "[if tool shed is in Rived Drive]. Though you got the tougher tool shed[end if]"

to say alt-sols:
	let firsty be false;
	repeat through table of tulip-acq:
		if chosen entry is false:
			say "[sol entry]";
			if firsty is false:
				say " or ";
				now firsty is true;

table of tulip-acq
sol	chosen
"ASK NERDS ABOUT DARKNESS"	false
"OPEN NOISE BAG in the Anti-Cool Location after getting the begonias"	false
"SHOW EMITTER TO DEADBEAT once he's friendly, then use it in the Anti-Cool Location"	false

book section-victory

to metro-victory:
	say "You draw your sword with the improvised battle cry 'At fencing I'm magnificent!' doing your best impression of St. Abe, or is it St. Bea?[paragraph break]Whichever, the beast scratches you, which you sort of deserve, but then your sword acts as a microphone, converting the beast's remaining beats to equally horrendous lyrics and providing feedback that makes it wince. It gives an owly yowl, tone-deaf: 'Fate! Done!' and runs off.[paragraph break]People can finally think again, so they figure how to find you quickly in the abyss![paragraph break]'How? Who? Ohh wow. You merit this mitre!' someone says. But all you want is to get on with your quest. The escalator in the undesired underside is rigged to go up. You note the ol['] hotel (L'Hote Helot) is now Le Hot Hotel, the terminal lean, trim. You then turn your sore to a rose, lead a pared parade and, for slower fun, plant a sunflower before returning to the Trips Strip.[paragraph break]You wonder if you could've just tried to SAY BS to get rid of the metros without trying. Maybe it'd be useful in a future alternate universe.";
	now stickyhanded is false;
	reg-inc;
	solve-region metros;

chapter commending

to commend (y - a region):
	if y is solved:
		say "[bug-report] already solved.";
		the rule succeeds;
	now y is solved;

chapter helping

helping is an action applying to nothing.

mainhelping is an action applying to nothing.

understand the command "hint/hints" as something new.

understand "hint" and "hints" as helping.

hintsoff is a truth state that varies. hintsoff is usually false.

just-print is a truth state that varies. just-print is usually true.

to say minus:
	now cur-item is thruhinted;
	say "[one of](-) [italic type][bracket]NOTE: A minus sign means you've reached the end of a hint loop. You can cycle through them again, though.[close bracket][r][or](-)[stopping]";

to say plus:
	say "[one of](+) [italic type][bracket]NOTE: the plus sign means you can HINT again for something more spoilery. (-) means the end of a list of hints.[close bracket][r][or](+)[stopping]";

carry out helping:
	if location of player is busiest subsite:
		say "You're not in the area where the magic happens, yet. The cardinal directions, including the boring lecture east, are out." instead;
	if meaningful-hint is false:
		now meaningful-hint is true;
		say "You call out for the Magic Hint Fairy. 'Please! Please!'[paragraph break]All you hear in return is 'Asleep! Asleep!'[paragraph break]You pause. You've heard she may be a hi-rent hinter, maybe even a cruel cluer--not that she can spirit you to the cheaters['] hectares--but even a thin hint could probably make you enjoy your journey less if you rely on her too much.[paragraph break]Do you really want to poke her now?";
		if player direct-consents:
			say "You see by the look on her face she's thinking 'Spiel or Spoiler?' But the look on your face shows you're ready to take the Perilous trip to Spoiler U with an idea aide. You won't spit on tips. [hintblah]";
			continue the action;
		otherwise:
			say "Her cheats sachet tempts you, even trying to scathe as you remain chaste. [hintblah]" instead;

carry out helping:
	if hintfull is false:
		try mainhelping;
	otherwise:
		say "[bug-report] Hints are already being traced. This is a debug-feature only.";

to say got-r:
	say "[if store r is prefigured]already guessed right--it's a resort[else]can still guess it. If you don't, this hint will tell you what it should be once you can advance";

blot-first is a truth state that varies.

carry out mainhelping:
	if hintsoff is true:
		all-say "You elected to turn hints off for the remainder of the game. You'll need to restart to change that." instead;
	if player is in busiest:
		all-say "[one of]Look around. Most of the standard directions don't really seem to get you anywhere--going east with the crowd doesn't count. [plus][or]There's a passage that's not quite so prominent. [if above-sign is examined]You've already read the sign[else]The sign has an odd message that's not quite stopping you entering[end if]. [plus][or]You can go IN, ENTER, or ENTER PASSAGE. [minus][cycling]" instead;
	if player is in Dry Yard:
		if odor is visible:
			try objhinting odor instead;
		if bolt is visible and bulge is visible:
			if blot-first is true:
				try objhinting bolt instead;
			else:
				try objhinting bulge instead;
		if bugle is visible and bugle-played is false:
			try objhinting bugle instead;
		try objhinting yard-door instead;
	if player is in thickest thickets:
		if toga is visible:
			try objhinting toga instead;
		all-say "You can just go IN, now." instead;
	if player is in notices section:
		if gateman is not visible:
			try objhinting magenta nametag instead;
		if lube-asked is false:
			all-say "You need to ASK GATEMAN ABOUT CABINET." instead;
		if player does not have gadget:
			all-say "You probably want to TAKE GADGET before entering the gate. Well, maybe even TAKE ALL." instead;
		all-say "You can just enter the gate now." instead;
	if location of player is trips strip:
		if forest is solved and sortie is solved and metros is solved:
			if r-p is visible:
				all-say "You've opened all the stores you can." instead;
			otherwise:
				all-say "Store R is your last challenge." instead;
		if you-can-advance:
			if store r is visible:
				if store r is prefigured:
					all-say "You already figured what this is--a resort." instead;
				try objhinting store r instead;
			all-say "The way is clear[if store m is visible or store f is visible or store i is visible]. You could try the remaining store, but it's not necessary[end if]." instead;
		if store f is visible:
			try objhinting store f instead;
		if store i is visible:
			try objhinting store i instead;
		if store m is visible:
			try objhinting store m instead;
		if store r is visible:
			try objhinting store r instead;
		otherwise:
			all-say "[bug-report] Somehow you flipped the resort before solving other areas you needed to." instead;
	if mrlp is forest:
		try forest-hinting instead;
	if mrlp is metros:
		try metros-hinting instead;
	if mrlp is sortie:
		try sortie-hinting instead;
	if mrlp is resort:
		try resort-hinting instead;
	all-say "Bug text. Should not appear.";
	the rule succeeds;

to all-say (a - indexed text):
	if just-print is true:
		say "[a][line break]";
		continue the action;
	if helpdebugflag is true:
		append "[the player's command]: [a][line break]" to the file of shufhints;
	if hintfull is true:
		say "[if hintfull is true]THIS MOVE'S HINT: [end if][a][if hintfull is true] (turn full hints off with HF)[end if][line break]";
	[otherwise:
		say "[word number 1 in a] [word number 2 in a] [number of words in a] [number of characters in a].[line break]";]

outline-print is a truth state that varies. outline-print is usually true.

the file of shufhints is called "shufhints".

forest-hinting is an action applying to nothing.
metros-hinting is an action applying to nothing.
sortie-hinting is an action applying to nothing.
resort-hinting is an action applying to nothing.
nerd-hinting is an action applying to nothing.

coe-clue is a truth state that varies. coe-clue is usually false.

section hintrelevance

redness is a thing. understand "red" and "color red" as redness when player is in notices section. description of redness is "Bug."

does the player mean objasking generically redness when player is in notices: it is very likely.
does the player mean objasking about redness when player is in notices: it is very likely.

does the player mean objasking generically when noun is enclosed by location of the player: it is very likely.

does the player mean objasking about when second noun is enclosed by location of the player: it is very likely.

check objhinting red bull burdell:
	if red bull burdell is off-stage:
		say "You haven't found him yet!" instead;

check objhinting a deregioned object:
	say "That's not something in this region[one of]--note: locations are not available to hint[or][stopping]." instead;

does the player mean objhinting a deregioned object:
	it is very unlikely.

does the player mean objhinting a hintrelevant object:
	it is likely.

[does the player mean objhinting a visible object:
	it is likely.]

does the player mean objhinting an object in lalaland:
	it is unlikely.

definition: a thing (called hthing) is deregioned:
	if location of hthing is nothing, decide no;
	if location of hthing is lalaland, decide no;
	if mrlp is not map region of location of hthing, decide yes;
	decide no.

definition: a thing (called hintcand) is hintrelevant:
	if mrlp is sortie:
		if hintcand is Mean Old Mondale Doleman, decide yes;
	if hintcand is off-stage, decide no;
	if hintcand is in lalaland, decide no;
	if hintcand is in bullpen, decide yes;
	if hintcand is location of player, decide no;
	if hintcand is beats:
		if mrlp is metros, decide yes;
		decide no;
	if hintcand is priv-camp:
		if player is in camp or player is in underside, decide yes;
		decide no;
	if hintcand is warding drawing:
		if player is in anti-cool or player is in underside, decide yes;
		decide no;
	if hintcand is forest-leaves:
		if player is in rf or player is in sf, decide yes;
		decide no;
	if hintcand is r2:
		if player is in roomroom, decide yes;
		decide no;
	if hintcand is m2:
		if player is in moor, decide yes;
		decide no;
[	if hintcand is a backdrop or hintcand is scenery:
		if hintcand is visible, decide yes;
		if hintcand is not visible, decide no;] [throws error]
	let reg1 be map region of location of hintcand;
	let reg2 be mrlp;
	if reg1 is not reg2, decide no;
	if reg1 is reg2:
		if location of hintcand is visited, decide yes;
	decide no;

[does the player mean objasking about a hintrelevant thing: it is likely;]
[does the player mean objasking generically a hintrelevant thing: it is likely;]

section objhinting

objhinting is an action applying to one visible thing.

check objhinting a deregioned object:
	say "That's not something in this region[one of]--note: locations are not available to hint[or][stopping]." instead;

understand the command "hint/hints/info/help [any thing]" as something new.

understand "hint [any hintrelevant thing]" as objhinting. understand "hints [any hintrelevant thing]" as objhinting. understand "info [any hintrelevant thing]" as objhinting. understand "help [any hintrelevant thing]" as objhinting.

[understand "hint [text]" as a mistake ("There's nothing relevant around like that.")]

ever-obj-hinted is a truth state that varies.

a thing can be realized. a thing is usually not realized.

cur-item is a thing that varies.

carry out objhinting:
	if hintsoff is true:
		say "Hints are disabled for this session." instead;
	now ever-obj-hinted is true;
	now cur-item is noun;
	if noun is location:
		all-say "Occasionally you can SCAN or SMELL or LISTEN for clues. You don't need to type a command to BREATHE it. In fact, the parser doesn't understand that." instead;
	if location of noun is nothing and noun is not a backdrop:
		all-say "[noun]: you probably shouldn't know about that object, yet. And if you do, try asking about objects you can see." instead;
	if noun is in lalaland:
		all-say "[noun]: [if noun is a male person]He's[else if noun is a female person]She's[else if noun is plural-named]They've[else]That's[end if] been dealt with. I'm pretty sure." instead;
	if noun is not a backdrop and noun is not scenery:
		if mrlp is not map region of location of noun:
			all-say "That doesn't seem to be in this region." instead;
	if noun is realized:
		all-say "Nothing more to do with [if noun is plural-named]that[else]those[end if]." instead;
	if noun is amusing:
		all-say "[if noun is plural-named]That is[else]Those are[end if] in there for general silliness." instead;
	if noun is useless:
		all-say "[if noun is plural-named]That is[else]Those are[end if] in there for local flavor and scenery." instead;
	if there is hint-entry of noun in the table of hintobjs:
		choose row with hint-entry of noun in the table of hintobjs;
		if there is a parallel-entry entry:
			try objhinting parallel-entry entry instead;
		all-say "[advice-entry entry]" instead;
	if noun is a portal:
		all-say "You can just enter it.";
	if noun is unimportant:
		all-say "[noun]: that isn't needed to solve the game. It's probably just there for local flavor." instead;
	all-say "[noun]: I don't have any hints for that. That means it is not important to the game, or this is a bug." instead;

to say no-sto:
	say "Nothing is hidden in that store";

to say nxt-g:
	say "Maybe next game";

to say snb:
	let ostage be the number of off-stage disguise-pieces;
	say "[if ostage is 0]can be combined with the other two pieces. PUT X ON Y[else if ostage is 1]can be combined with that other piece you have and one you don't have[else]needs a couple other things from Sorted Trodes to become something[end if]"

table of hintobjs [toh]
hint-entry	advice-entry	parallel-entry
yourself	"[if cur-score of intro is 0]Try hinting objects around you instead[else]You have the ability to anagram things[end if]."
redness	"Redness means all the letters in a word are wrong, compared to what something should become. E.g. GNAT <-> TANG."
dope tan notepad	"You wil write procedural things in your notepad as you get them."
acne-bit cabinet	"[if gateman is off-stage]You need someone who will let the cabinet trust you. Maybe your nametag can help.[else if strip is unvisited]You can take what you want from the cabinet with no penalty.[else][one of]The cabinet seems animated, almost an animal. [plus][or]This is a LLP and maybe a slightly tricky one. [plus][or]It feels almost kind, mammalian, and the bits read CAN BITE which is in red. [plus][or]NICE BAT. [minus][cycling]"
cratered bits	"The cratered bits clue what the cabinet can become[if strip is unvisited] once you start your main quest[end if]."
name list	"The list hints what Shuffling Around is all about."
above-sign	"The sign seems to be mis-printed, which is a clue what Shuffling Around is all about."
odd side passage	"You can ENTER the odd side passage, or go IN."
odor	"[one of]What can the odor turn into? Your random thoughts are not so random. [plus][or]The clues and distractions collapse to anagrams. [plus][or]If you get to the end, you'll notice two rather forced ones. They both anagram odor. What else do they anagram? [plus][or]A door. [minus][cycling]"
musical chord	"The chord clues what to do [if bulge is in lalaland]with the bugle[else]with the bulge[end if]."
bulge	"[one of]You don't have any key, but that bulge shouldn't be part of the door [plus][or]The musical chord is a clue [plus][or]You want to change the bulge into a BUGLE [minus][cycling]."
bolt	"[one of]You don't have any key, but that bolt is stopping the door from opening.[plus][or]You want to change the bolt into a BLOT. [minus][cycling]"
blot	"The blot is a clue what the bulge could become. It's not useful by itself."
bugle	"You should PLAY the bugle."
yard-door	"You can just ENTER the door[if bugle-played is false and bolt is visible] once you figure how to open it[end if]."
toga	"[one of]The toga can become something else, though it's a bit trickier than the blot to bolt, or bulge to bugle.[plus][or][or]What could the toga become that might eat through the darnels?[plus][or]The toga can become a GOAT. [minus][cycling]"
toga-writing	--	toga
shrub	"The shrub and brush clue[unless goat is off-stage]d[end if] you to what you need[unless goat is off-stage]ed[end if] to do with the toga."
brush	--	shrub
snarled darnels	"[if darn-slan is true]You've already vented your frustrations on the darnels.[else][one of]You don't need to do anything with the darnels, but you'll get an extra point out of it. [plus][or]It may be useful to get mad at them, maybe even say something nasty or nonsensical. For the good of society. [plus][or]It's a bit early for a puzzle this long, but you can import intentions to the plants that aren't there. I think we've all done it. [plus][or]You can SLANDER the darnels. [minus][cycling][end if]"
goat	"The goat's done its job."
magenta nametag	"[one of]The magenta nametag needs to become something. Something that can help with the gateway. [plus][or]The broad board, along with trying to enter the gateway, gives hints. [plus][or]Mt. Agena/Egana, a tan gem, and the mega-ant are clues due to their redness that say what you want is -A---A-. You can look up omore or note you're dealing with a gate. [plus][or]Thus, you must summon a GATE MAN. With or without the space. [minus][cycling]"
gadget	"The gadget is kind of complex, so maybe you need to see parts of it."
gadget-screen	"Data will flash up once you CERTIFY or RECTIFY."
blurb	"Just a riff on what's going on with the gadget."
show hows tag	"The tag provides examples of CERTIFY and RECTIFY."
disclaimer	--	show hows
examples	"The examples show how both CERTIFY and RECTIFY work."
pit	"The tip in the pit controls whether the gadget will CERTIFY or RECTIFY."
tip	--	pit
PHAIL phial	"The blue lube in the phial helps you know what to work on."
blue lube	--	phial
handle	"You need some way to carry the gadget."
s-r	"The SECURE/RECUSE button decides whether you can secure the gadget's current status and recuse yourself from one area, or if you can leave the gadget more flexible and try for both."
arrow	"It's part of the gadget."
tight knot	"It helps the gadget remain tagged."
attics	"The attics can be flipped back to static, if you want."
static	"[one of]It's optional to fix the dollhouse and static. You can use the gadget in the cabinet to figure it out. [plus][or]The dollhouse appears to be missing a top bit. [plus][or]ATTICS. [minus][cycling]"
doll house	--	attics
gateman	"The tan mage will help you if you ask him about various things."
getaway gateway	"You can enter it[if gateman is off-stage] with assistance from someone else[else if player does not have gadget], but maybe get some stuff to help you first[else] when ready[end if]."
new land	"You can find out once you enter the gateway."
prep paper	"The prep paper gives hints you'll cross off as you finger things."
broad board	"The broad board's advice is very useful[if gateman is off-stage], especially to summon help[else], even now that you've summoned help[end if]."
mega ant	"The mega ant is blocking the gateway, but it's an odd shade of red. That's a hint, from the broad board, of what you need to do, or summon."
saltine	"Eating the saltine will give you one hint."
tepid icon depiction	"The tepid icon depiction will give you some hints what to do in the remaining area(s)." [start STORES]
wooden sign	"Just a semantic note to try STOREA and not SHOPA."
go rest flier	"Just general encouragement. Store G isn't relevant to the game."
storeall	"Try hinting a single store instead."
disamb-store	"Try hinting a single store instead."
store b	"[one of]Store B offers some sort of food that will boost your spirits. [plus][or]It's a last lousy point, but maybe you can use the gadget to guess it. [plus][or]SORBET. [minus][cycling]"
marquee	--	store b
store f	"[one of]Store F has some real earth tones. [plus][or]Trees, leaves, mud. [plus][or]There's a FOREST behind it. [minus][cycling]"
roadsign	"The road sign gives a clue as to the nature of Store F."
store i	"[one of]The outline of a trap door is what you need to get to. what word is a synonym for exit and missile launch? [plus][or][if player has gadget]If you scan the Tories, that and the store give you half the answer--more, since it eliminates some of the later letters. You can use both modes of the gadget[else]Unfortunately, without any devices from the cabinet, this is tricky, if you draw a blank on synonyms[end if]. [plus][or]You need to create a SORTIE. [minus][cycling]"
td	"Go down to see what lurks behind store I."
Tories	"The Tories aren't a political statement, just another clue what to do with Store I."
Margaret Thatcher	"One of three Tories."
Winston Churchill	--	Thatcher
Benjamin Disraeli	--	Churchill
store m	"[one of]Examining the map, it is of Mt. Rose. Which is an anagram for Store M. It looks like you need to get to a subway station or something. [plus][or][if gadget is cert]The gadget tells you M----- if you scan both the store and the map of Mt. Rose[else if gadget is rect]M----S is only so helpful here, but remember a city and its transport system are being portrayed[else]A city and its transport system are being portrayed[end if]. [plus][or]You need to discover the METROS. [minus][cycling]."
subway map	"The subway map gives a hint as to what Store M can be."
store r	"[if you-can-advance][one of]You need to get into store R. [plus][or]The roster provides a hint. Where's a place you can rest? [plus][or]Certifying or Rectifying tells the first letter, R, and the next is very likely a vowel, or you get a garbage word. [plus][or]You want to go to a RESORT. [minus][cycling][else]You won't need to get into store R until you've solved another area, at least. But you [got-r][end if]."
roster	"The roster is a bit more of a clue for Store R. If you CERTIFY it, it will make things a bit clearer."
forest-x	"Just enter."
sortie-x	"Just enter."
metros-x	"Just enter."
down escalator	"You can just go down."
r-p	"Just enter."
store a	"[no-sto]."
store d	"[no-sto]."
store e	"[no-sto]."
store g	"[no-sto]."
store h	"[nxt-g]."
store j	"[no-sto]."
store k	"[no-sto]."
store l	"[no-sto]."
store n	"[no-sto]."
store o	"[no-sto]."
store p	"[nxt-g]."
store q	"[no-sto]."
store s	"[no-sto]."
store t	"[nxt-g]."
store u	"[nxt-g]."
store v	"[nxt-g]."
store w	"[nxt-g]."
store x	"[no-sto]."
store y	"[nxt-g]."
store z	"[no-sto]."
nice bat	"You don't need to do anything more with the bat now. It's happy as-is."
bw	--
whiff of stew	"[one of]The stew is a clue which way to go. [plus][or]You should go WEST. [minus][cycling]" [START FOREST]
thorn	"[one of]The thorn is a clue which way to go. [plus][or]You should go NORTH. [minus][cycling]"
rambling shout	"[one of]The shout is a clue which way to go. [plus][or]You should go SOUTH. [minus][cycling]"
aroma of teas	"[one of]The aroma of teas is a clue which way to go. [plus][or]You should go EAST. [minus][cycling]"
turnstile	"[if Enclosure is visited]You can come and go as you need[else]You need a way through the turnstile--perhaps you should learn to fit in[end if]."
bread	"[one of]The bread can be changed. [plus][or]It becomes a BEARD. [minus][cycling]"
sandwich	"[one of]The sandwich [i-sed]is useful for two puzzles. It has 'the usual two parts.' [plus][or]Take BREAD to separate the sandwich from Stored, Er, Dots into bread and Spam. [minus][cycling]"
chisel	"[one of]That chisel might be handy for some items[if player is in Enclosure] you'll need to pass the drapes[else]stuck to a wall, or something[end if]. [plus][or]What could it PEEL? [plus][or]Either of the livers in Stored, Er, Dots. [minus][cycling]"
liches	"[one of]The liches are a tool of some greater evil, and their descriptions suggest another word (+)[or]Make them into a CHISEL[cycling]."
chicken liver	"[put-can]"
cow liver	"[put-can]"
canister	"You can put meat in the canister."
livers	"[one of]Transforming the livers is necessary. The gadget shows all reds, but actually, that's because it's 'easy' another way. [plus][or]If you shift all the letters over one, LIVERS become SLIVER. [minus][cycling]"
dashes	"[one of]The dashes [i-s-t]can be changed to a disguise piece. [plus][or]You have the beard and nose, so you need something for your eyes. [plus][or]Impractical, but... SHADES. [minus][cycling]"
pattern	"The pattern clues what the shades can become."
noughts	"[one of]The zeroes [i-s-t]aren't quite zeroes. They're noughts.[plus][or]The zeroes aren't quite zeroes. They're NOUGHTS. [minus][cycling]"
ones	"[one of]The ones are pretty yes-or-no. [plus][or]Flip a few bits and you have something else. [plus][or]The ones become a NOSE. [minus][cycling]"
bubble	--	noughts
bucket	--	ones
shell	--	dashes
notes stone	"[if nose is off-stage or shades are off-stage or shotgun is off-stage]It's what's beneath the notes stone you need to work with[else]Everything under the notes stone is taken care of[end if]."
shades	"The shades [snb]."
nose	"The nose [snb]."
beard	"The beard [snb]."
grinder	"[if livers are off-stage]You need to put meats in the grinder[else]You're done with the grinder, and it's done, too[end if]."
red ring	--	grinder
blades	--	grinder
elegy	"[if shotgun is off-stage]The elegy, if read correctly, can give you an idea of what the noughts can become[else]The elegy was a hint for the shotgun[end if]."
gy	--	line of no life
line of no life	"[if Enclosure is unvisited]The men going through have certain things in common. If you can imitate them, you can get through, too[else]You don't need anything more from the line of no life[end if]."
banshee	"[one of]You don't need to get rid of the banshee to solve the forest, but you can put it even more in the past. [plus][or]What's a name for something that was? [plus][or]HAS-BEEN. With dash, space or no space. [minus][cycling]"
spread	"[one of]The SPREAD can become something. Well, by magic. If you fiddle with it, it becomes something else. [plus][or]You can't quite cut the spread as-is, but maybe you could transform it into something less intimidating? [plus][or]You can figure out what the word is from there. [plus][or]The SPREAD becomes DRAPES. [minus][cycling]"
red asp	"[one of]The red asp is too dangerous to fight, but remember, it started as a SPREAD, also red. [plus][or]Attacking the asp gives another clue, since you turn all red. [plus][or] The asp doesn't leave you feeling very homey. [plus][or]The red asp can become DRAPES. [minus][cycling]"
drapes	"[if player does not have sliver]You need something that can cut the drapes[else]CUT the drapes with the sliver[end if]."
sliver	"[if drapes are not in lalaland]The sliver can be used to cut something.[else][one of]The sliver is still useful. [plus][or]It can become SILVER. [minus][cycling]"
spam	"[one of]The Spam isn't particularly edible. [plus][or]It's more useful as MAPS. [minus][cycling]"
silver	"[if silver is part of shotgun]It's ready to fire when needed[else if shotgun is off-stage]It'd be nice to have something to put the silver in[else]Put the silver in the shotgun[end if]."
shotgun	"[if player has silver and silver is not in shotgun]Put the silver in the shotgun.[else if silver is off-stage]You need to create a bullet for the shotgun.[else if wolves are visible]SHOOT the wolves.[else]You need to find a target, one vulnerable to silver, maybe.[end if]"
muzzle	"It's the shotgun you need to worry about."
doorway	"It's not terribly intimidating, but you'll want to be prepared with a guide and possibly self-defense. Things will only get tougher than the liches."
maps	"[if player is in ghouls' slough]You need to READ the MAPS[else]The maps will be useful to read when you get somewhere unknown[end if]."
vowels	"[one of]The vowels seem to be hiding a great evil, a Halloweeny menace. They seem to be saying 'We're Vowels.' [plus][or]Two solutions: WEREWOLVES or WOLVES. [minus][cycling]"
wolves	"They're due for a violent end."
bumps	"The bumps clue what the vowels can become."
dial	"[if centrifuge-stopped is true]You've dealt with the dial.[else][one of]You'll get hints for turning the dial wrong, but the EXITS at right angles are a clue. [plus][or]You need to figure what the right directions are. [plus][or]If you've tried going diagonally, that doesn't work, leaving four possibilities. [plus][or]You can also just think of a number with X in it, with seven letters. [plus][or]Binary search works, too, but the next clue shows how you can get things in one move. [plus][or]The right number is SIXTEEN. [minus][cycling][end if]"	[START SORTIE]
ufcex	--	dial
cfuge	--	dial
Mean Old Mondale Doleman	"You don't need to do anything directly to Mondale Doleman to get through the sortie."
lid	"The (a) lid is just there to keep the dial from turning."
grate	"[one of]There's no gateman to help with the grate. [plus][or]You're feeling very hungry. You wish you could go somewhere to eat, or even make something to eat.  [plus][or]The tagged gadget gives a reading without you examining anything. [plus][or]This room becomes a KITCHEN. [minus][cycling]"
cell graffiti	"Its redness will help with how to leave the nick."
branding	--	cell graffiti
skate	"The skate can become steak."
cult tee	"The cult tee can become lettuce."
cathouse	"The CATHOUSE perfume can become hot sauce."
spearman	"The spearman can become Parmesan."
armor	--	signature
signature	"This signature clues what the spearman can become."
tall trio	"The tall trio can become a tortilla."
middle chef	"Each chef is part of a tall trio."
left chef	--	middle chef
right chef	--	middle chef
loose label	"The label gives a clue what the 'tall' trio can be."
HOTSAUCE	"Part of a meal."
Parmesan	--	HOTSAUCE
steak	--	HOTSAUCE
lettuce	--	HOTSAUCE
tortilla	--	HOTSAUCE
fridge	"There's stuff in the fridge if you want to be thorough."
cake pan	"[one of]Well, it should be easy to flip the cake pan to something. [plus][or]Namely, a PANCAKE. [minus][cycling]"
grits	"That's someone else's food, now. Food left out is a different matter."
pancake	--	grits
trel-priv	"[if scraped wall is visible]It's the haywall below you need to worry about[else]The trellis isn't important--it just provides scenery[end if]."
hallway	"You changed the haywall to make the hallway. You can just go east."
hay	"[if hay is part of scraped wall]You've used the hay properly[else]You need to stuff the hay somewhere--there's only one hole besides the sack[end if]."
poem	"[if smilies are part of the poem]It's the smilies you need to worry about[else if poem is folded]You changed the poem successfully[else]The poem has no value without the smilies, but the paper it is on can be FOLDed[end if]."
cask	"[if sack is in lalaland]You can change the cask back to a sack, depending on what you need to schlep around.[else][one of]The cask can become something else. [plus][or]Something else that contains things. [plus][or]It can become a SACK. [minus][cycling][end if]"
sack	"The sack can contain bulky things, or it can be changed back to a CASK."
hole	"Nothing special, just--it can't be enlarged to fit bulky stuff in."
grist	"[one of]The grist is close to actual food. [plus][or]Namely, some GRITS. [minus][cycling]"
warts	"[one of]After a few turns, the warts will bother you. [plus][or] What does the writing on the manila animal say? [plus][or]'No, too stupid a fad. I put soot on...' [plus][or]It's most of a famous palindrome. [plus][or]It begins with STRAW. [minus][cycling]"
straw	"You can't use the straw, but maybe you can trade it to someone who can."
hoses	"[one of]Your current footwear isn't cutting it. [plus][or]You need something to keep the wet out. Rubber would work well. [plus][or]The pair of hoses can become... [plus][or]...a pair of shoes. [minus][cycling]"
shoes	"The shoes will help you walk in squishy places[if moor is visited] like the moor[end if]."
taco	"[one of]The taco can become something more substantial for adventuring. [plus][or]You need lasting warmth in [if moor is visited]the moor[else]a location you'll visit[end if]. [plus][or]The TACO can become a COAT. [minus][cycling]"
coat	"The coat will keep you warm as-is. No need to do much."
anapest	"[one of]The poem you hear is an ANAPEST. [plus][or]It's so snotty and elitist, you'd like to change it. [plus][or]Change it to a PEASANT. [minus][cycling]"
expo flier	"The flier helps you figure what to change the anapest into."
sc	"The holy verse on the cedar walls gives a rough idea what to do."
holy verse	--	sc
oils	"[if soil is in lalaland][one of]The OILS can be a couple things, but you may want to make a foundation first. [plus][or]The moor's ground won't support anything... [plus][or]...until it becomes more stable SOIL. [minus][cycling][else][one of]The SOIL can now support a structure. [plus][or]A structure that could hold farm stuff, or maybe feed. [plus][or]That'd be a SILO. [minus][cycling]"
lois	"Lois is the provider of oils."
crashing archings	"Lois caused that, to help you not look backwards."
roadblock	"[one of]The roadblock seems misplaced, almost inviting you to enter. [plus][or]It's also cut 5/9 of the way down. [plus][or]What's an entryway? A DOOR. [plus][or]That leaves the word BLACK. [plus][or]It's a BLACK DOOR! [minus][cycling]"
rime mire	"The rime mire is just there to block you from leaving the moor."
bright red graffiti	"The graffiti helps you figure what the roadblock is."
hoots button	"[one of]The hoots button isn't up to much. [plus][or]You don't hoot with a missile... [plus][or]...you SHOOT. [minus][cycling]"
trees button	"[one of]The trees button isn't much help launching a missile. [plus][or]You don't want that missile going just anywhere. [plus][or]STEER BUTTON. [minus][cycling]"
steer button	"You should just need to push the STEER button now."
shoot button	"[if missile-steered is true]You should just need to PUSH the SHOOT button now[else]You may want guidance before PUSHing the SHOOT button[end if]."
scraped wall	"[if straw is off-stage]You don't have anything to stuff in the wall. Maybe you can find something. It may be right under your nose. [else if player has the straw or straw is in sack]Hm, the straw is too bulky to fit in the wall. Something like it, perhaps. [else if player has the hay or hay is in sack][one of]The hay might fit in well with the wall. [plus][or]PUT HAY IN WALL. [minus][cycling][else][one of]You stuffed the hay in the wall. What does the gadget offer? [plus][or]The hay wall can become a HALLWAY! [minus][cycling][end if]"
missile	"[if silo is off-stage]You have nowhere to put the missile, yet[else if black door is not in lalaland]You need a way to open up the silo[else]You should be able to put the missile in the silo now[end if]."
spout	"[if caskfillings is 2]You've gotten all the oil you need[else if caskfillings is 1]You may be able to get more oils[else]you can POUR OILS into the cask from the spout[end if]."
soil	"[if silo is off-stage]The soil is a good foundation for a structure[else]You've built a structure on the  soil[end if]."
Woeful Pat	"Pat's poetry is useless, but its beat isn't."
peasant	"[one of]The peasant has a bunch of hay he doesn't want. Mean Old Mondale-Doleman said it was 'almost the same thing.' [if warts are not off-stage]What could become almost the same thing? The answer's right under your nose.[else]What've you seen that's almost the same thing?[end if][plus][or]The straw. [if sack is off-stage]The cask can be made into a sack[else]It can fit in the sack[end if]. [plus][or]GIVE STRAW TO PEASANT. [minus][cycling]"
black door	"[if silo is not visible]You probably need to build a structure to attach the black door to[else if black door is not part of the silo]Just PUT BLACK DOOR ON SILO[else]The black door's OK where it is[end if]."
dashed boundary	"You need to put some sort of door on it[if black door is off-stage], but there are no doors in the moor, yet[else], and maybe that black door will work[end if]."
dotted rectangle	"You need to put something in the rectangle[if panel is off-stage], but nothing is the right size[else], and the panel is the right size[end if]."
silo	"There's a lot to do with the silo--maybe you should hint other items you have, instead."
creases	"The creases indicate the paper has been folded before."
smilies	"[one of]The smilies seem like they don't belong on the page. [plus][or]What'd you hear about weapons that weren't harmful? Killing with love? [plus][or]They can become a MISSILE. [minus][cycling]"
panel	"[if panel is not part of silo]How to get the silo working? PUT PANEL ON SILO.[else]The panel is in place.[end if]"
wires	"The wires aren't important. The panel is."
drainage	"[one of]The drainage [if flowers is visited]changes into something the faeries want[else]can be cleaned up[end if]. [plus][or]Anything would be more beautiful than drainage, especially a flower. [plus][or]You could [if flowers is visited]give the faeries[else]make[end if] a GARDENIA. [minus][cycling]" [START METROS]
soggy love letter	"The love letter intro clues what the drainage could be."
can of beer	"The beer can's name clues what the drainage could be."
arena dig flier	"The flier clues what the drainage should be."
metallic door	"[if nerds-unwelcome is true]You got through the door, but you're not welcome back. No loss[else if anti-cool is visited]You can go in and out as you please[else]You'll need the right sort of technology ID[end if]."
night thing	"You can't kill the night thing on your own. Maybe something equally awful would take care of it?"
smartest mattress	"[if night thing is in Hotel]You need to get rid of the night thing[else if emitter is off-stage]EXAMINE the mattress[else]Nothing left in the mattress[end if]."
cruel ulcer	"That cruel ulcer looks like a weak link. If you could throw something in there..."
ketchup bottle	"The ketchup bottle clues what the night thing likes."
tomato	"The tomato is rotten enough that throwing it at something may send them off-stage."
bump	"SEARCH the mattress to find what's in the bump."
clover	"[one of]The clover seems a bit sticky. [plus][or]Maybe you could change it into something even stickier, like...[plus][or]VELCRO. [minus][cycling]"
leaves	"The leaves['] clinginess clues what the clover should become."
Velcro	"The Velcro, with its hooks, is useful for sticking to something."
string	"The string is probably what the clover's stem was. It keeps the Velcro mittens hooked together."
hooks	--	Velcro
motto	"[one of]The, I mean, a motto probably belongs in the trash in the long term. But it's helpful to you. [plus][or]Who's it by? Too-Apt Pa Otto. How does the song go?[or]Potato, ...[or]TOMATO. [minus][cycling]"
neon pig	"[one of]That neon pig needs to go. For aesthetic and technical reasons. [plus][or]You can scan it, and that gives you some information. [plus][or]You'd rather have nothing there than the pig, too. [plus][or]It can become an OPENING. [minus][cycling]"
fuzzy looking wall	"You can climb up the wall with [if player has Velcro]your Velcro[else]something sticky or clingy[end if]."
gardenia	"[if player is in flowers]Try GIVEing the gardenia to the faeries. Either flower you get in return gives a solution.[else]There's a place in this area where you can trade flowers.[end if]"
building	"The building has a clue for the drainage, but otherwise, you can just go west to enter it."
sensor	"The sensor probably needs something electronic to read."
priv-camp	"The deadbeat is the main person you need to deal with, here."
lost corn	"[one of]You haven't done anything with the lost corn yet. [plus][or]The kernels look like buttons. [plus][or]The 'lost' adjective is important. [plus][or]The lost corn can become CONTROLS. [minus][cycling]"
discolored buttons	--	kernels
yellow kernels	"The different colored kernels may clue what the lost corn should be."
dry cake	"[one of]The dry cake isn't useful as-is, but it's part of something that will be. [plus][or]The cake becomes a KEYCARD. [minus][cycling]"
red optical beam	"[if keycard-put is true]You already figured how to swipe the keycard[else]You will need to swipe ID to get past the beam and the metallic door[end if]."
antlers	"[one of]The antlers are gaudy, and it'd be nice to get rid of them, but you don't have to. [plus][or]The condo owner seems to own the antlers. Maybe you could fix that. [plus][or]Make the antlers RENTALS. [minus][cycling]"
driveway	"The driveway leads to the condo[if cake is not in condo], where you're not welcome[end if]."
library	"[if words are in Bile Libe]You need to capture the words in Bile Libe[else if tomato is in Bile Libe]There's something worth taking in the alley[else]You've done all you need to in the alley[end if]."
deadbeat	"[if dry cake is in condo]The deadbeat would like you to take a stand against the condo before you take anything of value. So you should go north.[else if emitter is ungnatted]You can give the emitter to the deadbeat for a refilll.[else]The deadbeat is useless to you now."
keycard	"[if brocade is in flowers]You need to change the brocade to put it on the keycard.[else][one of]The keycard's a bit bare as is. But the brocade you have could liven it up. [plus][or]What's white with lots of black lines and a few numbers below? [plus][or]That'd be a BARCODE. [plus][or]You'll need to PUT BARCODE ON KEYCARD. [minus][cycling][end if]"
brocade	"[one of]The brocade isn't really magic, but it can become technological magic. [plus][or]What else is white and black? [plus][or]You can make a BAR CODE, no space necessay. [minus][cycling]"
adhesive backing	"Useful once you find something to attach the barcode to."
barcode	"[if barcode is part of the keycard]The barcode is now fully scannable[else if player does not have keycard]You need to find something that will hold the barcode[else]PUT BARCODE ON KEYCARD[end if]."
merchandise	"You only need the heaths or begonias."
heaths	"[one of]You can change the heaths into something that can hold something you can change the words into[if player has tagged gadget]. The tagged gadget turns up all reds, but it can't detect letter shifts[end if]. [plus][or]Make a SHEATH. [minus][cycling]"
stems	"The stems clue what the heaths can be."
begonias	"[one of]Two words on the gadget. Something that holds something. [plus][or]Also, one word is related to sound. [plus][or]Create a NOISE BAG. [minus][cycling]"
noise bag	"[if player is in Bile Libe and words are in Bile Libe]OPEN the noise bag to get the words.[else if words are in Bile Libe]The noise bag, if opened, can contain sounds.[else if player is in abyss and beast is in abyss]You can OPEN the noise bag to defeat the beast.[else if player is in abyss]The words in the noise bag can't match up to the beats, but they could, to something physical.[else]You don't need to open the noise bag yet.[end if]"
words	"[if player is in abyss]This is the place to change the words[else if begonias are in flowers and heaths are in flowers]What you do with the words depends on what reward you get from the fairies[else if heaths are in flowers]Since you got the heaths, you can change the words right away[else]With the begonias, you can't change the words until the end of your adventure[end if]."
sword	"[if beast is visible and siren is not visible]Attack the beast[else if beast is visible]You need a better grip on the sword[else if sheath contains sword]You should draw the sword around the source of the noise[else]The sword can't be used, yet. You can't go waving it in the city[end if]."
soundproofed walls	"Not useful for you but for the nerds, so they can think."
faeries	"The faeries want a flower. [if player has gardenia]You have one in your inventory[else]Maybe you can clean up some place in the city to get one[end if]."
scratchings	"They indicate the brocade [if brocade is in elf row's flowers]is[else]was[end if] free."
sheath	"[if player is in Bile Libe and words are in Bile Libe][one of]What fits in a sheath? [plus][or]Make a SWORD. [minus][cycling][else if words are in Bile Libe]You need to find something to put in the sheath. Try the Bile Libe.[else if player is not in abyss]You've got no good place to use the sword.[else]You can TAKE SWORD once you're ready.[end if]"
controls	"The controls need to fit into a recess[if neon pig is in lalaland], maybe like the one behind the pig[else], but you haven't seen or created any yet[end if]."
instructions	"Just a little something to make it plausible to muddle with the controls."
red glowing cursive script	"Provides a clue what the neon pig should become."
Pa's PSA	"Random silly PSAs I thought up."
nerds	"[one of]There are alternate ways through, but the most straightforward is to ASK NERDS the right question. [plus][or]The nerds won't let you have the lit-up tulip, until you prove you're smart enough to ask about the right thing. [plus][or]The lit-up tulip gives light, and east of Elm Train Terminal is... [plus][or]DARKNESS. [plus][or] ASK NERDS ABOUT DARKNESS. [minus][cycling]"
utterly unreadable book	"The book gives clues what to ask the nerds about."
tracks	"[if power-shut is true]You can go east on the tracks now[else]You'll need to find how to make the tracks stop fizzing[end if]."
lit-up tulip	"The lit-up tulip [if player is in abyss]is providing light[else]can provide light[end if]."
op	"[if controls are part of op]You've fixed the power.[else][one of]The opening at the top of the climbable wall is interesting. [plus][or]It appears to have a bunch of circuit-ends, etc. [plus][or]The controls can override the power surge to the east. [plus][or]PUT CONTROLS IN OPENING. [minus][cycling][end if]"
siren	"[one of]The siren is irritating. [plus][or]You can disable it and make something you need. [plus][or]It becomes RESIN. [minus][cycling]"
resin	"With the resin on your hands, you can get a better grip on things. You don't need to do anything."
hilt	"[if siren is in abyss]The hilt is too slippery to grab[else]Now that you got the resin, you can grab the hilt--and the sword[end if]."
beats	"[if player is not in abyss]Nothing to do about the beats until you get to the source.[else]The beats can be changed into a BEAST.[end if]"
beast	"You need to attack the beast with a weapon! You [if sword is off-stage]don't have one[else]can use your sword[end if]."
emitter	"[if dry cake is in condo]The emitter is useful to lower property values. Specifically, the condo's.[else]You can show the emitter to the deadbeat. The angst gnats are another way through a puzzle.[end if]"
tiles	"[one of]Hm, weird colored tiles. Blue all around. Brown. Sort of like store F and Forest. [plus][or]The TILES become an ISLET. [minus][cycling]" [START RESORT]
stile	"[one of]The tiles provide a visual clue, but the stile is just to reinforce things.[plus][or]It's reddish tinged, so you know all the letters are wrong.[plus][or]The TILES/STILE become an ISLET. [minus][cycling]"
leis	"They're not what you want to be after. You may or may not notice an anagram, here."
swing	"[one of]The swing can get you up in the air, but maybe you can go even higher. [plus][or]The swing can become WINGS, too. [minus][cycling]"
wings	"The wings will let you go up or east over the water."
cork	"The cork will let you go east over the water."
rock	"[one of]The rock would just sink in the water. [plus][or]But not if the rock became a CORK. [minus][cycling]"
poles	"[one of]The poles are just too vertical. What's something spelled like them that isn't? [plus][or]They're not ski poles, for going down a ski whatchamajigger... [plus][or]They can be a SLOPE. [minus][cycling]"
ropes	"[one of]The ropes provide safety but no traction. [plus][or]The sprig can change into something providing traction. [plus][or]It seems suctioned to the ground. [plus][or]It becomes GRIPS. [minus][cycling]"
grips	"[one of]The grips provide traction but no safety. They're not 100% reliable. [plus][or]The spore can change into something providing safety. [plus][or]What do people use to climb up rock walls? [plus][or]ROPES. [minus][cycling]"
sprig	"[one of]The sprig can change into something providing traction. [plus][or]It seems suctioned to the ground. [plus][or]It becomes GRIPS. [minus][cycling]"
spore	"[one of]The spore can change into something providing safety. [plus][or]What do people use to climb up rock walls? [plus][or]ROPES. [minus][cycling]"
slope	"You can climb up the slope [if toeholds are visible]now the toeholds are part of it[else if grips are visible and ropes are visible]with the grips and ropes[else]but don't have enough traction, yet[end if]."
tool shed	"[one of]You need a way up the slope. It's too smooth and steep. [plus][or]There are two ways through--flip the tool shed, or flip the ropes and spore. [plus][or]The tool shed isn't very useful, but maybe it can be. [plus][or]It's got some odd protrusions, which are a hint. [plus][or]They can HOLD the edge of your feet [plus][or]They're TOEHOLDS. [minus][cycling]"
toeholds	"With the toeholds around, you only need to [if poles are visible]do something with the poles[else]go up the slope, though [toho][end if]."
outcroppings	"These clue what the toolshed can become."
u-lock	"Just there to keep you out of the toolshed. Which you can change."
protest	"[one of]Three people are still a protest. How can you cut them down? [plus][or]They have REAL jobs. They make something, they say! [plus][or]Apparently they use clay and say 'It's kiln me!' [plus][or]The people in the PROTEST are really POTTERS. [minus][cycling]"
riot	"[one of]It's a riot! Way more than three people! [plus][or]How would you cut it down to three? [plus][or]Make them a TRIO. [minus][cycling]"
links	"[one of]The potters need something to do with their hands. [plus][or]The chain links have been dropped. Perhaps you could use them for less violent purposes. [plus][or]They can becoem something fragile, for a bonus point you can guess.. [plus][or]They can become KILNS. [minus][cycling]"
final-exits	"[one of]Just one thing to do. Or not do. [plus][or]You want to do something that completely ignores the EXITS. [plus][or]Another verb. [plus][or]Your work's done. Time to EXIST. [minus][cycling]"
potters	"[if kilns are off-stage]The potters need something to work with--those chain links aren't doing much right now[else]The potters are happy with their kilns[end if]."
kilns	"[if potters are off-stage]They need people to operate them--perhaps the ones around you can be changed[else]Just fine as they are now[end if]."
Burdell	"[one of]Red Bull Burdell does like yelling GET OUT. [plus][or]And changing stuff won't help you here. [plus][or]So maybe you need to change what he says? [plus][or]The gadget [if player has gadget]would be[else]was[end if] marginal help with six reds. [plus][or]He has but one weakness, blah blah blah... [plus][or]TUG TOE. [minus][cycling]"
toe	--	Red Bull Burdell
crass scars	"Helps make Red Bull Burdell more intimidating. I hope."
ransom manors	"They are there for scenery."
cutlery	--	crass scars
thirst	--	crass scars
[toh end]

to say toho:
	say "[if grips are visible and ropes are visible]you did a bit more[else]you can also meddle with the sprig and spore[end if]";

to say put-can:
	say "[one of]Examining the livers indicates they need to be processed. [plus][or]You need to put both livers in the canister. [plus][or][unless chicken liver is in lalaland]PUT CHICKEN LIVER IN CANISTER. [end if][unless cow liver is in lalaland]PUT COW LIVER IN CANISTER. [end if][minus][cycling]"

to say i-sed:
	say "[if player is not in s-e-d]in Stored, Er, Dots [end if]";

to say i-s-t:
	say "[if player is in Sorted Trodes][else]in Sorted Trodes [end if]";

section forest

carry out forest-hinting:
	if location of player is rf or location of player is sf:
		if number of visible guiders is not 1:
			all-say "There's a problem here--you should have a clue which direction to go, but you don't." instead;
		try objhinting a random visible guider instead;
	if location of player is Self-ID Fields:
		if Sorted Trodes is unvisited:
			all-say "Go east and look around a bit. There're only three rooms to start, and passing the turnstile needs stuff from each side room." instead;
		if s-e-d is unvisited:
			all-say "Go west and look around a bit. There're only three rooms to start, and passing the turnstile needs stuff from each side room." instead;
		if ones are off-stage or shades are off-stage:
			all-say "You need to solve a puzzle to the east." instead;
	if player is in trodes:
		if nose is off-stage:
			try objhinting ones instead;
		if beard is off-stage:
			try objhinting the bread instead;
		if shades are off-stage:
			try objhinting dashes instead;
	if player is in s-e-d: [this and the above two together mean that you will get local hints first before generic ones.]
		if bread is part of the sandwich:
			try objhinting sandwich instead;
	if Enclosure is unvisited:
		if coe-clue is false:
			now coe-clue is true;
			try objhinting line of no life instead;
		if player has beard and shades are part of beard and nose is part of beard:
			all-say "You've got what you need for the next bit[if player wears beard]. You are even wearing it[else]. You should just WEAR it, now[end if]. Then go through the turnstile." instead;
		if nose is off-stage:
			try objhinting ones instead;
		if bread is part of the sandwich:
			try objhinting sandwich instead;
		if beard is off-stage:
			try objhinting the bread instead;
		if shades are off-stage:
			try objhinting dashes instead;
		if beard is not wearable:
			all-say "You have everything you need to enter the turnstile, now. You can worry about stuff to the west later. PUT (item) ON (item) to create the full disguise." instead;
		all-say "You should be able to walk NORTH from the Self-ID Fields now [if beard is worn]with your disguise[else]once you wear your disguise[end if]." instead;
	if chisel is off-stage:
		try objhinting liches instead;
	if livers are off-stage:
		if player does not have chicken liver and player does not have cow liver:
			try objhinting chisel instead;
		if chicken liver is not off-stage:
			try objhinting chicken liver instead;
		if cow liver is not off-stage:
			try objhinting cow liver instead;
		try objhinting chicken liver instead;
	if sliver is off-stage:
		try objhinting livers instead;
	if spread is in Enclosure:
		try objhinting spread instead;
	if red asp is in Enclosure:
		try objhinting red asp instead;
	if drapes are in Enclosure:
		if sliver is off-stage:
			try objhinting livers instead;
		try objhinting drapes instead;
	if shotgun is off-stage:
		try objhinting noughts instead;
	if silver is off-stage:
		try objhinting sliver instead;
	if shotgun is not loaded:
		try objhinting shotgun instead;
	if player does not have maps:
		try objhinting spam instead;
	if player is in ghouls' slough:
		try objhinting maps instead;
	if player is not in frost forts:
		all-say "You should be able to go north [if player is not in Enclosure]from the enclosure [end if]now." instead;
	if player is in frost forts:
		if vowels are visible:
			try objhinting vowels instead;
		if wolves are visible:
			try objhinting wolves instead;
	all-say "I can't find anything more to do in the forest. This is probably a [bug-report]" instead;

section metros

carry out objhinting faeries when fairy-worthy is true:
	say "You've done all you can for the faeries." instead;

carry out objhinting begonias when fairy-worthy is false:
	try objhinting faeries instead;

carry out objhinting heaths when fairy-worthy is false:
	try objhinting faeries instead;

carry out objhinting tulip when tulip is in anti-cool location:
	try objhinting nerds instead;

carry out metros-hinting:
	if player is in Hotel:
		if night thing is in Hotel:
			try objhinting night thing instead;
		if player has termite emitter:
			all-say "Your work in the ol['] hotel is done." instead;
		otherwise:
			all-say "Why not search the mattress? Something's in there." instead;
	if player is in condo:
		try objhinting dry cake instead;
	if player has heaths:
		try objhinting heaths instead;
	if player has begonias:
		try objhinting begonias instead;
	if player is in underside:
		if drainage is in underside:
			try objhinting drainage instead;
		if elf row's flowers is not visited:
			all-say "Since you've got the gardenia, you can and should visit the flower shop east of the red camp." instead;
		if bile libe is not visited:
			all-say "You can go west from the camp to a library." instead;
		if dry cake is in condo:
			all-say "You should try going [if condo is visited]back north to the condo[else]north[end if]. There are several places to visit and people to deal with." instead;
		if Anti-Cool Location is not visited:
			if keycard-put is true:
				say "Just go east." instead;
			if player has dry cake:
				try objhinting dry cake instead;
			if player has brocade:
				try objhinting brocade instead;
			if player has keycard:
				if barcode is part of the keycard:
					all-say "Nothing except badly hinted verbs should be stopping you from PUTting the keycard on the sensor." instead;
				try objhinting keycard instead;
			if player has barcode:
				if dry cake is in condo:
					all-say "You need something to put the barcode on. Maybe check out the condo north of the red camp." instead;
			if player has dry cake:
				try objhinting dry cake instead;
			all-say "You will need to get by that door. You should find items lying around in the camp and the flower shop." instead;
		if nerds-unwelcome is true:
			all-say "You are pretty much done here. You've annoyed the nerds. [if heaths are in flowers and begonias are in flowers]Maybe check out the flower shop northeast[else if words are visible or sword is visible]You can maybe check the terminal to the south[else]Maybe check out the Bile Libe[end if]." instead;
		all-say "You've unlocked the way east here. You shouldn't need to do any more." instead;
	if player is in cramped red camp:
		if dry cake is in condo:
			all-say "You need to clear out the condo to gain the red camp's trust[unless player has emitter]. It may help to have a machine or something to use[end if]." instead;
		if clover is in camp:
			all-say "You can take the clover for later, or you can figure what it should be." instead;
		if lost corn is in camp:
			all-say "The lost corn will be useful as something else." instead;
		all-say "You've gotten everything you need here. There are no hidden puzzles." instead;
	if location of player is elf row's flowers:
		if player does not have brocade and barcode is off-stage:
			all-say "The brocade is free, whether or not you've helped the faeries. Why not take it?" instead;
		if fairy-worthy is false:
			try objhinting faeries instead;
		if player has gardenia:
			try objhinting gardenia instead;
		if heaths are in flowers and begonias are in flowers:
			all-say "Take a flower. Either flower." instead;
		if player has sheath or player has noise bag:
			all-say "You've transformed your flower[if words are not in Bile Libe], and you've gotten the words from the Bile Libe. So you're done here[else], but you need to use your new item in the Bile Libe[end if]." instead;
		all-say "Take a flower. Either flower." instead;
	if player is in Bile Libe:
		if motto is in Bile Libe:
			try objhinting motto instead;
		if fairy-worthy is false:
			all-say "You need something from the flower shop to do any more here." instead;
		if words are not in Bile Libe:
			all-say "You've done what you need here." instead;
		if player has heaths:
			try objhinting heaths instead;
		if player has sheath:
			try objhinting sheath instead;
		if player has begonias:
			try objhinting begonias instead;
		if player has noise bag:
			try objhinting noise bag instead;
			all-say "[one of]The words would fit nicely in the noise bag [plus][or]OPEN THE NOISE BAG [minus][cycling]." instead;
		if heaths are in flowers and begonias are in flowers:
			all-say "Pick a reward from the faeries, then come back here." instead;
		all-say "You don't have much to do here right now." instead;
	if player is in Anti-Cool Location:
		if player has lit-up tulip:
			all-say "Nothing more to do here." instead;
		try objhinting nerds instead;
	if player is in Elm Train Terminal or player is on fuzzy looking wall:
		if power-shut is true:
			all-say "You've done what you can here[if player does not have tulip]. You'll need a light source to go east across the rail[end if][if Anti-Cool Location is unvisited]. You haven't been behind the door east of the Underside, yet[end if]." instead;
		if clover is in camp:
			all-say "You need something sticky to climb the wall. Go back to the camp." instead;
		if player has clover:
			try objhinting clover instead;
		if player is not wearing Velcro and player is not on fuzzy looking wall:
			all-say "You can WEAR the Velcro to climb the wall." instead;
		if neon pig is in Elm Train Terminal:
			try objhinting neon pig instead;
		if controls are off-stage:
			if condo-evac is false:
				all-say "You need to [if camp is unvisited]see someone up north[else]please the deadbeat[end if] to get an item to replace the neon pig in the opening." instead;
			try objhinting lost corn instead;
		if controls are not in op:
			try objhinting op instead;
		all-say "You're done here. You can just go east [if tulip is in anti-cool]once you've got light[else if words are in Bile Libe]once you have a weapon[else]for the final confrontation[end if]." instead;
	if location of player is Bassy Abyss:
		if stickyhanded is false:
			try objhinting siren instead;
		if player has sword or player has sheath:
			if beats are visible:
				try objhinting beats instead;
			all-say "ATTACK BEAST. You win." instead;
		if beats are visible:
			try objhinting beats instead;
		if player has noise bag:
			try objhinting noise bag instead;
		all-say "[bug-report] I let you in with an item I should not have." instead;
	if player is in cordoned red condo:
		if player has dry cake:
			all-say "You've got the cake. You can just leave." instead;
		if player does not have emitter:
			all-say "There's something in the Ol['] Hotel that will upset the residents here, if you use it." instead;
		try objhinting emitter instead;
	all-say "[bug-report] I ran out of hints and should not have.";
	the rule succeeds;

rock-first is a truth state that varies.

isle-clue is a truth state that varies.

carry out resort-hinting:
	if player is in Astral Altars:
		try objhinting tiles instead;
	if player is in Isle:
		if cork is visible or wings are visible:
			all-say "You've found one way across the water[if cork is off-stage], though you can HINT ROCK for another[else if wings are off-stage], though you can HINT SWING for another[end if]." instead;
		if isle-clue is false:
			now isle-clue is true;
			all-say "Either item lying around can help you across the water." instead;
		if rock-first is true and rock is visible:
			try objhinting rock instead;
		else if swing is visible:
			try objhinting swing instead;
		all-say "You can just go east here now." instead;
	if player is in Rived Drive:
		if ropes are visible and grips are visible:
			all-say "You can just go east now, up the slope." instead;
		if spore is visible:
			try objhinting spore instead;
		if sprig is visible:
			try objhinting sprig instead;
		if poles are visible:
			try objhinting poles instead;
		all-say "You're done here." instead;
	if player is in Potshot Hotspot:
		if riot is visible:
			try objhinting riot instead;
		if protest is visible:
			try objhinting protest instead;
		if potters are visible and kilns are not visible:
			try objhinting links instead;
		if red bull burdell is visible:
			try objhinting red bull burdell instead;
		all-say "There is nothing more to do here except go east." instead;
	if player is in Means Manse:
		try objhinting final-exits instead;
	all-say "Unhandled case. I need to fix this, so a transcript would be an enormous help." instead;
	the rule succeeds;

ever-nerd-hint is a truth state that varies. ever-nerd-hint is usually false.

ingred-check is a truth state that varies. ingred-check is usually false.

carry out objhinting oils when oils are in cask and player is not in moor:
	say "The oils need an foundation to pour them. But you're kind of inside right now." instead;

carry out objhinting cask when sack is off-stage:
	all-say "[one of]The cask is versatile. Did you look at it? [plus][or]The tagged gadget gives it away. [plus][or]It is also a SACK, which can carry different things. [minus][cycling]" instead;

carry out objhinting an ingredient:
	all-say "[The noun] can become part of a meal." instead;

carry out sortie-hinting:
	if player is in Centrifuge:
		if numset of dial is 16:
			all-say "You don't need to do anything else here." instead;
		try objhinting dial instead;
	if location of player is the nick:
		try objhinting great instead;
	if taco is visible:
		try objhinting taco instead;
	if location of player is kitchen:
		if player wears coat or player has taco:
			all-say "Your work in the kitchen is done[if moor is unvisited]. There's one location outside this underground area to find, and your coat should help you feel more comfortable there[end if]." instead;
		if ingred-check is false and taco is off-stage:
			now ingred-check is true;
			all-say "It's a kitchen. You need to make something. But there are no ingredients around--just weird non-food items. Hmm." instead;
		if number of visible pregredients > 0:
			try objhinting a random visible pregredient instead;
		all-say "You just need to combine ingredients you've already made and PUT them on each other." instead;
	if warts are visible:
		try objhinting warts instead;
	if roomroom is visited and sack is off-stage:
		try objhinting cask instead;
	if player is in roomroom:
		if hoses are in roomroom:
			try objhinting hoses instead;
		if r2 is prefigured:
			all-say "[one of]The room is just a plain room. You feel like you want to get out, though. [plus][or]Like the kitchen, the name doesn't anagram, so maybe there's another location that does. [plus][or]The MOOR. [minus][cycling]" instead;
		if player does not have coat:
			if kitchen is unvisited:
				all-say "If you're cold, look around a bit more. There's a room you haven't been to yet." instead;
			if player does not have taco:
				all-say "You may want to go to the kitchen to prepare something." instead;
			try objhinting taco;
		all-say "Nothing more to do here, though you may find yourself passing by." instead;
	if player is in Trellis:
		if roomroom is unvisited:
			all-say "You can still visit the room to the south." instead;
		if crashing archings are in Trellis:
			say "You don't need to do anything more here. Or in Sacred Cedars." instead;
		if scraped wall is not visible:
			all-say "[if oils are in cask]You'll want to visit the moor with the oils[else]You'll probably have more to do to the east, now you opened the passage there[end if]." instead;
		if moor is unvisited:
			all-say "You have visited everywhere here, but you can break away outside. There's one place you can zap to, but not from here." instead;
		try objhinting scraped wall instead;
	if player is in sacred cedars:
		if caskfillings is 2:
			all-say "You have gotten all the oils you need here. Maybe you can pour them in the moor, again, with a different result." instead;
		if oils are in cask:
			all-say "You can't pour the oils anywhere in this enclosed area. Try going back to the moor." instead;
		if caskfillings is 0:
			all-say "[if sack is not in lalaland]Once you change the sack to a cask, y[else if player does not have cask]Once you get the cask, y[else]Y[end if]ou can FILL CASK here, to start." instead;
		if caskfillings is 1:
			all-say "You can fill the cask with more oils once more." instead;
	if player is in moor:
		if anapest is visible:
			try objhinting anapest instead;
		if peasant is visible:
			try objhinting peasant instead;
		if smilies are not in lalaland:
			if poem is unexamined:
				all-say "You should read the poem the peasant gave you. It's not terrible, but it contains some things that don't belong in a poem." instead;
			try objhinting smilies instead;
		if soil is not visible or silo is not visible:
			if cedars is unvisited:
				all-say "You need to visit the room you opened east of the trellis first." instead;
			if cask is in lalaland:
				all-say "You need to change the sack into a cask to carry the oils from Sacred Cedars." instead;
			if oils are not in cask:
				all-say "You need to fill the cask[if soil is in moor]. Yes, again[end if]." instead;
			try objhinting oils;
		if roadblock is visible:
			try objhinting roadblock instead;
		if black door is not part of the silo:
			try objhinting black door instead;
		if missile is not in silo:
			all-say "You can PUT MISSILE IN SILO." instead;
		if poem is visible:
			if poem is folded:
				all-say "[one of]The plane is useless. What can it become? [plus][or]It can become a PANEL. [minus][cycling]" instead;
			try objhinting poem instead;
		if panel is not part of the silo:
			try objhinting panel instead;
		if hoots button is visible:
			try objhinting hoots button instead;
		if trees button is visible:
			try objhinting trees button instead;
		if steer button is visible and missile-steered is false:
			try objhinting steer button instead;
		if shoot button is visible:
			try objhinting shoot button instead;
	all-say "Oops. I did not account for this hint. This is a [bug-report], and you'll need to see the walkthrough.";
	the rule succeeds;

check helping:
	if hintfull is true:
		say "Ignoring hint nag due to hint-every-move debug flag set. Only testers should see this. [bug-report] in final release." instead;

meaningful-hint is a truth state that varies.

to say hintblah:
	say "(To resist the temptation of summoning the Hint Fairy later, you can use the HINTS OFF command to disable hints until you restart.)";

chapter helpoffing

helpoffing is an action applying to nothing.

understand the command "help/info/hint/hints off" as something new.

understand "help off" and "info off" and "hint off" and "hints off" as helpoffing.

carry out helpoffing:
	if hintsoff is true:
		say "Hints are already disabled." instead;
	say "This will shut off hints for the remainder of the play session. You will need to restart to see them again. Are you sure?";
	if the player direct-consents:
		say "Done.";
		now hintsoff is true;
	otherwise:
		say "You can always shut hints off again if you change your mind.";

book silly verbs

before exiting:
	if red bull burdell is visible:
		say "You may believe in brawns over brain, but I don't. I believe in you! And your ability to exploit what Red Bull keeps repeating!" instead;
	if player is in Centrifuge and centrifuge-stopped is false:
		try going west instead;

chapter don't get a rifle


to decide whether got-flier:
	if player is in trips strip, decide yes;
	if location of player is location of arena dig, decide yes;
	if player has expo flier, decide yes;
	decide no;

chapter sing-wave-jump-sleep-show

the block showing rule is not listed in any rulebook.

check showing it to (this is the new block showing rule) :
	say "You can't think why that would impress or help or scare the present company, so, maybe not." instead;

rule for supplying a missing noun while tasting: now the noun is the player.

instead of tasting:
	if noun is saltine:
		try eating noun instead;
	say "I have nothing to state about taste."

instead of saying yes:
	say "[yn]";

instead of saying no:
	say "[yn]";

to say yn:
	say "I am not yes-no nosey...am I? NOT.[no line break][one of] (Yes and no aren't useful commands here--you'll be prompted when you need to make that choice.)[or][line break][stopping]"

rule for supplying a missing noun while swinging: now the noun is the swing.

does the player mean swinging the swing: it is very likely.

the block swinging rule is not listed in any rulebook.

instead of swinging:
	if noun is the swing:
		say "Whee! Sitting on the twine hurts a bit, but with a little shifting around, you imagine the swing could make you fly." instead;
	if noun is sword or noun is shotgun:
		say "Don't play with weapons." instead;
	say "That's probably just silly. Or risky. Or impossible." instead;

understand "drink" as drinking.

understand "drink [something]" as drinking.

rule for supplying a missing noun while drinking: now the noun is the player.

instead of drinking:
	if noun is phial or noun is lube:
		say "The lube looks sort of like mercury, now you think of it. Ugh." instead;
	if noun is oils:
		say "The oils seem too valuable for that. You're not thirsty, anyway." instead;
	if noun is beer:
		say "It's almost water, in its own way, but it's still probably much worse. Or it was. The can is empty." instead;
	if noun is drainage:
		say "Eww, don't even." instead;
	if noun is dots:
		say "But your tongue might get stuck!" instead;
	say "I show no kind grin on drinking!"

instead of waking up:
	say "Weak."

instead of sleeping:
	if mattress is visible and night thing is not visible:
		say "On that mattress? Eww." instead;
	say "On basker breaks? No!"

instead of squeezing:
	say "That's either icky or impossible or both.";

instead of singing:
	say "Oddly, when you start, you see a big sign telling you not to.";

the block waving hands rule is not listed in any rulebook

instead of waving hands:
	if player is in busiest subsite:
		say "You don't see any friends nearby, sadly. It's all a bit awkward." instead;
	if player is in notices and gateman is in notices:
		say "You've already introduced yourself. Just ask him about what you want/need." instead;
	if player is in hotel and night thing is in hotel:
		say "Bad idea. Don't know what might make it charge." instead;
	if player is in red camp:
		say "He nods in return." instead;
	if player is in condo and talkers are in condo:
		say "They pointedly ignore you." instead;
	if beast is in abyss and player is in abyss:
		say "It's not very friendly at all." instead;
	if goat is in thickets and player is in thickets:
		say "Do you expect it to wave back? It'd probably fall over trying." instead;
	if number of visible people > 1:
		say "There's someone else here, but just TALK TO them or ASK them about something instead." instead;
	say "An Inform 7 programmer waves at you from behind the fourth wall and points meaningfully to your keyboard or whatever you're typing on.";

instead of jumping:
	if player is in subsite:
		say "Apparently, it's your career that needs the jump, not you." instead;
	if player is on fuzzy wall:
		say "Bad idea. Just climb down instead." instead;
	if player is in Rived Drive:
		say "You don't get anywhere close to over the [if slope is visible]slope[else]poles[end if]. Perhaps it's better to [if poles are visible]try to [end if]CLIMB." instead;
	say "What am I supposed to do with THAT four-letter mess?"

understand the command "eat [something]" as something new.
understand "eat [something]" as eating.

instead of eating:
	if location of player is the nick:
		say "Man, you'd sure like to be somewhere you could make some food." instead;;
	if noun is info-lit:
		say "If this were a spy game, that would be ideal. But it isn't." instead;
	if noun is cake pan:
		say "Err, it's kind of metal." instead;
	if noun is grist:
		say "Ooh. It's almost edible enough. Just needs a little change." instead;
	if noun is snarled darnels:
		say "[if goat is visible]The goat did enough[else]You're the wrong sort of animal for that, but maybe you can summon the right one[end if]." instead;
	if noun is toe:
		say "That might hurt a bit, but you'd get the worst of toof-foot, or teef-feet, action." instead;
	if noun is a pregredient:
		say "Not in that form, and not by itself." instead;
	if noun is dry cake:
		say "It's not terribly palatable, and you don't need the calories. Maybe it's better as something else." instead;
	if noun is not edible:
		say "A new odd metabolism is not your magic power." instead;
	say "[if location of player is the nick]Your hunger is a hint, not a necessity[else]You won't strictly need any food for this game. Well, your character won't[end if]."

xray-vision is a truth state that varies. xray-vision is usually false.

asked-gateman is a truth state that varies.

the asking yourself for something rule is not listed in any rulebook.

Check asking something for (this is the reflexive asking for item rule):
	if player has the second noun:
		say "You already have that." instead;

the nobody gives anything rule is listed before the translate asking for to giving rule in the check asking it for rulebook.

Check asking something for (this is the nobody gives anything rule):
	if noun is gateman:
		say "'Everything here is yours. No need to ask me.'" instead;
	if noun is nerds:
		say "'You can't just bully us, man! This isn't the playground any more!'" instead;
	if noun is deadbeat:
		say "He mumbles something about the man taking everything righteous people have." instead;
	if noun is faeries:
		say "[if fairy-worthy is true]You've already pleased them[else]They remind you that you need to get a flower for them, first[end if]." instead;
	if noun is talkers:
		say "Welfare? Certainly not." instead;
	say "Asking directly for stuff doesn't work. If it were that easy, someone already would've. Maybe you want to ask ABOUT." instead;

check objasking gateman about saltine:
	now asked-gateman is true;

check throwing tomato at nerds:
	say "They're not a real menace, just annoying." instead;

check throwing tomato at:
	if second noun is deadbeat or second noun is tents:
		say "They don't deserve it. Tonight is not their poetry night[if moor is visited]. They're almost as bad as Woeful Pat[end if]." instead;
	if second noun is talkers:
		say "That would cause a brief scuffle, but it'd get cleaned up, and people wouldn't flee for good." instead;
	if second noun is faeries:
		say "They could probably make it turn back and splatter you." instead;
	if second noun is neon pig:
		say "That might feel good, but it wouldn't do anything." instead;
	if second noun is ulcer or second noun is Night Thing:
		say "A direct hit! The tomato goes into the cruel ulcer with a pulp's splup, a gish, a sigh. The Night Thing smiles at first at the ketchupiness of the tomato. Then the inner rottenness and backwards logic from the (oops, a) motto kicks in. The beast wonders what sort of villain would DO that to ketchup. It looks at you in fear, sure you have more where that came from, and retreats into an unseen hole, scratching and clawing, suddenly a Thing of no Fight.[paragraph break]The mattress the Night Thing was on is slightly but noticeably bumpy. It's also ripped open, and it's concealing something rather badly.";
		now tomato is in lalaland;
		now night thing is in lalaland;
		reg-inc;
		the rule succeeds;

check throwing it at:
	say "No worth in that throw[if noun is tomato], but it could make a mess elsewhere[end if][if second noun is night thing], but the right item mite (sic) get to him[end if]."

rule for supplying a missing second noun while throwing:
	if noun is tomato:
		if night thing is visible:
			now second noun is night thing;
		if nerds are visible:
			now second noun is nerds;
	otherwise:
		say "No need to go pitching items. [line break]";
		continue the action;

the block throwing at rule is not listed in any rulebook.

check touching:
	if noun is toe:
		say "Just touching wouldn't be enough to cause serious pain." instead;
	if noun is blades:
		say "They begin to whir at your finger's presence." instead;
	if noun is bolt:
		say "You can't quite. It's as if an invisible lock is around it." instead;
	if noun is missile:
		say "You hear a small FWEE, as if from a party favor." instead;
	if noun is Velcro or noun is fuzzy wall:
		say "Kind of rough and gritty." instead;
	if noun is thorn:
		say "Pain, a nip, like a pin." instead;
	if noun is spread:
		say "The spread lashes back--it turns into a red asp! You back off quickly, but fortunately, the asp is only a vicious guardian, not a vicious attacker[red-to]." instead;
	say "Touch's not [i]tons[r] couth." instead;

chapter examining

does the player mean doing something with location of the player: it is unlikely.

instead of doing something with the location of the player (this is the location is too general rule) :
	if current action is examining or current action is xrooming or current action is scaning, continue the action;
	say "You may need to change your location at some time, but you never need to do anything with it in a command."

xrooming is an action applying to one visible thing.

understand "x [any room]" as xrooming.
understand "examine [any room]" as xrooming.

check examining location of player (this is the fake the scenery rule) :
	try looking instead;

room-look-warn is a truth state that varies.

check xrooming:
	if room-look-warn is false:
		say "X/EXAMINE (ROOM) is usually equivalent to LOOK in Shuffling Around. Sometimes it will describe scenery for you, but it doesn't have critical information.";
		now room-look-warn is true;
	if noun is astral altars:
		say "The altars are probably mostly for showcasing the tiles and stile." instead;
	if noun is location of player:
		try looking instead; [shouldn't happen but just in case]
	say "[if noun is visited]You've been there, but you can't see that far[x-room-n][else]Sorry, I understood the verb, but I didn't understand the noun[end if].";

to say x-room-n:
	say "[one of]. X ROOM is really just the same as LOOK for the room you're in, and you don't need to look ahead or behind[or][stopping]"

chapter throwing

understand the command "throw" as something new.

understand "throw [something preferably held] at [something]" as throwing it at.

chapter exiting

definition: a direction (called myd) is viable:
	if myd is east and location of player is isle:
		if player has wings or player has cork:
			decide yes;
	if the room myd of location of player is nowhere, decide no;
	decide yes;

the can't exit when not inside anything rule is not listed in any rulebook.

check exiting:
	if number of viable directions is 0:
		say "You don't seem to have any way out. Maybe you have a puzzle to solve, here." instead;
	if number of viable directions is 1:
		let rvd be random viable direction;
		say "The only way to exit is [rvd], so let's go that way.";
		try going rvd instead;
	say "There's more than one way to leave: [list of viable directions]. So you'll need to specify which one." instead;

chapter buying

rule for supplying a missing noun while buying:
	if player is in elf row's flowers:
		if heaths are in elf row's flowers:
			now noun is heaths;
		if begonias are in elf row's flowers:
			now noun is begonias;

check buying:
	if location of player is elf row's flowers:
		if noun is brocade:
			say "The scratchings said the brocade was free." instead;
		if fairy-worthy is true:
			if player has heaths or player has sheath or player has begonias or player has noise bag:
				say "You've already traded them a favor. Plus, you have no money." instead;
			say "You can just take the flowers you want, since you did the faeries a favor.";
		otherwise:
			say "These magic faeries are above such unmagical things as currency.";
		do nothing instead;
	if noun is dry cake:
		say "It's free to invited guests. But the only way to be invited is to have money. Which you don't." instead;
	say "You don't have a lot of money in this game. Maybe you can GIVE someone an item, to trade, but buying isn't necessary." instead;

chapter pushing and pulling

the can't push people rule is not listed in any rulebook.
the can't push scenery rule is not listed in any rulebook.

check pushing:
	if noun is the player:
		say "You push yourself to find the next word that works." instead;
	if noun is tip:
		try switching on gadget instead;
	[if player has the noun:
		say "It's not pushable." instead;]
	if noun is panel and panel is part of the silo:
		say "Brute force is no way to figure what the panel does! Well, you could try mental brute force..." instead;
	if noun is black door:
		if silo is visible:
			try putting black door on silo instead;
		otherwise:
			say "Unfortunately, you don't have anything to push the door onto. Yet." instead;
	if noun is missile:
		if silo is visible:
			try inserting missile into silo instead;
		otherwise:
			say "Unfortunately, you don't have anything to push the missile into. Yet." instead;
	if noun is panel:
		say "You give a few hups but fail to push[if panel is part of the silo]. Probably better to put it on something[else]. Maybe push the buttons individually[end if]." instead;
	if noun is drapes:
		say "The drapes almost seem to enfold you as you get close. You may need to cut your way through." instead;
	say "You give a few hups but fail to push." instead;

the can't pull people rule is not listed in any rulebook.
the can't pull scenery rule is not listed in any rulebook.

check pulling:
	if noun is the player:
		say "Whew! All this wordplay makes you nervous." instead;
	if player is in hotspot and red bull is in hotspot:
		say "No, not pull, something even shorter." instead;
	if player is in Means Manse:
		say "No, something much more passive." instead;
	say "Ullp! You don't need to PULL anything in this game, though a synonym may help somewhere...and PUSH may be marginally useful." instead;

chapter fireing

fireing is an action applying to one thing.

understand the command "fire [something]" as something new.



understand "fire [something]" as fireing.

carry out fireing:
	if noun is missile:
		if missile is visible:
			if panel is visible:
				if panel is not part of silo:
					say "Maybe if you plugged that panel in." instead;
				otherwise:
					say "That panel probably holds the key to firing the missile." instead;
			say "You probably need some circuitry or machinery for that." instead;
	if noun is shotgun:
		try shooting noun instead;
	if noun is emitter:
		try switching on emitter instead;
	say "No, you were the one who got fired[if player has shotgun]. You may want to SHOOT something, though. And not just because you got fired. I hope not[end if].";
	the rule succeeds;

chapter kicking-attacking

kicking is an action applying to one thing.

understand the command "kick [something]" as something new.

understand "kick [something]" as kicking.

carry out kicking:
	if noun is beast:
		say "Maybe you know beast-fu in real life. But I'd advise using a weapon." instead;
	try attacking the noun instead;
	the rule succeeds;

instead of attacking:
	if noun is the player:
		if player has shotgun:
			try attacking the player;
		otherwise:
			say "I hope it's not the puzzles that made you try this." instead;
	if noun is not visible:
		say "You don't have any weapon with that sort of range." instead;
	if noun is gadget: [general]
		say "Boy, if that's how you treat stuff that's there to HELP you..." instead;
	if noun is knot:
		say "You fail to tonk it." instead;
	if noun is phial:
		say "The lube would ooze out and be useless." instead;
	if noun is mega ant: [intro]
		say "The ant spits, and you back off. You don't have a weapon, and you can't see any, even in the cabinet." instead;
	if noun is gateman:
		say "But he's here to help you. And he's, uh, bigger than you, too." instead;
	if noun is sandwich: [forest]
		try opening noun instead;
	if noun is spread:
		try cutting noun instead;
	if noun is a disguise-piece:
		say "You are not the fashion police, alas." instead;
	if noun is bucket:
		say "You give the bucket a good kick, but fortunately this game is about anagrams and not figures of speech." instead;
	if noun is wolves:
		if player has shotgun:
			try shooting wolves instead;
	if location of player is frost forts:
		try shooting the noun instead;
	if noun is large packet: [sortie]
		say "Peck at packet? Ack, pet! (Once your meal is ready, you'll do this.)[paragraph break]" instead;
	if noun is fridge:
		say "Fridge: grief'd." instead;
	if noun is scraped wall:
		say "Hm, pounding on it doesn't help[if hay is part of scraped wall]. You've filled it, though, and maybe you can change it more easily now[else]. The reading on the trellis seems to indicate you need to fill it first[end if]." instead;
	if noun is tall trio:
		say "Even this threesome would leave you smote here." instead;
	if noun is woeful pat:
		say "Violence against the English language should not beget physical violence." instead;
	if noun is talkers: [metros]
		say "Their inanity inspires violent fantasies, but no.'" instead;
	if noun is neon pig:
		say "No poking a pig even if your name's Penny." instead;
	if noun is nerds:
		say "[one of]'Def-con: co-fend!' they yell, seeing you tense up. [or][stopping]They're just annoying and superior, not evil." instead;
	if noun is the metallic door:
		say "As you rush at the door, you notice one of the stick figures in the warding drawing attacking a door as big and solid as this one! To save your self-esteem, you turn away and forget what you saw." instead;
	if noun is mattress:
		if bump is part of the mattress:
			say "You might to better to look at that bump before disturbing it." instead;
		otherwise:
			say "Hey, it's not the mattress's fault it only yielded a lousy termite emitter." instead;
	if noun is night thing:
		say "Just getting close to it fills you with terror. How could you attack from afar?" instead;
	if noun is deadbeat:
		say "He doesn't deserve to be beat dead. Or beat-up. Or upbeat, but that's another matter.[paragraph break]Plus it'd be more painful for people to have to listen to his version of the fight." instead;
	if noun is tomato:
		say "Why not get it all over someone, or something, else instead?" instead;
	if noun is faeries:
		say "They might spray you back with disaster asterids.";
	if noun is siren:
		say "It's surprisingly resilient, and your [if sword is visible and stickyhanded is true]sword[else]fist[end if] bounces off it. Plus, it's probably hooked up to a hidden alarm that sounds even worse." instead;
	if noun is beats:
		if player carries words:
			say "You have words, but they're drowned out by the beats." instead;
		if player carries sword:
			say "The beats seem to pulse harder, as your sword-swinging looks remarkably like some techno dance." instead;
		say "You flail your weaponless hands at how annoying the beats are." instead;
	if noun is beast:
		if player has noise bag:
			say "You have nothing that can physically attack the beast." instead;
		if player has sheath:
			if player has sword:
				metro-victory instead;
			if sword is visible:
				try taking sword;
				if player has sword:
					metro-victory instead;
				do nothing instead;
		if player has sword:
			metro-victory instead;
		say "You are stuck. [bug-report] Sorry it's so near the end of the game. All I can do is ask your help to weed it out." instead;
	if noun is riot: [resort]
		say "You don't want to see the mob act in combat." instead;
	if noun is red bull burdell:
		say "No chance of even a few slick licks. Maybe you have one last bit of verbal trickery. Or maybe you'll have to do something, too." instead;
	if noun is toe:
		say "He could pull it back quickly enough." instead;
	if forest is solved and metros is solved:
		say "You already used all the violence you need in this game." instead;
	if forest is solved or metros is solved:
		say "There's one more thing to use violence on in this game, but not [if noun is plural-named]those[else]that[end if]." instead;
	say "It'll be clear when you need violence. And how. Hopefully. You won't, often."

chapter stabing

stabing is an action applying to one thing.

understand the command "stab [something]" as something new.

understand "stab [something]" as stabing.

carry out stabing:
	if player has sliver:
		if noun is drapes or noun is spread:
			try cutting noun instead;
	if player has sword or sword is in sheath:
		try attacking the noun instead;
	say "Stab? With what you have? Bats." instead;
	the rule succeeds;

chapter kissing

the block kissing rule is not listed in any rulebook.

understand "kiss [something]" as kissing.

check kissing:
	if noun is goat:
		say "The goat doesn't seem like it appreciates affection." instead;
	if noun is the player:
		say "[if notices section is unvisited]Hooray for loving yourself even after losing your job. I guess.[else]You love yourself! You can do it! You can solve this game! You can...try something more serious next move![end if]" instead;
	if noun is faeries:
		say "You're not their type." instead;
	if noun is night thing or noun is beast:
		say "Yeah, love thy enemy, but only in thy heart." instead;
	if noun is Woeful Pat:
		say "'Please! I am not finished!'" instead;
	if noun is peasant:
		say "He has a wife. Sorry." instead;
	say "Affection's so fine. Fact." instead;

book stub verbs

chapter parseing

parseing is an action out of world.

understand the command "parse" as something new.

understand "parse" as parseing.

carry out parseing:
	consider the gadget-okay rule;
	if the rule succeeded:
		say "The game is [if parse-output is true]already[else]now[end if] parsing output from the gadget.";
		now parse-output is true;

chapter spareing

spareing is an action out of world.

understand the command "spare" as something new.

understand "spare" as spareing.

carry out spareing:
	consider the gadget-okay rule;
	if the rule succeeded:
		say "The game is [if parse-output is false]already[else]now[end if] not parsing output from the gadget.";
		now parse-output is false;

this is the gadget-okay rule:
	if show hows tag is in lalaland:
		say "You pulled off the tag, so this isn't a relevant action.";
		the rule fails;
	if notices section is unvisited:
		say "You haven't gotten a gadget with results you can parse.";
		the rule fails;
	if player does not have gadget:
		say "You need[if player is not in notices section]ed[end if] the gadget for that.";
		the rule fails;
	the rule succeeds;

chapter accessing

accessing is an action out of world.

understand the command "access" as something new.

understand "access" as accessing.

carry out accessing:
	now sr-acc is whether or not sr-acc is false;
	say "Screen reader accessible text is now [on-off of sr-acc].";
	the rule succeeds;

chapter soning

spaces-on is a truth state that varies.

soning is an action out of world.

understand the command "son" as something new.
understand the command "space" as something new.
understand the command "space on" as something new.
understand the command "spaces on" as something new.

understand "son" as soning.
understand "space" as soning.
understand "space on" as soning.
understand "spaces on" as soning.

carry out soning:
	if sr-acc is true:
		say "Spaces are on by default with screen readers." instead;
	if player does not have gadget:
		say "This option means nothing until you have acquired the gadget." instead;
	say "Spaces in gadget output are [if spaces-on is true]already[else]now[end if] on.";
	now spaces-on is true;
	pad-rec-q "spaces";
	now son-nos is true;
	the rule succeeds;

chapter nosing

nosing is an action out of world.

understand the command "nos" as something new.
understand the command "no space" as something new.
understand the command "no spaces" as something new.

understand "nos" as nosing.
understand "no space" as nosing.
understand "no spaces" as nosing.

carry out nosing:
	if sr-acc is true:
		say "Spaces are on by default with screen readers." instead;
	if player does not have gadget:
		say "This option means nothing until you have acquired the gadget." instead;
	say "Spaces in gadget output are [if spaces-on is false]already[else]now[end if] off.";
	now spaces-on is false;
	pad-rec-q "spaces";
	now son-nos is true;
	the rule succeeds;

chapter uhhsing

quiet-warn is a truth state that varies.

uhhsing is an action out of world.

understand the command "uhhs" as something new.

understand "uhhs" as uhhsing.

carry out uhhsing:
	if talk-quiet is false:
		say "You already can hear random dialogue.";
	else:
		say "Random dialogue on again.";
	now talk-quiet is false;
	the rule succeeds;

chapter hushing

hushing is an action out of world.

understand the command "hush" as something new.

understand "hush" as hushing.

carry out hushing:
	if red bull burdell is visible:
		say "[one of]Being the main villain, Red Bull Burdell's just too loud. But perhaps you can make the Talking Villain pay for his big mouth[or]You may want to pay attention to what Red Bull Burdell says every turn, since you can't zone it out[stopping]." instead;
	if talk-quiet is true:
		say "You already can't hear random dialogue." instead;
	else:
		say "HUSH on. [i][bracket]NOTE: you will still hear the first random dialogue in an area, but it will be noted as such.[close bracket][r][line break]";
	now talk-quiet is true;
	the rule succeeds;

chapter angleing

angleing is an action out of world.

understand the command "harken/rk/kn/hnk/angle" as something new.

understand "angle" as angleing.
understand "harken" as angleing.
understand "hrn" as angleing.
understand "rk" as angleing.
understand "kn" as angleing.

carry out angleing:
	if phial is not visible:
		all-say "[reject]" instead;
	if phial is in cabinet:
		if lube-asked is true:
			try taking phail phial;
			if player does not have phail phial:
				all-say "[bug-report] Please let me know how this happened." instead;
		else:
			say "You'd need to get the phial from the cabinet first." instead;
	if player does not have phail phial:
		all-say "[reject]" instead;
	if player is in sf or player is in rf:
		if thorn is not in location of player:
			say "There's a weird haze in each of the four directions--north, south, east and west." instead;
	let ANG be the number of angleable things;
	let see-others be false;
	if player is in nick:
		all-say "The nick glows all around.";
		now see-others is true;
	else if player is in roomroom:
		all-say "The whole room seems lit up.";
		now see-others is true;
	else if player is in moor:
		all-say "The whole moor seems lit up[if anapest is in moor], and the glow pulses with the anapest beat of the poem[end if].";
		now see-others is true;
	else if player is in Means Manse:
		all-say "All the exits seem lit up.";
		now see-others is true;
	else if beats are visible:
		all-say "The blue glow pulses with the beats[if words are visible], forming angry words[end if].";
		now see-others is true;
	if see-others is true:
		say "[line break]";
	if ANG is 0:
		if see-others is false:
			all-say "You stare into the blue lube for a bit, then look around. Nothing looks different here. Looks like you have very little magic to do." instead;
		else:
			all-say "There's nothing else, here, than the general glow." instead;
	if ANG > 0:
		all-say "You stare into the blue lube for a bit, then look around. You notice [if ang is 1]a weird haze[else]weird hazes[end if] around [the list of angleable things] when you do[if warts are part of the player]. Your warts also tingle[end if].";
	now all angleable things are padded;
	h-check;
	choose row with short of "to-do" in table of pad-stuff;
	if there is a known entry and known entry is false:
		say "[i][bracket]You decide to keep a running to-do entry in your notebook of stuff you haven't tackled, yet.[close bracket][line break]";
	pad-rec-q "to-do";
	the rule succeeds;

after printing the name of cake pan while angleing:
	say " (faint)";

after printing the name of antlers while angleing:
	say " (faint)";

after printing the name of banshee while angleing:
	say " (faint)";

after printing the name of static while angleing:
	say " (faint)";

after printing the name of grist while angleing:
	say " (faint)";

definition: a thing (called amiun) is unnecc:
	if amiun is cake pan or thing is grist, decide yes;
	if amiun is antlers, decide yes;
	if amiun is banshee, decide yes;
	if amiun is static, decide yes;
	decide no;

definition: a thing (called cand) is angleable:
	if cand is anapest, decide no;
	if cand is beats, decide no;
	if cand is words:
		if player is not in Bile Libe and player is not in abyss, decide no;
	if cand is cabinet and player is in notices section, decide no;
	if cand is poem and cand is not folded, decide no;
	if cand is r2, decide no;
	if cand is m2, decide no;
	if cand is warts, decide no;
	if cand is oils and oils are in sacred cedars, decide no;
	if cand is heaths:
		if player has begonias or player has noise bag, decide no;
	if cand is begonias:
		if player has heaths or player has sheath, decide no;
	if cand is visible and cand is flippable and cand is not flipped-yet, decide yes;
	decide no;

to h-check:
	if h-short-told is true:
		continue the action;
	if the player's command matches "angle":
		increment h-short;
	if the player's command matches "glean":
		increment h-short;
	if h-short > 4 and location of player is not notices section:
		all-say "[line break]After this vision, you shake your head a bit on seeing yourself taking six foot-high letters labeled ANGLE and crumpling them into AN. Then you do the same for GLEAN, which folds to GL. (Fourth wall time, to be clear--you can use four abbreviations, now.)";
		now h-short-told is true;
		pad-rec "macros";

h-short is a number that varies. h-short-told is a truth state that varies.

chapter pointing

point is a truth state that varies.

optining is an action out of world.

understand the commands "opt in" and "optin" as something new.

understand "optin" and "opt in" as optining.

carry out optining:
	if point is true:
		say "You're already being pointed to extra hints.";
	else:
		say "Now pointing you with an additional hint when you have the right anagram letters. NO TIP turns this back off.";
		now point is true;
		now pointcue is true;
	the rule succeeds.

chapter notiping

notiping is an action out of world.

understand the commands "notip" and "no tip" as something new.

understand "no tip" and "notip" as notiping.

carry out notiping:
	if point is false:
		say "You're already requesting no tip.";
	else:
		say "Now hiding tips in favor of a generic response. OPT IN turns this back on.";
		now point is false;
	the rule succeeds.

chapter certifying

annoying-switches is a number that varies.

certifying is an action applying to one thing.

understand the command "c/cer/cert/certify [something]" as something new.

understand "certify [something]" as certifying.
understand "cert [something]" as certifying.
understand "cer [something]" as certifying.
understand "c [something]" as certifying.
understand "certify" as certifying.
understand "cert" as certifying.
understand "cer" as certifying.
understand "c" as certifying.

does the player mean certifying the gadget: it is likely.

certify-short is a truth state that varies.

carry out certifying:
	if gadget is rect:
		if gadget-secured is true:
			say "CERTIFY/RECTIFY has been locked in for [if button-locked is true]good. You can only RECTIFY[else]for now, but you can PUSH SECURE to change that[end if].." instead;
		increment annoying-switches;
		now gadget is cert;
		if noun is gadget:
			say "Switching gadget to CERTIFY.";
			continue the action;
		say "(switching to certify first)";
	if certify-short is false:
		if the player's command matches the text "certify":
			say "(NOTE: when using CERTIFY, you can shorten it to CERT/CER/C in the future.)";
			now certify-short is true;
	try scaning noun;
	intro-marcos;
	the rule succeeds;

chapter rectifying

rectifying is an action applying to one thing.

understand the command "r/rec/rect/rectify [something]" as something new.

understand "rectify [something]" as rectifying.
understand "rect [something]" as rectifying.
understand "rec [something]" as rectifying.
understand "r [something]" as rectifying.
understand "rectify" as rectifying.
understand "rect" as rectifying.
understand "rec" as rectifying.
understand "r" as rectifying.

does the player mean rectifying the gadget: it is likely.

rectify-short is a truth state that varies.

carry out rectifying:
	if gadget is cert:
		if gadget-secured is true:
			say "CERTIFY/RECTIFY has been locked in for [if button-locked is true]good. You can only CERTIFY[else]now, but you can PUSH SECURE to change that[end if].." instead;
		now gadget is rect;
		increment annoying-switches;
		if noun is gadget:
			say "Switching gadget to RECTIFY.";
			continue the action;
		say "(switching to rectify first)";
	if rectify-short is false:
		if the player's command matches the text "rectify":
			say "(NOTE: when using RECTIFY, you can shorten it to RECT/REC/R in the future.)";
			now rectify-short is true;
	try scaning noun;
	intro-marcos;
	the rule succeeds;

chapter cring

cring is an action applying to one thing.

understand the command "rc/cr [something]" as something new.

understand "rc" as cring.

understand "rc [something]" as cring.

understand "cr" as cring.
understand "cr [something]" as cring.

marcos-trumped is a truth state that varies.

to gadflip:
	if gadget is cert:
		now gadget is rect;
	else:
		now gadget is cert;

to buzz-or-no-noise (ana - a thing):
	repeat through regana of mrlp:
		if the-from entry is ana:
			say "The gadget buzzes[buz-help]";
			continue the action;
	say "The gadget makes no noise.";

carry out cring:
	if gadget-secured is true:
		say "You can't use this shortcut. Your gadget is locked." instead;
	if player is in hotspot and red bull is in hotspot:
		try scaning red bull instead;
	if noun is inflexible:
		buzz-or-no-noise noun;
		the rule succeeds;
	now marcos-trumped is true;
	if noun is pig and player is not on fuzzy looking wall:
		say "You are too far away at the moment." instead;
	now ever-scan is true;
	if gadget is cert:
		say "You get to scanning, twiddling from certify to rectify and back.";
		gadflip;
		try scaning the noun;
		gadflip;
		try scaning the noun;
	otherwise:
		say "You get to scanning, twiddling from rectify to certify and back.";
		gadflip;
		try scaning the noun;
		gadflip;
		try scaning the noun;
	d "RECT-TEXT: [rect-text of noun].";
	d "CERT-TEXT: [cert-text of noun].";

chapter sging

sging is an action applying to nothing.

understand the command "sg" as something new.

understand "sg" as sging.

carry out sging:
	if notices section is unvisited:
		say "[reject]" instead;
	if player does not have tagged gadget:
		try silently taking tagged gadget;
	if player does not have tagged gadget:
		say "You need the gadget to do that." instead;
	if button-locked is true:
		say "You can't switch the gadget now it's locked." instead;
	if gadget-secured is true:
		say "You can't switch the certify/rectify tip now that it's in SECURE/RECUSE mode. But you can probably push the SECURE button to change that." instead;
	if gadget is cert:
		say "You switch the gadget to rectify.";
		now gadget is rect;
	otherwise:
		say "You switch the gadget to certify.";
		now gadget is cert;
	the rule succeeds;

book area-save

chapter retrying

retrying is an action applying to nothing.

understand the command "retry/terry" as something new.

understand "retry" as retrying.
understand "terry" as retrying.

retried is a truth state that varies. retried is usually false.

carry out retrying:
	if location of player is trips strip:
		if retried is true:
			say "This is the place you go after retrying--as you probably know. So nothing happens." instead;
		say "Nothing happens. Perhaps this is where you'd be sent back to [if sf is visited or underside is visited or Centrifuge is visited]after going somewhere like you've been[else]once you're able to look around[end if]." instead;
	if trips strip is unvisited:
		say "You haven't been to the Trips Strip yet, whatever that is, and you suspect you can't just jump ahead. Besides, you don't want to risk retrying the busiest subsite." instead;
	if mrlp is resort:
		if red bull burdell is in hotspot:
			say "No wimping out now. You can do it!" instead;
		else if red bull burdell is in lalaland:
			say "You've disposed of Red Bull Burdell[if number of solved regions < 4], so if you want to explore another region, you'll need to restart the game[end if]." instead;
		say "You don't really need to[if number of solved regions is 4]. In fact, you have nowhere else to go[else], though there's one more region to solve[end if]. Are you sure?";
		if the player direct-consents:
			do nothing;
		otherwise:
			say "Okay, back to the endgame." instead;
	repeat with JJ running through carried things:
		unless JJ is warpable:
			now JJ is in lalaland;
			add JJ to item-list of mrlp;
	repeat with JJ running through worn things:
		unless JJ is warpable:
			now JJ is in lalaland;
			add JJ to worn-list of mrlp;
	now retried is true;
	now last-loc of mrlp is location of player;
	now player is in trips strip;
	the rule succeeds;

a thing can be warpable. a thing is usually not warpable.

table of lastlocs
r	l	first-text	return-text
Forest	forest-x	"You go to the forest."	"You return to the forest."
Sortie	sortie-x	"You return to the [if last-loc of sortie is moor]moor[else]weird underground area[end if]."
Metros	metros-x	"You return to the hustle, bustle, etc."

a region has a room called last-loc.

a region has a list of things called item-list.

a region has a list of things called worn-list.

book region division

to decide what region is mrlp:
	decide on map region of location of player.

a region can be unsolved, unsolvable, bypassed or solved. a region is usually unsolved.

a region has a number called max-score. the max-score of a region is usually zero.

a region has a number called min-score. the min-score of a region is usually zero.

a region has a number called poss-score. the poss-score of a region is usually zero.

a region has a number called cur-score. the cur-score of a region is usually zero.

a region has a table name called regtab. a region has a table name called regana.

Intro is a region. max-score of Intro is 7. min-score of Intro is 4. regtab of Intro is table of intro nudges. regana of Intro is table of intro anagrams.

Stores is an unsolvable region. max-score of Stores is 6. min-score of Stores is 4. regtab of Stores is table of Stores nudges. regana of Stores is table of Stores anagrams.

Forest is a region. min-score of Forest is 15. max-score of Forest is 16. regtab of Forest is table of Forest nudges. regana of Forest is table of Forest anagrams.

Sortie is a region. min-score of Sortie is 25. max-score of Sortie is 27. regtab of Sortie is table of Sortie nudges. regana of Sortie is table of Sortie anagrams.

Metros is a region. min-score of Metros is 17. max-score of Metros is 18. regtab of Metros is table of Metros nudges. regana of Metros is table of Metros anagrams.

Resort is a region. min-score of Resort is 10. max-score of Resort is 14. regtab of Resort is table of Resort nudges. regana of Resort is table of Resort anagrams.

book fliptoing

chapter the verb

definition: a thing (called xx) is fungible:
	if xx is held, yes;
	if location of xx is location of player, yes;
	if xx is visible, yes;
	no.

fliptoing is an action applying to one visible thing.

carry out fliptoing (this is the main flipping rule) :
	let mything be the player;
	let got-yet be false;
	repeat through regana of mrlp:
		if the-to entry is noun and got-yet is false and the-from entry is visible:
			if debug-scan is true and player has gadget:
				try scaning the-from entry;
			now mything is the-from entry;
			if ff is true:
				all-say "TEST FLIP: [from-msg entry][line break]";
				the rule succeeds;
			now got-yet is true;
			say "[from-msg entry][line break]";
			if the-to entry is teleporter:
				d "Teleporter is in [location of teleporter].";
				if to-room entry is unvisited:
					reg-inc;
				move player to to-room entry;
			else:
				if the-to entry is not in lalaland and the-to entry is not in bullpen:
					reg-inc;
					if the-to entry is attics:
						min-up;
				if force-take entry is true or player has the-from entry:
					now player carries the-to entry;
				if the-to entry is prefigured:
					now the-to entry is done-for;
				if the-from entry is oils:
					move the-from entry to sacred cedars;
				if vanish entry is true:
					if the-from entry is a backdrop:
						move the-from entry to lll;
					else:
						if the-from entry is reversible:
							move the-from entry to bullpen;
						else:
							move the-from entry to lalaland;
	if player does not have the noun and noun is not visible:
		if noun is shoes:
			move noun to lalaland;
		else if noun is not teleporter:
			move noun to location of player; [may need special case for slippery sword]
	if noun is shoot button or noun is steer button:
		now noun is part of panel;
	if hintfull is true or helpdebugflag is true:
		now just-print is false;
		try mainhelping;
		now just-print is true;
	consider the notify score changes rule;
	if mything is the player:
		say "Something went wrong here. It should not have, but it did. [bug-report]";
	the rule succeeds;

after fliptoing (this is the set pronouns rule) :
	if noun is teleporter:
		set the pronoun it to location of player;
		continue the action;
	if noun is beast:
		set the pronoun him to noun;
		set the pronoun her to noun;
		continue the action;
	if noun is visible:
		if noun is plural-named:
			set the pronoun them to noun;
		set the pronoun it to noun; [if noun is singular-named: ... is grammatically proper but this seems more convenient for the user]
		if noun provides the property male and noun is male:
			set the pronoun him to noun;
		if noun provides the property female and noun is female:
			set the pronoun her to noun;
	continue the action;

after fliptoing (this is the when to increase min points after flip rule): [static is taken care of in carry out fliptoing--since you can reflip, it gets tricky]
	d "[noun].";
	if noun is nice bat: [STORES]
		min-up;
	if noun is grits or noun is pancake: [SORTIE]
		min-up;
	if noun is banshee: [FOREST]
		min-up;
	if noun is rentals: [METROS]
		min-up;
	if noun is cork or noun is wings: [begin RESORT min]
		if rock is in lalaland and swing is in lalaland:
			min-up;
	if noun is china:
		min-up;
	if noun is toeholds:
		if sprig is in lalaland:
			min-up;
		if spore is in lalaland:
			min-up;
	if noun is grips or noun is ropes:
		if toeholds are not off-stage:
			min-up;
	skip upcoming rulebook break;
	continue the action;

to poss-d:
	decrement poss-score of mrlp;

to min-up:
	d "Adding a min point for this flip.";
	increment min-score of mrlp;

to min-and:
	d "Adding a point and min point for this flip.";
	increment min-score of mrlp;
	reg-inc;

chapter special cases

before fliptoing when player is in kitchen (this is the tortilla check rule):
	if noun is taco and tortilla is visible:
		if ingredients-in-tort < 4:
			say "[one of]The tortilla's not ENOUGH of a taco yet.[or][stopping]";
			try examining tortilla instead;

before fliptoing (this is the enter pray or examine rule):
	if noun is visible:
		if noun is portal and noun is enter-clued:
			say "(entering instead)";
			try entering noun instead;
		say "(examining instead)";
		try examining noun instead;

check fliptoing (this is the should we bother flipping rule):
	if noun is not visible:
		repeat through regana of mrlp:
			if the-to entry is noun and the-from entry is visible:
				continue the action;
		if noun is sword and noise bag contains words and location of player is Abyss:
			now noise bag is open;
			continue the action;
		d "[noun] can't seem to be flipped.";
		say "You can't see anything here like that[if toga is not in Dry Yard], or changeable into that[end if]." instead;

check fliptoing silver:
	if livers are visible:
		say "The livers pulse for a moment, but...nothing happens. Perhaps they have another use, first." instead;
	if sliver is visible:
		if doorway is not in Enclosure:
			say "The sliver discolors for a moment--but it seems it is not ready yet." instead;

after fliptoing soil:
	now oils are in cedars;
	continue the action;

after fliptoing silo:
	now oils are in cedars;
	now cask is in lalaland;
	now sack is in lalaland;
	continue the action;

check fliptoing soil:
	if oils are not in cask:
		if location of player is sacred cedars:
			say "[if soil is in moor]You've already poured the soil, and bragging does not impress Lois[else]That would really clog up the tap, changing the oils in it to soil[end if]." instead;
		if oils are visible:
			say "You've found a bug, somehow. I'm sorry about this. It's not game-breaking, but it's a bug. Please type UNDO and send a transcript of what you did.";
		continue the action;
	if player is not in moor:
		say "This is not a good place to put soil. Somewhere more wide open, where you can pour the oils, too?";
		preef soil;
		do nothing instead;

check fliptoing silo:
	if oils are not in cask:
		if location of player is sacred cedars:
			say "[if silo is in moor]You've already built the silo, and bragging does not impress Lois[else]That would really clog up the tap, changing the oils in it to a silo[end if]." instead;
		if oils are visible:
			say "You've found a bug, somehow. I'm sorry about this. It's not game-breaking, but it's a bug. Please type UNDO and send a transcript of what you did.";
		continue the action;
	if player is not in moor:
		say "This is not a good place to put a silo. Somewhere more wide open, where you can pour the oils, too?";
		preef silo;
		do nothing instead;
	if soil is not in moor:
		preef silo;
		say "The moor's ground, as is, is not stable enough. You need a foundation first." instead;

chapter more special cases

[these could go to the appropriate room but it's just more shuffling around. Ha ha.]

after fliptoing resin:
	if resin is visible:
		now resin is in lalaland;
		now stickyhanded is true;
	continue the action;

after fliptoing sorbet:
	now sorbet is in lalaland;
	continue the action;

check fliptoing silver:
	if drapes are not in lalaland:
		say "The sliver wobbles but stays firm. Maybe it has a purpose before you turn it into silver.";
		preef silver;
		do nothing instead;

to say liv-preef:
	preef silver;

after fliptoing peasant:
	now pat is in lalaland;
	continue the action;

after fliptoing chisel:
	now spread is in Enclosure;
	continue the action;

after fliptoing protest:
	now chain links are in hotspot;
	continue the action;

after fliptoing slope:
	if toeholds are part of the poles:
		now toeholds are part of the slope;
	continue the action;

check fliptoing panel:
	if poem is not folded:
		say "You'd need to fold the poem into a plane, first." instead;

check fliptoing missile:
	if smilies are visible:
		if player is not in moor:
			say "[one of]Good idea, but not in here. There'd be more room for that outside where you found the poem[or]Need to get outside to the moor[stopping].";
			preef smilies;
			do nothing instead;

check fliptoing gateman:
	if gateman is visible:
		try examining the gateman instead;
	if the player's command matches the regular expression "gate ?man", case insensitively:
		do nothing;
	otherwise:
		say "[reject]" instead;
	if notices section is unvisited:
		say "The nametag seems to try to rip itself from your clothes for a moment, but it settles back down. Maybe the time isn't right." instead;
	if nametag is not visible and gateman is not visible:
		badaboom instead;
	if location of player is not notices section and notices section is visited:
		say "Your nametag twitches. Very odd." instead;
	if player is not in notices section:
		say "That's an idea, but no use summoning a gateman with no gate around.";
		preef nametag;
		the rule succeeds;
	if player wears the nametag:
		say "If you really CAN change the nametag, you don't want a gateman in your face--so you chuck the nametag away. Not really believing...";
	now nametag is in location of player;

check fliptoing beast:
	if beats are visible:
		if player is not in Bassy Abyss:
			say "That might unleash a beast on innocent citizens. If there is one, you must face it in its own lair." instead;

chapter the anagram table

table of Intro anagrams [toa] [NOTE: PUT NON SCENERY FIRST]
the-from	the-to	exact-text (topic)	text-back (topic)	from-msg	force-take	hashkey	dubdip	vanish	to-room
bulge	bugle	"bugle"	"bulge"	"The ovular shape on the door rumbles then falls off. You see that extra bit is a horn--yes, you've definitely found a bugle[if blot is visible]. It's untainted by the blot which spread to the door--and is still there[else]. Maybe, if you can't figure the bolt, the bugle can do the trick[end if]."	true	337744362	--	--	nowhere
odor	yard-door	"door"	"odor"	"The odor becomes thick and choking, then a wood you've never smelled before but know it's wood. The odor swirls into a door, with a bolt sticking out into an unseen lock, and a bulge out front.[paragraph break]Wow! Neat! You didn't know you had it in you, and you're still not sure how or why. But you're pretty sure you need to get through that door."	false	255058046	[start intro anagrams]
bolt	blot	"blot"	"bolt"	"The bolt retracts, and slowly a blot spreads over the door, which swings in and out[if bugle-played is true] just as when you played the bugle[else]. You can probably enter now[end if]."	false	249695339	"You don't want to re-lock the door."
toga	goat	"goat"	"toga"	"The dingy toga shudders. It seems to rip, make legs, and twist around, like one of those balloon animals you were never good at. And it becomes a goat. All this twisting has left the goat with an appetite, so it walks over to the delicious thickets and brambles.[paragraph break]It finds a relatively weak spot in the thickets and chomps away. Enough branches make way so that you could make it through if you crouch. Exhausted, the goat turns around three times and falls asleep.[paragraph break]Man! You actually made something living, this time. And you can even go IN through the darnels, now too[if darn-slan is true]--the ones you slandered nicely. You really took full advantage of this first bit[else], which you could maybe trash right if you think about it. Or you could just move on[end if]."	false	212250115	"The goat seems content enough as-is."
nametag	gateman	"gateman" or "gate man"	"nametag"	"Whoah! The nametag pulses and pops in directions you didn't think something that flat could. You hear a gish, then a sigh. A tall, grouchy old man in sober robes so aged you almost say 'Egad' cries 'The eyes! They see!' He grumbles how he shoulda been a portal king in the parking lot, he's such a talking pro. 'Rote scan. Ancestor? No traces.' Then he notices you. 'You--well, you brought me back. Yorpwald's been shuffled. Almost f-flushed. I'm Nat Egam, Tan Mage. See, this isn't some RPG where you can ask everyone on the way for help. I'm pretty much it[if attics are not off-stage]. Oh, nice job fixing the static, too. There'll be worse noise later, but you'll deal with that whenever[end if].'[paragraph break]'Er, oh...or, eh...'[paragraph break]'Brilliant! You're a natural!'"	false	400874126	--	true
static	attics	"attics" or "attic"	--	"[check-plur]The static cuts off and seems to grow opaque. Then it forms into a small box with a cupola, pyramid, and other shapes. They fit with a click on top of the doll house[if gateman is visible]. Nat Egam golf-claps. 'Good work, though there's worse noise later[what-about-gate].'[else]. Too bad nobody was around to see it![end if]"	false	368680251	--	true
attics	static	"static"	--	"You undo your artistic work for perhaps more practical considerations like learning how to use the new toys from the cabinet."	false	368680251	--	true

table of Stores anagrams
the-from	the-to	exact-text (topic)	text-back (topic)	from-msg	force-take	hashkey	dubdip	vanish	to-room
store b	sorbet	"sorbet"	--	"The store collapses into a greyish sorbet which is surprisingly tasteful. So tasteful, you eat it all at once and throw away the cup it came in. In a trash can behind one of the stores you can't change. Which? It's not worth remembering."	false	505285378	[start trips anagrams]
store f	forest-x	"forest"	"store f"	"The greens and browns of Store F coagulate and pull apart into an actual forest."	false	513381369
store i	sortie-x	"sortie"	"store i"	"The store rumbles, destroying the portraits of famous Tories (enjoy this, if you wish) and revealing the small sortie down[trap-check]. A stairway down remains, but that's about it."	false	531859319
store m	metros-x	"metros/metro"	"store m"	"The store rumbles, with the collections of small-scale cities disappearing. You see an escalator leading--well, somewhere populated."	false	550941626
store r	r-p	"resort"	"store r"	"Store R rumbles and reforms into something far posher. A huge resort! 'I know what you're looking at!' calls some random well-wisher. 'The Means Manse! You've earned it! For defeating Red Bull Burdell!'[paragraph break]Before you reply you haven't, he's already run behind store G, yelling 'Go! Rest!'"	false	572190276
cabinet	nice bat	"nice bat" or "be actin"	"cabinet"	"The cabinet seems to expand like an amoeba, then, POP! It becomes a rather large bat, which jumps up and down excitedly. It's clearly grateful it has become active, alive--more than just something to store things in."	false	384428789	[end trips strip anagrams]

table of Forest anagrams
the-from	the-to	exact-text (topic)	text-back (topic)	from-msg	force-take	hashkey	dubdip	vanish	to-room
ones	nose	"nose"	"ones"	"The ones line up next to each other in a pair of not quite v-shaped semicircles. Then they melt into a nose. You take it."	true	367340160
dashes	shades	"shades"	"dashes"	"Most of the dashes reform into a pair of eyeglass rims, and the remaining one fill in as lenses. They lighten a little, and you have fully functioning shades."	true	380853247
noughts	shotgun	"shotgun"	"noughts"	"Bam! The noughts slink together to form a gun barrel, then a whole big powerful gun."	true	517631877
bread	beard	"beard"	"bread"	"[process-sandwich]The bread seems to grow a fuzzy dark mold, then narrows into a sickle. It's now a beard, though not a particularly beautiful one. As you pick it up, you shake it for crumbs, and the hairs don't crumble into mold."	true	254765724
sliver	silver	"silver"	"silver"	"The sliver changes and grows even more metallic. It becomes a row of six bullets, tied together like plastic twist-off toys, but obviously more lethal."	true	515375383
livers	sliver	"sliver"	"livers"	"The livers narrow a bit and become more pointy at the end. They are a nice long sliver now[if player does not have sliver], which you pick up[end if]."	true	515375383
liches	chisel	"chisel"	"liches"	"'Dissolve, vile sods!' you cry for effect. You hear a spectral clapster![paragraph break]As the final shade heads to Hades--sad, eh?--a chisel clatters behind. The chisel doesn't seem to vibrate scarily or anything, so you take it. You're also less distracted now and notice a spread on the north wall--it seems to pulse a bit, as if it could change to something dangerous."	true	379174644
banshee	has-been	"hasbeen" or "has been" or "has-been"	"banshee"	"The banshee quits moaning and starts screaming as it's sucked in by some dimensional gate opened by a spectral clapster. A gate to--not a better place, but a better suited place. Where the fates feast. As not just a has-been but a has-has-been, its moaning will be more appropriate punishment for the souls who have done much worse than it did."	false	478682714
red asp	drapes	"drapes"	"red asp"	"Shazam! The red asp crumbles into some far less evil looking drapes. They're still too thick to walk through."	false	414086744
spread	drapes	"drapes"	"spread"	"The spread briefly turns into a red asp that jumps at you before collapsing into thicker, but less wide, drapes. You won't be able to just walk through them."	false	414086744 [must be 2nd else you get a problem with 2 points]
Spam	maps	"maps"	"spam"	"[process-sandwich]With a sickening SCHLURP, the [spam] curdles and flattens to form several maps."	true	244002896
vowels	wolves	"wolves"	"vowels"	"Well, you've done it now. The imposing vowels become werewolves--but they notice your shotgun and stand back. The first forward gets shot--or so they imagine."	false	567346084	"You don't need magic. You have a weapon."

table of Sortie anagrams
the-from	the-to	exact-text (topic)	text-back (topic)	from-msg	force-take	hashkey	dubdip	vanish	to-room
warts	straw	"straw"	"warts"	"The warts quickly peel off and lengthen into straw[drop-straw]."	false	394830378
skate	steak	"steak"	"skate"	"The skate turns reddish, and the blade cuts up the meaty bits before vanishing--how convenient!"	false	382311089
t-n	teleporter	"kitchen"	"the nick"	"That does it! The heck with that silly old grate. Your prison dissolves, and it becomes the place you meant to go all along[if straw is in the nick]--the straw remains intact, too[end if]."	false	454037543	--	--	kitchen
cult tee	lettuce	"lettuce"	"lettuce"	"The t-shirt crumples and then shreds before turning into a light green head of lettuce."	false	639757485
spearman	Parmesan	"parmesan"	"spearman"	"The spearman transforms into something cheesier--Parmesan cheese! Unfortunately, it doesn't have one of those cute plastic spears sticking from it, but you can't have everything."	false	528228134
cathouse	HOTSAUCE	"hotsauce" or "hot sauce"	"cathouse" or "cat house"	"The CATHOUSE perfume turns into a packet of equally over-capitalized and under-spaced hot sauce."	false	565124179
grist	grits	"grits"	"grist"	"With a squelch, the grist in the fridge [if fridge-open is false]you didn't even open yet [end if]refines itself into something more edible. Relatively."	false	362300335
cake pan	pancake	"pancake"	"cake pan" or "cakepan"	"You hear a clatter, and then you poke into the fridge [if fridge-open is false]you didn't even open yet[end if] to see the cake pan is a pancake."	false	354493975
tall trio	tortilla	"tortilla"	"tall trio"	"Poof! The doughy fellows maintain their breadiness, but they flatten out into a tortilla."	false	520704758
taco	coat	"coat"	"taco"	"Before changing the hot-to-your-tongue taco to a warm-to-your-body coat, you wisely take out a few small bites from the bottom (like adults always said not to) to form the arm-holes. Delicious! You ate just enough to feel fortified, and you've got something to wear, too."	false	198655998
cask	sack	"sack"	--	"The cask retains its color but looks visibly frayed as its wood turns to burlap. The sack it has become collapses in a heap on the floor. You pick it up."	true	170400547
sack	cask	"cask"	--	"The sack stiffens, rises and becomes less blobby. It's the cask again, nice and upright[if straw was in sack]. The straw falls out[end if][if hay was in sack]. The hay falls out[end if]."	true	170400547
hoses	shoes	"shoes"	"hoses"	"The pair of rubber hoses bends and opens and become a comfortable pair of shoes that swallows your old shoes--you'd forgotten how ratty they were. A few steps show walking's much smoother. So smooth, you forget you're wearing them. And the price is right, too."	false	431988917
r2	teleporter	"moor"	--	"[moor-jump]"	false	298104110	--	--	moor
m2	teleporter	"room"	--	"[if woeful pat is in moor][one of]As you pop back to the room, Woeful Pat looks visibly shocked. You have left him speechless, which is good news, but he is reaching for his pen, which is bad news for some poor soul in the future[or]Woeful Pat is less impressed this time, sniffing that it's been done[stopping].[else]'The room's smoother,' you muse...'"	false	298104110	--	--	roomroom
anapest	peasant	"peasant"	"anapest"	"Nothing happens. You worry your magic powers have failed, until a peasant strides out from the edge of the moor, carrying a bale of hay and singing a cheery song about nothing in particular. Distracted, you look over and smile.[paragraph break]'Oh, does THAT resonate with your stone ear?' whines Woeful Pat.[paragraph break]You notice his papers have crumbled (but don't worry, he has PLENTY of written drafts.) He [exp-fli]storms off, claiming you will make a perfect arch-villain in his new socially significant blank-verse epic. Or another poor henchman who deserves but one line before a horrible fate--or a mega-rip of an epigram!"	false	481939196	"You're better off changing what the peasant has than what he is."
roadblock	black door	"black door" or "blackdoor"	"roadblock" or "road block"	"Bam! The fissure in the roadblock covers up, and a black door appears where it was. It's light but bulky--you can probably put or push it where it needs to go[if pat is visible]. Woeful Pat shows commendable concentration ignoring all this[else if peasant is visible]. The Peasant cheers in appreciation, momentarily dropping his hay, which he's none too eager to pick up[end if]."	false	401417371
poem	panel	"panel"	--	"Poof! The paper plane becomes a panel. It's light enough to carry, you suppose[if player has poem or player has panel]. Well, it doesn't cause an immediate hernia[end if]."	false	334181233
smilies	missile	"missile"	"smilies"	"The smilies seem to waver. But they sever from the verse, grow, and clump together to form a big yellow missile! You reread the poem. You didn't think it would change much without the smilies, but it's snappier now, pointed, warlike--a restrained, plain-language indictment of not just bad poetry but nastiness and elitism in general!"	false	528228725
scraped wall	hallway	"hallway"	"haywall"	"Of course! The hay wall you made collapses into a hallway leading east. One you won't even have to duck through!"	false	379579638
oils	silo	"silo"	--	"You empty the cask again. The oils seep into the moor, and you drop the cask as the silo appears much quicker than you imagined possible. The cask breaks and seeps into the ground."	false	269433228 [this is kludgey code, as this line must come first even though the silo flip comes second.]
oils	soil	"soil"	--	"You empty the cask. The oils seep into the moor and make a large chunk less squishy and sandy. You could probably build something big on the moor now."	false	269433228
hoots button	shoot button	"shoot" or "shoot button"	"hoots" or "hoots button"	"The hoots button glows--you touch it (so hot,) and it changes to a shoot button as its letters shift."	false	385371437
trees button	steer button	"steer" or "steer button"	"trees" or "trees button"	"The smell of a chemical ester pervades the air as the trees button rewords to a steer button."	false	540320005

table of Metros anagrams
the-from	the-to	exact-text (topic)	text-back (topic)	from-msg	force-take	hashkey	dubdip	vanish	to-room
drainage	gardenia	"gardenia"	"drainage" or "aged rain" or "arena dig" or "dear inga"	"In a fit of ecological, aesthetic magic-slinging, you transform the drainage and all the flotsam inside it into a much prettier gardenia. The whole underside is still pretty dingy, but hey, free flower. You take it."	true	385034693
clover	Velcro	"Velcro"	"clover"	"Pop! The clover expands and grows scratchier and darker. It is now a long strip of Velcro. The leaves appear to have expanded into something resembling mittens[if player does not have Velcro]. You pick them up[end if]."	true	467466733
Motto	tomato	"tomato"	"motto" or "a motto"	"The motto--that is, both words and paper--curls up and bundles into a small sphere, and you almost [if motto is in Bile Libe]hesitate to pick it up[else]drop it[end if]. Amazingly, it's not icky-soft or anything, and it doesn't smell TOO bad."	true	421188161
lost corn	controls	"controls"	"lost corn"	"The different-colored kernels only flatten out as the lost corn collapses into a circuit board. The controls you possess--for whatever--seem powerful[if deadbeat is visible]. 'Whoah! DUDE!' moans the deadbeat, half staggering to his feet before he collapses from the effort[end if]."	true	575139873
heaths	sheath	"sheath"	"heaths"	"The heath grows, tangles around itself, and lumps into a sheath. It's too bulky to carry, so you wear it."	true	403942509
begonias	noise bag	"noise bag"	"begonias"	"The begonias twirl and create a bag. One with weird triangular spikes on the inside. You exclaim surprise at it--the bag whooshes every time you say something."	true	465539431
brocade	barcode	"barcode" or "bar code"	"brocade"	"The brocade schlurps and reorganizes into something flatter, but with the same pattern[if player does not have brocade and player does not have barcode]. You pick it up. [end if]."	true	348123886
dry cake	keycard	"keycard" or "key card"	"dry cake"	"The dry metallic cake turns into a dry metallic keycard[if player does not have dry cake and player does not have keycard], which you take for yourself. Hooray, technology[end if]."	true	430644834
antlers	rentals	"rentals" or "rental"	"antlers"	"Suddenly, a man walks in, points to his watch, takes the antlers down with a twist of his screwdriver, and walks off with them[if condo-evac is true]. You smile and nod, but he has already left. Shame on the hosts, for pretending that ugly expensive thing was theirs[else]. People mumble but stay. The free food and alcohol overcome moral imperatives to shun the fake-rich, for now[end if]."	false	537423061
neon pig	op	"opening"	"neon pig"	"[if player is on fuzzy looking wall]Remembering basic electric safety rules and common sense, you move to the side before trying your magic. This saves your bacon. [run paragraph on][end if]The neon pig goes on the fritz, sparking first, then making a big POP. The neon is none! It appears you've created an opening. Now you're bakin[']. Uh, cookin[']. (Okay, no more hamming it up.)"	false	499032209
siren	resin	"resin"	"siren"	"The siren makes some even more spastic noises before grinding into resin powder. You scoop it up and put some on your hands, which feel sticky now. You feel your chances of defeating the [beast-beats] has risen, unless you rinse."	false	423304232
beats	beast	"beast"	"beats"	"'Our beats! Saboteur!' you hear as a beast replaces the thumping with roaring, which stops when the thing needs to breathe. It's an improvement. For your chance to best a beast."	false	347796816
words	sword	"sword"	"words"	"[if player has sheath]The words go slippery, claiming they didn't mean themselves, giving passive-aggressive threats. But it is too late--they fade, and a sword appears materially.[paragraph break]You sensibly put the sword--as slippery as the final words--into your sheath[in-sheath][else]The words explode from the noise bag, which is blown away by the [which-roar]. In their place is a shining sword that [give-sword][end if]."	false	384914208

table of Resort anagrams
the-from	the-to	exact-text (topic)	text-back (topic)	from-msg	force-take	hashkey	dubdip	vanish	to-room
tiles	teleporter	"islet"	"tiles"	"The tiles crumble and shift around and spread across the floor of the altars! The stile blossoms into a tree. The ground turns softer under you"	false	425996778	--	false	Isle
rock	cork	"cork"	"rock"	"The rock grows a few holes and immediately becomes lighter. You can probably pick it up easily now. You do."	true	231615143
swing	wings	"wings"	"swing"	"The old swing's ropes defray and the seat somehow transmogrifies. You see a pair of wings. They don't look like they'll last too long, but they're better than nothing. You take them."	true	350708795
sprig	grips	"grips/grip"	"sprig"	"The fragile sprig pops into a pair of suction grips, which you take[tool-clue]."	true	340656276
spore	ropes	"ropes/rope"	"spore"	"The spore grows more quickly than you could imagine, into a couple of long ropes tied together. You wind one around your waist[tool-clue]."	true	465222414
poles	slope	"slope"	"poles"	"The poles rumble and slide. You run away, fearing they come crashing down on you--but when they stop, you're a bit disappointed to see they're still at a forty-five degree angle."	false	433712450
tool shed	toeholds	"toeholds/toehold" or "toe holds/hold"	"toolshed" or "tool shed"	"That'll do it! The tool shed crumbles, leaving only the small outcroppings--which somehow fly into the [holds-1].They're plentiful and stable. You could probably climb up now[if poles are visible] if the poles weren't so vertical[end if][ropes-grips-lying]."	false	588020474
riot	protest	"trio"	"riot"	"Your word seems to have no effect. But that's just because the least enthusiastic people in the back leave first. Others follow--one of them even drops some chain links. And soon, just three people remain. The most energetic and dedicated, of course, but altering that triangle can't be too hard. While it's still a protest, they don't seem fully into it."	false	307779244
protest	potters	"potters/potter"	"protest" or "riot"	"The trio grows even more lethargic. A fellow in a smock mocks the whole charade before throwing the smock in a corner. He talks with his two friends[if kilns are visible]. Shortly, they see the kilns nearby. They go to work happily[else]. They still aren't happy, though. They'd sort of like something to do that'll help them forget their protesting phase[end if]."	false	671442450
links	china	"china"	"china"	"The chain, or part of it, bursts into fine china, which rolls away from you. 'Hi, can...?' [if potters are visible]The potters take it immediately--'Hm! Not our thing, but very nice! If only we had something to make pottery with!' [else if protest is visible]The protesters pocket the china interestedly, saying they won't be bribed, but they did seem artsy enough to appreciate the design. [else if riot is visible]The crowd immediately tramples the china, then blames you for causing them to. [end if]Maybe you can do something with the links, instead."	false	172376056
links	kilns	"kilns/kiln"	"links"	"The links burst and swell into luxury kilns[if potters are visible]. 'Ohmigod! Him! Good!' yells one of the potters. 'This is the Mark 9000 brand with wheels underneath for easy mobility! Sir, I--I don't know why we ever protested you! We really must've had nothing better to do! Hm, the clay's scaly, but that's not your fault!'[else]. The yelling's loud as ever but increasingly directed at the kilns and not you. The protest seems distracted.[end if]"	false	316921337

chapter say commands from anagrams

to say exp-fli:
	if player has expo flier:
		say "snatches back the expo flier and ";
		now expo flier is in lalaland;

to say beast-beats:
	say "[if beast is visible]beats[else]beats";

to say check-plur:
	if player's command does not include "attics":
		say "(Okay, no need to be pedantic about plurals.) [run paragraph on]";

to say drop-straw:
	say ", which is too heavy to carry. You drop it";
	choose row with short of "warts" in table of pad-stuff;
	if known entry is true:
		say ". You run a big line through your entry on warts in your dope tan notepad";
		now known entry is false;
	move straw to location of the player;

to say give-sword:
	if stickyhanded is true:
		say "leaps into your hand";
		now player has the sword;
	otherwise:
		say "jumps and slides out of your hand";
		now sword is in Abyss;

to say holds-1:
	reg-inc;
	if poles are visible:
		say "poles";
		now toeholds are part of the poles;
	otherwise:
		say "slope";
		now toeholds are part of the slope;

to say process-sandwich:
	if sandwich is visible:
		say "[if player has sandwich]You juggle the bread and spam, but neither part falls[else]You decide to pick up the sandwich so the other part doesn't fall[end if] to the floor. ";
		now sandwich is in lalaland;
		if the player's command matches the text "beard":
			now player has spam;
		if the player's command matches the text "maps":
			now player has bread;

to say ropes-grips-lying:
	if ropes are visible and grips are visible:
		say ". You probably don't need those tools you made";
	otherwise if ropes are visible:
		say ". The ropes won't be necessary";
	otherwise if grips are visible:
		say ". The grips won't be necessary";

to say tool-clue:
	if grips are visible and ropes are visible:
		say ". The combination of grips and ropes is probably enough to make climbing gear[if tool shed is visible]. You can probably try to mess with the tool shed, but it doesn't seem like you need to[end if]";

to say trap-check:
	now tories are in lalaland;
	if td is visible:
		say ", collapsing the trap door";
	otherwise:
		say ", collapsing a trap door you hadn't noticed otherwise";
	now td is in lalaland;

to say what-about-gate:
	say ". [if player has gadget]Not much left to do for you here[else]You got the attics, but other stuff'll be tougher. Have a look in that cabinet, maybe[end if]"

to say which-roar:
	now noise bag is in lalaland;
	say "[if beats are visible]loud beats[else]beast's roaring[end if]"

book start and notepad

part dope tan notepad

the dope tan notepad is a thing. understand "pad/note" and "note pad" as dope tan notepad.

the dope tan notepad is warpable.

instead of dropping the dope tan notepad:
	say "But it's compact and can be useful to take notes.";

vaguing is an action applying to nothing.

understand the commands "consult pad" and "pad" as something new.

understand "consult pad" and "pad" as vaguing.

carry out vaguing:
	say "[cur-has]";
	the rule succeeds.

description of dope tan notepad is "You just like it. The color, the feel. It might not be a top-end notepad, but it feels like one. [cur-has]"

check examining dope tan notepad for the first time:
	say "It's your workbook. It holds bookwork. Not a thrilling color to most, and one of many you bought cheap a long time ago, and they haven't run out yet. It's small enough to fit in a pocket, and you have clipped what you call your 'toad pen' over it, too[one of]. It helped you through a lecture from this morning[or][stopping].[paragraph break](To use the notepad, you can type PAD (subject) or CONSULT PAD ABOUT (subject). If you forget what you've written about, you can type PAD or CONSULT PAD.)" instead;

to say cur-has:
	say "Currently you can consult the notepad about:[line break]--";
	let A be 0;
	repeat through table of pad-stuff:
		if known entry is true:
			if remainder after dividing A by 4 is 0:
				say "[if A > 0].[line break]--";
			otherwise:
				say ", ";
			increment A;
			say "[short entry]";
	if A > 0:
		say "."

the toad pen is part of the dope tan notepad. the toad pen is amusing.

description of the toad pen is "It's green, and it hasn't croaked yet, thus 'toad.' It's securely clasped over the pedanto-notepad.."

instead of taking a person:
	say "Your power isn't superhuman strength."

instead of taking the pen:
	say "Bad idea. You tend to lose those things like nobody's business if they're not attached."

to say found-status of (a - a region):
	if a is solved:
		say " (solved)";
	otherwise:
		say " (opened)";

to say reso-maybe:
	if store r is prefigured:
		say " (resort, not opened)[run paragraph on]";

to say opts-list:
	if gadget-active:
		say "[2dn]PARSE interprets the gadget's clues, and SPARE hides them. PARSE is currently [on-off of parse-output].";
	verbsplain "opt in/no tip";
	verbsplain "random dialogue";
	verbsplain "access";
	verbsplain "spaces"

to decide whether gadget-active:
	if show hows tag is in lalaland:
		decide no;
	if notices section is unvisited:
		decide no;
	if player does not have gadget:
		decide no;
	decide yes;

to say verb-list:
	say "[2dn]X or EXAMINE an object. If an object has writing, READ it instead of X WRITING.";
	say "[2dn]The four directions, north, south, east and west.";
	say "[2dn]PAD to see a list of topics. Then PAD VERBS, for example.";
	say "[2dn]VERB/VERBS shows this, OPTIONS shows options you can change, and informational meta-commands include ABOUT, CREDITS, TECH, SITES, and RELEASE.";
	if gadget-active:
		if button-locked is false:
			choose row with short of "macros" in table of pad-stuff;
			if known entry is true:
				say "[2dn]RC or CR lets you scan both ways.";
	choose row with short of "rectify" in table of pad-stuff;
	if known entry is true:
		say "[2dn]RECTIFY[if rectify-short is true], or RECT/REC/R for short,[end if] has the gadget rectify the first and last letters of what you need.";
	choose row with short of "certify" in table of pad-stuff;
	if known entry is true:
		say "[2dn]CERTIFY[if certify-short is true], or CERT/CER/C for short,[end if] has the gadget certify which letters are correct in the thing you wish to change.";
	choose row with short of "angle" in table of pad-stuff;
	if known entry is true:
		say "[2dn]ANGLE lets you see what can be changed, while GLEAN gives you more general hints about your direction.";
	verbsplain "xx";

to verbsplain (t - text):
	choose row with short of t in table of pad-stuff;
	if known entry is true:
		say "[2dn][blurb entry][line break]";

table of pad-stuff
topic (topic)	known	blurb	short	verify
"notepad/pad/note" or "note pad"	true	"You keep the date you started using your notebooks on the inner front cover. This one's from three years ago."	"notepad"	false
"verbs/verb"	true	"[verb-list]"	"verbs"	false
"options/option" or "post opts" or "ops"	true	"[opts-list]"	"options"	false
"access"	true	"ACCESS toggles screen reader accessibility."	"access"	false
"space/spaces"	false	"SPACES toggles whether you have an extra space in raw gadget results. SPACE(S) ON/SON forces it on, while NO SPACE(S)/NOS forces it off."	"spaces"	false
"lecture"	true	"An hour-long pre-lunch lecture by some fellow named Curt Lee netted you three pages of doodles. You remember him saying how ONE WORD could open a NEW DOOR in this age of technological innovation if you picked the right one, and that's more magic than real magic, if real magic existed, which it doesn't.[paragraph break]But hey, at least lunch was nice."	"lecture"
"store/stores/malls/shop/shops/lots/mall"	false	"--[if forest-x is visible]Forest[found-status of forest][else]Store F[end if][line break]--[if sortie-x is visible]Sortie[found-status of sortie][else]Store I[end if][line break]--[if metros-x is visible]Metros[found-status of metros][else]Store M[end if][line break]--[if resort is visible]Resort[found-status of resort][else]Store R[reso-maybe][end if]"	"stores"
"opt in" or "opt/notip/optin/tip" or "no tip"	false	"OPT IN gives you more detail when you are on the right track. NO TIP gives you less detail but lets you know you have the right anagram."	"opt in/no tip"	false
"poss"	false	"POSS toggles if you see the possible minimum and maximum scores on solving a region. It's a small spoiler/clue for last lousy points."	"poss"
"store 6/six/f" or "6/six/f"	false	"Store F is very leafy and woodsy."	"store f"
"store i/9/nine" or "i/9/nine"	false	"Store I appears to have a weird exit."	"store i"
"store m/13/thirteen" or "m/13/thirteen"	false	"Store M appears to open to a whole metropolis."	"store m"
"store r/18/eighteen" or "r/18/eighteen"	false	"Store R doesn't appear to be open yet."	"store r"
"macros"	false	"[tell-macros][run paragraph on]"	"macros"
"writing"	false	"You need to READ or EXAMINE something instead of the WRITING on it."	"writing"
"c/cer/cert/certify"	false	"1 beep = 1 word, buzz = already changed, silence = nothing.[line break]red/green = right/wrong letters."	"certify"
"r/rec/rect/rectify"	false	"green dot = 1st letter. Red dot = last letter. Blue = the rest."	"rectify"
"secure"	false	"Having SECURE activated will make the gadget less useful on any one puzzle but will let you skip a chunk of your quest later. SECURE will be locked once you visit certain places. The button will flash when you need to choose."	"secure"
"recuse"	false	"If you secured, RECUSE will come in handy once you've solved two quests, to skip a third."	"recuse"
"talking"	false	"ASK for other people, or just say the word/s otherwise."	"talking"
"goat/toga"	false	"Certify = [rcn][gc][rc][rc] and Rectify = [rcn][bc][gc][bc]."	"the goat"
"warts"	false	"[if warts are visible]'No, too stupid a fad. I put soot on warts.' But what's too stupid?[else]This puzzle's crossed out. You feel good about that.[end if]"	"warts"
"red bull burdell" or "red/ bull/ burdell/" 	false	"The guy I need to beat. Probably not with strength or anything like that."	"Red Bull Burdell"
"broad/board"	false	"[if location of player is notices section]It's got notes on needing two simple 7-letter portmanteaux[how-many-notices][else]You're past the bit about the introductory puzzles.[end if]"	"board"
"terry" or "retry"	false	"RETRY gets Terry to send you [if trips strip is visited]back [end if]to the Trips Strip[if trips strip is unvisited], wherever that is[end if]."	"retry"
"advice"	false	"--Nothing over eight words. Maybe one two-word deal.[line break]--Red Bull Burdell is much bigger and stronger than you. Traditional fighting won't work."	"advice"
"phial" or "lube"	false	"Worth looking into. Though you probably just want to ANGLE and GLEAN."	"lube"
"angle"	false	"Lets you see what can be changed."	"angle"
"glean"	false	"Lets you glimpse what you need to do."	"glean"
"to-do" or "todo" or "to do"	false	"What's on tap right now: [if number of padded flippable not flipped-yet things is 0]nothing[else][list of padded not inflexible not flipped-yet things][end if]."	"to-do"
"flips"	false	"[what-can-flip]"	"flips"
"random/dialogue" or "random dialogue" or "uhhs/hush"	false	"UHHS turns on random dialogue, HUSH turns it off."	"random dialogue"	true
"xx"	false	"You can XX after you eat the saltine in order to see what an item should be. This has one use, and benign items do not waste it."	"xx"	true
"red/redness"	false	"Any words that are red, or make you see red, or make people turn red, are all wrong, just like Red Bull Burdell. This is handy to know--what do you need to mess with? And how shouldn't it be messed with?"	"red"

pf-warn is a truth state that varies.

to preef (flipper - a thing):
	if flipper is unfigured:
		say "[i][bracket]That's worth noting in your notepad for later, so you do[one of][or], once again[stopping], under FLIPS.[close bracket][r][line break]";
	now flipper is prefigured;
	choose row with short of "flips" in table of pad-stuff;
	now known entry is true;

table of preflip clues [this must have a regular item first due to a small bug in 6g]
preflip	pretodo
nametag	"nametag -> gateman" [intro]
cabinet	"cabinet -> nice bat" [stores]
silver	"[if livers are not in lalaland]LIVERS -> sliver[else]livers -> SLIVER[end if] -> silver" [forest]
drapes	"spread -> [if red asp is in Enclosure]RED ASP -> [end if]drapes"
sack	"cask -> sack" [sortie]
r2	"room -> moor"
hallway	"[if hay is part of scraped wall]wall -> HAYWALL[else]WALL -> haywall[end if] -> hallway"
soil	"oils -> soil"
silo	"oils -> silo"
sword	"words -> sword" [metros]
keycard	"dry cake -> keycard"
store p	"store p -> PRESTO in A Roiling Original" [stores-misc]
store u	"store u -> routes in A Roiling Original"
store v	"store v -> troves in A Roiling Original"
store w	"store w -> towers in A Roiling Original"
store y	"store y -> oyster in A Roiling Original"

to say what-can-flip:
	if pf-warn is false:
		if word number 1 in the player's command is not "pf":
			say "[i][bracket]Note: you can abbreviate this with PF in the future.[close bracket][r][line break]";
			now pf-warn is true;
	if number of prefigured things is 0:
		say "You have nothing else you figured in advance.[no line break]";
		continue the action;
	say "Stuff you figured, but you couldn't use it right away: ";
	repeat with pft running through prefigured things:
		if pft is a preflip listed in table of preflip clues:
			choose row with preflip of pft in table of preflip clues;
			say "[line break][pretodo entry]";
		else if pft is a the-to listed in regana of mrlp:
			d "[line break]NEED AN ENTRY";
			choose row with the-to of pft in regana of mrlp;
			say "[line break]Deal with [the-from entry]: [the-to entry]";
		else:
			say "[line break]You remember you need to think [pft] at some time.";

to say tell-macros:
	if marcos-trumped is true:
		say "CR/RC (something) = C (something) + R(something).";
	if h-short-told is true:
		say "ANGLE=AN to see changeable items, GLEAN=GL to see the story ahead."

to say how-many-notices:
	if gateman is in notices section:
		if getaway is in notices section:
			say ", both of which you got";
		otherwise:
			say ", of which you've got one--the nametag/gateman";
	otherwise:
		say ", which you need to figure out. The nametag seems to change to someone who can help you with whatever the gateway should become";

[how to include a topic IN WORDS]

chapter pfing

pfing is an action applying to nothing.

understand the command "pf" as something new.

understand "pf" as pfing.

carry out pfing:
	now pf-warn is true;
	if player does not have dope tan notepad:
		say "You need your notepad to use the PF shortcut.";
	else:
		choose row with short of "flips" in table of pad-stuff;
		if known entry is false:
			say "You consult your notepad but haven't figured any flips in advance yet." instead;
		try consulting dope tan notepad about "flips";
	the rule succeeds;

chapter consulting

the block consulting rule is not listed in any rulebook.

consulting is an action applying to one thing and one topic.

check consulting it about:
	if noun is not notepad:
		say "You can only really consult your notepad. ASK something animate, if you want to." instead;
	repeat through table of pad-stuff:
		if known entry is true and topic understood includes topic entry:
			say "[blurb entry][line break]";
			the rule succeeds;
		otherwise:
			do nothing;
	say "You haven't written anything about that. [cur-has]";
	the rule succeeds;

chapter padding

understand the command "pad [text]" as something new.
understand "pad [text]" as padding.

padding is an action applying to one topic.

carry out padding:
	try consulting notepad about topic understood instead;

part begin-play

sr-acc is a truth state that varies.

when play begins (this is the don't use any other besides status window when play begins rule):
	repeat with Q running through things:
		if Q is a sto:
			move Q to Trips Strip;
	now last-loc of sortie is Centrifuge;
	now last-loc of resort is Astral Altars;
	now last-loc of metros is underside;
	now last-loc of forest is sf;
	now the peasant has the hay;
	say "Shuffling Around has accessibility features for the vision impaired that make a hinting device more readable. Would you like to activate them?";
	if the player no-consents:
		now sr-acc is true;
	say "OK. This can be toggled at any time with ACCESS.";
	say "So you just got fired from the best company ever, but it's the best day of your life. Because, new opportunities! New horizons! New ways to look at things! Like calling this stupid kiss-off job fair a 'convention.' As you are stuffed in a slow slow elevator up to the next lecture, you hope there's some way out...";
	move player to Busiest Subsite, without printing a room description;
	now player wears magenta nametag;
	now player has the dope tan notepad;
	now left hand status line is "[location of player] ([mrlp])[last-scan-thing]";
	now right hand status line is "[cur-score of mrlp]/[if possibles is true][poss-range][else][max-score of mrlp][end if][if Trips Strip is visited] [bracket][number of solved regions][close bracket][end if]";
	set the pronoun it to the above-sign;
	sort the table of iconmaps in random order;

last-was-cert is a truth state that varies.
scan-to-header is a truth state that varies.

to say last-scan-thing:
	if last-scan is nothing or last-scan is in lalaland:
		continue the action;
	now scan-to-header is true;
	say " || ";
	say "[last-scan]:[if last-was-cert is true][rgtext of last-scan][else][rgbtext of last-scan][end if]";
	now scan-to-header is false;

to shuffle-chat-lists:
	repeat through table of megachatter:
		if there is no ent-per entry:
			now ent-per entry is 1;
		if there is no end-count entry:
			now end-count entry is 0;
		now done-once entry is false;
		sort mytab entry in random order;
		now table-size entry is number of rows in mytab entry;
		if there is a lasties entry and number of characters in lasties entry > 2:
			increment table-size entry;
		if there is a maxidx entry:
			if maxidx entry is 0 or maxidx entry > number of rows in mytab entry:
				now maxidx entry is number of rows in mytab entry;
		now curidx entry is 0;
		if there is no maxbeforepause entry:
			now maxbeforepause entry is 30;

to place-random-garbage:
	if a random chance of 1 in 2 succeeds:
		now blot-first is true; [hint blot or bugle at door]
	if a random chance of 1 in 2 succeeds:
		now rock-first is true;	[hint rock or swing 1st]
	if a random chance of 1 in 2 succeeds: [what appears in metros]
		now arena dig flier is in underside;
	otherwise:
		now love letter is in underside;
	move random guider to sf;
	d "[random guider in sf] in SF.";
	move random off-stage guider to rf;
	d "[random guider in rf] in RF.";

check going when player is in sf or player is in rf:
	if player is in sf or player is in rf:
		let mygu be a random visible guider;
		if noun is godir of mygu:
			say "The [mygu] seems to be pushing you [noun]. Walking that way, there aren't many obstacles or branching paths[one of][or] again[stopping].[paragraph break]";
			if player is in sf:
				say "You wind up in an area that doesn't look that much different but feels a bit colder.";
				reg-inc;
				move player to rf;
				the rule succeeds;
			else:
				say "You follow the path some more, really getting somewhere. 'Mastery of a forest, my!' you say, feeling vainer and promptly tumbling into a ravine! It's too steep to climb, so you walk on some more...";
				reg-inc;
				move player to self-id fields;
				the rule succeeds;
		if noun is inside or noun is outside:
			say "Any of the four directions could lead inside somewhere else, or outside the forest. So you need to figure which." instead;
		say "You go [noun] a bit, but the paths and vegetation multiply. Percuss-spruces behind bush-hubs make warning noises that drive you back to where you were." instead;

to set-other-default:
	now cask is not flipped-yet;

when play begins (this is the initialise anagrams pad and beats rule) :
	now all rooms in metros are noisy;
	now red condo is not noisy;
	now anti-cool is not noisy;
	move beats backdrop to all noisy rooms;
	repeat through table of pad-stuff:
		if there is no verify entry:
			now verify entry is true;
	repeat with Q running through regions:
		now poss-score of Q is max-score of Q;
		repeat through regana of Q:
			if the-from entry is not a room:
				now the-from entry is flippable;
			if there is no vanish entry:
				now vanish entry is true;
			if there is no force-take entry:
				d "no force-take for [the-from entry]/[the-to entry].[line break]";
				now force-take entry is false;
	place-random-garbage;
	shuffle-chat-lists;
	now red bull is in bullpen;
	now redness is in bullpen;

check taking scenery:
	say "Taking scenery is either illegal or physically impossible or both.";
	reject the player's command;

section inventory stubs

check taking inventory:
	if the first thing held by the player is nothing:
		say "Not very 'in.'" instead;
	say "Item time! [run paragraph on]";

after printing the name of the emitter while taking inventory:
	say " ([if emitter is angstgnatted]full of angst gnats[else if condo-evac is false]full. Uh, you think[else]nothing inside[end if])";

after taking inventory:
	if stickyhanded is true and player is in abyss:
		say "You also have sticky hands." instead;
	if xray-vision is true:
		say "The aftertaste from the salient saltine remains. If you stare at things, they can become--different. Perhaps you could XX something that's stumping you.";
	continue the action;

book intro

chapter Busiest Subsite

Busiest Subsite is a room in Intro. "This is the ritziest hotel you'll ever stay in. Terraces are west, a banner hangs over an auditorium entry to the east, and the elevator you came from is to the south. North's got an ominous name list tacked on by it.[paragraph break]There's a sign over an odd side passage the bustling, babbling masses seem to be ignoring."


last-loc of Intro is Busiest Subsite.

grims is a truth state that varies.

every turn when player is in busiest subsite:
	if turn count is 4 and grims is false:
		say "'Non-grim morning!' you hear a voice call. It seems to be coming from that passage, and when you focus there, it repeats. You're guessing someone wants you to look there.";
		now grims is true;

the bustling masses are useless scenery in Busiest Subsite. understand "people" as bustling masses.

Include (-
	has transparent animate
-) when defining bustling masses.

the odd side passage is scenery in Busiest Subsite. "It's just under the NONE TRY sign. You could probably ENTER it, or go INSIDE. It's not really any direction you can tell, and you could have sworn it was near a different exit before you turned your back on it just a bit ago. It curves quickly so you can't see much of it."

instead of entering or following the side passage:
	try going inside;

description of masses is "Very diverse, yes, but equally drawn to whatever's to the east. You don't share their eagerness."

the auditorium entry is useless scenery in busiest subsite. "You'd love any excuse not to join everyone else going there."

the caterers' terraces are plural-named amusing scenery in subsite. "You can't see the caterers working on the terraces, and you probably don't want to disturb them."

The banner is amusing scenery in Busiest Subsite. "'This way: BEING FIRED!'[one of] People walk by, discussing how the DEBRIEFING should make Mondays dynamos again.[or] You're run over by people saying 'This talk will be a FINE BRIDGE to a new job!'[or] Has nobody else noticed this sign? Or what it says?[stopping]"

cycled-yet is a truth state that varies. cycled-yet is false.

the slim neat name list is scenery in Busiest Subsite. description of name list is "[one of]The list is slim, but it's long. Several names[or]More names[stopping]: [randbla][unless cycled-yet is true]. [one of]A list of names has always left you feeling like you wouldn't fit in, but this is a step beyond[or]Okay, maybe your name will stand out among these others. Maybe even the right way[or]It's as if someone, or something, is hinting you don't really belong at this job fair[or]Man! So many applicants, so few jobs[or]The names can't all be like this. It's just one more obstacle against you getting re-hired. Grr[or]This is a joke, right? Then someone else writes their name down, and yup, it's in tune with the others[or]You half expect Candid Camera to pop up, or maybe your old psychology professor[or]What is the deal here? Did some computer drudge run a PERL script and spit these names out as a joke? If so, you wonder what their problem is, and if they have anything better to do, and if they got canned like you did. You definitely would hate to be stuck sifting through their work or jokes for a few hours. That'd be painful[or]You're slightly disappointed and glad that there's nobody with the same last and first names, yet[or]Maybe there's a really weird Fermi question in here somewhere, or it's like that freshman year high school 'quiz' that said read everything before doing anything, then the final step was, sign your name[or]Your morbid curiosity is, apparently, not dead yet[stopping][end if]."

after examining name list for the first time:
	say "Someone mutters, 'Bob Smith. Joe White. Bill Jones. Sure they're nice people, but not worth staring at...'[paragraph break]You're not seeing that at ALL. Hmm.";
	continue the action;

check taking name list:
	say "That'd get you escorted out." instead;

instead of following banner:
	try going east instead;

the above-sign is privately-named scenery in Busiest Subsite. the printed name of above-sign is "the sign above the passage". understand "sign" as above-sign when player is in subsite.

instead of taking above-sign:
	say "[grounds]";

instead of taking banner:
	say "[grounds]";

to say grounds:
	say "Appropriation of company property is potentially a fireable offense. Oh, wait. It's just useless, seriously."

instead of taking brazier:
	say "That'd probably be illegal.";

description of above-sign is "It says NONE TRY, and it's just above a side passage people are ignoring."

instead of entering passage:
	try going inside instead;

check going north in Busiest Subsite:
	say "That way's a costlier cloister of rooms than recent firees deserve. The measure-a-resume event will be there, but not for another couple hours. You don't really want to deal with agents or headhunters now, anyway[if name list is unexamined], but the name list catches your eye[else], though the name list seems to be mocking you to read it again[end if].";
	been-check north instead;

check going east in Busiest Subsite:
	say "That way's an hour or two of listening to an under-action denunciator. You sure?";
	if the player no-consents:
		say "You look back at the [if above-sign is examined]NONE TRY passage[else]passage you ignored--NONE TRY above it[end if]. Well, obviously it should say NO ENTRY. You hope whatever new job you find has a decent vision plan. But you realize you can't be fussy.[paragraph break]One more look back as you sit in one of the asset-seats. Someone else walks through--he's wearing the same color nametag you are. During the talk--based on a horrendous bowdlerization of Robert Frost's [i]The Road Less Traveled[r]--you mark the feedback survey 'gave core coverage' and try to convince yourself you weren't really missing anything. It doesn't quite work. Maybe you could've done something else?";
		end the story;
	otherwise:
		say "You sort of procrastinate the lecture, thinking it'd be fun to just ditch.";
		been-check east instead;

check going south in Busiest Subsite:
	say "You already spent too much time in the overlate elevator.";
	been-check south instead;

check going outside in Busiest Subsite:
	if above-sign is examined or passage is examined:
		say "Do you mean trying the passage?";
		if the player yes-consents:
			try entering the passage instead;
		otherwise:
			say "Well, it's still there, if you want to enter it." instead;
	say "There are many ways out. You may want to be more specific or have somewhere interesting or unusual in mind." instead;

to decide whether the player yes-consents:
	(- YesOrNoExt(1) -).

to decide whether the player no-consents:
	(- YesOrNoExt(0) -).

Include (-

[ YesOrNoExt yn;
	if ( (+ debug-state +) == 1)
	{
	    return yn;
	}
	return YesOrNo();
];

-)

the overlate elevator is amusing scenery in Busiest Subsite.

description of elevator is "It's closed, now, on its way to being late for the next batch of people.";

check entering elevator:
	try going south instead;

check opening elevator:
	say "Foolhardy." instead;

check going west in Busiest Subsite:
	say "The Caterers['] Terraces are west. They're rendin['] dinner. You see someone sweating over a bizarre brazier, hear how this next lecture will 'Prep us for supper,' and promptly lose your will to do anything for a minute.";
	been-check west instead;

the brazier is amusing scenery in subsite. "It's a brazier. [bug-report]"

instead of doing something with the brazier when brazier is visible:
	say "Next meal's too far off, and you've got no business on the terraces.";

check examining (this is the examine-dirs rule):
	if noun is a direction:
		say "[if the room noun of location of player is nowhere]That doesn't seem to lead anywhere.[else]Just try going that way instead. Don't be scared! You can always undo![end if]" instead;

check going inside in Busiest Subsite:
	say "Someone tugs you by the arm. 'Can't you read? It says NO ENTRY! Quit dawdling and get to the DEBRIEFING already!'[paragraph break]You check and make sure. No, still NONE TRY. As you brush him off, you hear 'Nice. Smart. Miscreant!'[paragraph break][wfak]";
	say "The voice cuts off. The passage behind is gone. You shake off a momentary fear missing the lecture will go in your life file.";
	set the pronoun it to odor;
	now player is in Dry Yard instead;

instead of thinking:
	say "Yes, I hope this game makes you do a little of this, but nothing painful."

check dropping magenta nametag:
	if player is in subsite:
		say "Enough people have discarded their nametags carelessly. No littering please." instead;
	if player is in Dry Yard:
		say "Littering in a nature-filled area like this is not a good idea." instead;

dirs-missed is a number that varies. dirs-missed is 0.

to been-check (subdir - a direction):
	choose row with mydir of subdir in table of subsitedirchecks;
	if explyet entry is true:
		continue the action;
	now explyet entry is true;
	increment dirs-missed;
	choose row dirs-missed in table of subsitedirchecks;
	if there is a blabola entry:
		say "[blabola entry]";

table of subsitedirchecks
mydir	explyet	blabola
north	false	--
south	false	"[line break]Your eye catches the side passage, which looks more interesting than the standard ways out. Maybe you could give it [if above-sign is examined or odd side passage is examined]another [else]a [end if]look.[line break]"
east	false	"[line break]You feel sort of cornered by all the main passages. Sneaking off anywhere would be kind of fun.[line break]"
west	false	"[line break]The standard, usual directions don't seem to cut it. But there has to be somewhere else.[line break]"

check exiting in busiest subsite:
	try going outside instead;

section magenta nametag

the magenta nametag is a thing. rgtext of magenta nametag is "[rcn][gc][rc][gc][rc]*[rc]". lgth of nametag is 7. gpos of nametag is 7. rpos of nametag is 1. cert-text of nametag is "-[ast]A[d1][ast]E[d1][ast]A[d1]". rect-text of nametag is "G[d1][d1][d1][d1][d1][ast]N".

does the player mean doing something with the magenta nametag:
	if notices section is not visited:
		it is possible;
	if the nametag is not visible:
		it is very unlikely;
	if the show hows tag is examined:
		it is unlikely;
	if the tagged gadget is examined:
		it is unlikely;
	it is possible.

understand "tag" and "name tag" as nametag.

instead of taking off show hows tag:
	try taking show hows tag;

does the player mean examining the show hows tag when the tagged gadget is handled or tagged gadget is examined: it is likely.

description of magenta nametag is "[nametag-desc]"

check taking off magenta nametag (this is the remove your tag or gadget tag rule) :
	if player is in busiest subsite:
		say "Nobody really cares about nametags, but someone'd give you grief for it." instead;
	if player has gadget:
		if the player's command includes " tag" and the player's command does not include "name":
			say "You consider doing something with the show hows tag, but maybe you should wait for someone with more practical knowledge...";
			try taking off show hows tag instead;

report taking off magenta nametag when player has gadget:
	say "You remove the magenta nametag, which seems safer and easier than futzing with the gadget's [if tag is examined]show hows [end if]tag.";

to say nametag-desc:
	if player is in Dry Yard:
		say "[one of]You were the only person stuck with this color. Others got plain white or grey. Surely that can't mean anything...can it?[paragraph break]Because it seems totally useless now [if player wears nametag]on your shirt[else]it's detached[end if][if goat is visible]. But after what you did to the goat, maybe it'll be useful somewhere[else]. You'd like it to be useful for more than identification[end if][or]An ugly magenta[stopping].[no line break]";
		continue the action;
	if broad board is examined:
		say "You never noticed it before, but the nametag is made by [first custom style]TENGAMA[r], whoever they are. The red writing is odd--just like A TAN GEM on the broad board.[no line break]";
		continue the action;
	if player is in notices section:
		say "It's still a bit scratched from your trip through the thickets--about 3/7 of the way from the right. It's, just, well--a nametag. For now. Maybe the broad board will have a clue what to do, nametag or not.[no line break]";
		continue the action;
	if player wears nametag:
		say "It's stuck to your shirt, all right. Somehow, you got a magenta one while most other people got plain white. It just took a tame nag to put it on, and you hate it but can't bring yourself to pull it off in public.[paragraph break]It does not make you feel like a powerful magnate, that's for sure.[no line break]";
	otherwise:
		say "It's cast off and harmless-looking. Be cool if it could become something useful.[no line break]"

check wearing the magenta nametag:
	if player wears the magenta nametag:
		say "You already are." instead;
	say "It's lost most of its sticky stuff on the back side. It'd just be a gnarled dangler if you reattached it." instead;

chapter A Dry Yard

There is a room called A Dry Yard. It is in intro.


instead of exiting in Dry Yard:
	if thorn is visible:
		say "It looks like there's a passage beyond that thorn, but you'll need to get rid of it, first.";
	otherwise:
		say "You feel a sudden sense of vertigo as you walk towards the passage where the thorn was. You realize you have lost your sense of direction, and for whatever reason, you're preoccupied with finding it before you can continue. So, which way is the thorn?"

report looking in Dry Yard for the first time:
	say "[i]So what was that lecture supposed to be about? One word changing how we look at things, how things are? Rubbish. It has to be. You think.[line break][r]"

every turn when player is in dry yard and odor is in dry yard and player was in dry yard (this is the clue odor to door rule) :
	if current action is not objhinting:
		say "[one of]You imagine a swordsman changing to sandworms, and back.[or]You confuse latitude and altitude for a second. Odd.[or]An inner voice briefly espouses your latent talent.[or]You suddenly find waterskiing awestriking.[or]You're seized with sudden fervor that there's only one way to spell centimeters. Or centimetres.[or]You hear a voice for a moment: demanding, maddening.[or]You think back to the NO ENTRY, err, NONE TRY sign. Odd that you saw the two letters switch. The odor smells a bit different.[or]The odor reminds you of crazy-huge organic isomers that become different if you exchange two arms. But maybe you can think simpler than that.[or][final-hint][stopping]"

to say final-hint:
	say "[one of]You know you need to find the right thing to think, [i]or do[r].[or]You suddenly wish someone would come by to help, so you could be all [one of]'Dr.! Oo!'[or]'Oo! Dr.!'[cycling][cycling]"

description of Dry Yard is "This is the center of a wide-open space. There's only a shrub and brush for vegetation[if odor is visible]. You definitely smell an odor, though[else]. A door stands here, too[end if]."

the shrub is scenery in Dry Yard. "[shru-bru]."

to say shru-bru:
	say "It's as unremarkable as the [if the item described is shrub]brush[else]shrub. You sort of wonder about that [oddo], though"

check taking when player is in Dry Yard:
	if noun is shrub or noun is brush:
		say "That'd be as useless and cumbersome as taking the [if noun is brush]shrub[else]brush[end if]. It wouldn't seem to help with the [oddo], either." instead;

the brush is scenery in Dry Yard. "[shru-bru]."

to say oddo:
	say "[if odor is in Dry Yard]odor[else]door[end if]"

The gateman is a person. "Nat Egam, the tan mage/gateman, is grousing around here.".

understand "nat/egam" and "nat egam" and "tan/mage" and "tan mage" and "gate man" as the gateman.

understand "old man" and "man" as gateman when player is in notices section and gateman is in notices section.


after fliptoing gateman:
	set the pronoun him to gateman;
	if mega ant is in notices section:
		say "The gateman looks over to the mega ant and does some weird hand-fu. The ant scampers off. 'There. Should be able to walk in now. I mean, after you ask me for all the help you want.'";
		now mega ant is in lalaland;
	if the player has the bugle:
		say "The gateman [if ant is in lalaland]pauses again, then [end if]looks at your bugle. 'Oh! Thanks for recovering that! You won't need it--but it's valuable, and stuff. Mind if I...?' You don't. It's already a bit tricky to carry around.";
		now bugle is in lalaland;
	continue the action;

the odor is scenery. the odor is undesc. it is in Dry Yard. rgtext of odor is "[rcn][rc][gc][gc]". lgth of odor is 4. gpos of odor is 2. rpos of odor is 4. cert-text of odor is "-[d1][ast]O[ast]R". rect-text of odor is "D[d1][d1][ast]R".

understand "smell" and "breeze" as odor.

instead of taking odor:
	say "Impossible."

instead of examining odor:
	try smelling instead;

to say bul-blo:
	if bulge is part of the yard-door and blot is part of the yard-door:
		say "bulge and a blot";
	else if bulge is part of the yard-door:
		say "bulge and a bolt";
	else if blot is part of the yard-door:
		say "blot";
	else:
		say "bolt"

yard-door is a privately-named fixed in place thing. understand "door" and "improbable" as yard-door when odor is visible or yard-door is visible. printed name of yard-door is "the door".

after fliptoing yard-door:
	if min-alert is false:
		poss-display;
	continue the action;

initial appearance of yard-door is "That weird door you summoned is here. It has a [bul-blo] on it."

the musical chord is part of the yard-door. description is "[if bugle-played is true]It was probably just to clue the bugle[else if bulge is part of the yard-door]It seems to suggest music would be a good idea. Hmm[else]You can't tell what note it is, but maybe it's just a clue to play anything on your bugle[end if]."

instead of taking the musical chord:
	say "It's engraved in the door.";

the bolt is part of the yard-door. description is "It sticks out from the door."

check taking bolt:
	say "It's like there's an invisible force field around the bolt." instead;

rgtext of bolt is "[gcn][rc][rc][gc]". lgth of bolt is 4. gpos of bolt is 1. rpos of bolt is 4. cert-text of bolt is "[set-bug]". rect-text of bolt is "[set-bug]".

bugle-played is a truth state that varies. bugle-played is false.

the blot is a thing. description of blot is "It almost looks like a musical chord[if bulge is visible]. It stands out by the bulge[end if].". understand "music" as blot.

instead of taking the blot:
	say "It's pretty much bled into the door."

after fliptoing blot:
	now blot is part of yard-door;
	if bulge is in lalaland:
		min-up;
	continue the action;

after fliptoing bugle:
	if bolt is in lalaland:
		min-up;
	continue the action;

the bulge is part of the yard-door. rgtext of bulge is "[gcn][gc][rc][rc][gc]". lgth of bulge is 5. gpos of bulge is 1. rpos of bulge is 5. cert-text of bulge is "B[ast]U[d1][d1][ast]E". rect-text of bulge is "B[d1][d1][d1][ast]E".

description of the bulge is "It's shaped like a narrow rectangle with rounded corners. It has an upper corner that fans out. There's no way to pry it from the door. [run paragraph on][bugle-clue]."

to say bugle-clue:
	say "[one of]You give it a few taps, but it's wedged in[or]Maybe it could become some sort of instrument to get rid of the door[or]It's stuck to the door proper, like a tattoo[or]You guess it's your charge to open the door with it[or]You've got no reveilleation, err, revelation, what it should be, yet[or]You pay closer attention--[if player has the gadget]your gadget leaves it solved[else]it can't be that hard to shift around. Maybe you should've taken one of the devices in the cabinet. It's only going to get tougher[end if][cycling]"

instead of taking the bulge:
	say "[bugle-clue]."

the bugle is a thing. description of bugle is "It's brass, you guess, and it probably can't be too hard to play."

understand "horn" as bugle when bugle is visible.

understand "doorway" as yard-door when yard-door is visible.

description of yard-door is "[rut-descri]."

to say rut-descri:
	if bugle-played is true:
		say "It's really just the outline of a doorway now. You can just enter it";
		the rule succeeds;
	say "It's got a big musical chord painted on the front above [if bulge is visible]a bulge which doesn't seem to belong on the door[else]where the bulge was[end if]. [if bolt is visible]A bolt's sticking out, too, not locked into anything[else]It's covered by a blot, too[end if]. You have no clue where the door could lead [if blot is visible or bugle-played is true]now you've opened it[else]even if you figure how to open it[end if]"

check opening yard-door:
	if bugle-played is false and bolt is visible:
		say "There's no real handle to grab[if bulge is part of the yard-door]. Not even that bulge, though you probably shouldn't snub nubs like that completely[end if]." instead;
	say "You already unlocked it. Would you like to walk through?";
	if the player yes-consents:
		try entering yard-door instead;
	otherwise:
		say "There's nowhere else to go, though." instead;

check entering yard-door:
	if bugle-played is true:
		say "The door swings open as you approach. ";
	else if blot is part of yard-door:
		say "Without the bolt, the door swings open easily. ";
	else if player has bugle:
		say "The door won't budge. The bolt makes a jarring noise. Hm, maybe that bugle could help." instead;
	else:
		say "The door seems stuck by an invisible force[if bolt is visible]. The bolt seems to shake a bit, too, and make a jarring noise[end if]." instead;
	say "You can't see what's behind, but fortunately it's just a small tumble[if player has bugle], though the bugle gets caught on an outgrowth on the way down[end if]...[wfak]";
	now bugle is in lalaland;
	if blot is off-stage and bugle is off-stage:
		poss-d;
	now player is in Thickest Thickets instead;

check smelling in Dry Yard:
	if yard-door is not in Dry Yard:
		say "It's an odor of new places and adventure and puzzles and how to get there. It tempts you--wouldn't it be nice if there was something more physical to provide passage than, well, just an odor?[paragraph break]You repress a four-letter word. Well, if things are that simple, it's probably a [i]nicer[r] four-letter word." instead;
	otherwise:
		say "The door is of some odd wood you don't recognize." instead;

instead of taking odor:
	say "Impossible."

instead of examining odor:
	try smelling instead;

check going inside in Dry Yard:
	if yard-door is visible:
		try entering yard-door instead;

chapter thickest thickets

Thickest Thickets is a room in Intro. "The door you dropped through plumped you right in a dense, prickly garden[one of]. You look around but can't see it any more[or][stopping]. Snarled darnels block off passage in [if goat is in thickets]almost all directions, but you can go IN[else]all directions[end if][if darn-slan is false]. They make you mad for some weird reason, but it's probably not REALLY important[end if]."

check going nowhere in thickest thickets:
	say "[one of]You hit a snag, and the [if toga is visible]toga[else]hole in the thickets[end if] nags you. Or seems to[or]You see a snipe among some pines and lose your spine[or]You're feeling negative to vegetation, so you can't see a way through[or]A stick crawling with ticks gives you pause[or]I won't let snag-tangles get at you that way[cycling][if goat is in thickets] (you can go IN--there are no specific directions here)[end if][if darn-slan is false]. You suppress an insult that would maybe only make sense if the darnels were sentient[end if]." instead;

carry out fliptoing goat:
	if player has toga:
		now toga is in location of player;
	set the pronoun him to goat;
	set the pronoun her to goat;

the toga is a thing in Thickest Thickets. "A toga is lying here. It doesn't look particularly festive or clean.". the rgtext of toga is "[rc][gc][rc][rc]". the lgth of toga is 4. gpos of toga is 3. rpos of toga is 1. cert-text of toga is "-[ast]O[d1][d1]". rect-text of toga is "G[d1][d1][ast]T".

report taking the toga:
	say "From the smell[if toga is examined] and the writing on it[end if], you doubt wearing it will get you anywhere cool in its current form, but you take it anyway.";
	the rule succeeds;

the toga-writing is privately-named. The toga-writing is part of the toga. understand "writing" and "message" and "toga writing" as toga-writing when player is in thickets.

description of toga-writing is "It's a dingy grey and says 'You GOT A believe!'[one of][no line break] You'd expect that sort of excruciating grammar on a sports team's t-shirt, but not a toga. Hmm.[or][stopping]"

description of the toga is "On it you see a four-legged animal with a sort of beard and horns. It's not very clear, but there are only so many possibilities--and if you read the toga, maybe you can see what's written on it."

check wearing the toga:
	say "If the barnyard smell weren't unpleasant enough, you feel pricked by hairs--like a beard--and maybe even horns. You remove the toga and flip it inside-out, but you don't see anything. Odd." instead;

understand "thickets/thickest" and "thickest thickets" as darnels when player is in thickets.

the snarled darnels are plural-named scenery in Thickest Thickets. "The thickets/snarled darnels are plenty and thick-set (sorry,) a plant-kingdom comb-over with prickles all up and down it. You can't tell where it starts or ends, but [if toga is in lalaland]the goat did chomp out a way INSIDE[else]no way you'll sneak through it without getting cut up pushing it aside to go, well, whatever way it's blocking you from going[end if].".



the rgtext of snarled darnels is "[rcn][rc][rc][rc][rc][rc][rc]". the lgth of darnels is 5. gpos of darnels is 7. rpos of darnels is 3. cert-text of darnels is "[set-bug]". rect-text of darnels is "[set-bug]".

the goat is an animal. "The goat is half-sleeping here. It's probably best left that way."

understand "animal" as goat when goat is visible.

instead of waking the goat:
	say "If he's having a bad dream, he'll kick at you in his sleep. If you interrupt a good dream, he'll kick whoever woke him.";

check taking the goat:
	say "Trying to get the goat would more likely get the goat's goat." instead;

description of goat is "It seems ill-tempered[if thorn is not visible] despite, or perhaps because of, its eclectic recent meal[end if]."

darn-slan is a truth state that varies.

check going inside in thickest:
	if goat is off-stage:
		say "There's nowhere to go in." instead;
	if darn-slan is false:
		poss-d;
	say "You leave behind the goat and the thickets. The path opens up. The yard was too empty, and the thickets were too cluttered, but this--this seems right. You think you hear a voice saying 'Trainees site near!'";
	move player to notices section instead;

section slandering

does the player mean slandering the darnels: it is likely.

slandering is an action applying to one thing.

understand the command "slander" as something new.

understand "slander [something]" as slandering.

carry out slandering:
	if noun is darnels:
		if darn-slan is false:
			say "You take some cheap shots at the darnels, pretending they're out to get you, and you feel clever. They're as forbidding as ever, but you feel a confidence boost.";
			min-and;
			now darn-slan is true;
		else:
			say "It won't be as fun the second time around. Plus, between anagramming and thinking up falsehoods, you're out of ideas.";
		the rule succeeds;
	if player is in thickets:
		say "There's something more logical to slander. I mean, slander isn't logical, but yeah." instead;
	if noun is deadbeat:
		say "No way, man! You're not with him, but you're not with The Man, man." instead;
	say "That's not a useful action here. I mean, slander's never REALLY useful, but yeah." instead;
	the rule succeeds.

chapter Notices Section

Notices Section is a room in Intro. "[one of]You're not sure what to do here, and there's no welcoming committee. But there's a broad board SMIT with TMIs[or]The broad board is SMIT with TMIs you [if broad board is unexamined]haven't read yet[else]figure will be useful[end if][stopping]."

understand "tmi/tmis" as broad board when player is in notices section.

instead of taking gateman:
	say "'Gateman, get a man, very clever. But thing is, you'll be working with things, not ideas or actions.'"

to say get-a-man:
	if notices section is unvisited:
		say "[reject]";
		continue the action;
	if trips strip is visited:
		say "Tan Mage Nat Egam cannot help you now.";
		continue the action;
	if gateman is visible:
		say "You already did.";
		continue the action;
	say "Very good. Very close. But here's a meta-nag: what kind of man? What would he work with?";
	continue the action;

instead of going outside in notices section:
	try going north instead;

check going inside in notices section:
	try entering getaway instead;

check going nowhere in Notices Section:
	if getaway is visible:
		say "That'd be a cop-out, running away. You'd break Nat Egam's heart, too. You probably want to go in and enter the gateway.";
	otherwise:
		say "You can't even remember the way you came through the thickets. And the gateway's right in front of you. You sense it's probably where you want to go.";
	the rule succeeds;

section broad board

the broad board is scenery in notices section."[one of]Welcome to YORPWALD![paragraph break]OUR NEEDS ENDURE SO![paragraph break]--Person willing to turn self into humiliating identification to aid adventurers in rescuing our fair land. Must have strength or magic touch to raise big metal gate. Benefits include unlimited complaining to rescuer/prospective hero. Obligations include explaining situation to rescuer/prospective hero. Risks include hero getting stuck on requisite four- then three-letter word combination to release you.[line break][2dn]fellow named Terry to allow quick way for temporarily stuck adventurers to RETRY and return to Trips Strip.[paragraph break]You hear a big VOOP. The writing on the board is replaced by even more writing, but not before you write some basic stuff down in your notepad.[board-note][or][2dn]quester request: text adventurer with savoir-savior to save shuffled Yorpwald from being fflushed. High chance of real fun, flaneur, low chance of funeral. No crudities like diuretics needed! Also, nothing above eight letters.[line break][2dn]Canny Nancy or Brian Brain preferred to Manly Lyman or Army Mary. Skill kills![line break][2dn]Scrabble, MasterMind, and/or Boggle expertise a plus. Simple on-the-game training provi... oh! Hi! You're here. Futz with the static if you want[if nametag is visible]. Nametag: it grants starting. You can't just walk into the gateway--and not like you can find [first custom style]a tan gem[r][end if]. But you won't have to go to [first custom style]Mt. Egana (Mt. Agena?) [r]I forget! [paragraph break]Also, the color red is all wrong, if you see too much of it. So look out for red.[stopping]"

to say board-note:
	pad-rec-q "board";
	pad-rec "retry";

understand "billboard" as broad board.

section mega-ant

the mega ant is a thing. description is "Boy, is it bright red! And fierce! It's clicking aggressively at you.". "A mega-ant now guards the gateway! It's too tough for you, so you may need someone to dispell it."

check taking the mega ant:
	say "You can't take it, either in the figurative or literal/fight-ual sence." instead;

understand "mega-ant" as mega ant.

Include (-
	has transparent talkable
-) when defining mega ant.

section doll house

a doll house is a thing in notices section. "You see [if static is visible]an incomplete-looking doll house with a crackling noise coming from a few loud holes[else]that doll house you put those attics on[end if]. It is labeled FOR INSTRUCTIONAL PURPOSES ONLY."

instead of entering doll house:
	say "It's way too small. As the house itself says, it's for instructional purposes[if static is flipped-yet], and you've sort of figured things already[else], but you don't have to tinker with the static[end if]."

understand "dollhouse" as doll house.

instead of taking or attacking the doll house:
	say "Some hero(ine) you'd be, [if the current action is taking]stealing[else]vandalizing[end if] a doll house."

description of the doll house is "[if attics are visible]It's much nicer and quieter now that you tacked the attics on[else]You hear static hissing from it. Plus, the doll house isn't nearly as tall as it could be. It could use an extra floor or two[end if]."

the static is reversible scenery in notices section. lgth of static is 6. gpos of static is 3. rpos of static is 1. rgtext of static is "[rcn][gc][rc][rc][rc][rc]". cert-text of static is "-[ast]T[d1][d1][d1][d1]". rect-text of static is "A[d1][d1][d1][d1][ast]S".

description of static is "It's not especially painful to listen to, but you probably don't have to."

understand "noise" as static when player is in notices section and static is in notices section.

the attics are reversible plural-named scenery. the attics are flippable and flipped-yet. lgth of attics is 6. gpos of attics is 6. rpos of attics is 5. rgtext of attics is "[rcn][gc][rc][rc][rc][rc]". cert-text of attics is "-[ast]T[d1][d1][d1][d1]". rect-text of attics is "S[d1][d1][d1][d1][ast]C".

understand "attic" as attics when attics are visible or static is visible.

check taking the attics:
	say "You could flip them back to the static if you want, but it'd be mean to steal what you just built. And useless." instead;

description of the attics is "They fit perfectly on what was once the top of the house. Maybe there's no way a doll could get there, but the house looks nicer now."

section acne-bit cabinet

the acne-bit cabinet is an open openable transparent container in notices section. It is fixed in place. "[one of]It can't be... can it be...? A cabinet floating in mid-air. It looks acne-bit. It's open, too[or]The acne-bit cabinet is still floating [if player is in notices]and squeaking, maybe shuddering as if trying to move meaningfully [end if]here[if player is in notices section]. It contains [a list of things in cabinet][end if][stopping]."

rgtext of cabinet is "[rcn][rc][rc][rc][ast][rc][rc][gc]". rpos of cabinet is 7. gpos of cabinet is 5.

check inserting into the cabinet:
	if noun is gadget or noun is saltine or noun is info-lit or noun is phial:
		say "Nah, it's yours." instead;
	say "Yes, the cabinet is for storage, but you [if gateman is off-stage]don't have anywhere to go, yet[else]won't be coming back[end if]." instead;

the nice bat is a thing. "A nice bat is here, standing on its rear claws."

description of nice bat is "The items it took from you are somewhere, you're sure. It's a big bat, six feet tall, with wings that probably open like a street-side watch seller's trenchcoat."

the bw are privately-named plural-named things. printed name of bw is "bat wings". understand "bat wings" and "wings" as bw.

description of bw is "They're not extended right now."

instead of doing something with the nice bat:
	if the current action is attacking:
		say "That'd be a spectacular way to fail." instead;
	if the current action is fliptoing:
		if number of solved regions < 2:
			preef cabinet;
			say "The cabinet hasn't earned it, yet." instead;
		continue the action;
	say "The bat does some bizarre cheerleading movement as you turn to look at it. You probably don't want to get too close, though it has been helpful.";

instead of opening acne-bit cabinet:
	say "It already is.";

instead of taking acne-bit cabinet:
	say "Whatever keeps it floating in place also keeps you from moving it."

description of acne-bit cabinet is "It's open. The cratered bits, once retraced, spell (in red) CAN BITE. [if number of things in cabinet is 0]It's empty[else]You see [a list of things in cabinet] inside[end if].";

check examining cabinet:
	if location of player is trips strip:
		say "You've no idea where the cabinet puts all its items. Maybe you didn't read the right fantasy books. But--they're there, helping keep your inventory free. A small favor." instead;

description of cratered bits is "They read CAN BITE[if doorslammed is true], as you found out when trying to take both those devices[end if]. They're in red."

check examining cabinet:
	ignore the examine containers rule;

instead of closing the acne-bit cabinet:
	say "You don't need to hide anything in there from anyone.";

section prep paper

a prep paper is a warpable thing. description of a prep paper is "USURPER PURSUER STENO-NOTES (TEN, SO). LASTING NAG-LIST OF CRAFTIEST TRIFECTAS.[paragraph break][unless forest is solved][forest-prep][else][second custom style]                        FOREST DONE[r][end if][line break][unless sortie is solved][sortie-prep][else][second custom style]                        SORTIE DONE[r][end if][line break][unless metros is solved][metros-prep][else][second custom style]                METROS DONE[r][end if][line break]                    [if burdell is in lalaland][second custom style]JUST, WELL, -BE- NOW![r][else]R. FIND RED BULL BURDELL'S WEAKNESS[end if]"

to say sortie-prep:
	say "I-A. [if taco is off-stage]Warm Food[else][second custom style]GOT TACO[r][end if] I-B. [if coat is off-stage]Warm Clothing[else][second custom style]GOT COAT[r][end if] I-C. [if missile is off-stage]Weapon of Kindness[else][second custom style]GOT MISSILE, NOW TO LAUNCH IT[r][end if]";

to say forest-prep:
	say "F-A. [if beard is not wearable]Disguise[else][second custom style]GOT DISGUISE[r][end if] F-B. [if shotgun is off-stage]Get and load weapon[else if silver is off-stage]Load weapon[else][second custom style]GOT LOADED WEAPON[r][end if] F-C. [if player is not in frost forts]Find way, d[else]D[end if]efeat an all-ice alliance";

to say metros-prep:
	say "M-A. [if gardenia is off-stage]Find a flower[else][second custom style]GOT FLOWER[r][end if] M-B. [if tulip is in anti-cool]Find a light source[else][second custom style]GOT LIT-UP TULIP[r][end if] M-C. [if controls are not in op]Find a way underground[else][second custom style]REPAIRED RAILS[r][end if]"

check entering the getaway gateway:
	if gateman is off-stage:
		if mega ant is in notices:
			say "The mega ant snaps at you, in all its redness! You may need to get someone to dispel it." instead;
		say "A bright red mega-ant appears from behind the gateway! As you grasp at your nametag, which seems to pulse on its own, you wonder what, or who, could defeat the ant, which is too quick for you to defeat it. Its redness is overdone and clearly, well, wrong. Maybe that's something.";
		now mega ant is in notices instead;
	if player does not have tagged gadget and gadget-warned is false:
		say "'Dang adventurers these days. It's not demo mode out there. If I'd had doohickeys nice as that gadget in the cabinet when I saved that ONE world...I'd of took it! And saved two or three worlds!' He gives a warning, wan grin.";
		now gadget-warned is true instead;
	say "Your path is clear. [if player has gadget]'Eh, get at the gate.' Nat Egam gets his hanky out. 'Okay, hunt.'[paragraph break]'Thank you,' you say.[paragraph break]'Plod wary through warpy old Yorpwald!' he say, also handing you a prep paper. 'This all--what I know--very theoretical. But you'll figure it. Oh--remember. If you SECURE the tip to either CERTIFY or RECTIFY, you can RECUSE yourself from the last of the three stores you need to enter. But you don't have to choose [']til the button starts flashing. Also, you can RETRY at any point for Terry to return you to the Strip.'[pad-sec][else]'A fool! Aloof! Ol['] oaf!' cries Nat Egam as you mutter 'rely on only...er...' As you walk through, you hear 'Oh, nope! No hope!'[end if]";
	if player has gadget:
		now player has a prep paper;
		pad-rec-q "retry";
	say "[line break]The gate disappears behind you[if static is visible] as you hear Nat Egam grumble about being stuck with the static[end if], and you walk down a pathway, then yap 'What?!' when you see...";
	say "[wfak]...a few strip malls. Ugh. There's nothing adventurous about THAT.[no line break]";
	solve-region intro instead;

section salient saltine

the salient saltine is a warpable thing in the acne-bit cabinet.

report taking salient saltine for the first time:
	say "Got it. You'd have liked a beefier freebie, but with calm opining, you see no use complaining.";
	the rule succeeds;

description of salient saltine is "It says SLAINTE on the package."

Undo flag is a number variable. Undo flag is 0.

rule for deciding whether to allow undo:
	if helpdebugflag is true:
		append "UNDO: (no hint)[line break]" to the file of shufhints;
	if undo is prevented:
		if undo-code is 1:
			say "Un-eating the saltine entails a huge intent--to win it NOW.[paragraph break]";
			allow undo;
		else if undo-code is 2:
			say "You won't be arrested or serrated for such retreads, but I will provide a warning against your reusing sin urge.";
			allow undo;
		else if undo-code is 3:
			say "Very sensible indeed.";
			allow undo;
		otherwise:
			say "[bug-report] I've disabled undo on this command for some reason I can't figure.";
			deny undo;

section xmxing

to ditch-saltine:
	if xray-cheat is false:
		now xray-vision is false;
		say "[line break]You blink, and things look a little less sharp. The saltine's done its work.";
		now undo-code is 1;
		pad-del "xx";
		prevent undo;

xmxing is an action applying to one thing.

understand the command "xx" as something new.

understand "xx [something]" as xmxing.
understand "xx " as xmxing.

rule for supplying a missing noun when xmxing:
	if player is in the nick:
		now noun is t-n;
		continue the action;
	if player is in roomroom:
		now noun is r2;
		continue the action;
	if player is in moor:
		if anapest is in moor:
			now noun is anapest;
		else:
			now noun is m2;
		continue the action;
	if player is in Means Manse:
		now noun is final-exits;
		continue the action;
	say "Nothing really sticks out. You may have to XX something specific.";
	reject the player's command;

xray-cheat is a truth state that varies.

tag-warn is a truth state that varies.

check xmxing:
	if xray-vision is false:
		if saltine is in lalaland:
			say "You lost your x-ray vision, so you can only just examine, instead.";
		try examining the noun instead;
	if noun is a direction:
		say "[if player is in sf or player is in rf]You can't see which way to go--maybe use your other senses[else]Just try going [noun] instead[end if]." instead;

carry out xmxing:
	if xray-cheat is true:
		if xray-vision is false:
			d "** DING DING ** RELOADING XRAY VISION!";
		now xray-vision is true;
	if xray-vision is false:
		if saltine is in lalaland:
			say "You lost your x-ray vision." instead;
		try examining the noun instead;
	if noun is r2:
		if moor is visited:
			say "You non-magically space out and realize you can go back to the moor.";
			the rule succeeds;
		say "Your vision swirls, and you see a moor.";
		ditch-saltine instead;
	if noun is m2:
		say "You have a very non-magical vision of the room you were in before you jumped to the moor.";
		the rule succeeds;
	if noun is t-n:
		say "Your vision swirls, and you see a kitchen.";
		ditch-saltine instead;
	if noun is the location:
		if player is in Bile Libe and words are in Bile Libe:
			say "You stare at where the words may be coming from.";
			try xmxing words instead;
		if player is in the moor:
			if pat is visible:
				say "You imagine a peasant coming by to disrupt Pat's poetry.";
				ditch-saltine instead;
			say "Before staring at anything, you wonder if you could just think yourself back to the ROOM." instead;
		if player is in Means Manse:
			say "You just want to EXIST, really." instead;
	if noun is nametag: [start intro]
		if tag-warn is false:
			now tag-warn is true;
			say "You pause a bit. Maybe there's something on the broad board that'd help you decide what to do with the nametag. Or what not to do[if mega ant is visible]. Maybe that mega-ant is, in its own way, a hint[end if]." instead;
		say "Well, you probably just need to get through with things. You take a bite of the saltine, then you think 'How do I get through that gate, man?' Hmm...GATEMAN. That'd fit." instead;
	if noun is gateway:
		if nametag is in lalaland:
			say "You don't need to unlock any further mysteries of the gateway." instead;
		try xmxing nametag instead;
	if noun is thruhinted:
		say "You already hinted through for that. Are you sure you want to use the x-ray vision from your saltine?";
		unless the player direct-consents:
			say "Ok." instead;
	if noun is static:
		say "[if gateman is visible]Nat Egam makes a dubious noise. Maybe it is not a good idea to use something as powerful as the saltine this early in the game, on something potentially unimportant[else]You stop and think. The static doesn't seem as important as that gateway[end if]. Do so anyway?";
		unless the player direct-consents:
			say "OK." instead;
		say "[v-b]the static seems to form attics near the doll house[if gateman is visible]. Nat Egam makes a dubious noise[end if].";
		ditch-saltine instead;
	if noun is attics:
		say "After some thought, that seems like it'd be a waste, since you know what they were. You can probably change things back, if you want." instead;
	if noun is thorn: [start forest]
		say "Your vision blurs, and you see a compass rose pointed north.";
		ditch-saltine instead;
	if noun is stew:
		say "Your vision blurs, and you see a compass rose pointed west.";
		ditch-saltine instead;
	if noun is teas:
		say "Your vision blurs, and you see a compass rose pointed east.";
		ditch-saltine instead;
	if noun is shout:
		say "Your vision blurs, and you see a compass rose pointed south.";
		ditch-saltine instead;
	if noun is shell and dashes are in shell:
		say "The shell doesn't change, but the dashes inside do.";
		try xmxing dashes instead;
	if noun is bucket and ones are in bucket:
		say "The bubble doesn't change, but the ones inside do.";
		try xmxing ones instead;
	if noun is bubble and noughts are in bubble:
		say "The bubble doesn't change, but the ones inside do.";
		try xmxing ones instead;
	if noun is chicken liver or noun is cow liver:
		say "It seems to come together with a duplicate of itself. You look again, and your x-ray vision remains." instead;
	if noun is banshee:
		say "The banshee seems to howl about being a has-been.";
		ditch-saltine instead;
	if noun is livers:
		say "[v-b]you see a silver sliver.";
		preef silver;
		ditch-saltine instead;
	if noun is sliver:
		say "The sliver turns silver for a moment.";
		ditch-saltine instead;
	if noun is spread:
		say "[v-b]the spread seems to become a red asp, then drapes. Hmm. The drapes seem much safer.";
		preef drapes;
		ditch-saltine instead;
	if noun is red asp:
		say "[v-b]drapes seem to flutter in front of the red asp.";
		ditch-saltine instead;
	if noun is ufcex and centrifuge-stopped is false: [start sortie]
		say "The exits are rushing past too fast to focus on them. But you're in line with the dial.";
		try xmxing dial instead;
	if noun is dial and centrifuge-stopped is false:
		say "The number sixteen takes prominence on the dial for a moment. You shake your head, and it disappears. Weird.";
		ditch-saltine instead;
	if noun is warts:
		say "You can't see them, but you remember the palindrome 'No, too stupid a fad. I put soot on ...'" instead;
	if noun is cask and sack is in lalaland:
		say "You already changed the cask to a sack[if straw is in lalaland], and you don't see any reason to do so again[else], and if you need to do so again, you won't forget[end if]." instead;
	if noun is sack:
		say "After some thought, that seems like it'd be a waste, since you know what it was. It may be worth changing the sack back, depending on what you want to carry, though." instead;
	if noun is pat:
		say "You try to, but it's awkward making eye contact. Maybe you could stare at the air, to flow with the poetry's anapest beat." instead;
	if noun is poem:
		if poem is not folded:
			say "[v-b][if smilies are visible]you see the smilies fly off the page, and the folded poem becomes[else]the poem fold and become[end if] a panel.";
			ditch-saltine instead;
		say "You imagine a panel of experts critiquing the poem, before it was folded. Hm. You don't need THAT sort of panel.";
		ditch-saltine instead;
	if noun is scraped wall:
		say "You imagine the scraped wall[if scraped wall is not hayfilled] gets stuffed with hay, then[else], already being a haywall,[end if] becomes a haywall.";
		if scraped wall is not hayfilled:
			preef hallway;
		ditch-saltine instead;
	if noun is poem and pat is in the moor:
		try xmxing the location instead;
	if noun is dig flier or noun is can of beer or noun is soggy love letter:
		say "Your focus shifts to the drainage, instead.";
		try xmxing drainage instead;
	if noun is oils:
		say "[v-b][if soil is in moor]you see a silo[else]you see soil, then a silo[end if].";
		ditch-saltine instead;
	if noun is begonias or noun is heaths: [start metros]
		if gardenia is not in lalaland:
			say "The faeries buzz, perturbed, as you take a little too long to gaze at the merchandise." instead;
	if noun is motto:
		say "You thought you saw a tomato whiz by 'a motto,' there.";
		ditch-saltine instead;
	if noun is antlers:
		say "You take care not to drop any crackers on the rug. A large FOR RENT sign seems to obscure the antlers for a moment.";
		ditch-saltine instead;
	if noun is dry cake and condo-evac is false:
		say "Someone coughs 'discreetly' as you stare at the cake. If they were gone, you might be able to look at it more closely." instead;
	if noun is nerds or noun is tulip:
		if player does not have tulip:
			say "You suddenly feel darkness, along with an urge to ask the nerds about it.";
			ditch-saltine instead;
	if noun is neon pig:
		say "[v-b]you see an opening where the pig is.";
		ditch-saltine instead;
	if noun is tiles: [start resort]
		say "As your vision blurs, the tiles['] blue, green and brown re-form to make an islet.";
		ditch-saltine instead;
	if noun is tiles: [start resort]
		say "As your vision blurs, the stile seems to stand over a small islet.";
		ditch-saltine instead;
	if noun is protest:
		say "You see the trio stopping their protest to get to work as potters.";
		ditch-saltine instead;
	if noun is links:
		say "[v-b]you see [unless china is in lalaland]some china and also [end if]kilns, to bake clay in, or something.";
		ditch-saltine instead;
	if noun is red bull burdell or noun is toe:
		say "You squint at Red Bull Burdell, trying to notice what he could become, but all you notice is his infected toe as he yells 'GET OUT.' Maybe you could pull it...no, not pull...well, there are only six possibilities...";
		ditch-saltine instead;
	if noun is final-exits:
		say "They just seem to EXIST. Maybe you can, too.";
		ditch-saltine instead;
	if noun is a teleporter:
		if noun is t-n:
			say "[v-b]you see a kitchen." instead;
	if noun is flippable: [start general stuff]
		if there is a the-to corresponding to the-from of noun in regana of mrlp:
			say "[v-b]you see [salt-text of noun][the-to corresponding to the-from of noun in regana of mrlp].";
			ditch-saltine instead;
		else:
			say "You give the saltine a funny look. Like you're not sure if it could give you help. This is a [bug-report]" instead;
	if player is in the nick and noun is not t-n:
		say "You let your eyes wander.[paragraph break]";
		try xmxing t-n instead;
	say "Though you squinted extra, you don't see anything beyond what you normally would've. Well, maybe some other time.";
	try examining the noun instead;
	the rule succeeds.

to say salt-text of (xxx - a thing):
	if xxx is cabinet or xxx is store f or xxx is store i or xxx is store r, say "a "; [stores]
	if xxx is ones or xxx is noughts, say "a "; [forest]
	if xxx is cake pan or xxx is cult tee or xxx is tall trio or xxx is spearman or xxx is taco, say "a "; [sortie]
	if xxx is anapest or xxx is roadblock or xxx is smilies, say "a ";
	if xxx is trees button or noun is hoots button, say "a ";
	if xxx is cask, say "a ";
	if xxx is beats or xxx is dry cake or xxx is brocade, say "a "; [metros]
	if xxx is heaths or xxx is begonias or xxx is words, say "a ";
	if xxx is poles or xxx is riot, say "a "; [resort]

to say v-b:
	say "Your vision blurs a bit, and instead ";

instead of eating the saltine:
	if gateman is visible:
		say "[one of]Nat Egam coughs. 'You might want to save that. It'll help you later, with a real puzzle, if you eXamine double hard. The static [if static is in lalaland or attics are in lalaland]was[else]is[end if] just practice.'[or]You reckon you can wait until the real quest.[stopping]";
		pad-rec "xx";
		the rule succeeds;
	if faeries are visible:
		say "As you open the packet, the faeries buzz. It'd be rude to eat in here, so you step out, eat and come back.";
	choose row with short of "xx" in table of pad-stuff;
	if known entry is false:
		say "You're not sure what the saltine is supposed to do, but your vision looks a little weirder after eating it. Some things seem especially sharp if you stare doubly hard at them.";
		pad-rec "xx";
	else:
		say "Gulp. It tastes decent enough.";
	now saltine is in lalaland;
	now xray-vision is true;
	now undo-code is 2;
	prevent undo instead;

section tinfoil info-lit

the tinfoil info-lit is an amusing thing in cabinet. understand "tin/info/lit/paper" as tinfoil info-lit. the tinfoil info-lit is warpable.

description of tinfoil info-lit is "[one of]It's tinfoil only in writing content--it's actually just paper. It's excessively all-caps and underlined, but I'll spare you that.[or]You read it again.[stopping]--If you can change stuff, why can't the people who made the gadget? How do they know you can? Or why couldn't they find someone off the street? Perhaps they're the real enemy and you're the pawn.[line break]--If they really wanted you to clean things up, why can't you take both the cabinet items?[line break]--That NEW DOOR is not really ONE WORD. Same as the guy who can lift it! They are two short words, easier than one big scary seven-letter word.[line break]--Anyone smart enough to untangle this world won't get any fulfillment from doing so. So there, stupider disputer![paragraph break]--Sane Sean, Farce Facer, Saltier Realist[paragraph break][if store f is in lalaland or store i is in lalaland or store m is in lalaland]This seems like total nonsense, now you've found other portals and such[else if player is in strip]This guy must be wrong. You've gotten to the Trips Strip, and you just need a way out[else]It'd all be distressingly persuasive gotcha-logic if you hadn't been able to flip that toga. But this is a fantasy world, [logic-cracks][end if]."

to say logic-cracks:
	say "[if getaway is visible or gateman is visible]and you've already shown cracks in his logic[else]so there's a chance he's wrong[end if]"

section tagged gadget

a tagged gadget is in acne-bit cabinet. the tagged gadget is warpable. the tagged gadget can be broken. the tagged gadget is not broken.

after printing the name of the tagged gadget when taking inventory:
	if tagged gadget is examined or ever-scan is true:
		say " ([if button-locked is true]locked into [end if][if gadget is cert]CERTIFY[else]RECTIFY[end if] mode)";

check taking gadget:
	if gadget is in hotspot and red bull is in hotspot:
		say "Red Bull Burdell kicks it out of the way." instead;

	[say "Nat Egam coughs. 'Be a bit unfair if you had both. Y'wanna leave that other doohickey? I mean, I believe you're gonna fix things, but just in case, the next guy'll need a little...plus, I'm kinda proud of it...'"]

after taking the tagged gadget:
	say "[one of]It's a weird go-hint thingo, all right. The show hows tag dangling from it seems relatively free of legalese. You notice a tip in a pit on the side of the gadget[or]You pick up the gadget, again[stopping].";
		the rule succeeds;
	continue the action;

to say buz-help:
	if gateman is visible:
		say "[one of]. 'That means you can't change the item back,' says the gateman.[or].[stopping]";
	otherwise:
		say ".";

rule for supplying a missing noun (this is the scan the location if you can rule) :
	if current action is scaning or current action is rectifying or current action is certifying or current action is cring:
		if current action is certifying:
			now gadget is cert;
		if current action is rectifying:
			now gadget is rect;
		if player is in hotspot and red bull is in hotspot:
			now noun is red bull;
			continue the action;
		if player is in anti-cool and player does not have tulip:
			now noun is tulip;
			continue the action;
		if player is in moor and anapest is in moor:
			now noun is anapest;
			continue the action;
		if player is in sf or player is in rf:
			now noun is a random guider in location of player;
			say "You're picking something up. Probably [the noun].";
			continue the action;
	if current action is cring:
		if can-scan-air:
			say "You scan the air around, twiddling from certify to rectify and back.[paragraph break]";
			read-gadget;
			gadflip;
			say "[line break]You try the other setting, too.[paragraph break]";
			read-gadget;
			gadflip;
		else:
			say "You wave the gadget, but nothing happens. Maybe specify something to scan.";
		reject the player's command;
	if current action is scaning or current action is rectifying or current action is certifying:
		if can-scan-air:
			read-gadget;
		else:
			say "You wave the gadget, but nothing happens. Maybe specify something to scan.";
		reject the player's command;
	continue the action;

to decide whether can-scan-air:
	if player is in the nick, yes;
	if player is in Astral Altars, yes;
	if player is in roomroom, yes;
	if player is in moor and anapest is in lalaland, yes;
	if player is in Means Manse, yes;
	no.

to read-gadget:
	if player is in the nick:
		say "[gad][if gadget is cert]seven reds on its screen[else][bcn][bc][bc][rc][bc][bc][gc][end if].";
	else if player is in roomroom:
		say "Your gadget's not near anything, but it's registering [if gadget is cert][rcn][gc][gc][rc][else][rcn][bc][bc][gc][end if].";
	else if player is in moor:
		say "Your gadget's not near anything, but it's registering [if gadget is cert][rcn][gc][gc][rc][else][rcn][bc][bc][gc][end if].";
	else if player is in Means Manse:
		say "When you wave your gadget at the exits, it shows [if gadget is cert][gcn][gc][gc][rc][rc][else][gcn][bc][bc][rc][bc][end if]. Elsewhere, it blinks a bit. [if gadget is cert]The first and fourth and fifth entries blink. Maybe there's more than one way to do things[else]There's all sorts of blinking. Hopefully, that means there's more than one thing to think up.";
	else:
		say "[bug-report]";

check examining the tagged gadget (this is the see if gadget clues locations rule):
	if can-scan-air:
		read-gadget;
		the rule succeeds;
	if player is in anti-cool and nerds are in anti-cool:
		try scaning nerds instead;
	if player is in Anti-Cool Location:
		if player has tulip:
			say "The gadget shows nothing now." instead;
		say "You scan the area, wondering what you could ask nerds that'd get that tulip. You see [asknerds]." instead;

rule for printing a locale paragraph about the tagged gadget:
	if location of player is hotspot:
		say "[if red bull burdell is visible]Your gadget lies here, but no way you get to it[else]Your gadget, kicked from your hands by Red Bull Burdell, is here for the taking[end if].";
		now tagged gadget is mentioned;

does the player mean switching on the gadget: it is likely.

the pit is part of the tagged gadget. pit is undesc.

instead of doing something with the pit:
	if action is procedural, continue the action;
	say "You don't need to fiddle with the pit--just examine the tip."

instead of examining pit:
	try examining the tip;

the tip is part of the tagged gadget.

instead of doing something with the tip:
	if action is procedural, continue the action;
	say "The tip's just there to examine, so you know the gadget's setting."

the block setting it to rule is not listed in any rulebook.

check setting it to:
	if noun is dial:
		say "[if centrifuge-stopped is true]Oh no. No need for more 'fun.'[else]Try setting it to a number instead.[end if]" instead;
	say "In this game, SWITCHing things should work better." instead;

instead of switching off gadget:
	say "There's no way to switch the gadget off, but you can try to SWITCH between certify and rectify." instead;

instead of switching on tip:
	try switching on gadget;

instead of switching off tip:
	try switching on gadget;

understand "side" as tip.

description of tip is "The tip points to [c-r][if gadget-secured is true] and is stuck there, so you can't[else], but you can[end if] switch it back to [r-c][if button-locked is false] unless you push SECURE[end if].";

the handle is part of the tagged gadget. description of handle is "Just wide enough so the tag won't fall off, and just long enough you can grab it without blocking the screen."

instead of doing something with the handle:
	if the current action is attacking:
		say "You couldn't hold the gadget, then." instead;
	if action is procedural, continue the action;
	say "The handle is about what it seems to be. Don't worry about it too much."

sg-warn is a truth state that varies.

instead of switching on gadget:
	if sg-warn is false:
		say "[i][bracket]Fourth wall note: SG may save you keystrokes in the future. You can also C/CER/CERTIFY (object) or R/REC/RECTIFY (object) to skip this altogether.[close bracket][r][line break]";
		now sg-warn is true;
	try sging instead;

understand "device" as tagged gadget.

the tagged gadget can be cert or rect. the tagged gadget is cert.

the cratered bits are part of the cabinet. understand "acne" and "bit" as cratered bits.

scanned-g is a truth state that varies.

instead of dropping the gadget:
	say "It seems far too useful[if scanned-g is false], if indeed it works[else], especially since it actually works[end if]."

check examining tagged gadget (this is the did I break gadget rule):
	if gadget is broken:
		say "It's lifeless without the tag. Nice work!" instead;

description of tagged gadget is "It looks like a wall stud sensor, six inches by twelve, with a screen on the top. A show hows tag [if show hows tag is examined]you've read[else]you can read[end if] is tied by a tight knot to the handle, which narrows where it meets the main part. The gadget crackles with greeny energy. A tip in a pit on one of its edges points to [c-r][if gadget-secured is true] and is stuck there[end if].[paragraph break]You see a blurb above a button labeled SECURE/RECUSE."

the show hows tag is part of the tagged gadget. understand "show-hows" and "show-hows tag" as show hows tag

does the player mean taking off the magenta nametag when the player is not wearing the magenta nametag: it is very unlikely.

the gadget-screen is undesc. it is part of the tagged gadget. the gadget-screen is privately-named. the printed name of the gadget-screen is "gadget's screen". Understand "gadget screen" and "screen" as the gadget-screen.

instead of examining gadget-screen:
	say "You see if the gadget registers anything by default.";
	try scaning the location;

instead of doing something with gadget-screen:
	if current action is not scaning:
		say "Looking at the tag, you see you probably need to SCAN other objects to change the screen productively. There's probably not much else you want to do with or to the screen.";

the s-r is part of the tagged gadget. the s-r is privately-named.

printed name of s-r is "SECURE/RECUSE button". understand "secure/recuse button" and "secure/recuse" and "button" as s-r.

description of s-r is "It's currently [unless gadget-secured is true]not [end if]lit up indicating [if gadget-secured is true]SECURE[else]RECUSE[end if], [if button-locked is true]and it's locked in place[else]but you can probably push it to change that[end if]. An arrow leads from it to the [c-r] tip."

the arrow is part of the tagged gadget. description is "The arrow leads from the locked SECURE/RECUSE button to the [c-r]. This seems to indicate SECURE/RECUSE affects whether you can change the RECTIFY/CERTIFY settings."

gadget-secured is a truth state that varies.

[!!! take all: make sure gadget is last]

check switching on s-r:
	try pushing s-r instead;

check switching off s-r:
	try pushing s-r instead;

check pushing s-r:
	if button-locked is true:
		say "You can't twiddle the button any more. Entering a store seems to have broken it." instead;
	if gadget-secured is true:
		now gadget-secured is false;
	else:
		now gadget-secured is true;
	say "You push the button, and it [if gadget-secured is true]starts[else]stops[end if] glowing. The tip in the pit [if gadget-secured is true]clicks[else]vibrates[end if].";
	the rule succeeds;

to say c-r:
	say "[if gadget is cert]CERTIFY[else]RECTIFY[end if]";

to say r-c:
	say "[unless gadget is cert]CERTIFY[else]RECTIFY[end if]";

the blurb is part of the tagged gadget. description of blurb is "'Ask a qualified person if the [s-r] button is right for you. Or, at least, to learn what it does.'"

instead of examining gadget-screen:
	try examining gadget;

procedural rule while eating something: ignore the carrying requirements rule.

procedural rule while taking off show hows tag: ignore the carrying requirements rule.

the tight knot is part of the tagged gadget.

description of the knot is "It's simple but tight, with no way to start to loosen it."

instead of taking the knot:
	try untieing the knot instead;

instead of untieing the knot:
	say "There's no way to do much with the knot. It's simple and tight."

instead of untieing tag:
	try untieing knot instead;

instead of untieing gadget:
	try untieing knot instead;

check taking show hows tag:
	ignore the can't take component parts rule;

description of show hows tag is "'This gadget is certified untransmogrifiable. It can be used to SCAN objects to determine their transmogrification states. Removing tag invalidates warranty. One beep indicates changeabilty. Two mean a compound word.'[paragraph break]Above a small print disclaimer you see two helpful examples."

to say lemon-melon:
	if sr-acc is true:
		say "LEMON, two way arrow, and MELON. The m's and l's are red, but the other letters are green";
	else:
		say "[first custom style]L[r][second custom style]E[r][first custom style]M[r][second custom style]O[r][second custom style]N[r] <-> [first custom style]M[r][second custom style]E[r][first custom style]L[r][second custom style]O[r][second custom style]N[r][one of]. A little thought and you realize only two reds on the gadget makes things trivial[or][stopping]"

to say paste-tapes:
	if sr-acc is true:
		say "PASTE, two-way arrow, TAPES. The ST of paste is red and green, with the PE of tapes being green and red. Hm, Tapes starts with T and ends with S, while Paste starts with P and ends with E";
	else:
		say "[bluetext]PA[r][first custom style]S[r][second custom style]T[r][bluetext]E[r] <-> [bluetext]TA[r][second custom style]P[r][first custom style]E[r][bluetext]S[r][one of]. The red S/green T in PASTE and green P/red E in TAPES are, you realize, the first and last letters in the other word[or][stopping]";

to say prg:
	pad-rec-q "certify";
	pad-rec "rectify";

the examples are part of the show hows tag. understand "text" and "example" as examples.

description of examples is "CERTIFY: [lemon-melon].[paragraph break]RECTIFY: [paste-tapes].[prg]"

the small print disclaimer is part of the show hows tag.

description of small print disclaimer is "'Adventurers using the gadget frequently are no less certifiably heroic and no more certifiably practical than those who don't. Manufacturer not responsible for guilt and lack of intellectual self-satisfaction over using gadget too frequently or frustration from using gadget too rarely.'"

check taking off the show hows tag:
	try silently taking the show hows tag;

instead of taking the show hows tag:
	say "If it were a mattress tag, you'd laugh and pull it off, but everything's gotten a bit weird. You don't know about the warranty on it, but the tag seems pretty important. It's made of some weird plastic you can't just rip[one of].[paragraph break]Plus, embarrassingly, you've no clue how to undo the knot tying the tag to the handle--and you're not strong enough to pull the tag off[or][stopping].";
	if player does not have the gadget:
		say "[line break]By the way, it seems you don't even have the gadget. Did you mean to take the tagged gadget instead?";
		if the player direct-consents:
			say "Ok, taking the gadget.";
			try taking the gadget instead;
		otherwise:
			say "Ok.";

check pulling show hows tag:
	try taking show hows tag instead;

does the player mean examining the gadget-screen when gadget is held: it is likely.

does the player mean examining the gadget: it is very likely.

[description of colored writing is "'Provably 79.12% hintier than a tagged gadget. [b]Green print[r] gives you the start, [i]red print[r] the end. The middle bits fall into place.'[paragraph break]The example reads PA[i]S[b]T[r]E <-> TA[b]P[r][i]E[r]S. (red S, green T, green P, red E. Everything else blue.)"]

section blue lube and phail phial

[a hack here is to put this below the gadget so the "Ow" appears last]

the PHAIL phial is a thing in acne-bit cabinet. the phial is warpable.

description of PHAIL phial is "It feels tingly and looks glinty. It contains some blue lube that sloshes about a bit[if phial is not in cabinet]. You see the words GLEAN/ANGLE scratched on it, and it also reads, in small print, PROACTIVELY HELPING ADVENTURERS IN LIMBO. Geez, acronyms can be so contrived[else]. It looks like you could read it, if you took it from the cabinet[end if]."

the blue lube is part of the phail phial.

description of blue lube is "[if phial is in cabinet]You have to blink a couple times after looking at it, even from outside the cabinet. It has some weird powers, but you'd probably need to ask how to harness them[else if lube-asked is false]You sense it's powerful, but you need to look at it right[else]You remember what Nat Egam said. You can either ANGLE or GLEAN as you look at it, which may help your quest[end if]."

[Rule for deciding whether all includes blue lube while taking (this is the zap lube rule): rule fails.]

cabinet-bit-me is a truth state that varies.

check taking phial:
	if cabinet is visible:
		if lube-asked is false and player is not in strip:
			now cabinet-bit-me is true;
			say "Ow! The cabinet bites you as you try to take the phial. It didn't break your skin, so you don't need bactine[if gateman is in notices section][one of]. Nat Egam coughs, as if he might be able to help you[or][stopping][else if gateman is off-stage]. Maybe you could use someone to help you understand the cabinet[end if]." instead;


instead of opening the phail phial:
	say "The blue lube would leak out."

instead of doing something with the blue lube:
	if the current action is objasking generically:
		continue the action;
	if the current action is objasking about:
		continue the action;
	if the current action is taking:
		say "[if lube-asked is false]It probably belongs in the PHAIL phial, until you determine otherwise[else]You wouldn't be able to GLEAN or ANGLE then[end if].";
	if action is procedural, continue the action;
	say "The lube's really only good for staring at."

last-lube-turn is a number that varies. last-lube-turn is usually -5.

check examining blue lube:
	if lube is not in cabinet:
		if turn count < 5 + last-lube-turn:
			say "It's too soon since the last time you looked into the lube. Wait [5 + last-lube-turn - turn count] turn[if 5 + last-lube-turn - turn count > 1]s[end if], then try again.";
			decrement the turn count;
		else:
			now last-lube-turn is turn count;

report taking phail phial:
	if player has phail phial:
		say "The cabinet's doors seem to waver a bit[if cabinet-bit-me is true], but this time it doesn't nick you[else], but they don't slam on you[end if]." instead;
	continue the action;

section secureing

secureing is an action applying to nothing.

understand the command "secure" as something new.

understand "secure" as secureing.

carry out secureing:
	if player has gadget:
		try pushing s-r instead;
	otherwise:
		say "[reject]" instead;

section recuseing

recuseing is an action applying to nothing.

understand the command "recuse" as something new.

understand "recuse" as recuseing.

carry out recuseing:
	if player does not have gadget:
		say "[reject]" instead;
	if player is not in trips strip:
		say "You can't recuse unless you are in the trips strip[if button-locked is false]. The button's locked, anyway[else]. However, you can SECURE or PRESS SECURE[end if]." instead;
	if gadget-secured is false and button-locked is true:
		say "Not securing in your first trip means you can't use the gadget to recuse." instead;
	if number of solved regions is 1:
		say "The RECUSE button is for after you've solved two areas, but you haven't solved any, yet." instead;
	if number of solved regions < 3:
		say "You can't recuse yet. You still need to work through one more store." instead;
	if forest is unsolved:
		say "Suddenly, you know what to do. You point the gadget at [if store f is visible]store F[else]the forest you didn't get through[end if]. As if in a blur, you see werewolves in ice being shot, and you hear distant applause.";
		now store f is in lalaland;
		now forest-x is in lalaland;
		now forest is bypassed instead;
	if sortie is unsolved:
		say "Suddenly, you know what to do. You point the gadget at [if store f is visible]store I[else]the sortie you didn't get through[end if]. As if in a blur, you see a missile launched, and it bathes a grey castle in bubbles and rainbows and other obnoxiously smiley stuff.";
		now store i is in lalaland;
		now sortie-x is in lalaland;
		now sortie is bypassed instead;
	if metros is unsolved:
		say "Suddenly, you know what to do. You point the gadget at [if store f is visible]store I[else]the sortie you didn't get through[end if]. As if in a blur, you see a missile launched, and it bathes a grey castle in bubbles and rainbows and other obnoxiously smiley stuff.";
		now store m is in lalaland;
		now metros-x is in lalaland;
		now metros is bypassed instead;
	say "You don't seem to have any regions to recuse yourself from. From which to recuse yourself. And you don't get to skip [if store r is visible]store R[else]the resort[end if]." instead;
	the rule succeeds;

chapter intro-marcos

to intro-marcos:
	if annoying-switches > 5 and marcos-trumped is false and location of player is not notices section:
		say "A shady figure sidles up to you. 'Hey! Pal! The name's Marcos. Sellin['] macros. Ways to lump actions together. Streamline your thinking. Actually, not selling them at all, just hoping you remember me once you fix things here and are an acclaimed hero with clout.'[paragraph break]He takes the gadget away from you, fiddles with it, and gives it back. You are impressed with his dexterity, and yet, you feel it would not be too tough to imitate him.[paragraph break]'Just, if you think of one scan as R or C--you can make both of them with RC. Or CR. I won't judge.'[paragraph break]As you note this in your notepad, he pops out of view.";
		pad-rec "macros";
		now marcos-trumped is true;

chapter gleaning


gleaning is an action out of world.

understand the command "hanker/nk/kr/hkr/glean" as something new.

understand "glean" and "hanker" and "hkr" and "nk" and "kr" as gleaning.

carry out gleaning:
	if phial is not visible:
		say "[reject]" instead;
	if phial is in cabinet:
		if lube-asked is true:
			try taking phail phial;
			if player does not have phail phial:
				all-say "[bug-report] Please let me know how this happened." instead;
		else:
			all-say "You need to take the phial for that to happen. The cabinet may not want to relinquish it right away." instead;
	if blue lube is not visible:
		all-say "[reject]" instead;
	all-say "You stare into the blue lube for a bit. You see a small story unfold.[line break]";
	if location of player is notices section:
		if nametag is visible:
			all-say "You see yourself looking down at your nametag, mouthing a word and pointing to the gate as an old man appears. Then you see yourself tinkering with the tagged gadget on both settings, snapping your fingers and groaning, and walking through the gate." instead;
		all-say "You see Nat Egam sneaking up from behind you and smacking you on the head, saying to get going already...[paragraph break]And a few seconds later, he does[one of]. Well, the clairvoyance bit seems to work[or]. Again. Hooray for double-checking, I think[stopping]." instead;
	if location of player is trips strip:
		if store f is visible:
			all-say "You see yourself walking into woods instead of store F. Well, not quite woods. You think you hear lumber rumble." instead;
		if store i is visible:
			all-say "You see yourself examining the pictures on store I, then store I, then watching it collapse. You see yourself walking down a narrow exit. You even hear something like a rocket launch." instead;
		if store m is visible:
			all-say "You see yourself examining the map on store M. You hear a subway--or maybe just a busy city street." instead;
		if number of solved regions < 3:
			all-say "You see yourself entering [random visible portal]." instead;
		if store r is visible:
			all-say "You see yourself walking into store R, which temporarily looks like a luxury hotel, with palm trees around." instead;
		all-say "You see yourself relaxing in a large manse far from here." instead;
	if mrlp is forest:
		if Self-ID Fields is unvisited:
			all-say "You see yourself considering all four compass directions before picking the right one." instead;
		if Enclosure is unvisited:
			all-say "You see yourself [if number of things that are part of beard < 2]putting something on your face and then [end if]walking through the turnstile with ease." instead;
		if livers are off-stage:
			all-say "You see the liches working their way under the meats, which fall into the grinder." instead;
		if sliver is off-stage:
			all-say "You see the livers narrowing to a sharp, semi-metallic point." instead;
		if drapes are not in lalaland:
			all-say "You see yourself slashing at the drapes, which billow out." instead;
		if shotgun is off-stage:
			all-say "You see yourself reading the Notes Stone poem and carrying something stick-like." instead;
		if spread is visible:
			all-say "You see the spread fluttering as if outside an open window." instead;
		if red asp is visible:
			all-say "You see the a snake-skin patterned cloth hanging and swaying from an unseen wind." instead;
		if drapes are off-stage:
			all-say "You see yourself changing the [if red asp is in enclosure]red asp[else]spread[end if] [if player is not in enclosure]in the Enclosure [end if]into something easier to cut with the sliver." instead;
		if silver is not in lalaland:
			all-say "You see yourself [if silver is off-stage]molding the sliver into something more compact and glowing and then [end if]loading your shotgun." instead;
		if frost forts is unvisited:
			if player has spam or player has maps:
				all-say "You see yourself tracing something on the [if Spam is in lalaland]maps[else]Spam[end if] and then walking with a purpose." instead;
		if location of player is frost forts:
			if vowels are in frost forts:
				all-say "You see the vowels grow slavering teeth." instead;
			all-say "You are about to look in the phial, but it's survival time, here." instead;
	if mrlp is sortie:
		if centrifuge-stopped is false:
			all-say "You see yourself flipping the dial back and forth about six or seven times[sortie-end]." instead;
		if the nick is unvisited:
			all-say "You see yourself walking north from the centrifuge and being captured!" instead;
		if player is in the nick:
			all-say "You see yourself patting your stomach." instead;
		if taco is off-stage and coat is off-stage:
			all-say "You see yourself making a meal, then dressing up to go out. You don't see yourself EATING the meal." instead;
		if warts are part of the player:
			all-say "You see your face clear again, pleased you reversed the warts." instead;
		if hoses are in roomroom:
			all-say "You see yourself smiling at your feet with pride!" instead;
		if moor is unvisited:
			all-say "You see yourself [if player is not in roomroom]going to the southeast room and [end if]disappearing!" instead;
		if anapest is in moor:
			all-say "You see a rough but friendly fellow scaring Pat away." instead;
		if hay is not part of scraped wall:
			all-say "You see yourself filling up a wall then making it disappear." instead;
		if silo is not in moor:
			all-say "You see yourself building a huge structure without saying anything." instead;
		if black door is off-stage or panel is off-stage or missile is off-stage:
			all-say "You see yourself programming the silo, seeing it moving. It has something in it, a way to get in, and it's programmable." instead;
		if hoots button is visible or trees button is visible:
			all-say "You see yourself pointing at one of the buttons before it changes. Then you push it and hear a roar." instead;
		all-say "The blue lube shows you nothing. You probably just need to push a button or something." instead;
	if mrlp is metros:
		if night thing is in Hotel:
			all-say "You see yourself giving something reddish to [if Hotel is visited]the night thing in the hotel[else]some weird monster[end if] before it runs off." instead;
		if cake is in condo:
			all-say "You see bugs crawling over rich people, while you sit in the center, smiling." instead;
		if player has heaths:
			all-say "You see a weapon at your side, as if tied to a belt." instead;
		if player has begonias:
			all-say "You are holding a bag with one hand and plugging an ear with another." instead;
		if neon pig is in Elm Train Terminal and Elm Train Terminal is visited:
			all-say "You see the neon pig exploding, the empty space being filled with--an ear of corn?!" instead;
		if Anti-Cool Location is unvisited:
			d "dry cake: [location of dry cake].";
			d "keycard: [location of keycard].";
			all-say "You see yourself putting the [if brocade is in lalaland]barcode[else]brocade[end if] and the [if player has keycard]keycard[else]dry cake[end if] on the sensor in the Underside. Nothing works until you put them together." instead;
		if player does not have tulip:
			if player has noise bag or player has begonias:
				all-say "You see yourself grabbing the tulip as the nerds close their ears!" instead;
			all-say "You see yourself opening the termite emitter so it swarms over the nerds[if emitter is not ungnatted]. You wonder who would be dirty enough to give you a quick refill[end if]." instead;
		if player is not in Bassy:
			all-say "You see yourself (finally) walking across the tracks." instead;
		if siren is visible:
			all-say "You see yourself pounding the siren and then doing various gymnastic tricks--wait, no, that'd be cray. Too many verbs to guess." instead;
		if beats are visible:
			all-say "You see a crooked musical chord replaced with a monster worse than the night thing. Then you take something from your [if player has noise bag]noise bag[else]sheath[end if] and it collapses before you touch it." instead;
		if sword is visible:
			all-say "A quick swordfight, and the beast is vanquished!" instead;
		all-say "Words morph into a sword that overpowers the beast." instead;
	if mrlp is resort:
		if player is in Astral Altars:
			all-say "You watch as the tiles shring from a large land mass to a smaller one." instead;
		if player is in Isle:
			all-say "You see yourself either swimming or flying east, but not without proper gear." instead;
		if player is in Rived Drive:
			if poles are in Rived Drive:
				all-say "You see the poles to the east bend at an angle." instead;
			all-say "You see two visions: one, [if tool shed is not in Rived Drive]you trying out the toeholds[else]the tool shed being destroyed[end if], and another, you wearing the [if sprig is in Rived Drive]sprig, modified[else]grips[end if] and the [if spore is in Rived Drive]spore, modified[else]ropes[end if]. In each, you climb east." instead;
			if toeholds are visible:
				all-say "You see yourself walking east." instead;
			if ropes are visible and grips are visible:
				all-say "You see yourself walking east." instead;
			all-say "You see yourself struggling with the tool shed, or with things around, to find a way to climb the slope." instead;
		if player is in hotspot:
			if red bull burdell is visible:
				all-say "You somehow manage to defeat Red Bull Burdell while still on the ground." instead;
			if red bull burdell is in lalaland:
				all-say "You see yourself walking east." instead;
			all-say "You see the [if riot is in hotspot]riot[else]trio[end if], happier now, discussing art and wearing dirty smocks." instead;
		if player is in Means Manse:
			all-say "You see yourself just being. No, abiding. No, it's hard to describe what you're doing, since it's so passive." instead;
	all-say "[bug-report] This part needs a story.";
	the rule succeeds;

report gleaning (this is the angle-glean check rule):
	h-check;
	continue the action;

to say sortie-end:
	say ". It all seems to end with some sort of rocket hitting a huge building. But there is no explosion, just rainbows and bubbles. Weird";

book Trips Strip

chapter Trips Strip

[yeah, redundancy but...]

Trips Strip is a room. "You see what was once a bunch of small malls. Most lots appear vacant or dilapidated[if storeall are examined][exc-which][end if]. A tepid icon depiction is drawn out near various stores."

Trips Strip is in Stores. last-loc of Stores is Trips Strip.

sto-all is a truth state that varies.

after examining disamb-store:
	now sto-all is true;
	continue the action;

after examining a sto when sto-all is false:
	now sto-all is true;
	say "You can X STORES to examine all the stores.";
	continue the action;

definition: a sto (called stst) is lookdesc:
	if stst is store b, decide no;
	if stst is in lalaland, decide no;
	if stst is flippable, decide yes;
	decide no;

to say exc-which:
	if store f is in lalaland and store i is in lalaland and store m is in lalaland and store r is in lalaland:
		continue the action;
	let nvs be the number of lookdesc stos in trips strip;
	if nvs is 1:
		say ", except [random sto that is lookdesc]";
		continue the action;
	say ", except store[if number of stos that are lookdesc > 1]s[end if] ";
	let sofar be 0;
	if store f is in strip:
		say "F";
		increment sofar;
	if store i is in strip:
		increment sofar;
		say "[if sofar is nvs], and [else if sofar > 1], [end if]I";
	if store m is in strip:
		increment sofar;
		say "[if sofar is nvs], and [else if sofar > 1], [end if]M";
	if store r is in strip:
		increment sofar;
		say "[if sofar is nvs], and [else if sofar > 1], [end if]R";
		now sofar is 1;

section tepid icon depiction

the tepid icon depiction is scenery in trips strip. "It's not high art, but you [if regions-to-clue is 1]look at the remaining one[else]pick one of the [regions-to-clue in words] at random[end if].[line break][icon-depict]."

to decide which number is regions-to-clue:
	let temp be 0;
	if forest is unsolved, increment temp;
	if metros is unsolved, increment temp;
	if sortie is unsolved, increment temp;
	if temp < 2, decide on 1; [then R appears]
	decide on temp;

table of iconmaps
icon-rule	icon-text
forest-unsolved rule	"Near Store F, you see yourself walking past innumerable trees, wearing a disguise through a turnstile, and finally creating some sort of explosion somewhere very cold"
sortie-unsolved rule	"Near Store I, you see yourself making food, entering a sacred area behind a secret passage, and creating some sort of fireworks that seem to land on a castle without harming it"
metros-unsolved rule	"Near Store M, you see yourself picking up several hours and taking a light source into a very deep place underground. You seem to have a hand over one ear in each picture"
resort-ready rule	"Near Store R, you see yourself hopping from one island to another, climbing a plateau, and dispersing an angry crowd before quaking in fear"

this is the forest-unsolved rule:
	if forest is unsolved, the rule succeeds;
	the rule fails;

this is the sortie-unsolved rule:
	if sortie is unsolved, the rule succeeds;
	the rule fails;

this is the metros-unsolved rule:
	if metros is unsolved, the rule succeeds;
	the rule fails;

this is the resort-ready rule:
	if metros is unsolved or sortie is unsolved or forest is unsolved, the rule succeeds;
	the rule fails;

icon-index is a number that varies. icon-index is 1.

to say icon-depict:
	let got-one be false;
	let current-icon be icon-index;
	let cycled be false;
	while cycled is false or icon-index is not current-icon:
		choose row current-icon in table of iconmaps;
		consider the icon-rule entry;
		increment current-icon;
		if current-icon > number of rows in table of iconmaps:
			now current-icon is 1;
			now cycled is true; [this is just to make sure there's no infinite loop]
		if the rule succeeded:
			say "[icon-text entry]";
			now icon-index is current-icon;
			the rule succeeds;
	say "You see nothing. You should see something, but you don't.";

section direction redirection

check going down in trips strip:
	if metros is solved and sortie is solved:
		say "You've solved both the metros and sorties." instead;
	if metros-x is visible and sortie-x is visible:
		if metros is solved:
			try entering sortie-x instead;
		if sortie is solved:
			try entering metros-x instead;
		say "You've opened two ways down, so you'll specifically need to ENTER SORTIE or ENTER METROS instead." instead;
	if metros-x is not visible and sortie-x is not visible:
		say "You can't find any place to go down[if sortie is solved or metros is solved] that you need to any more[end if][if sortie is not solved or metros is not solved], but there's at least one to find[end if]." instead;
	if metros-x is visible:
		try entering metros-x instead;
	if sortie-x is visible:
		try entering sortie-x instead;
	say "Unfortunately, there are no cool hidden passages beneath the stores. That you can see. Yet." instead;

check going inside in trips strip:
	if number of visible available portals is 1:
		try entering a random visible available portal instead;
	if number of visible available portals is 0:
		say "You'll need to figure a store out to go inside[if number of not unsolved regions > 1], on top of what you solved[else], first[end if]." instead;
	say "That's ambiguous--you can currently enter [the list of visible available portals] to explore areas you haven't solved yet. No one looks more intimidating than the other." instead;

check going nowhere in trips strip:
	say "You'd probably get lost. There's a long expanse of nothing. Best to browse through the stores. Examine them a bit." instead;

cool-index is a number that varies.

check smelling in Trips Strip:
	say "There's a mixture of smells coming from the shops. You could probably go up to one and examine it." instead;

the wooden sign is scenery in the Trips Strip. description of wooden sign is "'A store is not a shop.' Beneath is scribbled 'hopes, chops, hoops, well, that's it.' ... no other words, anyway.'"

instead of taking the wooden sign:
	say "It's too heavy. And besides, what would you do with it?"

instead of singing in the Trips Strip:
	say "The sign seems to vibrate. Not enough to pick it up. It's too heavy[if score is 0]. But still, curious[end if]."

section stos

a sto is a kind of thing. a sto is usually undescribed. a sto is usually fixed in place.

understand "unlock [something]" as unlocking it with.

rule for supplying a missing second noun while unlocking:
	now second noun is notepad;

before opening:
	if noun is a sto:
		say "It's locked, and you won't find the key." instead;

before closing:
	if noun is a sto:
		say "It's already closed. And locked." instead;

instead of unlocking:
	if noun is a sto:
		say "Forget it. It's good and shut.";
	else if noun is metallic door:
		say "It has no visible keyholes. The only possible interface seems to be the sensor.";
	else if noun is yard-door:
		say "[if bugle-played is true]You already did when you played the bugle.[else if bolt is in lalaland]You already got rid of the bolt.[else]No keyholes. Maybe you can break it down some other way?[end if]";
	otherwise:
		say "You don't need to.";

instead of searching:
	if noun is not a store:
		say "[one of](Nothing in this game has anything deeply hidden, so searching works like examining.)[or][run paragraph on][stopping]";
		try examining the noun;
	otherwise:
		say "It's closed and locked, so you take a look at it.";
		try examining the noun;

section stores

to say store-summary:
	if number of visible flippable stos is 0:
		say "You don't see any more stores. You should probably get going to that resort";
	otherwise:
		say "Of the various stores you see, only [list of puzzlematic stos] look[if number of puzzlematic stos is 1]s[end if] like you can do anything with [if number of puzzlematic stos is 1]it[else]them[end if]. [if store b is visible]Store B looks--well, not quite dead, but not very substantial, either. [end if]Store R [if you-can-advance]finally looks like you can visit[else]has COMING SOON spray-painted to the side it[end if]"

definition: a sto (called stst) is puzzlematic:
	if stst is store b, decide no;
	if stst is store r, decide no;
	if stst is flippable, decide yes;
	decide no;

to show-em-all:
	say "[one of]They're labelled with letters, not numbers, though you can refer to them by number if you want. [or][stopping][store-summary]. A few others seem greyed-out, like in a video game or something. There can't be anything in any of them. [no line break]";
	pad-rec "stores";

to say mult-if:
	if recbuffer matches the text "/":
		say "multiple entries in ";

say-break is a truth state that varies.

to pad-rec-p (q - text):
	now say-break is true;
	pad-rec q;

to pad-rec (q - text):
	repeat through table of pad-stuff:
		if there is no short entry:
			say "[bug-report] need short entry for [q].";
		else if short entry is q:
			if known entry is false:
				now known entry is true;
				if there is no verify entry or verify entry is true or number of characters in recbuffer > 0:
					say "[line break][i][bracket]You record the information about [recbuffer][short entry] in [mult-if]your [one of]dope tan [or][stopping]notepad.[close bracket][r][no line break]";
			now recbuffer is "";
			if say-break is true:
				say "[line break]";
			the rule succeeds;

recbuffer is indexed text that varies.

to pad-rec-lump (q - text):
	repeat through table of pad-stuff:
		if there is no short entry:
			say "[bug-report] need short entry for [q].";
		else if short entry is q:
			if known entry is false:
				now known entry is true;
			now recbuffer is "[recbuffer][short entry]/";
			the rule succeeds;

to pad-rec-q (q - text):
	repeat through table of pad-stuff:
		if there is no short entry:
			say "[bug-report] need short entry for [q].";
		else if short entry is q:
			if known entry is false:
				now known entry is true;
			the rule succeeds;

to pad-del (q - text):
	repeat through table of pad-stuff:
		if there is no short entry:
			say "[bug-report] need short entry for [q].";
		else if short entry is q:
			if known entry is true:
				now known entry is false;
			the rule succeeds;

instead of taking storeall:
	say "[ment-not-phys]." instead;

to say ment-not-phys:
	say "Your extreme powers are mental, not physical";

storeall is plural-named privately-named scenery in trips strip. understand "all/stores/lots/mall/malls/strip" and "small malls" as storeall. printed name of storeall is "all the stores".


instead of entering storeall:
	say "They're all closed, and even if they weren't you'd have to pick a specific one.";

description of storeall is "[stos-desc]".

first-warned is a truth state that varies. first-warned is false.

to say stos-desc:
	if first-warned is true:
		say "They'd probably take too long to look at one-by-one. So you decide for a general overview.";
		now first-warned is true;
	show-em-all;

section disamb-store as all the stores

disamb-store is privately-named scenery in trips strip. printed name of disamb-store is "the entire store bank". understand "store" and "entire/ store bank/" as disamb-store when player is in trips strip.

instead of entering disamb-store:
	say "Hmm, you can't enter all the stores at once. You'll need to pick a store--you can also refer to it by its abbreviation, e.g. Q for Store Q.";

does the player mean examining disamb-store:it is likely.
does the player mean entering disamb-store: it is likely.
[does the player mean doing something to disamb-store: it is likely.]

description of disamb-store is "[sto-desc]".

instead of burning:
	if noun is a sto:
		say "The stores have suffered enough.";
	otherwise if noun is warts:
		say "That's a false cure that makes them worse.";
	otherwise:
		say "You've got no source of fire[if player has lit-up tulip]. The tulip doesn't count--it's child safe and stuff[end if].";

instead of pushing a sto:
	say "Physical activity won't do it, here.";

instead of entering a sto:
	say "It's closed and locked, and you won't find a key[if noun is flippable]. Maybe you can do something else to it[else]. It doesn't seem like you need to enter, anyway[end if]."

check taking a sto:
	say "[ment-not-phys]." instead;

to say store-overview:
	if number of visible flippable stos is 0:
		say "You've gotten rid of all four stores you could have.";
		the rule succeeds;
	say "Most seem greyed out. [run paragraph on]";
	if number of visible flippable stos is 1:
		say "Only [list of visible flippable stos] seems worth a closer look.";
		the rule succeeds;
	say "You might be able to do something with [list of visible flippable stos].";
	the rule succeeds;

to say sto-desc:
	say "There are 26 of them. Would you like a general overview?";
	if the player direct-consents:
		say "[store-overview]";
		the rule succeeds;
	otherwise:
		if store f is visible:
			say "Okay, the first one you see is store f...";
			try examining store f;
			the rule succeeds;
		if store i is visible:
			say "Okay, the first one you see is store i...";
			try examining store f;
			the rule succeeds;
		if store m is visible:
			say "Okay, the first one you see is store m...";
			try examining store f;
			the rule succeeds;
		if store r is visible:
			say "Okay, the first one you see is store r...";
			try examining store f;
			the rule succeeds;
		say "No remaining store looks terribly adventurous.";
		the rule succeeds;

section sto by sto

the plural of sto is stos.

to say gd:
	say "It's mostly greyed out, like an area in a video game you can't get to. [no line break]"

to say na:
	say "There isn't even a store here any more--just a plot. [no line break]"

Store A is a sto. it is in trips strip. understand "store/ 1/one" as store a.

description of store a is "You can't imagine anything as rote as calling itself A Store, but it did."

Store B is a sto. understand "store/ 2/two" as store b.

description of store b is "It seems to catch a rainbow every now and then, and you smell fruits you can't discern. It looks nowhere near as, well, lively as stores F, I or M, but maybe it holds a small treat."


rgtext of store b is "[gcn][rc][rc][rc][gc][rc]". lgth of store b is 6. gpos of store b is 1. rpos of store b is 2. cert-text of store b is "S[d1][d1][d1][ast]E[d1]". rect-text of store b is "S[d1][d1][d1][d1][ast]T".

the marquee is part of store b. the marquee is auxiliary. description of the marquee is "It reads: BERTO'S fine (the rest is cut off.)"

rgtext of marquee is "[rcn][rc][gc][rc][rc][rc]". lgth of store b is 6. gpos of marquee is 6. rpos of marquee is 4. cert-text of marquee is "-[d1][ast]R[d1][d1][d1]". rect-text of marquee is "S[d1][d1][d1][d1][ast]T".

the sorbet is an undesc. the sorbet is amusing.

Store C is an amusing sto in subsite. understand "store/ 3/three" as store c.

description of store c is "[one of]It's bolted up but seems to be advertising a corset sale. Useful for people who work in the escort sector. This game is word-weird, not sex-weird, though[or]You briefly wonder if you'll find sapient panties in there that might give a hint, then you feel kinda guilty. Whether you're male or female[or]'This is a LEGIT AD to help you (censored)!!!'[or]You see striptease tapestries and are sorry you did[or]'No shower here. Don't ask.'[or]Apparently employees of L'Harem Harlem pay only 69% of retail here[or]All Lipsopolis items are 20% off, apparently. Whatever those were.[or]It's adults only, but no Lady Lust will visit any time soon[or]Oh dear. Not a legit ad. 'Get L...'? Whoah.[or]You think you hear 'You perv, voyeur :p' but the emoticon makes it moot. Nice.[or]'Helpin' you deuces seduce!'[or]That's all the innuendo I got. There are a lot better sites on the Internet to find information on THAT sort of thing than wherever you downloaded this game from. Go on. Harp. Pry[stopping]."

Store D is a sto. understand "store/ 4/four" as store d.

description of store d is "[na]"

Store E is a sto. understand "store/ 5/five" as store e.

description of store e is "It's bolted up but seems to be advertising a stereo sale."

Store F is a sto. understand "store/ 6/six" as store f. rgtext of store f is "[rcn][rc][rc][rc][rc][rc]". lgth of store f is 6. gpos of store f is 6. rpos of store f is 2. cert-text of store f is "-[d1][d1][d1][d1][d1]". rect-text of store f is "F[d1][d1][d1][d1][ast]T".

description of store f is "This is odd. It's kind of green on top, brown on the bottom. You smell pine needles and dirt and leaves you can't quite discern[if forest is unvisited]. You think back to the gateway and how you got here. There might be a way to do something to this store[end if]."

the roadsign is undesc. the roadsign is part of store f. understand "road sign" as roadsign.

instead of doing anything other than examining roadsign:
	say "It's too high to do anything except examine. Seeing as how it's green with red lettering, you can read it, as high up as its writing is.";

understand "writing" as roadsign.

check examining roadsign:
	say "It's a strain to read, and you wonder if maybe you can look for more natural clues as to what to do with store F. Try and pick out the writing anyway?";
	if the player direct-consents:
		say "The sign appears to say, in all red, [one of]E FORTS/OSTFER[or]TRESFO/S EFTRO[cycling][r] before a gust of wind picks it up and flips it around.";

Store G is a sto. understand "store/ 7/seven" as store g.

description of store g is "A flier stapled to the front of the door says [unless you-can-advance]REST?! GO![else]GO REST![end if]. There's nothing else interesting about the store, though."

the go rest flier is scenery in trips strip. go rest flier is undesc.

instead of examining the go rest flier:
	say "It's just a subtle hint to get on with things[if you-can-advance]--in this case, to your reward in store R[end if]."

Store H is a sto. understand "store/ 8/eight" as store h. [description of store h is "Spray painted on this locked store is: others are in the throes of being reshot."]

description of store h is "Inside store H you see such a miscellany that you doubt it was successful even in better times."

Store I is a sto. understand "store/ 9/nine" as store i. lgth of store i is 6. gpos of store i is 1. rpos of store i is 5. rgtext of store i is "[gcn][rc][rc][rc][rc][rc]". cert-text of store i is "S[d1][d1][d1][d1][d1]". rect-text of store i is "S[d1][d1][d1][d1][ast]E".

the Tories are plural-named auxiliary scenery in trips strip. lgth of tories is 6. gpos of tories is 6. rpos of tories is 5. rgtext of tories is "[rcn][gc][gc][rc][rc][rc]". cert-text of tories is "-[ast]O[ast]R[d1][d1][d1]". rect-text of tories is "S[d1][d1][d1][d1][ast]E".

description of tories is "A closer look indicates that they are glued to the inside of the store window, instead of hanging from a wire on a nail or something. The who isn't as important as what they are--Tories."

understand "pictures/picture" and "prime/ minister/ministers" as tories when tories are visible.

[note we need to activate TORIES]

description of store i is "Store I has pictures of famous political figures in the window--Winston Churchill, Benjamin Disraeli and that great charmer, Margaret Thatcher[one of] (*)[or][stopping]. You think you remember what party they belonged to. The pictures are big enough to obscure--almost--the outline of a trap door behind them[one of].[paragraph break](*) semantically, too good to pass up. Feel free and welcome to picture it being said sarcastically[or][stopping]."

after examining store i for the first time:
	say "[one of][i][bracket]NOTE: this is not a political statement on their party.[close bracket][r][line break][or][stopping]";
	now td is in trips strip;

Margaret Thatcher is part of the Tories. description of Margaret is "Her looks are not important. Okay, the Iron Lady, etc[tory-clue].";

Winston Churchill is part of the Tories. description of Winston Churchill is "His looks are not important. Okay, bulldogish face, cigar, etc[tory-clue].";

Benjamin Disraeli is part of the Tories. description of Benjamin Disraeli is "He's wearing one of those long coats with vest and pocket-watch you guess were popular in Victorian times. You know you should know who he is more than you do, but his face is familiar[tory-clue].";

to say tory-clue:
	if player has gadget:
		say "[one of][or]. Scanning the pictures for clues physically is all well and good, but maybe your gadget would help[or]. You bring your gadget too close to the pictures, and it begins behaving weirdly[or][cycling]";

Store J is a sto. understand "store/ 10/ten" as store j.

description of store j is "[na]"

Store K is a sto. understand "store/ 11/eleven" as store k. rgtext of store k is "[rcn][rc][rc][rc][rc][rc]"

description of store k is "A peculiar smell of smoke and incense seeps from store k, but that's probably not the BIG reason this place went downhill. No use prying."

Store L is a sto. understand "store/ 12/twelve" as store l.

description of store l is "You take a peek inside but feel loster and loster as you do."

Store M is a sto. understand "store/ 13/thirteen" as store m. rgtext of store m is "[rcn][rc][rc][gc][rc][rc]". lgth of store m is 6. gpos of store m is 6. rpos of store m is 1. cert-text of store m is "-[d1][d1][ast]R[d1][d1]". rect-text of store m is "M[d1][d1][d1][d1][ast]S".

description of store m is "There's no window in store m--just a detailed map of a subway."

subway map is part of store m. description of subway map is "It's for a city called Mt. Rose, apparently."

Store N is a sto. understand "store/ 14/fourteen" as store n.

description of store n is "It's greyed out, but you see a music book inside, songs for tenors, apparently."

Store O is a sto. understand "store/ 15/fifteen" as store o.

description of store o is "[na]"

Store P is a sto. understand "store/ 16/sixteen" as store p.

description of store p is "[gd]A poster covers the entire window. It's turned away from you, as if to say, don't worry about solving it this game, pal."

the poster is part of store p. the poster is amusing. description of poster is "Wait! There is some writing, if you look closely.[paragraph break]'This poster intentionally left blank until next game.'"


to say fake-clue of (myst - a sto):
	say "[paragraph break]";
	preef myst;

Store Q is a sto. understand "store/ 17/seventeen" as store q.

description of store q is "[na] There's no secret passage to store u, either."

Store R is a sto. understand "store/ 18/eighteen" as store r. rgtext of store r is "[rcn][rc][rc][rc][rc][rc]". lgth of store r is 6. gpos of store r is 4. rpos of store r is 2. cert-text of store r is "-[d1][d1][d1][d1][d1]". rect-text of store r is "R[d1][d1][d1][d1][ast]T".

description of store r is "It may be the smallest store in the strip. [how-far-along]. You also see a roster in the front door."

to say how-far-along:
	if number of not unsolved regions is 1:
		say "It's almost all grey, except for a touch of red at the corners";
	otherwise if number of not unsolved regions is 2:
		say "There's a thin band of red paint around the bottom";
	otherwise if number of not unsolved regions is 3 and gadget-secured is false:
		say "Store R is now about halfway red";
	otherwise:
		say "Store R is now completely red";
	say ". You [if you-can-advance]should be able to do something to it like with the other stores[else]probably need to see what's behind at least one other stores first[end if]"

the roster is part of store r. the roster is auxiliary. rgtext of roster is "[gcn][rc][gc][rc][rc][rc]". gpos of roster is 1. rpos of roster is 4. lgth of roster is 6. cert-text of roster is "R[d1][ast]S[d1][d1][d1]". rect-text of roster is "R[d1][d1][d1][d1][ast]T".

instead of taking the roster:
	say "It's taped inside the front door, and besides, it's just there for information."

to decide whether you-can-advance:
	if number of not unsolved regions < 3:
		decide no;
	if number of not unsolved regions is 3 and gadget-secured is false:
		decide no;
	decide yes.

description of roster is "The roster on the front of store R reads: 'People who have earned a vacation: you[if you-can-advance] (well, go on!)[else] (well, soon!)[end if]'"

Store S is a sto. understand "store/ 19/nineteen" as store s.

description of store s is "As you get near, you hear GO AWAY YOU TOSSER. The accent doesn't sound British, so you suspect this person just needed to use a new swear."

Store T is a sto. understand "store/ 20/twenty" as store t.

description of store t is "The window of store T is really lovely stained-glass--it's a depiction of a family of otters."

Store U is a sto. understand "store/ 21/twentyone" as store u.

description of store u is "[gd]The floor looks like some sort of cross-country map."


Store V is a sto. understand "store/ 22/twentytwo" as store v.

description of store v is "[gd][one of]You see people voting glumly and you think you hear them whisper it doesn't matter. Their votes go in the stove anyway. But politics wasn't in your job description. There are, apparently, more basic needs than that right now. Plus it's pervy to vote pry[or]Voters...but there's nothing to vote ON, yet[stopping]."


Store W is a sto. understand "store/ 23/twentythree" as store w.


description of store w is "You see replicas of two tall, narrow buildings."

Store X is a sto. understand "store/ 24/twentyfour" as store x.

description of store x is "[na]"

Store Y is a sto. understand "store/ 25/twentyfive" as store y. rgtext of store y is "[rcn][rc][rc][rc][gc][rc]".


description of store y is "[gd]However, the store seems filled with water. There's a slimy bit and a small glistening sphere."

Store Z is a sto. understand "store/ 26/twentysix" as store z.

description of store z is "[na]"

section basic actions

does the player mean examining a direction when player is in trips strip: it is unlikely.

check examining a direction in trips strip:
	if player's command matches the regular expression "\b<a-z>$", case insensitively:
		try examining the store instead;

td is privately-named scenery in trips strip. printed name of td is "trap door". understand "trap/ door" and "trapdoor" and "place" and "outline" as td.

description of td is "There's a message on it. You have to move around to see all the letters behind the pictures, but when you do, it says:[paragraph break][fixed letter spacing]PROPERTY OF[line break]  STORE I[paragraph break]TO ATTACKING[line break]   MISSION[variable letter spacing]. [paragraph break]Whoah, heavy stuff."

instead of opening td:
	say "You can't get in the store[if cur-score of stores is 0]. It might be easier to try your luck/skill in Store F first.[else]. How did you find a passage through [other-store], again?[end if]";

to say other-store:
	say "[if forest-x is visible]Store F[else]that other store[end if]";

section general portal checks

Rule for supplying a missing noun while entering (this is the other stuff to enter rule):
	if passage is visible:
		now the noun is the passage;
		continue the activity;
	if location is trips strip:
		let Q be number of visible available portals;
		if Q > 1:
			say "That's ambiguous--you can currently enter [the list of visible available portals] to explore areas you haven't solved yet." instead;
		else if Q is 0:
			say "You don't have anywhere to enter." instead;
		otherwise:
			now the noun is a random visible available portal;
			continue the activity;
	otherwise:
		continue the activity.

section forest portal

does the player mean entering the forest-x: it is likely. [forest is first in alphabet and easiest]

the forest-x is a proper-named privately-named thing. it is fixed in place. the printed name of forest-x is "the forest". "There's a forest here where store F was[if forest is solved], but you probably don't need to go back there[end if].". forest-x is a portal. forest-x is fixed in place.

understand "forest" as forest-x.

description of forest-x is "[if forest is solved]It's real verdant, yeah. I could tell you about what's inside, but you've been through it[else]It's bigger on the inside than the outside, you're sure, or something like that[end if]."

button-locked is a truth state that varies.

secure-warn is a truth state that varies;

check entering the forest-x:
	if Forest is solved:
		say "You already solved the forest. Maybe you should look elsewhere?" instead;
	check-2-of-3;
	if last-loc of forest is rf and rf is unvisited:
		say "As you walk in the forest, you hear rumors of monsters ravaging the surrounding areas. Not zombies, or vampires, or skeletons. Trying to figure what it is, you daydream maybe YOU could be that hero--so successfully that you get lost!";
		say "[wfak]Until you stumble on a small clearing. You think you [if shout is in sf]hear something[else if thorn is in sf]stepped on a thorn[else if teas are in sf or stew is in sf]smell something[else]should see a clue, but nothing's there[end if].";
	now player is in last-loc of forest;
	recover-items instead;

section sortie portal

the sortie-x is a privately-named proper-named portal. "Some stairs lead down from the wreckage of store I, further than you can see[if sortie is solved]. But no sense looking--you know what's there, and you've taken care of it[end if]."

check climbing sortie-x:
	try entering sortie-x instead;

check exiting in trips strip:
	if trips strip is visible:
		try entering sortie-x instead;

the printed name of sortie-x is "the sortie". understand "sortie" and "stairs" and "stairway" as sortie-x. sortie-x is fixed in place.

description of sortie-x is "It's a stairway. For making a sortie. Exiting[sortie-have]"

to say sortie-have:
	if sortie is solved:
		say ". But you already did. It's not worth revisiting.";
	otherwise:
		say ". Though you probably want to ENTER it to exit the strips[if metros-x is not visible]. Or go DOWN[end if].[no line break]"

check entering sortie-x:
	if sortie is unsolved:
		check-2-of-3;
		move player to last-loc of sortie;
		recover-items instead;
	otherwise:
		say "You did what you needed in the moor. No sense retracing your steps." instead;

section metros portal

the metros-x are a plural-named privately-named portal. "You see a down escalator here[if metros is solved], but it's not worth revisiting the metros[end if]."

description of metros-x is "The escalator has TO THE METROS scrawled on it."

the printed name of metros-x is "the metros".

understand "metros" as metros-x.

understand "escalator" as metros-x when metros-x is visible.

check climbing metros-x:
	try entering metros-x instead;

to check-2-of-3:
	if button-locked is true:
		if number of solved regions is 3:
			say "You think you hear oohing and aahing in the background at the adventurer who has decided to do more than the bare minimum.[paragraph break][i][bracket]Fourth wall note: you can UNDO and recuse if you want to.[close bracket][r][line break]"

check entering metros-x:
	if metros is not unsolved:
		say "You've been there, done that[if metros is bypassed], or had it done, at any rate[end if]. Big city life is not for you." instead;
	check-2-of-3;
	say "The elevator's descent is rapidly scented worse. After you pass [one of]a[or]that[stopping] 'Tasers? You bet! Asters? Out, bye!' billboard, an automated voice announces that Mt. Rose has made its freedom more def, so ordinary citizens are motivated to level up and money farm just like Red Bull Burdell, and a funky thumping beat helps them to action.[paragraph break]You jog down the elevator to escape it, but of course it's coming from the city[if drainage is in underside]. And you step into some drainage at the bottom. Eww[end if][if underside is visited]. Which you should've remembered from last time[end if].[wfak]";
	move the player to last-loc of metros;
	recover-items instead;

to recover-items:
	repeat with JJJ running through item-list of mrlp:
		now player has JJJ;
	repeat with JJJJ running through worn-list of mrlp:
		now player wears JJJJ;

section resort portal

the r-p is a privately-named thing. "You see a big resort is here. It seems like it's all for you! All you have to do is enter.";

the r-p is a portal.

the printed name of r-p is "resort". understand "resort" as r-p.

instead of taking r-p:
	say "Enter it instead.";

description of r-p is "Man, it's beautiful, spacious and sunny. Even sunnier than the Trips Strip, which is much nicer since you started cleaning up, but still..."

resort-known is a truth state that varies. resort-known is usually false.

check fliptoing the r-p:
	if you-can-advance:
		continue the action;
	if store r is visible:
		say "That seems like it should work, but you sense you have not done enough yet[if Isle is unvisited]. In fact, you probably haven't even visited some place you need to work through[end if]. But maybe, soon, you will.";
		preef store r instead;

check entering the r-p:
	say "'You! Find! Unify! Do!' a voice booms. You stride into the resort thinking 'Gee. Damn. Endgame.' But it is a mirage! You're gamier than to let that bother you, though, even though you hardly seem to be in paradise.";
	now the player is in Astral Altars instead;

book Forest

chapter Softer Forest (sf)

sf is a privately-named room in Forest. the printed name of sf is "Softer Forest".

after printing the locale description for sf when sf is unvisited:
	set the pronoun it to a random guider in sf;

understand "forest1" as sf when debug-state is true.

understand "softer" and "softer forest" as sf when mrlp is forest.

check going in sf:
	say "Hm. You don't have any reason to believe anything interesting's that direction. Except maybe bad interesting, like [one of]having a snake sneak[or]a fauns snafu[or]a stag or gators[or]a stoat making toast of you[or]slickest stickles[at random] or something." instead;
	the rule succeeds;

description of sf is "You recognize no trees: a sprucy cyprus, or even forensic conifers, and no clear sign of clearings. But [vis-hint]."

to say vis-hint:
	say "[if stew is visible or teas are visible]there's a[nuthers] smell[else if shout is visible]you hear a shout[else if thorn is visible]a thorn sticks up here[else]there should be something, but there isn't. BUG[end if]"

to say nuthers:
	unless stew is off-stage or teas are off-stage:
		say "nother";

section guiders

[guiders are items that cue the direction to go. There are four.]

a guider is a kind of thing. a guider is usually scenery. a guider has a direction called godir. a guider is usually flippable.

check taking a guider:
	if noun is thorn:
		say "You'd just poke yourself. Maybe you can take a hint from it.";
	else:
		say "Maybe you can take a hint from the [noun], instead.";
	the rule succeeds;

a whiff of stew is a guider. godir of whiff of stew is west. description of whiff is "It smells pretty good, even if you can't detect any specific ingredients. But which way is it from?". the rgtext of stew is "[rc][rc][rc][rc]". the lgth of stew is 4. gpos of stew is 4. rpos of stew is 2. cert-text of stew is "-[d1][d1][d1][d1]". rect-text of stew is "W[d1][d1][ast]T".

understand "smell" as whiff of stew when whiff of stew is in location of player.

a thorn is a guider. godir of thorn is north. description of thorn is "You won't step on it or any of its brethren. Maybe it indicates the way to go, if you stop and think for a moment.". the rgtext of thorn is "[rc][rc][rc][rc][rc]". the lgth of thorn is 5. gpos of thorn is 5. rpos of thorn is 2. cert-text of thorn is "-[d1][d1][d1][d1]". rect-text of thorn is "N[d1][d1][d1][ast]H".

an aroma of teas is a guider. godir of aroma of teas is east. description of teas is "You're not refined enough to know which teas. It's kind of a combination of them, a new direction in olfactory sense.". the rgtext of teas is "[rc][rc][rc][rc]". the lgth of teas is 4. gpos of teas is 2. rpos of teas is 1. cert-text of teas is "-[d1][d1][d1]". rect-text of teas is "E[d1][d1][ast]T".



understand "smell" as aroma of teas when aroma of teas is in location of player.

understand "tea" as aroma of teas.

a rambling shout is a guider. godir of rambling shout is south. description of shout is "It's gibberish, but it has to be coming from somewhere.". the rgtext of shout is "[gc][rc][rc][rc][rc]". the lgth of shout is 5. gpos of shout is 1. rpos of shout is 2. cert-text of shout is "S[d1][d1][d1][d1]". rect-text of shout is "S[d1][d1][d1][ast]H".

understand "noise/sound" as rambling shout when rambling shout is in location of player.

chapter Rest of Forest

rf is a privately-named room in Forest. the printed name of rf is "Rest of Forest". "The forest feels a bit thinner here, so you must be close to somewhere new. Here, [vis-hint]."

after printing the locale description for rf when rf is unvisited:
	set the pronoun it to a random guider in rf;

understand "rest of forest/" as rf when mrlp is forest.

understand "forest2" as rf when debug-state is true.

the forest-leaves are a privately-named useless backdrop. "They've already undergone nature's transformation, so they're beautiful rather than useful. They don't leave any clues.". printed name of forest-leaves is "leaves".

the forest-leaves are in rf and sf.

chapter Self-ID Fields

Self-ID Fields is a room in Forest. "You feel a breeze from the west, and there's a plainer passage east. A line of no life passes through a turnstile at regular intervals in a silent rut to the north."

check going inside in Self-ID Fields:
	try going north instead;

check going nowhere in Self-ID Fields:
	say "No going back. Storing's west, sorting's east and that turnstile's north." instead;

Include (-
	has transparent animate
-) when defining gy.

gy is privately-named scenery in Self-ID Fields. understand "man" as gy when player is in Self-ID Fields. gy is undesc.

printed name of gy is "bearded man".

understand "bearded/ man/guy/figure" as gy.

instead of doing something with gy:
	say "Too late. He's gone. But here's another.";

Include (-
	has transparent animate
-) when defining line of no life.

a thing called line of no life are plural-named and privately-named scenery in Self-ID Fields. printed name of line of no life is "bearded men". "They're a fine ol['] line of no life, you guess. Their faces are different, but they seem the same, and they take no notice of you."

after doing something with line of no life:
	set the pronoun it to line of no life;
	set the pronoun him to line of no life;
	continue the action;

after doing something with gy:
	set the pronoun it to line of no life;
	set the pronoun him to line of no life;
	continue the action;

understand "bearded/ men/guys/figures" and "undead" as line of no life.




instead of doing something with line of no life:
	if action is procedural, continue the action;
	say "The line of no life is too incorporeal to interact with[if cruel ones' enclosure is unvisited], but maybe you can imitate it partially to go north[end if].";

turnstile is scenery in Self-ID Fields. "It's one of those full-height deals, so you won't be able to jump it. It doesn't look quite vicious enough to grind you backwards with its teeth, but still, it's shiny and imposing. The top reads TO THE LUPINE LINEUP."

instead of entering turnstile:
	try going north;

beard-unmade is a truth state that varies. beard-unmade is usually false.

section random ID field text

every turn when player is in Self-ID Fields (this is the turnstile-guys-through rule):
	if Enclosure is unvisited:
		say "[guy-by-description]";

to say guy-by-description:
	say "Dude, an undead! It's got [burns] and is wearing [glasstype] and [nosey]. The turnstile glows briefly as the undead walks through."

to say burns:
	say "[one of]muttonchop sideburns[or]a fu-manchu mustache[or]a glorious handlebar mustache[or]a carefully-trimmed Vandyke[or]a mustache your high school buddies derisively referred to as a 'molestache'[or]general patchy scuzz[or]one of those thin beards mostly along the jawline[or]a pencil-thin mustache[or]a soul patch[or]a goatee, no mustache[at random]"

to say glasstype:
	say "[one of]browline glasses[or]sixties horn-rimmed glasses[or]reading glasses[or]granny glasses[or]bifocals[or]clip-on sunglasses[or]a pretentious monocle[or]rimless glasses[or]specs with a hideous elastic strap at the back[or]racquetball goggles[at random]"

to say nosey:
	say "[one of]a fake warty witch's conker[or]a fake parrot beak[or]a red plastic ball under his glasses[or]a fake pig snout[or]a Pinocchio-style wooden rod sprouting from his face[or]a pickle-shaped and -colored schnoz[at random]"

chapter Storing Area



s-e-d is west of Self-ID Fields. s-e-d is in Forest. s-e-d is privately-named. printed name of s-e-d is "Stored, er, Dots". understand "stored/ er/ dots" as s-e-d.

check going nowhere in s-e-d:
	say "You can only go back east." instead;

section canister / red ring

the scantier canister is a fixed in place container.

description of canister is "It's small, nowhere near the size of a cistern. It's got a red ring you can put stuff in, and you can see a grinder of sabled blades inside. The grinder reads [i]team meat, tame [']em at...[r] and appears to have no switch or anything. MASH SHAM HAMS is written on it[if number of glopmeats in lalaland is 1]. It's about half full[end if]."

initial appearance of canister is "On the flesh shelf, there's a scantier canister [if livers are off-stage]that looks operable[else]you broke[end if][one of]. You can probably call it a acn without hurting its feelings[or][stopping]."

the canister is on the flesh shelf. understand "can" as canister.

instead of taking the canister:
	say "It's welded to the shelf.";

the red ring is part of the canister. description of red ring is "It's on top of the canister."

the grinder is part of the canister. description of grinder is "It's got a pair of sabled blades that rotate opposite to each other when activated[if livers are not off-stage]. But you broke it[end if]."


instead of inserting into grinder:
	try inserting noun into canister;

instead of inserting into red ring:
	try inserting noun into canister;

instead of putting on grinder:
	try putting noun on canister;

instead of putting on red ring:
	try putting noun on canister;

instead of putting on canister:
	say "(I'm going to assume you meant in the canister.)";
	try inserting noun into canister instead;

understand "blender" as grinder.

instead of doing something with the red ring:
	if action is procedural, continue the action;
	say "It's not that important, but it had to be SOME color. You probably want to do stuff with the canister and not the grinder.";

instead of doing something with the grinder:
	if action is procedural, continue the action;
	say "The grinder's too sharp to touch.";

instead of entering canister:
	say "It's too small."

the sabled blades are part of the canister. description of blades is "[if livers are off-stage]Sharp[else]Ruined[end if]."

understand "sabled/ blade" as sabled blades

the canister can be broken. the canister is not broken.

check examining canister:
	ignore the examine containers rule;

does the player mean inserting chicken liver into canister when chicken liver is in canister: it is very unlikely.

does the player mean inserting cow liver into canister when cow liver is in canister: it is very unlikely.

check inserting into the scantier canister:
	if noun is sandwich:
		try taking the Spam;
	if canister is broken:
		say "The canister's broken now." instead;
	if noun is Spam:
		say "The canister whirrs threateningly before you drop the Spam in. It's probably already been mixed, and the canister possibly even has some bad mechanical memory of being the guilty party. Technology!" instead;
	if noun is in canister:
		say "It's already in there." instead;
	if noun is saltine:
		say "Interesting thought, but you don't need to make a casserole." instead;
	if noun is a glopmeat:
		if player does not have chisel and player does not have noun:
			say "There's no way to peel the meat off the flesh shelf, yet." instead;
		if player has chisel and player does not have glopmeat:
			say "(peeling the [noun] off the wall first)[line break]";
		if number of glopmeats in lalaland is 1:
			say "Bam! The canister chokes, sputters, and then wheezes--you see a mist arise from it and vanish. It wheezes, chokes, and coughs out--well, liver-slop spillover, but we'll call the homogenized mess LIVERS.";
			set the pronoun it to livers;
			set the pronoun them to livers;
			reg-inc;
			now chicken liver is in lalaland;
			now cow liver is in lalaland;
			now canister is broken;
			now canister is realized;
			now player has the livers;
			now description of canister is "It's completely broken." instead;
		otherwise:
			say "The canister seems to whir. The meat you put in is shortly unrecognizable.";
			if noun is a glopmeat:
				if number of visible glopmeats is 2:
					if noun is chicken liver:
						now cur-liv is cow liver;
					else:
						now cur-liv is chicken liver;
			now noun is in lalaland instead;
	if noun is bread:
		say "You don't need to futz with the bread that way." instead;
	if noun is the player:
		say "So, this game hasn't put you through the grinder enough? A Roiling Original, the sequel, will be even bigger-time." instead;
	say "The canister's for processing food, and that doesn't count." instead;

check switching on the canister:
	say "There appear to be no buttons to switch it on or off."

check switching off the canister:
	say "There appear to be no buttons to switch it on or off."

section flesh shelf

the flesh shelf is a useless fixed in place supporter in s-e-d.

initial appearance of flesh shelf is "[if number of things on flesh shelf is 0]You've taken everything from the shelf[else]You see [a list of things on flesh shelf] on the shelf[end if]."

description of flesh shelf is "NO SHAM HAMS ON FLESH SHELF is traced into its top[if number of things on flesh shelf is 0]. It's clear of items[else]. You can see [a list of things on flesh shelf] on it[end if]."

description of s-e-d is "This is a storing area with various unpalatable-looking meats[if number of things on flesh shelf is 0], and you've taken the stuff that isn't totally nasty[else] on a flesh shelf[end if]. Dots are all over the shelf too."

the dots are useless scenery in s-e-d. "They are probably just ice, but they, er, fit in."

check taking dots:
	say "[one of]You touch one, and it melts. But there are plenty others[or]The next dot would just melt, too[stopping]." instead;

check examining the flesh shelf:
	ignore the examine supporters rule.

A glopmeat is a kind of thing. A glopmeat can be stuck. A glopmeat is usually stuck.

a sandwich is on the flesh shelf. the sandwich is not fixed in place.

instead of pulling sandwich:
	try opening sandwich;

instead of opening sandwich:
	say "You [if player does not have the sandwich]take the sandwich and [end if]peel the bread from the Spam.";
	now player has bread;
	now sandwich is in lalaland;
	now player has the Spam;

instead of eating sandwich:
	say "It doesn't seem appetizing, and you don't need the energy it might give.";

description of sandwich is "Just bread and[one of]--oh dear--[or] [stopping]Spam, lumped together. You could probably PEEL it."

check taking the bread:
	if bread is part of the sandwich:
		now player has the bread;
		now sandwich is off-stage;
		now Spam is not fixed in place;
		now player has Spam;
		say "It was somewhat lumped to the Spam inside it, but you were able to peel them apart. The Spam probably doesn't need to go on the floor, so you take that, too." instead;

instead of peelxing bread:
	if bread is part of the sandwich:
		try taking bread instead;
	otherwise:
		say "Peeling crust is a bad habit.";

the bread is part of the sandwich. rgtext of bread is "[gcn][rc][rc][rc][gc]". lgth of bread is 5. gpos of bread is 1. rpos of bread is 5. cert-text of bread is "B[d1][d1][d1][ast]D". rect-text of bread is "B[d1][d1][d1][ast]D". the indefinite article of the bread is "some".

description of bread is "It appears gritty, like a five o'clock shadow. Not mold, more like it was toasted some time ago[if bread is part of sandwich]. It's kind of stuck to the Spam it's covering[end if]."

some Spam is part of the sandwich. rgtext of Spam is "[rcn][rc][rc][rc]". lgth of Spam is 4. gpos of Spam is 4. rpos of Spam is 1. Spam is singular-named. the indefinite article of Spam is "some". cert-text of spam is "-[d1][d1][d1]". rect-text of spam is "M[d1][d1][ast]S".

understand "meat" as Spam when Spam is visible. does the player mean doing something with Spam: it is likely.

instead of peelxing Spam:
	if Spam is part of the sandwich:
		try taking Spam instead;
	otherwise:
		say "Don't play with your food. Even if it's not very foody.";

check taking bread:
	if bread is part of the sandwich:
		move bread to location of player;
	if Spam is part of the sandwich:
		move Spam to location of player;
	now sandwich is off-stage;

check taking Spam:
	if bread is part of the sandwich:
		say "You peel the bread before taking the meat. What the heck, you take the bread, too. [run paragraph on]";
		now player has bread;
	now player has Spam;
	say "It's sort of gross, but hey, it's not moldy.";
	now sandwich is in lalaland instead;

[check taking Spam:
	now bread is not part of sandwich;
	now Spam is not part of sandwich;]

description of Spam is "It's nastily marbled with mostly pink and some white."

section meats in freezer

check putting it on:
	if noun is a glopmeat and second noun is a glopmeat:
		say "They don't quite seem to stick. What's a better way to join the two pieces of meat?" instead;

the cur-liv is a glopmeat that varies. the cur-liv is the chicken liver.

understand "meat" as chicken liver when cur-liv is the chicken liver.
understand "meat" as cow liver when cur-liv is the cow liver.

liver-disambig-yet is a truth state that varies.

before doing something with the cow liver when cow liver is visible:
	now liver-disambig-yet is true;

before doing something with the chicken liver when chicken liver is visible:
	if liver-disambig-yet is false:
		now liver-disambig-yet is true;
		if the player's command does not match "chicken":
			say "(You aren't sure which liver to handle, but the cow liver looks viler. So, yeah, the chicken.)";

after doing something with a glopmeat:
	if noun is in canister:
		now cur-liv is a random glopmeat that is not the noun;
	now cur-liv is the noun;
	continue the action;

does the player mean putting the cur-liv on: it is likely.
does the player mean inserting the cur-liv into:
	if cur-liv is in grinder:
		it is very unlikely;
	it is likely.

The chicken liver is a glopmeat on flesh shelf.

The cow liver is a glopmeat on flesh shelf.

description of a glopmeat is usually "[if item described is not in canister]It's ugly and frozen and stamped 100% amalgamatable[else]It's all chopped up in the canister right now[end if]."

does the player mean taking cur-liv when cur-liv is held: it is unlikely.

does the player mean taking chicken liver when chicken liver is held and cow liver is held: it is very likely.

check taking a glopmeat:
	if player has noun:
		say "You've already got it." instead;
	if noun is in canister:
		say "You shouldn't put your fingers near the blades." instead;
	if noun is stuck:
		say "It's stuck, well, frozen to the wall[if player does not have chisel]. And you can't change that. Well, not with what you've got[end if][if player has chisel][chiz-chiz][end if].";
		if player has chisel:
			now noun is not stuck;
			now player has noun;
		do nothing instead;

check putting bread on Spam:
	ignore the can't put what's not held rule;
	if bread is part of sandwich:
		say "Already is." instead;
	say "No sense remaking the sandwich." instead;

check putting Spam on bread:
	ignore the can't put what's not held rule;
	if bread is part of sandwich:
		say "Already is." instead;
	say "No sense remaking the sandwich." instead;

to say chiz-chiz:
	say ". But you look through your inventory, and that chisel [if cow liver is stuck and chicken liver is stuck]looks made for scraping stuff. It easily peels the liver, which you take[else]looks up to the task again. It works"

instead of eating a glopmeat:
	say "Uggh. No way[if noun is examined]. Even though someone stamped it as eatable[end if]."

instead of eating livers:
	say "Wow. No. It might be safe to, but it wouldn't be fun to."

instead of eating Spam:
	say "The thought of eating Spams gives you a spasm. Eww."

the livers are things. description of livers is "Amalgamated well enough that you can't recognize which parts were cow and chicken. You suspect they're an upgrade from the individual livers but need to find out how.". lgth of livers is 6. gpos of livers is 6. rpos of livers is 5. rgtext of livers is "[rcn][rc][rc][rc][rc][rc]". cert-text of livers is "-[d1][d1][d1][d1][d1]". rect-text of livers is "S[d1][d1][d1][d1][ast]R".

understand "glop" and "glob" as livers.

chapter Sorted Trodes

Sorted Trodes is east of Self-ID Fields. "Computery things are organized here. A notes stone over a stack of tacks relates some sort of silly myth that's probably relevant to you. [container-desc]. You can go back west.". Trodes is in Forest.

check going nowhere in Sorted Trodes:
	say "You can only go back west." instead;

the stick figures are amusing scenery in Sorted Trodes. understand "stick/ figure" as stick figures.

description of stick figures is "Each one's not particularly detailed, but it probably provides a clue as to the stuff in each bucket."

the notes stone is scenery in Sorted Trodes. understand "myth" as notes stone.

the stack of tacks is amusing scenery in Sorted Trodes. "[bug-report]"

instead of doing something with the stack of tacks:
	if action is procedural:
		if current action is not taking:
			continue the action;
	say "The tacks are glued to themselves. And, oddly, to the notes stone."

Instead of taking the notes stone:
	say "it seems to be glued to the tacks stack. Anyway, you probably only need it for its information."


description of notes stone is "'[i]Attention, word-boy/girl/woman/man! You may think letters are the basic building blocks of everything, but the computer age has shown it's 1[']s and 0[']s! We don't stow twos here! You won't find simpler piles, Mr.! Or a simpler pile, Mrs.![r]'"

to say container-desc:
	if number of containers in Sorted Trodes is 0:
		say "You've pretty much ransacked this place. There's nothing much left";
		the rule succeeds;
	say "You see [number of containers in Sorted Trodes in words] container[if number of containers in Sorted Trodes > 1]s[end if] here: [a list of the containers in Sorted Trodes]";

after choosing notable locale objects when player is in Sorted Trodes:
	repeat with item running through containers in Sorted Trodes:
		set the locale priority of the item to 0;

the bucket is an opaque container in Sorted Trodes. printed name of bucket is "bucket[if ones are in bucket] full of ones[end if]".

the shell is a container in Sorted Trodes. printed name of shell is "shell[if dashes are in shell] full of dashes[end if]".

the bubble is a container in Sorted Trodes. the printed name of bubble is "bubble[if noughts are in bubble] full of noughts[end if]".

check scaning when player is in trodes (this is the scan what's in trodes containers rule):
	if noun is bucket and ones are in bucket:
		say "The bucket registers four lights, so it is probably the ones inside.";
		try scaning ones instead;
	if noun is shell and dashes are in shell:
		say "The shell registers six lights, so it is probably the dashes inside.";
		try scaning dashes instead;
	if noun is bubble and noughts are in bubble:
		say "The bubble registers seven lights, so it is probably the noughts inside.";
		try scaning noughts instead;

description of bucket is "It's got ONES, ONES, SEEN SOON scrawled on it, and a stick-figure with a question mark between a mouth and a pair of eyes[if ones are in bucket]. And yup, there are plenty of ones tiled in the bucket[else]. It's empty[end if]."

description of shell is "It's upturned, so it can hold stuff, with HERE BE DASHES scrawled on it[if dashes are in shell]. A bunch of narrow rectangular tiles are piled in, a bit more efficiently than the other containers. A stick figure on it has X-eyes from looking into the sun[else]. It's empty, now you got the shades from it[end if]."

description of bubble is "It's [if noughts are in bubble]labeled NOUGHTS. You see a stick figure falling over, clutching at more spilling innards than a stick figure has a right to have[else]empty now that you made a shotgun from the noughts[end if]. You also spy some sort of elegy written."

the elegy is part of the bubble.

the description of the elegy is "It's in a bright red that seems entirely wrong: [i][first custom style]Uthgon's Hut-Song:[paragraph break]Hognuts! Un-ghost no thugs! Go! Shunt![line break]Og hunts gnus, tho['] gush not tons, ugh.[r]"

instead of taking bucket: say "Buckets be stuck here, unsurprisingly."

instead of taking bubble: say "It's welded to the wall."

instead of taking shell: say "It's welded to the wall."

check inserting into:
	if second noun is trel-priv:
		say "Maybe you mean to put something in the wall instead?" instead;
	if second noun is silo:
		if noun is panel or noun is black door:
			try putting noun on second noun instead;
	if noun is notepad:
		say "Goodness, no, you might leave it there." instead;
	if second noun is bubble or second noun is bucket or second noun is shell:
		say "But it's already been sorted. No need to muck it up." instead;

check examining (this is the ignore-container-examine rule):
	if noun is sack or noun is cask:
		ignore the examine containers rule;
	if noun is a container in Sorted Trodes:
		ignore the examine containers rule.

Rule for printing room description details:
	if location of player is Sorted Trodes:
		omit contents in listing;
		stop.

chapter Cruel Ones' Enclosure

There is a room called Cruel Ones' Enclosure. It is in Forest.

Enclosure is north of Self-ID Fields. "A creepy acre, yep[if liches are in Enclosure]. Liches block your way north[one of]. Drat! You were hoping for a ghost, whom you could zap to goths, and then if they had any spunk, you'd show them up as punks[or][stopping][end if][if drapes are in Enclosure]. Along one wall you see drapes fluttering. They're too thick to walk through[else if red asp is in Enclosure]. A red asp guards the way north[else if spread is in Enclosure]. A spread blocking the way north flutters in some breeze you cannot feel[else if liches are not in Enclosure]. Nothing seems to block the way north now[end if][if banshee is visible]. A banshee also wails about its former life, and it'd be nice to deep-six (well, seven, since it's got seven letters,) but not necessary[else][end if]. You can go back south to the fields."

to say d-s:
	say "[if drapes are visible]drapes make[else if red asp is visible]red asp makes[else]spread makes[end if]";


check going nowhere in Enclosure:
	say "There seems to be nothing, or worse than nothing, that way." instead;

Include (-
	has transparent animate
-) when defining banshee.

the banshee is scenery in Enclosure. rgtext of banshee is "[rcn][rc][rc][rc][rc][gc][rc]". lgth of banshee is 7. gpos of banshee is 5. rpos of banshee is 3. cert-text of banshee is "-[ast]A[d1][d1][d1][ast]E[d1]". rect-text of banshee is "H[d1][d1][d1][d1][d1][ast]N".

description of banshee is "You can hear but not see it."

the has-been is useless scenery. the has-been is undesc. understand "has been" and "hasbeen" as has-been.

after fliptoing has-been:
	min-up;
	now has-been is in lalaland;
	continue the action;

instead of doing something with has-been:
	if has-been is visible:
		say "That's just what he wants. People thinking about him, remembering his misery, even when he is gone. You have more important things to do!";
	otherwise:
		continue the action.

turnstile-score is a truth state that varies. turnstile-score is usually false.

to say agn:
	say "[one of][or] again[stopping]";

check going north in Self-ID Fields:
	say "'Scopers! Process corpses!' you hear.[paragraph break]";
	unless player wears beard:
		if player has beard and shades are part of beard and nose is part of the beard:
			say "'Improper facial...' you quickly slip on your disguise.[paragraph break]";
			now player wears the beard;
	if player wears the beard:
		say "You are[agn] 'recognized' and let through. A voice whispers 'Many vowels, one flow.'";
		if turnstile-score is false:
			reg-inc;
			now turnstile-score is true;
		continue the action;
	otherwise:
		say "The turnstile jams. There's no way to jump over it. Maybe it doesn't like your face[if number of things that are part of beard is 2]. Perhaps that disguise could fool it[end if]." instead;

to check-score (a - indexed text):
	say "We need to zap the Check-Score for [a] for the new version.";
	the rule succeeds;

chapter Ghouls' Slough

Ghouls' Slough is inside of Enclosure. "This is as ethereal as its inhabitants, whom you cannot see or hear. You're not sure where the marsh starts and the lake ends[one of]. You think you hear a dog bark in this dark bog, then feel like a dorkbag[or]You feel ... ugh, SOL[or][stopping].". Slough is in Forest.

the dog is amusing scenery in slough. dog is an undesc. instead of doing something with the dog when dog is visible:
	say "Where was it? Where is it? Eegh. You don't REALLY want to think about it."


the bog is amusing scenery in slough. bog is an undesc.


to say end-it:
	end the story;

instead of doing something with the bog when bog is visible:
	say "The bog feels like a big old gob that could suck you in. You just want to find a way away from it."

the marshlake are privately-named amusing plural-named scenery in Ghouls' Slough. understand "marsh/lake" as marshlake. the printed name of marshlake is "The marsh and lake".

description of marshlake is "On almost all sides. You worry you may get sucked down into it."

nowhere is south of Ghouls' Slough.

check going in Ghouls' Slough:
	say "Useless without any sort of guide to look at[if player has maps]. Hey, those maps might be useful[end if]." instead;

check examining maps in Ghouls' Slough:
	say "The maps make sense, now you have somewhere to go and seem lost. You note places and things to avoid: [randbla], [randbla], and [randbla]. New ways to go off of fog. And you take a direst stride. Then the chilling cries of 'BRAAINS, SABRINA!' distract you, until you look up in horror at one of the iciest cities...";
	move player to Frost Forts instead;

chapter Frost Forts

Frost Forts is a room in Forest. "Now's snow. Sown Snow OWNS. It'd take a chimera to do the ice harm here, there's so much of it. The forts all around seem to frown at you, and six-foot-high iced dice are placed all around. An icecap is near you, smelling of ipecac.[paragraph break]All exits seem to lead somewhere even darker[if wolves are in Frost Forts], though I doubt those werewolves will let you get there[end if][one of]. You steel yourself against the sleet[or][stopping]."

 after printing the locale description for forts when forts is unvisited:
	set the pronoun them to vowels;


the ipecac icecap is amusing scenery in frost forts. "Yechier, icy, here."

instead of doing something with icecap:
	say "It's just there for ambiance."

the sleet is useless scenery in frost forts. "It's painful, almost like steel, when it hits you, but since it's rain mixed with snow, it means you won't freeze...right away."


the iced dice are plural-named amusing scenery in frost forts. "Each side seems to have a big skull-and-crossbones on it. Their fare is fear, with no warm café hidden in any face. Just don't think of them as ice caps, capisce?"

instead of taking dice:
	if wolves are visible:
		say "If you could pick the dice up, you wouldn't need another weapon to trash the wolves." instead;
	otherwise:
		say "The dice could crush the vowels easily. But you're not twenty feet tall, so they just sort of add to the atmosphere."

understand "ice" as iced dice.

the fos are privately-named amusing scenery in frost forts. printed name of fos is "forts". understand "forts" and "frost forts" as fos.

the frowns are part of the fos. the frowns are amusing.

description of fos is "Frowny, as if they want you to fry now. Also, impassable. They have no doors but you're worried something will jump at you from them."

description of frowns is "Probably either sharp or decaying teeth behind them, but the wolves won't get near you."

Frost Forts is north of Ghouls' Slough. nowhere is south of Frost Forts.

the vowels are in Frost Forts. vowels are plural-named and privately-named. "Six large aplastic capitals sway when there is no breeze and stand still when there is."

rgtext of vowels is "[rcn][gc][rc][rc][rc][gc]". lgth of vowels is 6. gpos of vowels is 3. rpos of vowels is 6. cert-text of vowels is "-[ast]O[d1][d1][d1][ast]S". rect-text of vowels is "W[d1][d1][d1][d1][ast]S".

understand "a/e/i/o/u" as vowels when player is in frost forts.

instead of taking vowels:
	say "They're just way too big. Like that LOVE statue in Philadelphia. But they fill you with fear, unlike the LOVE statue, because they spell AIE OOU, and that's how it sounds as the wind blows through them."

understand "vowels/letters/five/six/tall/aplastic/capital/capitals/pyramid" as vowels when vowels are visible.

description of vowels is "[vowel-desc]"

to say vowel-desc:
	if the player's command includes "vowels":
		say "Hm...yes...they are that, but what do they need to be?[no line break]";
	otherwise:
		say "A, E, I, O, U and Y, piled up in a pyramid. Hm, they are not just ANY letters. Yup, they're pretty much shouting out (figuratively) 'We're vowels!' Yup, even the Y. The vowels also have bumps where they end.[no line break]"

the bumps are part of the vowels. the bumps are plural-named. description of bumps is "They look almost like fangs or very long nails."

check going in Frost Forts:
	say "[if vowels are in frost forts]The rest of the area seems even more forbidding. You sense the vowels would roll after you and crush you if you tried. You have no idea how to get back to warmer climates[else]The werewolves will catch you easily[end if]." instead;

book Sortie

chapter Ug, Frenetic Centrifuge

Frenetic Centrifuge is a room in Sortie. "[if centrifuge-stopped is true]A lid lies where once the dial laid. Exits lie north and east[maybe-shift]![else]Two exits are spinning counterclockwise. They're a right angle apart.[end if]"

[Ug is chopped on to the printed name, because of Inform language conventions]

check scaning dial when centrifuge-stopped is false:
	say "You scan the dial, then the exits. They're swirling around too fast, but they are at right angles to each other. The gadget is throwing out seven lights, [if gadget is cert]all red except for the middle that flashes green[else]green flashing between 5 and 7, red flashing between 1 and 6[end if]. Hm, exits plus two letters. What number could that be, or become." instead;

to say maybe-shift:
	say "[if kitchen is unvisited and roomroom is unvisited], and you're pretty sure they won't fake you out at the last minute[else], and they've been behaving since you fixed that dial[end if]";

the cfuge is privately-named scenery in Centrifuge. understand "centrifuge" as cfuge.

description of cfuge is "[if centrifuge-stopped is false]You're dizzy enough looking around without trying to focus on anything. The dial in the middle of the room seems to control it[else]Nothing's spinning any more, thankfully[end if]."

the printed name of Frenetic Centrifuge is "[if centrifuge-stopped is true]A Round Den, Unadorned[else]Ug, Frenetic Centrifuge[end if]".

understand "round/den" and "round den" and "unadorned" as Centrifuge when centrifuge-stopped is true.

The dial is in Centrifuge. The dial has a number called numset. The numset of the dial is 0. the dial is fixed in place. the dial is flippable.


the ufcex are privately-named plural-named scenery in Centrifuge. understand "exits" and "angle" as ufcex when player is in Centrifuge. "[ufcex-descrip]."

to say ufcex-descrip:
	if numset of dial is 16:
		say "They're behaving nicely now. That is, not at all. They won't jump if you go through them";
		continue the action;
	say "The exits are at a right angle to each other--stationary, but spinning relative to you[if dial is unexamined]. You glance at the dial, which seems to refer to them and be flashing various letters as well[else], and maybe between the dial and the exit positions you can work out which number you need, here[end if]"

check turning the dial:
	if numset of dial is 16:
		try dialsetting dial to 0 instead;
	say "You need to specify a number: 0-99." instead;

initial appearance of the dial is "There's a dial laid in the middle of the room. It is at [numset of the dial] and [if centrifuge-stopped is true]should probably be kept it that way. There's nothing else of note here[one of], so you may wish to explore elsewhere[or][stopping][else]is not spinning with the rest of the room, so you can probably turn it[end if]."

description of dial is "You see EXITS [if numset of dial is 16]N E [else]? ?--you can see two letters, but they're scrolling through the four cardinal directions--[end if]written in the center of its circle. It's currently set to [numset of dial], and you [if numset of dial is 16]want to keep it that way, thank you very much[else]can set it anywhere from 0 to 99 with TURN DIAL TO or just the number[end if][dial-hints]."

to say dial-hints:
	if numset of dial is 16:
		the rule succeeds;
	say "[one of]. You wonder if there's a partial clue here that you just need to look at right[or]. Maybe if you knew where the exits were supposed to be, that would help. There are only twelve possibilities[or]. You briefly wonder what numbers have X's in them[or]. The dial seems to indicate there are seven letters--one is X, and two are a direction. But you haven't had to go diagonally a lot. That leaves four possibilities[or]. Where, abbreviated, the exits should point[or]. The room NEXT IS Easier[or]. You may feel square for missing other solutions to this problem[or]. Worse comes to worst, you can just to a binary search with the numbers: 99, 50, 75, etc[or]. Well, maybe you can brute force things and move the dial one unit at a time. The centrifuge hasn't killed you yet[stopping]"

section for Mondale-Doleman to be referenced everywhere

Mean Old Mondale Doleman is a backdrop in sortie. description is "BUG.".

printed name of Doleman is "Mean Old Mondale-Doleman".

instead of doing something with mondale doleman:
	if current action is objhinting, continue the action;
	say "Mondale-Doleman is out there, you know. But thinking about what he's done won't help you solve things."

section a lid

a lid is scenery. description is "It covers where the dial was, and you probably want to keep it that way."

instead of doing something with lid:
	if current action is taking or current action is taking or current action is pulling or current action is attacking, say "You don't want to bring the lid back" instead;
	if action is procedural, continue the action;
	say "The lid's okay where it is. Better than the dial, anyway.";

section dial setting

dialsetting it to is an action applying to one thing and one number.

understand the command "set [something] to [number]" as something new.

understand "set [something] to [number]" as dialsetting it to.

understand the command "switch [something] to [number]" as something new.

understand "switch [something] to [number]" as dialsetting it to.

understand the command "turn [something] to [number]" as something new.


understand "turn [something] to [number]" as dialsetting it to.

numming is an action applying to one number.

understand the command "turn [number]" as something new.

understand "turn [number]" as numming when player is in Centrifuge and centrifuge-stopped is false.

understand the command "set [number]" as something new

understand "set [number]" as numming when player is in Centrifuge and centrifuge-stopped is false.

understand the command "[number]" as something new.

understand "[number]" as numming when player is in Centrifuge.

does the player mean examining a sto when player is in Centrifuge: it is unlikely.

check numming:
	try dialsetting dial to number understood instead;

before going in Centrifuge:
	if centrifuge-stopped is false:
		say "You can't get your bearings long enough to lurch at or through an exit. You're getting hit with a lot of G's.[paragraph break]Maybe if you could figure out which directions the exits should be, you could figure the number to set the dial to." instead;

numset-ever-greater is a truth state that varies. numset-ever-greater is false.

check dialsetting it to:
	if noun is not dial:
		say "That doesn't set to a number. [if noun is emitter or noun is gadget or noun is tip or noun is s-r]You may want to SWITCH it, instead[else]It doesn't SWITCH, either, so you may want to try another verb[end if]." instead;
	if numset of dial is 16:
		say "Oh no. You don't need to start that again[if number understood is 16]. Or even think about it[end if]." instead;
	if number understood is numset of dial:
		say "That's where the dial's already set." instead;
	if number understood > 99:
		say "If you tried to spin it that high, you'd break the dial." instead;
	if number understood < 0:
		say "This negative attitude isn't helping you solve the puzzle." instead;
	increment total-tries;
	if number understood is 16:
		now numset of dial is 16;
		say "The room warps a bit. You wonder if you made things worse, but you hear strong g-trons go SNRT...you did it![paragraph break][if dial is unexamined]You glance at the dial, see EXITS N E and wonder if it was always there[else]The flipping bits in the dial lock in to say EXITS N E[end if]. And you see, yes, exits are north and east now. My hat, that was mathy.[paragraph break]You find yourself in a round den, unadorned.";
		reg-inc;
		now dial is in lalaland;
		now lid is in centrifuge;
		now centrifuge-stopped is true;
		the rule succeeds;
	if numset of dial > 17:
		now numset-ever-greater is true;
	if numset of dial < 16 and number understood < numset of dial:
		binary-eval;
	otherwise if numset of dial > 16 and number understood > numset of dial:
		binary-eval;
	otherwise:
		increment consecutive-binary-tries;
		say "[if number understood and numset of dial skip]The room seems to slow down for a bit before picking up speed and spinning as fast as before[else]The room seems to spin a bit slower. You think[end if]. [run paragraph on]";
		if consecutive-binary-tries is 5:
			say "You feel you're getting closer. Perhaps you'll get it soon.";
		otherwise if consecutive-binary-tries is 8:
			say "You feel and hope you're getting there, but maybe dividing and conquering the possible numbers left will work, if you don't understand the dial clues[if dial is unexamined] it'd be worth examining[end if].";
		else if consecutive-binary-tries is 10:
			say "Inching along with the dial will get there, but maybe you should be--or should have been--more clinical. Each guess can cut half the numbers, though maybe there's an even quicker way.";
		else if consecutive-binary-tries is 12:
			say "Well, you know you'll get there eventually. P.S. I hope you are using the up-arrow and not typing the numbers out.";
		otherwise:
			say "[line break]";
	[d "Currently [total-tries] tries, [consecutive-binary-tries] consecutive binary tries.";]
	if total-tries is 5:
		say "[line break][if dial is unexamined]You wonder if the dial has any sort of hint on it--an odd word or number or letter--anything.[else]Maybe the EXITS on the dial provides a hint--you're starting to figure this world out, and since you need a number, which would contain all these letters?[end if]";
	now numset of dial is number understood instead;

consecutive-binary-tries is a number that varies. consecutive-binary-tries is usually 0.

to binary-eval:
	now consecutive-binary-tries is 0;
	say "[one of]The room seems to spin a bit faster, and you worry you've made things worse[if dial is examined]--the dial contains a hint[else]--maybe examining the dial can help[end if].[or]You feel like you are just flailing with the numbers, now, as the room picks up speed[if numset-ever-greater is true]. Maybe you should try guessing some higher numbers--you might pass over the right one[else]. The room slowed down a bit when you moved up several numbers. Maybe if you keep going past the right number, you'll eventually hit it[end if].[or]You think that a binary search may not be a bad way to do things, even if you-the-player don't know what a binary search is.[or]Getting colder.[stopping]";

successful-binary-tries is a number that varies. successful-binary-tries is usually 0.
total-tries is a number that varies. total-tries is usually 0.

to decide whether (a - a number) and (b - a number) skip:
	if a < 16 and b < 16:
		decide no;
	if a > 16 and b > 16:
		decide no;
	decide yes.

some warts are a thing. warts are plural-named.

instead of taking the warts:
	say "They're kind of stuck on, and you've heard cures like burning make them worse."

description of warts is "You can only feel them--no mirrors around--but they're plenty bumpy.". rgtext of warts is "[rcn][rc][gc][rc][rc]". lgth of warts is 5. gpos of warts is 5. rpos of warts is 1. cert-text of warts is "-[d1][ast]R[d1][d1]". rect-text of warts is "S[d1][d1][d1][ast]W".

some straw is a singular-named thing. "Some straw, too much to lug around in your hands, lies here."

the indefinite article of straw is "some"

does the player mean giving the straw to the peasant: it is very likely.

description of straw is "Yellowy, rough edges, semi-musty. Just straw."

check setting the dial to:
	say "Try a number instead. Or, if you typed out a number more than twenty, use the digits." instead;

centrifuge-stopped is a truth state that varies. centrifuge-stopped is usually false.

check looking in Centrifuge:
	if player was not in Centrifuge:
		if centrifuge-stopped is false:
			say "You climb down a larded ladder, slip, and hear people chattering about Mean Old Mondale-Doleman, finances fan since... once a money yeoman, the frugalest till the fear gluts, but who'd nag nary a granny for late fees. Generous? Gone sour. Got antsy, then nasty... more garnish, less sharing... stern rents, a splinter should rent slip... a testier treatise from his Taxman, Tan Max... claiming to feel raw and that the welfare era flew! 'No grace in ignorance, caring one!' A cold clod, now. He may even have aborted a debtor...";
			say "[wfak]You hear cases for destroying his castle and for showing love. Then someone comes along, introduces himself as Patt Parr. 'Rapt, rapt!' he says, telling you how to get to Mondale-Doleman. You follow his advice...";
			say "[wfak]You see and avoid tripwires, and just as you feel your wit's riper, a snare nears. You swat at a pest and miss a step, then tumble madly wide of a middle way...";
			say "[wfak]You roll down a gradient, tirade, nag to yourself...";
			say "[wfak]Thump. ('Drat, poor trapdoor!' you hear.)";
			say "[wfak]And you realize his advice was a TRAP, of course it was...";
			say "[wfak]Your head is spinning. Wait, no, it's the room...";

chapter The Nick

The Nick is a room in Sortie. "You're locked in this arty suite of austerity by a great grate. It's a more forbidding version of the gateway in the Notices Section. You doubt even Nat Egam could magic it open. There appears to be no standard way out. It has no accommodations, not even unsoft futons. This is a saner snare than the centrifuge, but it doesn't look like you'll drug a guard or reveal a lever to escape. At least there is some graffiti[if player has gadget][beepity-nick][end if]."

t-n is privately-named proper-named scenery in the nick. "The nick is all around.". printed name of t-n is "the nick". understand "nick" as t-n. the rgtext of t-n is "[rc][rc][rc][rc][rc][rc][rc]". the lgth of t-n is 7. gpos of t-n is 7. rpos of t-n is 4. the cert-text of t-n is "-[d1][d1][d1][d1][d1][d1]". the rect-text of t-n is "K[d1][d1][d1][d1][d1][ast]N". t-n is abstract.

instead of doing something with t-n:
	if action is procedural, continue the action;

section how to get here

check going to kitchen when kitchen is unvisited:
	go-to-nick instead;

check going to roomroom when kitchen is unvisited:
	go-to-nick instead;

to go-to-nick:
	say "You're entrap't by a tarpnet pattern! Two nuts stun you with rubber hoses. 'Snooper so prone! A blockhead! Ha, blockade! Pound [']im! Impound!'[paragraph break]Unsubtle, but effective. 'Passed our tamest net, but that's no statement. Outrage if you get past our gate.' After this rare accident, you're incarcerated.[paragraph break]As they walk away, you hear '...made mead. Much, chum.'[paragraph break]Sots at toasts. Boy, those pinheads made your head spin.";
	now cask is open;
	now the hole is part of the cask;
	now the hoses are in roomroom;
	move player to the nick;

before going in the nick:
	say "You're stuck here. Well, physically, anyway." instead;

section what to do here

to say beepity-nick:
	say ".[paragraph break]Your gadget seems to shake a bit";

after looking in kitchen for the first time:
	say "You notice some warts on your face. Stress causes them, you know, and between the centrifuge and the nick, you've had a bit lately.";
	now warts are part of the player;
	now startmod5 is the remainder after dividing (turn count + 4) by 5;

printed name of The Nick is "The Nick".

The great grate is scenery in The Nick.

the branding is part of the great grate. description of branding is "The grate seems to be made by [first custom style]HECK TIN[r]. It's not steel, but it's still too thick. The redness of HECK TIN surprises you a bit.". understand "brand" as branding.

description of great grate is "Huge. Eugh. Nat Egam couldn't magic it, and not even Flexi-Felix could slip through the holes! You notice a branding on it that you can probably read."

check opening great grate:
	say "You utterly fail to move it. If it could speak, it might sarcastically say [one of]Boring? Brig? No![or]Give up! And mean it, inmate![or]Denied, Indeed![or]Weak Try, Raw Tyke![at random]" instead;

understand "gate" as great grate when grate is visible.

some jail cell graffiti is scenery in The Nick. description of jail cell graffiti is "In red crayon: [first custom style][one of]N. THICKE-HECKTIN was here.[or]Chetnik was here.[or]Think, C.E.![or]Hecknit was here.[in random order][r]"

instead of taking the jail cell graffiti:
	say "Maybe you can take a hint from it."

nick-turns is a number that varies. nick-turns is 0.

startmod5 is a number that varies.

every turn:
	if turn count > nick-turns:
		if player is in The Nick:
			say "[one of]Boy. Incarceration's making you hungry already[or]You think back to your home and all its comfy rooms[or]Mmm, Foood. Even a lame meal. You'd even make it yourself[or]You feel the heat of Mean Old Mondale-Doleman's hate even from here. You can't take it, so you want to get out of the The Nick. The Nick[or]You counter your urge to sink in despair. Or maybe you just table it[or]You doze off and dream you're watching a cooking show featuring ten hicks. They work in multiple...oops, you wake up and forget[or]You'd do housework to avoid this workhouse[or]You doze off--some guy named Chen has a kit for getting out of here--you wake up. Dang[or]You feel your mind thicken. You're hungry for a new location and whatever new puzzles it has cooked up[stopping].";
		if the remainder after dividing turn count by 5 is startmod5:
			if warts are visible:
				if player is in the nick:
					say "[line break]";
				say "You almost pick at your new warts[if player has gadget], and your gadget activates slightly[end if]. Man! If only you could say something to make the warts grow backwards, or just make them disappear. Or both.";
		now nick-turns is turn count;
	if player is in trips strip:
		if gadget-secured is true:
			if number of solved regions is 3:
				if given-pass-yet is false:
					say "So. Apparently, you have one store area left to clear. But you don't need to. Store R suddenly looks invitingly idyllic, but if you're in the mood for adventure, you may want to look somewhere else first--[last-store], maybe.";
					now given-pass-yet is true;

given-pass-yet is a truth state that varies. given-pass-yet is false.

to say last-store:
	if store f is visible:
		say "store f";
	if store i is visible:
		say "store i";
	if store m is visible:
		say "store m";
	if metros are visible:
		say "the metros";
	if forest is visible:
		say "the forest";
	if sortie is visible:
		say "the sortie";

after fliptoing kitchen:
	if straw is in the nick:
		now straw is in kitchen;
	continue the action;

to say gad:
	say "Your gadget's not near anything, but it's registering ";

chapter Kitchen

Kitchen is north of Centrifuge. Kitchen is in Sortie.

after choosing notable locale objects when player is in kitchen:
	if straw is in kitchen and straw is not enclosed by player:
		set the locale priority of the straw to 9;

an ingredient is a kind of thing. a pregredient is a kind of thing.

for printing a locale paragraph about an pregredient (called xyzyx) when player is in kitchen:
	if xyzyx is not mentioned:
		say "There's [if number of visible pregredients is 1]one more thing[else if number of visible ingredients > 0]some other stuff[else][one of]a bunch of[or]still[stopping] stuff[end if] that doesn't quite belong in a kitchen, here: [a list of pregredients in kitchen].[paragraph break]";
		now all ingredients are mentioned;

for printing a locale paragraph about an ingredient (called xyzyx) when player is in kitchen:
	if xyzyx is not mentioned:
		say "[if number of visible pregredients is 0]You've gotten rid of the kitschy stuff, and there's some food left:[else]So far, you've rustled up[end if] [a list of ingredients in kitchen].[paragraph break]";
		now all ingredients are mentioned;

check taking an ingredient: [?? put steak on saltine before/after on tortilla]
	if noun is part of the tortilla:
		say "No need to undo your efforts." instead;
	say "It belongs in the kitchen. You don't want to get it dirty if you go adventure elsewhere." instead;

check taking a pregredient:
	say "It's kind of quirky, but it doesn't seem too useful as-is." instead;

after printing the locale description for kitchen when kitchen is unvisited:
	say "Boy. That time in the nick left you hungry. And in need of warmth. Maybe you can get a two-for-one here in the kitchen.";
	continue the action;



does the player mean putting an ingredient on the tortilla: it is very likely.

description of Kitchen is "This is a kitchen, though it's a bit bare, except for the obligatory fridge. South is the centrifuge room and east is [if Trellis is unvisited]somewhere less hectic[else]the room with the trellis[end if]."

the tune is amusing scenery in the kitchen.

instead of doing something other than listening to the tune:
	unless current action is objhinting:
		continue the action;
	say "You can't do anything other than listen to it, so you do for a bit.";
	try listening instead;

description of tune is "You should be listening instead.";

check going nowhere in Kitchen:
	say "You can only go south to the centrifuge or east[if Trellis is visited] to the trellis[end if]." instead;

the tall trio is a pregredient in Kitchen. rgtext of tall trio is "[gcn][rc][rc][rc][rc][rc][rc][rc]". lgth of tall trio is 8. gpos of tall trio is 1. rpos of tall trio is 2. cert-text of tall trio is "T[d1][d1][d1][d1][d1][d1][d1]". rect-text of tall trio is "T[d1][d1][d1][d1][d1][d1][ast]A".

understand "chefs/chef/statues/statue" as tall trio.

description of tall trio is "Well, they are actually only six inches tall, the middle chef patting the other's shoulders. But they're skinny enough that you sort of assume they're tall. Well, I'm assuming. There's a loose label attached to the middle one, who is half-hugging both his pals."

the middle chef is part of the tall trio. description of middle chef is "[mid-chef]."

the left chef is part of the tall trio. left chef is undesc. instead of doing something with left chef: say "He's not nearly as interesting as the middle one."

the right chef is part of the tall trio. right chef is undesc. instead of doing something with right chef: say "He's not nearly as interesting as the middle one."

to say mid-chef:
	say "He's got a big smile and is semi-hugging his friend. The loose label sticks out awkwardly. Maybe it has some actual useful information on it";

the loose label is part of the tall trio.

instead of taking the loose label:
	say "You can read it okay without taking it."

does the player mean doing something with the loose label when the tall trio is not visible: it is very unlikely.

description of loose label is "[loo-la]"

to say loo-la:
	say "'We can help be something to base a whole spicy dish on! A truly MALE meal, not lame! It may help you make a run through a border!' Red writing is on the other side of the label--flip it over to see what it is?";
	if the player direct-consents:
		say "--crafted with care by [first custom style]AL TILTRO[r].[no line break]";
	otherwise:
		say "Ok.[no line break]";

the tortilla is an ingredient. understand "taco" as tortilla.


to say tort-desc:
	say "tortilla";
	if tortilla is visible:
		say " ([if ingredients-in-tort is 0]nothing on it[else if ingredients-in-tort is 1]too plain to eat[else if ingredients-in-tort is 2]edible looking, but could be better[else if ingredients-in-tort is 3]almost perfect[else]BUG[end if])";

does the player mean doing something with the tortilla: it is likely.

check inserting an ingredient into an ingredient (this is the tortilla-into rule):
	try putting noun on second noun instead;

check inserting something into ingredient:
	if noun is not an ingredient:
		say "That wouldn't taste very good[if noun is a pregredient], but maybe in some other form, it could[end if]." instead;

the tortilla-into rule is listed before the can't insert into what's not a container rule in the check inserting it into rules.

check putting something on the tortilla (this is the tortilla-onto rule):
	if noun is an ingredient:
		tort-add noun;
		the rule succeeds;

ingredients-in-tort is a number that varies. ingredients-in-tort is 0.

instead of opening HOTSAUCE:
	if tortilla is visible:
		try inserting the HOTSAUCE into the tortilla instead;
	otherwise:
		say "You don't seem to have anything to put the hot sauce in. Or on." instead;

understand "covering" as HOTSAUCE when HOTSAUCE is part of tortilla;

the printed name of the tortilla is "[tort-desc]";

to tort-add (x - a thing):
	if x is part of the tortilla:
		say "You've already put [x] in the tortilla.";
		the rule succeeds;
	now x is part of the tortilla;
	increment ingredients-in-tort;
	if x is HOTSAUCE:
		say "You open the packet and squirt the sauce in the tortilla. You place the empty packet in a pocket, where you forget about it. [run paragraph on]";
		now printed name of HOTSAUCE is "covering of hot sauce";
	say "[one of]Hm, a good start. The tortilla's not plain any more.[or]The tortilla's coming together.[or]The tortilla's almost there![or]You got it[now-taco]! A full-blown taco! You can't help but pick it up and admire it! It's too good to eat. You almost wish you could wear it.[stopping]";
	set the pronoun it to the tortilla;
	if ingredients-in-tort is 4:
		set the pronoun it to the taco;
		now player has the taco.

instead of eating taco:
	say "It looks so good, you'd wind up eating it all quickly. That might give you a gas saga, or a hardier... anyway, this game has no fully implemented bathrooms. Or any at all."

to say now-taco:
	now tortilla is in lalaland;
	now taco is in Kitchen;
	reg-inc;

description of tortilla is "Flat circular dough[if number of things that are part of the tortilla > 0]. It's got [a list of things that are part of the tortilla] on it[else]. Plain[end if].";

understand "tortilla" as taco.

instead of eating the tortilla:
	if ingredients-in-tort is:
	-- 0: say "Too plain by itself. Put something in it?";
	-- 1: say "It's still too plain to eat.";
	-- 2: say "It's about halfway to being something nice.";
	-- 3: say "It looks pretty good but needs one more ingredient.";
	-- otherwise:
		say "[bug-report]";

check putting something on an ingredient (this is the funnel kitchen activity to ingredients rule):
	ignore the can't put what's not held rule;
	if noun is second noun:
		say "Less playing with food, more wordplay." instead;
	if noun is part of the tortilla and second noun is not part of the tortilla:
		say "(Switching the two)";
		try putting second noun on noun instead;
	if noun is saltine:
		say "Ugh. The saltine is for clues, not cuisine." instead;
	if noun is not an ingredient:
		say "That wouldn't taste very good." instead;
	if noun is tortilla and second noun is pregredient:
		try putting second noun on noun instead;
	if noun is tortilla and second noun is ingredient:
		say "(I'm switching the [noun] and [second noun])";
		try putting second noun on noun instead;
	if second noun is part of the tortilla:
		try putting noun on tortilla instead;
	if second noun is not tortilla:
		say "Neither of those is the best ingredient to make a base for a dish--maybe something more bready." instead;

check eating an ingredient:
	if ingredient is part of the tortilla:
		try eating tortilla instead;

check taking an ingredient:
	if noun is part of the tortilla:
		say "Don't futz with your culinary creation." instead;

the cult tee is a pregredient in Kitchen. rgtext of cult tee is "[rcn][rc][rc][gc][rc][rc][gc]". lgth of cult tee is 7. gpos of cult tee is 3. rpos of cult tee is 7. cert-text of cult tee is "-[d1][d1][ast]T[d1][d1][ast]E". rect-text of cult tee is "L[d1][d1][d1][d1][d1][ast]E".

instead of wearing cult tee:
	say "You appreciate the drawing, but [if r2 is prefigured]it's not warm enough to get you to the moor, and [end if]you never were one for bold t-shirts anyway."

instead of wearing skate:
	say "You can't skate, and there's only one of it."

understand "shirt" as cult tee.

description of cult tee is "You remember seeing someone wearing it. It's got a picture of a carrot, a cucumber, an olive and several different colored onions all in a bowl. They're drumming their fingers, waiting for someone or something. You remember this t-shirt being briefly in fashion back home, wherever that is."

the head of lettuce is an ingredient.

description of the lettuce is "It's green and crispy and healthy and without flavor on its own."

instead of eating the lettuce:
	say "Too plain by itself.";

the skate is a pregredient in Kitchen. rgtext of skate is "[gcn][rc][rc][rc][rc]". lgth of skate is 5. gpos of skate is 1. rpos of skate is 2. cert-text of skate is "S[d1][d1][d1][d1]". rect-text of skate is "S[d1][d1][d1][ast]K".

description of the skate is "Ice, not roller. [one of]Apparently, it's Kate's. The blade is sharp enough to cut meat, but unfortunately, there's not any around here. Yet. Plus, the blade's probably not clean enough. You don't see any sink around. Never mind[or]It's a meaty question, what an ice skate's doing somewhere this warm[stopping]."

some cut-up steak is an ingredient.

description of steak is "Pre-cooked, and you can still smell the sizzle if you reach down to smell it. You think."

instead of eating the steak:
	say "It's cooked, but really, it'd go better with something."

after doing something with the spearman:
	set the pronoun him to the spearman;
	continue the action;

the cheesy spearman is a male pregredient in Kitchen. "A cheesy spearman is here. Well, he's [i]posed[r] all cheesy.". rgtext of spearman is "[rcn][rc][rc][rc][rc][rc][gc][gc]". lgth of spearman is 8. gpos of spearman is 2. rpos of spearman is 8. cert-text of spearman is "-[d1][d1][d1][d1][d1][ast]A[ast]N". rect-text of spearman is "P[d1][d1][d1][d1][d1][d1][ast]N".

understand "man" as spearman when spearman is visible. the spearman can be female or male. the spearman is male.

description of spearman is "[spearman-descrip]".

to say spearman-descrip:
	say "He's got a stupid smile and is giving a thumbs-up with his free hand. It's cheesy, not corny. You know the difference. But it is not a REAL cheese. Yet. You notice some writing on his armor--do you wish to read it?";
	if the player direct-consents:
		try examining armor;
		continue the action;
	otherwise:
		say "OK.[no line break]";

the armor is part of the spearman.

description of armor is "Don't put me [first custom style]NEAR SPAM[r]. The red all-caps seem more overdone than his thumbs-up[if player does not have spearman]. The spearman wobbles a bit as you look closely at the writing--you can probably pick him up."

report taking the spearman:
	say "The base of the spearman has something on it. Maybe a signature.";

the signature is part of the spearman. understand "base" as signature.

check scaning (this is the scan the spearman and not his parts rule):
	if noun is signature or noun is armor:
		say "That's part of the spearman, really, even with the writing on it. At least, the eight lights from your gadget seem to indicate that. [run paragraph on]";
		try scaning spearman instead;

description of signature is "[if player does not have spearman](looking under the spearman the signature is beneath, which is a slight cheat, but I won't judge)[end if]You see [first custom style]A. SMERNPA[r] on the bottom, in bright red. That must be the sculptor, or whomever."

instead of doing something other than examining or scaning the armor:
	say "The armor is tied together with the spearman."

understand "spear man" as spearman.

the spear is part of the spearman. description of spear is "It's about as tall as he is, but nothing special about it, other than it makes him a spearman.". spear is useless.

the pile of grated Parmesan cheese is an ingredient. understand "cheese" as Parmesan when Parmesan is visible.

description of Parmesan is "Already grated, for which you are grateful. (Sorry if the description grates.)"

instead of eating the Parmesan:
	say "Too strong by itself. You could've when you were three. Not now."

the taco is a thing. rgtext of taco is "[rcn][rc][rc][rc]". lgth of taco is 4. gpos of taco is 3. rpos of taco is 1. cert-text of taco is "-[d1][d1][d1]". rect-text of taco is "C[d1][d1][ast]T".

check wearing taco:
	say "The taco is not cereal, and your name is (probably) not Farley Drexel Hatcher. Still, it could become something wearable." instead;

description of taco is "Man, it looks great. It's got meat, lettuce, cheese, sauce and a soft tortilla shell--but you know that, since you made it yourself!"

the coat is a wearable thing.

does the player mean wearing the coat: it is likely.

report wearing the coat:
	say "It's nice and warm. Not enough to make you sweat. But handy if you [if r2 is prefigured]try to poke around the moor[else]find a way outside of here. There must be one[end if].";
	the rule succeeds;

description of coat is "It's warm and fuzzy and shapeless and as multi-colored as the taco you made it from."

check taking off the coat:
	if player is in moor:
		say "Too cold." instead;
	if moor is visited:
		say "Nah, you may need to go there." instead;
	say "It's not making you sweaty. Maybe there'll be a place you need it. [if roomroom is unvisited or Trellis is unvisited]You haven't been everywhere here, yet[else if moor is unvisited]Maybe there's a way out you haven't found--a simple one[end if]." instead;

the bottle of CATHOUSE perfume is a pregredient. "A bottle of CATHOUSE perfume is here.". rgtext of CATHOUSE is "[rcn][rc][gc][rc][rc][gc][rc][gc]". lgth of cathouse is 8. gpos of cathouse is 4. rpos of cathouse is 8. cert-text of cathouse is "-[d1][ast]T[d1][d1][ast]U[d1][ast]E". rect-text of cathouse is "H[d1][d1][d1][d1][d1][d1][ast]E".

understand "cat/ house/ perfume" and "cat/ house/" as CATHOUSE when player is in kitchen and cathouse is in kitchen.

CATHOUSE is in Kitchen.

description of the CATHOUSE is "It's yellow-gold, like most. The bottle seems to advertise a spicy scent too hot for most people's tastes.[paragraph break]By the way, you were never sure if it was one word or two, and what's more, the company who made it probably didn't care, either[one of]. There's something about how it'll free-m-up to love you, which you try to forget[or][stopping]."

instead of drinking the CATHOUSE:
	say "Deadly."

the large packet of HOTSAUCE is an ingredient.

check opening large packet:
	try attacking large packet instead;

description of HOTSAUCE is "[if hotsauce is part of tortilla]It certainly gives the taco color[else]It's some disturbing mix of reddish shades of orange-red. The ungrammatical HOTSAUCE on the packet blocks out any list of ingredients, which is probably for the best[end if]."

understand "hot sauce" and "hot/sauce" as HOTSAUCE when player has HOTSAUCE or HOTSAUCE is in location of player.

instead of eating HOTSAUCE:
	say "If you really want to do this, you are obviously too wild and crazy for text adventures.";

check fliptoing HOTSAUCE:
	if the player's command does not include "hot" and the player's command does not include "hotsauce":
		say "Close, but you need to say the full name of the sauce." instead;

section fridge

the obligatory fridge is scenery in the kitchen. understand "refrigerator" as fridge.

the obligatory fridge is an opaque openable container.

check examining fridge:
	ignore examine containers rule;

rule for printing room description details of fridge:
	omit contents in listing;

the manila animal is undesc. it is part of the obligatory fridge. understand "lamina" as manila animal.

the manila animal is amusing.

instead of doing something with the manila animal:
	if action is procedural, continue the action;
	say "You've half-destroyed a store already, but you draw the line at aesthetically altering a fridge."

instead of examining the manila animal:
	say "Written on it: '? No, too stupid a fad. I put soot on warts.' But you've seen no soot, and you're not sure what should be behind the question mark."

description of obligatory fridge is "A manila animal forms a lamina over it[if fridge is open]. In the fridge, you see [list of things in fridge][else]. It doesn't appear locked or anything[end if][one of]. It's probably a Def-Rig brand, though you doubt that's important. Written in dust (which you rub off and copy to your notepad) you see NO, TOO STUPID A FAD. I PUT SOOT ON WARTS[or][stopping]."

after examining obligatory fridge:
	pad-rec-q "warts";
	continue the action;

fridge-open is a truth state that varies.

instead of doing something with grist when fridge-open is false:
	if the current action is taking:
		say "Yes, that's in the fridge, but it's someone else's." instead;
	say "You guess what is in the fridge, and you are right! There is a cake pan, too.";
	now fridge-open is true;
	continue the action;

instead of doing something with cake pan when fridge-open is false:
	if the current action is taking:
		say "Yes, that's in the fridge, but it's someone else's." instead;
	say "You guess what is in the fridge, and you are right! There is some grist, too.";
	now fridge-open is true;
	continue the action;

check opening obligatory fridge:
	now fridge-open is true;
	now fridge is transparent;
	say "[one of][or]You reopen and peer on. [stopping]You see [a list of things in obligatory fridge] inside[one of]. Hm, mostly instant-meal stuff, nothing nourishing enough for an adventurer, but maybe good for practice[or][stopping]." instead;

some grist is in the fridge.

description of grist is "It's a heapin['] helpin['] of the stuff, haphazardly lumped at the bottom of the fridge."

understand "heapin/ helpin/" as grist

understand "heapin/ helpin/" as grits

the grits are a plural-named thing. lgth of grist is 5. gpos of grist is 1. rpos of grist is 4. rgtext of grist is "[gcn][gc][gc][rc][rc]". cert-text of grist is "G[ast]R[ast]I[d1][d1]". rect-text of grist is "G[d1][d1][d1][ast]S".

rule for deciding whether all includes a thing in fridge: it does not.

rule for deciding whether all includes grist: it does not.
rule for deciding whether all includes grits: it does not.
rule for deciding whether all includes cake pan: it does not.
rule for deciding whether all includes pancake: it does not.

description of grits is "They look more edible than the grist, but you're not THAT hungry right now."

the cake pan is in the fridge. lgth of cake pan is 7. gpos of cake pan is 5. rpos of cake pan is 4. rgtext of cake pan is "[rcn][gc][rc][rc][rc][rc][rc]". cert-text of cake pan is "-[ast]A[d1][d1][d1][d1][d1]". rect-text of cake pan is "P[d1][d1][d1][d1][d1][ast]E".

understand "cakepan" as cake pan.

description of cake pan is "It's empty, and you wonder what it's doing in the fridge."

the pancake is a thing.

description of pancake is "It's too plain to eat. And probably too cold."

instead of eating pancake:
	say "Too cold and bland. Plus, it's probably someone else's, like Ana Peck. Or Cap. Kane[if taco is off-stage]. You might want to fiddle with what's on the counter[else]. The stuff on the counter was what was really important, anyway[end if]."

instead of eating grits:
	say "You have an attack of conscience and decide to leave them for someone else."

after fliptoing when player is in kitchen (this is the clue taco rule) :
	if noun is pancake or noun is grits:
		now noun is in fridge;
		if fridge-open is false:
			say "You also note the [if noun is grits]cake pan[else]grist[end if] in there. ";
			now fridge-open is true;
		say "Bam! A[one of][or]nother[stopping] nice, plain dish. You [if taco is in lalaland or taco is visible]figure that's less tasty than the taco, but you're still pleased with your culinary skills[else if number of visible ingredients > 1]feel a boost of confidence. Now, to those other ingredients, or things that can become ingredients[else]can't see what else the [noun] can become, so maybe you can make some other food or ingredients[end if].";
	continue the action;

chapter ROOM

roomroom is a privately-named room in Sortie. the printed name of roomroom is "Room". "[if moor is unvisited]This room is a little too undescribed. It's nice to have a break from all this puzzling, but it's almost too easy a break[tagit][else]Zapping yourself to the moor hasn't made this room any more exciting[end if].[paragraph break]A passage leads west back to the centrifuge, and another leads north."

understand "room1" as roomroom when debug-state is true.

to say tagit:
	if kitchen is visited:
		say ". It's almost as nondescript as the nick, but at least you're not trapped";
	if player has gadget:
		say "[one of]. Your gadget seems to vibrate a bit[or][cycling]";

check scaning location (this is the air scan rule):
	if player does not have gadget:
		continue the action;
	if player is in the nick or player is in Anti-Cool Location or player is in moor or player is in roomroom or player is in means manse:
		if player has gadget:
			try examining gadget instead;

instead of going nowhere in roomroom:
	say "You can only go west back to the centrifuge or north[if Trellis is visited] to the trellis[end if].";

roomroom is east of Centrifuge.

the sack is a transparent reversible container. "A sack is here. It's made of some rough material. Call it burlap. That's a safe one."

the sack is flipped-yet.

rgtext of sack is "[rcn][gc][rc][gc]". lgth of sack is 4. gpos of sack is 3. rpos of sack is 4. cert-text of sack is "-[ast]A[d1][ast]K". rect-text of sack is "C[d1][d1][ast]K".

description of the sack is "Sturdy burlap, reading 'a stick it sack'. [if number of things in sack is 0]It's empty[else]In it you see [list of things in sack][end if]."

the cask is a transparent reversible container in roomroom. "You see a plain cask here[if cask is closed]--it seems unbroached[else]--someone has cut a small hole in the top[end if]."

after printing the locale description for roomroom:
	if cask is in roomroom:
		set the pronoun it to cask;
	if hoses are in roomroom:
		set the pronoun them to hoses;
	continue the action;

the cask is closed. rgtext of cask is "[rcn][gc][rc][gc]". lgth of cask is 4. gpos of cask is 3. rpos of cask is 4. cert-text of cask is "-[ast]A[d1][ast]K". rect-text of cask is "S[d1][d1][ast]K".

description of the cask is "It's plain and cedar[if cask is open], with a small hole on top[else], and it seems airtight[end if]. It's engraved WERE-EWER[in-cask]."

to say in-cask:
	if cask is open:
		say "[if number of things in cask is 0]. It's empty[else]. In it you see [list of things in cask][end if]";

check taking cask:
	if cask is closed:
		say "It is too heavy right now. There seems to be a liquid in there." instead;

check opening cask:
	if cask is closed:
		say "There's no obvious way to open it, or weapon to open it with." instead;
	otherwise:
		say "It already is." instead;

the description of the hole is "Wide enough to FILL the cask, but not to put anything in."

check fliptoing the cask:
	if sack is visible:
		if number of things in sack > 0:
			say "As the sack changes, [the list of things in sack] falls out.";
			repeat with Q running through things in sack:
				move Q to location of player;

check fliptoing the sack:
	if cask is visible:
		if cask is closed:
			say "The cask seems to bulge, and you hear a sloshing, but it doesn't do anything. It seems like it should work, though. Perhaps the cask has a safety mechanism against spilling liquid.[paragraph break]Maybe you need to walk around and find someone who can open the cask.";
			preef sack instead;
		if oils are in cask:
			say "That's inadvisable. The oils would leak out." instead;

check taking the straw:
	if player has sack:
		if straw is in sack:
			say "Better to keep it in the sack." instead;
		say "You lump the straw in the sack.";
		now straw is in the sack instead;
	otherwise:
		say "Too unwieldy to carry anywhere as-is. It needs a container." instead;

instead of eating the straw:
	say "Eww.";

instead of eating the hay:
	say "Eww.";

[rule for implicitly taking the straw:
	say "(gathering it up)";

rule for implicitly taking the hay:
	say "(gathering it up)";]

the straw-hay-oils drop rule is listed before the can't drop what's not held rule in the check dropping rules.

check dropping (this is the straw-hay-oils drop rule):
	if noun is straw or noun is hay:
		if noun is in sack:
			say "No use making a mess. It's easier to lug around that way.";
	if noun is oils and noun is in cask:
		say "(assuming you meant POUR OILS)[paragraph break]";
		try pouring oils instead;

the straw-hay insert rule is listed before the can't insert what's not held rule in the check inserting it into rules.

the straw-hay put-on rule is listed before the can't put what's not held rule in the check putting it on rules.

before putting on (this is the put tautology rule) :
	if noun is second noun:
		say "[tau]" instead;

to say tau:
	say "Tautology?! Got ya, lout!";

instead of examining the panel:
	if panel is not part of the silo:
		say "It looks kind of electrical. It doesn't seem to have wires, so hopefully you can just slip it where it needs to go." instead;
	say "There are two buttons, on the left [if trees button is visible]('TREES')[else]('STEER')[end if] and right [if shoot button is visible]('SHOOT.')[else]('HOOTS.')[end if] Both are an important shade of red, and you'll probably have to push them to figure what they do." instead;

tie-warn is a truth state that varies.

instead of tying to (this is the check for big quest item attachment rule):
	if tie-warn is false:
		ital-say "while this game generally maps ATTACH/TIE X TO Y to PUT X ON/IN Y, PUT ON/IN[i] is a bit more specific and is thus recommended.";
		now tie-warn is true;
	if noun is missile or noun is hay or noun is straw or noun is panel or noun is black door:
		try inserting noun into second noun instead;
	if second noun is missile or second noun is hay or second noun is straw or second noun is panel or second noun is black door:
		try inserting second noun into noun instead;
	if second noun is fuzzy looking wall:
		if op is not visible:
			say "[if player is on wall]The wall doesn't have any sort of recess[else]Sticking something to the steel wool would do very little[end if]." instead;
		if player is not on wall:
			say "You'd need to climb the wall first." instead;
		try inserting noun into op instead;
	if second noun is op:
		try inserting noun into op instead;
	continue the action;

instead of putting a thing on the fuzzy looking wall:
	if player is on the fuzzy looking wall:
		if op is not visible:
			say "The neon pig is in the way." instead;
		try putting noun on op instead;
	say "Something might stick, but it wouldn't do much there."

instead of taking the silo:
	say "Counterproductive and, uh, very unlikely.";

instead of taking the soil:
	if soil is in moor:
		say "It belongs here[if silo is visible], as a foundation for the silo[end if]." instead;
	otherwise:
		say "It'd be a mess to carry.";

check inserting it into (this is the straw-hay insert rule):
	if second noun is cask:
		ignore the can't insert what's not held rule;
		if cask is closed:
			say "The cask is probably for holding liquids, and it's not open. Well, not yet." instead;
		if noun is straw or noun is hay:
			say "Too messy--it'd stick out and fall out. [run paragraph on]";
		say "The cask is really made to hold liquids." instead;
	if second noun is sack:
		ignore the can't insert what's not held rule;
		if noun is in sack:
			say "It already is." instead;
		if noun is missile or noun is panel or noun is door:
			say "That wouldn't fit in the sack[if straw is in sack or hay is in sack], even if the sack were empty[end if]." instead;
		if noun is not straw and noun is not hay:
			say "[if straw is in sack or hay is in sack]You've already got something in there[else]The sack's probably better for bulkier stuff[end if]." instead;
	if noun is black door or noun is panel:
		ignore the can't insert what's not held rule;
		try putting noun on second noun instead;
	if noun is missile:
		ignore the can't insert what's not held rule;
		if second noun is not silo:
			if noun is black door and black door is part of the silo:
				try inserting missile into silo instead;
			say "The missile needs to fit in or on a big structure." instead;
	if noun is hay or noun is straw:
		ignore the can't insert what's not held rule;
		if second noun is silo:
			say "Farming isn't what you need to do, here[if door is not part of silo], and anyway, you've got no door to schlep things through." instead;
		if noun is straw:
			if second noun is scraped wall:
				say "That would be perfectly sensible, to make the wall impermeable. The scraped wall seems to indicate the need for a hallway, though." instead;
			otherwise if second noun is not sack:
				say "The straw is probably more useful thatching a cottage or something. You haven't seen any, yet." instead;
	if second noun is silo:
		if noun is not missile and noun is not panel and noun is not door:
			say "That doesn't belong in or on the silo." instead;
	if second noun is fuzzy looking wall:
		if op is visible:
			try putting noun on op instead;
		say "[if player is on fuzzy wall]There's no place something'll stick on the wall this high up. Well, not yet[else]The bottom of the wall doesn't seem like a useful place to stick things[end if]." instead;

check putting on scraped wall:
	try inserting noun into scraped wall instead;

check inserting it into (this is the sack-into-wall rule):
	if noun is sack:
		if number of things in sack is 1:
			say "I'm assuming you mean what's in the sack.";
			try putting a random thing in the sack on the noun instead;
		otherwise if number of things in sack is 0:
			say "The sack wouldn't look right, there.";
		otherwise:
			say "[bug-report] Should not have 2 things in the sack." instead;

check inserting hay into:
	if second noun is cask:
		say "The cask should probably store liquids instead." instead;
	if hay is part of the scraped wall:
		say "[if second noun is scraped wall]You already did that[else]That hay fits well. Now if you could just make the haywall into something you could walk through, that'd be awesome[end if]." instead;
	if second noun is not scraped wall:
		say "You're not sure how the hay could augment anything, there." instead;
	now hay is part of the scraped wall;
	now scraped wall is hayfilled;
	reg-inc;
	say "Hey, well, the wall is made of hay now. Anyhow, I hope you know what you're doing." instead;

before taking hay:
	if hay is part of the scraped wall:
		say "Don't undo what you did. The haywall is close to what you want." instead;

section hoses-shoes

a pair of hoses are a plural-named thing. "[one of]A familiar pair of hoses lies by the cask. The guards must have forgotten them while, err, celebrating[or]That pair of hoses is still lying around[stopping].". rgtext of hoses is "[rcn][rc][rc][gc][gc]". gpos of hoses is 3. rpos of hoses is 5. lgth of hoses is 5. cert-text of hoses is "-[d1][d1][ast]E[ast]S". rect-text of hoses is "S[d1][d1][d1][ast]S".


instead of taking hoses:
	say "They're too unwieldy, but maybe if they transformed into something else..."

after doing something with hoses:
	set the pronoun it to hoses;
	continue the action;

the shoes are a plural-named undesc.

understand "hose" as hoses.

description of hoses is "Thick, probably better for keeping water out than storing it."

instead of tying hoses to something:
	say "They are too thick to bend and twist and tie to anything."

instead of tying something to hoses:
	say "They are too thick to bend and twist and tie to anything."

section pouring

pouring is an action applying to one visible thing.

understand the command "pour [any thing]" as something new.

understand "pour" as pouring.

rule for supplying a missing noun while pouring:
	if player has cask:
		now noun is cask;
	say "You don't really have anything you can pour.";
	reject the player's command;

understand "pour [any thing]" as pouring.

does the player mean pouring the oils when player is in cedars: it is very likely.

does the player mean filling the cask: it is very likely.

carry out pouring:
	if player has sack and cask is in bullpen:
		say "Fluids would leak through the sack. The cask you had would be better." instead;
	if player does not have cask:
		say "Nothing to pour anything into." instead;
	if noun is cask:
		if oils are not in cask:
			say "Nothing in the cask to pour." instead;
	if noun is soil:
		if oils are in cask and noun is soil and soil is not visible:
			try fliptoing soil instead;
	if noun is silo:
		if oils are in cask and noun is silo and soil is not in moor:
			try fliptoing silo instead;
	if noun is not visible:
		say "You can't see any such thing." instead;
	if noun is oils and location of player is sacred cedars:
		if oils are in cask:
			say "[cask-full]." instead;
		otherwise:
			try filling cask instead;
	if noun is oils or noun is cask:
		say "You need to decide what you want the oils to be before pouring. Don't worry, there are only twenty-odd possibilities. And some don't make sense." instead;
	if noun is spout:
		say "(I assume you mean the oils into the cask.)";
		try filling the cask instead;
	say "You can't pour that!";
	the rule succeeds;

to say cask-full:
	say "The cask is already full of oils"

section moor

r2 is a privately-named proper-named backdrop. description of r2 is "[bug-report]". r2 is useless. rgtext of r2 is "[rc][gc][gc][rc]". lgth of r2 is 4. gpos of r2 is 4. rpos of r2 is 1. the cert-text of r2 is "-[ast]O[ast]O[d1]". the rect-text of r2 is "M[d1][d1][ast]R".

printed name of r2 is "the room". r2 is in roomroom.

definition: a room is moory:
	if it is moor, decide no;
	if it is in Sortie, decide yes;
	decide no;

after printing the locale description for moor when moor is unvisited:
	move r2 backdrop to all moory rooms;
	continue the action;

check fliptoing teleporter (this is the block moor if not dressed right rule):
	if player is in roomroom:
		if shoes are not in lalaland:
			say "You see a flash and get a glimpse of the moor, but your movement's gummed up quickly by the ooze below. Best to find something better to put on your feet.";
			preef r2 instead;
		if player carries coat and player is not wearing coat:
			say "(wearing the coat first)[line break]";
			now player wears the coat;
		if player is not wearing coat:
			say "You see a flash and get a glimpse of a moor, but it is just too cold. You blink and find yourself back in the room[if coat is off-stage]. You'll need to pierce the recipe to build something warm that can cover the rest of your body than just the shoes[else]. That coat you made would be handy[end if].";
			preef r2 instead;
		if moor is unvisited:
			if sortie-warn is false and button-locked is false and player has gadget and hows tag is part of gadget:
				now sortie-warn is true;
				say "[gadact] once you jump to the moor. Is this okay?";
				if the player yes-consents:
					do nothing;
				else:
					say "Okay. Next time, you won't see this warning." instead;
				now button-locked is true;

to say moor-jump:
	if moor is visited:
		if location of player is cedars and caskfillings is 2:
			say "You hear a crash as you teleport. Maybe you'll find what it was about when you return.";
		otherwise:
			say "'The mire, I'm there,' you muse[if r2 is prefigured and moor is unvisited]. Of course, you know what to expect, and you put your coat back on first[end if][if player has been in moor and woeful pat is in moor][one of]. Woeful Pat seems hurt that you did not return with a larger audience[or][stopping][end if][if player is in cedars]. You step out of Sacred Cedars to perform your magic, out of respect for Lois[end if].";
	if moor is unvisited:
		say "There you go! You're outside, now. Your coat keeps you warm[if player was not wearing coat]--you managed to slip it on as the scenery changed and the temperature dropped[end if].";
	else:
		say "Oh, hey, teleporting's easier with experience[if player was not wearing coat]. Of course, you know what to expect, and you put your coat back on first[end if][if player has been in moor and woeful pat is in moor][one of]. Woeful Pat seems hurt that you did not return with a larger audience[or][stopping][end if].";

chapter Stiller Trellis / Crashing Archings

Stiller Trellis is east of Kitchen and north of roomroom. "[if trel-priv is in lalaland]The crashing archings cover where the trellis was, blocking the way you made to the east. [else if cedars are not visited]This room feels close to something important. [end if][the-trellis]. You can [unless trel-priv is in lalaland or scraped wall is hayfilled]also [end if]go west or south.". Trellis is in Sortie.

understand "haywall" and "hay wall" as scraped wall when scraped wall is hayfilled.


trel-priv is privately-named scenery in Trellis. printed name of trel-priv is "the trellis". understand "trellis" as trel-priv.

understand "decoration" as trel-priv.

description of trel-priv is "[if cedars is visited]The trellis feels appropriate to guard or indicate the room to the east, now you've been there[otherwise if scraped wall is visible]It arches over the scraped bit of wall, as if the wall wasn't supposed to be there. You could picture a passage through it, somehow[else]You could just walk under it to the east, now[end if]."

to say the-trellis:
	if cedars is visited:
		say "The trellis feels appropriate to guard or indicate the room to the east, now you've been there";
	otherwise:
		say "The trellis to the east is the only decoration you've seen in this area[if scraped wall is not hayfilled], and the wall below it seems scraped and beaten up a bit[end if]"

the scraped wall is scenery in Trellis. the scraped wall can be hayfilled. the scraped wall is not hayfilled.

the rgtext of scraped wall is "[gc][gc][rc][rc][rc][rc][rc]". the lgth of scraped wall is 7. gpos of scraped wall is 1. rpos of scraped wall is 3. cert-text of scraped wall is "H[ast]A[d1][d1][d1][d1][d1]". rect-text of scraped wall is "H[d1][d1][d1][d1][d1][ast]Y".

check scaning scraped wall when scraped wall is not hayfilled:
	say "The gadget makes a noise and blinks briefly. Perhaps the wall is not ready to be changed." instead;

instead of climbing scraped wall:
	say "No good handholds, and it goes up too high anyway."

instead of climbing trel-priv:
	say "No good handholds, and it goes up too high anyway."

the crashing archings are plural-named scenery. "The archings blocked the passage to the east once they crashed down. You burble like a lubber at the rubble that now blocks the way east."

understand "rubble" as crashing archings.

instead of climbing archings:
	say "You can't get through. The rubble has hardened."

instead of taking archings:
	say "The rubble seems to have dried and stuck like lava."

description of scraped wall is "It's scraped away, but not enough to bust through[if scraped is hayfilled]. In fact, you stuffed hay where the wall was sort of peeled away[else]. You see HALLWAY UNDER (UN-)UN-CONSTRUCTION scrawled on it[end if].";

instead of reading wall:
	say "[if scraped is hayfilled]You can no longer see where it says [end if]HALLWAY UNDER (UN-)UN-CONSTRUCTION.";

check going east in Trellis:
	if scraped wall is visible:
		say "You're going to have to do something about that wall, first[if scraped wall is hayfilled]. You already have, but just one more thing[end if]." instead;
	if caskfillings is 2:
		say "The rubble from the archings is too high and too solid." instead;

check going nowhere in Trellis:
	say "You can only go west or south[if the room east of Trellis is sacred cedars] or, since you opened the hallway, east[end if]." instead;

check inserting into scraped wall:
	if noun is not straw and noun is not hay:
		say "That doesn't seem to fit. You need something stuffing-like." instead;

instead of throwing cask at scraped wall:
	say "The cask bounces off harmlessly, no worse for the wear. You take it back." instead;

section hallwaying

check fliptoing hallway:
	if scraped wall is not hayfilled:
		say "Hm, that's possible, but you can't make the hallway until you add something to the wall.";
		preef hallway;
		do nothing instead;

the hallway is scenery. "The hallway isn't much to look at, but whatever's to the east might be."

instead of doing something with the hallway:
	if current action is entering:
		try going east instead;
	if current action is fliptoing:
		continue the action;
	say "Now that you made the hallway, you can't do much with it besides walk east through it.";

chapter moor

Moor is a room in Sortie. description of moor is "You're on a moor. The rime-mire all around leaves you feeling a bit trapped, even though you know you could go back the way you came[if anapest is in moor][one of][or]. You hear bad poetry[stopping][end if]."

the rime mire is scenery in moor. "The moor you're on has stable enough footing, but the rime mire seems much more treacherous."


understand "rime-mire" as rime mire.

m2 is privately-named proper-named scenery in moor. rgtext of m2 is "[rc][gc][gc][rc]". lgth of m2 is 4. gpos of m2 is 4. rpos of m2 is 1. cert-text of m2 is "-[ast]O[ast]O[d1]". rect-text of m2 is "R[d1][d1][ast]M".

printed name of m2 is "the moor". m2 is undesc. m2 is abstract.

room-flip is a truth state that varies.

after fliptoing r2:
	if room-flip is false:
		say "[paragraph break][i][bracket]NOTE: you can now teleport back to the moor from any inside location.[close bracket][line break]";
		now room-flip is true;
	continue the action;

every turn when player is in moor and pat is in moor:
	say "The poem [one of]establishes its singsong rhythm early[or][drones][stopping].";

after choosing notable locale objects when player is in moor:
	if roadblock is in moor:
		set the locale priority of the roadblock to 9;
	if black door is in moor:
		set the locale priority of the black door to 9;
	if Pat is in moor:
		set the locale priority of Woeful Pat to 8;



reset-already is a truth state that varies.

to say reset-goof:
	if steer button is visible:
		say "You don't need to reset the steer button[if trees-is-pushed is true] like you did the trees button[end if]. It's what it's supposed to be";
	else if reset-already is false:
		say "Unfortunately, it's not QUITE as easy as just pushing a reset button[if trees-is-pushed is true], which only worked to undo the trees[end if]. You have one more puzzle to navigate";
		now reset-already is true;
	else:
		say "Resetting twice won't get you anywhere. You need a new direction to change the TREES"

Woeful Pat is a person in the moor. initial appearance of Woeful Pat is "Woeful Pat, the awful poet, [one of]sees he has an audience and administers a dose of his odes. It'd be almost enough to make you reverse back to the room, but you've already dealt with the Nick[or]is well into a ballad. It's all bad[stopping]."

understand "awful poet" and "awful" and "poet" as woeful pat.

to say pat-blather:
	say "He holds up his hand for silence. He is too busy reciting his poem. You probably can't ask him about anything other than the poem[if anapest-clued is false]. Or maybe its meter[end if].[run paragraph on][line break]";

description of Woeful Pat is "His clothes are dark and strategically scuffed. Good thing chain wallets and other ugly stuff haven't made it here yet. But looks aren't really important. It's that poetry you find awful."

Woeful Pat wears the dark clothes.

description of dark clothes is "All dark clothes start to look the same after a while."

the dark clothes are amusing.

instead of taking dark clothes:
	say "A bad idea on so many levels."

pat-index is a number that varies.

anapest-clued is a truth state that varies. anapest-clued is false.

to say drones:
	say "drones on[one of], poor and laboring--good qualities in a person but not a poem[or], and Pat gestures with a hand to the ear and nod of his head to make sure you're listening, not breaking his meter[or][cycling]. Da da DA, da da DA, da da DA[one of][or][if anapest-clued is true]. You'd recognize the rhythm if you studied harder in English class[else]. That anapest is getting annoying, and you'd like to get rid of it, somehow[end if][or][ifnv][cycling]";

to say ifnv:
	if player does not have expo flier:
		say ". Pat pauses for a minute, and involuntarily nod your head in gratitude. You don't notice when he shoves a flier into your hand. 'I will be performing minor works soon. A poetry appreciator like you is welcome to attend.' Thankfully, there's no sample on the flier you have";
		now the player has the expo flier;

the expo flier is a thing. description of expo flier is "It's two-sided. One says Stick Figure Connoisseur Expo and Open Poetry Session at [one of][first custom style]ST. PAEAN[r] the so-sinful-(s)he's-holy this Yorpday[or][first custom style]SANE TAP[r] pub and grill next Waldday[cycling]![paragraph break]Well, you know where you won't be."

check scaning the expo flier:
	say "[if anapest is in moor]Your gadget makes no noise, but you can't help feeling the name St. Paean is totally wrong[else]No sound[end if]." instead;

poetry-listening is a truth state that varies. poetry-listening is usually false.

to say anapest-clue:
	say "[one of][if anapest-clued is false]'I noticed you nodding your head to the beat. You probably don't even know it's called ANAPEST. But the proper meter of my poem is but the surface of its multifaceted splendor!'[else]'Ah, an appreciator of fine ANAPEST. I will waste little time discussing its details, since you already seem to know them.'[end if][line break]Before you realize he'd given you a break from his poetry, he starts up again. He didn't even tell you the poem's name.[or]He explains that this will not be as great as his next, [first custom style]TAN APSE[r]. You see red at the thought of a sequel.[or]Red-faced, he derides a fellow poet, Nate. SAP![or]'Spent! Aa!' he cries, turning red, brushing you away, but not really[one of][or]. That's all you will get from him[stopping].[stopping]";
	now anapest-clued is true;

check listening to anapest:
	if anapest-clued is false:
		say "[anapest-clue]" instead;
	say "[one of]He at least has the meter--what was it again, anapest?--right. 'End of canto,' he says.[or]'Are you reflecting on the inner meaning? Or are you just amazed I have gotten the anapest right in every single line? Even--pff--mathy types who can't count meter right.'[stopping]" instead;

the roadblock is a thing in the moor. "A roadblock that isn't actually blocking any roads lies here. Maybe it can become more useful.". rgtext of roadblock is "[rcn][rc][gc][rc][rc][rc][gc][rc][rc]". lgth of roadblock is 9. gpos of roadblock is 5. rpos of roadblock is 1. cert-text of roadblock is "-[d1][ast]A[d1][d1][d1][ast]O[d1][d1]". rect-text of roadblock is "B[d1][d1][d1][d1][d1][d1][d1][ast]R".

understand "block" as roadblock when roadblock is visible.

the road is useless scenery in moor. "[if roadblock is visible]You'd expect to see a road, what with the roadblock, but you don't[else]Removing the roadblock did not make a road appear. But hey, free black door[end if]."

instead of doing something with road:
	if action is procedural, continue the action;
	say "Though there [if roadblock is in moor]is[else]was[end if] a roadblock, there is no road."

instead of climbing roadblock:
	say "There's no path behind it. Some roadblock, eh? It might be better reincarnated as something else."

the roadblock is fixed in place.

instead of taking roadblock:
	say "Moving it would be tougher than dock labor."

a black door is a thing. "The black door you made lies here, without a structure to attach it to."

check closing black door:
	say "[if black door is part of the silo]It is[else]It's not attached to anything[end if]." instead;

description of black door is "It's a swinging door. No knob or bolt or anything."

black door is pushable between rooms.

check pushing black door to:
	if second noun is inside and silo is visible:
		try pushing black door instead;
	otherwise:
		say "You don't need to get rid of the black door or move it anywhere else." instead;

instead of opening black door:
	if black door is part of the silo:
		say "[one of]A quick peek inside, and you see enough machinery to know this is not a grain silo. You quickly close the door--the machinery may be beyond you, and you don't need to deal with it[or]You should probably work at the silo from the outside[stopping].";
	otherwise:
		say "Other doors in this game may lead somewhere for no reason, but this doesn't.";

check taking the black door:
	if black door is part of the silo:
		say "It's where it needs to be." instead;
	if player does not have black door:
		say "It's too heavy to lug around for any amount of time, but maybe it can fit in somewhere if you push it, or put it on something.";
		stop the action;

check taking the panel:
	if panel is part of the silo:
		say "It's where it needs to be." instead;

instead of opening silo:
	if black door is part of the silo:
		try opening black door instead;

instead of entering black door:
	try opening black door instead;

description of roadblock is "It's about eight feet long and really dark (you pause and hope you don't need to learn COBOL) and dented about halfway through--well, four-ninths of the way from the right. You are utterly unsure what it could possibly be guarding, and you also notice bright red graffiti[one of].[paragraph break]You think back to how your nametag was creased, and how the roadblock probably doesn't change into anything too easy like a broad lock. The moor [if sack is not off-stage]and the sack [end if]already felt a bit easy[or][stopping]."

the bright red graffiti is part of the roadblock.

instead of doing something with the bright red graffiti:
	if current action is examining or current action is reading:
		continue the action;
	say "You can really only examine or read it.";

description of bright red graffiti is "DOC OLBARK has chosen to deface this roadblock, in bright red paint, no less."

the anapest is scenery in moor. rgtext of anapest is "[rcn][rc][gc][rc][rc][rc][gc]". lgth of anapest is 7. gpos of anapest is 4. rpos of anapest is 7. cert-text of anapest is "-[d1][ast]A[d1][d1][d1][ast]T". rect-text of anapest is "P[d1][d1][d1][d1][d1][ast]T".

description of anapest is "You can't help NOT paying attention to the anapest."

anapest is undesc.

understand "anapests" as anapest.

understand "poem/poetry" as anapest when anapest is visible.

instead of scaning anapest:
	say "Yes, this sort of poetry doesn't require deep reading, just scanning";
	if player has gadget:
		say ". But seriously, your gadget seems to blink with the beat. [run paragraph on]";
		continue the action;
	otherwise:
		say ". Too bad you don't have a device to scan it more practically." instead;

instead of doing something with anapest:
	if the current action is objasking generically:
		continue the action;
	if the current action is listening:
		continue the action;
	if action is procedural, continue the action;
	say "The beat is drilled in your head: da da DA da da DA da da DA (repeated. I'll spare you the words, but...)"

instead of going nowhere in moor:
	say "The rime-mire all round is too dangerous, but nothing's stopping you from leaving (opposite) the way you came."

the peasant is a man. "A peasant is here[if peasant has hay], carrying some hay over his shoulder[end if]."

before doing something with the hay when peasant has hay:
	if the current action is objasking generically or the current action is objasking about or current action is scaning or current action is examining or current action is xmxing:
		continue the action;
	say "The hay is the peasant's, and he is bigger than you. But maybe you can give him something for it, if you want it[one of]. You notice him occasionally looking ruefully at it[or][cycling]." instead;

some hay is a singular-named thing.


indefinite article of some hay is "some".

description of hay is "It's hay, hey? Well...there's enough to stuff something pretty substantial."

instead of taking the hay:
	if peasant has the hay:
		say "That's the peasant's. Someone already ripped him off, giving it to him." instead;
	if hay is in sack:
		say "Keep it in the sack [']til you need it." instead;
	if player has sack:
		say "You can't take it all at once, but it can fit in the sack. So you put it there.";
		now hay is in sack;
	say "You couldn't see around it if you carried it in your hands, and you've got nothing that'd hold it."

description of peasant is "He can't help glancing at the hay he is carrying, frowning a bit."

check giving sack to peasant:
	say "No, wait, you might still need that, after. But you could maybe give him something inside[if number of things in sack is 0], once you have something there[end if]." instead;


check giving cask to peasant:
	say "No, wait, you might need that. But you could maybe give him something inside." instead;

before showing to peasant:
	ignore the can't show what you haven't got rule;
	try giving the noun to the peasant instead;

before giving to peasant:
	if noun is sack and straw is in sack:
		say "(I'm assuming you meant the straw in the sack)";
		try giving the straw to the peasant instead;
	if noun is hay:
		say "He already has it." instead;
	say "The peasant probably doesn't want any adventuring goodies. Maybe something more practical for him?" instead;

before giving straw to peasant (this is the straw-peasant rule):
	ignore the can't give what you haven't got rule;
	say "'Oh, thank you! Mean Old Mondale-Doleman stuck me with this hay when I needed much stronger material to re-patch my house. He pretended not to know the difference. But he did once!'[paragraph break]'Here's a little something I wrote. [i]He[r] said even an economist wouldn't put emoticons in a poem.'[paragraph break]He hands you a paper and heads off. You're sick of poetry, but with the hay weighing you down, you'll never catch the peasant.";
	now player has the poem;
	reg-inc;
	now peasant is in lalaland;
	now straw is in lalaland;
	now hay is in sack instead;

a poem is a thing. lgth of poem is 5. gpos of poem is 1. rpos of poem is 2. rgtext of poem is "[gcn][rc][rc][rc][rc]". cert-text of poem is "P[d1][d1][d1][d1]". rect-text of poem is "P[d1][d1][d1][ast]L".

understand "poetry" as poem when poem is visible.

after printing the name of the poem while taking inventory:
	if smilies are part of the poem:
		say " (improperly punctuated)";
	continue the action;

does the player mean folding the poem: it is likely.
does the player mean doing something with the tinfoil info-lit: it is very unlikely.

does the player mean doing something with prep paper when the poem is visible: it is unlikely.

understand "limerick" as poem when poem is not folded.

understand "paper" as poem when poem is visible.

the smilies are part of poem. smilies are plural-named.

instead of taking smilies:
	say "You can't just pull them off the page."

description of poem is "'I'm just a guy who loves his work[smy][line break]Not like that poet, he's a jerk[smy][line break]He says he rhymes neater[smy][line break]And rips on my meter[smy][line break]I'd like to punch him in his smirk[smy]'[paragraph break][if missile is off-stage]Whoah, lots of smilies, there. They'd drive a grammar pedant ballistic[else]The limerick doesn't make you want to lick the mire like Woeful Pat's stuff[end if]. The paper seems creased on a few diagonals."

check examining poem:
	if poem is folded:
		say "It's a paper plane now, devoid of evidence anyone ever scrawled poetry on it." instead;

to say smy:
	if missile is off-stage:
		say " [if sr-acc is true]SMILIES[else]:) :)[end if]";

section pushing the buttons

the hoots button is a thing. description is "It's on the right, and it's labeled HOOTS.".

rgtext of hoots button is "[rcn][rc][gc][rc][rc]". lgth of hoots button is 5. gpos of hoots button is 5. rpos of hoots button is 4. cert-text of hoots is "-[d1][ast]O[d1][d1]". rect-text of hoots is "S[d1][d1][d1][ast]T".

the shoot button is a thing. description is "It's on the right, and it's labeled SHOOT.".


the trees button is a thing. description is "It's on the left, and it's labeled TREES."

rgtext of trees is "[rcn][rc][gc][gc][rc]". lgth of trees button is 5. gpos of trees button is 5. rpos of trees button is 2. cert-text of trees is "-[d1][ast]E[ast]E[d1]". rect-text of trees is "S[d1][d1][d1][ast]R".

the steer button is a thing. description is "It's on the left, and it's labeled STEER."

understand "right" and "right button" as hoots button when hoots button is visible.
understand "right" and "right button" as shoot button when shoot button is visible.
understand "left" and "left button" as trees button when trees button is visible.
understand "left" and "left button" as steer button when steer button is visible.

check pushing hoots button:
	say "You hear loud hoots. You're not sure if people are laughing, or alerting you to the fact that this button doesn't do what it's supposed to, or if maybe it's some high-tech/magic war dance or even an air raid siren. Whatever it is, it's clear noise won't get the missile launched." instead;

missile-steered is a truth state that varies. missile-steered is usually false.

check pushing shoot button:
	if missile-steered is false:
		say "[one of]You hear a loud siren! Unfortunately, the missile doesn't seem to be pointing anywhere besides straight up. Guess where it'll land?[or]The missile doesn't have a specific target. You can't just go chucking it anywhere.[stopping]" instead;
	say "A voice intones 'Chargin[']! Chargin[']! Chagrin-a-grinch!'[paragraph break]Grand finale! A flaring end?! No finer inferno than feral flare as from a remote meteor. A loud voice echoes 'Mondale-Doleman! Lo, Amend!' And the missile becomes... a dolmen. You feel simple, heartfelt, plainly-worded concerns flooding explode across, and you run towards them, and somehow it takes no time at all to get to Mean Old Mondale-Doleman's castle.[paragraph break]Where he is beaming, no longer big, mean.[paragraph break]'O crater creator! That launch deserves A LUNCH! A do of FOOD!' he booms. 'Had now!'";
	say "[wfak]And how! You learn he is, of course, Noble Ol' Ben. But he feels he hasn't re-earned the title, yet, so he's all 'Me, sir? Miser!' (Yeh, ok, hokey.)[paragraph break]You try every tater treat and enjoy the flukiest lutefisk (fine dish! Finished!) ever. You even meet the guards who imprisoned you[guards-say-hi]. Hugs gush. After a thousand uh, not-sad, handouts (ah! Donuts!) and a fast, live festival ('My encore ceremony!') with an orchestra, a carthorse returns you to the Trips Strip.[paragraph break]Dreaming on the way back, you picture yourself saying 'SOOTH!' when asked if you'd solved the sortie in an alternate universe.";
	reg-inc;
	solve-region sortie instead;

to say guards-say-hi:
	if grist is in obligatory and cake pan is in obligatory:
		say ". They smile and apologize awkwardly, and you say no problem.";
	else if grist is in lalaland and cake pan is in lalaland:
		say ". They thank you for leaving them so much food even after they--well. They were too lazy when they woke up";
	otherwise:
		say ". They thank you for leaving enough food to tide them over but not too much. They needed room for the feast";

trees-is-pushed is a truth state that varies. trees-is-pushed is false.

check pushing trees button:
	now trees-is-pushed is true;
	say "Trees begin growing out of the side of the silo. The Trees button switches to a reset button which starts blinking violently. You push it before the trees crash down on you. They vanish, and it's a trees button again. Whew." instead;

check pushing steer button:
	if missile-steered is true:
		say "That'd be overkill. You imagine it's [if shoot button is visible]the other[else]another[end if] one you need to push to launch.";
	otherwise:
		now missile-steered is true;
		say "'AMUSING GUNS! AIM!' The silo makes some ominous VVTT-KLK-BRRW noises and tilts slightly in the direction of what you assume and hope is Mean Old Mondale-Doleman's palace.";
	the rule succeeds;

section silo arcana

the silo-put rule is listed before the can't put onto what's not a supporter rule in the check putting it on rules.

the silo-put rule is listed before the can't put what's not held rule in the check putting it on rules.

before tying to (this is the tying tautology rule) :
	if noun is second noun:
		say "[tau]" instead;

before inserting into (this is the insert tautology and already done rule) :
	if second noun contains noun:
		say "The [printed name of the second noun] already contain[unless second noun is plural-named]s[end if] [the noun]." instead;
	if second noun is doll house or second noun is attics:
		say "You'll have a great big residence at the end if you save Yorpwald. Trust me! No need to prettify the doll house." instead;
	if noun is second noun:
		say "[tau]" instead;

check tying it to (this is the silo tying rule):
	if noun is second noun:
		say "[tau]" instead;
	if noun is silo:
		try tying second noun to silo instead;
	if noun is panel:
		if second noun is silo or second noun is rectangle:
			try putting noun on silo instead;
	if noun is missile:
		if second noun is silo and black door is part of the silo:
			say "(You want to PUT the missile IN, I think.)";
			try inserting noun into silo instead;
	if noun is black door or noun is missile:
		try putting noun on second noun instead;

check putting it on (this is the straw-hay put-on rule):
	if noun is straw or noun is hay:
		try inserting noun into second noun instead;

check putting it on (this is the silo-put rule):
	if second noun is sack or second noun is cask:
		try inserting noun into second noun instead;
	if noun is the missile:
		ignore the can't put what's not held rule;
	if second noun is the missile:
		say "The missile, being round, can't support things." instead;
	if noun is the panel and noun is part of the silo:
		ignore the can't put what's not held rule;
		say "The panel is where it needs to be." instead;
	if noun is the black door:
		ignore the can't put what's not held rule;
		if second noun is boundary:
			try putting black door on silo instead;
		if second noun is panel:
			say "Not on the panel, but next to it." instead;
			if panel is part of the silo:
				try putting black door on silo instead;
			say "The panel's not small, but it's not as big as the silo." instead;
		if second noun is not silo:
			say "The black door probably needs to fit on, or in, a big structure." instead;
	if second noun is rectangle:
		if noun is panel:
			try putting noun on silo instead;
		say "Not really the right size[if noun is not door] or shape[end if]." instead;
	if second noun is door and door is part of the silo:
		if noun is not door:
			say "Hm, not *on* the door, but maybe by it.";
			try putting noun on silo instead;
	if second noun is silo:
		ignore the can't put onto what's not a supporter rule;
		if noun is black door:
			ignore the can't put what's not held rule;
			say "The door fits the dotted line in the silo perfectly, swinging slightly before sliding in place with a click.";
			now dashed boundary is in lalaland;
			now black door is part of the silo instead;
		if noun is panel:
			now panel is part of the silo;
			now dotted rectangle is in lalaland;
			say "The panel fits into that rectangle handily and even starts to glow. Two buttons appear on it--one says HOOTS, the other TREES. 'Panel fits. Final step,' you muse.";
			now the hoots button is part of the panel;
			now the trees button is part of the panel instead;
		if noun is missile:
			say "I assume you mean IN the silo...";
			try inserting missile into silo instead;
		say "That doesn't seem to fit anywhere on the silo." instead;
	if second noun is the straw or second noun is the hay:
		say "That'd crush [the second noun]." instead;
	if noun is the missile:
		say "You roll the missile around, but you can't find anywhere to put it." instead;

before doing something with the missile when the missile is visible:
	if missile is in lalaland:
		say "It's where it needs to be. No need to worry about it." instead;

check inserting missile into silo:
	if black door is part of silo:
		say "You schlep the missile through the door. You hear some mechanics and whizzing, then 'SMILIES MISSILE PROPERLY ALIGNED FOR DEALING A RESULT WITH LUSTER.'";
		set the pronoun it to silo;
		now missile is in silo instead;
	otherwise:
		say "No way to put the missile in or on the silo--and nothing on the side to attach it to. If there were any way into the silo, you could put the missile in there." instead;

section stuff for after cedars

the soil is scenery.

description of soil is "It's a rich foundation for [if silo is visible]that silo you built[else]a big, big place, you're sure[end if]. Stronger and denser than the usual mush on this moor."

the silo is a transparent container. it is fixed in place. "That silo you poured from the cask of oils towers above you here[if black door is part of the silo]. You see the outline of the black door on it, but you probably don't want to go in[end if][if missile is in the silo]. You know the missile's in there, too[end if][if panel is part of the silo]. There's also a panel attached to the silo[end if]."

does the player mean shooting the missile when the missile is visible: it is likely;

check shooting the missile:
	if silo is not visible:
		say "Not on your own you won't shoot the missile." instead;
	if the missile is not in the silo:
		say "You're not strong enough to launch it by yourself, but there's a handy silo nearby you can put it in." instead;
	if missile is in silo:
		if player has panel:
			say "There are no controls attached to the silo at the moment. You happen to have some handy, though." instead;
		if panel is not part of silo:
			say "The missile's in the silo, but there's no button to push to launch it. Or thing that has lots of buttons to push. " instead;
		say "Maybe you should explicitly try a button and see what happens." instead;

the dashed boundary is part of the silo. description of dashed boundary is "It seems to have writing, one letter per dash: PUT CORRECTLY COLORED DOOR ON SILO[if black door is not visible]. You wonder what you could change into a door[else]. Hm, you doubt there's a red or blue door you have to find[end if]."

the dotted rectangle is part of the silo. description of dotted rectangle is "[if player has panel]Curiously, it's about the size of the panel[else]It's as if you need to put something on there, but you wonder what[end if]."

description of silo is "It's thirty feet tall and dark and forbidding, except for [if black door is part of silo]the door you slapped on it[else]a six-by-eight-foot dashed boundary that rises from the ground[end if] and [if panel is part of the silo]that panel you installed[else]a smaller dotted rectangle, chest-high, to the side[end if]."

instead of entering the silo:
	say "[if dashed is part of the silo]Bam! That outline almost looked like a door, but it wasn't[door-clue][else]A quick peek in shows the silo's empty inside. You're not even sure if you could open the door from the inside, [if-missile][end if].";

to say if-missile:
	say "[if missile is in silo]and the missile wouldn't make good company[else]but you could put something that belongs through the door[end if]";

to say door-clue:
	if black door is visible:
		say ". But there's a door nearby";
	otherwise:
		say ". Maybe something can be changed into a door";

chapter Sacred Cedars

Sacred Cedars is east of Trellis. "You are in a room with thick entwined cedars as walls. On one, a spout pouts, waiting for a stoup. You can go back west to the stiller trellis. Oddly, you feel no reason to be scared. You see drawings and holy verse on the walls.". Cedars is in Sortie.




to say what-to-ask-lois:
	if player is not in cedars:
		say "Lois may not hear you out here[if caskfillings is 2]--she has left you to your own devices, but you must be close[else], and she may only give marginal hints in the cedars[end if]";
	else if player does not have cask:
		say "You suddenly feel discontent at your container of choice";
	else if caskfillings is 0:
		say "Lois will not pour the oils in the cask for you, but she is not stopping you";
	else if caskfillings is 1:
		say "Lois is silent. You figure what to pour, where";
	else:
		say "You feel guilt at asking Lois for more"

check going west in Sacred Cedars:
	block-cedars;

to block-cedars:
	if caskfillings is 2:
		say "You hear a creaking above as you exit. You see the trellis's archings crashing on you and quickly run from under them. The archings smash against each other, and their rubble blocks the hallway. You hear a voice. It must be Lois. 'WIN,' she whines.";
		now printed name of Trellis is "Crashing Archings";
		now crashing archings are in Trellis;
		now trel-priv is in lalaland;

lois is scenery in sacred cedars. "Lois is beyond trivial standard I7 descriptions, so if you see this, it is a [bug-report] Report to the author with a transcript."

instead of doing something with lois:
	if current action is attacking:
		say "No. Lois is here to help.";
	say "Looking for evidence of Lois proves lack of faith."

drawings are plural-named amusing scenery in sacred cedars.

description of drawings is "You see a vermian minerva, a cliche chalice, and a lanced candle. They're probably not for anything, but they're solid idols and add atmosphere nicely, even if you can't descry meaning from examining them individually."

instead of taking drawings:
	say "Even if they could be moved, that'd be sacrilege.";

understand "vermian minerva" and "vermian/minerva" as drawings.
understand "cliche chalice" and "cliche/chalice" as drawings.
understand "solid idols" and "solid/idols" as drawings.
understand "lanced candle" and "lanced/candle" as drawings.

check going to sacred cedars for the first time:
	say "You follow the haywrought throughway..."

the holy verse is scenery in sacred cedars.

description of holy verse is "It's all calligraphic, and it reads[paragraph break][i]From here, where lumbers slumber, is, lo! Purest oil snout erupts: solution! Ground unsod becomes sound. Lovely volley. A stone atones![paragraph break]  --LOIS[r]"

check going nowhere in sacred cedars:
	say "There is no other secret door. You can only go back west." instead;

the sc are privately-named plural-named scenery in sacred cedars. printed name of sc is "cedar wall/walls". understand "cedars" and "cedar/ wall/walls" as sc.

description of sc is "They look nice and even smell nice. A holy verse is carved on one."

the spout is scenery in sacred cedars. description of spout is "It can be used to FILL the appropriate receptacle here.";


check switching on spout:
	if player has cask:
		try filling the cask instead;
	if player has sack:
		try filling the sack instead;
	say "It'd be cannier to have a container." instead;

section taping

taping is an action applying to one thing.

understand the command "tap" as something new.

understand "tap" as taping.
understand "tap [something]" as taping.

carry out taping:
	if noun is pat:
		say "Not apt." instead;
	if noun is spout:
		if cask is visible:
			try filling the cask instead;
		otherwise:
			say "The oils would go to waste." instead;
	say "PUSH may be the synonym you want, here." instead;

does the player mean taping the spout: it is very likely;

book metros

chapter Undesired Underside

Undesired Underside is a room in Metros. "This is some sort of seedy underground intersection with a train station south. You can also go north to [if red camp is visited]the camp, again[else]what looks like a camp[end if]. You see the down escalator you came by. [if Hotel is visible]The Ol['] Hotel is west[else]A building to the west advertises itself as The Ol['] Hotel[end if]."

check going inside in Undesired Underside:
	say "That's ambiguous with the hotel west and the metal door east." instead;

check going outside in undesired underside:
	say "You already are in the not-so-great outdoors." instead;

the building is scenery in underside. understand "hotel" as building. description of building is "[if drainage is in underside]It says L'HOTE HELOT[else][first custom style]AND I RAGE[r] is written in red.[end if]"

the down escalator is scenery in underside.

description of down escalator is "It's the down escalator you came here by. You can't see the end of it, way above."

instead of climbing down escalator: try going up instead.

the drainage is in Undesired Underside. "That drainage you stepped in is [one of][or]still [stopping]around, taunting you as much as drainage can. You see [letter-or-flier] in it. Cleaning it up would help take this city back."

drainage is fixed in place.

instead of taking drainage:
	say "It smells too powerful to even consider taking in its present form. Looks bad, too.";

check fliptoing gardenia:
	if drainage is visible:
		now arena dig flier is in lalaland;
		now can of beer is in lalaland;
		now soggy love letter is in lalaland;

description of drainage is "It smells and looks disgusting. Just the sort of thing that needs to be cleaned up or reprocessed to get this city looking nice again. A beer can and a [if flier is visible]flier[else]soggy note[end if] float in it.". rgtext of drainage is "[rcn][rc][rc][rc][rc][rc][rc][rc]". lgth of drainage is 8. gpos of drainage is 7. rpos of drainage is 6. cert-text of drainage is "-[d1][d1][d1][d1][d1][d1][d1]". rect-text of drainage is "G[d1][d1][d1][d1][d1][d1][ast]A".

does the player mean doing something with soggy letter: it is likely.

to say letter-or-flier:
	say "a can of beer and a ";
	if arena dig flier is visible:
		say "flier";
	otherwise if soggy letter is visible:
		say "soggy note";
	otherwise:
		say "heap of gunk where an item should be ([bug-report])";

the can of beer is auxiliary scenery in Undesired Underside. description of can of beer is "It appears to be AGED RAIN brand beer. Hooray, truth in advertising? A reading of the small print, though, leaves you seeing red.". rgtext of can of beer is "[rcn][rc][rc][gc][rc][rc][gc][rc]". lgth of can of beer is 8. gpos of can of beer is 2. rpos of can of beer is 1. cert-text of can of beer is "-[d1][d1][ast]D[d1][d1][ast]I[d1]". rect-text of can of beer is "G[d1][d1][d1][d1][d1][d1][ast]A".

understand "aged rain" and "aged" and "rain" and "beer can" as can of beer.

does the player mean doing something with can of beer:
	if can of beer is not visible:
		it is very unlikely;
	it is likely.

instead of doing something with the can of beer:
	if current action is drinking:
		say "Yuck. The beer's name may be even truer now than when some poor sap bought it." instead;
	if action is procedural, continue the action;
	say "You don't really want to get close to it." instead;

does the player mean doing something with the love letter when the love letter is visible: it is very likely.

the soggy love letter is auxiliary scenery. description of soggy love letter is "Someone has written [b]DEAR INGA:[r] in big letters. The waters have smudged the smaller writing, which is probably for the best.". lgth of soggy love letter is 8. gpos of soggy love letter is 7. rpos of soggy love letter is 3. rgtext of soggy letter is "[rcn][rc][rc][rc][rc][gc][rc][gc]". cert-text of soggy love letter is "-[d1][d1][d1][d1][ast]N[d1][ast]A". rect-text of soggy love letter is "G[d1][d1][d1][d1][d1][d1][ast]A".

understand "dear inga" and "dear/inga" and "soggy note" as soggy love letter when soggy love letter is visible.

instead of doing something with the soggy letter:
	if action is procedural, continue the action;
	say "You don't really want to get close to it." instead;

the arena dig flier is auxiliary scenery. lgth of dig flier is 8. gpos of dig flier is 8. rpos of dig flier is 1. rgtext of dig flier is "[rcn][rc][rc][rc][rc][rc][gc][rc]". cert-text of arena dig flier is "-[d1][d1][d1][d1][d1][ast]I[d1]". rect-text of arena dig flier is "G[d1][d1][d1][d1][d1][d1][ast]A". description of arena dig flier is "The flier seems like an invitation to an ARENA DIG--perhaps an arena that never got built, or a shindig in some arena. A reading makes you see red."

the arena dig flier is fixed in place.

instead of doing something with the arena dig flier:
	if action is procedural, continue the action;
	say "You don't really want to get close to it." instead;

a gardenia is a flower.

description of gardenia is "It's white, and it's just one flower instead of the whole bush. But it's the only one you've seen in the city proper[if elf row's flowers are visited], and people or humanoids who go in for this sort of thing might value it[end if]."

chapter Bile Libe

there is a room called Bile Libe. it is in Metros. "This isn't a very good library. It's gross and slimy and cramped[if words are visible], and words buzz about enough to drown out the intense beats heard elsewhere in the city. The only way out is back east."

check going nowhere in Bile Libe:
	say "Only way out's back east." instead;

some words are a thing in Bile Libe. rgtext of words is "[rcn][rc][rc][rc][rc]". gpos of words is 5. rpos of words is 4. lgth of words is 5. cert-text of words is "-[d1][d1][d1][d1]". rect-text of words is "S[d1][d1][d1][ast]D".

description of words is "They're not visible[if words are in bag], but you can feel them pulsing against the bag[else], but they certainly sound angry. Sharp. Pointed. Lethal.[end if]."

the sword is a thing. it is not fixed in place.

description of sword is "[if sword is in sheath]It's sheathed now. It's not really worth admiring. The handle looks slippery[else]It's for great justice, you're sure. But instead of blood gutters it's shaped more like a microphone. Odd[end if]."

the hilt is part of the sword.

description of hilt is "It's bright and polished and slippery-looking, [if stickyhanded is true]but with your sticky hands, maybe you could grab it[else]and you probably couldn't hold onto it for long right now[end if]."

instead of taking hilt:
	try taking sword;

check taking sword:
	if stickyhanded is false:
		say "The sword slips from your hands[if player wears Velcro], and there's nothing the Velcro mittens can hook onto[end if][if resin is not visible]. Hmm, you haven't found anything that'd help you grasp it[end if]." instead;
	say "The sword is yours, and you grab it firmly in your resined hands!";
	now player has sword instead;

check fliptoing sword:
	if player is in Bile Libe:
		if player does not have sheath:
			if player has noise bag:
				say "The words become nastier for a second, forming into a sword. It heads for the noise bag but sees reverses directions and pops back into words. It was the wrong shape for the bag, anyway. Maybe the bag could hold the words, though, being a noise bag.";
				preef sword instead;
			say "The words become a sword, too large and terrifying to carry. The talk resumes as the sword disappears. You'll probably need something to put the sword, or the words, in.";
			preef sword instead;
		continue the action;
	if player is not in Abyss and player does not have sheath:
		say "The words are sharp enough, but you have nothing to hold a sword in." instead;
	if player is not in Bassy Abyss:
		say "[if player has noise bag]The time's not right, yet. There's no threat near you[else]You can't go carrying a sword about the city. You don't need to attract attention[end if]." instead;

check opening noise bag:
	if player is in Bile Libe:
		if words are in Bile Libe and player has noise bag:
			now words are in noise bag;
			say "You open the bag, and you feel the waves and sounds of the words swirling into the bag. You close it." instead;
	if words are in bag:
		if location of player is Anti-Cool Location:
			say "The nerds put their hands to their ears, whining a brief 'BE FAIR!' They explain it's not their fault dumber people can't insulate themselves from the noise, but they can't STOP you ruining it for everyone. They ask if you want something, and you point to the tulip. One of them gestures for your keycard. You throw it to them. You're not coming back.[paragraph break]As you do, the nerds['] cries help assure your noise bag stays full, in case you need more words--or something else--later.";
			now keycard is in lalaland;
			now player has the lit-up tulip;
			reg-inc;
			choose row 2 in the table of tulip-acq;
			now chosen entry is true;
			move player to underside instead;
		if location of player is Abyss:
			if beast is visible:
				say "The beast has no time for words! You need to attack it more directly, with something else.";
			otherwise:
				say "The beats will drown the words out.";
			the rule succeeds;
		say "The words currently caught in the bag would do no good here.";
		the rule succeeds;
	if player is in flowers:
		say "The faeries are not making noise." instead;
	if player is in camp:
		say "The chants are disjointed and not really forceful or annoying anyone. They're talk without action." instead;
	if player is not in Bassy:
		say "Nothing's quite focused enough here to go pouring in the bag. The beats are too amorphous, and there're no clear words." instead;

for printing a locale paragraph about the words:
	set the locale priority of the words to 0.

the words are scenery in Bile Libe.

the sword is a thing.

section motto-tomato

A motto is a thing in Bile Libe. "A motto lies here, the only thing close to literature. On initial inspection, it doesn't seem like a very good motto, since A MOTTO in big bold letter takes up half of the plaque, but it's better than nothing."

understand "plaque" as motto when player is in bile libe.

rgtext of motto is "[rcn][rc][rc][rc][gc][gc]". lgth of motto is 6. gpos of motto is 4. rpos of motto is 6. cert-text of motto is "-[d1][d1][d1][ast]T[ast]O". rect-text of motto is "T[d1][d1][d1][d1][ast]O".

description of the motto is "It's labeled A MOTTO, and somehow, someone named Too-Apt Pa Otto has managed to make a hash of grammar, logic, math, science and basic human decency in sixty letters. Sixty-four if it were spelled correctly.[paragraph break]I'd tell you what it said, but you-the-person would be the worse for it. It's like Monty Python's funniest joke in the world that way. Even considering it makes you feel worried you'll forget simple stupid stuff, like what's a fruit and what's a vegetable."

after taking the motto:
	say "You manage take the motto without taking it to heart. Whew! That was close.";

instead of eating motto:
	say "I hope you're not dumb enough to swallow that. Figuratively or literally.";

understand "rotten tomato" and "rotten" as tomato.

the description of the tomato is "It's as rotten as the motto of Pa Otto's you extracted it from. It is probably even more rotten on the inside, not that you have the bravery to check. Yet it also has that staying power. It doesn't have any mold on it, yet."

instead of eating tomato:
	say "That might give you a gas saga. Or a hardier diarrhea."

chapter Cramped Red Camp

Cramped Red Camp is east of Bile Libe. "Here in this cross between a platform and farm plot lie the shocking red tents of the terminally un- and under-employed. [if dry cake is in red condo]You are quickly excluded from this once-mum commune, since you seem actually busy[else]Despite your heroics in the condo, people aren't THAT interested in you[end if]. A library lies to the west, a posh shop is to the east, and back south is where you started from[if dry cake is in red condo].[paragraph break]A driveway with a yard view leads north[else].[paragraph break]The cordoned red condo you're not welcome back at is to the north[end if]. You hear painful music.". Red Camp is in Metros. Red Camp is north of Underside.

forest-warn is a truth state that varies.
sortie-warn is a truth state that varies.
metros-warn is a truth state that varies.

check going east in cramped red camp when flowers is unvisited and player has gadget and tag is part of the gadget:
	if metros-warn is false and button-locked is false:
		now metros-warn is true;
		say "[gadact] once you go east. Do you continue?";
		if the player yes-consents:
			do nothing;
		else:
			say "Okay. This warning won't appear next time you go east." instead;
	if button-locked is false:
		now button-locked is true;
		say "You hear a click from the gadget. You fumble around a bit and note the SECURE/RECUSE button is locked in place."

to say gadact:
	say "Your tagged gadget's SECURE/RECUSE button blinks violently. Currently SECURE/RECUSE is [if gadget-secured is false]in[end if]active, so you can[if gadget-secured is false][']t[end if] skip a store but can[if gadget-secured is true][']t[end if] switch CERTIFY/RECTIFY"

check going north in self-id fields when Enclosure is unvisited and player has gadget and tag is part of the gadget:
	if player has beard or player wears beard:
		if forest-warn is false and button-locked is false:
			now forest-warn is true;
			say "[gadact] once you go north. Do you continue?";
			if the player yes-consents:
				do nothing;
			else:
				say "Okay. This warning won't appear next time you go north." instead;
		if button-locked is false:
			now button-locked is true;
			say "You hear a click from the gadget. You fumble around a bit and note the SECURE/RECUSE button is locked in place."

the music is useless scenery in red camp. "Wretchedly sharp harps, fake-smile upbeat protest stuff, but a change from the beats. It clashes with the general chanting."

voice-count is a number that varies.

the driveway is scenery in cramped red camp. "It's immaculate compared to the rest of the city[if condo-evac is true], but you probably shouldn't follow it again[end if]."

the yard view is useless scenery in cramped red camp. "You can't see much of it until you're on the driveway, what with the buildings in the way, but once you're on the driveway, you'll need to move it or get nicked for loitering. Too bad. It's probably even nicer than the driveway."

the tents are useless scenery in red camp. understand "commune" as tents.

description of tents is "Decorated with a corny crayon-a-crony."


instead of doing something with the tents:
	say "Probably a long-hair halo ring in the tents. Less helpful than the deadbeat."

understand "drive/ way/" as driveway when driveway is visible.

instead of following driveway:
	try going north;

the dead beat deadbeat is a male person in Cramped Red Camp. "A deadbeat is sitting on the ground here, looking dead beat[if condo-evac is false]. His eyes dart between you and the lost corn. Clearly, he resents the work your presence is forcing on him[else]. Despite your heroism with the cake in the condo, he barely acknowledges you[end if]."

check scaning (this is the antlers and deadbeat silliness rule):
	if noun is antlers:
		say "You scan the antlers all sneaky-like, so nobody thinks you're trying anything subversive. They look useless, but you get a reading.";
	if noun is deadbeat or noun is deadbeat-shirt or noun is goatee:
		say "'Whoah, don't tase me, bro. I have civil rights!'" instead;

check giving to deadbeat:
	if noun is a flower or noun is clover or noun is tulip:
		say "'Flowers, man? During this totally intense class warfare?'" instead;
	say "'One act of guilt-driven re-gifting is no plan of general redistribution and fairness, man!'" instead;

instead of giving cake to dead beat deadbeat:
	say "'I didn't, like, want the cake, man. I just, like, wanted a symbolic blow against... (insert class-warfare cliche here.) Plus, totally not enough icing.'"

instead of showing emitter to deadbeat:
	try objasking deadbeat about emitter instead;

instead of giving emitter to deadbeat:
	try objasking deadbeat about emitter instead;

understand "man" as deadbeat when deadbeat is visible.

to say are-were:
	if controls are in op:
		say " were";
	otherwise:
		say "[']re";

description of deadbeat is "He's wearing some of the hardest-trashed threads you've seen. You know he's a deadbeat because his t-shirt says DEAD BEAT DEADBEAT. Which fits in with this world, yes, but about as half-donkeyed as possible. Oh, and he has a ridiculous goatee, too."

the ridiculous goatee is part of the deadbeat. the goatee is amusing.

description of the ridiculous goatee is "It seems half braided and wretchedly uneven, only partially by design. 'Babes like my chillin['] ill chin.' he says.".

instead of taking the goatee:
	say "It looks kind of icky. And you don't need to start a fight." instead;

the deadbeat-shirt is amusing and privately-named. the deadbeat wears the deadbeat-shirt. understand "threads" and "t-shirt" and "shirt" as deadbeat-shirt.

instead of taking deadbeat-shirt:
	say "Bad idea. He likes no suds with the sounds."

description of deadbeat-shirt is "The DEAD BEAT DEADBEAT text is as teleological as most of the shirt wearer's arguments, you suspect."

the posh shop is amusing scenery in cramped red camp. "It's apparently called ELF ROW'S FLOWERS with a sub-slogan: 'Go floral or go fall!'"

the library is scenery in cramped red camp. "Libraries aren't supposed to be beautiful, but man, this one looks ugly!".

the barrier is useless scenery in cramped red camp. "[if dry cake is in red condo]It doesn't look electrical[else]You could sneak back under, but you'd get chased[end if]."

check going north in Cramped Red Camp:
	if condo-evac is true:
		say "You'd probably be recognized and arrested." instead;

check going nowhere in cramped red camp:
	if noun is up or noun is down:
		continue the action;
	say "There're condos north[if dry cake is not off-stage], which you were booted out of[end if], an library west, a flower shop east, and a seedier area south." instead;

the fuzzy clover is a thing in Cramped Red Camp. "A small clover is growing here.". rgtext of clover is "[rcn][rc][rc][rc][rc][rc]". lgth of clover is 6. gpos of clover is 4. rpos of clover is 3. cert-text of clover is "-[d1][d1][d1][d1][d1]". rect-text of clover is "V[d1][d1][d1][d1][ast]O".

description of clover is "You touch the leaves a bit, and they seem to hook into your skin. You count two layers of five leaves each."

instead of wearing clover:
	say "You can't wear that as-is, but it'd be helpful to stick to something if it became wearable.";

The leaves are part of the clover.

description of leaves is "Rather fuzzy--they seem almost to try to stick to you."

instead of taking the leaves:
	say "Picking the clover apart will just ruin it."

Report taking the clover:
	say "You pluck it.";
	the rule succeeds;

some Velcro is a singular-named thing. it is not fixed in place. understand "mittens" and "gloves" as Velcro when Velcro is visible.

check taking off Velcro:
	if player is on fuzzy wall:
		say "You'd fall. Best get down from the wall, first." instead;
	if player is in abyss:
		say "Maybe if you had something that gave you an even better grip, you could. But that siren is distracting." instead;

check wearing Velcro:
	if player is in abyss:
		say "[if siren is in abyss]That's not useful in this sticky situation[else]The resin is more useful for you to grab stuff[end if]." instead;

instead of tying Velcro to fuzzy wall:
	say "You test to make sure it sticks. It does. You could climb up, if you wanted.";

instead of putting Velcro on fuzzy wall:
	try tying Velcro to fuzzy wall instead;

after doing something with controls:
	set the pronoun it to controls;
	continue the action;

after doing something with Velcro:
	set the pronoun them to Velcro;
	set the pronoun it to Velcro;
	continue the action;

the indefinite article of Velcro is "some".

description of Velcro is "You're not smitten by these mittens--they're like what some kids had to wear when they were younger. Two glovey bits, with a long connecting string. They're made of a bunch of hooks and can probably catch on something if need be."

the string is part of the Velcro. description of string is "Must've been made from the clover stem. It's not switchable, trust me--it's part of the ex-clover."

the hooks are part of the Velcro. the hooks are plural-named. description of hooks is "You know, small little hooks that attach to loopy bits."

the Velcro is wearable.

some lost corn is a singular-named thing. rgtext of lost corn is "[rcn][gc][rc][gc][rc][gc][rc][rc]". lgth of lost corn is 8. gpos of lost corn is 5. rpos of lost corn is 3. cert-text of lost corn is "-[ast]O[d1][ast]T[d1][ast]O[d1][d1]". rect-text of lost corn is "C[d1][d1][d1][d1][d1][d1][ast]S".

the indefinite article of lost corn is "some".

initial appearance of the lost corn is "[one of]Some lost corn is[or]That lost corn is still[stopping] in that corner. Sorry if that sounds corny."

the discolored buttons are part of the corn. description of discolored buttons is "They give you this weird urge to push them."

instead of taking mattress:
	try pushing mattress instead;

before doing something with the mattress:
	if emitter is off-stage and night thing is in lalaland:
		if current action is taking or current action is pushing or current action is pulling:
			say "As you move the mattress, but it seems that the bump moves with it. So you decide to search the mattress instead.";
			try examining mattress instead;

before pushing:
	if noun is buttons or noun is lost corn:
		say "Maybe if the corn were hooked up to something it could do something to. And it weren't, well, lost corn." instead;

the corner is useless scenery in cramped red camp. description of corner is "[if corn is in cramped red camp]It's not very interesting, but that's where the corn rolled[else]You don't even remember which corner the corn rolled into, now[end if]."

check going to cramped red camp:
	if lost corn is off-stage:
		say "As you walk north, you run into someone who is carrying a basket full of corn. You help him pick everything up. Or so you think. As he runs off, cursing you, you look in a corner--a corn ear!";
		now lost corn is in cramped red camp;

description of lost corn is "It's got a bunch of different kernels, and some look like buttons because they're not yellow[if player has corn]. The deadbeat might have something to say about it, if you could put up with him. His information would certainly be off the mark, but in Yorpwald, that's better than maybe being wrong[end if]."

check fliptoing keycard:
	if condo-evac is false and dry cake is visible:
		say "[one of]The chatterers would have something to talk about at their next get-together. Like the weirdo who did something scary to that cake and got arrested.[paragraph break]So, though you never know when a keycard is handy, Ix-nay on the agic-may [']til they're gone[or]Still gotta clear out the condo residents first[stopping].";
		preef dry cake instead;

check fliptoing controls:
	if condo-evac is false and lost corn is visible:
		say "The dead beat deadbeat might not beat you dead, but you'd get maligned ere you could complete that legerdemain.[paragraph break]In other words, you probably need to gain the deadbeat's trust before taking stuff from him." instead;

check taking lost corn:
	if condo-evac is false:
		say "The deadbeat almost gets up[one of]. 'Hey, Man, like, how do we know someone undisreputable doesn't, like, like the Man, man? Hey? Hey?' he says, with no dearth of hatred as he[or]but just[stopping] jerks his thumb north. He might not do anything, but his friends might pour out from their tents. You don't need a fight right now.[paragraph break]Maybe you need to strike a blow against some rich people to show you belong." instead;

the yellow kernels are part of the lost corn. understand "buttons" as kernels.

does the player mean doing something with the discolored buttons when lost corn is visible: it is likely.

does the player mean examining the location: it is very likely.

description of kernels is "Most are yellow but others are discolored--red and black and white."

understand "red/black/white buttons/kernels/" and "red/black/white" as discolored buttons when lost corn is visible.

some controls are a thing.

check taking controls:
	if controls are in op:
		say "You don't want to undo your work fixing the rails." instead;

check pushing controls:
	if controls are in op:
		say "No need to fiddle further.";
	otherwise:
		say "They're not hooked up to anything.";
	the rule succeeds;

description of controls is "This panel features all manner of black and yellow and red doohickeys and there's a small warning message saying REPLACEMENT CONTROLS IN CASE OF SURGE TO TRACKS. They've got instructions, which are surprisingly clear and even leave you wiser about u-boat wires."

the instructions are part of the controls.

description of instructions is "[if controls are in op]They served you well. No need to reread.[else]Surprisingly readable, enough so you could just stuff these controls somewhere appropriate and things would get working. Some days you're just lucky, eh?[end if]"

chapter cordoned red condo

The Cordoned Red Condo is north of Cramped Red Camp. Condo is in Metros.

check going inside in cordoned red condo:
	say "You're already inside." instead;

check going outside in cordoned red condo:
	try going south instead;

the talkers are plural-named amusing scenery in cordoned red condo. understand "talker" as talkers.

after doing something with talkers:
	set the pronoun it to talkers;
	continue the action;

Include (-
	has transparent animate
-) when defining talkers.

description of talkers is "They're obviously part of the upper crust. They speak disdainfully of the red camp outside and how if they can't tolerate the beats, they can just buy a condo too."

does the player mean throwing the tomato at the talkers: it is likely.

instead of throwing tomato at talkers:
	say "That would get rid of one of them, but the rest would oust you. Perhaps a more pervasive threat would disperse them."

the antlers are plural-named scenery in cordoned red condo. rgtext of antlers is "[rcn][rc][rc][rc][rc][rc][gc]". lgth of antlers is 7. gpos of antlers is 6. rpos of antlers is 7. cert-text of antlers is "-[d1][d1][d1][d1][d1][ast]S". rect-text of antlers is "R[d1][d1][d1][d1][d1][ast]S".

instead of taking the antlers:
	say "They are utterly useless, even for impressing people. Actually, they're all just here for the free food, too."

description of the antlers is "The antlers are just the sort of annoying thing that people only buy to show they own something more expensive than you do. They say ANTLERS BY BRANTLEY'S and have a reddish tinge and seem more chipped and worn than you'd expect for something so showy. As if they'd been moved around a lot."

the rentals are plural-named useless scenery.

description of the rentals is "The antlers are gone."

check going to condo for the first time:
	say "Since you shave, you can pass as one of the 'haves.' The beats drown out as you enter the condo. 'Eat On!' cries the hired help.[paragraph break]'Neato! ... No tea? ATONE!'[paragraph break]You are inspected and deemed less unworthy than that deadbeat who tried to enter--the one still sitting in the camp--but all the same, you're warned not to try anything funny."

A barnacled candelabra is amusing scenery in Cordoned Red Condo.

description of candelabra is "It's tasteful and clever, as much as you hate to admit it."

instead of doing something with candelabra:
	if current action is not scaning:
		say "It's too high above to note if those are even real barnacles.";
	otherwise:
		say "You couldn't even jump to get close to it. But it's not important. Someone just put it there because they could.";

description of cordoned red condo is "[if condo-evac is true][cake-blab][else]The beats aren't audible here, but conversation voices rant on. The talkers seem to take you for a stalker, but nobody wants to get too close[end if]. A barnacled candelabra hangs above[if antlers are visible], antlers are attached to a wall[end if], and carpets provide garish spectra on the floor[if condo-evac is false]. [paragraph break]All in all, this place probably has a high property value, and people would be horrified if something happened to make it drop[end if]."

the carpets are plural-named useless scenery in cordoned red condo. understand "spectra" and "carpet" as carpets.

after doing something with carpets:
	set the pronoun it to carpets;
	continue the action;

description of carpets is "Tacky but not worth taking."

instead of looking under carpets:
	say "This is a tribute to Nord and Bert, not Zork. Though Zork's cool, too.";

instead of taking carpets:
	say "Too bulky, and what if they turned into something precast?"

to say cake-blab:
	say "You probably want to [if cake is in red condo]take the cake and run[else]get going before everyone gets back[end if]"

before going nowhere in cordoned red condo:
	if condo-evac is true:
		say "Best not hang around the scene of the crime." instead;

check going north in cordoned red condo:
	say "It's dark that way. You step on a pliers and turn back before hitting any more perils." instead;

check going west in cordoned red condo:
	say "'Private rave pit!' yells someone as they push you back out." instead;

check going east in cordoned red condo:
	say "Ladies with ideals grab your garb. 'Step, pest!' they cry. 'You'll startle a starlet!' Tatlers." instead;

check going down in cordoned red condo:
	say "An officious water informs you this area is reserved for actors and a costar named Castro." instead;

check going up in cordoned red condo:
	say "You hear a warden being warned of a wander, and soon you're routed to a detour back where you started." instead;

check going in cordoned red condo:
	if noun is diagonal:
		say "You skulk in a corner for a bit. People not-notice you a bit more than before." instead;

Some dry cake is a singular-named thing in Cordoned Red Condo. "Some dry cake is here[if talkers are visible]. Nobody else is lower-class enough to eat it, but everyone's making sure nobody lower-class nabs it. It's a big residence, but any exploration would result in discreter redirects[else]. And nobody is here to stop you from taking it any more[end if].". rgtext of dry cake is "[rcn][rc][gc][gc][gc][rc][rc]". lgth of dry cake is 7. gpos of dry cake is 6. rpos of dry cake is 1. cert-text of dry cake is "-[d1][ast]Y[ast]C[ast]A[d1][d1]". rect-text of dry cake is "K[d1][d1][d1][d1][d1][ast]D".

indefinite article of dry cake is "some".

description of dry cake is "The least stale of what's left, but weird and silvery and in no state to taste[if player does not have cake]. Someone sees you eying the cake, and you suddenly wish to steal it out of spite[end if]."

Instead of eating the dry cake:
	if cake is unexamined:
		say "It's in no state to taste[if cake is unexamined], as mentioned earlier[end if], and it won't be.";

check taking the dry cake:
	if condo-evac is false:
		say "[one of]You overhear steal-tales and think, alas, settle. [or]You feel a slap on your hand from someone who mentions Doc Bleak gave a creep a crepe once. A bold cake blockade! [or]Someone shakes a can of Best Cola and points it at you. Obstacle! [or]'Greedbag! Er, bad egg!' someone calls out. [or][cycling]Someone else takes a turn watching you." instead;

after taking dry cake:
	say "You take care not to let the cake tear as you pick it up.";

understand "steal [something]" as taking.

condo-barred is a truth state that varies. condo-barred is usually false.

after taking the lost corn:
	say "'All yours, man,' says the deadbeat. 'It's some pretty good corn, too. Ask me if you like want details.'";

check going south in Cordoned Red Condo:
	if condo-evac is true:
		if player does not have dry cake and player does not have keycard:
			say "A caveat before you vacate: some loot here may be a tool later. [run paragraph on]";
			try taking the dry cake;
		say "You migrate, ragtime music in your head. From the south, some camped folks decamp for har-hars and rah-rahs. 'Roaches scare! Ho!'[paragraph break]You're the camp's scamp now, so to speak. Why, the deadbeat has promoted you from The Man to Dude. I bet you could even take that corn now!";
		now condo-barred is true;

report taking the dry cake:
	say "Taking it is a piece of cake with everyone gone, you note dryly.";
	the rule succeeds;

check taking heaths:
	if the player's command matches the regular expression "\bheath\b":
		say "(all of them, why not?)";

check taking begonias:
	if the player's command matches the regular expression "begonia\b":
		say "(all of them, why not?)";

the keycard is a thing.

after printing the name of the keycard while taking inventory:
	if barcode is part of the keycard:
		say " (with the barcode on it)";
	continue the action;

understand "key/ card/" as keycard.

description of keycard is "It's plain and metallic[if barcode is part of the keycard], with a barcode that might help with optical scanners[else], and the only thing that indicates it's a keycard is small text saying FOR AUTHORIZED ACCESS ONLY[end if]."

check putting keycard on barcode:
	try putting barcode on keycard instead;

check putting barcode on keycard:
	say "You peel the barcode, slap it on the keycard, and it is a perfect fit! Also, you stuff the adhesive backing in your pocket, where you forget about it until you can find a proper garbage can. You haven't seen any in this city yet[if player is in Bile Libe], and you don't want to add to the garbage piles here[end if].";
	now adhesive backing is in lalaland;
	now barcode is part of the keycard instead;

check tying barcode to:
	try putting barcode on second noun instead;

check tying to barcode:
	try tying second noun to noun instead;

check taking barcode:
	if barcode is part of the keycard:
		say "The barcode is where it should be. It you unstuck it, it probably wouldn't re-stick." instead;

check putting barcode on:
	if barcode is part of the keycard:
		say "The barcode is where it should be. It you unstuck it, it probably wouldn't re-stick." instead;
	if second noun is controls:
		say "The barcode might be detected by some sort of electronic controls, but it doesn't belong on them." instead;
	if second noun is tomato or second noun is dry cake:
		say "Boy. When this hero gig ends, maybe don't become a grocery store manager, okay?" instead;
	say "You can't really see what the barcode would do there." instead;

check inserting barcode into keycard:
	try putting barcode on keycard instead;

chapter Elf Row's Flowers

Elf Row's Flowers is east of Cramped Red Camp. "You're in a flower shop manned (elfed?) by faeries. You can go back west to the camp."

Elf Row's Flowers is in Metros.

check going to elf row's flowers for the first time:
	say "'Main goal, magnolia... what low serf seeks for all floral?' you hear as you enter. 'He must do better than that primrose promiser! A rose leaves us sore! No succor in a crocus either! Players with parsley are rewarded sparely! Peony? Nopey!'";

after choosing notable locale objects when player is in elf row's:
	set the locale priority of the faeries to 2;

rule for printing a locale paragraph about faeries:
	say "Faeries buzz around here, [if fairy-worthy is false]guarding some heaths and begonias[else if heaths are in lalaland]guarding the begonias you declined[else if begonias are in lalaland]guarding the heaths you declined[else]waiting for you to choose between the heaths and begonias[end if].";
	now faeries are mentioned;
	now heaths are mentioned;
	now begonias are mentioned;

check going nowhere in Elf Row's Flowers:
	say "The only safe way is back west." instead;

violets is a truth state that varies.

report going west in Elf Row's Flowers when violets is false:
	if player has noise bag or player has begonias or player has heaths or player has sheath:
		say "Apropos of nothing, the faeries say 'Violet? Love it!'";
		now violets is true;
	continue the action;

check going east in Elf Row's Flowers:
	say "[one of]'Back rooms? Smack boor!' you imagine the faeries saying[or]You wouldn't want to disturb them while they're measuring geraniums or anything back there[or]That's where all the magic happens. It'll happen to you if you get nosy[at random]." instead;

Some freesia faeries are people in Elf Row's Flowers. "Freesia faeries fly around here [if heaths are in flowers and begonias are in flowers]anxiously[else]randomly[end if]."

understand "freesia/ fairies/" as faeries.

instead of taking freesia faeries:
	say "They're too fast for you. And they are not souvenirs.";

check objasking faeries about gardenia:
	if player has gardenia:
		say "They see your gardenia and snatch it away before you can offer properly. 'Yes! Yes!' [run paragraph on]";
		try giving gardenia to faeries instead;

description of freesia faeries is "They are maybe a foot high, but each one of them carries a small wand you're sure you don't want pointed at you."

the wands are part of the faeries. understand "wand" as wands. the wands are useless.

after doing something with wands:
	set the pronoun it to wands;
	continue the action;

description of wands is "[one of]You lean over to peer at the wands and realize the faeries are watching you stare. You feel embarrassed[or]You've got enough magic for one person. You don't need more[stopping]."

instead of doing something with the wands:
	if action is procedural, continue the action;
	say "The wands are the faeries[']. Best not meddle.";

to say he-be:
	if heaths are in flowers or begonias are in flowers:
		if heaths are in lalaland or begonias are in lalaland:
			say "You have performed your magic admirably on our gift. Go and slay the beast![no line break]";
		otherwise:
			say "'Your magic will work on what you have. But you must use your ingenuity.'[no line break]";
	otherwise:
		say "'You may take one of the groups of flowers if you bring us some. They are the last of the batch from before the Night Thing came.'";

to say sure-you:
	say "[if heaths are not in flowers or begonias are not in flowers]! We are sure you can do something with your reward[end if]";

some heaths are a plural-named flower in Elf Row's Flowers. they are not fixed in place. rgtext of heaths is "[rcn][rc][rc][rc][rc][rc]". lgth of heaths is 6. gpos of heaths is 6. rpos of heaths is 5. cert-text of heaths is "-[d1][d1][d1][d1][d1]". rect-text of heaths is "S[d1][d1][d1][d1][ast]H".

understand "heath" as heaths.

description of heaths is "They're tied together so their stems seem to form a sort of narrow tube. But surely flowers alone aren't going to stop the thumping here."

stems are part of the heaths. understand "narrow tube" as stems when stems are visible.

description of stems is "The stems seem to be forming a narrow tube. It's weird--you can't see anything holding the flowers together."

the sheath is a wearable container.

after fliptoing sheath:
	now player wears sheath;
	continue the action;

after taking sheath:
	say "It's a bit awkward, but fortunately it can hook on to your pants or shorts or whatever you're wearing.";
	now player wears the sheath;

check taking off sheath:
	say "It'd be too awkward to carry." instead;

description of sheath is "It's a dull grey, with the words FOR GREAT QUIETNESS inscribed in some Gothic font."

some begonias are a plural-named flower in Elf Row's Flowers. they are not fixed in place. rgtext of begonias is "[rcn][rc][rc][rc][rc][rc][gc][rc]". lgth of begonias is 8. gpos of begonias is 5. rpos of begonias is 3. cert-text of begonias is "-[d1][d1][d1][d1][d1][ast]A[d1]". rect-text of begonias is "N[d1][d1][d1][d1][d1][d1][ast]G".

understand "begonia" as begonias.

the noise bag is an openable closed transparent container. understand "noisebag" as noise bag.


instead of wearing bag:
	say "Oh, come on, you're not doing that badly. Figuring the begonias was pretty clever, really[if words are not in bag]--you just haven't found what to put in the bag, yet!";

description of the noise bag is "Big deal. Idle bag. But it's labeled OPEN TO CAPTURE NOISES."

check inserting into the noise bag:
	if noun is words and words are not held:
		say "You can't take them, though they do seem to be louder with the bag around." instead;
	if noun is beats:
		say "They will not get sucked in like the random noises did." instead;
	say "It seems like the bag can only contain non-substantial things. Noisy things." instead;

description of begonias is "Reddish, pinkish, white. Kind of fragile, but they seem to silence things a bit, like they could somehow contain the sounds if you knew how to mess with them."

fairy-worthy is a truth state that varies. fairy-worthy is usually false.

check giving to faeries:
	if noun is clover:
		if fairy-worthy is true:
			say "The faeries smile pityingly at you. Clovers grow everywhere[if fairy-worthy is true]. But they don't need anything more from you[else]. They're more like weeds than flowers[end if]." instead;
		say "[one of]'That is not a flower! It is just a silly weed!'[or]They probably want a real flower.[stopping]" instead;
	if noun is tulip:
		say "'That's not a real flower! That's technology!' they cry." instead;
	if noun is heaths or noun is begonias:
		say "[if player has noun]The faeries give you a look like, Refund? F U NERD![else]It's not even yours. Yet.[end if]" instead;
	say "They have no need of adventuresome things." instead;

instead of showing to faeries:
	try giving noun to faeries;

check giving gardenia to faeries:
	say "They're visibly impressed. 'Flower up! Powerful pure flow! For all floral! Perhaps you are the word smyth who will fulfill the sword myth! We offer a flower of your choice. But only one[if brocade is in elf row's flowers]. And take the brocade, too[end if]. Our flowers, or what you make of them, cannot provoke or participate in violence, but they may be able to contain the weapon you need.'";
	now the gardenia is in lalaland;
	now fairy-worthy is true instead;

to say take-flower:
	say "A flower! Low fear! Remember, adventurer! The flowers cannot be used for violence. They may be a suitable vessel";

report taking heaths:
	say "'[take-flower].'";
	the rule succeeds;

report taking begonias:
	say "'[take-flower].'";
	the rule succeeds;

check taking:
	if noun is Spam and Spam is part of sandwich:
		say "You peel the meat from the bread and take both.";
		now player has bread;
		now player has Spam;
		now sandwich is in lalaland;
	if noun is in fridge:
		say "If it's in the fridge, it's probably someone's property. Even if it's someone you don't know or like[if noun is grits or noun is pancake], and even though you made it edible[end if]." instead;
	if location of player is Elf Row's Flowers:
		if noun is brocade:
			if fairy-worthy is false:
				say "The faeries buzz around for a bit, peeved at your boldness. 'Well, maybe you will do something for us some day.'";
			otherwise:
				say "'It is the least we can do for you! Thank you for helping us!'";
			say "[line break]The FREE TO [if fairy-worthy is true]FREEDOM FIGHTERS[else]FREELOADERS[end if] scratching by the brocade vanishes as you take it. Nice magic touch, that.";
			now scratchings are in lalaland;
			now player has brocade instead;
		if noun is begonias:
			if player has heaths or player has sheath:
				say "[greedy-greedy]" instead;
		if noun is heaths:
			if player has begonias or player has noise bag:
				say "[greedy-greedy]" instead;
		if fairy-worthy is false:
			say "The faeries buzz around a bit. 'Bring us a gift first, human! [one of]New florae, loafer. Fo['] real[or]No loaner for a loner[cycling]!' they cry." instead;

to say greedy-greedy:
	say "The faeries cry 'We already gave you one clump of flowers for your one flower! So unfair, sour naif!'";

the brocade is a thing in Elf Row's Flowers. "A small piece of brocade is discarded away from the merchandise below the counter. You see scratchings above it.". rgtext of brocade is "[gcn][rc][rc][gc][rc][gc][gc]". lgth of brocade is 7. gpos of brocade is 1. rpos of brocade is 7. cert-text of brocade is "B[d1][d1][ast]C[d1][ast]D[ast]E". rect-text of brocade is "B[d1][d1][d1][d1][d1][ast]E".

the merchandise is scenery in elf row's flowers. "All sorts of flower-related semi-magical stuff spans the store. You wouldn't know what to do with any of it, [if begonias are not in elf row's flowers and heaths are not in elf row's flowers]but you've got something for your troubles[else if fairy-worthy is true]but you can probably take the heaths or begonias[else]but maybe if you help the faeries, they'll give you something[end if]."

does the player mean objasking the faeries about the merchandise: it is likely.

understand "flowers/seeds/flower/seed" as merchandise when merchandise is visible.

description of brocade is "It's rather plain and white with lots of black bars. It would take a rabider braider than most to weave such a design[if player does not have brocade]. Scratchings above it indicate it's not part of the normal merchandise[end if]."

scratchings are plural-named scenery in Elf Row's Flowers.

description of scratchings is "FREE TO [if fairy-worthy is true]FREEDOM FIGHTERS[else]FREELOADERS[end if]."

the counter is useless scenery in Elf Row's Flowers.


description of counter is "It divides you from the faeries. It doesn't divide them from you, though, since they can fly[if brocade is in elf row's flowers]. There's a brocade here, under some scratchings[else]."

the barcode is a thing. understand "code" and "bar" as barcode when barcode is visible.

description of barcode is "[if barcode is part of keycard]It's stuck to the keycard now, and it'd be unwise to peel it off[else]It's got the adhesive backing so it looks like you could PUT it ON something. Barcodes just aren't too handy by themselves[end if]."

the adhesive backing is part of the barcode. adhesive backing is undesc.

instead of doing something with the adhesive backing:
	if the current action is examining:
		say "It's clear, and it'll keep the sticky bit on the barcode until you know where to put it." instead;
	say "You don't need to futz with the adhesive, explicitly. Just do what you want/need with the barcode.";

to say dont-peel:
	say "When you're ready to put the barcode on something, you don't need to peel it. Just PUT it ON whatever.";

section propflipping Elf Row

to say rude:
	say "You turn your back and focus so the faeries can't see you mangle their gift. Or so they aren't jealous, or they don't laugh at how dumb your magic is"

check fliptoing sheath:
	if player is in Elf Row's Flowers:
		if fairy-worthy is false:
			say "The heaths are (still) merchandise. You don't want to find out what faeries do to vandals, or shoplifters, or combinations thereof." instead;
		if begonias are not in elf row's flowers:
			say "You already got the begonias--don't mess with the merchandise." instead;
		if player does not have heaths:
			try taking heaths;
		say "[rude].[line break]";

check fliptoing barcode:
	if player does not have the brocade:
		say "You take the brocade first--you're a bit embarrassed your magic seems more, well, applied than theirs.";
		try taking brocade;
	if player is in Elf Row's Flowers:
		say "[rude].[line break]";

check fliptoing noise bag:
	if the player's command does not include "noise":
		say "Yes, the begonias should become a bag, but you need to state what sort fully. Magic isn't THAT easy." instead;
	if player is in Elf Row's Flowers:
		if fairy-worthy is false:
			say "The begonias are (still) merchandise. You don't want to know what faeries do to vandals." instead;
		if heaths are not in elf row's flowers:
			say "You already got the heaths--don't mess with the merchandise." instead;
		if player does not have begonias:
			try taking begonias;
		say "[rude].[line break]";

to say in-sheath:
	now sword is contained in the sheath;
	do nothing;

the block buying rule is not listed in any rulebook.

instead of buying:
	if noun is player:
		say "Silly." instead;
	if player has noun:
		say "You already have that." instead;
	if location of player is subsite:
		say "This is not exactly a shopping mall." instead;
	if location of player is notices section:
		if noun is gateman:
			say "Just ask him for what he knows. Knowledge is free." instead;
		say "Awfully generous, but your quest-aiding items here are all free." instead;
	if noun is tulip and nerds are visible:
		say "You have nothing to barter with. Either find what to ask, or outflank them somehow." instead;
	if location of player is trips strip:
		say "Your job is presumably to raise property values here, not take advantage of them." instead;
	if player is in elf row's flowers:
		if noun is brocade:
			say "It is free." instead;
		if noun is heaths or noun is begonias:
			say "You don't have any money[if fairy-worthy is true], and the faeries don't seem to want to barter any more[else], but perhaps if you gave the faeries a flower, they would be willing to trade[end if]." instead;
	if peasant is visible and noun is hay:
		say "Maybe there's something you can give him, instead." instead;
	if peasant is visible and noun is peasant:
		say "Things aren't THAT feudal here." instead;
	say "Nothing seems to be on sale here.";

chapter The Ol' Hotel

There is a room called The Ol' Hotel.

Hotel is west of Undesired Underside. "What would a beaten-down city be without an ol['] hotel? Both have seen better days. Still hard not to loathe a hotel in this state. Everything's boarded up. The only way out is east.". Hotel is in Metros.

The Night Thing is a person in Hotel. "A scary Night Thing is here, sitting on some sort of mattress."

does the player mean throwing the tomato at the night thing: it is likely

after doing something with the night thing:
	set the pronoun it to night thing;
	continue the action;

description of Night Thing is "It's grown wrong, a gigantic hairy eyeless potato clearly not the right girth. And it's wired weird, with a cruel ulcer for a mouth. It seems more in the mood for bellowing than fighting, but it still probably doesn't belong in the hotel. It's too big to fight and too fearsome to get near. It appears to be sitting on some sort of mattress."

understand "potato" as night thing when night thing is visible.

instead of showing something to the night thing:
	try giving noun to night thing instead;

instead of giving something to the night thing:
	if noun is tomato:
		say "It stops roaring a bit to sniff the tomato, but it clearly doesn't trust you, doesn't have arms, and doesn't understand or care why you'd hate if it bit off your hand along with the tomato. So you decide to back up a bit and throw the tomato.";
		try throwing the tomato at the night thing instead;
	say "It's roaring too much. It seems upset about something, and you look unlikely to help.";

the cruel ulcer is part of the night thing. description of cruel ulcer is "It's nasty and yellowed and an indication maybe scaring people in the hotel is more stressful than you think. You wonder how food goes down there."



the ketchup bottle is a thing in Hotel. "A ketchup bottle lies here, torn apart--and you have a prime suspect in the Night Thing that [if night thing is visible]is roaring nearby[else]was here[end if]."

the description of the ketchup bottle is "It is THE PUCK brand ketchup. And it's shaped that way, too. They apparently put, heck, whatever they want in it! And you'll like it that way!"

instead of taking the ketchup bottle:
	if night thing is not visible:
		say "Trust me. You don't need it.";
	otherwise:
		say "The night thing roars. Though it's drained the bottle of its contents, it still feels an emotional attachment you would be wise not to break."

check inserting into the bottle:
	say "Ketchup bottles have those narrow necks, so nothing really fits. One look at the bottle, and you probably don't WANT anything to fit." instead;

instead of eating the ketchup:
	say "You don't know where it's been. Oh, wait, even worse, you DO.";

check going nowhere in Hotel:
	say "Bad idea to explore further. This place should've probably been condemned long ago." instead;

check going outside in Hotel:
	try going east instead;

The termite emitter is a device. "A termite emitter lies here, forgotten. It still looks operational. Perhaps it's part of why the hotel is so beaten up."

check inserting into emitter:
	say "You have nothing small enough to go in." instead;

the termite emitter can be ungnatted, angstgnatted or doubleused. the termite emitter is ungnatted.

does the player mean switching on the termite emitter: it is very likely.

instead of opening termite emitter:
	say "You can't figure how. There's a reason for that[if condo-evac is true and flies-in-emitter is false], and it's empty anyway[else]. Better to switch it, probably[end if]."

description of termite emitter is "It's a black box the side of maybe two CD cases stacked[if condo-evac is true]. It's empty now, you hope[else]. It probably holds a lot of termites. You can switch it when you need to[end if]. Someone has scratched a circle with a line through it over a dollar sign[if condo-evac is false]. You can't hear or see the termites that should be in there, but hey, faith[else if flies-in-emitter is true]. The deadbeat put some angst gnats in it for you[else]. It's probably empty after your hijinks[end if]. It's Mr. Eet-It brand. Of course.";

check examining the termite emitter:
	ignore the examine devices rule.

understand "black/ box/" and "machine" as termite emitter.

condo-evac is a truth state that varies. condo-evac is usually false.

flies-in-emitter is a truth state that varies. flies-in-emitter is false.

check switching on the termite emitter:
	if flies-in-emitter is true:
		if deadbeat is visible:
			say "It'd be rude to throw the gift back in the deadbeat's face." instead;
		if faeries are visible:
			say "The faeries are on your side. Try someone else, maybe." instead;
		if player is in Abyss:
			say "Those angst gnats have no chance. You need something much more powerful." instead;
		if location is not Anti-Cool Location:
			say "There's nobody here worth bumming out with the angst gnats." instead;
		if player has lit-up tulip:
			say "You already have the tulip. That'd be mean." instead;
		say "The angst gnats rise, fitful, like fruit-flies or as furies flit. The nerds go from woots to ows, but it isn't til they start complaining to each other or worrying about the poor repressed deadbeats they didn't do enough for that you snatch the lit-up tulip as they scalp-clasp and flail about.[paragraph break]Angered, enraged nerdage! En garde! (Gee, darn, no grenade.) 'Why didn't you ASK about the DARKNESS?' one moans as he swipes for the tulip--but only knocks the keycard out of your hand.[paragraph break]They continue moaning, but now it is about economic equality. You hear one point out that all this sensitivity to social stuff will make them more sensitive for the ladies. Then another one argues that it's a Heisenberg Uncertainty Principle sort of thing that if people know you might be angling for that emo stuff, it won't work.[paragraph break]You're almost sucked in, until you realize you have a city to save, and you chuck your keycard at them in frustration over how dumb smart people can be before running out.";
		now nerds-unwelcome is true;
		now player has the lit-up tulip;
		now keycard is in lalaland;
		choose row 3 in the table of tulip-acq;
		now chosen entry is true;
		reg-inc;
		now emitter is doubleused;
		move player to underside instead;
	if condo-evac is true:
		say "It's empty now." instead;
	now termite emitter is switched off;
	if location is Hotel:
		say "This place has seen enough abuse. Maybe find one that hasn't?" instead;
	if location is red camp:
		say "That'd be kind of cruel." instead;
	if location is Bile Libe:
		say "The termites are the wrong sort of pest for the Bile Libe." instead;
	if location is elf row's flowers:
		say "Trust me. You don't want to know what the faeries would do back to you." instead;
	if location is Anti-Cool Location:
		say "You're being watched too closely." instead;
	if location of player is cordoned red condo:
		if condo-evac is true:
			say "It's already crawling with termites." instead;
		now condo-evac is true;
		now talkers are in lalaland;
		reg-inc;
		say "You activate. They vacate it. 'Raiders, dear sir!' It's like a petard--those who prated, depart and ratchet down the chatter. The emitter shuts with a click after the last termite escapes." instead;
	if location is Elm Train Terminal:
		say "The city's public transport has taken enough of a beating. It doesn't need that." instead;
	if location is Bassy:
		say "The termites would put up a valiant but futile effort." instead;
	say "The termites don't have enough to eat here." instead;

the smartest mattress is a container in Hotel. the mattress is fixed in place.

does the player mean entering the mattress: it is likely;

instead of doing something with the mattress when mattress is visible:
	if night thing is visible:
		say "Can't do or see much with the night thing on it.";
	otherwise :
		continue the action;

rule for printing a locale paragraph about the smartest mattress:
	if night thing is not visible:
		say "The mattress still conforms to the shape of the night thing that sat on it[if emitter is off-stage]--but it also has a bump in one corner[end if].";
	now mattress is mentioned;

description of smartest mattress is "The Smartest Mattress doesn't have a one-page proof of Fermat's Last Theorem in it or anything. It just 'remembers' the shape of whatever sat on it for a long, long time[if emitter is off-stage][get-the-bump][else]. It doesn't seem to have held anything other than the termite emitter[end if]."

to say get-the-bump:
	say ". The bump in the mattress is obvious enough that you have to take another look. You find a small machine labeled, apparently, a termite emitter, and you take it";
	now bump is in lalaland;
	now player has the emitter;

the bump is part of the mattress. description of the bump is "Why not examine the whole mattress instead?"

instead of doing something with bump:
	say "On getting close to the bump you realize it's due something wedged inside the mattress. You search around, find a small machine that is apparently a termite emitter, and take it.";
	now bump is in lalaland;
	now player has the emitter;

instead of examining the bump:
	try examining the mattress;

understand "something" as bump when bump is part of the mattress and mattress is visible.

instead of taking cruel ulcer:
	say "That's neither useful nor lucre."

does the player mean throwing the tomato at the night thing: it is very likely.

rule for supplying a missing second noun while throwing:
	if night thing is visible:
		now the second noun is the night thing;

rule for supplying a missing noun while throwing:
	if night thing is visible:
		now the noun is the tomato;

chapter Anti-Cool Location

Anti-Cool Location is a room in Metros.

after printing the locale description for Anti-Cool when Anti-Cool is unvisited:
	reg-inc;
	say "Man! These nerds seem like the real deal. So smart that even (or especially) asking them about irrelevant stuff might help you figure what to do.";
	continue the action;

description of Anti-Cool Location is "It's free of pure noise here, mostly due to the soundproofed walls. It'd make a nice mob combine, but it's more an anti-cool location[one of]. You suspect the actual entertainment center's in back, and you'd have to learn a secret handshake or something to get there. But you've got a city to save[or][stopping]."

soundproofed walls are plural-named scenery in Anti-Cool Location. "They've got those perpendicular ridges in sets of three that kill sound. The nerds won't shut up, though."

check going nowhere in Anti-Cool Location:
	say "There's nowhere to go but back west. Well, okay, the nerds have a few cool secret passages you won't get to see, but those don't count." instead;

The metallic door is a door. it is east of underside and west of Anti-Cool Location.

check putting keycard on metallic door:
	try putting keycard on sensor instead;

the initial appearance of the metallic door is "A large metallic door is to the [if player is in Anti-Cool Location]west. It's got no sensor on this side, so you can probably just walk back through it[else]east. It has an warding drawing repelling any old chump from entering. There's also a sensor off to the side[prob-reads][end if]."

to say prob-reads:
	say "[if Anti-Cool Location is unvisited]. Probably reads something-or-other to let you in[end if]"

description of metallic door is "It's very solid[if metallic door is open] when it's closed[end if][if player is in underside], and a warding drawing gives it some semblance of character[end if]."

the warding drawing is part of the metallic door. understand "sod" and "figure" and "stick figure" and "stick-figure" as warding drawing. the warding drawing is amusing.

instead of taking the warding drawing:
	say "Since it's part of the door, you take the warding drawing in the metaphorical sense and vow not to act like the poor schelps depicted on it.";

description of warding drawing is "It's a red circle with a line through it, below the text 'Special Place is Special.' The poor struck-through sods in the center appear to be stick-figure parodies of stupid people. You note one [one of]stuffing a metal fork in a toaster[or]moving a rook pawn to start a chess game[or]thought-bubbling that 8+8=17[or]picking his nose[or]with his arm around Clippy[or]reading a tabloid magazine[or]hitting a computer that is not plugged in[or]about to walk over an open manhole[or]about to misplace a square manhole[or]watching a sporting event on TV[or]with a barbell crushing his neck[or]carrying a boombox[or]driving an SUV[or]getting an easy Sudoku all wrong[or]wearing a baseball hat backwards[or]wearing a sports jersey[or]drinking and smoking[or]feeding a shark[or]getting a tattoo[in random order]. Then you lose where it was in all the dizzying variety."

The sensor is scenery in undesired underside. description of the sensor is "It has a small red optical beam."

check scaning sensor:
	say "It registers nothing. Perhaps it's there to scan you or something in your inventory." instead;

to say want-wanted:
	if player has tulip:
		say "got the tulip from";
	otherwise if Anti-Cool Location is visited:
		say "guard the tulip";
	otherwise:
		say "want to see"

understand "senser" as sensor.

the priv-camp is a privately-named backdrop. the priv-camp is in underside and cramped red camp. understand "camp" as priv-camp.

description of priv-camp is "It's pretty dirty and meager[if red camp is visited], as you already saw[else], but maybe you'll get help there[end if]."

the red optical beam is part of the sensor. description of red optical beam is "I wouldn't advise staring into it, but you could put something on it."

instead of inserting into the beam:
	try putting noun on beam;

keycard-put is a truth state that varies. keycard-put is usually false.

check putting barcode on sensor:
	if barcode is part of the keycard:
		try putting keycard on sensor instead;
	say "You try holding the barcode up to the sensor, which pulses a bit. But the door doesn't seem to open. Perhaps the barcode needs to be a part of something." instead;

check inserting into sensor:
	say "The sensor isn't a container. So you go with putting it ON, instead.";
	try putting noun on second noun;

nerds-unwelcome is a truth state that varies.

check pushing metallic door:
	say "It's an automatic door." instead;

check pulling metallic door:
	say "It's an automatic door." instead;

this is the bother-nerds rule:
	if nerds-unwelcome is true:
		say "You aren't welcome back east[if keycard is in lalaland], and besides, no keycard[end if].";
		the rule fails;
	if player has lit-up tulip:
		say "You don't want to put up with the nerds now you've gotten their tulip. They may not want to put up with you, either. Probably mention how they're sure they could figure what you need to do, etc.";
		the rule fails;
	the rule succeeds;

check putting on the sensor (this is the reject silly sensor tries rule) :
	ignore the can't put onto what's not a supporter rule;
	if noun is gadget:
		say "The gadget is more for gauging than doing, but yeah, you probably need something high-tech. Oh, the gadget remains silent, too." instead;
	if noun is the dry cake:
		say "Opening an electronic door is not such a piece of cake. Something more metallic." instead;
	say "'Special place is special!' barks the sensor. You'll probably need something more high-tech to slip, ace." instead;

check putting keycard on sensor:
	consider the bother-nerds rule;
	if the rule failed:
		the rule succeeds;
	if barcode is not part of keycard:
		say "Hm. The blank keycard doesn't seem to work. It needs some sort of code." instead;
	if metallic door is open:
		say "The door is open. So you just walk east instead.";
		try going east instead;
	if keycard-put is false:
		say "What do you know? It works! The door slides open!";
		now keycard-put is true;
	otherwise:
		say "The door slides open again.";
	now metallic door is open instead;

check going east in undesired underside:
	consider the bother-nerds rule;
	if the rule failed:
		the rule succeeds;
	if metallic door is open:
		continue the action;
	if player has the keycard and barcode is part of the keycard:
		if anti-cool location is unvisited:
			say "Hm, maybe your keycard will do the trick.[paragraph break]";
		try putting keycard on sensor;
		continue the action;
	else:
		try opening the metallic door instead;

check opening the metallic door:
	if noun is open:
		say "But it already is. For now." instead;
	if location of player is Anti-Cool Location:
		say "The door slides open as you step near it.";
		now metallic door is open;
		the rule succeeds;
	consider the bother-nerds rule;
	if the rule failed:
		the rule succeeds;
	if keycard-put is true:
		say "You use the keycard to open the door again.";
		try putting keycard on sensor instead;
	if location of player is undesired and keycard is off-stage:
		say "You hear braying laughter behind the door. 'Hey! Some unintellectual's trying to get in. Like we'd make it a piece of cake for them to.' Then someone else admonishes the speaker for ending a sentence with a preposition." instead;
	say "The metallic door's got no handle. It's probably operated by the sensor[if player has keycard], which might open if you put something like your keycard on it[else], but you don't seem to have anything to activate it[end if]." instead;

check putting on the red optical beam:
	ignore the can't put onto what's not a supporter rule;
	try putting noun on sensor instead;

check putting it on:
	if second noun is the red optical beam:
		try putting noun on sensor instead;

ever-shut is a truth state that varies.

every turn when metallic door was open:
	now metallic door is closed;
	if metallic door is visible:
		say "The metallic door slides shut.";
		if ever-shut is false:
			now ever-shut is true;
			if player has tulip:
				do nothing;
			else:
				say "[i][bracket]NOTE: the game will just let you walk east now, so don't worry about swiping the card again.[close bracket][r][paragraph break]";

some nerds are plural-named flippable people in Anti-Cool Location.

check putting noise bag on nerds:
	if words are in noise bag:
		say "Just opening it is probably less violent, so you do.";
		try opening the noise bag instead;
	say "Too many nerds, too few bags." instead;

before giving something to nerds:
	if player has lit-up tulip:
		say "You have nothing they want, and they gave you what you need." instead;
	if noun is gadget:
		say "They have their own techie toys to futz with. With which to futz." instead;
	if noun is noise bag:
		say "It's too valuable[if words are not in bag], even with nothing in it[else], so you just open it instead[end if].";
		if words are in bag:
			try opening bag instead;
		do nothing instead;
	say "They aren't big on material things. They probably prefer to show how smart they are." instead;

initial appearance of nerds is "Some nerds are here, nattering about technology and such."

description of nerds is "They're sitting around nattering about nerd things. They don't look particularly nerdy, but most of their conversation seems to revolve around how smart other people aren't. They're babblier than most but don't seem bribable."

rect-text of nerds is "D[d1][d1][d1][d1][d1][d1]S". cert-text of nerds is "[d1][d1]R[d1][d1][d1]SS".

the lit-up tulip is a thing in Anti-Cool Location.

instead of taking lit-up tulip:
	if nerds are visible and player does not have tulip:
		say "Someone grabs your wrist. 'No light for the unenlightened! You have to ASK NERDS the right thing before you can get it. What do you want it for? Why? And ASK us, don't TELL us.'[paragraph break]That was kind of abrasive[one of]. You think of the places you haven't been and the obstacles to getting there[or]. You wonder if there's a way to disrupt their little gathering if you can't figure what to ask[or]. These intellectual elites are almost as annoying as the economic elites[cycling].";

check dropping the lit-up tulip:
	say "No. It's useful."

description of lit-up tulip is "No fickler flicker or slight lights--its twinkle lets it wink for a long while, with no way to turn it off or on. The words SUNLITE UTENSIL are carved in it."

instead of switching off tulip:
	if player does not have the tulip:
		say "That's the nerds[']." instead;
	say "Don't worry. It's very, very energy efficient. The nerds designed that way.";

instead of switching on tulip:
	say "It's already lit."

to say nerd-dark:
	if player does not have tulip:
		say "'What, you want us to do everything for you? We're exhausted from building this soundproofing. But whatever. Here. Have this lit-up tulip. There might be some smart people suffering from the beats.'[paragraph break]'Logical call. I go.' You sneak out back west.";
		now player has the lit-up tulip;
		reg-inc;
		choose row 1 in the table of tulip-acq;
		now chosen entry is true;
		now player is in underside;
	otherwise:
		say "'What?! We gave you the tulip! We can't solve all you dumb people's problems. We have our own!' They go on to bemoan how only dumb people seem to enter politics.[run paragraph on]";

chapter Elm Train Terminal

to say if-piggy:
	say "[if neon pig is visible]neon pig embedded in the wall seems even sillier[else if controls are in op]controls are working nicely in the opening you made[else]empty opening you made needs something to fit[end if][run paragraph on]"

Elm Train Terminal is south of Undesired Underside. "You're in a disused train station with, err, min-alert customer service[one of], but at least the stop's labeled ELM, so you finally know what street you're on[or][stopping][if power-shut is false]. It's a bit dark, but not as bad as below, where noise seems to be echoing[else]. The tracks are east and, it seems, so is the noise[end if]--it's louder here than anywhere else. You reckon you should strain for the darkness below, with more rats in than trains.[paragraph break]You could go back north, [if player is on fuzzy looking wall]though you may need to get off the wall[pigcon] first[else]and there's a fuzzy looking wall you can climb, and a scrolling display reads PA'S PSA[if-fade], but the [if-piggy][end if]. A rail is to the east[if power-shut is false]--it seems to be sparking quite a bit, so best not to step on it, yet[else]--it's no longer sparking[end if]."

Elm Train is in Metros.

to say if-fade:
	say "[if faded ad is unexamined], along with a dead-fad faded ad on it[end if]"

to say pigcon:
	say "[if pig is visible] with the pig[else if controls are not in op] and away from the opening you made[else] and away from the controls you put in[end if]";

check scaning in Elm Train Terminal (this is the can't scan some things til you climbed rule):
	if noun is neon pig or noun is op:
		if player is not on fuzzy looking wall:
			say "The pig doesn't register. Maybe you're too far away, and you'd have to climb the wall to get near it." instead;

check going west in Elm Train Terminal:
	say "The big fuzzy wall is that way." instead;

check going nowhere in Elm Train Terminal:
	say "The tracks lead down, and the city is back north." instead;

the dead-fad faded ad is amusing scenery in Elm Train Terminal. "It proclaims TRANSIT FOR ARTISAN AND TSARINA and also that it's an anti-sot station."

Pa's PSA is scenery in Elm Train Terminal. "[randbla]."

after examining Pa's PSA for the first time:
	say "'I'm learnt,' you think, after reading that.";
	continue the action;

understand "psas" as pa's psa.

the fuzzy looking wall is scenery in Elm Train Terminal. "The wall looks and feels like steel wool, from top to bottom."

the fuzzy looking wall is a supporter.

instead of climbing the down escalator:
	try going up instead;

check going up in Elm Train Terminal:
	try climbing the fuzzy looking wall instead;

check going up in underside:
	say "Everything starts okay, but just as you get a glimpse of the top, the escalator starts speeding down more quickly. You try jumping a step, but it doesn't matter. Eventually, you're thrown to the bottom of the escalator, a bit more tired than before. Well, it was fun til it got impossible." instead;

power-shut is a truth state that varies. power-shut is usually false.

down-tried is a truth state that varies. down-tried is usually true.

check going down in Elm Train Terminal:
	try going east instead;

check going east in Elm Train Terminal:
	now down-tried is true;
	if power-shut is false:
		say "There may be an evil lair that way, but it's behind a live rail in the darkness. You'd touch it before you got there[if shoes are in lalaland]. Even those rubber shoes won't insulate you[end if]." instead;
	if player does not have tulip:
		say "You go east but reach a thin ledge. It needs to be lightened before you go further. You have no item to help with that." instead;
	if player does not have sheath and player does not have noise bag:
		say "You hear an even worse roaring than usual. Nothing you're carrying seems up to defeating it. You double back." instead;
	if player has noise bag and noise bag does not contain words:
		say "You hear an even worse noise as you walk across the tracks. You run back across where you can reflect how it would be nice if you had something in that noise bag to combat...whatever it is there." instead;
	if player has sheath and sword is not in sheath:
		say "You hear an even worse noise as you walk across the tracks. You run back across where you can reflect how it would be nice if you had a weapon in that sheath." instead;
	say "Your lit-up tulip gives a welcoming anemic glow. You're ready to tackle whatever's lying craven in the cavern. Unfortunately, the glow, while it helps you avoid tripping over rails, doesn't save you from a passage weakened by the beats. You tumble down.";

does the player mean climbing the fuzzy looking wall: it is very likely.

check scaning op (this is the too far from opening rule):
	if player is not on fuzzy looking wall:
		say "You're too far away." instead;

check climbing:
	if player is in Elm Train Terminal:
		if noun is not fuzzy looking wall:
			say "Hm. Perhaps you meant to climb the fuzzy wall instead.";

check climbing fuzzy looking wall:
	if player is on fuzzy looking wall:
		say "You can't see anything worth getting to above the [if neon pig is visible]neon pig[else]recess[end if]. And you're up dangerously high as is." instead;
	if player has Velcro and player is not wearing the Velcro:
		say "You can't climb up there with bare hands, so you decide to wear the Velcro. [run paragraph on]";
		try silently wearing the Velcro;
	if player is not wearing the Velcro:
		say "The wall's vertical. You'd need something that sticks to the bits of steel wool." instead;
	otherwise:
		say "The Velcro strip is just the thing to climb the wall and reach the [if neon pig is visible]pig[else]small recess[end if].";
		now player is on the fuzzy looking wall instead;

the neon pig is scenery in Elm Train Terminal.

lgth of neon pig is 7. gpos of neon pig is 3. rpos of neon pig is 7. rgtext of neon pig is "[rcn][rc][rc][gc][rc][rc][gc]".  cert-text of neon pig is "-[d1][d1][ast]N[d1][d1][ast]G". rect-text of neon pig is "O[d1][d1][d1][d1][d1][ast]G".

the op is proper-named privately-named scenery container. understand "opening/recess" as op. the printed name of op is "the opening"



procedural rule while examining op: ignore the examine containers rule.

description of op is "[if controls are in op]The opening isn't really an opening any more, what with the controls fitting in nicely[else if player is on fuzzy looking wall]You can see that the opening isn't just a blank area, though it doesn't lead anywhere much. Once you got rid of that neon pig, there are still all kinds of receptacles and such that could be attached to something electrical. If you READ, you might be able to see what[else]You look back up at the opening you made. Seems something belongs in there[end if]."

the tracks are scenery in Elm Train Terminal. understand "rail" and "rails" and "track" as tracks.

instead of taking tracks:
	if power-shut is false:
		say "They're charged, and they're too heavy, anyway.";
	otherwise:
		say "And what would you do with the tracks?[if sword is visible] You have a sword as a weapon[else] There's got to be a better weapon if you need it[end if]."

instead of putting something on tracks:
	say "Good way to get electrocuted. You'll need to find some place to switch them off before you get near them.";


after examining tracks:
	set pronoun it to noun;
	set pronoun them to noun;

description of tracks is "[if power-shut is false]Sparking dangerously. If you want to get by, you'll probably have to figure where to shut the tracks off[else]Much calmer now that you switched the power off[end if]."

check climbing the op:
	say "(I'm assuming you meant the wall leading to it.)";

description of neon pig is "This flashing half-sign is [if player is not on fuzzy looking wall]obviously awful and tacky and worse than nothing, even from this distance. It's eating a bunch of glowing flowers and is probably hogging (sorry) electricity and causing the tracks to sputter[else]even tackier up close and in person, err, pig. Thankfully, the neon isn't painfully bright, but it would be nice to just dispose of it somehow[end if]."

after examining the neon pig:
	if player is on fuzzy looking wall:
		say "The 'artist' seems to have signed his name--do you want a look?";
		if the player yes-consents:
			say "The swine who conceived this is, according to the red glowing cursive script, named [first custom style]INPENGO[r].";
		otherwise:
			say "Don't blame you.";
	continue the action;

the red glowing cursive script is part of the pig.

description of cursive script is "It spells [first custom style]INPENGO[r]."

instead of doing something with the script:
	if current action is examining:
		continue the action;
	if current action is scaning or certifying or cring or rectifying:
		say "[if player is on fuzzy wall]The script doesn't play nice with your gadget[else]Too far away[end if]." instead;
	otherwise:
		say "It's part of the pig--not much else to do but examine it.";

the glowing flowers are part of the neon pig. glowing flowers are undesc. glowing flowers are amusing.

instead of doing something with the glowing flowers:
	say "Their symbolism is obvious and probably meant to be. You probably want to deal with the whole hog (sorry.)"

instead of taking neon pig:
	say "You'd let go of the wall and fall to your doom.";

check inserting into op:
	if power-shut is true:
		say "You've already uncrossed things." instead;
	if player is not on fuzzy looking wall:
		say "You'd need to climb the wall to do that." instead;
	if noun is keycard:
		say "You wave the keycard around the opening, since the keycard's too small to fit, but no passage opens." instead;
	if noun is not controls:
		say "Won't fit, wouldn't stay anyway. You need something squarish and electrical. Or electronic." instead;
	otherwise:
		say  "They fit well. One of the red buttons starts blinking and whirring, and you flip the switch by it and, BAM! You hear a rush of power. The tracks below seem to stop sparking.";
		reg-inc;
		now controls are in op;
		now power-shut is true instead;

understand "controls" as op when controls are in op.

chapter Bassy Abyss

Bassy Abyss is east of Elm Train Terminal. "Well, this is it[if beats are visible]. You feel like a movie star (not of a GOOD movie, mind,) with the beats pulsing in the background to lead you on to defeating--oh, wait. The beats ARE what you're trying to defeat[rieuw][else if beast is visible]. The beast is growling, probably to frighten or distract you into doing nothing constructive. I guess it worked for so long when it was incorporeal and it got lazy[rieuw][else]. You should've been kicked back to the trips strip, since you won. This is a BUG[end if].". Abyss is in Metros.

after printing the locale description for abyss when abyss is unvisited:
	set the pronoun it to siren;
	continue the action;




every turn when player is in Abyss:
	if siren was visible:
		if siren is visible:
			say "[b]RRIIEEUUWW. [r]That siren just won't shut up. Man, you just want to pound it into a powder.";
	if noise bag is visible and words are in noise bag:
		say "The words in your noise bag [one of]rattle it enough that you feel a sharp poke in your leg[or]continue to rattle[stopping]."

to say rieuw:
	say "[if siren is visible][one of].[paragraph break]A siren off to the side kicks in, to make things even more head-achingly techno up in here. Too loud to get near[or]. And still, that stupid siren near you[stopping][end if]";

check going nowhere in Bassy Abyss:
	say "There's no easy way out. But you sense you have what you need[if siren is visible]. Or you can get that last bit[end if]." instead;

section beats-beast

the beats are a plural-named backdrop. rgtext of beats is "[gcn][gc][gc][rc][rc]". lgth of beats is 5. gpos of beats is 1. rpos of beats is 4. cert-text of beats is "B[ast]E[ast]A[d1][d1]". rect-text of beats is "B[d1][d1][d1][ast]T".

understand "thumping" as beats.

description of beats is "You're sure some idiot would call them funky, but you don't have time for aesthetics."

instead of taking the beats:
	say "Hmph. Your ears are already sort of taking a beating, but that's not really the same thing."

check examining beats:
	if night thing is visible or player is in Bassy or location of player is Anti-Cool Location:
		say "You can't hear the beats right now, but then, there's [if nerds are visible]chatter[else]chatter[end if] to contend with." instead;

The beast is a thing.

description of beast is "It's blob-shaped with one tooth and one eye and inside-out headphones that still transmit music."

Include (-
	has transparent animate
-) when defining beast.


section siren-resin

the siren is scenery in Bassy Abyss. rgtext of siren is "[rcn][rc][rc][rc][gc]". rpos of siren is 5. gpos of siren is 3. lgth of siren is 5. cert-text of siren is "-[d1][d1][d1][ast]N". rect-text of siren is "R[d1][d1][d1][ast]N".

instead of doing something with the siren:
	if action is procedural, continue the action;
	if current action is xmxing or current action is attacking:
		continue the action;
	if siren is not visible:
		continue the action;
	say "It's too darn loud, even a few feet away. Getting close to it would incapacitate you.";

description of siren is "Blue and red and flashing and very loud. You'd love to pound it into a powder."

the resin is a thing. printed name of resin is "some resin[if resin is held] (all over your hands)[end if]"

instead of dropping resin:
	say "You'll have to wash it off, and there's no running water nearby." instead;

description of resin is "It feels sticky on your hands."

stickyhanded is a truth state that varies. stickyhanded is usually false.

book resort

chapter Astral Altars

Astral Altars is a room in Resort. "Well, maybe you won't find your vacation spot right away. Two altars lie here: one holds tiles, and one holds a stile. They both look equally important[if roomroom is visited and kitchen is visited]. It's more spacious than that room or the kitchen, but STILL[end if]. You also think you hear something."

understand "altar" as Astral Altars when Astral Altars is visited.

check going nowhere in astral altars:
	say "As you step away from the altars, a weird barrier blocks you. It's very tarsal." instead;


tiles are plural-named flippable scenery in Astral Altars. "They're all sorts of weird shapes, but the colors are what you find curious. Light brown where you are, in a twenty foot radius, with blue around them. There's a lot of brown beyond that. Maybe if you focus and READ them, you could see more details in da tiles. Yeah, sorry for that one."

gpos of tiles is 2. rpos of tiles is 1. lgth of tiles is 5. the rgtext of tiles is "[rc][rc][gc][gc][rc]". the lgth of tiles is 5. cert-text of tiles is "-[d1][ast]L[ast]E[d1]". rect-text of tiles is "I[d1][d1][d1][ast]T".

the stile is scenery in Astral Altars. "It's reddish. A stile usually provides passage over something, but it's all by itself here. Maybe it can lead you somewhere else, in a different form."

gpos of stile is 3. rpos of stile is 2. lgth of stile is 5. the rgtext of stile is "[rc][rc][gc][gc][rc]". the lgth of stile is 5. cert-text of stile is "-[d1][d1][d1][d1]". rect-text of stile is "I[d1][d1][d1][ast]T".

instead of doing something with scenery in Altars:
	if action is procedural, continue the action;
	say "You probably need to do something with, or to, the stile and tiles."


chapter Isle

Isle is a room in Resort. "[if leis are in isle]Well, this is a little more like a RESORT. It's just covered with leis. [end if]You can see land way to the east[if leis are not in isle], and now the leis here were exposed, you probably want to get going that way, too[end if]."

printed name of Isle is "[if Leis are in Isle]Leis[else]Lies[end if] Isle"

understand "leis isle" as isle when leis are in isle.
understand "lies isle" as isle when leis are not in isle.

does the player mean doing something with the leis: it is likely.

the leis are scenery in isle. "Looking at them, you half forget you came through Store R to beat Red Bull Burdell."


to say lei-lala:
	now leis are in lalaland;

check taking the leis:
	say "[lei-lala]The leis wither as you touch them. 'I SEE ILLS!' booms un unseen voice. Yes, the leis were...LIES. Your final resort must be further on." instead;

section scenery

the sand is useless scenery in Isle.

description of the sand is "It's not worth digging through[if cork is visible or wings are visible]. You've got something useful, anyway[else]. Maybe the stuff lying around is worthwhile[end if]."

instead of doing something with the sand:
	if action is procedural, continue the action;
	say "No use searching for anything like DNAs or a handset in the sand. Isles have sand, so I sort of had to put it here."

the tree is useless scenery in Isle.

instead of climbing tree: say "That'll only get you off the sand on the island, not the island."

description of tree is "It has ALOFT scratched into it[one of]. An arrow points down to the swing, as if to say, the tree can't help you fly[or][stopping]."

section swing - wings

the swing is a thing in Isle. "A rudimentary swing hangs from a tree here."

instead of taking the swing:
	say "It's tied, and you can't climb to untie it."

description of swing is "You can't tell what the swing is made of, but it looks firm and stable. It hangs from a tree branch high up. You won't get to untie it, but you can see something scratched on the tree.". rgtext of swing is "[rcn][rc][rc][rc][rc]". lgth of swing is 5. gpos of swing is 2. rpos of swing is 1. cert-text of swing is "-[d1][d1][d1][d1]". rect-text of swing is "W[d1][d1][d1][ast]S".

the wings are a plural-named wearable thing.

description of wings is "They're pretty standard magical wings you can flap to make fly. You probably don't even need any fancy verbs or anything--just go the direction you want.";

section cork - rock

the rock is a thing in Isle. "A large-ish rock sits here[if player has wings], but it seems less potentially useful now you have the wings[else] away from the swing[end if]."

description of rock is "It's holey, like a sponge, but not any less dense for that--it's scratched to read FLOAT.". rgtext of rock is "[rcn][gc][rc][gc]". lgth of rock is 4. gpos of rock is 3. rpos of rock is 4. cert-text of rock is "-[ast]O[d1][ast]K". rect-text of rock is "C[d1][d1][ast]K".

instead of taking the rock:
	say "It's too heavy. You can't see anything to do with it.";

some cork is a thing. "A chunk of cork is here.". description of cork is "It's porous and really very light.". indefinite article of cork is "some"

section going

check going in Isle (this is the Isle escape rule):
	if player has wings and noun is up:
		try going east instead;
	if player does not have cork and player does not have wings:
		say "It's too far to swim, and you've got no way to go over the lake or whatever it is." instead;
	if noun is not east:
		say "Maybe something's that way, but you see land far off to the east." instead;
	if rock is not in lalaland or swing is not in lalaland:
		poss-d;
	say "Yes. It's time to move on from the [isle]. You need to find Red Bull Burdell.[paragraph break]";
	if player has wings and wings are not worn:
		say "You put on the wings--for spawning wingspan, of course. [run paragraph on]";
		now player wears the wings;
	if wings are worn:
		say "The wings last just long enough for you to get to the landmass you see before shredding into the wind[if player has cork]. You also, unsurprisingly, drop the cork as you operate your wings[end if]. But it probably doesn't matter now--you're across to some sort of mainland.";
	otherwise:
		say "With the cork under your chest, you dog-paddle to the land you saw from the [isle]. It's soggy and gross from your swim, and the seaweed or whatever has already started to eat at it. You scrabble past a few silent inlets...";
	now cork is in lalaland;
	now wings are in lalaland;
	now player is in Rived Drive instead;

section flying

flying is an action applying to nothing.

understand the command "fly/flap" as something new.

understand "fly" and "flap" as flying.

carry out flying:
	if player has wings and player is in Isle:
		try going east instead;
	say "You have nothing that can help sustained flying." instead;
	the rule succeeds;

section swiming

swiming is an action applying to nothing.

understand the command "swim" as something new.

understand "swim" as swiming.

carry out swiming:
	if player has cork and player is in Isle:
		try going east instead;
	if player is in Isle:
		say "No other land anywhere close. You'd need help to swim." instead;
	say "There's no water nearby to swim in. In which to swim.";
	the rule succeeds;

chapter Rived Drive

There is a room called Rived Drive. "You've reached a Rived Drive. It's an odd low woodland, or was, until release 5. There's a gigantic [if poles are visible]set of poles[else]slope you could climb[end if] off to the east[if tool shed is visible]. Also, a tool shed that's in bad shape[else]. You see toeholds on the [p-s][end if]."

Rived Drive is a room in Resort.

does the player mean climbing the poles: it is likely.
does the player mean climbing the slope: it is likely.



check going nowhere in Rived Drive:
	say "You'd probably get lost that way. Besides, the vague commotion to the east, past the rising [p-s] seems worth seeing." instead;

section poles-slope

the poles are plural-named scenery in Rived Drive. understand "pole" as poles.

description of poles is "They are too vertical [if toeholds are not visible]and smooth [end if]to climb. You can't push them--they look quite sturdy and are at least twenty feet tall--but maybe, if they were at an angle..[if tool shed is visible]. Or you could get a grip somewhere[end if].". lgth of poles is 5. gpos of poles is 5. rpos of poles is 4. rgtext of poles is "[rcn][rc][rc][rc][rc]". cert-text of poles is "-[d1][d1][d1][d1]". rect-text of poles is "S[d1][d1][d1][ast]E".

the slope is scenery.

description of slope is "It's forty-five degrees. Too steep to climb without any traction[if toeholds are visible], so thank goodness you dismantled that tool shed[else][check-tools][end if]."

check climbing poles:
	try going east instead;

check climbing slope:
	try going east instead;

section tool shed - toeholds

the tool shed is scenery in Rived Drive. rgtext of tool shed is "[gcn][gc][rc][rc][rc][rc][rc][rc]". the lgth of tool shed is 8. gpos of tool shed is 1. rpos of tool shed is 5. cert-text of tool shed is "T[ast]O[d1][d1][d1][d1][d1][d1]". rect-text of tool shed is "T[d1][d1][d1][d1][d1][d1][ast]S".

description of tool shed is "It's metal, with no visible entry or even windows. A forbidding u-lock (a padlock could become an old pack, after all,) is welded to it, just to make sure. You notice outcroppings scattered around the tool shed walls.". understand "toolshed" as tool shed.

the windows are part of the tool shed. the windows are useless and plural-named.

carry out scaning windows:
	say "The windows that held soot turn up [if gadget is cert][rc][rc][rc][rc][rc][rc][rc][rc][else][bc][bc][bc][bc][rc][bc][bc][gc][end if].";

to say shed-rect-clue:
	say "[if parse-output is true and gadget is rect]. Hmm. T[d1][d1][d1][d1][d1][d1]S[end if]";

description of windows is "They have held soot enough to turn your eyes all red just thinking of what's inside."

the outcroppings are part of the tool shed. the outcroppings are plural-named.

carry out scaning outcroppings:
	say "They don't seem to give a different scan than the rest of the tool shed. But you might be able to climb on them, if you were smaller. They show [if gadget is cert][gc][gc][rc][rc][rc][rc][rc][rc][else][gc][bc][bc][bc][rc][bc][bc][bc][end if][shed-rect-clue]. Maybe they are a clue for what the tool shed can become." instead;

description of outcroppings is "They are something you could put your feet--no, the edge of them--on. They look sturdy enough to hold you, but the problem is, they don't lead anywhere."

the u-lock is undesc. the u-lock is part of the tool shed. understand "lock" as u-lock.

instead of doing something with the u-lock:
	if current action is scaning or current action is cring or current action is certifying or current action is rectifying:
		say "The gadget is silent. It's probably the tool shed.";
	say "The u-lock is too strong to break. You have nothing sharp. Maybe you can get a clue from its brand name. Take a look?";
	if the player yes-consents:
		say "It's from the [first custom style]OLD, THOSE[r] company. Locks should be functional and not beautiful, apparently.";
	otherwise:
		say "You don't bother with it."

instead of entering tool shed:
	say "You couldn't break into any stores, and you're not breaking into the tool shed."

toeholds are a plural-named thing. description of toeholds is "They [if poles are visible]could almost help you up the poles, if the poles weren't so vertical[else]should make it easy to climb the slope to the east[end if]."

section Rived Drive text shortcuts

to say check-tools:
	if ropes are visible or grips are visible:
		say ", but you might be able to just walk up with the tools you have";
	otherwise if ropes are visible:
		say ", and with just a little, the ropes would provide enough safety";
	otherwise if grips are visible:
		say ", which the grips give--but it's too risky. You need some safety";
	otherwise:
		say ", so maybe a couple tools--or a way to change the smoothness of the slope--will make it climbable";

to say p-s:
	if poles are visible:
		say "poles";
	otherwise:
		say "slope";

section Rived Drive escape

check going east in Rived Drive:
	if poles are visible:
		say "The poles are too vertical to climb[if toeholds are visible]. Even with the toeholds[else if ropes are visible and grips are visible]. Even with your tools[else if ropes are visible or grips are visible], and your one climbing tool wouldn't be quite enough anyway[end if]." instead;
	if toeholds are visible:
		say "You make it up the [p-s] with some effort and surprisingly little risk. The toeholds are more like footholds, really[if player has grips or player has ropes]. You didn't even need any climbing gadgets--and in fact you drop them in surprise when you see what awaits[end if].";
		now grips are in lalaland;
		now ropes are in lalaland;
		now player is in Potshot Hotspot instead;
	if player has ropes and player has grips:
		say "Tying the rope around your waist, throwing it til it catches on a rock above, and using the grips, you make it up the slope. What you see makes you drop them in surprise!";
		now grips are in lalaland;
		now ropes are in lalaland;
		now player is in potshot hotspot instead;
	otherwise if player has ropes:
		say "You aren't skilled enough to make it up there with the ropes. You might need one more gadget that lets you hold your place on the slope." instead;
	otherwise if player has grips:
		say "The grips seem stable, but you probably want some safety precaution--something to hold you--just in case." instead;
	say "You try climbing the slope, but it's still a bit too steep for you to hold and get traction. If only you had something that magically appeared on the slope--or failing that, a couple of trusty tools to work your way up." instead;

section spore - ropes

the spore is in Rived Drive. "A spore, about a foot long, is here. Imagine what it could grow into."

description of spore is "It looks too delicate as is to support any weight."

instead of taking the spore:
	say "You might crush it in its present form."

rgtext of spore is "[rcn][rc][rc][rc][rc]". rpos of spore is 1. gpos of spore is 4. lgth of spore is 5. cert-text of spore is "-[d1][d1][d1][d1]". rect-text of spore is "R[d1][d1][d1][ast]S".

section sprig - grips

the sprig is in Rived Drive. "A sprig of some tree or weed you can't identify is here.". understand "weed" as sprig when sprig is visible.

instead of taking the sprig:
	say "Uprooting it would probably kill it."

rgtext of sprig is "[rcn][rc][rc][rc][rc]". rpos of sprig is 1. gpos of sprig is 5. lgth of sprig is 5. cert-text of sprig is "-[d1][d1][d1][d1]". rect-text of sprig is "G[d1][d1][d1][ast]S".

description of sprig is "Very fragile in its present form."

some grips are a plural-named thing. some ropes are a plural-named thing.

check climbing ropes:
	if poles are visible:
		try climbing poles instead;
	if slope is visible:
		try climbing slope instead;

description of grips is "They appear to be suction-based, but you wouldn't climb anything TOO steep with them."

description of ropes is "They look sturdy enough, knotted at the ends and so forth. You could probably use them to climb up a slope, but you might need some help."

chapter Potshot Hotspot

report going east in Rived Drive:
	say "You won't be able to repo the rope.";
	continue the action;

Potshot Hotspot is east of Rived Drive. Hotspot is in Resort.




description of Potshot Hotspot is "An arid, trod dirt road. East is siesta, with a bunch of ransom manors.[paragraph break][if riot is visible][one of]Oh dear. A horde. Uprisers--surprise--protesting YOU! A full-blown riot[or]There's a riot going on here! A bunch of people seem to be protesting...you, accusing you of things you'd never be brave enough to do[cycling][else if protest is visible]Three can still be a protest as well as a crowd, apparently. They're blocking your way east[else if potters are visible]The potters aren't just pottering around[pottiness][else if red bull burdell is visible]Red Bull Burdell is here, looking down at you[else]It's nice and peaceful here, but it's not quite home[end if].";

after printing the locale description for hotspot when hotspot is unvisited:
	set the pronoun it to riot;
	set the pronoun them to riot;
	continue the action;

to say ri-tri:
	if riot is visible:
		say "rioters";
	otherwise:
		say "remaining protesters";

riot-count is a number that varies.

every turn while player is in potshot hotspot:
	if potters are in hotspot and kilns are not in hotspot:
		say "The potters eye you with a mixture of contempt, boredom and expectation.";

to say pottiness:
	if kilns are visible:
		say "--they're working happily at their kilns";
	otherwise:
		say "--they have nothing better to do with their hands right now than wave signs and pump their fists and point at you"

before going in potshot hotspot:
	if red bull burdell is visible:
		if noun is east:
			say "Not with Red Bull Burdell around, you aren't. That 'get out' is just villain talk." instead;
		say "I don't think Red Bull Burdell wants you to take him literally. Villains just talk like that, you know?" instead;
	if red bull burdell is in lalaland:
		if noun is not east:
			say "You really can only go east to your Means Manse." instead;

check going west in Potshot Hotspot:
	say "No going back now." instead;

check going east in potshot hotspot:
	if riot is visible:
		say "That rabble seems mad at you. You'd better disperse them first." instead;
	if red bull burdell is visible:
		say "Not with Red Bull Burdell around you aren't." instead;
	if protest is visible:
		say "They still outnumber you. Though they're only blocking you out of spite. They just--well, they don't have anything to do, and they're sort of expecting you to give them something better to do than, well, [i]protest[r]." instead;
	if potters are visible and kilns are not visible:
		say "They seem a civil trio, buy as you inch east, they get vitriolic. 'Give us something to do!'" instead;

check going nowhere in potshot hotspot:
	say "The only way you want to try to go is east." instead;

section roman manors

ransom manors are scenery in Potshot Hotspot. "They're off to the east. Your Means Manse must be there somewhere. You'll probably find it with a bit of exploration[if red bull burdell is not in lalaland]. But first, you need to deal with the distraction at hand[end if]."

instead of entering ransom manors:
	try going east instead;

instead of going inside in potshot hotspot:
	try going east instead;

section riot

the riot is plural-named scenery in Potshot Hotspot. lgth of riot is 4. gpos of riot is 4. rpos of riot is 3. rgtext of riot is "[rcn][rc][rc][rc]". cert-text of riot is "-[d1][d1][d1]". rect-text of riot is "T[d1][d1][ast]O".


instead of taking riot:
	say "You couldn't even 'take' a few of them.";

Include (-
	has transparent animate
-) when defining riot.

before asking protest about:
	say "You're not going to reason with them. Maybe reason about them, though." instead;

description of the riot is "Well, you have to admit, there's a wide variety of people protesting you, even if they're not explaining why. The riot will probably be blocking your way to the east, but they don't seem to be attacking you, which is nice.[paragraph break]You probably can't calm down the whole riot at once, but it'd be nice to have a way to weed out most of them."

the protest is privately-named scenery. printed name of protest is "trio".

lgth of protest is 7. gpos of protest is 1. rpos of protest is 6. rgtext of protest is "[gcn][rc][rc][gc][gc][rc][rc]". cert-text of protest is "P[d1][d1][ast]T[ast]E[d1][d1]". rect-text of protest is "P[d1][d1][d1][d1][d1][ast]S".

understand "trio" as protest when riot is not visible and tall trio is not visible.


understand "protest/three/protesters/crowd/uprisers/horde/rioters" and "rabble" and "mob" as protest when protest is visible.

understand "protest" and "protesters" and "crowd" and "uprisers" and "horde" and "rioters" and "rabble" and "mob" as riot when riot is visible.


Include (-
	has transparent animate
-) when defining protest.

description of protest is "They're all smeared with--huh? Looks like clay? In any event, they don't look like their hearts are in the protest."

the potters are plural-named scenery. understand "trio/protest/three" as potters when potters are visible.

Include (-
	has transparent animate
-) when defining bustling masses.

before asking potters about:
	say "They don't want talk. They want action. Maybe even bribery." instead;

description of potters is "[if kilns are visible]They're happily working away at their kilns[else]They're looking around antsily. But they don't look saintly. They're a bit upset you've given them nothing to do with their hands[end if]."

rule for printing a locale paragraph about kilns:
	if potters are visible:
		now kilns are mentioned;

after fliptoing potters:
	if potters are in hotspot and kilns are in hotspot:
		hello-bull;
	continue the action;

after fliptoing kilns:
	if potters are in hotspot and kilns are in hotspot:
		hello-bull;
	continue the action;

to hello-bull:
	say "[wfak]Tremors re-storm. 'Eh, we fly!' / 'Why flee?' / 'Erm, it's Mister Smiter!' The potters have wheeled their kilns to a mowed meadow.[paragraph break]You hear a shout from the south and mad snorts from a sandstorm, then see a man too ham-nosed to be handsome. He washes down some walnuts of wan lust with liquid from one purple metal can labeled Sado-Soda, then a bottle of Renegade Green-Ade.[paragraph break]'I am RED BULL BURDELL!' he shouts, in a voice neither earthy nor hearty. 'From my ROOTS to my TORSO! Um, poser? Mo['] super Supremo!'[paragraph break]The size of a large hut, bellowing real thug laughter, he emits 'It's me! I'm set! Sit [']em! Mites-smite times!'";
	if talk-quiet is true:
		say "[line break]Boy, he's pretty loud. So loud, you can't tune him out every turn.";
		now talk-quiet is false;
	say "[wfak][line break]'Armed with a dream, I forged my RESPECT SCEPTER--an alum-maul--went from Da Prominent to Predominant! Once, you rodents snorted.'[paragraph break]Moving from angered to enraged, he puts his battle tablet in a back pocket and pulls out his cruelty cutlery forged of [i]iron noir[r].[paragraph break]'I will not waste sweat. GET OUT!!!! My ideal time? IMMEDIATELY! Nuance is nuisance!'[paragraph break]Bad time to maunder unarmed.[line break][wfak]";
	now Red Bull Burdell is in Potshot Hotspot;
	set the pronoun him to Red Bull Burdell;
	now potters are in lalaland;
	now kilns are in lalaland;
	now cutlery is in hotspot;

after fliptoing china:
	now links are in hotspot;
	now china is in lalaland;
	continue the action;

some china is a useless thing. description is "The china is nice and artsy and fragile but probably not useful to you."

section cutlery

the cruelty cutlery is scenery. "It's built for cruel looks, not practicality. But it looks impressive. Like, +2 or +3. Not that numbers are your thing, more words. Or that you want to look too closely. Red Bull Burdell has a firm grip on it."

instead of doing something other than examining cutlery:
	if action is procedural, continue the action;
	if current action is taking:
		say "No, Red Bull Burdell's not letting go.";
	try examining cutlery instead.

Red Bull Burdell is a flippable person.

Red Bull Burdell wears the Thirst T-Shirt. understand "thirst/-- tshirt" and "rage/gear" as t-shirt.

before asking red bull burdell about:
	say "Realizing he's not going to help you, you mutter, ineffectually, 'Ego? Tut!'" instead;

understand "rbb" as Red Bull Burdell.

the thirst t-shirt is undesc.

instead of doing something with thirst t-shirt:
	say "The Thirst t-shirt is a decent piece of rage gear but worth bothering with. You're down on the ground, anyway.";

rule for printing a locale paragraph about Red Bull Burdell:
	now Red Bull Burdell is mentioned;

description of Red Bull Burdell is "His face is covered with crass scars, and he's wearing a t-shirt saying 'thirst'. He has a toe that sticks out--a partial bare foot inside a fear boot. You think back to Achilles for some reason."

the crass scars are part of red bull burdell.

description of scars is "Every villain has a few. Red Bull Burdell maxed out his useful attributes, but no amount of leveling up could improve his looks."

instead of doing something with crass scars:
	say "He'd want to beat you up for looking at them even if he didn't already want to beat you up.";

The toe is part of Red Bull Burdell.

understand "his toe" as toe.

description of toe is "A toe just juts out from Burdell's boot, looking infected."

understand "fear/ boot/" and "bare/ foot/" as toe.

to say kicks:
	say "Red Bull Burdell kicks the gadget out of the way! You were only able to read [if gadget is cert]six reds, then [bcn][rc][gc][bc][bc][bc][else][bcn][rc][gc][bc][bc][bc], then six reds[end if] as he apparently kicked the switch, too[if gadget-secured is true], which is impressive given how you locked it[end if]. He's not going to let you near it.";
	if gadget is cert:
		now gadget is rect;
	otherwise:
		now gadget is cert;
	if player has gadget:
		now tagged gadget is in Potshot Hotspot;

the chain links are a plural-named thing. rgtext of chain links is "[rcn][gc][rc][rc][gc]". lgth of links is 5. gpos of links is 4. rpos of links is 5. cert-text of links is "-[ast]I[d1][d1][ast]S". rect-text of links is "K[d1][d1][d1][ast]S".

description of chain links is "A bunch of ovular links hooked together. Out of the hands of rioters, it'll cause less achin[']. But they're still more violent things than you'd like, this near the Means Manse."

understand "chains" as chain links when chain links are visible.


instead of taking chain links:
	say "[one of]Get chain = cheating.[paragraph break]Seriously, though. You'd still be outnumbered. They need something to do with their hands[or]Maybe you could change the links, instead[stopping]."

some kilns are a plural-named thing.

instead of taking the kilns:
	say "[one of]Way too heavy. (fourth wall time: try this again for a horrible spoiler pun.)[or]How would you potter around with such heavy things?[stopping]"

description of kilns is "You certainly managed to summon the deluxe version. I guess all that practice earlier in the game, you learned how to give your anagrams OOMPH. You gaze at your work proudly, [if potters are visible]as do the potters[else]but it's not work you can work with further[end if]."

section tugtoeing

tuging is an action applying to one thing.

understand the command "tug" as something new.

understand "tug [something]" as tuging.

does the player mean tuging the player: it is very likely;

carry out tuging:
	if red bull burdell is visible:
		if noun is the player:
			say "You tug at yourself, nervous from hearing GET OUT yet again." instead;
		if noun is red bull:
			say "Try a small part of him. Both lexicographically and physically." instead;
		if noun is not toe:
			say "Right verb, wrong thing." instead;
		if the player's command includes "boot":
			say "The boot is too big to grab. Think smaller." instead;
		if the player's command matches the regular expression "^(tug)? *toe":
			reg-inc;
			say "'It's ju-jitsu!' you yell, grabbing his toe.[paragraph break]'Gritty try, git,' he says, with a sporting pig snort. 'Ha! Inept!' ... 'Ho-ho! Oohh! ... Oh-oh.'[run paragraph on]";
			say "[wfak][paragraph break]'THE PAIN!' Burdell's toe yellows, and he yells 'OW!' A raw 'EEK' proves he's getting weaker. 'Rematch, Mr. Cheat!' he squeaks, failing to reobtain his baritone or, indeed, consider your gender. 'My buffs! FFS, Y'bum!'[paragraph break]'No go, goon! No terms, monster!' You ignore the predator's teardrops through a rain of 'No fair!' and 'Violent, not evil!'[paragraph break]Then he moans 'No Mas,' and a wan NAW! 'I predate adepter. I...'[paragraph break]'Who? How?' you reply. He has no answer.[paragraph break]Ya won! No way!";
			if gadget is in hotspot:
				say "[line break]You pick up your gadget, not because you need any more puzzles, but because you may need proof you're, well, you.";
				now player has gadget;
			else:
				say "[line break]There can't be much more to do but go east and just sit around.";
			now red bull burdell is in lalaland instead;
		otherwise:
			say "You need six letters. You're close." instead;
	try pulling the noun instead;
	the rule succeeds;

chapter Means Manse

Means Manse is east of Potshot Hotspot. "Your new home. Um, yo, here. Now. I could ramble about the marble, praise a spire, or sanction what it contains, but really--you sense one last hurdle hurled in your way to happiness.[paragraph break]The darned [i]exits[r] are all around, making you worry about what was, or if you'll have more to do, but you just want to do less than nothing[if player has gadget]. Your gadget rattles for hopefully the last time[end if].". Means Manse is in Resort.

check going outside in Means Manse:
	say "You just want to get settled into the Means Manse. Maybe there's a way to BE, without having something to do with the exits just yet." instead;

check scaning final-exits:
	try scaning the location instead;

the final-exits are flippable privately-named plural-named scenery in Means Manse. "They are tempting you to adventure, but you'd rather be than do."


understand "exits" as final-exits when player is in Means Manse.

the marble is amusing  scenery in Means Manse. "It makes you calm and relaxed enough to sit back and do nothing with a purpose."

the spire is amusing scenery in Means Manse. "It makes you calm and relaxed enough to sit back and do nothing with a purpose."

the toaster is amusing scenery in Means Manse. description of toaster is "It's just a stupid harmless luxury, here for a last bit of cheap wordplay."

instead of doing something with the toaster:
	if action is procedural, continue the action;
	say "No more fiddling. You just want to sit back and let stuff sink in."

before going in Means Manse (this is the clue final verb rule):
	say "[one of]You suddenly have ye taxin['] any-exit anxiety. Like you're in the middle of an exitstential crisis.[or]I best sit, be, you think.[or]Sit, ex-adventurer.[or]Where would you go? Texis, perhaps[or]Seeing exits just makes you want to...[or]Aww, c'mon, this one's just switching TWO WHOLE LETTERS. You had other tougher ones to MAKE it here! Maybe you're overthinking[stopping]." instead;



section existing

[the final verb, of course]


existing is an action applying to nothing.

understand the command "exist" as something new.

understand "exist" as existing.
understand "amens" as existing.
understand "names" as existing.

carry out existing:
	if player is in Means Manse:
		if word number 1 in the player's command is "exist":
			say "You kick back and enjoy yourself. That is all that's left to do. ";
		else if word number 1 in the player's command is "names":
			say "You can't help yourself, but it's fun to give names to the places in the Means Manse. It makes you feel more at home. There's the Dusty Study, and that can be the Largely All-Grey Gallery. That's A Blest Stable, and the Highest Heights may be a bit hackneyed, but...still, a fun place.";
		else:
			say "You give a few quiet amens to your accomplishments. Perhaps you didn't solve any great philosophical problems, buy hey, you did pretty well. ";
		say "It's time to become an adventurer emeritus. Perhaps one day you will resume it, but for now, the allures of your laurels are too great. Doing without the outwith, you begin your being binge, a pure-wit write-up of the happiest epitaphs to your vaunted, er, adventure. Where IS that notepad?";
		say "[wfak][line break]I...what? End a pad with a deadpan: GIVE A HANG? DANG, I HAVE! TREMENDOUS = ME (ENDS TOUR).";
		reg-inc;
		now resort is solved;
		consider the notify score changes rule;
		say "[line break]Final rank: a smart gamin['] anagrammist.[paragraph break]...well, final, until you feel like playing the second installment in the Stale Tales Slate: [i]A Roiling Original[r].";
		sort table of megachatter in reverse table-size order;
		repeat through table of megachatter:
			sort mytab entry in blurb order;
			now maxidx entry is number of rows in mytab entry;
		end the story finally saying "My Adieu to You: Made It!";
	otherwise:
		say "You continue to exist. Perhaps this ability will come in handy some day." instead;

book lll

LLL is a region. Lalaland is in LLL. [LLL is only a region for backdrops.]

chapter lalaland

[this region/room is for items that have been consumed, but we don't want to recycle them. It's easier to check if they're off-stage or in Lalaland than to define a boolean. Well, for me, anyway.]

Lalaland is a privately-named room. "[bug-report] I have no idea how you got here. Definitely, let me know, so it doesn't happen to anyone else. This room should be inaccessible. Anything that appears here should be pretty much dealt with. Perhaps I could've used a boolean called dealt-with, but I didn't."

understand "ll/lalaland" as lalaland when debug-state is true.

instead of doing something in lalaland:
	say "You probably need to undo things." instead;

chapter bullpen

[used for the cask and sack to indicate they're not done-with yet]

Bullpen is a privately-named room in LLL. "This is the bullpen. You should not see it."

understand "bullpen" as bullpen when debug-state is true.

teleporter is privately-named scenery in Bullpen. description is "this is just to signify that flipping an item makes a jump.". it is abstract.

book error checking

rewarn-val is a number that varies. rewarn-val is usually 0.
rewarn-next is a number that varies. rewarn-val is usually 2.

to say warn-inc:
	increment rewarn-val;
	if rewarn-val is rewarn-next:
		if rewarn-next < 7:
			increment rewarn-next;
		now rewarn-val is 0;
		say ". You may want to use or examine the tagged gadget or maybe ANGLE to see what you can tinker with";

part understanding mistakes

section intro




to say blurby:
	if location of player is notices section:
		say "A magnet is two words--but 'a' doesn't fully count. It wouldn't be strong enough to pull the gate--you need someone to help you, not something, as the broad board says. You see red as you straing to think what or who the nametag should be. Maybe you've got it all wrong, but maybe that's a help.[run paragraph on]";
		continue the action;
	if location of player is Dry Yard:
		say "A magnet [if goat is visible]wouldn't have helped you[else]won't help you[end if] get past the thickets[if goat is not visible]. Right idea, though. Wrong item[end if].[run paragraph on]";
		continue the action;
	say "[reject][run paragraph on]";



section forest








section metros















section resort





section sortie
















section other stuff



part parser errors

to skip upcoming rulebook break: (- say__pc = PARA_NORULEBOOKBREAKS | PARA_SUPPRESSPROMPTSKIP | PARA_COMPLETED; -).

test lbrk with "gonear hotspot/trio/kilns"

Rule for printing a parser error when the latest parser error is the not a verb I recognise error: [verb guess]
	if the player's command includes "writing":
		say "You don't have to do anything with any writing, just READ whatever the writing is on. That said, sorry for not implementing any and all writing fully.";
		pad-rec "writing";
		reject the player's command;
	let myh be the hash of the player's command;
	let myh2 be the hash of word number 1 in the player's command;
	repeat through regana of mrlp:	[this code vacuums up the 2nd use of the oils as well as the alternate use of the chain links. It also allows for basic checks of retries etc.]
		if myh is hashkey entry or myh2 is hashkey entry:
			[d "[myh] [the-from entry] [the-to entry] try.";]
			if the-from entry is visible:
				[d "the-from [myh] [the-from entry] visible.";]
				if there is an exact-text entry and the player's command matches exact-text entry:
					[d "2nd loop Fliptoing from anagram loop: [the-from entry] with command [the player's command].";]
					now ignore-line-break is true;
					try fliptoing the-to entry;
					the rule succeeds;
				if there is a text-back entry and the player's command matches text-back entry:
					[d "2nd loop Flipfroming from anagram loop: [the-from entry] with command [the player's command].";]
					now ignore-line-break is true;
					try fliptoing the-from entry;
					the rule succeeds;
			if the-to entry is visible and the-to entry is not reversible:
				d "the-to [myh] [the-to entry] visible.";
				if there is a dubdip entry:
					say "[dubdip entry][line break]";
				else:
					if the-to entry is sliver:
						say "The sliver seems to bend, but it snaps back[if drapes are not in lalaland]. As if it's impatient to do or be more, but it hasn't served its purpose as-is, yet[else]. Maybe you can do a bit more[end if].";
					else if the-to entry is soil and silo is not visible:
						say "[if oils are in cask]No, that wouldn't need the soil as a foundation[else]The soil is right as-is, but maybe something can go on it[end if].";
					else if the-to entry is potters:
						say "You cut the riot down, but you need to change their protest now.";
					else:
						reject-msg the-to entry;
				do nothing instead;
			d "[myh] [the-from entry] [the-to entry] failed.";
	repeat through regana of mrlp: [this is for an extreme case where you have "attic" instead of "attics"]
		if the-to entry is visible:
			if there is an exact-text entry and the player's command matches exact-text entry:
				d "3rd pass through: [the-to entry].";
				try fliptoing the-to entry instead;
	if mrlp is forest:
		let pieces be 0;
		let bin-try be 0;
		if the player's command includes "nose" and player has nose:
			increment pieces;
			increase bin-try by 1;
		if the player's command includes "shades" and player has shades:
			increment pieces;
			increase bin-try by 2;
		if the player's command includes "beard" and player has beard:
			increment pieces;
			increase bin-try by 4;
		if pieces > 1:
			if bin-try >= 7:
				say "(Trying all three at once)[line break]";
				try putting nose on shades;
				try putting shades on beard instead;
			if bin-try is 4 or bin-try < 3:
				do nothing;
			else:
				say "It looks like you may be trying to combine the two items. PUT X ON Y is the recommended verb. Would you like to do so right now?";
				if the player yes-consents:
					if bin-try is 3:
						try putting nose on shades instead;
					if bin-try is 5:
						try putting nose on beard instead;
					if bin-try is 6:
						try putting beard on shades instead;
	if the player's command includes "bugle" and player has the bugle:
		say "Hm, I didn't recognize that verb...maybe you want to PLAY the bugle?";
		if the player yes-consents:
			try playing the bugle instead;
		else:
			say "OK." instead;
	say "[reject]";

Rule for printing a parser error when the latest parser error is the nothing to do error:
	let A be indexed text;
	now A is "[the player's command]";
	replace the regular expression " .*" in A with "";
	say "There's nothing useful or small enough for you to [A] here.";
	the rule succeeds;

long-word-warned is a truth state that varies. long-word-warned is false.

Rule for printing a parser error when the latest parser error is didn't understand error:
	[let hop be hash of the player's command;
	d "[hop] = [the player's command].";]
	if long-word-warned is false:
		if the player's command matches the regular expression "^<a-z>{9}", case insensitively:
			now long-word-warned is true;
			say "You won't need to use a word that long in this game. They should all be eight letters or less, except for [if black door is off-stage]one compound word[else]a compound word you already found[end if].";
			reject the player's command;
	if the player's command includes "writing":
		say "You don't have to do anything with any writing, just READ whatever the writing is on. That said, sorry for not implementing any and all writing fully.";
		reject the player's command;
	if deadbeat is visible:
		if the player's command includes "hipster":
			say "He trips (tough, when you're sitting down) at being called a hipster. Whether that makes him more likely to be one, I don't know.";
	if mrlp is forest:
		if player has nose and player has beard and player has shades:
			if the player's command includes "nose":
				if the player's command includes "shades":
					if the player's command includes "beard":
						say "(Inform doesn't allow three nouns, but I'll try to munge the three together.)[paragraph break]";
						try putting nose on shades;
						try putting beard on nose;
						the rule succeeds;
	say "[reject]";
	reject the player's command;

check going nowhere in Dry Yard:
	if yard-door is off-stage:
		say "You wander around a bit, but outside of the shrub and brush, there's nothing. It would be too easy to get totally lost. And it's not like you NEED to get away from the odor." instead;
	if bugle-played is true or blot is visible:
		say "You just unlocked that door[if bugle-played is true and blot is visible], not once, but twice[end if]. Walking away from it would be copping out." instead;
	if yard-door is visible:
		say "That'd feel a bit odd, making a door then walking away from it. Maybe there's a way to unlock it, maybe as easy as changing it from an odor in the first place." instead;

check going nowhere:
	say "This is a generic message to say you can't go that way. It should be changed to add variety and flavor.";
	the rule succeeds;

book parsing

Rule for printing a parser error when the latest parser error is the can't see any such thing error:
	if the player's command includes "writing":
		say "[one of]There's a lot of writing in this game[if notices section is visited], especially red writing[end if]. If you're trying to read writing, you may want to READ what the writing is on, instead. This is slight laziness on my part, but it's tricky code. I hope you understand[or]Try to READ the object you want, instead[stopping].";
		pad-rec "writing";
		the rule succeeds;
	say "You can't see anything like that here. If you're trying to view the room, L or LOOK should work.";
	the rule succeeds;

Rule for printing a parser error when the latest parser error is the only understood as far as error:
	say "I understood the first word, but it can just stand on its own as a verb. If you were trying to do something tricky with it, you shouldn't need to. So just '[word number 1 in the player's command]' should work.";

Rule for printing a parser error when the latest parser error is the I beg your pardon error:
	say "[one of]Be daring, you pro![or]Broaden your grip.[or]Go yon, bud! Repair![or]Go, do pure brainy![or]Peg your brain. Do![or]Probing, you read...[or]'No prayer, bud,' I go.[or]No drab gripe, you![or]You're poring. Bad.[or]Go, bud. Reap irony![or]Be young or rapid![or]Yip on, drab rogue![or]Go yon, rapid rube![or]Yep, I guard no orb.[or]Yup, I err. Dang. Boo.[or]Broody gape? Ruin![at random]" instead;

curfloor is a number that varies.
curtower is a number that varies.

to decide which indexed text is alf of (A - indexed text):
	let B be indexed text;
	let C be indexed text;
	let L be a list of indexed text;
	let Q be the number of characters in A;
	repeat with X running from 1 to Q:
		let B be character number X in A;
		add B to L;
		sort L;
	repeat with X running from 1 to Q:
		now C is "[C][entry X in L]";
	decide on "[C]";

part command details

say-check is a truth state that varies. say-check is false.

the block answering rule is not listed in any rulebook.

does the player mean answering the player that:
	it is very likely;

instead of answering:
	if noun is deadbeat and condo-evac is true and the player's command includes "emitter":
		try giving emitter to deadbeat instead;
	say "This game doesn't support PERSON, X very well. It's better to ASK about a SUBJECT, instead.";

the block asking rule is not listed in any rulebook.

period-warned is a truth state that varies. period-warned is usually false.

ignore-transcript-nag is a truth state that varies.

cheat-lock-warn is a truth state that varies.

after reading a command:
	if the player's command matches the regular expression "^\p" or the player's command matches the regular expression "^\*":
		if currently transcripting:
			say "Noted.";
		otherwise:
			if ignore-transcript-nag is false:
				say "You've made a comment-style command, but Transcript is off. Type TRANSCRIPT to turn it on, if you wish to make notes. Or if you want to eliminate this nag, for instance if you have an interpreter that does so independently, say yes now.";
				if the player yes-consents:
					now ignore-transcript-nag is true;
		if helpdebugflag is true and hintfull is false:
			now just-print is false;
			all-say "[the player's command]";
			now just-print is true;
		reject the player's command;
	if period-warned is false:
		if the player's command matches the regular expression "\.":
			say "Small warning--this shouldn't be a problem, but if you use periods to separate a command to do your magic, the parser will have problems. This is fixed in later versions of Inform, but moving ahead proved too sticky. Sorry. That said, normal commands will work okay.[wfak]";
			now period-warned is true;
	remove stray punctuation;
	let XX be indexed text;
	let XX be the player's command in lower case;
	change the text of the player's command to XX;
	if the cow liver is visible or the chicken liver is visible or livers are visible or Spam is visible:
		if the player's command matches the regular expression "\bmeats\b", case insensitively:
			say "What kind of meats they are is important. As are their physical characteristics. So you'll need to be specific.";
			reject the player's command;
[	if trips strip is unvisited:
		if the player's command matches "\b?i<mfr>\b":
			say "[reject]";
			reject the player's command;]
	if player is in centrifuge and centrifuge-stopped is false:
		if the player's command matches the regular expression "^<0-9>+$":
			say "(turning the dial)[line break]";
	if location of player is trips strip:
		repeat through table of warpcmds:
			if the player's command matches the regular expression "[warp-cmd entry]":
				if myreg entry is solved or myreg entry is bypassed:
					say "Your utterance falls on deaf ears. You've already passed through [mystore entry] and beyond.";
					reject the player's command;
				d "[number of unsolved regions] currently left.";
				if number of unsolved regions is 6 and button-locked is false and player has gadget and cheat-lock-warn is false: [this has to be 6: 3 unsolved stores, roster, LLL (blank area) and STORES itself.]
					now cheat-lock-warn is true;
					say "The SECURE/RECUSE button starts blinking. You may need to make sure the gadget's setting is as you want it. Currently, it [if gadget-secured is false]has SECURE/RECUSE off, so you'll need to pick off the remaining store[else if gadget is cert]is set to CERTIFY with SECURE/RECUSE on, and you can skip the final store[else]is set to RECTIFY with SECURE/RECUSE on, and you can skip the final store[end if]. Is this okay?";
					if the player yes-consents:
						do nothing;
					else:
						say "Okay, take time to adjust the gadget as you need. The above warning won't appear again.";
						reject the player's command;
				if number of unsolved regions is 6:
					if button-locked is false:
						say "The SECURE/RECUSE button locks in place as you say the magic word.";
					now button-locked is true;
				say "[warp-result entry][paragraph break]";
				say "You watch [if mystore entry is visible][mystore entry][else if myport entry is visible]the [myport entry][end if] crackle, fizzle, and disappear. You've now solved that area, by an entirely different magic than your main power. Hooray!";
				now myreg entry is bypassed;
				if mystore entry is visible:
					reg-inc;
				consider the notify score changes rule;
				reject the player's command;
	if the player's command matches the regular expression "\bdoor\b":
		if odor is visible:
			if number of words in the player's command > 1:
				ital-say "Just the one word will usually be sufficient in the future. But something happens when you focus: door.";
				change the text of the player's command to "door";
	if the player's command matches the regular expression "^(summon|say|think|shout|speak|yell) ":
		if the player's command includes " to ":
			do nothing;
		otherwise:
			say "(I[one of]n the future, i[or][stopping]f you want to SAY something, you can just say the single word. To talk to someone, ASK someone ABOUT something.)";
			replace the regular expression "^(say|think|shout|speak|yell) " in XX with "";
			change the text of the player's command to XX;
	if panel is visible and panel is part of silo:
		if the player's command matches the regular expression "buttons":
			say "One button at a time, please." instead;
	if goat is visible and toga is not visible:
		if the player's command matches the regular expression "\bgoat\b":
			say "[one of]The goat is off in dreamland and doesn't need disturbing after that meal, whether it was good or bad. Don't fluster the restful[or]Don't fluster the restful[stopping].";
			reject the player's command;
	if player is in elf row's flowers:
		if the player's command matches the text "fairies":
			say "[one of]Something you did or thought causes the freesia faeries to buzz...I guess they're magical enough to detect your misspellings. You feel a tingling, but it passes[or]They can see in your eyes you're spelling things wrong, but they'll have to deal.[or][run paragraph on][stopping]";
	if word number 1 in the player's command is "chisel" and player has chisel:
		replace the regular expression "^chisel" in XX with "scrape";
		change the text of the player's command to XX;
	if word number 1 in the player's command is "silver":
		if player has livers or cow liver is visible or chicken liver is visible:
			say "The livers are too dull to do anything like that with. Yet.[liv-preef]";
			reject the player's command;
	if word number 1 in the player's command is "tell":
		if tell-flag is false:
			say "[bracket]NOTE: this game uses 'ASK X ABOUT Y,' as you don't need to order NPCs around. So the parser will attempt to convert this to asking.[close bracket][line break][wfak]";
			now tell-flag is true;
	repeat with QQ running through fungible things: [this takes care of most of the cases, but when an object like the oils or links is flipped, we need an additional flip]
		if QQ is a the-from listed in regana of mrlp:
			if the player's command matches exact-text entry:
				d "Found a fungible, [the-from entry], to [the-to entry].";
				try fliptoing the-to entry;
				the rule succeeds;
	continue the action;

to reject-msg (rejitm - a thing):
	repeat through table of done rejects:
		if rejitm is donething entry:
			say "[donemsg entry][line break]";
			continue the action;
	d "[rejitm] could use a message in t[r]dr, table of done rejects.";
	say "Nothing at all seems to happen this time. You've probably done what you can.";

tell-flag is a truth state that varies.

table of warpcmds
warp-cmd (indexed text)	mystore	myport	myreg	warp-result
"logoi"	store f	forest-x	forest	"You convince the powers that be that you remember all the words from Store F and the forest."
"sooth"	store i	sortie-x	sortie	"You convince the powers that be that, in sooth, you really did run through Store I and the sortie earlier."
"say bs"	store m	metros-x	metros	"You convince the powers that be that the idea you didn't solve Store M and the Metros is nonsense."

definition: a thing (called x) is takeable:
	if x is not visible, decide no;
	if x is part of something, decide no;
	if x is the blue lube, decide no;
	if x is carried, decide no;
	if x is worn, decide no;
	if x is the player, decide no;
	if x is fixed in place, decide no;
	decide yes;

chapter gating


chapter scaning

does the player mean rectifying the location: it is very likely;

does the player mean scaning the location:
	if player is in trips strip:
		it is likely;
	else:
		it is very likely;

does the player mean certifying the location: it is very likely;
does the player mean cring the location: it is very likely;

does the player mean scaning a sto: it is very likely;

scaning is an action applying to one thing.

understand the command "scan [something]" as something new.

understand "scan [something]" as scaning.
understand "scan" as scaning.


does the player mean scaning the player:
	if notices section is visited:
		it is unlikely;
	it is likely;

to say cant-change:
	if gateman is visible:
		say "[one of]'That means what you have can't be changed.'[or].[stopping]";
	otherwise:
		say "Hm, maybe you can't do anything with that.";

gadget-scanned is a truth state that varies. gadget-scanned is usually false.

before scaning (this is the take gadget if you can rule):
	if player is in hotspot and burdell is in hotspot: [yeah, could be its own rule, but I'd have to shuffle the rules and blah blah blah]
		if show hows tag is not part of the gadget:
			say "You disabled it, remember?" instead;
		if gadget is in hotspot:
			say "You can't reach the gadget, but you remember six reds, then [bcn][rc][gc][bc][bc][bc]." instead;
		else if player does not have gadget:
			say "Yes, it'd be nice to have the gadget, now." instead;
		say "[kicks]" instead;
	if player does not have the tagged gadget:
		if gadget is visible:
			say "(Taking the gadget first)";
			try taking the gadget;
		if player does not have gadget:
			say "Oops, you should've automatically taken the gadget. This is a bug." instead;
	if player has tagged gadget and gadget is broken:
		say "You broke it when you cut off the tag." instead;

to say asknerds:
	say "[if gadget is cert][rcn][rc][rc][rc][rc][rc][rc][gc][else][bcn][rc][bc][bc][bc][bc][gc][bc][end if]";

to say nerdsask:
	say "[if gadget is cert][rcn][rc][gc][rc][rc][rc][gc][rc][else][bcn][bc][bc][gc][rc][bc][bc][bc][end if]";

rgb-yet is a truth state that varies.

nt-rect is a truth state that varies. nt-cert is a truth state that varies.

to say check-other-nt:
	if nt-rect is false or nt-cert is false:
		say ". Maybe the gadget's other setting will give you more information, or maybe the ambiguous information is giving you more than you think"

last-scan is an object that varies. last-scan is nothing.

ever-scan is a truth state that varies.

parse-output is a truth state that varies.

carry out scaning:
	if notices section is not visited and mrlp is not intro:
		say "[bug-report] You should not get to this code before the notices section. You probably jumped away from the intro." instead;
	if noun is storeall:
		say "Not all at once." instead;
	if noun is disamb-store:
		say "Pick a specific store, instead." instead;
	if player has gadget:
		now gadget-scanned is true;
	if player does not have gadget:
		if notices section is unvisited:
			say "[reject]" instead;
		say "You'll need the gadget to scan anything." instead;
	now scanned-g is true;
	if noun is banshee:
		if liches are visible:
			say "The banshee's annoying but not as obstructive as the liches. In fact, you can't tell where it is." instead;
	if noun is tulip and nerds are visible:
		say "[one of]One of the nerds demands to see your gadget. They poke around at it, babble about the sorr of capacitors and resistors needed to get the thing working, convince you they know more about it than you do, and hand it back[or]'Insanity is doing the same thing over and over again and expecting to get different results!' one of them says. Stiff high-fives follow all around.[or]You hear exasperated sighs.[stopping]." instead;
	if noun is faeries:
		say "You sense that would be a breach of some magical etiquette you don't understand." instead;
	if noun is jail cell graffiti or noun is grate:
		say "You see nothing new other than the latent colors registering.";
		try scaning location of player instead;
	if noun is night thing:
		say "No way you're getting close enough." instead;
	if noun is nerds:
		say "[one of]'Whoah! Hey! What's this, a Skansder?' You turn red, explaining you don't know what that is. 'You didn't make that, did you? Don't know the specifications? Thought not.'[or]'Still messing with technology over your head, eh? Like that Skansder you don't know what it is.'[stopping][paragraph break]As the nerds ask other questions, the gadget lights up, and you notice [nerdsask], until the nerds ask no more. Then it goes back to [asknerds] as you think how, why and what to ask nerds." instead;
	if location of player is Elf Row's Flowers:
		say "[one of]You feel a bit self-conscious waving your gadget around such intrinsically magical beings. But they do not seem to mind.[paragraph break][or][stopping]";
	if noun is poem and poem is not folded:
		if smilies are visible:
			say "Your gadget doesn't do much til it's over the smilies. So you look more closely at those.";
			try scaning smilies instead;
	if noun is tinfoil info-lit:
		say "Nothing happens. Which just proves the paper's premise that this is all too ridiculous, amirite?" instead;
	if noun is barcode:
		say "[one of]You receive a rush of insight unlike anything anywhere else in the game![or]You receive more practical insight![stopping][paragraph break]";
		say "[one of]Bread, $1 per loaf[or]Condensed cream of mushroom soup, $.39[or]Cabbage, $.19/lb[or]Ice Cream, $2.50/gallon[or]Jack's Pizza, 5/$10, limit 5[or]OnCor entrees, $2[or]Hot dogs, 89 cents[or]7 oz. pasta, 3/$1[or]Milk, $1.99/gallon[or]Root Beer, $.68 per liter bottle[at random] at BreadCo. Much better than [one of]Winn-Dixie[or]Strack and Van Til[or]SuperFresh[or]Marsh[or]Kroger[or]Piggly Wiggly[or]Jewel Finer Foods[or]Aldi[or]Safeway[or]Moo and Oink[at random]!" instead;
	if noun is pat:
		say "'Fie!' yells Pat. 'My poem transcends technology! I am sure such a fancy gadget could not even tell me its meter!' Then he gets back to recitation." instead;
	if noun is td:
		say "Not likely--it's inside the store." instead;
	if noun is the broad board:
		say "The gadget makes no noise[if gateman is visible][cant-change][else]." instead;
	if noun is the player:
		if warts are visible:
			say "Hm, the warts are registering. [no line break]";
			try scaning warts instead;
		say "The gadget remains silent as you scan yourself. You're either too awesome for any funny changes, or too boring and inflexible. Whichever." instead;
	if noun is gateman:
		say "The gadget buzzes.[paragraph break]'What?! Were you hoping to change me back?' harrumphs Nat Egam. 'Maybe ask me questions instead.'" instead;
	if noun is the yard-door:
		say "You see no activity until you wave your gadget over the bulge. So you leave it there, and you pick something up.[line break]";
		try scaning bulge instead;
	if noun is sandwich:
		say "Your gadget refuses to remain stable. As if it's trying to read two things at once. Perhaps if you pulled the components apart?" instead;
	if noun is candelabra:
		say "Way too high up." instead;
	if noun is doll house:
		if attics are visible:
			try scaning attics instead;
		otherwise if static is visible:
			say "Before your gadget gets close, you begin to pick something up. Perhaps it isn't the doll house you need to do something with. Something ambient--like the static. So you do that.";
			try scaning static instead;
		otherwise:
			say "[bug-report] One of attics and static sould be visible." instead;
	if noun is part of the gadget:
		say "If that part of the gadget were detectable, you'd have gone crazy from the beeping by now." instead;
	if noun is gadget:
		if the player's command matches "scan":
			say "If the gadget were detectable, you'd have gone crazy from the beeping by now.";
		else if button-locked is true:
			say "You can't modify the gadget now it's locked in.";
		else:
			say "You don't need to use a command to set the gadget specifically. You can RECTIFY or CERTIFY it as you please.";
		the rule succeeds;
	if noun is poem and poem is not folded:
		if smilies are part of the poem:
			say "The gadget is more active on the right edge where the smilies are, so you move it over there.";
			try examining the smilies instead;
		say "The gadget makes an odd noise. Perhaps it's in some weird state between forms. If poems can mean different things, they can probably become different things." instead;
	if noun is inflexible:
		say "The gadget registers nothing. Maybe you don't need to shuffle [if noun is plural-named]those[else]that[end if] around." instead;
	now last-scan is noun; [DIVIDING LINE FOR SUCCESSFUL SCAN]
	if gadget is not examined or ever-scan is false:
		say "Before scanning for the first time, you fumble with the gadget and note it is set to [if gadget is cert]CERTIFY[else]RECTIFY[end if].";
		say "[line break]";
	now ever-scan is true;
	now gadget is examined;
	now last-was-cert is whether or not gadget is cert;
	if noun is chicken liver or noun is cow liver:
		say "You see five red lights in a row--but you only see the [if noun is cow liver]bottom[else]top[end if] half of them. Odd." instead;
	if noun is dial:
		if numset of dial is 16:
			say "Your gadget is silent. You've figured what to do with the dial." instead;
		say "The gadget, when over the EXITS part, reads[if player has gadget][rcn][rc][rc][rc][rc] ? ?--flipping between [rcn][rc] and [gcn][gc][else][bcn][bc][bc][bc][gc] ? ?--flipping reds and blues[end if]. The dial's solution probably has the letters EXITS in it, somehow." instead;
	if noun is cabinet:
		say "Two beeps. It's [rcn][rc][rc][rc][rc][rc][gc] over most of the cabinet but[if number of solved regions < 2] the cabinet seems sensitive about its acne[else] [rcn][rc][rc][gc][gc][rc][gc] over the bits[end if]." instead;
	if noun is subway map:
		say "The reading's different over the map of Mt. Rose than the store proper.[if gadget is cert][gcn][rc][rc][rc][rc][rc][else if gadget is rect][gcn][bc][bc][bc][rc][bc][end if]." instead;
	if noun is magenta nametag:
		if gadget is cert:
			now nt-cert is true;
		if gadget is rect:
			now nt-rect is true;
	if gadget is cert:
		if noun is not inflexible:
			say "[if noun is begonias or noun is roadblock or noun is acne-bit cabinet]You notice the gadget beeps twice. Hmm[else]The gadget beeps once[end if]. A series of lights comes across:[if sr-acc is false] [end if][rgtext of noun][one of] (R = red, G = green)[or][stopping]. ";
			if parse-output is true:
				say "Hmm, that means [cert-text of noun]. ";
			kibitz noun;
			check-marcos instead;
	else if gadget is rect:
		if noun is the magenta nametag:
			now nt-rect is true;
			say "The gadget's display is a bit of a mess. It starts at [bcn][bc][rc][bc][gc][bc][bc] and goes to [gcn][bc][bc][bc][bc][bc][rc] and back. [check-other-nt]." instead;
		if noun is not inflexible:
			say "Most of the screen goes blue. Then a green dot and red dot bounce left and right across the gadget screen until they stabilize: ";
			say "[rgbtext of noun]. ";
			if rgb-yet is false:
				say " (R = red, G = green, B = blue).";
				now rgb-yet is true;
			kibitz noun;
			check-marcos instead;
	buzz-or-no-noise noun instead;

son-nos is a truth state that varies.

to kibitz (sca - a thing):
	repeat through table of kibitzes:
		if sca is kib entry:
			say "[helpy entry][line break]";
			the rule succeeds;
	say "[line break]";
	if son-nos is false and sr-acc is false:
		say "You can toggle spaces between the letters with SPACE(S), or you can set them directly with SPACE(S) ON/NO SPACE(S), or SON/NOS for short.";
		now son-nos is true;
		pad-rec-q "spaces";

table of kibitzes
kib	helpy
motto	"Since Motto is only five letters, you wonder what's up, but it's labeled A MOTTO."
tall trio	"You scanned each of the tall trio, and the readout didn't change."
tories	"Six letters to Store I--probably mainly important they're Tories."
drainage	"[if gadget is cert]Uh, oh. Not really helpful at all[else]Not bad, but still[end if]. Maybe you'll find a hint elsewhere, or in the stuff floating in the drainage."
magenta nametag	"[if gadget is cert]The sixth light starts red, then flashes to green and back[else]Hmm, two aspects to the magenta nametag to consider[end if][check-other-nt]."

to say rgbtext of (sca - a thing):
	if scan-to-header is true:
		repeat with Q running from 1 to lgth of sca:
			say "[if sr-acc is true] [end if][if gpos of sca is Q]G[else if rpos of sca is Q]R[else]B[end if]";
		continue the action;
	say "[if gpos of sca is 1][gc][else if rpos of sca is 1][rc][else][bc][end if]";
	repeat with Q running from 2 to lgth of sca:
		say "[if gpos of sca is Q][gcn][else if rpos of sca is Q][rcn][else][bcn]";
	if parse-output is true:
		say "Hmm, that means [if gadget is cert][cert-text of sca][else][rect-text of sca]. ";

yes-scans is a number that varies.

to check-marcos:
	if marcos-trumped is false and button-locked is true:
		if player is not in strip and strip is visited:
			if the player's command includes "(rectify|certify)":
				increment yes-scans;
				if yes-scans > 5:
					say "You hear a voice. 'Psst! Name's Marcos! Got some help with macros! You can simplify things with [if gadget is rect]RECT or REC or R[else]CERT or CER or C[end if].'";

instead of putting something on cabinet:
	say "(I'll assume you meant in, not on.)";
	try inserting noun into cabinet instead;

doorslammed is a truth state that varies. doorslammed is usually false.

section gateway

a portal is a kind of thing. a portal can be enterable. a portal is usually enterable. a portal is fixed in place.

instead of taking a portal:
	say "It's probably easier to enter than to take.";

the getaway gateway is a portal in notices section. "[one of]You see a gateway here. It doesn't look too dangerous, but who knows where it leads[or]The gateway still towers here[if mega ant is off-stage and gateman is off-stage], half daring you to enter[end if][stopping]."

before opening gateway:
	say "It's open. It's just unclear where it leads." instead;

description of getaway is "You can't see a lot. It's dark and murky.  It says GETAWAY at the top, WARMUP on the side facing you and UM, WARP on the other, but there's a little something else to READ[one of].[paragraph break]Maybe you'll spend long enough there, your severance check'll make it to your mailbox before you get back[or][stopping]."

the new land is scenery in notices section.

description of new land is "You'll have to go there to see it all."

instead of doing something with new land:
	if current action is entering:
		try entering the getaway instead;
	if action is procedural, continue the action;
	say "Go through the gate to learn more about it."

understand "gate" as getaway when getaway is visible.

gadget-warned is a truth state that varies. gadget-warned is false.

[I tried til Tired!]

understand "fellow" as gateman.

section gateman subjects

instead of answering that:
	say "This game prefers you to just write the word if you need to say something, or you can ASK X ABOUT Y or TELL X ABOUT Y."

persuasion rule for asking deadbeat to try doing something:
	if condo-evac is false:
		say "You don't need to order people around in this game, and the deadbeat is not friendly enough.";
		the rule fails;
	if player has emitter and the player's command includes "emitter":
		try giving the emitter to the deadbeat;
		the rule fails;

persuasion rule for asking a person to try doing something:
	say "You don't need to order people around in this game. If you wanted to ask them about something, ASK (person) ABOUT (object) is the preferred syntax.";
	the rule fails;

asking generically is an action applying to one topic. Understand "ask about [text]" or "talk about [text]" or "a [text]" as asking generically.

objasking generically is an action applying to one visible thing. Understand "ask about [any thing]" or "talk about [any thing]" or "a [any thing]" as objasking generically.

check objasking generically (This is the check for only one sensible object converser rule):
	d "[list of people in the location of the player].";
	if the number of persons enclosed by the location of the player is one:
		repeat with X running through visible scenery:
			repeat through table of default-gen-blather:
				if X is the default-talker entry:
					say "[gen-blah entry][line break]" instead;
		say "You inquire into your own thoughts. You gain no illumination." instead;
	if the number of persons enclosed by the location of the player is two:
		repeat with candidate running through visible people:
			if the candidate is not the player:
				try objasking candidate about the noun instead;
	say "Ambiguous--more than two people here." instead;

does the player mean asking scenery about: it is unlikely.

does the player mean asking the player about: it is very unlikely.

objasking it about is an action applying to one thing and one visible thing.

understand the command "ask [thing] about [any thing]" as something new.
understand "ask [thing] about [any thing]" as objasking it about.

understand the command "talk to [thing] about [any thing]" as something new.
understand "talk to [thing] about [any thing]" as objasking it about.

understand the command "tell [thing] about [any thing]" as something new.
understand "tell [thing] about [any thing]" as objasking it about.

understand the command "ask [thing] about [text]" as something new.
understand "ask [thing] about [text]" as asking it about.

understand the command "talk to [thing] about [text]" as something new.
understand "talk to [thing] about [text]" as asking it about.

understand the command "tell [thing] about [text]" as something new.
understand "tell [thing] about [text]" as asking it about.

Check asking generically (This is the check for only one sensible converser rule):
	if the number of persons enclosed by the location of the player is one:
		repeat with X running through visible scenery:
			repeat through table of default-gen-blather:
				if X is the default-talker entry:
					say "[gen-blah entry][line break]" instead;
		say "You inquire into your own thoughts. You gain no illumination." instead;
	if the number of persons enclosed by the location of the player is two:
		repeat with candidate running through visible people:
			if the candidate is not the player:
				try asking the candidate about the topic understood instead;
	say "Ambiguous--more than two people here." instead;

to say lazy-adv:
	say "'Scan something. Like that doll house. Or even me. Then come back and ask for details. You're an adventurer...do a little experimenting. The gadget won't explode, trust me.' It shouldn't be too hard to humor him.";

check objasking it about (This is the check for object information rule):
	if noun is gateman:
		if second noun is gadget or second noun is part of the gadget:
			if scanned-g is false:
				say "[lazy-adv]" instead;
	repeat through table of subject-blather:
		if second noun is the person-subj entry:
			if noun is the him-who entry:
				say "[him-say entry][line break]";
				if noun is gateman and second noun is saltine:
					pad-rec "xx";
				the rule succeeds;
	repeat through table of default-sub-blather:
		if noun is gateman:
			if second noun is not goat:
				if second noun is in Dry Yard:
					say "'In the past now. Nothing more to learn from that.'" instead;
				if second noun is in subsite:
					say "You'd know more about that than he would." instead;
			if second noun is visible:
				say "Examining would probably work better." instead;
		if noun is him-who entry:
			say "[him-say entry][line break]" instead;
	repeat through table of default-gen-blather:
		if noun is default-talker entry:
			say "[gen-blah entry][line break]" instead;
	if noun is notepad:
		try consulting notepad about "[second noun]" instead;
	if noun is not a person:
		say "You can only ask people about things." instead;
	say "[bug-report]!!! [noun] does not have a default entry." instead;

stupid-temp is text that varies.

check asking about (This is the check for specific topics rule):
	if the topic understood is a topic listed in the table of general-blather:
		if him-who entry is the noun:
			if scanned-g is false:
				if topic understood matches "certify" or topic understood matches "rectify":
					say "[lazy-adv]" instead;
			say "[him-say entry][line break]" instead;
			[would like to pad-rec "[what-pad-gen entry]" instead; but inform is confused with 2 tables]
			do nothing instead;
	repeat through table of default-gen-blather:
		if the noun is default-talker entry:
			say "[gen-blah entry][line break]" instead;
	if noun is notepad:
		try consulting notepad about "[second noun]" instead;
	if noun is not a person:
		say "You can only ask people about things." instead;
	say "[bug-report] no default blather for [noun].";

to say goat-toga:
	say "[one of]'Hm, yes, good job with the goat. It'll be safe and happy. Oh, for the record, the gadget would've said Red-Green-Red-Red in Certify mode and Red-Blue-Green-Blue in Rectify.'[or]You don't wish to revisit past glories. It's probably better to PAD GOAT for Nat Egam's information.[no line break][stopping]";
	pad-rec "the goat";

check asking gateman about "world peace":
	say "That goal's a slog, but I've got confidence." instead;

description of gateman is "His sober robes are tan, but they're not important. 'Stop staring!' he booms. [if player has tagged gadget]'You're ready to go through that gateway, though you can ask me for help.'[else]'You should probably get equipped. Get the gadget in the cabinet.'[end if]"

to say your-job:
	say "[one of]'We need someone to free us from the marauding tyranny of Red Bull Burdell! He has made a plowyard out of Yorpwald! Force alone cannot undo him!'[or]'You. Red Bull Burdell. Win.'[stopping]";

to say oma-gate:
	if player does not have gadget:
		say "'I'd get that gadget in the cabinet before entering[if player does not have phial]. And the phial, too[end if]. I can help, if you ask. But I can't force you to do anything.'[run paragraph on][line break]";
		now lube-asked is true;
	otherwise:
		if lube-asked is false:
			say "'Well, you've got the gadget, but maybe you want the phial. I think the cabinet knows I trust you, so you can just go grab it.";
			now lube-asked is true;
			continue the action;
		say "'It's safe. Don't worry! Get going through there!'[run paragraph on][line break]";

check asking the player about:
	say "If only learning were so easy." instead;

does the player mean doing something with the merchandise when the merchandise is visible: it is very likely;

to say faery-flower:
	say "[if fairy-worthy is true]'We have faith in you! You will make the city safe to grow flowers again!'[else]'We trade in flowers! Flowers we have for flowers we want! What do you have?'[end if][run paragraph on]"

lube-asked is a truth state that varies.

to say about-lube:
	if player has the phial:
		say "'Good, good, you got the phial. Remember to ANGLE to see into things or GLEAN to see around as need be.'";
	otherwise:
		say "'[if lube-asked is true and player does not have lube]You can just take it. [else if cabinet-bit-me is true]Cabinet not letting you have it, eh? [end if][one of]The phial with the lube can grease your way to a solution.' He coughs. 'Sorry.'[paragraph break][or][stopping]'If you ANGLE the lube just right so it reflects a light source, you can see what you can change. If you GLEAN, you see what you should be doing. How your story unfolds[if lube-asked is false].' He walks over to the cabinet, pats it, and says a few words. 'You can take the phial now.'[else].' So you do.[end if]";
	now player has phial;
	pad-rec-lump "lube";
	pad-rec-lump "angle";
	pad-rec "glean";
	now lube-asked is true;

after objasking about (this is the post-rec talking rule):
	if noun is gateman and second noun is saltine:
		pad-rec "xx";
	continue the action;

table of subject-blather [tsb]
him-who	person-subj	him-say
gateman	redness	"[one of]'Red writing, like Red Bull Burdell, is totally wrong in many ways. So many, it can be a help.'[paragraph break]He shows you some calculations that any such writing can be expected to eliminate 60% of your possible choices, because 1 minus 1/x to the x is 1/e, more if there's a duplicate letter--the Inclusion-Exclusion Principle applies here, and you nod as he mentions the exact numbers aren't important, but every clue helps.[ask-red][or]'Hm. To keep it simple, red is wrong. And that helps you eliminate wrong guesses.'[stopping]"
gateman	board	"'Good idea to take notes on it. But I can tell you about other stuff. Like [if player has gadget]your gadget[else]the gadget in the cabinet[end if]. Or even how it works.'"
gateman	doll house	"[if attics are off-stage]'A nice warm-up puzzle, but if you're in a hurry, I'll respect that too. Not the doll house that needs changing.'[else]'You don't need to take it with or anything. Nice job with it, though.'[end if]"
gateman	static	"'[if attics are off-stage]If it's kind of annoying, you can get rid of it. Or you should be able to. But you don't have to.[else if attics are visible]Good job getting rid of it.[else]Err...I know you're in a hurry, but can if you could change it back to the attics before you get going, my ears would thank you.[end if]'"
gateman	attics	"'[if attics are off-stage]Yes. Do--whatever it is--to make them appear. I hope you haven't lost your powers.[else if attics are visible]They're more appropriate to the doll house, definitely.[else]I kind of prefer [']em to the static. You wouldn't mind switching them back?[end if]'"
gateman	blue lube	"[about-lube]"
gateman	phail phial	"[about-lube]"
gateman	prep paper	"'No, I'm not sure how we all know this. There's a lot of high-level magic theory. And if we knew the details and had your powers, maybe one of us could try. But--well, it's a start.'"
gateman	Red Bull Burdell	"[one of]'Like he was thought up by a demonic comedian. Made a desireable age disagreeable. Seemed a poseur when he uprose from abuser to saboteur. He'd make a poignant nag point, acting like a rowdy pal. Heard his cleats in the castle as he did something called 'Leveling up.' Maximizing stuff called hit points and magic points. Things went awry before we were wary.' You sense there's more, if you can bear it.[or]'Rum toil became turmoil. We let the ploy draw us in...then Prowl Day made the world pay. Against Raw Rori, a warrior, the devil lived. We ignored eroding. He humbled Bud Helm. We have lost LOTS because of him. Mega-sad damages. He beat us all. Rooftops of troops on Fort Oops. Profs too. Auctioned Education. I cautioned...' His eyes grow mistened. 'Ten dimes say it's end times. We've waited for an upturn to turn up...'[or]'The time for talk is over.'[stopping][one of][line break][rbb][or][stopping]"
gateman	tip	"[tip-dialogue]"
gateman	tinfoil info-lit	"'Sane Sean. Hmph. Either he's dumb enough to believe Red Bull Burdell's a good guy, or he's a deep undercover double agent.'"
gateman	Bud Helm	"'Yeah, we were surprised the bum held Bud Helm.  Bud Helm bled, hum? He's a broken man, now.'"
gateman	Raw Rori	"'Pure strength. That won't get the job done here.'"
gateman	pen	"[one of]'How thoughtful! Nobody's asked me for my autograph for a long time! Wait, we don't have time for that nonsense.'[or]You probably know more about the pen than he does.[stopping]"
gateman	dope tan notepad	"'Good choice, taking notes.'"
gateman	new land	"'I can't tell you everything about it. But you'll see for yourself.'"
gateman	nametag	"'Oh, did you have problems with it? Sorry. I'd have helped, but I was--I mean, I wasn't [i]at all[r].' He rolls his eyes."
gateman	yourself	"[your-job][run paragraph on]"
gateman	gateman	"'Once I solved one of those hero mills with more hills...' he blinks. 'I'm not important. You are. And what you can do.'"
gateman	arrow	"'That's just to show SECURE/RECUSE is linked to whether you can change between RECTIFY and CERTIFY.'"
gateman	knot	"'It's good and tight. Case it gets joggled while you adventure. If the gadget isn't tagged, it loses its magic because, well...'"
gateman	examples	"'Hm, LEMON and MELON have three letters in common, and they're all green. The two that switch are red. So that's not bad. PASTE and TAPES, on the other hand...the green T and red S on the left map to the first last letters on the right, and the P and E are green and red and map to the first and last letters on the left.'"
gateman	disclaimer	"'Necessary legalese. But really, use the gadget as often or little as you want or need. Nobody will judge.'"
gateman	gadget-screen	"'The screen will light up when you scan something relevant.'"
gateman	handle	"You can't imagine anything tricky about the handle, so you decide not to ask."
gateman	goat	"[goat-toga]"
gateman	toga	"[goat-toga]"
gateman	shrub	"[goat-toga]"
gateman	brush	"[goat-toga]"
gateman	thorn	"'Sorry if it scratched you. And by you I mean your nametag. And by your nametag I mean me.'"
gateman	getaway	"[oma-gate]"
gateman	gadget	"'[one of]Powerful. Not as a weapon. Won't be many fights. But you can SCAN an object with it, and it won't break down from over-use. Use it as much or as little as you want. There's concrete problems, then there's how many hints make your quest most fun, and that's up to you[or]It can SCAN other things[stopping]. Ask about a specific button if you're interested. Not your only source of clues, either. There's also the color red.'"
gateman	s-r	"'Could make things tougher at first, but then easier for you. Forces you into only CERTIFYing or RECTIFYing if you push it. But you can RECUSE yourself later from one of the three areas to conquer. It'll warn you, too, by flashing before it locks. Magic fields might do that, midway through an adventure or so.'[pad-sec]"
gateman	noise bag	"'Cities gotta have noise but there's one just constantly has it. Burdell's behind it, too, claiming he couldn't have leveled up without that techno-piffle and people get used to it if they try. Actually calls it music. He's got a lieutenant to enforce it.'" [!! HACK ... NOISE BAG comes before NOISE]
gateman	saltine	"'Miniscule, but more than mini-clues. The next item that baffles you, eat that and eXamine extra hard and it'll make sense. Oh, apologies in advance: good flavors and good magic don't mix.'"
gateman	cabinet	"'[if lube-asked is false][lubeit]It's kind of picky and defensive. Might not give you everything til I tell it.' He goes over to the cabinet, pats it on its top, and returns. 'Now you should be able to get everything from there.[else]Everything in there's yours.[end if]'"
peasant	hay	"'Not very useful for building something unless you want it to be destroyed quickly. Can't think of any reason I'd need that. Straw, on the other hand...'"
peasant	poem	"'I try my best at it.'"
peasant	straw	"'Good, sturdy stuff. I could use some to repair my hut. Can't imagine anyone would want what I have, though.'"
peasant	Woeful Pat	"'He's better than I am at poetry, I'm sure. I'm not educated enough to know why. Frustrates me sometimes.'"
peasant	Mean Old	"Used to be much nicer, back when we knew him by his first name."
woeful pat	Mean Old	"'He does not censor my art. He cannot be that bad!'"
woeful pat	peasant	"'There is one who tries his best. But he is too...obvious.'"
woeful pat	anapest	"[if anapest-clued is false][anapest-clue][run paragraph on][else][one of]'A mere creative writing teacher could educate you as to the pedantic details of writing doggerel that mimics my epic's flow!'[or]You didn't REALLY want the anapest explanation again, did you?[ana-true][stopping][end if]"
deadbeat	beats	"'They're nice and all for being an excuse not to work but they're lame and all because it's hard to concentrate for maximized angst. I'm tired of them, [if condo-evac is true]dude[else]you square, yo[end if].'"
deadbeat	nerds	"The deadbeat starts shaking as he rattles off how the nerds east of the Underside have forgotten their roots."
deadbeat	faeries	"The deadbeat doesn't believe in magic, now. But he did as a kid."
deadbeat	red bull burdell	"'He is oppressive, man, but he is just a symptom of disparity and malaise.'"
deadbeat	talkers	"[if talkers are in lalaland]'You showed them, dude!'[else]The deadbeat starts up some nonsense pseudo-sociological mumblings.[end if]"
deadbeat	lost corn	"[if condo-evac is false]'Hey, Man, like, how do we know you don't, like, like the Man, man? Hey? Hey?'[else if lost corn is visible]'Oh, yeah, it's yours, man, I guess. It's real corn, not that genetically modified stuff from,' he sees red for a sentence, '[first custom style]SLORNTCO[r] or that nasty dried stuff from [first custom style]ST ROLCNO[r].'[else]'Whoah. You must've like did something with that corn. Biosustainibility, man.'"
deadbeat	termite emitter	"[if player does not have emitter]'What? Do you know something?' he looks furtively around, more convinced than ever you're with The Man, man.[else if condo-evac is false]'Whoah. No fingerprints, no proof it's mine.' He clearly doesn't trust you, yet.[else][try-flies][no line break][end if]"
faeries	drainage	"'Perhaps you can turn something in this city into a flower. We are out of ideas. How can drainage become a flower?'"
faeries	gardenia	"[if drainage is in underside]You don't have a gardenia, yet. But you can find or make one.[else][faery-flower][end if]"
faeries	heaths	"[if player has begonias or player has noise bag]The faeries have been generous enough.[else][faery-flower][end if]"
faeries	begonias	"[if player has sheath or player has heaths]The faeries have been generous enough.[else][faery-flower][end if]"
faeries	sheath	"[if player has sheath]'It is up to you to use it. We cannot help further.'[else]The faires wonder aloud what sort of magic could conjure a sheath.[end if]"
faeries	sheath	"[if player has sheath]'It is up to you to use it. We cannot help further.'[else]The faires wonder aloud what sort of magic could conjure a noise bag.[end if]"
faeries	merchandise	"[faery-flower]"
faeries	beats	"'It is terrible! Our hearing is even more delicate than a clumsy human's. We can do no decent long-term magic with it around.'"
faeries	brocade	"[if player has brocade]'Do with it what you need.'[else if brocade is in lalaland]'You have disposed of it! We hope it was useful.'[else]'It is free. But useless to us.'[end if]"
faeries	clover	"'That is just a weed! We have no use for it. But maybe it is useful to you.'"
faeries	tomato	"'A putrid vegetable! [if player has tomato]We should kick you out right now[else]It must taste terrible[end if]!'"
faeries	tulip	"'Some flower that is!'"
faeries	deadbeat	"The fairies buzz and give superior sniffs."
faeries	nerds	"The fairies buzz and give superior sniffs."
nerds	beats	"'Anyone can be smart enough to build noise cancelling homes to get rid of the beats!'"
nerds	controls	"[if player does not have controls]The nerds might be experts on technical stuff, but they'd be over your head.[else]'Oh! These are simple controls! You don't even need to know about induction and charges and anything. Just slap them in where there's something missing. Pf, barely worth the time to ASK NERDS about.[end if]"
nerds	deadbeat	"The nerds aren't big on social stuff. They're more about the technical stuff, about showing answers to questions you have. And questions you don't know you have yet."
nerds	faeries	"The nerds assure you science is better than magic."
nerds	red bull burdell	"'Sometimes Yorpwald is so dumb it deserves a thousand years of his rule. Not that he deserves to rule for a thousand years. We need someone smart enough to ASK NERDS the right thing to help dethrone him!'"
nerds	tracks	"'We wouldn't touch it, that's for sure. I mean, even if we could see where it went.'"
nerds	Tulip	"[if player has tulip]'It's not going to burn out for a long time.'[else]'We've got plenty of light here. You can have it, if you know what to ask us about. And if the tulip would help.'[end if]"
talkers	dry cake	"Someone puts their hand to their lips. Someone else shakes their head. You don't DESERVE that cake, according to them."
protest	kilns	"'If we were artsy, we'd use [']em. But we're not. Take some magic to MAKE us artsy.'"

to say tip-dialogue:
	say "'Well, one of rectify or certify is overall better than the other. Would you like to know which[one of][or], again[stopping]?'";
	if the player direct-consents:
		say "'Without getting too mathy, you can expect one of the letters to CERTIFY correctly if there are no repeats, but a bit more with repeats--one and a half, in an eight-letter word with a repeat. RECTIFY, you're always guaranteed the first and last right. So it's a bit more help if you SECURE later. But how much challenge you want is up to you. Either can work with any red writing you might see.'";
		pad-rec-lump "certify";
		pad-rec "rectify";
	else:
		say "'There's no wrong setting, really.'"

to say pad-sec:
	pad-rec-q "secure";
	pad-rec "recuse";

to say rbb:
	pad-rec "Red Bull Burdell";

to say lubeit:
	now lube-asked is true;

to say ana-true:
	now anapest-clued is true;

the utterly unreadable book is undesc.

to say book-in-nerds:
	now utterly unreadable book is in Anti-Cool Location.

check examining the utterly unreadable book:
	say "Even the author names are pretentious and important sounding. Think they're worth remembering?";
	if the player yes-consents:
		say "[rcn]Srs. Ek and Rensskad-Knessard";
	otherwise:
		say "Hm, yes. The nerds may give a less cryptic hint."

to say rose-sore:
	if player does not have gardenia:
		say "[one of]. It will probably be tougher than getting a sore and changing it to a rose[or][stopping]"

table of default-gen-blather
default-talker	gen-blah
Red Bull Burdell	"'Ego? Tut!' you mumble, but it has nothing on action."
banshee	"'I strip spirit!' it wails, then, 'Rather be breather!'"
beast	"It cares not for conversation, only noise."
beats	"Dude! They're clearly busy bringing sexy back. You text adventurers don't know how to act."
deadbeat	"He mumbles something about [if condo-evac is false]chillin['] with his ill chin and how you're probably down with the man's anthems and aligned with those yuppies to the north, glancing furtively at the lost corn[else if corn is visible]how you haven't put that lost corn to good use yet[else]whatever you did with that corn better work[end if], and he also complains about [if Anti-Cool Location is visited]those nerds you saw[else]nerds down southish, for some reason[end if]."
faeries	"[if fairy-worthy is false]'You must bring a powerful flower up! For our magic garden-and-a-third! There must be one in the garbage in this city! All we can make with the beats pounding are freesias, and we are getting sick of those!' they exclaim[rose-sore].[else]'You are our hero! Thank you so much[sure-you]! Now go and save the city.'[paragraph break]Hm, they didn't really seem to be listening to you, but fair enough, that's something."
goat	"The goat got here by magic, but it isn't. Don't fluster the restful."
gateman	"[one of]'Eh?! There's all sorts of things to ask me about! That goat back there! Your quest! Your purpose! The [if getaway is visible]getaway[else]gateway[end if]! General advice! No time to scold clods asking about--whatever you just mumbled about.'[or]Nat Egam pauses. 'There's so much in the world we all want to understand. But unfortunately, we only have time for the questy stuff. So ask me about that goat, your quest, your purpose, general advice. Or--well, just go through the gateway[if getaway is visible] once you change it. It's not too hard, for seven letters, but I can't tell you[end if]. You'll learn by doing.'[stopping]"
gy	"The men passing through seem in a hurry."
line of no life	"You could never get everyone's attention at once."
liches	"They are too busy moaning to each other."
masses	"You can't think of any small talk. Not that you're trying hard to."
nerds	"[one of]'Hm, should we even talk to an outsider about that?'[paragraph break]'Well, if they found their way in, they can't be THAT dumb!'[paragraph break]'Well, they'll have to find the right thing to ASK NERDS like us about if they want us to stop talking about them like they's not here.'[paragraph break]'Maybe they's a lateral thinker. Who knows several ways to get through things.'[paragraph break]'GROAN! Nice Ignorance.'[paragraph break][one of]They don't seem to want to tell you what to ask them, out of principle, but if you keep nagging them, they may let some cryptic knowledge slip[or]They seem to be having fun feeling smarter than you, which is actually kind of good, as maybe the discussions will make more sense this time around[stopping].[paragraph break]'If they doen't know what to ask nerds about, they deserve ED'S SNARK!' Ed, indistinguishable otherwise from the rest, leaps, pleased with what elapsed.[or]More annoying banter. Perhaps you could disperse them with the right item. They'd deserve it.[or]Laugh-tons onslaught as you haven't figured what to ask nerds.[or]They form a grin ring, but you close your eyes a bit. As you do, you are hit with a book[book-in-nerds]![or]A hundred-nerd DUH follow your latest ask-nerds attempt.[or]'Maroon! A moron! You might as well ask dorks like Karkdoss about something that inconsequential!'[or]An argument on the virtues of code versus Frisbee golf follows, and how nobody would ask geeks like Kaergess for help getting better at either.[or]The nerds jokingly offer to send Sark in your place, maybe to find a left-handed veeblefitzer. You see red at the backhanded insult.[or]Apparently you haven't seen the light for what to ask nerds about. 'We can wait here a thousand years!' one laughs. They debate on what's worse, dumb people in power or out.[or]One nerd tells you you should be sent to the red planet of SKASDREN for asking so many nagging questions.[or]One nerd calculates eight factorial over two factorial, that's 20160, and eventually you'll see the light.[or]A few nerds wonder if anyone has been as snerk'd as you in their presence. You see red, slightly.[or]One nerd jokingly refers you to DR. KASSEN.[or]'[']K, Ren's sad,' one nerd remarks, red-faced.[or]One nerd dumps out his shoe. 'Erks! Sand!' He looks red-faced at such a public display.[or]Duhs won't shut down. Still, the nerds seem to be having fun, so they won't mind if you start over asking about stuff.[cycling]"
night thing	"'NYURGH! HUNGRY!' Easier to argue a grue away."
peasant	"'I don't know much about that, that's sure. But I know from hay, being an abler baler.'"
red bull burdell	"Your pale plea meets with strung grunts."
riot	"[riot-trio-blather]"
protest	"[riot-trio-blather]"
talkers	"You get a few pinched, strained smiles, which is more than you expected, but no actual words."
woeful pat	"[pat-blather]"
wolves	"Now is not the time for a heroic lecture, or even a heroic attempt at peace. Now is a time for violence and gore. You have the equipment."
yourself	"'Self, what should I do now?' 'Self, don't start talking in the third person.' 'Self will make a point of it, self.'"

table of default-sub-blather
him-who	him-say
deadbeat	"He mumbles 'Mt. Rose Rots Me Moster' and giggles stupidly. You probably won't learn much from him except about instruments of subversion."
faeries	"They possess wisdom humans never will, but they don't much want to help you with the physical realm, beyond flowers."
gateman	"'Can't say anything about that. You'll have to find out for yourself later.'"
nerds	"The nerds look at each other, wondering why you would ask about that, really. They are sure you have something important to ask them. Maybe somewhere you can't get to or through. They could figure it out if in your shoes.[paragraph break]Hmm. Apparently, when you ASK NERDS, you need to come correct[one of]. All the same, you're a bit annoyed, and you wonder if you can maybe play a mean trick on them to get that tulip, instead[or][cycling]."
yourself	"You're an interesting subject and all, but [if location of player is subsite]nobody else wants to bother[else]there's stuff to be done, and stuff[end if]."

before objasking nerds about:
	if player has tulip:
		say "They don't want to be bugged any more. And, really, you don't want to bug them. You have what you wanted.";

before asking nerds about:
	if player has tulip:
		say "They don't want to be bugged any more. You have what you wanted.";

to say riot-trio-blather:
	say "You're not going to reason with them. Maybe reason about them, though.[no line break]"

Bud Helm is a useless person. description of Bud Helm is "He has been condemned to obscurity."

Raw Rori is a useless person. description of Raw Rori is "Condemned to obscurity."

does the player mean objasking generically the deadbeat: it is unlikely.
does the player mean objasking about the deadbeat: it is unlikely.

to say roo:
	pad-rec "advice";

to say ask-red:
	pad-rec "red"

table of general-blather
him-who	topic	him-say
gateman	"next guy"	"'Optimistic, aren't we?'"
gateman	"gato"	"[goat-toga]"
gateman	"sean/sane" or "sane sean"	"The gateman shakes his head slowly and shrugs. Sane Sean would probably be a lot funnier if Yorpwald weren't in trouble."
gateman	"general advice" or "advice" or "general"	"'Well, you figured a few things out. Probably want to focus more on changing stuff than weird actions. One thing, though. The things you need to change? Nothing too complex. Nothing over eight letters. Okay, maybe one two-word thing with nine. Red Bull Burdell often babbled about getting eighteen intelligence and wisdom from all that leveling up, but he never got a decent vocabulary. The philistine. Also, there will be clues--clues that seem all wrong, deliberately wrong, but their wrongness will stand out and help you.'[roo]"
gateman	"scold/clods"	"'Like I said, no time for that. Time to fix things!'"
gateman	"xyzzy"	"'Fool! That magic word has no place alongside your magic abilities.'"
gateman	"world"	"'Well, it wasn't a very SPECIAL world. In fact it was one of those hero mills. I remember more hills than anything else. Figure it had to break down for the next guy to save it.'"
gateman	"yorpwald"	"'It's been shuffled, nearly f-flushed! You can rescue it from physical, economic and moral malaise. You will need to travel through Old Warpy to get there. The stuff [if number of things in cabinet > 0]in[else]from[end if] the cabinet should help. Ask me about it. I'm a hero emeritus, and stuff.'"
gateman	"old warpy" or "old/warpy"	"'Once you step in, it'll take you somewhere far away. But it's perfectly harmless and not too bumpy. Like beyond that gateway getaway. Terry's in there, too, and he flips the switch so you can RETRY if you get stuck somewhere.'"
gateman	"terry"	"'He's reliable.'"
gateman	"lupine/lineup" or "lupine lineup"	"'Distant rumblings from somewhere beyond a very quiet place. Sadly, violence may be necessary.'"
gateman	"noble" or "ol' ben" or "noble ol' ben" or "ben"	"'He used to be fair and just. But he saw Red Bull Burdell [']leveling up,['] whatever that is. Red Bull bragged about how he'd multiplied his gold and achieved eighteen charisma, or something, before changing Noble Ol['] Ben.'"
gateman	"quest" or "purpose/goal" or "my purpose/goal"	"[one of]'Three major problems past the gateway. Noise is one. A lupine lineup. Noble Ol['] Ben: gone. Lorn. No longer.'[paragraph break]'And I think I know who's behind it: RED BULL BURDELL!'[or]He mentions 'Noise is one, lupine lineup, Noble Ol['] Ben gone, lorn, no longer.' Then he motions to the gateway. 'You'll see when you get there, I think.'[stopping]"
gateman	"doll house/attic/attics/static/house"	"'Just something to get your feet wet, fiddling with the devices and such. Won't help with a quest[if attics are off-stage]. Though it's not the doll house but what's coming from it[else]. Good job with it, yes[end if].'"
gateman	"certify" or "certifying"	"'Tells you what letters are right for what something should be. Red is wrong, green is right. Probably not as powerful as rectifying, but gets you some stuff right away. Also--there's some clues out there that're just plain red. They're all wrong.'[prcer]"
gateman	"rectify" or "rectifying"	"'Gives you the first and last letters of what something should be.'[prrec]"
peasant	"hay"	"'I can't use it. But I could use some straw.'"
woeful pat	"beat/rhythm/meter"	"[anapest-clue][run paragraph on]"
woeful pat	"st paean" or "paean"	"'It will be my best reading yet. Even better than this[if player does not have flier]. Here you go, just to make sure[give-flier][end if].'"
deadbeat	"slorntco"	"'Organized capital is so repressive, dude.'"
faeries	"gardenia"	"[if player has gardenia]'Yes! We like that! Give it!'[else if gardenia is in lalaland]'Yes! Thank you!'[else]'We need something for our garden-and-a-third!'[end if]"
faeries	"heaths/begonias/heath/begonia"	"[he-be]"
nerds	"darkness"	"[nerd-dark]"
nerds	"dorks"	"They snicker knowingly. They assure you Karkdoss is the worst, if you want to ask dorks for any help."
nerds	"karkdoss"	"They snicker knowingly. You wonder if there is a Karkdoss, and if so, if they really think you should ask dorks."

to say prcer:
	pad-rec "certify";

to say prrec:
	pad-rec "rectify";

to say give-flier:
	now player has expo flier;

to say try-flies:
	if flies-in-emitter is false:
		say "'Dude! So you got it back from the night thing!' He takes the emitter, stuffs it in one of the more grungy-looking tents, and gives it back. 'Sorry there aren't any termites. But now these angst gnats inside may be handy later. We probably like infected them with social discontent when they bit us.'[no line break]";
		now flies-in-emitter is true;
		now termite emitter is angstgnatted;
	otherwise:
		say "'Man, I've done enough work today. I don't want to catch any more angst gnats. Even for you.'[no line break]";

talktoing is an action applying to one thing.

understand the command "talk to [someone]" as something new.
understand "talk to [someone]" as talktoing.

check talktoing:
	if noun is riot or noun is protest:
		try asking noun about "mumblety-peg" instead;
	if noun is the player:
		try asking player about "mumbletypeg" instead;
	if noun is masses:
		say "They seem preoccupied with themselves." instead;
	if noun is not a person:
		say "This place doesn't have that sort of magic. Best talk to people, or at least human-type things." instead;
	if noun is nerds:
		say "You engage in small talk, and they start showing off weird knowledge, as if they're prodding you to ASK about something. Hm, what to ASK NERDS about.";
	else:
		say "You aren't sure what to ask, so the conversation isn't very incisive. Perhaps you should ASK about something, instead.";
	try asking noun about "mumbletypeg" instead;

tell-warn is a truth state that varies.

check telling about:
	if noun is the player:
		say "You give yourself a pep talk." instead;
	if noun is nerds:
		say "The nerds laugh. 'You can't TELL NERDS what you know. You should probably ASK NERDS instead.'" instead;
	if tell-warn is false:
		now tell-warn is true;
		say "You're an adventurer, not a ruler--probably better to ASK about stuff. In the future, the game will usually assume you mean to ask instead." instead;

part wolves-vowels

the wolves are neuter people. "Slavering werewolves aren't quite advancing on you. They're waiting for the first sucker to step forward and get shot. You think."

the wolves are plural-named.

Include (-
	has transparent animate
-) when defining wolves.

instead of taking wolves:
	say "Well, you can take them, but not in that sense."

understand "werewolves" as wolves.

description of wolves is "Drooling, hate in their eyes, etc. And a bit of fear. Of your gun."

part drapes-spread-red asp

the spread is flippable scenery. lgth of spread is 6. gpos of spread is 6. rpos of spread is 1. rgtext of spread is "[rcn][rc][rc][rc][rc][rc]". cert-text of spread is "-[d1][d1][d1][d1][d1]". rect-text of spread is "D[d1][d1][d1][d1][ast]S".

description of spread is "You feel fear going near the spread. It might lash out at you if you get too close, or if you tried to cut it with [if player has sliver]your sliver[else]something[end if]."

the drapes are plural-named scenery.

understand "cloth" as drapes when drapes are visible.

instead of doing something with the drapes:
	if action is procedural, continue the action;
	if current action is cutwithing or current action is unfolding:
		continue the action;
	say "This isn't some living room. (Sorry.) Those drapes are thick and oppressive. You'll need something sharp to cut through them."

description of drapes is "Too thick and heavy to walk through."

the spread is scenery.

understand "cloth" as spread when spread is visible.

instead of doing something with the spread:
	if current action is taking or current action is pushing or current action is pulling or current action is opening:
		say "The spread is too large and too heavy. Maybe you can examine it, to figure what to do with it." instead;
	continue the action;

the red asp is a flippable thing. lgth of red asp is 6. gpos of red asp is 6. rpos of red asp is 1. rgtext of red asp is "[rcn][rc][rc][rc][rc][rc]". cert-text of red asp is "-[d1][d1][d1][d1][d1]". rect-text of red asp is "D[d1][d1][d1][d1][ast]S".

description of red asp is "It's fortunately attached to the north side of the enclosure, much like the spread was before you disturbed it. It's fast, mean, vicious and very red, and you'd be no match for it even with [if player has sliver]that sliver[else]a weapon[end if]."

Include (-
	has transparent talkable
-) when defining red asp.

part sliver-livers-silver

the sliver is a thing. the sliver is flippable. rgtext of sliver is "[gcn][rc][rc][gc][gc][gc]". lgth of sliver is 6. gpos of sliver is 1. rpos of sliver is 6. cert-text of sliver is "S[d1][d1][ast]V[ast]E[ast]R". rect-text of sliver is "S[d1][d1][d1][d1][ast]R".

description of sliver is "Surprisingly sharp and of an odd metal. It could cut something as long as you didn't have to saw much."

the silver is a thing. the printed name of silver is "silver cylinder". understand "silver cylinder" and "cylinder" and "silver bullet" and "bullet" as silver when silver is visible.

understand "shell" as silver when silver is visible.

does the player mean doing something with the shell when silver is visible: it is unlikely.

description of silver is "[if silver is in shotgun]It's locked and loaded, Junior[else]It's shaped like a small rocket. It'd make a nifty projectile[end if]."

part maps-Spam

some maps are plural-named things.

understand "map" as some maps when mrlp is forest.

description of maps is "[if Ghouls' Slough is visited]They've worked fine. No need to use them again.[else if Enclosure is visited]You notice the Cruel Ones['] Enclosure at the bottom, but you can't make sense of the rest, yet--[randbla] and [randbla] seem scary, though.[else]They're labeled 'ALMOST LOST, MA' and claim to lead to the slayer layers and help you go off of fog--[randbla] and [randbla] seem scary, though. Maybe if you get past the turnstile they'll make more sense.[end if]"

the Spam is flippable.

part noughts-shotgun

the noughts are a plural-named thing in bubble. understand "naughts" as noughts. rgtext of noughts is "[rcn][rc][rc][rc][rc][rc][rc]". lgth of noughts is 7. gpos of noughts is 7. rpos of noughts is 1. cert-text of noughts is "-[d1][d1][d1][d1][d1][d1]". rect-text of noughts is "S[d1][d1][d1][d1][d1][ast]N".

understand "0s" and "zeros" and "zeroes" as noughts.

description of the noughts is "One look at them makes you feel like solving silly word puzzles, shooting stuff and chewing bubble gum.[paragraph break]There is no bubble gum in this game."

after doing something with noughts:
	if nau-nou is false and the player's command matches "naughts":
		say "You also remember some nonsense about there being two ways to spell naughts/noughts.";
		now nau-nou is true;

nau-nou is a truth state that varies.

the shotgun is a container. understand "shot/ gun" as shotgun when shotgun is visible.

the shotgun can be loaded. the shotgun is not loaded.


description of shotgun is "It's pretty dingy but still intimidating, and it's stamped NO THUGS in red. For whatever reason, it's six-barreled at the muzzle end[if shotgun is not loaded]. Not loaded, though[else]. It's loaded[end if]."

the muzzle is part of the shotgun. description of muzzle is "Six-barreled. Weird."

part shades-dashes

the dashes are a plural-named thing in the shell. the dashes are flippable. rgtext of dashes is "[rcn][rc][rc][rc][gc][gc]". lgth of dashes is 6. gpos of dashes is 3. rpos of dashes is 6. cert-text of dashes is "-[d1][d1][d1][ast]E[ast]S". rect-text of dashes is "S[d1][d1][d1][d1][ast]S".

the pattern is part of the dashes.

description of pattern is "Two upside-down semicircles next to each other, engraved in each of the dashes. Nothing too deep, just an imprint."

understand "semicircles" and "imprint" as pattern.

check taking the dashes:
	say "Too many of them. They'd spill all over. Not cool." instead;

description of dashes is "Each seems to have a pattern carved into it."

the shades are a plural-named disguise-piece. the elevation of the shades is 2.

understand "shade" and "glasses" as shades when shades are visible.

description of shades is "They're not dark enough to prevent you seeing anything. You suspect they'd fit your face just fine. They also have a small hook between the lens bits[if shades are part of the nose] and are attached to a nose[else if shades are part of beard]. A fake beard hangs snugly over the stems[end if]."

part nose-ones

the ones are a plural-named thing in the bucket. the ones are flippable. rgtext of ones is "[rcn][rc][rc][rc]". lgth of ones is 4. gpos of ones is 2. rpos of ones is 3. cert-text of ones is "-[d1][d1][d1]". rect-text of ones is "N[d1][d1][ast]E".


understand "1s" and "one" as ones.

check taking the ones:
	say "Too many of them. They'd spill all over." instead;


the nose is a disguise-piece. the elevation of the nose is 1.

to say nose-desc:
	if number of things that are part of nose is 0:
		say "nose";
	otherwise:
		say "nose (with shades attached to it)";

the printed name of the nose is "[nose-desc]".

description of nose is "It would probably slip off your own nose just fine with the proper support. Thankfully, it's not sealed, and it looks like it can be hooked up to something[if nose is part of beard]. It's currently hooked up to a fake beard[else if shades are part of nose]. It's currently hooked up to the shades[end if]."

description of the ones is "They easily pass the smell test for being ones."

part bread-beard

the bread is edible. the bread is flippable.

before taking a disguise-piece:
	if noun is part of a disguise-piece:
		say "No, why break up what you built?" instead;

the beard is a disguise-piece. the beard is edible. the elevation of the beard is 0.


the printed name of the beard is "[beard-desc]".

to say beard-desc:
	if number of things that are part of the beard is 0:
		say "beard";
	otherwise if number of things that are part of beard is 1:
		say "beard (with [a random thing that is part of the beard] hooked to it)";
	otherwise:
		say "full-blown beard disguise";

description of the beard is "[if nose is part of beard and shades are part of beard]Your beard is hooked to a nose and shades[otherwise if shades are part of beard]Your beard is hooked to some shades[otherwise if nose is part of beard]Your beard is hooked to a nose[else]It's a deplorably generic fake beard. It has a couple little bits that hook, one at the center and one at the edges, but they're not in use[end if]."

to decide what thing is the current getup:
	if nose is part of the beard or shades are part of the beard:
		decide on beard;
	if shades are part of nose:
		decide on nose;
	if shades are visible:
		decide on shades;
	if nose is visible:
		decide on nose;
	decide on beard.

the current getup is a thing that varies.

understand "disguise" as a disguise-piece.

instead of eating bread:
	say "It's not as disgusting as the meat you've seen, but you're not hungry now. There must be some other use.";

instead of eating beard:
	say "It's less appetizing as a beard than as bread. And if there WERE anything edible in it, ... eww.";

part smilies-missile

description of smilies is "On reflection, the smilies are the centerpiece of the poem. They're not purely happy, but not sarcastic or violent, either. They've had enough and are willing to launch, or be launched, into some great cause, exploding in the face of elitism and excess.". lgth of smilies is 7. gpos of smilies is 2. rpos of smilies is 6. rgtext of smilies is "[rcn][rc][rc][rc][gc][rc][rc]". cert-text of smilies is "-[d1][d1][d1][ast]I[d1][d1]". rect-text of smilies is "M[d1][d1][d1][d1][d1][ast]E".

the missile is a thing. "A rather soft and cheery looking missile lies here."

the missile is pushable between rooms.

instead of taking the missile:
	say "Too heavy. Maybe you can push it, since it's cylindrical, or PUT it in or on something over a short distance.";

description of missile is "It's covered with smiley faces and surprisingly nerfy to the touch. You haven't started glowing mysteriously when you're around it (well, a little, inside,) and it has the words SAD MEGA-DAMAGES crossed out, so maybe it isn't all that violent or deadly[one of]. Overall, the warhead inspires 'aw, rad, eh?' more than hard awe[or]You note the missile was paid for by a bake sale, so it really totally probably can't be harmful[stopping]."

part liches-chisel

Include (-
	has transparent animate
-) when defining liches.

The liches are scenery in Enclosure. The liches are flippable. rgtext of liches is "[rcn][rc][rc][rc][gc][rc]". lgth of liches is 6. gpos of liches is 3. rpos of liches is 1. cert-text of liches is "-[d1][d1][d1][ast]E[d1]". rect-text of liches is "C[d1][d1][d1][d1][ast]L".

understand "lich" as liches

after doing something with liches:
	set the pronoun it to liches;
	continue the action;

description of liches is "They seem to be moaning about being reduced to a tool of greater evil."

check listening when player is in Enclosure:
	if liches are visible:
		say "The liches are whining about their former lives. 'Tried to...I rotted...' One was a sculpted abstract artist worth far less than its fees, one cheated others for any amount of money it felt like, and one was an obsessive bodybuilder. All forgot about their spiritual life[if banshee is visible]. They almost drown out the banshee's screams[end if]." instead;
	if banshee is visible:
		say "The banshee is still moaning. Not threateningly, but annoyingly. Be nice to get rid of it, if you could." instead;

The chisel is a thing. it is not fixed in place.

description of the chisel is "It seems like it can PEEL all sorts of things you may not want to handle."

check going inside in Enclosure:
	if liches are in Enclosure:
		say "The liches won't let you past." instead;
	if drapes are in Enclosure:
		say "The drapes are too thick. They almost seem to enfold you in darkness before you can run away." instead;
	if red asp is in Enclosure:
		say "You need to get rid of the red asp, first." instead;
	if spread is in Enclosure:
		say "As you try to walk through the spread, it reforms into a nasty red asp! You back up quickly.[red-to]";
		the rule succeeds;
	if player does not have maps and player does not have Spam:
		say "[dibb]It's probably dangerous to go there without some sort of guide." instead;
	if player does not have shotgun:
		say "[dibb]You've got maps to help you, but man. That's scary. You need a weapon." instead;
	if shotgun is not loaded:
		say "You don't know what's to the north. [if prep paper is examined]You remember something about a lupine lineup[else if player has prep paper]You read the prep paper to note something about a lupine lineup[else]Things will probably only get more creepy and dangerous[end if], and that unloaded shotgun won't be enough[if silver is off-stage], and you don't have anything that works against them[else], but maybe you can refashion what you have into a different sort of weapon[end if]." instead;

to say dibb:
	say "A voice booms 'Dash in, be banished!' "

book reg-verbs

part going

roomgoing is an action applying to one thing.

understand the command "go [any room]" as something new.
understand the command "go to [any room]" as something new.
understand the command "gt [any room]" as something new.

understand "go [any room]" as roomgoing.
understand "go to [any room]" as roomgoing.
understand "gt [any room]" as roomgoing.

carry out roomgoing:
	let myrm be a location;
	if noun is location and mrlp is sortie:
		let myrm be roomroom;
	if noun is not a room:
		let myrm be the location of noun;
	otherwise:
		let myrm be noun;
	if myrm is location of player:
		say "You're already here. Or there. The precise grammar's neither here nor there." instead;
	if myrm is trips strip and trips strip is visited:
		say "You may mean to RETRY instead. Do so?";
		if the player yes-consents:
			try retrying instead;
	if map region of myrm is not mrlp:
		if map region of myrm is solved:
			say "You already solved that area." instead;
		say "That'd be hyperwarping to another region. Sorry." instead;
	if myrm is unvisited:
		say "You haven't gotten there yet." instead;
	if myrm is subsite: [start intro]
		say "Goodness, no." instead;
	if myrm is Dry Yard:
		say "You can't see the door to get back." instead;
	if myrm is Thickets: [end intro]
		say "You can't see the passage back." instead;
	if myrm is sf or myrm is rf: [start forest]
		say "You can't retrace your steps." instead;
	if player is in slough:
		say "You've done all you could in the enclosure and before. Onward." instead;
	if player is in frost forts: [end forest]
		say "It's time to deal with things, not run." instead;
	if myrm is the nick: [start sortie]
		say "No, you don't want to go back there." instead;
	if player is in the nick:
		say "That's not the magic way out. Sorry!" instead;
	if player is in cedars:
		block-cedars;
	if myrm is cedars and caskfillings is 2: [end sortie]
		say "You can't go back there." instead;
	if myrm is condo and condo-evac is true: [start metros]
		say "You wouldn't be welcome." instead;
	if myrm is anti-cool location and player has tulip:
		say "The nerds might outnumber you and take the tulip back. They've probably had enough of you." instead;
	if player is in abyss: [end metros]
		say "No going back now. This is the final confrontation." instead;
	if mrlp is resort:
		if red bull burdell is in hotspot:
			say "He's saying GET OUT just to be obnoxious and intimidating." instead;
		if player is in Means Manse:
			say "But you want to NOT go anywhere. NOT take any exits." instead;
		if red bull burdell is in lalaland:
			say "But you beat Red Bull Burdell! Just go east!" instead;
		say "Gotta keep going forward." instead;
	say "Zooomp...[line break]";
	move player to myrm;

Rule for printing a parser error when the latest parser error is the noun did not make sense in that context error (this is the straighten out go to rule) :
	if word number 1 in the player's command is "go" or word number 1 in the player's command is "gt":
		say "That wasn't a room I recognize. You can only go to rooms, not objects.";
		the rule succeeds;
	if the player's command matches the regular expression "^(hint|hints|info)\b", case insensitively:
		say "I couldn't find anything like that to hint." instead;
	say "Sorry, I understood the verb, but I didn't understand the noun." instead;
	continue the action;

part examining

check examining (this is the now-examined rule):
	if noun is a thing:
		now noun is examined;

part putting into gun

loading is an action applying to one thing.

understand the command "load [something]" as something new.
understand "load [something]" as loading.

carry out loading:
	if noun is not shotgun:
		say "That's not something you can load." instead;
	if player does not have silver:
		say "Nothing to load it with." instead;
	try inserting silver into shotgun instead;

understand the command "load [something] in/into/inside [something]" as something new.

understand "load [something] in/into/inside [something]" as inserting it into.

does the player mean inserting the silver into the shotgun: it is likely.

check inserting it into (this is the forest-insert rule):
	if second noun is sandwich:
		if noun is cow liver or noun is chicken liver:
			say "That might only make the sandwich grosser, and besides, the bread's already stuck to the meat." instead;
		otherwise:
			say "The sandwich won't be helped by adding anything." instead;
	if noun is sliver:
		if second noun is shotgun:
			say "It is about the right shape, but it doesn't seem quite molded into the right material." instead;
	if noun is silver:
		if second noun is shotgun:
			say "The silver fits in well. You hear some melodramatic nonsense in your head about a dreamer rearmed. More practically, you're ready for a firefight.";
			now shotgun is loaded;
			now silver is in lalaland instead;
	if second noun is shotgun:
		if shotgun is loaded:
			say "Already loaded." instead;
		say "You'll need to put a bullet in the shotgun. That's not a bullet." instead;

part cutwithing

cutwithing is an action applying to two things.

understand the command "cut [something] with [something]" as something new.
understand "cut [something] with [something]" as cutwithing.

check cutwithing:
	if second noun is sword:
		if noun is beats or noun is beast:
			try attacking noun instead;
		if noun is mattress:
			if bump is part of mattress:
				say "You don't need to cut the mattress to find what's in there." instead;
			otherwise:
				say "There's not much left in there." instead;
		say "The sword is probably for some big climactic fight. Don't go waving it around." instead;
	if second noun is not sliver:
		say "That's not sharp enough to cut." instead;
	otherwise:
		try cutting noun;

part cuting

before cutting:
	if player does not have sliver:
		say "You have nothing sharp enough to cut." instead;
	if noun is spread:
		say "As you get close to the spread, it turns bright red and bursts into something else--a red asp! You jump away[red-to]." instead;
	if noun is drapes:
		say "The drapes vanish as they are cut, revealing a doorway.";
		now drapes are in lalaland;
		now doorway is in Enclosure instead;
	if noun is wolves:
		say "You're way outnumbered. And you have a better weapon." instead;
	if noun is show hows tag or noun is knot:
		if player has sliver:
			ask-to-cut instead;
	if noun is player:
		say "Don't do that, now." instead;
	if noun is a person or noun is asp:
		try attacking noun instead;
	say "Useless vandalism." instead;

to ask-to-cut:
	say "You could cut the tag off the gadget with that, but this might break the gadget. Are you sure?";
	if the player direct-consents:
		now printed name of tagged gadget is "a gadget";
		now tagged gadget is broken;
		say "With a sad BOOOOP, the gadget shuts down. The tag flutters off. Hooray for adding to the challenge!";
		now show hows tag is in lalaland;
		now undo-code is 3;
	otherwise:
		say "Good choice.";

the doorway is scenery.

understand "door" as doorway when doorway is visible.

description of doorway is "It's pretty imposing. That spread, and those drapes, were huge. And what's behind--well, you can't see much, and it'd be nice to have some sort of guide."

instead of opening doorway:
	try going north;

instead of entering doorway:
	try going north;

instead of going inside in Enclosure:
	try going north;

part scoring

to decide which number is player-rank:
	if mrlp is resort:
		if resort is solved:
			decide on number of rows in table of ranks;
		else:
			decide on number of rows in table of ranks - 1;
	if Dry Yard is not visited:
		decide on 1;
	if notices section is not visited:
		decide on 2;
	if trips strip is not visited:
		decide on 3;
	let temp-rank be 3;
	increase temp-rank by number of solved regions;
	decide on temp-rank.

table of ranks
my-rank
"(ow,) me, a nervy every(wo)man"
"reduced deducer"
"stunted student"
"benigner beginner"
"solider soldier"
"a mature amateur"
"new hero now here"
"a smart gamin' anagrammist"

to say decide-rank:
	choose row player-rank in table of ranks;
	say "[my-rank entry]";

check requesting the score for the first time:
	say "Tips on points: worthless as Pintos. But since you asked..."

to say and-bypass:
	if number of bypassed regions is 0:
		continue the action;
	say " with [list of bypassed regions] bypassed";

carry out requesting the score:
	d "[number of bypassed regions] [list of bypassed regions] bypassed, [number of solved regions] [list of solved regions] solved, [number of unsolved regions] [list of unsolved regions] unsolved. Current rank in numbers is [player-rank].";
	if mrlp is nothing:
		say "[bug-report]: This location needs a region." instead;
	otherwise:
		say "You currently have [cur-score of mrlp] out of [max-score of mrlp] total points for the [mrlp] region.";
	repeat with Q running through regions:
		if number of visited rooms in Q > 0:
			if mrlp is not Q:
				say "You have scored [cur-score of Q] out of [max-score of Q] total points for the [Q] region.";
	if there is a solved region:
		say "[line break]Won now: the [list of solved regions] region[if number of solved regions > 1]s[and-bypass][end if]";
	otherwise:
		say "[line break]You haven't solved any regions yet";
	say ". You have the rank of [b][decide-rank][r].";
	if debug-state is true:
		say "(Only seen in debug) See the total scores possible?";
		if the player yes-consents:
			repeat with Q running through regions:
				if max-score of Q > 0:
					say "[Q] [max-score of Q][line break]";
	the rule succeeds;

part wearing (Self-ID Fields)

the disguise-piece creation rule is listed before the can't put onto what's not a supporter rule in the check putting it on rules.

the disguise-piece conglomeration rule is listed before the can't put what's not held rule in the check putting it on rules.

the tie disguises rule is listed before the block tying rule in the check tying it to rules.

understand the command "hook" as "tie".

check tying it to (this is the tie disguises rule):
	if noun is a disguise-piece and second noun is a disguise-piece:
		ignore the block tying rule;
		try putting the noun on the second noun instead;

[note try all combinations]

[alternate possibility is to do an increment sort of thing]
[then the disguise-piece-piece with the greatest weight, everything is a part of it]
[needed for descripton]

check putting it on(this is the disguise-piece conglomeration rule):
	if noun is a disguise-piece:
		[if noun is part of nose:
			try putting nose on second noun instead;]
		let A be a random thing incorporating noun;
		if A is nothing:
			continue the action;
		otherwise:
			try putting A on second noun instead;
		if player does not have A:
			try taking A;
		do nothing instead;

to say you-int:
	say "You must almost blend in, with that! But you [if player is in fields]look over at[else]remember[end if] the spirits walking through, and they have just a bit more."

before wearing a disguise-piece:
	if noun is part of the beard:
		say "(Well, the beard.)[line break]";
		try wearing the beard instead;
	if noun is part of the nose:
		try wearing the nose instead;

check wearing the shades:
	if shades are not part of anything:
		say "You put them on, briefly feel cool, and take them off again. You can't help feeling they might go better with something else." instead;
	if shades are part of the nose:
		say "[you-int]" instead;
	if nose is not part of the beard:
		say "[you-int]" instead;

check wearing the nose:
	if shades are part of the nose:
		say "[you-int]" instead;
	otherwise:
		say "The plastic nose just slips off yours. Maybe it needs support." instead;

check wearing the beard:
	if shades are not part of the beard:
		say "It would just slip off your face as-is[if nose is part of the beard], even hooked up to the nose[end if]. Now what could hang on your face? And stay there?" instead;
	if nose is not part of the beard:
		say "[you-int]" instead;

report wearing the beard:
	if player wore the beard:
		say "You adjust the disguise you're already wearing." instead;
	say "It's suitably silly to fit in with the folks passing through the turnstile[if player is in trodes] to the west[else if player is in s-e-d] to the east[end if], but different enough you're not conforming.";
	the rule succeeds;

check putting it on(this is the disguise-piece creation rule):
	if noun is a disguise-piece and second noun is a disguise-piece:
		if elevation of second noun > elevation of noun:
			try putting second noun on noun instead;
		say "The [noun] hook[if noun is not shades]s[end if] over the [second noun] easily and naturally.";
		now noun is part of second noun;
		if shades are part of nose and nose is part of beard:
			now shades are part of beard;
		if nose is part of beard and shades are part of beard:
			say "[line break]You've made a full disguise now!";
			now beard is wearable;
		otherwise:
			do nothing;
		the rule succeeds;
	if noun is a disguise-piece and second noun is not a disguise-piece:
		say "Only one of those would make part of a clever, tricky disguise." instead;
	if second noun is a disguise-piece and noun is not a disguise-piece:
		say "Only one of those would make part of a clever, tricky disguise." instead;

book waiting

to say die-die-die:
	say "Before collapsing from the cold, you fire the shotgun in desperation. Six missiles fly out, and they fall just after you do! Nat Egam receives news of your death, and the forts are not frozen by the time he gets there. The good news: the next adventurer will be able to use your gadget. The bad? Er...";
	end the story;

instead of waiting:
	if player is in frost forts:
		say "[one of]Ish. Very shivery.[or]Looks like you have a Mexican standoff, if Mexico were in Greenland.[or]The wolves get antsy. I mean, they don't turn into ants. You are getting colder.[or]Your blood runs cold as the wolves inch closer. These aren't totally causally related.[or]If you don't do something cold-blooded, you'll be too cold-blooded to do anything.[or][die-die-die][stopping]" instead;
	if player is in Means Manse:
		say "Well, you sort of almost have it, but you want to (not) do something with the exits." instead;
	if player is in Dry Yard and goat is not visible:
		say "There's something important to do here. But what?" instead;
	say "[one of]Time passes... [no line break][or][stopping]";
	say "[one of]A mist seeps...[or]I see stamps...[or]Me, sit? Passe![or]Sit, see maps...[at random]";

book senses

part smelling

the block smelling rule is not listed in any rulebook.

before smelling the player:
	say "As good-smelling as ever. You remembered your deodorant this morning. Yay, you." instead;

check smelling in Trips Strip:
	say "There's a mixture of smells coming from the shops. You could probably go up to one and examine it." instead;

check smelling in Dry Yard:
	if noun is not toga and toga is visible:
		say "Something here smells vaguely like a barn." instead;

check smelling the toga:
	say "Woo. Stinky. You can't quite identify which animal, being a city slicker." instead;

instead of entering mattress:
	try sleeping instead;

carry out smelling:
	if noun is yard-door:
		say "It doesn't smell any more." instead;
	if noun is clover:
		if player has clover:
			say "Still got that planty smell, though it's more the touch that's important." instead;
		otherwise:
			say "It's too close to the ground, and the smell doesn't matter." instead;
	if noun is cask:
		if cask is closed:
			say "Faintly alcoholic. Might be honey, too. Not very strong, though." instead;
		otherwise:
			if oils are in cask:
				try smelling oils instead;
			otherwise:
				say "The cask smells vaguely of the honey-ish alcohol that was in it." instead;
	if noun is night thing:
		say "The one good thing about its roaring and flailing is, you can't get close enough to REALLY smell it." instead;
	if noun is oils:
		say "The oils smell like nothing else and everything else at the same time. They're sacred, you know." instead;
	if noun is drainage:
		say "It smells like the opposite of a garden. Powerful." instead;
	if noun is gardenia:
		say "Smells wonderful, like cooking." instead;
	if noun is chicken liver or noun is cow liver:
		say "Thankfully, it's been frozen, so it smells vaguely like freezer-burn." instead;
	if noun is taco:
		say "Awesome. You take righteous pride in your culinary ability." instead;
	if noun is perfume:
		say "Eurgh." instead;
	if noun is wolves:
		say "You wouldn't get near enough." instead;
	if noun is HOTSAUCE:
		say "Nostril-clearing." instead;
	if noun is lettuce:
		say "Pleasantly inoffensive." instead;
	if noun is steak:
		say "Wonderful." instead;
	if noun is bread:
		say "Not like fresh bread--more store-bought." instead;
	if noun is sandwich:
		say "Frozen enough not to smell. Thankfully." instead;
	if noun is Spam:
		say "It reminds you of long-gone days you liked its smell. Before having a taste." instead;
	if noun is tomato:
		say "Could be worse, like rotting meat. You're worried it might be very rotten on the inside." instead;
	if noun is motto:
		say "Okay, it doesn't PHYSICALLY stink." instead;
	if noun is Hotel:
		say "You've smelled worse, but the night thing's [if night thing is not visible]lingering stench is [end if]pretty bad." instead;
	if noun is slough:
		say "I suppose it's a smell of nearby evil or something." instead;
	if noun is frost forts:
		say "Decayin[']. Cyanide. Nice day!" instead;
	if location is kitchen:
		say "The smell of delicious fried comfort foods. You'll probably not want to make anything too nutritious here." instead;
	if location of player is cedars:
		say "Still strong and pleasant. Better than ample maple or an a-ok oak. Those cedars.";
	if player is in sf or player is in rf:
		if stew is visible:
			say "You catch a whiff of stew. What kind, you're not sure." instead;
		if teas is visible:
			say "You catch a whiff of teas. What kind, you're not sure." instead;
	say "Nothing unusual." instead;

part listening

the block listening rule is not listed in any rulebook.

condo-count is a number that varies.

to say thissy:
	say "[one of]A passing conversation among the rushing and yelling for others to move aside: 'I bet they take the hotel fees out of our severance.'[paragraph break]'THIS.'[paragraph break]You've always hated when people say that, but it feels nearly profane today[or]Another 'THIS' makes you cringe, as if it were profanity[stopping]."

check listening:
	if player is in potshot hotspot:
		if riot is in hotspot or protest is in hotspot:
			say "The [if riot is visible]riot[else]protest[end if] sounds like it can go on for a while, but thankfully, it's not getting violent." instead;
	if red bull burdell is in potshot hotspot:
		say "Tenso-tones (notes?) add drama to it all." instead;
	if location of player is Anti-Cool Location:
		say "The nerds are nattering about something or other[one of]. Their RPG GRP[or]. 'Vie, Red, Derive!' they chant at someone marking up scratch paper[or]. Complaining of their briefs['] fibers[or]. How to be a nerd mo['] modern[or]. Their time in the Undergrad Nerd Guard[or]. How they like to bug Sundberg[or]. How they're an IQ/clue clique[or]. How the newcomer might be a decent pretend nerd pet[or]. Stupid people who don't vote, or who vote stupid when they do[or]. Some dolt who got TOLD[or]. How text adventures are for losers stuck in the eighties[or]. How nothing's stopping dumb people from getting on the internet and building the same soundproof bunker they have[or][stopping]." instead;
	if location of player is Abyss:
		if beats are visible:
			say "The beats are worse than ever[if siren is visible], accompanied by that siren[end if]. The Hears-Share sound system dishes out supersonic percussion--a croupiness, if you will." instead;
		otherwise:
			say "The beats are gone, replaced with a beast's roaring[if siren is visible], which clashes nastily with the siren[end if]." instead;
	if mrlp is metros:
		if player is in Bile Libe:
			if words are visible:
				if player has heaths:
					say "'That's just words. Shift them to a weapon, and you'll have something!'" instead;
				if player has sheath:
					say "'Talk is cheap! Now, weapons, there's something valuable!'" instead;
				if player has begonias or player has noise bag:
					if words are not in bag:
						say "'Put a bag over it!' you hear." instead;
					otherwise:
						say "The semi-sheltered Bile Libe offers some respite from the beats, especially with the words gone. But not enough." instead;
				say "The words drown out the beats for the moment. They're sharp words, attacking words, hard to shield yourself from, but they're local enough they can't be twisted." instead;
		if player is in red camp:
			try examining music instead;
		if night thing is visible:
			say "The groans from the Night Thing's organs are blocking out the usual thumping. For now." instead;
		if player is in cordoned red condo:
			say "The conversation changes subject rapidly and randomly." instead;
		say "[one of]Acoustics so caustic.[or]Phoniest hip tones.[or]Fatal a-flat.[or]Thumping's SUMPTHING.[or]Ouch! Hearin['] Hernia.[in random order]" instead;
	if player is in Busiest Subsite:
		say "[one of][thissy].[or]'That lecture'll fix your helpless spells, eh?' someone walking by asks.[or]'A resume masseur!' someone exclaims.[or]'Boy, I need to re-care about my career,' someone actually says with a straight face.[or]'Tell yourself I'M PREE PRIME!'[cycling]" instead;
	if player is in Dry Yard:
		if goat is visible:
			say "The goat snores slightly as he half-naps, but that's it." instead;
		otherwise:
			say "The toga flutters in some wind you can't quite feel." instead;
	if player is in notices:
		if gateman is visible:
			say "'Y'can't have anything worth listening to without anything to ask me about!' says Nat Egam." instead;
	if player is in Sorted Trodes:
		say "The notes stone contains written, not musical, notes." instead;
	if player is in frost forts:
		say "AAAIIIEEE...OOOUUUOOO..." instead;
	if player is in moor:
		if anapest is visible:
			try listening to the anapest instead;
		if peasant is visible:
			say "With less, he whistles, eh?" instead;
	if player is in Rived Drive:
		say "You hear something from above the [p-s] to the east, but you'll need to get closer to make out details." instead;
	if player is in kitchen:
		say "[one of]A song with the chorus 'He oft partook of the okra pot.' The tune and the thought of okra make you gag, even when you realize it's a novelty song and not serious.[or]It's actually sort of catchy, if you think about it.[or][no-you]ou hate the stupid okra song, again. You need to get cooking on something else.[stopping]" instead;
	if player is in slough:
		say "[one of]Far arf[or]You can't hear the dog any more. You're not sure if you want to[or]You realize you'll be freaked out whether or not you can hear the dog[stopping]." instead;
	if doll house is visible:
		if static is visible:
			say "You hear static coming from the doll house." instead;
		otherwise:
			say "Each attic is tacit now." instead;
	if player is in astral altars:
		say "You hear mumblings you aren't in the ELITE LISTS. They make you see red." instead;
	if player is in sf or player is in rf:
		if shout is visible:
			say "You still hear that shout[one of], and if you listen again, you could get a couple of words.[or] that turns you red from its silliness: [one of]'Hut! SO!'[or]'Uh?! SOT!'[or]'Us, HOT!'[in random order][stopping]" instead;
	say "[one of]Silent[or]Quite quiet[cycling]." instead;

to say no-you:
	say "[one of]No, y[or]Y[stopping]";

book metaverbs

part walkthroughing

walkthroughing is an action out of world.

understand the command "walkthrough" as something new.

understand "walkthrough" as walkthroughing.

carry out walkthroughing:
	say "This game's gblorb file should come packaged with an InvisiClues-style HTML file and, in older versions, a text file called walkthrough.txt. However, there is a risk that will spoil a lot you won't want, especially since the areas are compartmentalized.[paragraph break]You can ask for hints with the HINT command--they should deal with the puzzle currently restricting you the most and may be doled out slowly to avoid spoilers.";
	the rule succeeds;

part swearing

instead of swearing obscenely:
	say "[one of]No [']scusing on cussing[or]Swearing? [']s wearing[cycling][plus-check]."

to say plus-check:
	if notices section is visited:
		say "[one of]. Plus, I checked. Or had someone more vulgar than me check. Nothing[or][stopping]";

instead of swearing mildly:
	if the player's command matches the text "drat":
		say "Don't dart to such talk.";
	otherwise:
		try swearing obscenely;

part abouting

abouting is an action out of world.

understand the command "about" as something new.

understand "about" as abouting.

carry out abouting:
	say "Shuffling Around is the first of two wordplay games in [if cur-score of intro is 0]a series I don't want to spoil the name of until you get your first point[else]the Stale Tales Slate[end if]. It was inspired by playing Nord and Bert Couldn't Make Head or Tail of It and then wondering if there was any way to riff on it. Here's what I came up with. I suspect they thought of it, too, but it would've been impossible to stuff in two 140k disks.";
	say "[line break]Shuffling Around is intended to be POLITE on the Zarfian cruelty scale. It's possible to die, but the deaths are meant to be joke deaths. Barring a horrid bug, there is no way to make the game unwinnable, although you may lock yourself out of getting full points, which is just a vanity thing.";
	say "[line break]POLITE doesn't mean easy, though, and it doesn't guarantee user-friendliness. I also hope there is little guess-the-verb[if cur-score of intro > 0]--well, not VERB, that's the sequel[end if]. Just find the right word to say, type it, and move on. My hope is that the tough ones are clued multiple ways, so you are not too frustrated[if notices section is unvisited]. There are hint items[end if].";
	say "[line break]You can see the testers who gave me transcripts with the CREDITS, which are rather long. They slugged through a lot! If you want to see technical contributions, type TECH. For general release information, type RELEASE.[paragraph break]Also, I still appreciate transcripts! So, if you like, type TRANSCRIPT, then send reports--especially ones with comments (* at the start of a line)--to [email].[paragraph break]If you enjoyed this, the sequel, A Roiling Original, is over twice the size. It has seven areas to explore from [unless trips strip is visited]the main world-hub[else]what the Trips Strip becomes[end if].";
	the rule succeeds;

report switching the story transcript on:
	say "Thanks for taking this transcript! If you've never made a transcript before, it's not hard. Type TRANSCRIPT and save to a text file and start any comments with ; or * or ?. Then locate the file and mail it to me at [email]. Don't worry if you don't make many comments--I can often see ways I didn't mean for the player to get stuck.[paragraph break]	While Shuffling Around's puzzles are rather stable, I'm interested in anything from 'this is broken' or 'this was hinted poorly' to 'you missed this joke.' Authors enjoy getting transcripts--I mean, after we realize what we did wrong, we can learn a lot.[paragraph break]You can also report and see issues at [ghsite].[paragraph break]Again, my email address is [email]. Thanks!";
	continue the action;

part creditsing

creditsing is an action out of world.

understand the command "credits" and "credit" as something new.

understand "credits" and "credit" as creditsing.

carry out creditsing:
	if cur-score of Intro is 0:
		say "There is a list of websites I would like to credit. But it might spoil things before you score anything. So I'll just list beta-testers and general help.[paragraph break]";
	say "[if cur-score of Intro > 0]Tester Street residents ('no on tiredness:')[paragraph break][end if]Adri, Anthony Hope, DJ Hastings, Gavin Myers-Leman, Hulk Handsome ([if cur-score of intro > 0]who nicely handles hokum like huge bars and bear hugs in his own IFComp 2012 game[else][i]shout-out not spoiled til you score a point[r][end if],) Joey Jones, John Nitchals, Paul Lee, Robert Patten and Tomie Campf, in alphabetical first-name order. They found 700+ bugs.[paragraph break]Source (or cues) : Heartless Zombie, who found a lot of bugs AND helped tighten up my post-release code to lessen horrible spoilery disambiguations.[paragraph break]Storied Editors (post-release fixes) also include: David Wilkins, Jason Orendorff, Matt Weiner, Sean M. Shore and Toby Ott. Reviews on the Internet also helped me fix things--Carl Muckenhoupt and Simon Carless discovered unwinnable states but were still kind enough to remark favorably.[paragraph break]A hat tip to ClubFloyd for a wonderful transcript that turned up a lot of usability issues. Their patience and perseverance helped me a lot![paragraph break]It must be noted that several bugs that popped up in the several versions were due to me trying to slip in one more small thing without adequate re-testing. If there is anything obvious (and there was, in the initial release,) it is my fault and not theirs. So play the most recent release! IFArchive.org, or this game's IFDB page (http://ifdb.tads.org/viewgame?id=ch39pwspg9nohmw) has it.[paragraph break]John Nitchals made the cover art. Cover image is a derivative of 'LED scrolling nametags' (http://www.flickr.com/photos/clanlife/385380701/) by Phil Campbell, used under a Creative Commons Attribution 3.0 Unported (CC BY 3.0) license: http://creativecommons.org/licenses/by/3.0/[paragraph break]Marco Innocenti provided moral support early on.[paragraph break]Contact me with suggestions (technical or aesthetic) at [email], and you can join these worthy people above.[paragraph break]Also, thanks to the folks at intfiction.org who helped me code things. You can also find who the pseudonyms really are at http://ifwiki.org/index.php/Shuffling_Around.[paragraph break]Finally, type SITES for a list of sites that helped[if cur-score of intro is 0], which will totally spoil things right now[end if].";
	say "Also, thanks to Google Code and BitBucket, which contained original source control and issues, and GitHub, where I currently have a repository: [ghsite].";
	say "Oh, hey, do you wish to see what the pen names are right now? Some people were kind enough to take them at my request.";
	if the player yes-consents:
		say "John Nitchals = Wade Clarke.[line break]Gavin Myers-Leman = Melvin Rangasamy.[line break]Tomie Campf = Kevin Jackson-Mead, who used 'Pam Comfite' as an anagram of 'IFComp Meta' the year before--it's worth checking out the 2011 competition for those games alone.[paragraph break]Hulk Handsome is also a cool pseudonym, but it's one he uses lots of places. Oh, and I guess 'Lupe Lea' could've been an anagram for Paul Lee, but I never asked him, and I didn't have my anagram name cranker til I got serious with Roiling."

part releaseing

releaseing is an action out of world.

understand the command "release" as something new.

understand "release" as releaseing.

carry out releaseing:
	say "Each version of Shuffling Around should contain release notes, but here is a brief summary:[paragraph break]";
	say "Shuffling Around's first release was for IFComp 2012, on September 29th.";
	say "Shuffling Around's second release was mushier--I intended to make an open beta, but that didn't work, so we'll call it January 2013. It included Heartless Zombie's hash tables.";
	say "Shuffling Around's third release went out in August of 2014. It was on the back burner a bit, but I refined the hash tables, added error checking, and also nailed down things like Last Lousy Points and in-game hints, both with the paper and with item descriptions. I finally fixed some blocker bugs in Store M, and I also normalized random text, adding things like map locations in Store F.";
	say "Shuffling Around's fourth release went out in March of 2015. It was largely a maintenance release, but it simplified the introduction, put a random puzzle in Store F, and added object-based hinting.";
	say "[line break]The current edition of Shuffling Around should include Invisiclues-style HTML, a color Trizbort map, a walkthrough, a heatmap of (rough) relative area difficulty, and a list of changes from the previous release.";
	say "The project 'super-secret' code names are A Purged Upgrade (2), Version I Revision (3), Le Redux Deluxer (4), and Few Neat New Feat (5). The last is a spoonerism, but I was running out of options.";

part teching

teching is an action out of world.

understand the command "tech" as something new.

understand "tech" as teching.

carry out teching:
	say "Many people helped with technical aspects of Shuffling Around. There are the people who wrote the extensions. Andrew Plotkin showed some I6 code for taking transcripts and other things. Climbingstars helped with Bypass Disambiguation (not present til post-comp) and setting pronouns, among other things. Heartless Zombie betrayed his name by pointing me to hash tables to process 'good guesses' in the player's commands, which cleared up a lot of thinking that bugged both me and the player. This is not in release 1 and is probably the biggest fix. He also helped me with other neat stubs I've re-used since then.[paragraph break]All three of these people's efforts spilled into this game's sequel[if cur-score of intro > 0] in the Stale Tales Slate[end if], A Roiling Original. So I am doubly thankful.[paragraph break]Juhana Leinonen's JavaScript code helped me create the HTML for pseudo-Invisiclues.[paragraph break]Genstein's Trizbort app helped me create the map for release 3 (black and white) and Jason Lautzenheiser's modifications for release 4 (region color, borders and more) helped me, and maybe you, visualize things that much better.";
	say "And it's already mentioned in the credits, but [ghsite] is where the project is hosted. I recommend using source control if at all possible. Even if you just use it to keep a backup, or be sure of what you changed, it can save a lot of trouble.";
	the rule succeeds;

part sitesing

sitesing is an action out of world.

understand the command "sites" as something new.

understand "sites" as sitesing.

carry out sitesing:
	if cur-score of intro is 0:
		say "Last chance spoiler warning. Sure you want to look?";
		if the player yes-consents:
			do nothing;
		otherwise:
			say "Ok. Back to the game." instead;
	say "http://wordsmith.org/anagram/ -- Anu Garg's Rearrangement Server at wordsmith.org was invaluable to me. Hard to believe I've known about it for fifteen years. You've probably seen it before, too, but it's the big one for the main game mechanic. The sayings that go with each anagram have also helped me in many other ways. It's still fun after all these years.[line break]http://www.anagrammy.com/anagrams/faq6.html[line break]http://www.english-for-students.com/One-Word-Anagrams.html[line break]http://www.enchantedlearning.com/english/anagram/ was quite nice for common anagrams by subject.[line break]http://www2.vo.lu/homepages/phahn/anagrams/oneword.htm[line break]http://www.ssynth.co.uk/~gay/anagram.html[line break]http://www.wellho.net/resources/ex.php4?item=p669/anagram (basic succinct PERL anagram finder)[line break]http://boards.straightdope.com/sdmb/archive/index.php/t-291149.html for specific words and also ideas how to script more complex stuff[line break]http://www.rinkworks.com/words/oddities.shtml[line break]http://www.sporcle.com/ had many puzzles that helped me determine what was fair and what wasn't[line break]http://jamesgart.com/anagram/[line break]PERL for letting me parse through word-to-word anagrams and also helping me break one promising word into two.[paragraph break]I'd be interested if someone from France can ref these sites to make a similar game, someone from Spain could take pains, or a German manager could do so too. It'd be interesting to see.";
	say "And it's already mentioned in the credits, but [ghsite] is where the project is hosted. I recommend using source control if at all possible. Even if you just use it to keep a backup, or be sure of what you changed, it can save a lot of trouble.";
	the rule succeeds; [forgot where I found the names from]

chapter optionsing

optionsing is an action out of world.

understand the command "options" as something new.

understand "options" as optionsing.

carry out optionsing:
	say "You read about options in your dope tan notepad.";
	try padding "options";
	the rule succeeds;

part verbing

verbing is an action out of world.

understand the command "verb" as something new. understand the command "verbs" as something new.

understand "verb" as verbing. understand "verbs" as verbing.

carry out verbing:
	say "You read about verbs in your dope tan notepad.";
	try padding "verbs";
	the rule succeeds;

part possing

possing is an action out of world.

understand the command "poss" as something new.

understand "poss" as possing.

possibles is a truth state that varies.
min-alert is a truth state that varies.

carry out possing:
	now min-alert is true;
	if possibles is true:
		now possibles is false;
	otherwise:
		now possibles is true;
	say "Switching [if possibles is true]on[else]off[end if] minimum/maximum available point notification in the status line. [one of][paragraph break][i][bracket]Note: this is a quasi-spoiler of sorts, since watching the maximum possible score drop may mean you have missed an easter egg. Or watching the minimum score increase may mean you found one.[no line break][r][close bracket][or][stopping][line break]";
	the rule succeeds;

report requesting the score for the first time:
	poss-display;

to poss-display:
	if possibles is false and min-alert is false:
		ital-say "You can toggle seeing the minimum points to pass an area, or maximum achievable points, by typing POSS. This is a potential spoiler, since the minimum score increasing indicates you found a Last Lousy Point, and the maximum score decreasing indicates one is no longer available. But maybe you'd like that sort of hint, too.";
		now min-alert is true;
		pad-rec "poss";

to say poss-range:
	if poss-score of mrlp > min-score of mrlp:
		say "[min-score of mrlp]-[poss-score of mrlp]";
	else:
		say "*[poss-score of mrlp]*";

book stubs

yn-auto is a number that varies.

to decide whether the player direct-consents:
	if yn-auto is 1, decide yes;
	if yn-auto is -1, decide no;
	if the player consents, decide yes; [inside direct-consents]
	decide no;

section switching

the can't switch on unless switchable rule is not listed in any rulebook.

check switching on:
	if noun is steer button or noun is shoot button or noun is trees button or noun is hoots button:
		try pushing noun instead;
	if noun is odor:
		say "You're not sure how to switch that odor. You wonder if you need to switch it a little, or a lot." instead;
	say "[if noun is flippable]You'd like to, but you don't see how, yet[else]You feel some resistance, as if you can't switch [that-those of noun][end if]." instead;

to say that-those of (p - a thing):
	say "[if p is plural-named]those[else]that[end if]"

section regional manip

to solve-region (sre - a region):
	consider the notify score changes rule;
	say "[line break][sre] node: done! A bump-up, bam![wfak]";
	now sre is solved;
	if sre is forest:
		now forest-x is checkedoff;
	if sre is sortie:
		now sortie-x is checkedoff;
	if sre is metros:
		now metros-x is checkedoff;
	item-warp;
	move player to trips strip;
	if number of solved regions is 3 and player has gadget and gadget-secured is true:
		say "Man! With the SECURE settings on your gadget, you can RECUSE if you want and hit Store R.";

to say espec-xtra:
	if number of things in cabinet > 0:
		say ", especially after it dumped its old contents, the stuff you forgot to take, in your hands[if tinfoil is in cabinet]. Well, except the tinfoil info-lit[end if]";
	if info-lit is in cabinet:
		now info-lit is in lalaland;
	now player has all things in cabinet;

to item-warp:
	d "So far you have [cur-score of mrlp] of [max-score of mrlp] points.[line break]";
	now last-loc of mrlp is location of the player;
	if number of carried not warpable things > 0 or number of worn not warpable things > 0:
		if mrlp is solved:
			if mrlp is intro:
				say "This game just removed an item it should not have. [bug-report]! => ([list of carried not warpable things]) ([list of worn not warpable things]).";
			otherwise:
				say "Out of nowhere swoops the [if cabinet is in lalaland]nice bat[else]cabinet[end if]. [run paragraph on][if number of solved regions is 2]You're about to complain, but then you realize it's helping you not carry all that junk around. It sits there, out of reach[else if cabinet is in lalaland]You're still a little spooked, but grateful, as it swoops away[else]The cabinet's trying its best to be good and helpful, even making enthusiastic squeaky noises, and you wonder if maybe you can do something for it[end if][espec-xtra].";
				if cabinet is in notices section:
					now cabinet is in trips strip;
		now all carried not warpable things are in lalaland;
		now all worn not warpable things are in lalaland;

to reset-regions:
	repeat through table of lastlocs:
		now the item-list of r entry is {};
		now the worn-list of r entry is {};

section reg-inc

ignore-line-break is a truth state that varies;

to reg-inc:
	increment the cur-score of mrlp;
	increment the score;

part directional cleanup

up-nearby is a truth state that varies.

before going up:
	if player is in Rived Drive:
		try going east instead;
	if player is in Elm Train Terminal or player is in condo or player is in underside or player is on fuzzy looking wall:
		continue the action;
[	if up-nearby is true:
		say "[if cur-score of Intro is 0]I, uh, lied. There's nowhere you can go up in the game. Or nearby. But that was a clue[else]Well, since you've scored a point, you might guess why 'I'd go nearby or up' is a hint[end if].";
		now up-nearby is false instead;]
	if player has wings and player is in Isle:
		try flying instead;
	say "You have no boost boots for dances to ascend. And most of the time, if you need to go up, there'll be something clear to climb. Hopefully." instead;

before going down in busiest subsite:
	say "You're not waiting for the elevator back down. And the only stairs are fire stairs, which will set off an alarm." instead;

before going down:
	if player is in busiest subsite or player is in cordoned red condo:
		continue the action;
	if player is on fuzzy looking wall:
		try getting off the fuzzy looking wall instead;
	if player is in trips strip:
		if sortie-x is visible or metros-x is visible:
			continue the action;
		otherwise:
			say "You can't see any [if sortie is solved or metros is solved]other [end if]way down[if sortie is not solved or metros is not solved][else] any more[end if]." instead;
	say "You see no clear way down. Usually there'll be stairs, if you need to." instead;

part pause-manipulation

chapter remindersing

remindersing is an action out of world.

understand the command "reminders" as something new.

understand "reminders" as remindersing.

reminders is a truth state that varies. reminders is true.

carry out remindersing:
	say "Now we will [if reminders is false]not [end if]have reminders appear on reloading a saved game.";
	now reminders is whether or not reminders is false;
	showme whether or not reminders is true;
	the rule succeeds;

chapter wait for any key

first-wfak is a truth state that varies. first-wfak is false.

to say wfak:
	if debug-state is false:
		if first-wfak is false:
			say "(this is the first in-game pause[if numsaves > 0] after a saved game[end if]. Whenever the game pauses without a cursor in the future, you need to push any key to continue.)";
			now first-wfak is true;
		wait for any key;

numsaves is a number that varies.

report saving the game:
	increment numsaves;
	if reminders is true:
		now first-wfak is false;
	continue the action;

chapter pause the game

to ptg: [possibly deprecated as wait for any key works better or seems to]
	if debug-state is false:
		pause the game;

book irreg-verbs

chapter biteing

biteing is an action applying to one thing.

understand the command "bite [something]" as something new.

understand "bite [something]" as biteing.

carry out biteing:
	if noun is cabinet:
		say "The cabinet doesn't deserve that. Plus, no good surface." instead;
	if noun is nice bat:
		say "It would bite back harder and germier." instead;
	if noun is toe:
		say "It'd be hard to hold in your teeth." instead;
	if noun is saltine:
		say "It'll only take one bite to EAT. You can't save half for later and get another hint." instead;
	try eating noun instead;

chapter instructionsing

instructionsing is an action out of world.

understand the command "help/info/instructions" as something new.

understand "help" and "info" and "instructions" as instructionsing.

carry out instructionsing:
	say "[if location of player is busiest subsite]There's not much to do here, but EXAMINEing different things may give you a clue what's going on[else if cur-score of intro is 0]You need to do something with the odor[else]What you did with the odor will clue the rest of the game[end if]. This is a part of all the puzzles in the game, but you'll have to do other things, too[one of].[paragraph break]Note: If you want actual hints, you may wish to try HINT or HINTS[or][stopping].";
	the rule succeeds;

chapter knocking

knocking is an action applying to one thing.

understand the command "knock [something]" as something new.
understand the command "knock on [something]" as something new.

understand "knock [something]" as knocking.
understand "knock on [something]" as knocking.

does the player mean knocking the black door: it is very likely;
does the player mean knocking the cabinet: it is very likely;
does the player mean knocking the yard-door: it is very likely;
does the player mean knocking the metallic: it is very likely;
does the player mean knocking the turnstile: it is very likely;
does the player mean knocking a portal:
	if cabinet is visible:
		it is unlikely;
	it is very likely;

carry out knocking:
	if noun is a portal:
		say "Better just to try to enter." instead;
	if noun is cabinet:
		say "That's potentially an act of violence." instead;
	if noun is black door:
		say "[if black door is part of silo]Nobody answers, unsurprisingly[else]How polite! And ineffective[end if]." instead;
	if noun is yard-door:
		say "[if player has bugle]It's a bit awkward knocking with the bugle in your hand[else]You brush against the bulge as you knock[end if]. You get no response." instead;
	if noun is metallic door:
		say "[if player has tulip]You don't need to go back[else if Anti-Cool Location is visited]Nah, just walk in[else]Weird. It doesn't make any noise. Or the noise drowns quickly. You suspect the door's intended to keep people out, though[end if]." instead;
	if noun is turnstile:
		say "A good way to scrape your knuckles, seeing how quickly it turns." instead;
	say "Knock, knock. Who's there? Conkk, conkk." instead;
	the rule succeeds;

chapter grinding

grinding is an action applying to one thing.

understand the command "grind" as something new.

understand "grind [something]" as grinding.

carry out grinding:
	if canister is visible:
		try inserting noun into the canister;
	otherwise:
		say "There appears to be nothing that can grind anything here.";
	the rule succeeds.

chapter untieing

untieing is an action applying to one thing.

understand the command "untie [something]" as something new.

understand "untie [something]" as untieing.

carry out untieing:
	if noun is heaths or noun is stems:
		say "They're actually not tied, though they seem like they should be. Hmph. Magic." instead;
	if noun is ropes:
		say "You have better things to do than take apart potentially useful ropes. Like getting up that [p-s] over there." instead;
	if noun is swing:
		say "The knots where it is tied to the tree are too high up." instead;
	say "That doesn't seem tied to anything.";
	the rule succeeds.

chapter reading

understand the command "read" as something new.
understand "read [something]" as reading.

reading is an action applying to one thing.

check reading (this is the reading is almost examining rule):
	if noun is tiles:
		say "The tiles blur a bit as you (de)-focus just right. You see subtleties in the blues and brown that seem to spell out LEST I. But the effort, your eyes water, and you see red a bit." instead;
	if noun is great grate:
		try examining the branding instead;
	if noun is toga:
		try examining the toga-writing instead;
	if noun is gadget:
		try examining tag instead;
	if noun is gadget-screen:
		try scaning location of player instead;
	if noun is op and controls are not in op:
		say "You notice that it's underwritten (in red) by Orton LSC, whoever they are." instead;
	if noun is gateway:
		say "'E. g., man, TA!' is written in red, beneath the WARMUP/UM, WARP text. [if board is examined]The red text is just like A TAN GEM and such on the broad board[else]Maybe it's significant that the writing's red, and that can help you[end if][if mega ant is off-stage and gateman is off-stage]. There's also a helpful ENTERING TOO SOON WILL NOT KILL YOU message, which is nice[end if]." instead;
	try examining the noun instead;

chapter following

following is an action applying to one thing.

understand the command "follow [something]" as something new.

understand "follow [something]" as following.

carry out following:
	if noun is masses:
		say "You are swept up with the people entering the lecture.";
		try going east instead;
	if noun is above-sign or noun is passage:
		say "You duck inside the passage.";
		try going inside instead;
	if noun is gy or noun is line of no life:
		try going north instead;
	if noun is riot or noun is protest:
		say "They aren't convincing enough to make you hate yourself." instead;
	if noun is potters:
		say "Yours is the way of the adventurer, not the artist." instead;
	if noun is the player:
		say "Tautological." instead;
	if noun is the beats:
		if player is in Elm Train Terminal:
			try going east instead;
		say "No telling where they're coming from." instead;
	say "[if noun is a person]They don't[else]That doesn't[end if] seem to be going anywhere.";
	the rule succeeds;

chapter playing

playing is an action applying to one thing.
blowing is an action applying to one thing.

understand the command "play [something]" as something new.
understand "play [something]" as playing.

understand the command "blow [something]" as something new.
understand "blow [something]" as blowing.

does the player mean playing the bugle: it is very likely;
does the player mean blowing the bugle: it is very likely;

carry out blowing:
	if noun is not bugle:
		say "It really only makes sense to BLOW an instrument. Well, CLEAN sense." instead;
	try playing noun instead;

carry out playing:
	if noun is not bugle:
		say "That's not an instrument you can play." instead;
	if player is in notices section:
		say "[if mega ant is in notices section]The mega ant is not moved[else]Nothing seems to happen to the gateway[end if][if bugle-played is true]. Maybe you need to do something different than play the bugle here[end if]." instead;
	if player is not in Dry Yard:
		say "You should not have the bugle at this point, so this is a [bug-report]" instead;
	if bugle-played is false:
		say "The note from the bugle causes the door to swing back and forth, [if bolt is in lalaland]just as when you got rid of the bolt[else]even with the bolt in place. You can probably enter now[end if].";
		now bugle-played is true;
	else:
		say "Nothing further happens." instead;
	the rule succeeds;


chapter lifting

lifting is an action applying to one thing.

understand the command "lift [something]" as something new.

understand "lift [something]" as lifting.

carry out lifting:
	if noun is great grate or noun is getaway:
		try opening the noun instead;
	say "(I'm assuming you meant taking it.)";
	the rule succeeds;

chapter unfolding

unfolding is an action applying to one thing.

understand the command "unfold [something]" as something new.

understand "unfold [something]" as unfolding.

carry out unfolding:
	if noun is poem and poem is folded:
		say "The poem deserves obscurity. Folding it out of view was a good first step." instead;
	if noun is drapes:
		say "They are much too heavy and thick." instead;
	say "You don't need to, or you can't." instead;
	the rule succeeds;

chapter pating

pating is an action applying to one thing.

understand the command "stroke/pet/pat [something]" as something new.

understand "stroke [something]" and "pet [something]" and "pat [something]" as pating.

carry out pating:
	if noun is spout:
		say "You sense that you can fill the cask by placing it under the spout. Having faith and all." instead;
	if noun is goat:
		say "The goat bleats and pushes your hand away with its hoof. It's too tired for that nonsense." instead;
	if noun is shrub:
		say "It's a shrub, not the real thing, and it's a bit pointy. Someone took time to create it." instead;
	if noun is wolves:
		say "Man, you must really like dogs, or something. Or trying to break text adventure games." instead;
	say "It's not couth to touch." instead;
	the rule succeeds;

chapter danceing

danceing is an action applying to nothing.

understand the command "dance" as something new.

understand "dance" as danceing.

carry out danceing:
	say "You won't get caned for that, but it isn't constructive." instead;

chapter folding

folding is an action applying to one thing.

understand the command "fold [something]" as something new.

understand "fold [something]" as folding.

the poem can be folded. poem is not folded.

understand "pome" as poem when debug-state is true.

the creases are part of the poem. understand "diagonals" as creases.

description of creases is "[one of]One down the middle and two diagonally up from its base--two parallel to the middle crease bisect the diagonals.[paragraph break]Oh, forget it, let's try the non-technical explanation. From what you remember from being ten, it'll fold into a plane. Maybe one that can't fly very far, but a plane.[or]Wow! The peasant's poem is multifaceted! It could be a plane if you fold it, too![stopping]"

check throwing poem at when poem is folded:
	say "[one of]You make some feeoow noises as it flies, then some PFF BMM noises as you pretend it drops a bomb. It's fun, but it'll never cause any actual damage[or]You play at air-wars some more[stopping]. Wouldn't it be neat if you could drop bombs, and it'd make people nicer?" instead;

understand "folded/ paper/ plane/" as poem when poem is folded.

tried-smilies is a truth state that varies. tried-smilies is false.

does the player mean folding the poem: it is very likely;

does the player mean folding the prep paper: it is very unlikely.

carry out folding:
	if noun is prep paper:
		say "No way! That's got valuable information." instead;
	if noun is maps:
		say "They aren't big, unwieldy maps. They're surprisingly easy to read." instead;
	if noun is tinfoil:
		if player is in strip:
			say "You find a random trash can behind a random store and drop the info-lit in.";
			now tinfoil is in lalaland instead;
		say "It probably deserves to be crumpled." instead;
	if noun is shades:
		say "You try to execute a def move with the shades but fail." instead;
	if noun is not poem:
		say "That might be fun, but it won't do much." instead;
	if smilies are part of the poem:
		now tried-smilies is true;
		say "You're about to fold the poem up, but those smilies launch into a surprising display of emotion. It's an impressive passive resistance--they do it all without any violence. Maybe they can do more than just be part of a poem." instead;
	if poem is folded:
		say "It already is." instead;
	now noun is folded;
	say "You fold the paper, and it looks sort of like a paper plane.";
	now printed name of poem is "folded paper plane";
	now creases are in lalaland;
	the rule succeeds;

understand "folded paper plane" as poem when poem is folded.

the panel is a thing.

to decide whether plane-or-panel:
	if player has poem and poem is folded:
		decide yes;
	if panel is enclosed by location of the player:
		decide yes;
	decide no;


the wires are part of the panel.

description of wires is "They're not, like, chewed or anything. They seem [if panel is part of silo]not to be breaking anything[else]in decent shape[end if]."

description of panel is "All sorts of capacitors and resistors and such. You [if panel is part of silo]thankfully didn't[else]probably don't[end if] have to understand that to know where to use it."

chapter filling

filling is an action applying to one thing.

understand the command "fill [something]" as something new.

understand "fill [something]" as filling.

the oils are a plural-named thing in sacred cedars. rgtext of oils is "[rcn][if caskfillings is 2][gc][gc][else][rc][rc][end if][rc]". lgth of oils is 4. gpos of oils is 4. rpos of oils is 1. cert-text of oils is "-[d1][if soil is not off-stage]I[ast]L[else]-[d1][end if][d1]". rect-text of oils is "S[d1][d1][ast][if soil is off-stage]L[else]O[end if]".

the description of oils is "[if oils are not in cask]You try looking up the spout for a glimpse of the oils, but it doesn't work[else]You can't see through the cask--or its narrow hole very well--but you remember the oils being thick and somewhat golden. You trust they are sacred enough for your job, though[end if].".

understand "oil" as oils when oils are visible.

instead of taking oils:
	say "They'd go through your fingers[if player has cask]. You can pour the oils, or fill the cask, instead[end if].";

rule for printing a locale paragraph about the oils:
	now oils are mentioned;

caskfillings is a number that varies. caskfillings is usually 0.

carry out filling:
	if mrlp is not sortie:
		say "You don't need that verb for this region. Though, if it makes sense to use it, let me know via email." instead;
	if noun is scraped wall:
		if player has sack:
			if hay is in sack:
				try inserting hay into scraped wall instead;
			if straw is in sack:
				try inserting straw into scraped wall instead;
		say "You don't have any sort of stuffing to put in the wall." instead;
	if noun is fridge:
		say "You don't need a separate storage space." instead;
	if sack is not visible and cask is not visible:
		say "You don't see any containers." instead;
	if noun is sack:
		if straw is in sack or hay is in sack:
			say "You already have something in there." instead;
		if straw is visible:
			try inserting straw into sack instead;
		if cask is visible:
			try inserting hay into sack instead;
	if location of player is not cedars:
		if oils are in cask:
			say "The cask is full already." instead;
		say "You may have to be more specific. Try PUT x IN y instead." instead;
	if noun is sack:
		say "The oils would leak out of the sack." instead;
	if noun is oils:
		if oils are in cask:
			say "You have enough." instead;
		say "You want to fill a container that can hold the oils." instead;
	if noun is not cask:
		say "You need something solid to pour the oils into." instead;
	if silo is in moor and soil is in moor:
		say "A voice. It must be Lois. 'WIN,' she whines[one of]. You won't be getting any more oils[or][stopping]." instead;
	if oils are in cask:
		say "[cask-full]." instead;
	say "Gainly laying the cask under the spout, you pour in some oils.";[check for 3rd time]
	increment caskfillings;
	if caskfillings is 2:
		say "[line break]A voice calls SO NOW HALLS SHALL SWOON. You're pretty sure it has a particular one in mind. You hope you've gotten what you need.";
		now rpos of oils is 3;
	now oils are in cask;
	the rule succeeds;

part odd verbs/actions

chapter badabooming

to badaboom:
	d "Badabooming.";
	if the player's command matches the regular expression " ":
		say "Those words have no power here.";
	otherwise:
		say "That word has no power here.";
	reject the player's command;

chapter sorrying

instead of saying sorry:
	say "I can't do anything with that apology."

chapter xyzzying

xyzzying is an action applying to nothing.

understand the command "xyzzy" as something new.

understand "xyzzy" as xyzzying.

carry out xyzzying:
	say "[one of]What a mess! Hard to do anything with that[if goat is off-stage]. You'll see why[end if].[or]This sort of game, I can only make lame meta-jokes with that[if cur-score of Intro > 0]...you should've figured that out[else], and if you knew why, that'd be sort of a spoiler[end if].[or]Testing all 29 possibilities...just to make sure...nope.[or]Testing the 119 possibilities...including duplicates...[wfak].[wfak].[wfak].[wfak].[wfak].[wfak].[wfak].[wfak].[wfak].[wfak]nope. You happy now?[or]If you're looking for jokes, that's the best I can do.[stopping]";
	the rule succeeds;

chapter shooting

shooting is an action applying to one thing.

understand the command "shoot/fire at/ [something]" as something new.

understand "shoot at [something]" as shooting.
understand "shoot [something]" as shooting.

understand "fire at [something]" as shooting.

does the player mean shooting the wolves when the wolves are visible: it is very likely.

does the player mean shooting the hoots button when the hoots button is visible: it is very likely.

Rule for clarifying the parser's choice of hoots button when shooting: do nothing.

carry out shooting:
	if noun is hoots button:
		say "You shoot the hoots button with some of your magic.";
		try fliptoing shoot button instead;
	if noun is emitter:
		try switching on the emitter instead;
	if noun is shotgun:
		say "Mention what you want to shoot with the gun." instead;
	if player does not have shotgun:
		say "No gun." instead;
	if noun is drapes:
		say "[if silver is off-stage]If you had ammo, y[else]Y[end if]ou'd probably want to shoot something more dangerous than the drapes." instead;
	if noun is the player:
		say "Oh dear. Did the puzzles really lead you to that? I'm so sorry[if shotgun is not loaded], and you didn't even get to load the gun[end if]!" instead;
	if shotgun is not loaded:
		say "Your shotgun is not loaded[if wolves are not visible], and there's nothing threatening enough around, yet[end if]." instead;
	if noun is dice:
		say "Gambling? At a dramatic point in the narrative like THIS?!" instead;
	if noun is wolves:
		say "Blam! Some part of the shotgun you couldn't see carves the silver bullet into sixths. Each flies off in a slightly different direction--taking out the wolves. The poison works quickly on them, and the frost forts and iced dice begin to melt quickly with a 'WHAT? THAW? HAWT!' Behind them, you see the strip. You walk back there.[paragraph break]The lupine lineup is no more, thanks to your adept hit in the death pit![paragraph break]You remember seeing the word LOGOI in an igloo that melted--you wonder if you could've said it to save yourself the whole trip in an alternate universe.";
		reg-inc;
		solve-region Forest;
		now wolves are off-stage instead;
	if noun is vowels:
		say "For someone who I'm guessing likes text adventures, that'd be kind of out of character.[paragraph break]Plus, they aren't really attacking you. Yet." instead;
	say "That'd be wasting firepower.";
	the rule succeeds;

chapter peeling

the dont-peel-taken-chicken rule is listed before the use-cur-liv rule in the does the player mean rulebook.
the dont-peel-taken-cow rule is listed before the use-cur-liv rule in the does the player mean rulebook.

test pe with "purloin chisel/gonear chicken/rules/peel liver/peel liver"

peeling it with is an action applying to two things.

understand the command "chisel/pry/scrape/peel" as something new.

understand "peel [thing] with [thing]" as peeling it with.
understand "scrape [thing] with [thing]" as peeling it with.
understand "pry [thing] with [thing]" as peeling it with.

understand "livers" as the plural of glopmeats.

does the player mean doing something with livers when a glopmeat is visible: it is very unlikely.

rule for supplying a missing second noun while peeling: now the second noun is chisel.

does the player mean peeling the chicken liver with when the player has the chicken liver (this is the dont-peel-taken-chicken rule): it is very unlikely.

does the player mean peeling the cur-liv with when the player does not have the cur-liv (this is the peel-untaken-liv rule): it is very likely.

does the player mean peeling the cow liver with when the player has the cow liver (this is the dont-peel-taken-cow rule): it is very unlikely.

does the player mean peeling the cur-liv with when the player has the cur-liv: it is very unlikely.

does the player mean peeling with the chisel: it is likely.

does the player mean doing something with the cur-liv (this is the use-cur-liv rule):
	if the current action is peelxing:
		if cur-liv is not stuck:
			it is very unlikely;
	if the current action is peeling with:
		if cur-liv is not stuck:
			it is very unlikely;
	it is likely.

check peeling sandwich with:
	say "You can just do so with your hands.";
	try opening sandwich instead;

to decide which glopmeat is the non-cur-liver:
	if cur-liv is chicken liver:
		decide on cow liver;
	decide on chicken liver.

does the player mean inserting into cur-liv: it is unlikely;
does the player mean putting on cur-liv: it is unlikely;
does the player mean tying to cur-liv: it is unlikely;

[does the player mean tying noun to itself: it is very unlikely.
does the player mean putting noun on itself: it is very unlikely.]

check putting a glopmeat on a glopmeat:
	try tying noun to second noun instead;

check inserting a glopmeat into a glopmeat:
	try tying noun to second noun instead;

check tying cow liver to chicken liver:
	try tying chicken liver to cow liver instead;

check tying chicken liver to cow liver:
	say "You can't blend them that thoroughly by yourself. Some device might be more handy." instead;

carry out peeling it with:
	if second noun is not chisel:
		say "Wrong instrument." instead;
	if noun is show hows tag:
		say "That'd be one way to remove it. But it would probably disable the gadget.";
		ask-to-cut instead;
	if noun is not a glopmeat:
		say "That doesn't need to be scraped. Try something stuck to something." instead;
	if noun is in canister:
		say "The chisel and the blades would have a big fight first." instead;
	if noun is not stuck:
		say "You already peeled it off." instead;
	say "Cr-r-r-r-k. The chisel successfully leverages the freezer-burned [noun] from the wall.";
	now noun is not stuck;
	now player has noun;
	the rule succeeds;

peelxing is an action applying to one thing.

understand the command "peel/pry/scrape [thing]" as something new.

understand "peel [thing]" as peelxing.
understand "pry [thing]" as peelxing.
understand "scrape [thing]" as peelxing.

carry out peelxing:
	if noun is barcode:
		say "[dont-peel]" instead;
	if noun is sandwich:
		try opening sandwich instead;
	if player does not have chisel:
		say "You have nothing to peel anything with." instead;
	try peeling noun with chisel instead;

chapter itemdefaulting

itemdefaulting is an action applying to one thing.

understand the command "[something]" as something new.

understand "[something]" as itemdefaulting.

carry out itemdefaulting:
	d "Itemdefaulting: [noun].";
	if noun is a portal and noun is examined:
		try entering noun instead;
	try examining noun instead;

book endgame

chapter amusing

to say nfi:
	say "[one of]? [or]? (region suggestions are not fully inclusive--search the source for 'as a mistake' in case I missed something, if you want to be exhaustive)[stopping]"

table of big yucks
reg	yux
--	"XYZZY several times?"
--	"In the intro, trying SANDLER or LANDERS around the snarled darnels, or changing the toga to a gato[nfi]"
--	"Reading the name list until the editorializing doesn't change?"
--	"Examining store c? Several times?"
--	"STROBE in the Trips Strip?"
forest	"The following anagrams in the forest where appropriate: Nile, File, DESTRO, amps, steam, padres, rasped, spader[nfi]"
forest	"Saying GOD or GOB in the ghouls['] slough?"
sortie	"Eating the hot sauce or the taco?"
sortie	"Examining the parmesan cheese?"
sortie	"Praying in Sacred Cedars?"
sortie	"Throwing the paper plane?"
sortie	"The following anagrams in the sortie where appropriate: stake, takes, teaks, pears, limes, thicken, lacy, mope or tap (by Pat), similes, sever, serve, POTUS[nfi]"
metros	"Trying to explore the condo before you cleared it?"
metros	"Putting the barcode on the tomato?"
metros	"Scanning the deadbeat?"
metros	"Asking the beats anything?"
metros	"The following anagrams in the metros where appropriate: sap, asp, smitten, trounce, stalker, snores, senors, tar, reins, risen, lair(s), lira, liar(s), bates[nfi]"
--	"the following anagrams in the resort where (in)appropriate: slite, poser, prose, achin, roister, sex it"
--	"Converting the sprig to prigs in the Rived Drive?"
--	"Any anagrams I missed? Let me know. I'll credit you. Or if you find another silly joke to throw in, tell me. I enjoy them."

Rule for amusing a victorious player:
	let totals be 0;
	say "Have you tried:[paragraph break]";
	repeat through table of big yucks:
		if there is no reg entry or reg entry is solved:
			say "--[yux entry][line break]";
		else unless there is no reg entry:
			increment totals;
	if totals > 0:
		say "There were [totals] funny things in the region you missed."

last-list is a number that varies.

listshowing is an activity.

listlisting is an activity.

listlasting is an activity.

Table of Final Question Options (continued)
final question wording	only if victorious	topic	final response rule	final response activity
"see a L/LIST (1-[number of rows in table of megachatter]) of random [one of](now quasi-alphabetized) [or][stopping]NPC text, or LN for the next one"	true	"l/list [number]" or "[number]"	--	listshowing
--	true	"l/list"	--	listlisting
--	true	"ln"	--	listlasting

rule for listlasting:
	increment last-list;
	if last-list > number of rows in table of megachatter:
		now last-list is 1;
	try lishing last-list instead;

listshowwarn is a truth state that varies.

rule for listshowing:
	if number understood is 0:
		carry out the listlisting activity;
		the rule succeeds;
	if number understood > number of rows in table of megachatter or number understood < 0:
		say "Please try 1-[number of rows in table of megachatter], or 0 to list everything.";
		the rule succeeds;
	now last-list is the number understood;
	try lishing the number understood;

lishing is an action applying to one number.

carry out lishing:
	if listshowwarn is false:
		say "(You can use no number at all to see which numbers give which lists)";
		now listshowwarn is true;
	if number understood is 0:
		carry out the listlisting activity;
	if number understood > number of rows in the table of megachatter:
		say "Maximum choice is [number of rows in the table of megachatter]." instead;
	choose row number understood in table of megachatter;
	if number understood is 1: [hardcoded due to punctuational trickiness]
		say "Name list's last entry is 'Boy--that's the last. You can't imagine you'll ever fit in.'";
	else:
		say "[descr entry]: [if there is a lasties entry][paragraph break]LAST ENTRY: [lasties entry][else](no last entry)[end if]";
	let this-tab be mytab entry;
	let idx be 0;
	let lump-amount be maxbeforepause entry;
	let big-total be number of rows in this-tab;
	let total-read be 0;
	let cur-count be end-count entry;
	let max-count be maxidx entry;
	while cur-count < max-count:
		let this-max be cur-count + lump-amount;
		while cur-count < this-max and cur-count < max-count:
			increment cur-count;
			choose row cur-count in this-tab;
			say "[cur-count]. [blurb entry][line break]";
		if cur-count < max-count:
			say "[cur-count] of [big-total] so far. Type q to quit, b to go to the beginning or any other key to continue.";
			let cholet be the chosen letter;
			if cholet is 66 or cholet is 98:
				now cur-count is 0;
			if cholet is 113 or cholet is 81:
				choose row with mytab of this-tab in table of megachatter;
				now end-count entry is cur-count;
				try-ln;
				the rule succeeds;
		else:
			choose row with mytab of this-tab in table of megachatter;
			now end-count entry is 0;
			try-ln;
			the rule succeeds;

ln-yet is a truth state that varies.

to try-ln:
	if ln-yet is false:
		say "Note: LN shows the next list.";
		now ln-yet is true;

rule for listlisting:
	let myrow be 0;
	let listrows be number of rows in table of megachatter;
	say "Below are lists of anagram texts that the game sorts randomly at the start. The parentheses are the region, then the number of texts.";
	repeat through table of megachatter:
		increment myrow;
		say "[myrow]. [descr entry] ([table-size entry]) [line break]";

book tables

check fliptoing china when china is in lalaland:
	say "You already shook that out of the links. You need to concentrate on the links, now." instead;

book undo tags

undo-code is a number that varies. undo-code is usually 0.

volume in-game map

[intro region]
index map with notices section mapped east of trips strip.
index map with thickets mapped east of notices section.
index map with dry yard mapped east of thickets.
index map with subsite mapped south of dry yard.

[roster]
index map with Astral Altars mapped south of Trips Strip.
index map with Isle mapped south of Astral Altars.
index map with Rived Drive mapped east of Isle.
index map with Potshot Hotspot mapped east of Rived Drive.
index map with Means Manse mapped east of hotspot.

[forest]
index map with sf mapped west of Trips Strip.
index map with rf mapped south of sf.
index map with slough mapped west of sf.
index map with Frost Forts mapped west of slough.
index map with slough mapped north of enclosure.

[sortie]
index map with centrifuge mapped north of notices section.
index map with the nick mapped north of kitchen.
index map with moor mapped east of roomroom.

[metros]
index map with terminal mapped north of slough.
index map with abyss mapped west of elm train terminal.

[non-game rooms]
index map with lalaland mapped east of The Nick.
index map with bullpen mapped east of lalaland.

volume beta testing - not for release

include STS tests by Andrew Schultz.

[With my new script, this never needs the "not for release" twiddled]

description of main-window is "bug"

when play begins (this is the beta tester instruction rule):
	say "This version of the game involves special tricks for the player to warp through the game. It is 'volume beta testing' in the source and should be marked as NOT FOR RELEASE before release. However, it's okay now.[paragraph break]Type [b]dc[r] for all debug commands, but the one most helpful to me is [b]hd[r], which tracks the hints you receive. Shufhints.glkdata is a text file created and appended every move that you can send to me to make sure hints are valid. It's 2 dirs up in Windows and in /home in Mac.";
	if debug-state is false:
		say "After pushing a key, you'll be asked to save to a transcript file immediately, so you don't forget. Thanks for Beta testing![wfak]";
		try switching the story transcript on;

chapter sring

[* this is a stub to test the random forest puzzles. The player can force them a certain direction. sr Diagonal = N then E, rs diagonal = e then N, sr N = n then S. ]

sring is an action applying to one visible thing.

understand the command "sr/rs" as something new.

understand "sr [direction]" and "rs [direction]" as sring.

does the player mean sring sr-dir: it is likely.

to decide which direction is sr-dir:
	if self-id fields is not visited:
		decide on up;
	if stew is off-stage and teas are off-stage:
		decide on west;
	if shout is off-stage and thorn is off-stage:
		decide on north;
	if thorn is off-stage and stew is off-stage:
		decide on northwest;
	if thorn is off-stage and teas are off-stage:
		decide on northeast;
	if shout is off-stage and stew is off-stage:
		decide on southwest;
	if shout is off-stage and teas are off-stage:
		decide on southeast;
	decide on down;

rule for supplying a missing noun while sring (this is the switch directions rule):
	say "(rule invoked)[line break]";
	now the noun is up;

carry out sring:
	if player is in sf or player is in rf:
		say "In here, odd things might happen if you change the puzzle. But changing it at the fields will send you to the Trips Strip." instead;
	let uf be false;
	if noun is inside or noun is outside or noun is up or noun is down:
		say "You need to specify a planar compass direction for SR/RS. Usage is as follows:[paragraph break]SR NW means you should go north in Softer Forest, west in Rest of Forest.[line break]SR W means you go west in Softer, east in Rest of.[line break]RS flips these two directions in all cases." instead;
	if noun is north or noun is west or noun is south or noun is east:
		repeat with gi running through guiders:
			if godir of gi is noun:
				now gi is in sf;
			else if godir of gi is opposite of noun:
				now gi is in rf;
			else:
				now gi is off-stage;
	else:
		if character number 1 in the player's command is "s":
			now uf is true;
		now all guiders are off-stage;
		repeat through table of srdir:
			if mydir entry is noun:
				if uf is true:
					now i1 entry is in sf;
					now i2 entry is in rf;
				else:
					now i2 entry is in sf;
					now i1 entry is in rf;
	if player is in self-id fields:
		if trodes is visited or s-e-d is visited:
			say "This shouldn't be a problem, but you've explored some other rooms after hitting the fields.";
		else:
			say "Zapping you back to the Trips Strip, with new directions to plow through.";
		now player is in trips strip;
		decrease cur-score of forest by 2;
	say "Softer Forest: [godir of random guider in sf].";
	say "Rest of Forest: [godir of random guider in rf].";
	the rule succeeds;

table of srdir
mydir	i1	i2
northwest	thorn	stew
northeast	thorn	teas
southwest	shout	stew
southeast	shout	teas

section sring debug - not for release

[* this needs to be separate, as the release version won't "know" the file of test results.]

after sring:
	append "[random guider in sf] in Softer Forest, [random guider in rf] in Rest of Forest.[line break]" to the file of test results;

chapter hahaing

[* this shows what you can GLEAN and ANGLE every move ]

hahaing is an action out of world.

understand the command "haha" as something new.

understand "haha" as hahaing.

carry out hahaing:
	if haha is false:
		now helpdebugflag is true;
		now haha is true;
	otherwise:
		now haha is false;
	the rule succeeds;

haha is a truth state that varies.

every turn (this is the haha-debug rule):
	if haha is true:
		if helpdebugflag is true:
			let temp-haha be just-print;
			now just-print is false;
			all-say "DEBUG: GLEAN = [run paragraph on]";
			try gleaning;
			all-say "DEBUG: ANGLE = [run paragraph on]";
			try angleing;
			now just-print is temp-haha;

chapter hint debugs

[ * this is a stub to make sure we are printing out the debug version of the hints]

every turn (this is the print debug hints rule):
	if hintfull is true or helpdebugflag is true:
		now just-print is false;
		try mainhelping;
		now just-print is true;

chapter ufcing

[ * this resets the centrifuge for re-testing]

ufcing is an action applying to nothing.

understand the command "ufc" as something new.

understand "ufc" as ufcing.

carry out ufcing:
	now centrifuge-stopped is false;
	now numset-ever-greater is false;
	now consecutive-binary-tries is 0;
	decrement the cur-score of sortie;
	d "Resetting centrifuge.";
	now the numset of the dial is 0;
	if player is not in centrifuge:
		move player to centrifuge;
	the rule succeeds;

chapter askthruing

[* this asks gateman about pretty much everything in the room or before ]

askthruing is an action applying to nothing.

understand the command "askthru" as something new.

understand "askthru" as askthruing.

carry out askthruing:
	repeat with the-thingamabob running through the list of visible things:
		say "Asking about [the-thingamabob].";
		try objasking gateman about the-thingamabob;
	repeat with the-thingamabob running through the list of things in subsite:
		say "Asking about [the-thingamabob].";
		try objasking gateman about the-thingamabob;
	repeat with the-thingamabob running through the list of things in Dry Yard:
		say "Asking about [the-thingamabob].";
		try objasking gateman about the-thingamabob;
	the rule succeeds;

chapter xraying

[* xray all visible things]

xraying is an action applying to nothing.

understand the command "xray" as something new.

understand "xray" as xraying.

carry out xraying:
	repeat with ABC running through visible things:
		if ABC is flippable or ABC is the location:
			say "Xraying [ABC]:";
			try xmxing ABC;
	the rule succeeds;

chapter stiting

[ * xc controls if you can get saltine effects]

xcing is an action out of world.

understand the command "xc" as something new.

understand "xc" as xcing.

carry out xcing:
	if xray-cheat is false:
		now xray-cheat is true;
	else:
		now xray-cheat is false;
	say "Now the game will act as though you [if xray-cheat is false]don't [end if]have x-ray vision.";
	the rule succeeds;

chapter sc1ing

[* this gives you the gadget and scans everything]

sc1ing is an action applying to nothing.

understand the command "sc1" as something new.

understand "sc1" as sc1ing.

carry out sc1ing:
	if player does not have tagged gadget:
		say "Giving you the gadget." instead;
		now player has tagged gadget;
	repeat with ABC running through visible things:
		say "Scanning [ABC]:[line break]";
		try scaning ABC;
	the rule succeeds;

test sfs with "sc1/switch gadget/sc1/switch gadget"

chapter xalling

[* shows results from examining all visible things]

xalling is an action applying to nothing.

understand the command "xall" as something new.

understand "xall" as xalling.

carry out xalling:
	repeat with this-item running through visible things:
		say "[this-item]: [no line break]";
		try examining this-item;
	the rule succeeds;

chapter dcing

[* describes what beta testers can/should do]

dcing is an action applying to nothing.

understand the command "dc" as something new.

understand "dc" as dcing.

carry out dcing:
	say "[b]SR[r] is a test-fixing command that lets you decide which puzzles to solve at the two random rooms at the start of the forest. SR NE puts them N and E, SR E puts them E and W, and RS reverses which is in which room.[paragraph break][b]RJ[r] jumps to various regions, 1-4, 1=f, 2=i, 3=m, and 4=r, the finale. 5 puts you in the final room, the Means Manse.[line break]sk 1, sk 2 or sk 3 solves a region with 1=f 2=i 3=m and 4=r.[line break]disas disassembles the disguise if you want to try to break that.[line break]ff freezes flips, so if you want to try, say, X BUTTON and X without undoing, you can.[line break][b]TS[r] skips the intro and gets you near the stores.[line break]hf shows full hints every move.[line break][b]CAP[r] caps the number of random texts printed at the number you type. It is useful for testing the text that appears for the last random text, but lots has been done by me.[line break][b]hd toggles printing full hints to a debug file called shufhints, or shufhints.glkdata. This is bolded annoyingly to stress that any hint transcript is helpful to me, if you can get it working, but don't force it. [r]Shufhints(.glkdata) is a text file that appears in c:\program files\inform 7 (or 2 directories up) on Windows and in your home directory on the Mac.[line break]hn turns hints off.[line break]stit toggles whether you always have x-ray vision."

chapter hfing

[* shows full hints each turn]

hfing is an action applying to nothing.

understand the command "hf" as something new.

understand "hf" as hfing.

carry out hfing:
	if hintfull is false:
		say "Now showing full hints with the game. Not recommended for testers--use hd instead.";
		now hintfull is true;
	otherwise:
		say "Now hiding hints.";
		now hintfull is false;
	the rule succeeds;

chapter hding

[* dumps hints to a debug file]

hding is an action applying to nothing.

understand the command "hd" as something new.

understand "hd" as hding.

carry out hding:
	if helpdebugflag is false:
		say "Hint debugging on, exported to shufhints.glksave[if hintfull is false]. Type HF to get full hints each move[end if].";
		append "==================starting hint debug session[paragraph break]" to the file of shufhints;
		now helpdebugflag is true;
	otherwise:
		say "Hint debugging off.";
		append "==================ending hint debug session[paragraph break]" to the file of shufhints;
		now helpdebugflag is false;
	the rule succeeds;

chapter tsing

[* TS starts you out with nice toys, at the strip with the gadget/paper]

tsing is an action out of world.

understand the command "ts" as something new.

understand "ts" as tsing.

carry out tsing:
	if trips strip is visited:
		say "Already beat intro. RETRY to get back." instead;
	increase the cur-score of intro by 4;
	if Dry Yard is unvisited:
		move player to Dry Yard, without printing a room description;
	if notices section is unvisited:
		move player to notices section, without printing a room description;
	now nametag is in lalaland;
	solve-region intro;
	now notices section is visited;
	now player has the gadget;
	now player has the prep paper;
	now player has the saltine;
	now player has the phial;
	now intro is solved;
	say "I gave you the gadget and paper and saltine, regardless of what you already had.";
	the rule succeeds;

chapter tsfing

[* this lets us face the resort]

tsfing is an action out of world.

understand the command "tsf" as something new.

understand "tsf" as tsfing.

carry out tsfing:
	if player is not in trips strip:
		move player to trips strip;
	say "OK. You should be able to [if store r is in resort]flip store R and [end if]enter the resort, now.";
	now sortie is solved;
	now forest is solved;
	now metros is solved;
	now store f is in lalaland;
	now store i is in lalaland;
	now store m is in lalaland;
	now player has the gadget;
	now player has the prep paper;
	the rule succeeds;

chapter j2ing

[ * J2 lets us jump to the Trips Strip, with extra goodies]

j2ing is an action applying to nothing.

understand the command "j2" as something new.

understand "j2" as j2ing.

carry out j2ing:
	if trips strip is visited:
		say "Already beat intro." instead;
	increase the cur-score of intro by 4;
	solve-region intro;
	now player has gadget;
	now player has notepad;
	now player has phail phial;
	say "Moving player to trips strip, with gadget.";
	the rule succeeds;

chapter getbying

[ * toggles wareas that are solved ]

getbying is an action applying to one number.

understand the command "getby" as something new.

understand "getby [number]" as getbying.

carry out getbying:
	if number understood is 0:
		toggle-solve intro;
	if number understood is 1:
		toggle-solve forest;
	if number understood is 2:
		toggle-solve sortie;
	if number understood is 3:
		toggle-solve metros;
	the rule succeeds;

to toggle-solve (re - a region):
	if re is solved or re is bypassed:
		now re is unsolved;
		say "Now [re] is unsolved.";
	else:
		now re is solved;
		say "Now [re] is solved.";

chapter ggading

[* gets the gadget, shorthand for purloining it]

ggading is an action applying to nothing.

understand the command "ggad" as something new.

understand "ggad" as ggading.

carry out ggading:
	say "Executing heinous cheat--doing so is a [bug-report] in the final release version. Got gadget now.";
	now player has tagged;
	the rule succeeds;

chapter rjing

[* region jump: this lets you bypass a region. Negative number opens it up again.]

rjing is an action applying to one number.

understand the command "rj [number]" as something new.

understand "rj [number]" as rjing.

[the magic numbers below are bad but they work. Basically, 1=forest 2=sortie 3=metros 4=resort 5=very last, so rj 5 = 1 move to win]

carry out rjing:
	let rj be the number understood;
	if rj < 1 or rj > 4:
		say "Region 1-4 please. 1=store f/6 2=store i/9 3=store m/13 4=store r/18." instead;
	say "(skipping introductory text with hyperwarp)";
	if rj is 1:
		move player to sf;
	if rj is 2:
		move player to Centrifuge;
	if rj is 3:
		move player to undesired underside;
	if rj is 4:
		move player to Astral Altars;
	if rj is 5:
		move player to Means Manse;
		say "Debug-testing note: EXIST to win.";

chapter sking

[* the magic numbers below are bad but they work. Basically, -1/1 toggles if forest is solved. -2/2 toggles if sortie is solved. -3/3 toggles if metros is solved.]

sking is an action applying to one number.

understand the command "sk [number]" as something new.

understand "sk [number]" as sking.

understand the command "sa [number]" as something new.

understand "sa [number]" as sking.

carry out sking:
	let A be false;
	let sk be the number understood;
	let my-reg be forest;
	if sk < 0:
		now A is true;
		change sk to 0 - sk;
	if sk is 5:
		say "To the end.";
		now player is in Means Manse;
	if sk is 4:
		say "Now all 3 regions are solved.";
		now forest is solved;
		now sortie is solved;
		now metros is solved;
		now store f is in lalaland;
		now store i is in lalaland;
		now store m is in lalaland;
		the rule succeeds;
	if sk > 3:
		say "Only 3 sections to change: forest, sortie, metros." instead;
	if sk is 1:
		now my-reg is forest;
	if sk is 2:
		now my-reg is sortie;
	if sk is 3:
		now my-reg is metros;
	if my-reg is solved and A is false:
		say "Already solved. Try with a negative number?" instead;
	if my-reg is unsolved and A is true:
		say "Already unsolved. Try with a positive number?" instead;
	if A is true:
		now my-reg is unsolved;
		if my-reg is forest:
			now store f is in trips strip;
			if forest-x is in trips strip:
				now forest-x is in lalaland;
		if my-reg is sortie:
			now store i is in trips strip;
			if sortie-x is in trips strip:
				now sortie-x is in lalaland;
		if my-reg is metros:
			now store m is in trips strip;
			if metros-x is in trips strip:
				now metros-x is in lalaland;
	otherwise:
		now my-reg is solved;
		if my-reg is forest:
			now store f is in lalaland;
			now forest-x is in lalaland;
		if my-reg is sortie:
			now store i is in lalaland;
			now sortie-x is in lalaland;
		if my-reg is metros:
			now store m is in lalaland;
			now metros-x is in lalaland;
	say "Now [my-reg] is [if A is true]not [end if]solved.";
	the rule succeeds;

chapter disasing

[* get all 3 things to make the disguise in 1 place - used to test different ways to make it]

disasing is an action applying to nothing.

understand the command "disas" as something new.

understand "disas" as disasing.

carry out disasing:
	repeat with Q running through disguise-pieces:
		now Q is in location of player;
		now player has Q;
	say "The three beard parts are now all disassembled.";
	the rule succeeds;

chapter cap

[* CAP caps the # of entries in a random table. For testing.]

caping is an action applying to one number.

understand the command "cap" as something new.

understand "cap [number]" as caping.

carry out caping:
	repeat through table of megachatter:
		if maxidx entry > number understood:
			now maxidx entry is number understood;
		if curidx entry > number understood:
			now curidx entry is number understood;
	the rule succeeds;

volume testing commands - not for release

[be sure to do stuff when you're not in the right room. This is CRITICAL to testing.]

part areas

[* best to break things into areas in case 1 area breaks]

chapter player tests

[* this tries various odd tests to jump to]

section sortie-specific

[* uses testing commands to test the most breakable puzzles, as well as playing dumb with guesses in the centrifuge]

test setup with "test intro/gonear poet/abstract poet to lalaland/purloin sack/abstract straw to sack/abstract missile to moor/purloin cask/abstract black door to moor/abstract silo to moor/purloin panel/put panel in sack/put panel on sack/attach panel to sack/put missile on straw/put missile in straw/attach missile to straw/put missile in silo/put missile on silo/attach missile to silo/put door in silo/put door on silo/put missile in silo/put missile on silo/attach missile to silo/" in subsite

test dial with "sortie/d/60/40/10/25/5/20/18/14/15/16" in trips strip

section forest-random

[* this fixes the path through the forest, north then south]

test allfor with "ts/forest/sr n/in/n/s/v fi/sr s/gonear softer/s/n/v fi/sr e/gonear softer/e/w/v fi/sr w/gonear softer/w/e/v fi/sr nw/gonear softer/n/w/v fi/sr ne/gonear softer/n/e/v fi/sr sw/gonear softer/s/w/v fi/sr se/gonear softer/s/e/v fi/rs nw/gonear softer/w/n/v fi/rs ne/gonear softer/e/n/v fi/rs sw/gonear softer/w/s/v fi/rs se/gonear softer/e/s/v fi"

section odd talks

[* this tests miscellany like asking weird stuff of the wrong people]

test yack with "in/door/blot/in/goat/in/gateman/babble" in subsite

test hinttest with "hint/y/ask me about 1 should not show/hint/hf/ask me about 2 should not show/hint/hd/ask me about 3 should show/hint/hf/ask me about 4 should show/hd/hint"

section randtext

[* this tests the random text being put out, which loops every 11 times so we see the end text.]

test randtext with "cap 11/x list/g/g/g/purloin maps/x maps/g/g/g/g/g/cap 4/gonear moor/z/z/z/z/z/gonear psa/x psa/g/g/g/g/g/n/n/z/z/z/z/z/n/z/z/z/z/z/gonear nerds/z/z/z/z/z/gonear hotspot/z/z/z/z/z/trio/potters/chain/kilns/z/z/z/z/z/z"

section big-picture

[* all possible combinations. Shouldn't make difference what order we solve things in, but we also want to try solving 2 of 3 areas. The recuse- tests do this without tricks.]

test win123 with "test intro/test forest/test sortie/test metros/nice bat/sorbet/test resort" in subsite.
test win231 with "test intro/test sortie/test metros/test forest/nice bat/sorbet/test resort" in subsite.
test win312 with "test intro/test metros/test forest/test sortie/nice bat/sorbet/test resort" in subsite.

test q12 with "test intro/secure/sk 1/sk 2/test resort" in subsite.
test q13 with "test intro/secure/sk 1/sk 3/test resort" in subsite.
test q21 with "test intro/secure/sk 2/sk 1/test resort" in subsite.
test q23 with "test intro/secure/sk 2/sk 3/test resort" in subsite.
test q31 with "test intro/secure/sk 3/sk 1/test resort" in subsite.
test q32 with "test intro/secure/sk 3/sk 2/test resort" in subsite.

test recuse-metros with "test intro/secure/test forest/test sortie/recuse/test resort" in subsite.
test recuse-sortie with "test intro/secure/test forest/test metros/recuse/test resort" in subsite.
test recuse-forest with "test intro/secure/test sortie/test metros/recuse/test resort" in subsite.

section talk-testing

[* all sorts of testing subjects. Individual commands may work better.]

test gman with "in/goat/in/gateman/ask about abc/ask about him" in subsite.

test alltalk with "ask about me/ask about xyz/in/door/blot/in/goat/in/ask about me/ask about xyz/north/ask about me/ask about xyz/gateman/ask about me/ask about xyz/gonear deadbeat/ask about me/ask about xyz/gonear faeries/ask about me/ask about xyz/gonear night thing/ask about me/ask about xyz/gonear nerds/ask about me/ask about xyz/gonear woeful pat/ask about me/ask about xyz/ask about xyz/peasant/ask about me/ask about xyz/gonear talkers/ask about me/ask about xyz/gonear Astral Altars/islet/cork/e/grips/ropes/slope/u/ask about me/ask about xyz/trio/ask about me/ask about xyz/potters/kilns/ask about me/ask about xyz/gonear frost forts/ask about me/ask about xyz/gonear frost forts/wolves/ask about me/ask about xyz/gonear turnstile/ask about me/ask about xyz/gonear liches/ask about me/ask about xyz/" in subsite.

test default-talk with "gonear red bull/ask about me/ask about xyz/gonear woeful pat/ask about me/ask about xyz" in subsite.

section rm-testing

[*this just tests bashing about in a room]

test alldirs with "nodir ne/nodir se/nodir sw/nodir nw/rmneglect lalaland/allrooms"

test abouts with "about/credits/tech/verbs/history/in/goat/about/credits/tech/verbs/history"

section tester-scripts

[*mostly paul lee's cool tries]

test pl9m with "test intro/metros/d/beast/gardenia/x gardenia/n/Velcro/ask deadbeat about himself/ask deadbeat about cake/e/ask faeries about clover/give clover to faeries/ask faeries about heaths/ask faeries about begonias/ask faeries about gardenias/x brocade/x scratchings/barcode/x flowers/w/get lost corn/w/x garbage/smell/smell garbage/smell tomato/beats/sword/e/e/sheath/w/w/e/n/throw tomato/s/s/w/throw tomato/get emitter/e/n/n/switch emitter/get cake/keycard/s/get corn/" in subsite

[u/u/jump/]

test pl9 with "x tag/x room/x air/get sign/get banner/get brazier/in/goat/exit/n/n/n/n/x tag/x room/north/x tag/x room/gateman/getaway/ask about goat/ask about toga/ask about xyzzy/ask about me/ask about him/ask about gate/ask about attics/ask about abcde/ask about gadget/get device/scan static/switch gadget/attics/in/x stores/pad stores/forest/pad stores/sortie/pad stores/metros/pad stores/resort/pad stores/enter sortie/w/n/turn dial/turn dial to 57/g/turn dial to 16/n/x room/x air/x me/kitchen/x animal/x fridge/lettuce/steak/tortilla/x tortilla/parmesan/put parmesan on steak/put steak on tortilla/x tortilla/put parmesan in steak/x tortilla/put steak on lettuce/x tortilla/put tortilla on lettuce/x tortilla/sauce/hotsauce/put sauce on lettuce/eat taco/smell taco/coat/scan me/x warts/scan warts/straw/e/s/x cask/open cask/sack/coat/door/black/black door" in subsite

[x cask/open cask/x hole/
get straw]

test pl8 with "j/sortie/d/e/n/ne/16/straw/get straw/e/sack/w/get straw/cask/put straw in cask/sack/e/n/w/kitchen/tortilla/sauce/hot sauce/lettuce/parmesan/steak/put lettuce on steak/put tortilla in lettuce//put tortilla on lettuce/put tortilla in lettuce/put sauce on lettuce/put steak in lettuce/coat/e/scrape wall/i/pad/s/pad" in subsite

test pl7 with "x brazier/m/f/r/hd/hf/hd/hf/in/x cat/pet cat/pet goat/gato/x gato/man/north/goat/go north/x new land/x gateway/open gateway/gate man/open gateway/in/l/x new land/x gadget/x slider/x flipside/x example/get slider/attack small slider/x device/swap/x device/swap/swap gadget/swap slider/swap slider/swap gadget/in/get a way/talk to man/ask about mumbletypeg/ask about toga/ask about goat/ask about slider/ask about gadget/ask about game/x gateway/attack gateman/attack old man/attack gadget/attack slider/attack nat/scan attic/scan attics/scan static/scan doll house/in/x trapdoor/x roster/m/f/r/forest/in/x leaves/m/f/r/smell/door/n/x leaves/x device/door/scan door/x music/x note/x musical chord/scan bulge/scan bugle/bugle/play bugle/in/e/x shell/x bubble/x bucket/nose/shades/hook nose to shades/w/w/open sandwich/beard/hook shades to beard/wear beard/e/n/chisel/s/w/get chicken/get cow/put chicken in canister/put cow in canister" in subsite

chapter ending-testing

[ * simple very-ending test ]

test end-test with "gonear manse/exist"

chapter for-testers

[* quick start for testers]

test hb with "hd/z/l/hf/x me/l/hd/x myself/l/hf/xyzzy/l"

chapter odd verbs

[* this tests that retrying preserves items in the bullpen, for the simpelst case, in the Metros ]

test ts with "ts/metros/in/gardenia/retryi//in/i"

chapter win

[* big test for the full win]

test win with "test intro/test metros/test forest/test sortie/test resort" in subsite

chapter gbg

[* garbage tests]

test g-1 with "jump/sing/listen/smell/wave/think/sleep/wake/x me/i/z/"

test g0 with "forest/store f/sortie/store i/metros/store m/resort/store r/tories/roster/1/2/3/x store/x stores/x mall/x malls/x strip"

test g1 with "goat/gateman/gateway/getaway/thorn/soil/silo/oils/lois/plane/panel/attics/static/ones/nose/shades/dashes/shotgun/noughts/wolves/vowels/spam/maps/chisel/liches/lich/beard/bread/x liver/livers/sliver/silver/spread/drapes"

test g2 with "cask/sack/cask/sack/6/9/13/18/19/16/straw/kitchen/the nick/moor/room/missile/smilies/anapest/peasant/haywall/hallway/coat/aco/skate/parmesan/tortilla/hot sauce/hotsauce/cathouse/cat house/lettuce/shoot button/hoots/trees/steer/reset"

test g3 with "drainage/gardenia/brocade/barcode/sheath/heaths/begonias/noise bag/dry cake/keycard/sword/words/tomato/motto/a motto/lost corn/controls/Velcro/clover/beats/beast"

test g4 with "cork/rock/swing/wings/toolshed/toeholds/grips/sprig/ropes/spore/trio/riot/potters/protest/kilns/links/tug toe"

chapter intro

[* maximum and minimum intro points]

test intro with "in/door/blot/bugle/in/goat/slander/in/gateman/ask gateman about cabinet/get all/attics/in/v ts" in subsite

test nos with "in/door/blot/bugle/in/goat/slander/in"

chapter stores tests

[* this is a big long test for every store by number and first letter]

test store-mega with "j/x 1/x 2/x 3/x 4/x 5/x 6/x 7/x 8/x 9/x 10/x 11/x 12/x 13/x 14/x 15/x 16/x 17/x 18/x 19/x 20/x 21/x 22/x 23/x 24/x 25/x 26/x a/x b/x c/x d/x e/x f/x g/x h/x i/x j/x k/x l/x m/x n/x o/x p/x q/x r/x s/x t/x u/x v/x w/x x/x y/x z/x one/x two/x three/x four/x five/x six/x seven/x eight/x nine/x ten/x eleven/x twelve/x thirteen/x fourteen/x fifteen/x sixteen/x seventeen/x eighteen/x nineteen/x twenty/x twentyone/x twentytwo/x twentythree/x twentyfour/x twentyfive/x twentysix"

chapter forest

[* we want to test doing the livers and the disguise in a different order. Also the drapes/spread]

test fo with "forest/forest/smell/n/s/e/w/enter door" in trips strip

test shades with "w/get bread/e/e/dashes/ones/shades/nose/beard/put shades on nose/put nose on beard/disas/put shades on beard/put nose on beard/disas/put nose on beard/put shades on beard/disas/put nose on beard/put shades on nose" in Self-ID Fields

test forest with "forest/enter forest/smell/fo/fo/e/nose/shades/shotgun/put shades on nose/get nose and shotgun/w/w/get bread/get spam/beard/put nose on beard/wear beard/e/n/y/chisel/get chisel/s/w/peel chicken/peel cow/put chicken in canister/put cow in canister/spam/e/n/hasbeen/silver/sliver/silver/drapes/silver/cut drapes/silver/put silver in shotgun/maps/n/read maps/wolves/shoot wolves/v ts" in trips strip

test formin with "forest/enter forest/smell/fo/fo/e/nose/shades/shotgun/put shades on nose/get nose and shotgun/w/w/get bread/get spam/beard/put nose on beard/wear beard/e/n/y/chisel/get chisel/s/w/peel chicken/peel cow/put chicken in canister/put cow in canister/spam/e/n/silver/sliver/silver/drapes/silver/cut drapes/silver/put silver in shotgun/maps/n/read maps/wolves/shoot wolves/v ts" in trips strip

chapter metros

[* this is the trickiest. There are 5 ways through. The noise bag allows you to open it by the nerds, which the sheath doesn't. For both, can release the gnats or ask about darkness]

test toma with "gonear underside/n/w/tomato/e/s/w/throw tomato"

test metbasic with "test intro/metros/g/g/gardenia/n/w/tomato/e/s/w/give tomato to thing/x mattress/e/n/n/switch emitter/get cake/keycard/s/velcro/controls" in subsite

test met-all with "test metros-s-n1/ua 3/test metros-s-n2/ua 3/test metros-n-n1/ua 3/test metros-n-n2/ua 3/test metros-n-n3"

test metros with "test metros-s-n1" in trips strip

test metmin with "metros/enter metros/gardenia/n/w/tomato/e/s/w/throw tomato at night thing/search mattress/e/n/n/switch emitter/keycard/s/e/y/give gardenia to faeries/get brocade/get heaths/w/w/sheath/sword/barcode/put barcode on keycard/e/controls/velcro/wear velcro/s/e/ask nerds about darkness/s/opening/climb wall/put controls in opening/attack beast/e/resin/beast/sword/attack beast/v ts/v sco" in trips strip

test metros-s-n1 with "metros/enter metros/gardenia/n/w/tomato/e/s/w/throw tomato at night thing/search mattress/e/n/n/switch emitter/rentals/keycard/s/e/y/give gardenia to faeries/get brocade/get heaths/w/w/sheath/sword/barcode/put barcode on keycard/e/controls/velcro/wear velcro/s/e/ask nerds about darkness/s/opening/climb wall/put controls in opening/attack beast/e/resin/beast/sword/attack beast/v ts/v sco" in trips strip

test metros-s-n2 with "metros/enter metros/gardenia/n/w/tomato/e/s/w/throw tomato at night thing/search mattress/e/n/n/switch emitter/rentals/keycard/s/e/y/give gardenia to faeries/get brocade/get heaths/w/w/sheath/sword/barcode/put barcode on keycard/e/show emitter to deadbeat/controls/velcro/wear velcro/s/e/switch emitter/s/opening/climb wall/put controls in opening/attack beast/e/resin/beast/sword/attack beast/v ts/v sco" in trips strip

test metros-n-n1 with "metros/enter metros/gardenia/n/w/tomato/e/s/w/throw tomato at night thing/search mattress/e/n/n/switch emitter/rentals/keycard/s/e/y/give gardenia to faeries/get brocade/get begonias/w/w/noise bag/open noise bag/barcode/put barcode on keycard/e/controls/velcro/wear velcro/s/e/ask nerds about darkness/s/opening/climb wall/put controls in opening/attack beast/e/resin/beast/sword/attack beast/v ts/v sco" in trips strip

test metros-n-n2 with "metros/enter metros/gardenia/n/w/tomato/e/s/w/throw tomato at night thing/search mattress/e/n/n/switch emitter/rentals/keycard/s/e/y/give gardenia to faeries/get brocade/get begonias/w/w/noise bag/open noise bag/barcode/put barcode on keycard/e/show emitter to deadbeat/controls/velcro/wear velcro/s/e/switch emitter/w/s/opening/climb wall/put controls in opening/attack beast/e/resin/beast/sword/attack beast/v ts/v sco" in trips strip

test metros-n-n3 with "metros/enter metros/gardenia/n/w/tomato/e/s/w/throw tomato at night thing/search mattress/e/n/n/switch emitter/rentals/keycard/s/e/y/give gardenia to faeries/get brocade/get begonias/w/w/noise bag/open noise bag/barcode/put barcode on keycard/e/controls/velcro/wear velcro/s/e/open bag/s/opening/climb wall/put controls in opening/attack beast/e/resin/beast/sword/attack beast/v ts/v sco" in trips strip

[get sword/resin/sword/beast/attack beast]

[resin/sword/attack beast]

chapter sortie

[*Not many alternate ways to go through the sortie but you can test different ways to make the taco]

test sortie-e with "j/sortie/d" in trips strip

test sortie with "sortie/enter sortie/sixteen/n/kitchen/s/e/straw/sack/put straw in sack/get sack/n/w/tortilla/lettuce/steak/parmesan/hotsauce/put hotsauce in tortilla/put steak on tortilla/put lettuce on tortilla/put parmesan on tortilla/open fridge/grits/pancake/coat/wear coat/e/s/shoes/moor/y/peasant/give straw/room/n/put hay in wall/hallway/e/cask/fill cask/w/s/moor/soil/room/n/e/fill cask/w/s/moor/silo/missile/black door/fold poem/panel/put door on silo/put missile in silo/put panel on silo/shoot button/steer button/push steer button/push shoot button/v ts" in trips strip

test sortie-delete with "sortie/enter sortie/sixteen/n/kitchen/s/e/straw/sack/put straw in sack/get sack/n/w/tortilla/lettuce/steak/parmesan/hotsauce/put hotsauce in tortilla/put steak on tortilla/put lettuce on tortilla/put parmesan on tortilla/coat/wear coat/e/s/moor/peasant/give straw/room/n/put hay in wall/hallway/e/cask/fill cask/w/s/moor/soil/room/n/e/fill cask/w/s/moor/silo/missile/black door/fold poem/panel/put panel on silo/" in trips strip

test cedars with "sortie/enter sortie/sixteen/n/kitchen/s/e/straw/sack/put straw in sack/get sack/n/w/tortilla/lettuce/steak/parmesan/hotsauce/put hotsauce in tortilla/put steak on tortilla/put lettuce on tortilla/put parmesan on tortilla/open fridge/grits/pancake/coat/wear coat/e/s/shoes/moor/y/peasant/give straw/room/y/n/put hay in wall/hallway/e/cask"

test moor-1 with "sortie/enter sortie/sixteen/n/kitchen/s/e/straw/sack/put straw in sack/get sack/n/w/tortilla/lettuce/steak/parmesan/hotsauce/put hotsauce in tortilla/put steak on tortilla/put lettuce on tortilla/put parmesan on tortilla/open fridge/grits/pancake/coat/wear coat/e/s/shoes/moor/y/peasant/give straw/room/n/put hay in wall/hallway/e/cask"

test moor-2 with "sortie/d/sixteen/e/straw/sack/put straw in sack/get sack/n/w/kitchen/tortilla/lettuce/steak/parmesan/hotsauce/put hotsauce in tortilla/put steak on tortilla/put lettuce on tortilla/put parmesan on tortilla/coat/wear coat/e/s/moor/peasant/give straw/room/n/put hay in wall/hallway/e/cask/fill cask/w/s/moor/soil/room/n/e/fill cask/w/s/moor/silo/missile/black door/fold poem/panel" in trips strip

chapter resort

[* maximum and minimum point tests, as well as medium points]

test res-all with "sk 1/sk 2/sk 3/test r0/ua 4/test r1/ua 4/test r2/ua 4"

test resort with "resort/enter resort/islet/cork/wings/e/slope/grips/ropes/toeholds/e/trio/potters/china/kilns/tug toe/e/exist" in trips strip

test rq with "gonear Astral Altars/islet/cork/wings/e/slope/grips/ropes/toeholds/e/trio/potters/kilns/tug toe/e/exist" in trips strip

test r0 with "resort/enter resort/islet/cork/wings/e/slope/grips/ropes/toeholds/e/trio/potters/kilns/tug toe/e/v rm" in trips strip

test r1 with "gonear Astral Altars/islet/cork/e/toeholds/slope/e/trio/potters/kilns/tug toe/e/v rm" in Astral Altars

test r2 with "gonear Astral Altars/islet/wings/e/slope/grips/ropes/e/trio/kilns/potters/tug toe/e/v rm" in Astral Altars

test toolclue with "scan tiles/swap/scan tiles/islet/cork/e/grips/ropes/v rm" in Astral Altars

volume programmer testing commands - not for release

when play begins (this is the check objects and rooms rule):
	if undescribed-objects is 0:
		say "Yay! All objects accounted for and described.";
	else:
		say "Objects remaining to describe: [undescribed-objects].";
	if undescribed-rooms is 0:
		say "All rooms accounted for and described.";
	else:
		say "Rooms remaining to describe: [undescribed-rooms].";

chapter yacking

[ * this goes through all the subjects]

yacking is an action applying to nothing.

understand the command "yack" as something new.

understand "yack" as yacking.

carry out yacking:
	let cur-guy be talkers;
	let cur-line be 0;
	repeat through the table of subject-blather:
		if him-who entry is not visible:
			move him-who entry to location of player;
		say "ASK [him-who entry] ABOUT [person-subj entry]: [him-say entry][line break]";
	repeat through table of default-sub-blather:
		if him-who entry is not visible:
			move him-who entry to location of player;
		say "ASK [him-who entry] ABOUT cork (e.g. object in game): [him-say entry][line break]";
	repeat through the table of default-gen-blather:
		if default-talker entry is not visible:
			move default-talker entry to location of player;
			say "ASK [default-talker entry] ABOUT mumblety-peg (e.g. object not in game): [gen-blah entry][line break]";
	repeat through the table of general-blather:
		if him-who entry is not visible:
			move him-who entry to location of player;
		if him-who entry is not cur-guy:
			now cur-guy is him-who entry;
			now cur-line is 0;
		increment cur-line;
		say "ASK [him-who entry] ABOUT (topic [cur-line]): [him-say entry][line break]";
	the rule succeeds;

chapter unsolve

[ * this tries to reset the game to go through twice. It probably has holes, though.]

to unsolve-resort:
	now cur-score of resort is 0;
	now rock is in Isle; [Isle]
	now rock is not flipped-yet;
	now cork is off-stage;
	now swing is in Isle;
	now swing is not flipped-yet;
	now wings are off-stage;
	now tool shed is in Rived Drive; [rived drive]
	now tool shed is not flipped-yet;
	now toeholds are off-stage;
	now poles are in Rived Drive;
	now poles are not flipped-yet;
	now slope is off-stage;
	now sprig is in Rived Drive;
	now sprig is not flipped-yet;
	now ropes are off-stage;
	now spore is in Rived Drive;
	now spore is not flipped-yet;
	now riot is in hotspot; [hotspot]
	now potters are off-stage;
	now riot is not flipped-yet;
	now protest is off-stage;
	now protest is not flipped-yet;
	now grips are off-stage;
	now links are off-stage;
	now links are not flipped-yet;
	now kilns are off-stage;
	now red bull burdell is off-stage;

to unsolve-metros:
	if metros is not solved:
		say "WARNING. Metros is not solved.";
	now last-loc of metros is underside;
	now drainage is in underside; [underside]
	now drainage is not flipped-yet;
	now gardenia is off-stage;
	now can of beer is in underside;
	place-random-garbage;
	now lost corn is off-stage;	[red camp]
	now lost corn is not flipped-yet;
	now controls are off-stage;
	now red camp is unvisited;
	now clover is in camp;
	now clover is not flipped-yet;
	now Velcro is off-stage;
	now condo-evac is false; [condo]
	now dry cake is in condo;
	now dry cake is not flipped-yet;
	now keycard is off-stage;
	now antlers are in condo;
	now antlers are not flipped-yet;
	now brocade is in elf row's flowers;	[elf row's flowers]
	now brocade is not flipped-yet;
	now barcode is in trips strip;
	now barcode is off-stage;
	now heaths are in elf row's flowers;
	now heaths are not flipped-yet;
	now sheath is off-stage;
	now begonias are in elf row's flowers;
	now begonias are not flipped-yet;
	now noise bag is off-stage;
	now fairy-worthy is false;
	now words are in Bile Libe;	[Bile Libe]
	now words are not flipped-yet;
	now sword is off-stage;
	now motto is in Bile Libe;
	now motto is not flipped-yet;
	now tomato is off-stage;
	now tulip is in Anti-Cool Location;	[special place]
	now Anti-Cool Location is unvisited;
	now night thing is in Hotel;	[ol' hotel]
	now termite emitter is off-stage;
	now termite emitter is ungnatted;
	now power-shut is false;	[train terrain]
	now neon pig is in Elm Train Terminal;
	now neon pig is not flipped-yet;
	now op is off-stage;
	now resin is off-stage;	[abyss]
	now siren is in Bassy;
	now siren is not flipped-yet;
	now beats are in metros;
	now beats are not flipped-yet;
	now beast is off-stage;
	now metros is unsolved;
	now cur-score of metros is 0;

to unsolve-sortie:
	now last-loc of sortie is Centrifuge;
	now centrifuge-stopped is false;
	now warts are off-stage;
	now warts are not flipped-yet;
	now cask is off-stage;
	now cask is not flipped-yet;
	now sack is off-stage;
	now skate is off-stage;
	now skate is not flipped-yet;
	now steak is off-stage;
	now cult tee is off-stage;
	now cult tee is not flipped-yet;
	now lettuce is off-stage;
	now spearman is off-stage;
	now spearman is not flipped-yet;
	now Parmesan is off-stage;
	now CATHOUSE is off-stage;
	now CATHOUSE is not flipped-yet;
	now HOTSAUCE is off-stage;
	now tall trio is off-stage;
	now tall trio is not flipped-yet;
	now coat is off-stage;
	now taco is not flipped-yet;
	now grist is in obligatory;
	now cake pan is in obligatory;
	now grits are off-stage;
	now pancake is off-stage;
	now grist is not flipped-yet;
	now cake pan is not flipped-yet;
	now moor is unvisited; [moor]
	now anapest is in moor;
	now anapest is not flipped-yet;
	now peasant is off-stage;
	now scraped wall is in Trellis;
	now scraped wall is not hayfilled;
	now nick is unvisited;
	now numset of dial is 0;
	now caskfillings is 0; [sacred cedars]
	now roadblock is in moor; [moor]
	now roadblock is not flipped-yet;
	now black door is off-stage;
	now silo is off-stage;
	now soil is off-stage;
	now trees button is off-stage;
	now steer button is off-stage;
	now shoot button is off-stage;
	now hoots button is off-stage;
	now panel is off-stage;
	now sortie is unsolved;
	now cur-score of sortie is 0;

to unsolve-forest:
	now last-loc of forest is sf;
	now odor is in forest-x;
	now bulge is part of yard-door;
	now bugle is off-stage;
	now nose is off-stage;
	now beard is off-stage;
	now shades are off-stage;
	now sandwich is in s-e-d;
	now bread is part of sandwich;
	now spam is part of sandwich;
	now maps are off-stage;
	now liches are in Enclosure;
	now chisel is off-stage;
	now spread is in Enclosure;
	now vowels are in frost forts;
	now wolves are off-stage;
	now livers are off-stage;
	now silver is off-stage;
	now sliver is off-stage;
	now forest is unsolved;
	now cur-score of forest is 0;

chapter uaing

[ * this resets a solved region, which is also quite risky]

uaing is an action applying to one number.

understand the command "ua [number]" as something new.

understand "ua [number]" as uaing.

carry out uaing:
	if trips strip is not visited:
		say "You need to visit the trips strip before using this." instead;
	if the number understood is 4:
		say "Resetting resort.";
		move player to trips strip, without printing a room description;
		unsolve-resort instead;
	if the number understood is 3:
		say "Resetting metros.";
		move player to trips strip, without printing a room description;
		unsolve-metros instead;
	if the number understood is 2:
		say "Resetting sortie.";
		move player to trips strip, without printing a room description;
		unsolve-sortie instead;
	if the number understood is 1:
		say "Resetting forest.";
		move player to trips strip, without printing a room description;
		unsolve-forest instead;
	say "Invalid number. 1=forest 2=sortie 3=metros";
	the rule succeeds;

chapter babbleing

[ * This plows through everything you can ask someone about ]

babbleing is an action applying to nothing.

understand the command "babble" as something new.

understand "babble" as babbleing.

carry out babbleing: [Any way to pull out the topic?]
	let X be indexed text;
	repeat through table of general-blather:
		say "============[location of him-who entry]: [him-who entry].";
		move player to location of him-who entry, without printing a room description;
		try asking him-who entry about topic entry;
	the rule succeeds;

chapter booting

[ * BOOT kicks any item to lalaland. You could just ABSTRACT, but yay saving keystrokes ]

booting is an action applying to one visible thing.

understand the command "boot [any thing]" as something new.

understand "boot [any thing]" as booting.

carry out booting:
	say "[noun] moved to lalaland.";
	now noun is in lalaland;
	the rule succeeds;

chapter met

[* MET gets you near the end of Metros for the final fight. There are test commands to plow through, but this is a jump.]

meting is an action applying to one number.

understand the command "met" as something new.

understand "met [number]" as meting.

carry out meting:
	if number understood > 2 or number understood < 1:
		say "1 for heaths, 2 for begonias." instead;
	if abyss is visited:
		say "Sorry, you need to restart to run the MET test command again.";
	now player has the lit-up tulip;
	now power-shut is true;
	move player to terminal, without printing a room description;
	if number understood is 1:
		now player has sheath;
		now sword is contained in sheath;
	else:
		now player has noise bag;
		now words are in noise bag;
	try going east;
	the rule succeeds;

chapter pluraling

[ * test for plurals ]

pluraling is an action applying to nothing.

understand the command "plural" as something new.

understand "plural" as pluraling.

carry out pluraling:
	repeat with Q running through things:
		say "[Q] = [if Q is plural-named]plural[else]singular[end if] and [if Q is fixed in place]fixed[else]takeable[end if].";
	the rule succeeds;

chapter scanalling

[* this tries to scan all not inflexible things ]

scanalling is an action applying to nothing.

understand the command "scanall" as something new.

understand "scanall" as scanalling.

carry out scanalling:
	let yay be 0;
	let boo be 0;
	let Z be indexed text;
	now player has tagged gadget;
	repeat with Q running through not inflexible things:
		if Q is not off-stage and Q is not in lalaland and Q is not a backdrop:
			let Y be the map region of the location of Q;
			if Y is sortie or Y is forest or Y is resort or Y is intro or Y is stores or Y is metros:
				say "[Q]: [rgtext of Q].";
				now Z is "[rgtext of Q]";
				if Z matches the text "R":
					increment yay;
				otherwise:
					increment boo;
					say "Boo, [Q].";
	say "[yay] yay, [boo] boo.";
	the rule succeeds;

chapter scanvising

[* this scans all visible things]

scanvising is an action applying to nothing.

understand the command "scanvis" as something new.

understand "scanvis" as scanvising.

carry out scanvising:
	let yay be 0;
	let boo be 0;
	let Z be indexed text;
	if player does not have gadget:
		say "Get the gadget first." instead;
	repeat with Q running through visible things:
		say "[Q]: ";
		try scaning Q;
	the rule succeeds;

chapter ffing

[* this freezes flip actions so I don't have to undo in testing]

ffing is an action out of world.

understand the command "ff" as something new.

understand "ff" as ffing.

carry out ffing:
	if ff is false:
		say "Flips frozen.";
		now ff is true;
	else:
		say "Flips unfrozen.";
		now ff is false;
	the rule succeeds;

chapter debuging

[* toggles debug state.]

debuging is an action out of world.

understand the command "debug/db" as something new.

understand "debug" and "db" as debuging.

carry out debuging:
	now debug-state is whether or not debug-state is false;
	say "Debugging [if debug-state is true]on[else]off[end if]. Use DP to turn off DEBUG INFO.";
	the rule succeeds;

chapter debug printing

[* toggles if I print debug stuff to file]

dbprinting is an action out of world.

understand the command "dp" as something new.

understand "debug" and "dp" as dbprinting.

carry out dbprinting:
	now debug-print is whether or not debug-print is false;
	say "Debug info printing [if debug-print is true]on[else]off[end if].";
	the rule succeeds;

chapter privsing

[ * this is a script to find privately named stuff that you may feel a pulse from]

privsing is an action out of world.

understand the command "privs" as something new.

understand "privs" as privsing.

to decide whether (ht - a thing) is spayshul:
	if ht is an xtrhelp listed in the table of spechelp, decide yes;
	decide no.

carry out privsing:
	let privent be 0;
	repeat through regana of mrlp:
		if the-from entry is privately-named:
			say "Checking [the-from entry] -> [the-to entry].";
			if the-from entry is spayshul:
				do nothing;
			else:
				say "[the-from entry] should have an entry in the table of spechelp for changing to [the-to entry].";
				increment privent;
	say "[privent] new entries needed.";
	the rule succeeds;

chapter specsing

[ * SPECS tests the spec-help of all items in table of anagrams]

specsing is an action out of world.

understand the command "specs" as something new.

understand "specs" as specsing.

carry out specsing:
	let qq be 0;
	let reg be intro;
	repeat with Q running through regions:
		repeat through regana of Q:
			unless the-from entry is spayshul:
				increment qq;
				if the-from entry is not a backdrop:
					if the-from entry is not off-stage and the-from entry is not in lalaland:
						now reg is map region of location of the-from entry;
				say "[qq]. [the-from entry] -> [the-to entry] [reg] : [spec-help of the-from entry]";
	if qq is 0:
		say "Yay! All things are clued.";
	the rule succeeds;

chapter hintvising

[* this hints everything visible. It is trumped by hintall but may be useful to the beta tester. ]

hintvising is an action out of world.

understand the command "hintvis" as something new.

understand "hintvis" as hintvising.

carry out hintvising:
	repeat with VTH running through all visible things:
		all-say "Hinting [VTH]: ";
		try objhinting VTH;
	the rule succeeds;

chapter evting

[* this specifies what to do every turn ]

ettest is a truth state that varies.

evting is an action out of world.

understand the command "evt" as something new.

understand "evt" as evting.

carry out evting:
	now ettest is whether or not ettest is false;
	say "Every-turn-test is now [if ettest is true]on[else]off[end if].";
	the rule succeeds;

every turn when ettest is true: [this can be varied based on the test we wish to run]
	if missile is visible:
		try shooting the missile;

chapter hintalling

[* HINTALL detects which items still need hinting]

hintalling is an action out of world.

understand the command "hintall" as something new.

understand "hintall" as hintalling.

carry out hintalling:
	let mycount be 0;
	let should-hint be true;
	let times-in-table be 0;
	repeat with VTH running through all things:
		now should-hint is true;
		now times-in-table is 0;
		if VTH is useless or VTH is amusing or VTH is abstract:
			now should-hint is false;
		repeat through table of hintobjs:
			if hint-entry entry is VTH, increment times-in-table;
		if should-hint is false:
			if times-in-table > 0:
				increment mycount;
				say "[VTH] is in hint table ([times-in-table]) but should not be.";
		else if times-in-table is not 1:
			increment mycount;
			say "[VTH] should be in hint table once but is in [times-in-table] times.";
	if mycount is 0:
		say "Everything that needs to be hinted is! Yay!";
	the rule succeeds;

section so hintall works ok

[ * this is to work with the flexible windows extension so we cna check everything is hinted and abstract tiems/ideas don't show ]

main-window is abstract.

Null-bitmap-typeface is abstract.

Null-image-typeface is abstract.

null tileset is abstract.

Glimmr C&C is abstract.

graphics-window is abstract.

chapter foing

[* this lets the player cheat through the forest. It's used in general testing commands so I can make sure I went the right way.]

foing is an action out of world.

understand the command "fo" as something new.

understand "fo" as foing.

carry out foing:
	if player is not in rf and player is not in sf:
		say "This command has no meaning outside the start of the forest." instead;
	if number of visible guiders is not 1:
		say "BUG! There should be only one guider visible. There are [number of visible guiders].";
		repeat with GG running through guiders:
			say "[GG] is in [location of GG].";
		the rule succeeds;
	let GGG be a random visible guider;
	try going godir of GGG;
	the rule succeeds;

chapter dscing

[* DEBUG SCAN scans something before flipping it]

dscing is an action out of world.

understand the command "dsc" as something new.

understand "dsc" as dscing.

carry out dscing:
	now debug-scan is whether or not debug-scan is false;
	say "Debug-scanning is now [on-off of debug-scan].";
	the rule succeeds;

chapter dpaing

[* DEBUG PARSE toggles whether we parse when we debug-scan]

dpaing is an action out of world.

understand the command "dpa" as something new.

understand "dpa" as dpaing.

carry out dpaing:
	now debug-parse is whether or not debug-parse is false;
	say "Debug-parsing is now [on-off of debug-parse].";
	the rule succeeds;

chapter verif

[* for use with rules verification extension: TEST X ]

table of verification rules (continued)
rule-short (topic)	rule-name	rule-description
"ts"	trips-strip rule	"At trips strip e.g. solved area"
"sco"	max-reg-score rule	"All solved region scores are maximum"
"rm"	in-means-manse rule	"In Means Manse"
"fi"	in-fields rule	"In fields"

this is the in-fields rule:
	if the player is in self-id fields:
		the rule succeeds;
	the rule fails;

this is the max-reg-score rule:
	let tempbool be true;
	repeat with REG running through solved regions:
		if last-loc of REG is visited:
			if cur-score of REG is not max-score of REG:
				append "Region [REG] only has [cur-score of REG] of [max-score of REG] points.[line break]" to the file of test results;
				now tempbool is false;
	if tempbool is true:
		the rule succeeds;
	the rule fails;

this is the trips-strip rule:
	if the player is in trips strip:
		the rule succeeds;
	the rule fails.

this is the in-means-manse rule:
	append "Current score = [cur-score of resort] of [max-score of resort].[line break]" to the file of test results;
	if player is in Means Manse:
		the rule succeeds;
	the rule fails;

chapter shomising

[ * shomis lets you see what the player missed after solving a region. It's obviously imperfect but it's useful for testing when I don't want to jump to the very end. ]

shomising is an action applying to nothing.

understand the command "shomis" as something new.

understand "shomis" as shomising.

carry out shomising:
	carry out the showing what the player missed activity;
	the rule succeeds;

chapter auing

[ * turn on auto-yes dialogue or auto-no. 1=y 0=nothing -1=no ]
auing is an action out of world applying to one number.

understand the command "au" as something new.

understand "au [number]" as auing.

carry out auing:
	if number understood > 1 or number understood < -1:
		say "1 = auto-yes 0 = auto-off -1 = auto-no." instead;
	if number understood is yn-auto:
		say "It's already set to [auto-set]." instead;
	say "Y/N responses changed from [auto-set] to ";
	now yn-auto is number understood;
	say "[auto-set].";
	the rule succeeds;

to say auto-set:
	say "[if yn-auto is 1]auto-yes[else if yn-auto is -1]auto-no[else]no auto[end if]";

chapter showtabing

[ * this shows table names for auto-testing purposes (random text) ]

showtabing is an action out of world.

understand the command "showtab" as something new.

understand "showtab" as showtabing.

carry out showtabing:
	now showtabname is whether or not showtabname is false;
	say "Showing table names in random text is now [on-off of showtabname].";
	the rule succeeds;

chapter tnting

[ * tnt toggles if both hints are shown on something good. ]

tnting is an action out of world.

understand the command "tnt" as something new.

understand "tnt" as tnting.

carry out tnting:
	now tnt is whether or not tnt is false;
	say "Tip-no-tip is now [on-off of tnt].";
	the rule succeeds;

chapter apping

[ * APP tests what is on the prep paper every move]

apping is an action applying to nothing.

understand the command "app" as something new.

understand "app" as apping.

show-prep is a truth state that varies.

carry out apping:
	if show-prep is false:
		now show-prep is true;
	else:
		now show-prep is false;
	say "We now [if show-prep is false]don't [end if]show the prep paper's contents every move.";
	the rule succeeds;

after fliptoing when show-prep is true:
	consider the prep-rehash rule;
	continue the action;

every turn when player has prep paper (this is the prep-rehash rule):
	if show-prep is true:
		say "====PREP PAPER SAYS[line break]";
		try examining prep paper;
		say "====END PREP PAPER[line break]";
