Version 1/190507 of STS Common by Andrew Schultz begins here.

[this is a collection of functions common to A Roiling Original and Shuffling Around, two games from the Stale Tales Slate with common code.]

include STS Universal by Andrew Schultz.

part trivial stubs

to say now-once of (ts - a truth state): say "[if ts is true]now[else]once[end if]"

to say now-once-num of (nu - a number): say "[if nu > 0]now[else]once[end if]"

part game-dependent variables and super-stubs

orig-region is a region that varies. [ordeal loader/ (means manse or ordeal reload)]

hub-region is a region that varies. [stores in each case]

hub-room is a room that varies. [trips strip/strip of profits]

to moot (th - a thing): move th to Emerita Emirate; [ it's meatier emerita emirate in roiling, but the namespace works out ok, so we don't need to specify moot-room.]

to mootl (lt - a list of things): [used in particular for getting rid of fruits in Rustic Citrus.]
	repeat with Q running through lt:
		moot Q;

definition: a thing (called th) is moot:
	if th is in Emerita Emirate, yes;
	no;

definition: a thing (called th) is dislodged: [useful for fruits checking especially in ARO]
	if th is moot, yes;
	if th is carried by the player, yes;
	no;

definition: a thing (called ht) is spayshul:
	if ht is an xtrhelp listed in spechelp of mrlp, decide yes;
	decide no.

the file of debuggery is called "debug". [deprecated slightly but still useful for manual runthroughs]

to decide whether the action is talkative:
	if talking to, yes;
	if objasking generically, yes;
	if objasking about, yes;
	if asking about, yes;
	no;

chapter notepad stuff

to decide whether (tx - text) is padded:
	repeat through table of notepad entries:
		if short entry is tx:
			if known entry is true, yes;
			no;
	say "BUG: [tx] should have a notepad entry but doesn't! This isn't critical, but I'd like to know about it.";
	no;

to verbsplain (t - text):
	repeat through table of notepad entries:
		if t is short entry:
			if known entry is true:
				if t is padded, say "[2da][blurb entry][line break]";
			continue the action;
	say "BUG: unknown verb-to-explain [t].";

chapter default rules to ignore

procedural rule: ignore the print final score rule.

the can't eat unless edible rule is not listed in any rulebook.

the can't push what's fixed in place rule is not listed in any rulebook.
the can't pull what's fixed in place rule is not listed in any rulebook.

the can't push people rule is not listed in any rulebook.
the can't push scenery rule is not listed in any rulebook.
the can't pull people rule is not listed in any rulebook.
the can't pull scenery rule is not listed in any rulebook.

chapter backdrop basics

a backdrop has a truth state called touched-yet.

a backdrop has a region called drop-region.

every turn (this is the tag backdrops for hinting rule):
	repeat with BD running through touchable backdrops:
		now touched-yet of BD is true;

chapter portal basics

a portal is a kind of thing. a portal is usually fixed in place. the specification of portal is "A thing that allows you access to vulnerable areas of Yorpwald."

a portal can be fake-enterable. a portal is usually fake-enterable.

a portal can be enter-clued. a portal is usually not enter-clued.

a portal has a region called go-region. a portal has text called solved-text.

a portal has a rule called entry-rule. entry-rule of a portal is usually the debug-fill-in-here rule.

a portal can be ever-entered or never-entered. a portal is usually never-entered.

report entering a portal: process the move dumbdrops rule;

this is the debug-fill-in-here rule:
	if debug-state is true, say "We need to fill this in.";

section actions on portals

check opening a portal: say "You can just enter." instead;

check closing a portal: say "You can't close [the noun], but there's no need to." instead;

check taking a portal:
	say "I'll assume you meant 'take' as in entering [the noun]. If not, you can undo.";
	try entering the noun instead;

chapter region stuff

to decide what region is mrlp: decide on map region of location of player.

a region can be solved, unsolvable, unsolved, shortcircuited, bypassed or frivolous. a region is usually unsolved.

a region has a number called max-score. the max-score of a region is usually zero.

a region has a number called min-score. the min-score of a region is usually zero.

a region has a number called poss-score. the poss-score of a region is usually zero.

a region has a number called cur-score. the cur-score of a region is usually zero.

a region has a table name called regnud. a region has a table name called regana.

a region has a table name called spechelp.

a region has a room called last-loc.

