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

include STS Hashes by Andrew Schultz.

include Tours Roust Torus Tables by Andrew Schultz.

include Tours Roust Torus Mistakes by Andrew Schultz.

volume globals and such

solved-initials is a truth state that varies.

in-heptagon-puzzle is a truth state that varies.

ever-heptagon-puzzle is a truth state that varies.

every turn when solved-initials is true and in-heptagon-puzzle is false and ever-heptagon-puzzle is false and solved-heptagon is false (this is the clue ON rule):
	say "A voice booms 'Noon? No! No!' Perhaps there's a simple way to try to repel it."

solved-heptagon is a truth state that varies.

heptagon-path is a list of numbers variable. heptagon-path is {}.

section defaults

procedural rule: ignore the print final score rule.

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
	say "Directions other than inside (once you find what's in the center of the torus), outside and the rotational directions (A, AA, AAA, B, BB, BBB) are meaningless here." instead;

check going inside:
	if location of player is scene scene, say "You already are." instead;
	if heptcount < 7, say "You don't see any way to the center of the Torus, yet." instead;
	if solved-heptagon is false, say "You're still blocked from entering the center of the torus." instead;
	move player to Scene Scene instead;

book rooms

to say torus-area: say "area of the torus"

Ehs Ehs is a dubroom. "This is the west [torus-area]. [heptround].". printed name is "Ehs, Ehs". word-to-include is "sheesh". guess-right-text is "You effectively dismiss the eh's with something more powerful.". clue-text is "The EHs you hear make you wish you could throw back something at them. Something double-powered, perhaps". sts-hash of Ehs Ehs is 261362374.

Prep Area is a dubroom. it is a1 of Ehs Ehs. "This is the northwest [torus-area]. [heptround].". word-to-include is "reappear". guess-right-text is "You back out a bit, then reappear.". clue-text is "You feel like you are being watched. You want to duck out and in, but not in the standard directions". sts-hash of Prep Area is 296783689.

Grain Grain is a dubroom. it is a1 of Prep Area. it is a2 of Ehs Ehs. "This is the northeast [torus-area]. [heptround].". printed name is "Grain, Grain". word-to-include is "arraigning". guess-right-text is "The grain turns into a court of law, but since you have no guilt, you are free to go.". clue-text is "You feel on trial. Well, not quite, but you feel a need for acquital for ... something". sts-hash of Grain Grain is 234011677.

Meta Meat is a dubroom. it is a1 of Grain Grain. it is a2 of Prep Area. it is a3 of Ehs Ehs. "This is the east [torus-area]. [heptround].". word-to-include is "teammate". guess-right-text is "Someone comes along and bangs at the barrier inside. You hear a small cracking.". clue-text is "You feel as if a friend or confidante could help you make a dent in the Attentat Tent, here". sts-hash of Meta Meat is 297179098.

Tines Inset is a dubroom. it is a1 of Meta Meat. it is a2 of Grain Grain. it is a3 of Prep Area. it is b3 of Ehs Ehs. "This is the southeast [torus-area]. [heptround].". word-to-include is "intestines". guess-right-text is "You find the guts to turn the place into something more gross, but manageable.". clue-text is "You feel disjointed from the whole body of rooms here". sts-hash of Tines Inset is 441090447.

Pechan Pechan is a dubroom. it is a1 of Tines Inset. it is a2 of Meta Meat. it is a3 of Grain Grain. it is b3 of Prep Area. it is b2 of Ehs Ehs. "This is the south [torus-area]. [heptround].". word-to-include is "happenchance". guess-right-text is "You suddenly find a lucky way out.". clue-text is "Oh, a pechan is an odd word for stomach. You may need luck to solve the secret of this room. Some skill, maybe, but enough skill so your luck matters". sts-hash of Pechan Pechan is 336655278.

Latte Latte is a dubroom. it is a1 of Pechan Pechan. it is a2 of Tines Inset. it is a3 of Meta Meat. it is b3 of Grain Grain. it is b2 of Prep Area. it is b1 of Ehs Ehs. "This is the southwest [torus-area]. All sorts of coffee shops here! What is going on? You know it's ridiculous, but you can't bring yourself to say so. [heptround].". word-to-include is "tattletale". guess-right-text is "Someone comes along and mentions how ridiculous it is to have that many coffee shops so close to each other. Suddenly, everyone believes it! Some coffee shops decide to become something with a little more variety.". clue-text is "Coffee certainly makes folks chatty, you know.". sts-hash of Latte Latte is 390027802.

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

chapter abouting

big-details is a truth state that varies.

abouting is an action out of world.

understand the command "about" as something new.

understand "about" as abouting.

