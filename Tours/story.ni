"Tours Roust Torus" by Andrew Schultz

volume top level stuff

the release number is 1.

release along with the "parchment" interpreter.

release along with a website.

release along with cover art.

the maximum score is 8.

section includes

include Tours Roust Torus Tests by Andrew Schultz.

include Trivial Niceties by Andrew Schultz.

include Tours Roust Torus Tables by Andrew Schultz.

include Tours Roust Torus Mistakes by Andrew Schultz.

volume globals and such

solved-initials is a truth state that varies.

in-heptagon-puzzle is a truth state that varies.

ever-heptagon-puzzle is a truth state that varies.

every turn when solved-initials is true and in-heptagon-puzzle is false and ever-heptagon-puzzle is false and solved-heptagon is false:
	say "A voice booms 'Noon? No! No!' Perhaps there's a simple way to try to repel it."

solved-heptagon is a truth state that varies.

heptagon-path is a list of numbers variable. heptagon-path is {}.

volume dubroom definitions

rule for printing the name of a solved dubroom: say "[word-to-include of the item described in title case]"

a dubroom is a kind of room. a dubroom has text called word-to-include. a dubroom has text called guess-right-text. a dubroom can be solved. a dubroom is usually not solved. a dubroom has a number called right-now. a dubroom has a number called total-length. a dubroom has text called right-pattern. a room has a number called sts-hash.

a dubroom can be hep-traversed. a dubroom is usually not hep-traversed.

a dubroom has text called clue-text.

to say heptround:
	say "[if heptcount < 7]You feel like there should be something in the Torus, but nothing's there yet[else]You see a way inside to the center of the torus[end if]";
	if location of player is not solved:
		say ". [clue-text of location of player]";
		if number of visited dubrooms is 7 and heptcount is 0:
			say ". You keep feeling jumbled when you think of all the room names. Whatever you need to do, there are no things to change, so you need to do something new, here"

book directions

a direction can be rotational. a direction is usually not rotational.

a direction can be clockwise, counterclockwise or neutral. a direction is usually neutral.

a1 is a direction. the opposite of a1 is b1. b1 is a direction.  the opposite of b1 is a1. a1 is rotational. b1 is rotational.
a2 is a direction. the opposite of a2 is b2. b2 is a direction.  the opposite of b2 is a2. a2 is rotational. b2 is rotational.
a3 is a direction. the opposite of a3 is b3. b3 is a direction.  the opposite of b3 is a3. a3 is rotational. b3 is rotational.

a1 is clockwise. a2 is clockwise. a3 is clockwise.
b1 is counterclockwise. b2 is counterclockwise. b3 is counterclockwise.

understand "a" and "bbbbbb" and "b6" as a1.
understand "aa" and "bbbbb" and "b5" as a2.
understand "aaa" and "bbbb" and "b4" as a3.
understand "aaaa" and "bbb" and "a4" as b3.
understand "aaaaa" and "bb" and "a5" as b2.
understand "aaaaaa" and "b" and "a6" as b1.

init-hept-dir is a direction that varies.

to decide which number is dist of (x - a direction):
	if x is a1 or x is b1, decide on 1;
	if x is a2 or x is b2, decide on 2;
	if x is a3 or x is b3, decide on 3;
	decide on 0;

book basic going

definition: a direction (called d) is hep-illegal:
	let r1 be whether or not d is clockwise;
	let r2 be whether or not init-hept-dir is counterclockwise;
	if r1 is r2, yes;
	no;

check going when in-heptagon-puzzle is true:
	if noun is not rotational, continue the action;
	if noun is a1 or noun is b1, say "You can't go nearby. You have to make a bit of a jump." instead;
	if init-hept-dir is up:
		now init-hept-dir is noun;
		continue the action;
	if noun is hep-illegal, say "You can't reverse direction on the torus like that." instead;

