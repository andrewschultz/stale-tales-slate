Version 1/190507 of STS Common by Andrew Schultz begins here.

[this is a collection of functions common to A Roiling Original and Shuffling Around. It would be too hard at the moment to integrate things back with Trivial Niceties, but maybe I can one day. ]

part game-dependant variables and super-stubs

is-roiling is a truth state that varies.

orig-region is a region that varies. [ordeal loader/ (means manse or ordeal reload)]

hub-region is a region that varies. [stores in each case]

hub-room is a room that varies. [trips strip/strip of profits]

To process (RL - a rule): [used to avoid Inform giving line breaks when I don't want them]
	(- ProcessRulebook({RL}, 0, true); -)

to rulesOn: [used to turn rules on at the very start of play]
	(- RulesOnSub(); -)

to moot (th - a thing): move th to Emerita Emirate; [ it's meateier emerita emirate in roiling, but the namespace works out ok ]

to mootl (lt - a list of things):
	repeat with Q running through lt:
		move Q to Emerita Emirate;

definition: a thing (called th) is moot:
	if th is in Emerita Emirate, yes;
	no;

a thing can be examined or unexamined. a thing is usually unexamined.

chapter common procedural rules

procedural rule: ignore the print final score rule.

chapter portal basics

a portal is a kind of thing. a portal is usually fixed in place. the specification of portal is "A thing that allows you access to vulnerable areas of Yorpwald."

a portal can be fake-enterable. a portal is usually fake-enterable.

a portal can be enter-clued. a portal is usually not enter-clued.

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

section region scoring

to poss-d:
	d "Taking away a max point.";
	decrement poss-score of mrlp;

to min-up:
	d "min-up codepath--point likely added in carry out fliptoing rule.";
	increment min-score of mrlp;

to min-and:
	d "min-and codepath -- forcing point and min point adding. Should be used for odd non-flip points.";
	increment min-score of mrlp;
	reg-inc;

part thingdefs

a thing can be universal, useless, amusing, cluey, unimportant, abstract, bounding or practical. a thing is usually practical.

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

part sitesing

to say email: say "blurglecruncheon@gmail.com".

to say ghsite: say "http://github.com/andrewschultz/stale-tales-slate/[if is-roiling is true]Roiling[else]Shuffling[end if]"

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

part boring things

a boringthing is a kind of thing. a boringthing has text called bore-text. a boringthing has a rule called the bore-check. bore-check of boringthing is usually bore-exam rule.

a boringscen is a kind of boringthing.

instead of doing something with a boringthing: [no-irp]
	abide by the bore-check of noun;
	if action is procedural, continue the action;
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

For printing a locale paragraph about a thing (called the item)
	(this is the don't mention boringscen in room descriptions rule):
	if the item is boringscen, set the locale priority of the item to 0;
	continue the activity.

instead of doing something with a boringthing: [no-irp]
	abide by the bore-check of noun;
	if action is procedural, continue the action;
	say "[bore-text of noun]" instead;

part hash codes and values

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
