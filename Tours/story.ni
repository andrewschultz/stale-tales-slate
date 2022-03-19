"Tours Roust Torus" by Andrew Schultz

volume top level stuff

the release number is 1.

release along with the "parchment" interpreter.

release along with a website.

release along with cover art.

section includes

include Tours Roust Torus Tests by Andrew Schultz.

include Trivial Niceties by Andrew Schultz.

include STS Hashes by Andrew Schultz.

include Tours Roust Torus Tables by Andrew Schultz.

include Tours Roust Torus Nudges by Andrew Schultz.

include Tours Roust Torus Mistakes by Andrew Schultz.

volume globals and such

solved-initials is a truth state that varies.

in-heptagon-puzzle is a truth state that varies.

ever-heptagon-puzzle is a truth state that varies.

every turn when solved-initials is true and in-heptagon-puzzle is false and ever-heptagon-puzzle is false and solved-heptagon is false (this is the clue ON rule):
	say "A voice booms 'Noon? No! No!' Perhaps there's a simple way to try to repel it."

solved-heptagon is a truth state that varies.

heptagon-path is a list of numbers variable. heptagon-path is {}.

to decide which number is heptcount: decide on number of solved dubrooms; [note: this is mostly equivalent to the score, but just in case...]

section defaults

procedural rule: ignore the print final score rule.

section your description

description of the player is "Looking at your body, you're not as strong as you used to be. In good enough shape, you hope, but those jibes about not being half the person you used to be hurt--even if they're not true.[paragraph break]You have some tats which, in a pinch, could be changed to a STAT to help you out if you need help."

tats-stat is a number that varies.

check taking inventory:
	say "You're traveling light. You aren't actually carrying anything. You were given some tats that [if tats-stat is 0]may give you a stat as you guess what to anagram, where[else]you can get a STAT from, if you want[end if]." instead;

the player carries the tats. description of tats is "(BUG)."

instead of doing something with the tats:
	say "The tats will change as you make guesses. You can [if tats-stat > 0]deactivate them with the TATS[else]activate them with the STAT[end if] command."

volume dubroom definitions

rule for printing the name of a solved dubroom: say "[word-to-include of the item described in title case]"

a dubroom is a kind of room. a dubroom has text called word-to-include. a dubroom has text called guess-right-text. a dubroom can be unsolved or solved. a dubroom is usually unsolved. a dubroom has a number called right-now. a dubroom has a number called total-length. a dubroom has a number called sts-hash. a dubroom can be cluevisited. a dubroom is usually not cluevisited.

a dubroom can be hep-traversed. a dubroom is usually not hep-traversed.

a dubroom can be perimeter or internal. a dubroom is usually perimeter.

a dubroom has text called clue-text.

to say heptround:
	choose row (heptcount + 1) in table of center statuses;
	say "[cylinder-desc entry]";
	if location of player is not solved:
		say ". [clue-text of location of player]";
		if number of visited dubrooms is 7 and heptcount is 0:
			say ".[one of] You keep feeling jumbled when you think of all the room names. Whatever you need to do, there are no [i]things[r] to change, so you need to do something new, here[or][stopping]";

volume flippable definitions

a flippable is a kind of thing. a flippable has text called word-to-include. a flippable has a number called sts-hash. a flippable has text called guess-right-text.

when play begins:
	repeat with F running through flippables:
		move F to Scene Scene;
	now maximum score is number of rooms + number of flippables;

volume going and rooms

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
	if heptcount < 7:
		say "A snarky voice admonishes you. 'Ah-ah!' Just as you're about to scream 'Aahh,' it drops a 'Ha-ha!' on you.[paragraph break]Hmm, a bit demoralizing, but why would someone actually try to dissuade you from going to the center of the torus if nothing were there?";
		if number of unvisited perimeter rooms > 0:
			say "[line break]Perhaps you should try and see everywhere on the torus." instead;
		choose row (heptcount + 1) in table of center statuses;
		say "[cylinder-block entry][paragraph break]";
		say "It makes sense you can't just walk in, though. You still haven't figured what to do [if location of player is unsolved]here[else]over at [random unsolved visited room][end if].";
	if solved-heptagon is false, say "You're still blocked from entering the center of the torus." instead;
	move player to Scene Scene instead;

book rooms

to say torus-area: say "area of the torus"

Ehs Ehs is a dubroom. "This is the west [torus-area]. [heptround].". printed name is "Ehs, Ehs". word-to-include is "sheesh". guess-right-text is "You effectively dismiss the eh's with something more powerful.". clue-text is "The EHs you hear make you wish you could speak something back at them. Nothing profane, but forceful enough. But there's more than one.". sts-hash of Ehs Ehs is 261362374.