after going when in-heptagon-puzzle is true:
	if location of player is hep-traversed:
		say "The torus dims. You must have made a wrong step. You have already been to [location of player] during this trip. But you figure you can go [b]ON[r] and try again.";
		now in-heptagon-puzzle is false;
		continue the action;
	now location of player is hep-traversed;
	say "[list of hep-traversed rooms]";
	add dist of noun to heptagon-path;
	if number of hep-traversed rooms is 7:
		if 2 is not listed in heptagon-path or 3 is not listed in heptagon-path:
			say "The interior of the Torus shudders, but nothing conclusive happens. Perhaps you [one of][or]again [or]once again [stopping]took an easy way to touch all the rooms.";
		else:
			say "The way to the center unlocks! You can go [b]INSIDE[r] now.";
			now solved-heptagon is true;
		now in-heptagon-puzzle is false;
	continue the action;

check going a not rotational direction:
	if player is in Scene Scene, say "You need to lay down roots first." instead;
	say "Directions other than inside (once you find what's in the center of the torus) and the rotational directions (L1-6, R1-6) are meaningless here." instead;

check going inside:
	if location of player is scene scene, say "You already are." instead;
	if heptcount < 7, say "You don't see any way to the center of the Torus, yet." instead;
	if solved-heptagon is false, say "You're still blocked from entering the center of the torus." instead;
	move player to Scene Scene instead;

book rooms

Ehs Ehs is a dubroom. "This is the west room in what seems to be a heptagonal ring. [heptround].". printed name is "Ehs, Ehs". word-to-include is "sheesh". guess-right-text is "You effectively dismiss the eh's with something more powerful.". clue-text is "The EHs you hear make you wish you could throw back something at them. Something double-powered, perhaps". sts-hash of Ehs Ehs is 261362374.

Prep Area is a dubroom. it is a1 of Ehs Ehs. "This is the northwest room in what seems to be a heptagonal ring. [heptround].". word-to-include is "reappear". guess-right-text is "You back out a bit, then reappear.". clue-text is "You feel like you are being watched. You want to duck out and in, but not in the standard directions". sts-hash of Prep Area is 296783689.

Grain Grain is a dubroom. it is a1 of Prep Area. it is a2 of Ehs Ehs. "This is the northeast room in what seems to be a heptagonal ring. [heptround].". printed name is "Grain, Grain". word-to-include is "arraigning". guess-right-text is "The grain turns into a court of law, but since you have no guilt, you are free to go.". clue-text is "You feel on trial. Well, not quite, but you feel a need for acquital for ... something". sts-hash of Grain Grain is 234011677.

Meta Meat is a dubroom. it is a1 of Grain Grain. it is a2 of Prep Area. it is a3 of Ehs Ehs. "This is the southwest room in what seems to be a heptagonal ring. [heptround].". word-to-include is "teammate". guess-right-text is "Someone comes along and bangs at the barrier inside. You hear a small cracking.". clue-text is "You feel as if a friend or confidante could help you make a dent in the Attentat Tent, here". sts-hash of Meta Meat is 297179098.

Tines Inset is a dubroom. it is a1 of Meta Meat. it is a2 of Grain Grain. it is a3 of Prep Area. it is b3 of Ehs Ehs. "This is the southeast room in what seems to be a heptagonal ring. [heptround].". word-to-include is "intestines". guess-right-text is "You find the guts to turn the place into something more gross, but manageable.". clue-text is "You feel disjointed from the whole body of rooms here". sts-hash of Tines Inset is 441090447.

Pechan Pechan is a dubroom. it is a1 of Tines Inset. it is a2 of Meta Meat. it is a3 of Grain Grain. it is b3 of Prep Area. it is b2 of Ehs Ehs. "This is the west room in what seems to be a heptagonal ring. [heptround].". word-to-include is "happenchance". guess-right-text is "You suddenly find a lucky way out.". clue-text is "Oh, a pechan is an odd word for stomach. You may need luck to solve the secret of this room. Some skill, maybe, but enough skill so your luck matters". sts-hash of Pechan Pechan is 336655278.