carry out abouting:
	say "[this-game] is installment 3 in [tsts]. It was originally published for Spring Thing 2022. Number one in the series was [shuf], published for IFComp 2012, and number two was [aro], published for Spring Thing 2013. These should all be on itch.io.";
	say "[line break]";
	if big-details is false:
		say "[b]CREDITS[r] will give thanks to people involved specifically in [this-game].";
	else:
		say "[this-game] isn't meant to be as challenging or as long as [shuf] or [aro], but it does sweep up some undone things. I always had the sense I could fit one more game in, but I wanted it to be relatively small. And I wanted some sort of theme. I couldn't find one until I almost stumbled on it by accident. I had an idea where it would take place--the Tours Torus--but what was left? After all, the remaining 'good' ones got bled into Roiling. I needed some relatively long words, but I didn't want them to be tough.";
		say "[line break]I also wanted to fit in a non-anagram puzzle based on something I'd always wondered about.";
		say "[line break]Source code for [this-game] is at https://github.com/andrewschultz/stale-tales-slate/tree/main/Tours."
	now big-details is whether or not big-details is false;
	say "[line break][b]ABOUT[r] again will show [if big-details is false]a big-picture overview[else]technical details[end if].";
	the rule succeeds;

chapter creditsing

creditsing is an action out of world.

understand the command "credits" as something new.

understand "credits" as creditsing.

carry out creditsing:
	say "Thanks to ClubFloyd for Beta Testing a version of this game. They worked through some parts that are much better hinted and described now.";
	say "[line break]Thanks to J. J. Guest the cover art. He's done a lot of other cool cover art, too. https://ifdb.org/viewlist?id=6qv507dlg1j4klk8 has his complete works with editorial comments.";
	say "[line break]Thanks to Amanda Walker for starting the blurb thread on intfiction.org which helped me with ideas in general.";
	say "[line break]Thanks to Greg Boettcher for starting the Spring Thing competition and giving me a bit of a mulligan when I entered [aro]. Thanks to Aaron Reed for continuing to hold the Spring Thing competition.";
	say "[line break]Thanks to wordsmith.org for so many anagrams verified and inspired.";
	the rule succeeds;

section score

check requesting the score:
	say "You've figured [score] of [maximum score] areas of the Torus[if scene scene is unvisited and score < 7][one of]. Why, yes, there is a way to the center[or][stopping].";
	the rule succeeds;

section going outside

the convert exit into go out rule is not listed in any rulebook.

check going outside:
	if location of player is Scene Scene, say "There's no way back out. Here's where you want to be." instead;
	say "You'd fall off the [this-game] that way." instead;

section verbing

verbing is an action out of world.

understand the command "v" as something new.
understand the command "verb" as something new.
understand the command "verbs" as something new.

understand "v" as verbing.
understand "verb" as verbing.
understand "verbs" as verbing.

carry out verbing:
	say "Compass directions aren't really viable, here. You may try to go [b]IN[r] or [b]OUT[r], but the main directions are A and B to move clockwise and counterclockwise around the torus.";
	say "You can also move multiple times with AA, AAA, BB, or BBB. Note anything more than that is accepted but impractical, as AAA and BBBB are equivalent.";
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
	process the clue ON rule;

this is the bye-dude rule:
	process the notify score changes rule;
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
		say "[b][location of player][r][line break]";
		reject the player's command;

volume parser errors

cheats is a truth state that varies.

cmdhash is a number that varies.

firstwordhash is a number that varies.

to say how-many-right:
	let x1 be filtered name of the player's command;
	let count be 0;
	repeat with y running from 1 to number of characters in x1:
		if character number y in x1 is character number y in word-to-include of location of player:
			increment count;
	say "[count] of [number of characters in x1]";

to say reject:
	now cmdhash is the hash of the player's command;
	now firstwordhash is the hash of word number 1 in the player's command;
	d "The hash of the command is [cmdhash]. Hash of word 1 is [firstwordhash].[line break]";
	if cmdhash is sts-hash of location of player or firstwordhash is sts-hash of location of player:
		if location is solved:
			say "You already figured what to do here.";
		else:
			say "You felt like you might've been halfway there to something.";
		continue the action;
	if cmdhash is 2 * sts-hash of location of player or firstwordhash is 2 * sts-hash of location of player:
		if location is solved:
			say "You already figured what to do here";
		else if cheats is false:
			say "Hmm, rearrange things.";
		else:
			say "[how-many-right].";
		continue the action;
	if location is not solved:
		repeat through table of nudge hashes:
			if cmd-hash entry is cmdhash or cmd-hash entry is firstwordhash:
				if there is no cmd-loc entry or location of player is cmd-loc entry:
					say "[nudge-text entry]";
					continue the action;
	say "There aren't very many verbs to use in [this-game], though each room has something special that needs doing. For a general list of verbs, type [b]VERBS[r]."

Rule for printing a parser error when the latest parser error is the not a verb I recognise error or the latest parser error is the didn't understand error:
	say "[reject]";