Prep Area is a dubroom. it is a1 of Ehs Ehs. "This is the northwest [torus-area]. [heptround].". word-to-include is "reappear". guess-right-text is "You back out a bit, then reappear.". clue-text is "You feel like you are being watched. You want to duck out and in, but not in the standard directions". sts-hash of Prep Area is 296783689.

Grain Grain is a dubroom. it is a1 of Prep Area. it is a2 of Ehs Ehs. "This is the northeast [torus-area]. [heptround].". printed name is "Grain, Grain". word-to-include is "arraigning". guess-right-text is "The grain turns into a court of law, but since you have no guilt, you are free to go.". clue-text is "You feel on trial. Well, not quite, but you feel a need for acquital for ... something". sts-hash of Grain Grain is 234011677.

Meta Meat is a dubroom. it is a1 of Grain Grain. it is a2 of Prep Area. it is a3 of Ehs Ehs. "This is the east [torus-area]. [heptround].". word-to-include is "teammate". guess-right-text is "Someone comes along and bangs at the barrier inside. You hear a small cracking.". clue-text is "You feel as if a friend or confidante could help you make a dent in the Attentat Tent, here". sts-hash of Meta Meat is 297179098.

Tines Inset is a dubroom. it is a1 of Meta Meat. it is a2 of Grain Grain. it is a3 of Prep Area. it is b3 of Ehs Ehs. "This is the southeast [torus-area]. [heptround].". word-to-include is "intestines". guess-right-text is "You find the guts to turn the place into something more gross, but manageable.". clue-text is "You feel disjointed from the whole body of rooms here". sts-hash of Tines Inset is 441090447.

Pechan Pechan is a dubroom. it is a1 of Tines Inset. it is a2 of Meta Meat. it is a3 of Grain Grain. it is b3 of Prep Area. it is b2 of Ehs Ehs. "This is the south [torus-area]. [heptround].". word-to-include is "happenchance". guess-right-text is "You suddenly find a lucky way out.". clue-text is "Oh, a pechan is an odd word for stomach. You may need luck to solve the secret of this room. Some skill, maybe, but enough skill so your luck matters". sts-hash of Pechan Pechan is 336655278.

Latte Latte is a dubroom. it is a1 of Pechan Pechan. it is a2 of Tines Inset. it is a3 of Meta Meat. it is b3 of Grain Grain. it is b2 of Prep Area. it is b1 of Ehs Ehs. printed name is "Latte, Latte". "This is the southwest [torus-area]. All sorts of coffee shops here! What is going on? You know it's ridiculous, but you can't bring yourself to say so. [heptround].". word-to-include is "tattletale". guess-right-text is "Someone comes along and mentions how ridiculous it is to have that many coffee shops so close to each other. Suddenly, everyone believes it! Some coffee shops decide to become something with a little more variety.". clue-text is "Coffee certainly makes folks chatty, you know.". sts-hash of Latte Latte is 390027802.

Scene Scene is an internal dubroom. "Here's a good place to just wind down your life. It's fun. You've earned it. But how to effect that?". word-to-include is "senescence". guess-right-text is "Yup. That'll do it.". clue-text is "Here you should spend your remaining years.". sts-hash of Scene Scene is 439799277.

stats-x is a truth state that varies.

volume stats tat (deprecated?)

[
description of stats tat is "The stats tat [if this-examine > 1]still [end if]seems to show [if this-examine is 0][right-now of location of player] of [total-length of location of player][else]The pattern [right-pattern of location of player][end if].".

this-examine is a number that varies.

after examining stats tat:
	increment this-examine;
	continue the action;

after going:
	now this-examine is 0;
	continue the action;

check examining stats tat:
	if location of player is solved, say "The stats tat shows nothing. You've figured what to do here." instead;
	if stats-x is false:
		now stats-x is true;
		say "Various numbers seem to pop in and out of it. Perhaps staring at it may give various levels of help." instead;
]

volume flippables

the hams are flippables. description is "Both sorts of hams. Jokesters carrying hams. You suppose more food is always good, but you'd really like something more dignified and helpful, someone who doesn't force their 'excitement' on you so you're distracted.". guess-right-text is "The hams throw their hands up in the air. 'Well, if you want someone less exciting than us, it's your life! Not that you really HAVE a life.' A shammash replaces them. They look ready to get down to business, but in a helping people way, not in a 'rip them off' sort of way.". sts-hash of hams is 199819236. word-to-include is "shammash".

volume when play begins

