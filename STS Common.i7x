Version 1/190507 of STS Common by Andrew Schultz begins here.

[this is a collection of functions common to A Roiling Original and Shuffling Around. It would be too hard at the moment to integrate things back with Trivial Niceties, but maybe I can one day. ]

is-roiling is a truth state that varies.

To process (RL - a rule): [used to avoid Inform giving line breaks when I don't want them]
	(- ProcessRulebook({RL}, 0, true); -)

to rulesOn: [used to turn rules on at the very start of play]
	(- RulesOnSub(); -)

part gotoing framework

gotoing is an action applying to one visible thing.

understand the command "go [any reasonable-goto room]" as something new.
understand the command "go to [any reasonable-goto room]" as something new.
understand the command "gt [any reasonable-goto room]" as something new.

understand "go [any reasonable-goto room]" as gotoing.
understand "go to [any reasonable-goto room]" as gotoing.
understand "gt [any reasonable-goto room]" as gotoing.

definition: a room (called rm) is reasonable-goto:
	if rm is Trips Strip and Trips Strip is visited, yes; [just to let the player RETRY]
	if map region of rm is mrlp, yes;
    if rm is visited, yes;
	no;

a room can be shunned. a room is usually not shunned. [GO TO ROOM won't work]

a room has a number called progval. progval of a room is usually 0. [again for GO TO ROOM, from progval of 2 to 1 is not valid]

definition: a room (called myr) is really-nearby:
	if myr is in mrlp and myr is visited and myr is not shunned, yes;
	no;

does the player mean going to a really-nearby room: it is very likely.

check gotoing (this is the reject trivial goto rule): if noun is location of player, say "You're already here. Or there. The precise grammar's neither here nor there." instead;

part sitesing

to say email: say "blurglecruncheon@gmail.com".

to say ghsite: say "http://github.com/andrewschultz/stale-tales-slate/Shuffling"

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
a boringthing is a kind of thing. a boringthing has text called bore-text. a boringthing has a rule called the bore-check. bore-check of boringthing is usually bore-exam rule.

a boringscen is a kind of boringthing.

instead of doing something with a boringthing: [no-irp]
	abide by the bore-check of noun;
	if action is procedural, continue the action;
	say "[bore-text of noun]" instead;

this is the bore-pass rule: do nothing; [probably not necessary, but just in case...]

this is the bore-exam rule: [note: I caused bugs by saying PROCESS  THE BORE-EXAM RULE instead of ABIDE BY. Enough that I'll write this note in.]
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

STS Common ends here.