a region has a rule called reg-hint-rule.

a region has a rule called goto-check.

a region has a rule called misses-rule.

a region has a list of things called item-list.

a region has a list of things called worn-list.

definition: a region (called rg) is explored:
	if last-loc of rg is visited, yes;
	no;

section room stuff

a room has a table name called roomnud. roomnud of a room is usually the Table of No Nudges.

Table of No Nudges
this-cmd	hashval	this-item	this-rule (rule)	this-clue
text	a number	a thing	a rule	text

to say here-there of (rm - a room): say "[if player is in rm]here[else][rm][end if]"

to say in-here-there of (rm - a room): say "[if player is in rm]here[else]in [rm][end if]"

section region scoring

to poss-d:
	decrement poss-score of mrlp;
	d "Taking away a max point. Max-score now [poss-score of mrlp].";

to min-up:
	increment min-score of mrlp;
	d "min-up codepath--point likely added in carry out fliptoing rule on LLPish item. Min-score now [min-score of mrlp].";

to min-and:
	increment min-score of mrlp;
	reg-inc;
	d "min-and codepath -- forcing point and min point adding. This should be used for odd non-flip points. Current=[cur-score of mrlp] min=[min-score of mrlp].";

to min-and-q:
	increment min-score of mrlp;
	reg-inc-q;
	d "min-and-q codepath: maybe adding an additional point for especially neat actions";

to reg-inc:
	reg-inc-q;
	score-notify;

to reg-inc-q:
	increment the score;
	if mrlp is nothing:
		say "BUG NOTE: This location needs a map region!";
	else:
		increment the cur-score of mrlp;

last-solved-region is a region that varies.

chapter person/animal stuff

definition: a person (called pe) is npcish:
	if pe is the player, no;
	if pe is touchable, yes;
	decide no;

chapter hint variables

first-hint-check is a truth state that varies.

scams is a truth state that varies. [can we do hints every turn like the saltine or snoop spoon?]

section debug variables that need to be in release

hintfull is a truth state that varies. hintfull is usually false.

hint-to-file is a truth state that varies.

part thingdefs

a thing can be examined or unexamined. a thing is usually unexamined.

a thing can be LLPish. a thing is usually not LLPish.

a thing can be universal, useless, amusing, cluey, unimportant, abstract, bounding or practical. a thing is usually practical.

a thing can be unscannable. a thing is usually not unscannable.

a thing can be read-yet. a thing is usually not read-yet.

to say re-read of (th - a thing): say "[if th is not read-yet]re-[end if]read"

volume when play begins

when play begins:
	repeat through table of notepad entries:
		if there is no verify entry, now verify entry is true;
	repeat with Q running through regions:
		now poss-score of Q is max-score of Q;

volume verbs

chapter score (first time)

check requesting the score for the first time (this is the cheesy points piston joke rule) : if mrlp is not frivolous, say "You hear a points postin['] piston rev up. It quickly drifts into background noise, fortunately not followed by the sound of combusting Pintos.[paragraph break]";

chapter diagonal movements

check going when noun is not planar (this is the reject diagonals and up/down rule):
	if noun is diagonal:
		say "[one of]Intermediate? Terminate! Die![or]Diagonals?! A sad lingo.[or]Diagonals?! So anal. Dig?[in random order][one of][line break][i][bracket]Note: [this-game]'s taxing enough without diagonal directions. If you can't find a way to go, type [b]EXITS[r].[close bracket][r][or][stopping][line break]" instead;
	if the noun is vertical:
		if the room noun of the location of player is nowhere:
			say "if there is a way [noun], it should be clear in the description. Hopefully. If not, try [b]EXITS[r]." instead;

chapter minor verbs and blocking rules

the block burning rule is not listed in any rulebook.
the block buying rule is not listed in any rulebook.
the block drinking rule is not listed in any rulebook.
the block jumping rule is not listed in any rulebook.
the block kissing rule is not listed in any rulebook.
the block listening rule is not listed in any rulebook.
the block saying no rule is not listed in any rulebook.
the block saying sorry rule is not listed in any rulebook.
the block saying yes rule is not listed in any rulebook.
the block smelling rule is not listed in any rulebook.
the block sleeping rule is not listed in any rulebook.
the block swearing mildly rule is not listed in any rulebook.
the block swearing obscenely rule is not listed in any rulebook.
the block waving hands rule is not listed in any rulebook.
the block waking up rule is not listed in any rulebook.
the block tasting rule is not listed in any rulebook.
the block thinking rule is not listed in any rulebook.
the block throwing at rule is not listed in any rulebook.