when play begins:
	now the right hand status line is "[score]/[number of rooms]";
	say "Leading Yorpwald after defeating Red Bull Burdell and then Elvira wasn't what you asked for, but it's what you got, and you did well enough. But the job is exhausting. You've never wanted flatterers, and you expected criticism, even unfair criticism, but there are some things you can't avoid listening to by now.";
	wfak;
	say "The worst part, as you're getting older: you're maybe half the person you used to be. This, from people who never thought you were much to begin with. Still, you Got Stuff Done. But your heart was in things less. Others seemed to have better ideas. You felt you spent all your time delegating and getting credit for stuff you just signed off on.";
	wfak;
	say "You wanted adventure. But defeating Red Bull Burdell required changing just about every pair of things imaginable, and with Elvira, well, it was more abstract, deciding what to do or think or how to describe things. What could be left? Then, one day, a diplomat told you of distant structure. One worth visiting. A [this-game]. Nothing seemed there. But if anyone could unlock its secrets, you could.";
	wfak;
	say "You returned to the museum that held the tagged gadget and letters settler that helped you in your first two quests. You did so every few months and felt nothing. But this time, a surge! Still, they were too much a part of history to move from a museum. The curator had an idea--some stat tats that could help you, if needed.";
	wfak;
	say "You made your final choice. You resigned as leader, leaving things to trusted advisors. Your heart was in adventuring. Who knows what you'd find?";
	wfak;

volume clue-visiting

times-around is a number that varies.

after printing the locale description:
	if location of player is scene scene, continue the action;
	now location of player is cluevisited;
	if number of cluevisited rooms is 7:
		increment times-around;
		if times-around > number of rows in table of times around:
			decrement times-around;
		choose row times-around in table of times around;
		say "[clue-text entry]";
		now all rooms are not cluevisited;
		now cheat-voice is true;
	continue the action;

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
		say "[line break]Source code for [this-game] is at https://github.com/andrewschultz/stale-tales-slate/tree/main/Tours.";
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

chapter listening

the block listening rule is not listed in any rulebook.

cheat-voice is a truth state that varies.

ever-voice is a truth state that varies.

to say sestet: say "'Sestet! Set! SET!!!'"

check listening:
	if cheat-voice is false, say "Nothing... yet..." instead;
	if score is 0:
		say "[one of]A voice whispers [sestet][line break]Maybe that will help a bit, you think. But where is the voice coming from? You can't see anyone, or anything.[paragraph break]Wait. That's it. It's got to be something small. A tsetse fly! Of course![or]The tsetse fly again: [sestet][stopping]";
		move tsetse backdrop to all perimeter rooms;
		now ever-voice is true;
		the rule succeeds;
	if ever-voice is true:
		say "You strain but hear nothing more from the voice that helped you get started.";
	else:
		say "Nothing. Maybe there would've been something to help you start if you needed it, but you're doing okay now. You hope. You think.";
	the rule succeeds;

section tsetse

the tsetse fly is a backdrop. "Sadly, you can't examine the tsetse fly, as you can't completely locate it. But it's there, and it's helping you.".

instead of doing something with tsetse fly:
	if current action is examining, continue the action;
	say "The tsetse fly is doing all it can. You don't want to do anything to, or with, it."

section score

check requesting the score:
	say "You've figured [score] of [maximum score] areas of the Torus. [if number of unvisited rooms is 1 and score < 7][one of]Why, yes, there is a way to the center[or][stopping][else if number of unvisited rooms > 1]You may wish to explore the whole torus to see what you might be able to do[end if].";
	the rule succeeds;

section going outside

the convert exit into go out rule is not listed in any rulebook.

check going outside:
	if location of player is Scene Scene, say "There's no way back out. Here's where you want to be." instead;
	say "You'd fall off the [this-game] that way." instead;

chapter stating

stating is an action out of world.

understand the command "stat" as something new.

understand "stat" as stating.

carry out stating:
	if tats-stat is 2, say "Your stat tats are already giving you as much help as they can." instead;
	if tats-stat is 1:
		say "You gaze at your tats to get an extra stat from them when you try to guess what to do.";
	else:
		say "Your tats are now in stat-giving mode. STAT again will give even more potentially revealing stats when you make guesses";
	increment tats-stat;
	the rule succeeds;

chapter tatsing

tatsing is an action out of world.

understand the command "tats" as something new.

understand "tats" as tatsing.

carry out tatsing:
	say "Your tats are [if tats-stat is 0]already[else]now[end if] not in stat-giving mode.";
	now tats-stat is 0;
	the rule succeeds;

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