Latte Latte is a dubroom. it is a1 of Pechan Pechan. it is a2 of Tines Inset. it is a3 of Meta Meat. it is b3 of Grain Grain. it is b2 of Prep Area. it is b1 of Ehs Ehs. "All sorts of coffee shops here! What is going on? You know it's ridiculous, but you can't bring yourself to say so. [heptround].". word-to-include is "tattletale". guess-right-text is "Someone comes along and mentions how ridiculous it is to have that many coffee shops so close to each other. Suddenly, everyone believes it! Some coffee shops decide to become something with a little more variety.". clue-text is "Coffee certainly makes folks chatty, you know.". sts-hash of Latte Latte is 390027802.

Scene Scene is a dubroom. "Here's a good place to just wind down your life. It's fun. You've earned it. But how to effect that?". word-to-include is "senescence". guess-right-text is "Yup. That'll do it.". clue-text is "Here you should spend your remaining years.". sts-hash of Scene Scene is 439799277.

stats-x is a truth state that varies.

check examining stats tat:
	if location of player is solved, say "The stats tat shows nothing. You've figured what to do here." instead;
	if stats-x is false:
		now stats-x is true;
		say "Various numbers seem to pop in and out of it. Perhaps staring at it may give various levels of help." instead;

description of stats tat is "The stats tat [if this-examine > 1]still [end if]seems to show [if this-examine is 0][right-now of location of player] of [total-length of location of player][else]The pattern [right-pattern of location of player][end if].".

this-examine is a number that varies.

after examining stats tat:
	increment this-examine;
	continue the action;

after going:
	now this-examine is 0;
	continue the action;

to decide which number is heptcount: decide on number of solved dubrooms;

volume when play begins

when play begins:
	now the right hand status line is "[score]/[maximum score]";

volume game progress verb

chapter oning

oning is an action out of world.

understand the command "on" as something new.

understand "on" as oning.

carry out oning:
	if solved-initials is false, say "You're not ready to really go on yet. But you'll know when you are." instead;
	if in-heptagon-puzzle is true, say "You're already in the process of going on." instead;
	if player is in scene scene, say "You already successfully went on." instead;
	now in-heptagon-puzzle is true;
	say "You've started going on[one of]. [location of player] seems as good a place to start as any others. It seems to brighten up as you make your decision[or] again. Maybe you'll find the right way through this time. [location of player] brightens, slightly[stopping].";
	now ever-heptagon-puzzle is true;
	now all rooms are not hep-traversed;
	now location of player is hep-traversed;
	now heptagon-path is {};
	now init-hept-dir is up;
	the rule succeeds;

section failure

to fail-heptagon:
	now all dubrooms are not hep-traversed;

volume meta verbs

section score

check requesting the score:
	say "You've figured [score] of [maximum score] areas of the Torus.";
	the rule succeeds;

section swearing

the block swearing obscenely rule is not listed in any rulebook.
the block swearing mildly rule is not listed in any rulebook.

check swearing mildly: try swearing obscenely instead;

check swearing obscenely: say "Appall? Pal! PAL!" instead;

volume progress

table of progress
ruley	texty
a rule	"You think you see something vague in the center of the torus."
--	"lorem ipsum"
--	"lorem ipsum"
--	"lorem ipsum"
--	"lorem ipsum"
--	"lorem ipsum"
prep-traversal rule	"Yes, there is something at the center of the torus. But it's blocked off. You have a feeling you need to do some sort of odd dance before entering."
bye-dude rule	"lorem ipsum"

this is the prep-traversal rule:
	now solved-initials is true;

this is the bye-dude rule:
	end the story saying "Feats! Fates-Feast! Taffetases!";
	follow the shutdown rules;

The print final score rule is not listed in for printing the player's obituary.

volume parsing

after reading a command:
	if the player's command exactly matches the text "[word-to-include of location of player]":
		if location of player is solved:
			say "Already got that.";
		now location of player is solved;
		say "[guess-right-text of location of player][line break]";
		increment the score;
		choose row score in table of progress;
		say "[texty entry][line break]";
		if there is a ruley entry, process the ruley entry;
		process the notify score changes rule;
		reject the player's command;
