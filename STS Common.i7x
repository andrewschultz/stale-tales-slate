Version 1/190507 of STS Common by Andrew Schultz begins here.

[this is a collection of functions common to A Roiling Original and Shuffling Around, two games from the Stale Tales Slate with common code.]

part game-dependant variables and super-stubs

is-roiling is a truth state that varies.

orig-region is a region that varies. [ordeal loader/ (means manse or ordeal reload)]

hub-region is a region that varies. [stores in each case]

hub-room is a room that varies. [trips strip/strip of profits]

To process (RL - a rule): [used to avoid Inform giving line breaks when I don't want them]
	(- ProcessRulebook({RL}, 0, true); -)

to rulesOn: [used to turn rules on at the very start of play]
	(- RulesOnSub(); -)

to say this-sts:
	(- print (string) Story; -)

to say gm-short: say "[if is-roiling is true]Roiling[else]Shuffling[end if]"

to moot (th - a thing): move th to Emerita Emirate; [ it's meateier emerita emirate in roiling, but the namespace works out ok ]

to mootl (lt - a list of things):
	repeat with Q running through lt:
		move Q to Emerita Emirate;

definition: a thing (called th) is moot:
	if th is in Emerita Emirate, yes;
	no;

definition: a thing (called ht) is spayshul:
	if ht is an xtrhelp listed in the table of spechelp, decide yes;
	decide no.

the file of debuggery is called "debug". [deprecated slightly but still useful for manual runthroughs]

to decide whether the action is talkative:
	if talking to, yes;
	if objasking generically, yes;
	if objasking about, yes;
	if asking about, yes;
	no;

chapter default rules to ignore

procedural rule: ignore the print final score rule.

the can't push what's fixed in place rule is not listed in any rulebook.
the can't pull what's fixed in place rule is not listed in any rulebook.

the block throwing at rule is not listed in any rulebook.
the block listening rule is not listed in any rulebook.
the block burning rule is not listed in any rulebook.
the block smelling rule is not listed in any rulebook.

the can't push people rule is not listed in any rulebook.
the can't push scenery rule is not listed in any rulebook.
the can't pull people rule is not listed in any rulebook.
the can't pull scenery rule is not listed in any rulebook.

chapter portal basics

a portal is a kind of thing. a portal is usually fixed in place. the specification of portal is "A thing that allows you access to vulnerable areas of Yorpwald."

a portal can be fake-enterable. a portal is usually fake-enterable.

a portal can be enter-clued. a portal is usually not enter-clued.

a portal has a region called go-region. a portal has text called solved-text.

a portal has a rule called entry-rule. entry-rule of a portal is usually the degen-true rule.

report entering a portal: process the move dumbdrops rule;

section actions on portals

check opening a portal: say "You can just enter." instead;

check closing a portal: say "You can't close [the noun], but there's no need to." instead;

check taking a portal:
	say "I'll assume you meant 'take' as in entering [the noun]. If not, you can undo.";
	try entering the noun instead;

chapter region stuff

to decide what region is mrlp: decide on map region of location of player.

a region can be solved, unsolvable, unsolved, needed, shortcircuited, bypassed or frivolous. a region is usually unsolved.

a region has a number called max-score. the max-score of a region is usually zero.

a region has a number called min-score. the min-score of a region is usually zero.

a region has a number called poss-score. the poss-score of a region is usually zero.

a region has a number called cur-score. the cur-score of a region is usually zero.

a region has a table name called regtab. a region has a table name called regana.

a region has a room called last-loc.

a region has a list of things called item-list.

a region has a list of things called worn-list.

definition: a region (called rg) is explored:
	if last-loc of rg is visited, yes;
	no;

section region scoring

to poss-d:
	d "Taking away a max point.";
	decrement poss-score of mrlp;

to min-up:
	d "min-up codepath--point likely added in carry out fliptoing rule on LLPish item.";
	increment min-score of mrlp;

to min-and:
	d "min-and codepath -- forcing point and min point adding. This should be used for odd non-flip points.";
	increment min-score of mrlp;
	reg-inc;

chapter person stuff

definition: a person (called pe) is npcish:
	if pe is the player, decide no;
	if location of pe is the location of the player, decide yes;
	decide no;

chapter debug variables that need to be in release

hintfull is a truth state that varies. hintfull is usually false.

hint-to-file is a truth state that varies.

part thingdefs

a thing can be examined or unexamined. a thing is usually unexamined.

a thing can be LLPish. a thing is usually not LLPish.

a thing can be universal, useless, amusing, cluey, unimportant, abstract, bounding or practical. a thing is usually practical.

a thing can be unscannable. a thing is usually not unscannable.

volume verbs

chapter diagonal movements

check going when noun is not planar (this is the reject diagonals and up/down rule):
	if noun is diagonal:
		say "[one of]Intermediate? Terminate! Die![or]Diagonals?! A sad lingo.[or]Diagonals?! So anal. Dig?[in random order][one of][line break][i][bracket]Note: this game's confusing enough without diagonal directions. If you can't find a way to go, type EXITS.[close bracket][r][or][stopping][line break]" instead;
	if the noun is vertical:
		if the room noun of the location of player is nowhere:
			say "if there is a way [noun], it should be clear in the description. Hopefully. If not, try EXITS." instead;

chapter minor verbs and blocking rules

the block saying yes rule is not listed in any rulebook.
the block saying no rule is not listed in any rulebook.
the block waking up rule is not listed in any rulebook.
the block tasting rule is not listed in any rulebook.
the block sleeping rule is not listed in any rulebook.

check waking up: say "Wake? Weak!" instead;

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

understand "go to [any thing-goable thing]" as gotothinging.
understand "goto [any thing-goable thing]" as gotothinging.
understand "gt [any thing-goable thing]" as gotothinging.
understand "gi [any thing-goable thing]" as gotothinging.
understand "go [any thing-goable thing]" as gotothinging.

definition: a thing (called th) is thing-goable:
	if th is in Emerita Emirate, no;
	if th is off-stage, no;
	if th is not a backdrop and location of th is unvisited, yes;
	yes;

carry out gotothinging:
	try gotoing location of noun instead;

Rule for supplying a missing noun while gotothinging:
	say "You need to specify somewhere to go.";
	reject the player's command;

part xrooming

xrooming is an action applying to one visible thing.

understand "x [any room]" as xrooming.
understand "examine [any room]" as xrooming.

check examining location of player:
	if noun is location of player:
		say "X/EXAMINE (ROOM) is equivalent to LOOK in [this-sts].";
		try looking instead;

check xrooming:
	if noun is location of player:
		say "X/EXAMINE (ROOM) is equivalent to LOOK in [this-sts].";
		try examining location of player instead; [shouldn't happen but just in case]
	say "[if noun is visited]You've been there, but[else]You haven't gotten there yet, and[end if] you can't see that far[x-room-n].";

instead of doing something with the location of the player:
	if current action is xrooming or current action is gotoing, continue the action;
	say "You may need to change your location at some time, but you never need to do anything with it in a command.";

check examining location of player (this is the fake the scenery rule) : try looking instead.

room-look-warn is a truth state that varies.

check xrooming:
	if room-look-warn is false:
		say "X/EXAMINE (ROOM) is usually equivalent to LOOK in Shuffling Around. Sometimes it will describe scenery for you, but it doesn't have critical information.";
		now room-look-warn is true;
	if noun is location of player, try looking instead; [shouldn't happen but just in case]
	say "[if noun is visited]You've been there, but you can't see that far[x-room-n][else]Sorry, I understood the verb, but I didn't understand the noun[end if].";

to say x-room-n: say "[one of]. X ROOM is really just the same as LOOK for the room you're in, and you don't need to look ahead or behind[or][stopping]"

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
	say "http://wordsmith.org/anagram/ -- Anu Garg's Rearrangement Server at wordsmith.org was invaluable to me. Hard to believe I've known about it for fifteen years. You've probably seen it before, too, but it's the big one for the main game mechanic. The sayings that go with each anagram have also helped me in many other ways. It's still fun after all these years.[line break]http://www.anagrammy.com/anagrams/faq6.html[line break]http://www.english-for-students.com/One-Word-Anagrams.html[line break]http://www.enchantedlearning.com/english/anagram/ was quite nice for common anagrams by subject.[line break]http://www2.vo.lu/homepages/phahn/anagrams/oneword.htm[line break]http://www.ssynth.co.uk/~gay/anagram.html[line break]http://www.wellho.net/resources/ex.php4?item=p669/anagram (basic succinct PERL anagram finder)[line break]http://boards.straightdope.com/sdmb/archive/index.php/t-291149.html for specific words and also ideas how to script more complex stuff[line break]http://www.rinkworks.com/words/oddities.shtml[line break]http://www.sporcle.com/ had many puzzles that helped me determine what was fair and what wasn't[line break]http://jamesgart.com/anagram/[line break]PERL for letting me parse through word-to-word anagrams and also helping me break one promising word into two.[paragraph break]I'd be interested if someone from France can ref these sites to make a similar game, someone from Spain could take pains, or a German manager could do so too. It'd be interesting to see.";
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
		ital-say "this is a quasi-spoiler of sorts, since watching the maximum possible score drop may mean you have missed an easter egg. Or watching the minimum score increase may mean you found one.";
	else:
		say "[line break]";
	now min-alert is true;
	pad-rec-q "poss";
	the rule succeeds;

report requesting the score for the first time: poss-display.

to poss-display:
	if possibles is false and min-alert is false:
		ital-say "You can toggle seeing the minimum points to pass an area, or maximum achievable points, by typing POSS. This is a potential spoiler, since the minimum score increasing indicates you found a Last Lousy Point, and the maximum score decreasing indicates one is no longer available. But maybe you'd like that sort of hint, too.";
		now min-alert is true;
		pad-rec "poss";

to say poss-range: say "[if poss-score of mrlp is not min-score of mrlp][min-score of mrlp]-[poss-score of mrlp][else]*[poss-score of mrlp]*[end if]";

part bugtracking

to say bug-report:
	abort-if-bugfind;
	say "BUG. You should not have seen this. Contact me at [email] with a transcript or description of where you are/what you did, or report a bug at [ghsite], because this is something I want to fix. Use up arrow to see previous commands. Or use UNDO several times and hit TRANSCRIPT to show me how you got here, what your inventory was, etc.[paragraph break]You can also report reproducible bugs at [ghsite]. Thanks so much for taking the time!"

bugsquash is a truth state that varies.

to abort-if-bugfind:
	say "Attempting to cut off testing bugsquash = [bugsquash].";
	if bugsquash is true:
		say "[word number 1 in the player's command] = first letter, [noun] = noun.";
		if word number 1 in the player's command is not "showme":
			say "Cutting off testing now.";
			end the story finally;
			follow the shutdown rules;

chapter bsing - not for release

[* BS turns bugsquash on ]

bsing is an action out of world.

understand the command "bs" as something new.

understand "bs" as bsing.

carry out bsing:
	now bugsquash is whether or not bugsquash is false;
	say "Now bugsquash (end game on <BUG> text) is [on-off of bugsquash].";
	the rule succeeds;

volume boring things

part rooms are sort of boring

instead of doing something with the location of the player (this is the location is too general rule): [no-irp]
	if current action is examining or current action is xrooming or current action is scaning or current action is gotothinging, continue the action;
	say "You may need to change your location at some time, but you never need to do anything with it in a command."

part boring things

a boringthing is a kind of thing. a boringthing has text called bore-text. a boringthing has a rule called the bore-check. bore-check of boringthing is usually bore-exam rule.

a boringscen is a kind of boringthing.

boring-exception is a truth state that varies.

instead of doing something with a boringthing: [no-irp]
	if debug-state is true, say "DEBUG note: [current action] with [noun] is under scrutiny.";
	abide by the bore-check of noun;
	if action is procedural or boring-exception is true:
		if debug-state is true and boring-exception is true, say "DEBUG note: [current action] with [noun] slips general boring-thing rules.";
		now boring-exception is false;
		continue the action;
	say "[bore-text of noun]" instead;

this is the bore-pass rule: do nothing; [probably not necessary, but just in case...]

this is the bore-exam rule: [note: I caused bugs by saying PROCESS THE BORE-EXAM RULE instead of ABIDE BY. Enough that I'll write this note in.]
	if current action is examining:
		if description of noun is empty:
			if debug-state is true, say "(DEBUG: pulling bore-text) ";
			say "[bore-text of noun]";
			the rule succeeds;
	else unless action is procedural:
		say "There's not much to do with [the noun] except examine [if noun is plural-named]them[else]it[end if]. So you do.";
		try examining the noun;
		the rule succeeds;

after choosing notable locale objects:
	repeat with item running through boringscen in location of player:
		set the locale priority of the item to 0;

part dumbdrops

a dumbdrop is a kind of boringscen. a dumbdrop has a rule called drop-rule. drop-rule of a dumbdrop is usually the degen-false rule.

report going (this is the move dumbdrops rule):
	repeat with Q running through dumbdrops:
		process the drop-rule of Q;
		if the rule succeeded, move Q to location of player;

volume command hashing -- thanks to Uncle David

part hash codes and values

book hashcodes

[ This is so the computer can determine if we have an anagram without doing crazy string manipulations. The precise numbers aren't important. It's been verified that only 16 word-pairs have overlapping hash values, and none of them appear in puzzles. Hashes are much faster than manipulating and sorting a string with regexes, so the tradeoff is worth it. ]

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

part hints

to say plus:
	say "[run paragraph on][one of] (+) [i][bracket]Note: the plus sign means you can HINT again for something more spoilery. (-) means the end of a list of hints.[no line break][r][close bracket][or] (+)[stopping]";

to say minus:
	now cur-item is thruhinted;
	say "[one of] (-) [bracket][i]A minus sign means you've reached the end of a hint loop. You can cycle through them again, though.[no line break][r][close bracket][or] (-)[stopping]";

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

volume specific items

part hubs bush popup

[must be after boringscen descriptions]

the hubs bush is a boringscen. the hubs bush is bounding. description is "The hubs bush encircles the entire [location of player], and it's too thorny and thick to get through. You're stuck here, unless you warp through a[if any-store-visited]nother[end if] store.". bore-text is "The hubs bush that sprung up has pinned you by the stores. Hooray for focus, I guess."

to decide whether any-store-visited:
	repeat with myr running through regions:
		if myr is hub-region or myr is orig-region, next;
		if last-loc of myr is visited, yes;
	no;

check going nowhere in hub-room:
	if hubs bush is in location of player, say "The hubs bush forces you back to the center of the [location of player]. You're stuck here with the stores, unless you can change or enter one." instead;
	move hubs bush to hub-room;
	say "As you try to flee the [location of player], up pops a bush--a hubs bush! It's too thick to walk through. You move to the side, but the bush expands. Defeated, you turn back to the center--and when you look around, you notice the hubs bush encircles the whole [location of player]." instead;

to say if-bush: say "[if hubs bush is in location of player]. The hubs bush that sprang up when you tried to escape still blocks your way out[end if]"

STS Common ends here.