volume endgame

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
		let got-one be false;
		repeat through table of room combos:
			unless location of player is room1 entry or location of player is room2 entry:
				next;
			if room1 entry is solved and room2 entry is solved:
				say "[both entry][line break]";
			else if room1 entry is solved:
				say "[first entry][line break]";
			else if room2 entry is solved:
				say "[second entry][line break]";
			else:
				say "Oops. There is a very very odd bug here. It won't affect you winning the game, but you'll miss out on story.";
			now got-one is true;
			break;
			reject the player's command;
		if got-one is false:
			say "Oops. We should have done something here, but we didn't.";
		if ever-voice is true and score is 1:
			say "[line break]You sense the tsetse fly has left. You won't need it any more. For such a small fly, it did a lot.";
		reject the player's command;
	if location of player is scene scene:
		repeat with F running through touchable flippables:
			if the player's command exactly matches the text "[word-to-include of F]":
				increment the score;
				now F is off-stage;
				say "[guess-right-text of F][line break]";
				increment the score;
				process the notify score changes rule;
				reject the player's command;


volume help stuff

to say verbs: say "[b]V[r]/[b]VERB[r]/[b]VERBS[r]"

after printing the locale description for Ehs Ehs when Ehs Ehs is unvisited:
	say "[i][bracket]NOTE: to see general information about [this-game][i], type [b]ABOUT[i]. To see the verbs used, type [verbs][i]. In particular, you may want to note the directions used.[close bracket][r]";
	continue the action;

volume endgames

Table of Final Question Options (continued)
final question wording	only if victorious	topic		final response rule		final response activity
"see [b](REJ)ECTS[r]/[b]REJECTED[r] words"	true	"reject/rejected/rejects"	the show rejected words rule	--
"see what you [b]MISSED[r]"	true	"miss/misses/missed"	the show what you missed rule

this is the show rejected words rule:
	say "Here are some rejected words:";
	say "[line break]HORSESHOER could have been a good one, but there was already a Hero's Shore with Shoer Osher in [aro].";
	say "APPEASES is definitely a word that could've come from APSE, APSE, but it's a verb in a weird tense, so I couldn't fit it in.";
	say "SALALS are an evergreen shrub, but no three-letter words make sense.";
	say "A MILLIEME is, apparently, Tunisian currency, so that's too obscure. LIME and MILE would've worked so well!";
	say "BILABIAL means with both lips, but I saw no connection to BAIL.";
	say "GENSENGS was flagged in my words file, but NEGS and GENS didn't work.";
	say "NOTIONISTS came from oints, twice, but oint is not short for ointment but rather a verb tense of smearing with oil.";
	say "Some other words were neat but too abstract or obscure, or they had nothing that half-anagrammed: JIPIJAPA, SASARARA (scolding), SASSARARAS, SNIFFINESSES (finess 'almost' works), SNIPPINESSES and TRISECTRICES.";

this is the show what you missed rule:
	say "The only opportunities for additional points are in [scene scene]. A bunch of random items are strewn around. Here [if score is maximum score - 1]is the one[else]are the ones[end if] you missed."

volume parser errors

cmdhash is a number that varies.

firstwordhash is a number that varies.

to say how-many-right:
	let x1 be filtered name of the player's command;
	let count be 0;
	let binary be 0;
	repeat with y running from 1 to number of characters in x1:
		now binary is 2 * binary;
		if character number y in x1 is character number y in word-to-include of location of player:
			increment binary;
			increment count;
	if the remainder after dividing tats-stat by 2 is 1:
		say "The stat tats show two numbers: [count] of [number of characters in x1]";
	if tats-stat is 3:
		say ".[paragraph break]CHEAT RELOAD[paragraph break]";
	if the remainder after dividing (tats-stat / 2) by 2 is 1:
		say "The stat tats show two numbers: [binary] of [exp-1 of number of characters in x1]";

to decide which number is exp-1 of (n - a number):
	let temp be 0;
	let count be 0;
	while count < n:
		now temp is temp * 2;
		increment temp;
		increment count;
	decide on temp;

to decide which number is dubhash:
	decide on sts-hash of location of player * 2.

to decide which number is onehash:
	decide on sts-hash of location of player.

to say reject:
	now cmdhash is the hash of the player's command;
	now firstwordhash is the hash of word number 1 in the player's command;
	d "The hash of the command is [cmdhash]. Hash of word 1 is [firstwordhash]. Location hash is [sts-hash of location of player].[line break]";
	if cmdhash is onehash or firstwordhash is onehash:
		if location is solved:
			say "You already figured what to do here.";
		else:
			say "[if tats-stat > 0]The stat tats seem to halfway make something, but no[else]You felt like whatever you just did or thought wasn't enough. Somehow you have to do more[end if].";
		continue the action;
	if cmdhash is dubhash or firstwordhash is dubhash:
		if location is solved:
			say "You already figured what to do here.";
		else if tats-stat is 0:
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
	say "There aren't very many verbs to use in [this-game], though each section has something special that needs doing. For a general list of verbs, type [b]VERBS[r]."

Rule for printing a parser error when the latest parser error is the not a verb I recognise error or the latest parser error is the didn't understand error:
	say "[reject]";