section saying sorry

check saying sorry: say "I can't do anything with that apology." instead;

section waking (generic to both games)

check waking up: say "Wake? Weak!" instead;

section showing block

the block showing rule is not listed in any rulebook.

check showing it to (this is the new block showing rule) : say "You can't think why that would impress or help or scare the present company, so, maybe not." instead.

part gotoing framework

gotoing is an action applying to one visible thing.

understand the command "go [any reasonable-goto room]" as something new.
understand the command "go to [any reasonable-goto room]" as something new.
understand the command "gt [any reasonable-goto room]" as something new.

understand "go [any reasonable-goto room]" as gotoing.
understand "go to [any reasonable-goto room]" as gotoing.
understand "gt [any reasonable-goto room]" as gotoing.

definition: a room (called rm) is reasonable-goto:
	if rm is hub-room and hub-room is visited, yes; [just to let the player RETRY]
	if map region of rm is mrlp, yes;
	if rm is visited, yes;
	no;

a room can be shunned. a room is usually not shunned. [Force GO TO ROOM to fail even if you've been there and its priority *seems* OK. The two biggest cases so far: Dourest Detours and End Den are blocked off in Oyster once you solve the puzzles to get by them.]

a room has a number called progval. progval of a room is usually 0. [again for GO TO ROOM, from progval of 2 to 1 is not valid]

a room has text called outside-text. [ this is a nongeneric reject for OUT ]

a room has text called exits-text. [ this is status when the player types EXITS ]

definition: a room (called myr) is really-nearby:
	if myr is in mrlp and myr is visited and myr is not shunned, yes;
	no;

does the player mean going to a really-nearby room: it is very likely.

check gotoing (this is the reject trivial goto rule): if noun is location of player, say "You're already here. Or there. The precise grammar's neither here nor there." instead;

Rule for supplying a missing noun while gotoing:
	say "You need to specify somewhere to go.";
	reject the player's command;

part gotothinging framework

gotothinging is an action applying to one visible thing.

does the player mean gotothinging a thing carried by the player: it is unlikely.
does the player mean gotothinging a thing in location of the player: it is unlikely.
does the player mean gotothinging a sameregion thing: it is likely.

definition: a thing (called th) is sameregion:
	if th is a backdrop, no;
	if th is off-stage, no;
	if th is touchable, no;
	if mrlp is map region of location of th, yes;
	no;

understand "go to [any thing-goable thing]" as gotothinging.
understand "goto [any thing-goable thing]" as gotothinging.
understand "gt [any thing-goable thing]" as gotothinging.
understand "gi [any thing-goable thing]" as gotothinging.
understand "go [any thing-goable thing]" as gotothinging.

definition: a thing (called th) is thing-goable: [note: this is trivially defined now, as if something is in an unvisitable room, "carry out gotoing" rejects it]
	if th is off-stage, no;
	yes;

carry out gotothinging:
	if noun is a backdrop, say "Unfortunately, since [the noun] can be seen from or in more than one place, I can't go there." instead;
	if location of noun is Adorb Bardo, say "Since [the noun] is sort of in an in-between state, I can't go to it. But you can probably recall it." instead;
	if location of noun is Emerita Emirate, say "You don't need to do anything further with [the noun]. If you want to go where you last saw [the noun], you'll need to specify the place." instead;
	d "Going to [location of noun], where [the noun] is.";
	try gotoing location of noun instead;

Rule for supplying a missing noun while gotothinging:
	say "You need to specify somewhere to go.";
	reject the player's command;

part xrooming

room-look-warn is a truth state that varies.

xrooming is an action applying to one visible thing.

understand "x [any room]" as xrooming.
understand "examine [any room]" as xrooming.

check xrooming:
	if noun is location of player:
		say "[b]X[r]/[b]EXAMINE[r] ([b]ROOM[r]) is equivalent to [b]LOOK[r] in [this-game]. Sometimes this will describe scenery for you, but it doesn't have critical information.";
		try examining location of player instead; [shouldn't happen but just in case]
	say "[if noun is visited]You've been there, but you can't see that far[x-room-n][else]Sorry, I understood the verb, but I didn't understand the noun[end if].";
	if room-look-warn is false:
		say "[line break]";
		ital-say "[b]X[i]/[b]EXAMINE[i] ([b]ROOM[i]) is usually equivalent to [b]LOOK[i] in [this-game].";
		now room-look-warn is true;
	the rule succeeds;

to say x-room-n: say "[one of]. [b]X ROOM[r] is really just the same as [b]LOOK[r] for the room you're in, and you don't need to look ahead or behind[or][stopping]"

part sitesing

to say email: say "blurglecruncheon@gmail.com".

to say ghsite: say "http://github.com/andrewschultz/stale-tales-slate/[gm-short]"

sitesing is an action out of world.

understand the command "sites" as something new.

understand "sites" as sitesing.

carry out sitesing:
	if cur-score of orig-region is 0:
		say "Last chance spoiler warning. Sure you want to look?";
		if the player yes-consents:
			do nothing;
		else:
			say "Ok. Back to the game." instead;
	say "http://wordsmith.org/anagram/ -- Anu Garg's Rearrangement Server at wordsmith.org was invaluable to me. Hard to believe I've known about it for fifteen years. You've probably seen it before, too, but it's the big one for the main game mechanic. The sayings that go with each anagram have also helped me in many other ways. It's still fun after all these years.[line break]http://www.anagrammy.com/anagrams/faq6.html[line break]http://www.english-for-students.com/One-Word-Anagrams.html[line break]http://www.enchantedlearning.com/english/anagram/ was quite nice for common anagrams by subject.[line break]http://www2.vo.lu/homepages/phahn/anagrams/oneword.htm[line break]http://www.ssynth.co.uk/~gay/anagram.html[line break]http://www.wellho.net/resources/ex.php4?item=p669/anagram (basic succinct Perl anagram finder)[line break]http://boards.straightdope.com/sdmb/archive/index.php/t-291149.html for specific words and also ideas how to script more complex stuff[line break]http://www.rinkworks.com/words/oddities.shtml[line break]http://www.sporcle.com/ had many puzzles that helped me determine what was fair and what wasn't[line break]http://jamesgart.com/anagram/[line break]PERL and Python for letting me parse through word-to-word anagrams and also helping me break one promising word into two.[paragraph break]I'd be interested if someone from France can ref these sites to make a similar game, someone from Spain could take pains, or a German manager could do so too. It'd be interesting to see.";
	say "And it's already mentioned in the credits, but [ghsite] is where the project is hosted. I recommend using source control if at all possible. Even if you just use it to keep a backup, or be sure of what you changed, it can save a lot of trouble.";
	the rule succeeds; [forgot where I found the names from]

part possing

possing is an action out of world.

understand the command "poss" as something new.

understand "poss" as possing.

possibles is a truth state that varies.
min-alert is a truth state that varies.

carry out possing:
	now possibles is whether or not possibles is false;
	say "Switching [on-off of possibles] minimum/maximum available point notification in the status line. ";
	if min-alert is false:
		ital-say "this is a quasi-spoiler of sorts, since watching the maximum possible score drop means your most recent move precluded getting an easter egg. Or watching the minimum score increase may mean you found one.";
	else:
		say "[line break]";
	now min-alert is true;
	pad-rec-q "poss";
	the rule succeeds;

report requesting the score for the first time: poss-display.

to poss-display:
	if possibles is false and min-alert is false and max-score of mrlp > 0:
		ital-say "You can toggle seeing the minimum points to pass an area, or maximum achievable points, by typing [b]POSS[i]. This is a potential spoiler, since the minimum score increasing indicates you found a Last Lousy Point, and the maximum score decreasing indicates one is no longer available. But maybe you'd like that sort of hint, too.";
		now min-alert is true;
		pad-rec "poss";

to say poss-range: say "[if poss-score of mrlp is not min-score of mrlp][min-score of mrlp]-[poss-score of mrlp][else]*[poss-score of mrlp]*[end if]";

part bugtracking

to say bug-report:
	abort-if-bugfind;
	say "BUG. You should not have seen this. Contact me at [email] with a transcript or description of where you are/what you did, or report a bug at [ghsite], because this is something I want to fix. Use up arrow to see previous commands. Or use [b]UNDO[r] several times and hit [b]TRANSCRIPT[r] to show me how you got here, what your inventory was, etc.[paragraph break]You can also report reproducible bugs at [ghsite]. Thanks so much for taking the time!"

bugsquash is a truth state that varies.

to abort-if-bugfind:
	say "Attempting to cut off testing bugsquash = [bugsquash].";
	if bugsquash is true:
		say "[word number 1 in the player's command] = word in player's command, [noun] = noun, [second noun] = second noun, [current action] = current action.";
		say "Turn off bailing behavior with [b]SQ[r].";
		if word number 1 in the player's command is not "showme":
			say "Cutting off testing now.";
			end the story finally;
			follow the shutdown rules;

chapter bsing - not for release

[* SQ turns bugsquash on ]

sqing is an action out of world.

understand the command "sq" as something new.

understand "sq" as sqing.

carry out sqing:
	now bugsquash is whether or not bugsquash is false;
	say "Now bugsquash (end game on <BUG> text) is [on-off of bugsquash].";
	the rule succeeds;

volume multiple items

the first time takeall notify rule is listed first in the instead rules.
the don't allow dropping all rule is listed before the first time takeall notify rule in the instead rules.

getall-warn is a truth state that varies.

instead of taking when number of entries in multiple object list > 1 (this is the first time takeall notify rule): [no-irp] [??]
	if getall-warn is false:
		say "Multiple item-pull!";
		now getall-warn is true;
	continue the action;

instead of dropping when number of entries in multiple object list > 1 (this is the don't allow dropping all rule): [no-irp] [??]
	let Q be the noun;
	say "[game-specific-drop-msg].";
	alter the multiple object list to { Q };
	continue the action;

volume boring things

part rooms are sort of boring

instead of doing something with the location of the player (this is the location is too general rule): [no-irp]
	if current action is gotoing, continue the action;
	if current action is examining or current action is xrooming or current action is scaning or current action is gotothinging, continue the action;
	say "You may need to change your location at some time, but you never need to do anything with it in a command."

part boring things

a thing can be boring. a thing has text called bore-text. a thing has a rule called the bore-check. bore-check of a thing is usually bore-pass rule.

boring-exception is a truth state that varies.

instead of doing something with a boring thing: [no-irp]
	if debug-state is true, say "DEBUG note: [current action] with [noun] is under scrutiny, with [bore-check of noun].";
	abide by the bore-check of noun;
	if action is procedural or boring-exception is true:
		if debug-state is true and boring-exception is true, say "DEBUG note: [current action] with [noun] slips general boring-thing rules.";
		now boring-exception is false;
		continue the action;
	abide by the bore-exam rule;
	say "[bore-text of noun][line break]" instead;

this is the bore-pass rule: do nothing; [probably not necessary, but just in case...]

this is the bore-exam rule: [note: I caused bugs by saying PROCESS THE BORE-EXAM RULE instead of ABIDE BY. Enough that I'll write this note in.]
	if current action is examining:
		if description of noun is empty:
			if debug-state is true, say "(DEBUG: pulling bore-text) ";
			say "[bore-text of noun][line break]";
			the rule succeeds;
	else if bore-text of noun is empty:
		say "There's not much to do with [the noun] besides examining. So you do.";
		try examining the noun;
		the rule succeeds;

part dumbdrops

a dumbdrop is a kind of thing. a dumbdrop is always scenery. a dumbdrop is usually boring. a dumbdrop has a rule called drop-rule. drop-rule of a dumbdrop is usually the degen-false rule.

report going (this is the move dumbdrops rule):
	repeat with Q running through dumbdrops:
		process the drop-rule of Q;
		if the rule succeeded, move Q to location of player;

volume hinting stuff

part hints

to say plus:
	say "[run paragraph on][one of] (+) [i][bracket]Note: the plus sign means you can [b]HINT[r] again for something more spoilery. (-) means the end of a list of hints.[no line break][r][close bracket][or] (+)[stopping]";

to say minus:
	if prevent-thruhint-flag is false, now cur-item is thruhinted;
	say "[one of] (-) [bracket][i]A minus sign means you've reached the end of a hint loop. You can cycle through them again, though.[no line break][r][close bracket][or] (-)[stopping]";

prevent-thruhint-flag is a truth state that varies. [a test variable for ignoring random hints that fall through]

chapter ptfing - not for release

ptfing is an action applying to one number.

understand the command "ptf" as something new.

understand "ptf [number]" as ptfing.

carry out ptfing:
	let was-already be prevent-thruhint-flag;
	if the number understood is 1:
		now prevent-thruhint-flag is whether or not prevent-thruhint-flag is false;
	else if the number understood is 2:
		if prevent-thruhint-flag is true, now was-already is true;
		now prevent-thruhint-flag is true;
	else if the number understood is 0:
		if prevent-thruhint-flag is false, now was-already is true;
		now prevent-thruhint-flag is false;
	say "Ignoring hint completion [if was-already is prevent-thruhint-flag]was already[else]is now[end if] [on-off of prevent-thruhint-flag].";
	the rule succeeds;

ptf1ing is an action out of world.

understand "ptf" as ptf1ing.

carry out ptf1ing:
	try ptfing 1;

part disambiguation

include Bypass Disambiguation by Climbing Stars.

rule for asking which do you mean (this is the bypass disambiguation rule):
	if current action is objhinting or current action is gotothinging or current action is objasking or current action is objasking generically:
		say "Sorry, [one of]but you may not have been specific enough with the [if current action is gotothinging]going[else if current action is objhinting]hint[else]asking[end if] request. I'm going to err on the side of caution instead of possibly disambiguating something you haven't seen. This is a possible coding bug (and I'd like to know,) but it may also prevent spoilers. For best results, you should try to visit the location of whatever you want hinted or be more detailed in your request[or]this request seems too vague. If it's a bug, let me know[stopping].";
		bypass disambiguation;
		the rule succeeds;
	continue the action;

after asking which do you mean (this is the bypass disambiguation 2 rule):
	if current action is objhinting or current action is gotothinging or current action is objasking or current action is objasking generically:
		bypass disambiguation;
		the rule succeeds;
	continue the action;

volume trivial rules

this is the degen-false rule: the rule fails.

this is the degen-true rule: the rule succeeds.

volume transcript stuff

check quitting the game when currently transcripting:
	say "Thanks for taking a transcript. Please send it to [email] and I'll be grateful. Thanks!";

report switching the story transcript on:
	say "Thanks for taking this transcript! If you've never made a transcript before, it's not hard. Type [b]TRANSCRIPT[r] and save to a text file and start any comments with ; or * or ?. Then locate the file and mail it to me at [email]. Don't worry if you don't make many comments--I can often see ways I didn't mean for the player to get stuck.[paragraph break]	While Shuffling Around's puzzles are rather stable, I'm interested in anything from 'this is broken' or 'this was hinted poorly' to 'you missed this joke.' Authors enjoy getting transcripts--I mean, after we realize what we did wrong, we can learn a lot.[paragraph break]You can also report and see issues at [ghsite].[paragraph break]Again, my email address is [email]. Thanks!";
	continue the action;

volume post-game stubs

a region can be tickedoff. a region is usually not tickedoff.

to say eqls: if screenread is false, say "====";

to say eq2: if screenread is false, say "[eqls][eqls]";

to say 2da: if screenread is false, say "--";

to say 2dg of (rg - a region):
	if rg is not tickedoff:
		say "[eqls][b][printed name of rg in upper case][r][line break]";
		now rg is tickedoff;

to say 2dmiss of (cr2 - a region):
	if anything-missed is false:
		say "[eqls][b][cr2][r]:[line break]";
	now anything-missed is true;
	say "[2da]";

miss-room is a room that varies.

to say 2drm of (rr - a room):
	if anything-missed is false, say "[2dg of map region of rr]";
	unless miss-room is rr, say "[eqls][b][rr][r][eqls][line break]";
	now miss-room is rr;
	say "[2da]";

anything-missed is a truth state that varies.

volume glulx stuff

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

volume resave/averse

chapter variables

autosave is a truth state that varies. autosave is true.

autosave-known is a truth state that varies.

a region can be autosavable. a region is usually autosavable.

chapter rules

this is the autosave on region complete rule:
	if autosave is true and mrlp is autosavable:
		if autosave-known is false and mrlp is orig-region:
			say "[line break]";
			ital-say "[this-game][i] is configured to create an auto-save dialogue after each region you solve. This can be switched off with [b]AVERSE[i] or switched back on with [b]RESAVE[i]. You can also abort saving with no penalty. This nag will not reappear.";
			wfak;
		if debug-state is false:
			try saving the game;
		else:
			say "<debug mode skips game-saving dialogue so test runs are continued>[line break]";
	now autosave-known is true;

chapter resaveing

resaveing is an action out of world.

understand the command "resave" as something new.

understand "resave" as resaveing.

carry out resaveing:
	say "The auto-saving flag is [if autosave is true]already[else]now[end if] set to [b]RESAVE[r], or on.";
	now autosave is true;
	the rule succeeds;

chapter averseing

averseing is an action out of world.

understand the command "averse" as something new.

understand "averse" as averseing.

carry out averseing:
	say "The auto-saving flag is [if autosave is false]already[else]now[end if] set to [b]AVERSE[r], or off.";
	now autosave is false;
	the rule succeeds;

volume debug variables that must be in common file since they appear in release functions

end-menu-testing is a truth state that varies.

this is the avoid keypress in menu testing rule: if end-menu-testing is true, say "Skipping the end-menu-testing options so automated testing doesn't get stuck." instead;

book end menu testing - not for release

chapter emying

emying is an action out of world.

understand the command "emy" as something new.

understand "emy" as emying.

carry out emying:
	say "End menu testing (skip wait-for-key) is [if end-menu-testing is true]already[else]now[end if] on.";
	now end-menu-testing is true;
	the rule succeeds;

chapter emning

emning is an action out of world.

understand the command "emn" as something new.

understand "emn" as emning.

carry out emning:
	the rule succeeds;

volume exits metaverb

exitsing is an action out of world.

understand the command "exits" as something new.

understand "exits" as exitsing.

carry out exitsing:
	if exits-text of location of player is not empty, say "[exits-text of location of player][line break]" instead;
	if number of viable directions is 0:
		d "This is the generic no-exits message, so you'll want to add exits-text for [location of player] in story.ni.";
		say "There are no directional exits here, but that doesn't mean you're stuck. Maybe you can figure a way to create one[if number of touchable enterable things > 0], and it looks like there's something to [b]ENTER[r][end if]." instead;
	if number of viable directions is 1, say "The only way you seem to be able to go is [list of viable directions]." instead;
	say "There are [number of viable directions in words] unblocked exits: [list of viable directions].";
	the rule succeeds;

after printing the name of a direction (called dir) when exitsing:
	let RDLP be the room dir of location of player;
	unless RDLP is nothing:
		if RDLP is visited, say " to [RDLP]";
	continue the action;

volume ending stuff

[ I'd rather not include a RANKS line of the table of final ending questions, as I'd like it last, since it is the least important/detailed of the endgame options ]

this is the show ranks rule:
	say "Here is a list of ranks achievable throughout [this-game].";
	repeat through table of ranks:
		if there is a show-at-end-rule entry:
			process the show-at-end-rule entry;
			if the rule failed, next;
		say "[b][rank-name entry][r]: [to-achieve entry][line break]";

volume specific items

part hubs bush popup

[must be after boring thing descriptions]

the hubs bush is boring scenery. the hubs bush is bounding. description is "The hubs bush encircles the entire [location of player], and it's too thorny and thick to get through. You're stuck here, unless you warp through a[if any-store-visited]nother[end if] store.". bore-text is "The hubs bush that sprung up has pinned you by the stores. Hooray for focus, I guess."

to decide whether any-store-visited:
	repeat with myr running through regions:
		if myr is hub-region or myr is orig-region, next;
		if last-loc of myr is visited, yes;
	no;

check going nowhere in hub-room:
	say "[if hubs bush is in location of player]The hubs bush forces you back to the center of the [location of player][else]As you try to flee the [location of player], a voice booms 'Run off for fun? Urff, no!'[paragraph break]Up pops a bush--a hubs bush! It's too thick to walk through. You move to the side, but the bush expands.[paragraph break]Defeated, you turn back to the center--and when you look around, you notice the hubs bush encircles the whole [location of player][end if]. Guess you'll need to explore the stores, or what you [if number of moot stos > 0]made[else]can make[end if] of them.";
	move hubs bush to hub-room;
	the rule fails;

to say if-bush: say "[if hubs bush is in location of player]. The hubs bush that sprang up when you tried to escape still blocks your way out[end if]"

STS Common ends here.
