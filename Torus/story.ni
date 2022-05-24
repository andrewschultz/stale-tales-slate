"Tours Roust Torus" by Andrew Schultz

volume top level stuff

the release number is 2.

release along with the "parchment" interpreter.

release along with a website.

release along with cover art.

the story headline is "One more anagramming adventure to new lands!"

the story description is "The third and final entry in the Stale Tales Slate."

section includes

include Tours Roust Torus Tests by Andrew Schultz.

include Trivial Niceties by Andrew Schultz.

include STS Universal by Andrew Schultz.

include Tours Roust Torus Tables by Andrew Schultz.

include Tours Roust Torus Nudges by Andrew Schultz.

include Tours Roust Torus Mistakes by Andrew Schultz.

include Bold Final Question Rows by Andrew Schultz.

include First Word Retry by Andrew Schultz.

include Undo Output Control by Erik Temple.

include Old School Verb Total Carnage by Andrew Schultz.

volume globals and such

report undoing an action:
	say "Undoing. [if solved-heptagon is true]Now you opened up the center of the torus, there's no need to undo anything[else]A random dunno-duo walks by, belying their name by mentioning that, while there's no way to get in an unwinnable state, [b]UNDO[r] may save you a few moves [when-undo-helps].";

to say when-undo-helps:
	say "[if ever-heptagon-puzzle is true]if you go the wrong way after [b]ON[r][else]if you slip up in a later puzzle and don't want to restart[end if]"

last-clue-thing is a thing that varies. last-clue-thing is yourself.

solved-initials is a truth state that varies.

in-heptagon-puzzle is a truth state that varies.

ever-heptagon-puzzle is a truth state that varies.

every turn when solved-initials is true and in-heptagon-puzzle is false and ever-heptagon-puzzle is false and solved-heptagon is false (this is the clue ON rule):
	say "[one of]A voice[or]That voice once again[stopping] booms 'Noon? No! No!' It's quite direct, and it makes you lose yourself in mazy thinking. But there must be a simple, effective way to push back!"

solved-heptagon is a truth state that varies.

heptagon-path is a list of numbers variable. heptagon-path is {}.

to decide which number is heptcount: decide on number of solved dubrooms; [note: this is mostly equivalent to the score, but just in case...]

section defaults

procedural rule: ignore the print final score rule.

section your description

description of the player is "Looking at your body, you're not as strong as you used to be. In good enough shape, you hope, but those jibes about not being half the person you used to be hurt--even if they're not true.[paragraph break][one of]You have some tats (Tas-T-Tats, actually) which[or]Your Tas-T-Tats[stopping], which, in a pinch, could be changed to a [b]STAT[r] to help you out if you need help."

tats-stat is a number that varies.

check taking inventory:
	say "You're traveling light. You aren't actually carrying anything. You were given some tats that [if tats-stat is 0]may give you a stat as you guess what to anagram, where[else]you can get a [b]STAT[r] from, if you want[end if][one of]. Being out of practice, it's nice to have the choice between using assistance and showing you've still 'got it,' whatever 'it' is[or][stopping]." instead;

the player carries the Tas T Tats. description of tats is "[tat-desc]."

printed name of Tas T Tats is "Tas-T-Tats"

to say tat-desc:
	if location of player is solved:
		say "The tats are blank. Well, you don't need them. You figured what to do here";
		continue the action;
	if last-clue-thing is not yourself:
		say "[how-many-right of printed name of last-clue-thing]";
	else:
		say "[how-many-right of printed name of location of player]";

after examining a flippable:
	now last-clue-thing is the noun;
	continue the action;

instead of doing something with the tats:
	say "The tats will change as you make guesses. You don't even have to examine them. You can [if tats-stat > 0]deactivate them with the [b]TATS[r][else]activate them with the [b]STAT[r][end if] command.";
	if current action is examining and tats-stat > 0, continue the action;

volume dubroom definitions

rule for printing the name of a solved dubroom: say "[word-to-include of the item described in title case]"

a dubroom is a kind of room. a dubroom has text called word-to-include. a dubroom has text called guess-right-text. a dubroom can be unsolved or solved. a dubroom is usually unsolved. a dubroom has a number called right-now. a dubroom has a number called total-length. a dubroom has a number called sts-hash. a dubroom has a number called uniq-hash. a dubroom can be cluevisited. a dubroom is usually not cluevisited.

a dubroom can be hep-traversed. a dubroom is usually not hep-traversed.

a dubroom can be perimeter or internal. a dubroom is usually perimeter.

a dubroom has text called clue-text. a dubroom has text called done-text.

a dubroom has a number called cycle-index.

on-start-room is a dubroom that varies.

to decide which number is cur-on-index of (dr - a dubroom):
	let x be (cycle-index of dr) - (cycle-index of on-start-room);
	if x < 0, increase x by 7;
	increase x by on-base;
	decide on x;

say-whatever is a truth state that varies.

to say heptround:
	choose row (heptcount + 1) in table of center statuses;
	say "[cylinder-desc entry]. ";
	if location of player is not solved:
		say "[clue-text of location of player]";
		if number of visited dubrooms is 7 and heptcount is 0:
			if say-whatever is false:
				say ". You keep feeling jumbled when you think of all the room names. Whatever you need to do, there are no [i]things[r] to change from. But there must be things to change [i]to[r]";
				now say-whatever is true;
	else:
		say "[done-text of location of player]"

a dubroom can be dirguessed. a dubroom is usually not dirguessed.

a dubroom has a direction called guessdir.

the description of a dubroom is usually "[torus-fake-dir of the item described]. [heptround].".

volume flippable definitions

a flippable is a kind of thing. a flippable has text called word-to-include. a flippable has a number called sts-hash. a flippable has a number called uniq-hash. a flippable has text called guess-right-text. a flippable can be unflipped or flipped. a flippable is usually unflipped. a flippable can be audible or physical. a flippable is usually audible.

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

understand "6b" and "1a" as a1.
understand "5b" and "2a" as a2.
understand "4b" and "3a" as a3.
understand "3b" and "4a" as b3.
understand "2b" and "5a" as b2.
understand "1b" and "6a" as b1.

init-hept-dir is a direction that varies.

to decide which number is dist of (x - a direction):
	if x is a1 or x is b1, decide on 1;
	if x is a2 or x is b2, decide on 2;
	if x is a3 or x is b3, decide on 3;
	decide on 0;

the examine directions rule is not listed in any rulebook.

check examining a direction when location of player is perimeter:
	if noun is inside or noun is guessdir of location of player, try examining cylinder instead;
	if noun is outside or noun is opposite of guessdir of location of player:
		if location of player is perimeter, say "You need to go inward." instead;
		say "You see no way back to the torus, but it's nicer here, anyway." instead;
	if noun is rotational, say "The torus [if number of unvisited perimeter rooms is 0]only has seven areas, as you've found from walking around[else]isn't too big around. It seems sturdy enough, though you haven't been all around it yet." instead;
	say "You can't go in any of the staidard directions."

book basic going

definition: a direction (called d) is hep-illegal:
	if init-hept-dir is up, no;
	let r1 be whether or not d is clockwise;
	let r2 be whether or not init-hept-dir is counterclockwise;
	if r1 is r2, yes;
	no;

to say skipped-room of (rm - a room) and (d - a direction):
	if d is a2:
		say "[the room a1 of rm] doesn't";
	else if d is b2:
		say "[the room b1 of rm] doesn't";
	else if d is a3:
		say "[the room a1 of rm] and [the room a2 of rm] don't";
	else if d is b3:
		say "[the room b1 of rm] and [the room b2 of rm] don't";
	else:
		say "(BUG IN SKIPPED-ROOM FINDING CODE: [rm] and [d]) doesn't/don't";

check going when in-heptagon-puzzle is true:
	if noun is not rotational, continue the action;
	if noun is a1 or noun is b1, say "Odd. You can't move that slowly. Moving one section over isn't really moving [b]ON[r], I guess. So going [b]A[r] or [b]B[r] is out." instead;
	if noun is hep-illegal, say "You can't reverse direction on the torus like that." instead;
	if number of hep-traversed rooms is 1:
		say "You race around a bit. You notice [skipped-room of location of player and noun] light up as you run past [if dist of noun is 3]them[else]it[end if].";
	if init-hept-dir is up:
		now init-hept-dir is noun;
		continue the action;

leg-jump-warning is a truth state that varies.

after going when in-heptagon-puzzle is true:
	if location of player is hep-traversed:
		now in-heptagon-puzzle is false;
		say "As you go back to the [location of player] section, the glow emanating from it disappears. The whole torus dims. That must have been a wrong step, revisiting [location of player]. But there seems to be nothing to stop you from going [b]ON[r] and trying again.";
		if leg-jump-warning is false:
			say "Your legs feel less jumpy now, too. You can go [b]A[r] and [b]B[r] if you want to plot things out, or whatever.";
			now leg-jump-warning is true;
		continue the action;
	now location of player is hep-traversed;
	add dist of noun to heptagon-path;
	if number of hep-traversed rooms is 7:
		if 2 is not listed in heptagon-path or 3 is not listed in heptagon-path:
			say "The interior of the Torus shudders, but nothing conclusive happens. Perhaps you [one of][or]again [or]once again [stopping]took an easy way to touch all the rooms. The whole torus dims. But there seems to be nothing to stop you from going [b]ON[r] and trying again.";
		else:
			say "All manner of whirring seems to flow around you. The cylinder in the center of the torus lights up further. The door inside ... wherever ... flips open and closed. The path to the center looks much more solid. You take a tentative step inward on it, and this time, you're not bounced.[paragraph break]There doesn't seem to be anything else to do. Now's probably a good time to go [b]INSIDE[r].";
			now solved-heptagon is true;
		now in-heptagon-puzzle is false;
	continue the action;

check going a rotational direction when player is in scene scene:
	say "You don't need to worry about walking around the torus any more here, thankfully. Just sit back and figure what to change and now." instead;

check going a not rotational direction:
	if player is in Scene Scene, say "Maybe you'll explore what's around, but you need to lay down roots first." instead;
	if noun is opposite of guessdir of location of player:
		say "(converting to inside, based on the guessed direction of [location of player])[paragraph break]";
		try going inside;
		the rule succeeds;
	if noun is guessdir of location of player:
		say "(converting to outside, based on the guessed direction of [location of player])[paragraph break]";
		try going outside;
		the rule succeeds;
	say "Directions other than inside (once you find what's in the center of the torus), outside and the rotational directions (A, AA, AAA, B, BB, BBB) are meaningless here." instead;

inside-reject-row is a number that varies. inside-reject-row is 1.

check going inside:
	if location of player is scene scene, say "You already are." instead;
	if heptcount < 7:
		if inside-reject-row <= number of rows in table of unavoidable inside rejects:
			choose row inside-reject-row in table of unavoidable inside rejects;
			say "[texty entry][line break]";
			increment inside-reject-row;
			if number of unvisited perimeter rooms > 0:
				say "[line break]Perhaps you should try and see everywhere on the torus." instead;
			the rule succeeds;
		choose row (heptcount + 1) in table of center statuses;
		say "[cylinder-block entry][paragraph break]";
		say "It makes sense you can't just walk in, though. You still haven't figured what to do[if score is 0 and number of visited dubrooms is 1], and you haven't even really looked around[else if score is 0] anywhere[else if location of player is unsolved] here[else] over at [random unsolved visited room][end if].";
		the rule succeeds;
	if solved-heptagon is false and heptcount is 7:
		say "[if ever-heptagon-puzzle is false]The 'Noon, No, no' routine pushes you back with surprising force[else if in-heptagon-puzzle is true]You're in the middle of some sort of sideways dance right now. Maybe after you do it right, you can go inside[else]You're still blocked from entering the center of the torus. Perhaps you need to try going [b]ON[r] again[end if]." instead;
	say "The path to the cylinder is solid. The door blows open as you get there. You walk in and tumble down a slope. Around you, voices boom 'RESTRAIN! RESTRAIN!' They are closing in! This is the end! But then they scatter. You pass out.";
	wfak;
	say "When you wake up and take stock, things are different. You feel you've seen this place before, even though you haven't. You still can't get the voices saying 'RESTRAIN!' out of your head. Who were they? Why did they leave? Wait ... wait. It makes sense now. You know where this is.[line break]";
	wfak;
	say "The Strainer Terrains!";
	wfak;
	say "Yes, after you dispatched Red Bull Burdell, you heard rumors. Travelers would occasionally come by from the Strainer Terrains but could not show anyone the way back. They were in no urgent danger. It just seemed like they would be a perfect ally or sibling country or whatever. You wondered how to get there, then forgot about it. But you are here now.";
	wfak;
	now the right hand status line is "[score]/[number of rooms]+";
	move player to Scene Scene instead;

book rooms

to say torus-fake-dir of (rm - a room):
	if rm is not dirguessed:
		now rm is dirguessed;
		say "Let's call this the [guessdir of rm] area of the torus for mapping reference, though compass directions aren't reliable or necessary anywhere";
	else:
		say "This is the pseudo-[guessdir of rm] area of the torus for mapping reference"

to say torus-area: say "area of the torus"

Ehs Ehs is a dubroom. printed name is "Ehs, Ehs". word-to-include is "sheesh". guess-right-text is "You effectively dismiss the ehs with something more powerful. Or less powerless.". clue-text is "The EHs you hear make you wish you could speak something back at them. Nothing profane, but forceful enough. But there's more than one to counter[if score is 0 and number of visited dubrooms is 7]. This feels like the simplest place to get to work. You might not even be creating anything. Maybe just blow off a little frustration[end if]". done-text is "It's quiet here. You don't have to vent any more". sts-hash of Ehs Ehs is 261362374. uniq-hash of Ehs Ehs is 262288. guessdir of Ehs Ehs is west. cycle-index of ehs ehs is 1.

Prep Area is a dubroom. it is a1 of Ehs Ehs. word-to-include is "reappear". guess-right-text is "You back out a bit, then reappear.". clue-text is "You feel like you are being watched. You want to duck out and in, but not in the standard directions". done-text is "After some scouting, you know good hiding areas where you or an ally can reappear if need be". sts-hash of Prep Area is 296783689. uniq-hash of prep area is 163857. guessdir of Prep Area is northwest. cycle-index of prep area is 2.

Grain Grain is a dubroom. it is a1 of Prep Area. it is a2 of Ehs Ehs. printed name is "Grain, Grain". word-to-include is "arraigning". guess-right-text is "The grain turns into a court of law, but since you have no guilt, you are free to go.". clue-text is "You feel on trial. Well, not quite, but you feel a need for acquittal for ... something". done-text is "It's a bit scorched here, the only indication this court of law was once farmland". sts-hash of Grain Grain is 234011677. uniq-hash of grain grain is 139585. guessdir of Grain Grain is northeast. cycle-index of grain grain is 3.

Meta Meat is a dubroom. it is a1 of Grain Grain. it is a2 of Prep Area. it is a3 of Ehs Ehs. "This is the east [torus-area]. [heptround].". word-to-include is "teammate". guess-right-text is "Someone comes along and bangs at the barrier inside. You hear a small cracking.". clue-text is "This area seems meaty, although you don't know why, or what kind of meaty". done-text is "'Met? Uh, meat,' you think to yourself, about the teammate you discovered here". sts-hash of Meta Meat is 297179098. uniq-hash of meta meat is 528401. guessdir of Meta Meat is east. cycle-index of meta meat is 4.

Tines Inset is a dubroom. it is a1 of Meta Meat. it is a2 of Grain Grain. it is a3 of Prep Area. it is b3 of Ehs Ehs. word-to-include is "intestines". guess-right-text is "You find the guts to turn the place into something more gross, but manageable.". clue-text is "You feel disjointed from the whole body of rooms here". done-text is "You are just glad you don't have to deal with digestive juices or anything here". sts-hash of Tines Inset is 441090447. uniq-hash of tines inset is 794896. guessdir of Tines Inset is southeast. cycle-index of tines inset is 5.

Pechan Pechan is a dubroom. it is a1 of Tines Inset. it is a2 of Meta Meat. it is a3 of Grain Grain. it is b3 of Prep Area. it is b2 of Ehs Ehs. word-to-include is "happenchance". guess-right-text is "You suddenly find a lucky way to look at this area of the torus. Or was it lucky? After all, you made a lot of educated guesses, and eventually, one had to hit.". clue-text is "Oh, a pechan is an odd word for stomach. You may need luck to solve the secret of this room. Some skill, maybe, but enough skill so your luck matters". done-text is "You feel fortunate you were able to turn this into something". sts-hash of Pechan Pechan is 336655278. uniq-hash of pechan is 41109. guessdir of Pechan Pechan is south. cycle-index of pechan pechan is 6.

Latte Latte is a dubroom. it is a1 of Pechan Pechan. it is a2 of Tines Inset. it is a3 of Meta Meat. it is b3 of Grain Grain. it is b2 of Prep Area. it is b1 of Ehs Ehs. printed name is "Latte, Latte". "This is the southwest [torus-area]. All sorts of coffee shops here! What is going on? You know it's ridiculous, but you can't bring yourself to say so. [heptround].". word-to-include is "tattletale". guess-right-text is "Someone comes along and mentions how ridiculous it is to have that many coffee shops so close to each other. Suddenly, everyone believes it! Some coffee shops decide to become something with a little more variety.". clue-text is "Coffee certainly makes folks chatty, you know". done-text is "You're glad the coffee shops are gone and that the tattletale has gotten bored of tattling to you--for the moment, at least". sts-hash of Latte Latte is 390027802. uniq-hash of latte is 526353. guessdir of Latte Latte is southwest. cycle-index of latte latte is 7.

to decide which number is fiss:
	decide on number of flippables in scene scene;

to say list-opt:
	if deededed is false:
		say "don't see anything here, but a voice beckons you to do more ... if you want. Or you can just figure how to move on from adventuring";
	else if fiss is 0:
		say "have nothing left to do but deal with this place, as you did with the areas of the torus";
	else if fiss is 1:
		say "have one more thing to clear out, if you want";
	else:
		say "have a few distractions here you may or may not wish to take care of before changing the scene";

Scene Scene is an internal dubroom. "You recognize this, err, scene as the mythical [strainer terrains]. It's fun. You've earned it. But how to effect that? You [list-opt].". word-to-include is "senescence". guess-right-text is "Yup. That'll do it.". clue-text is "Here you should spend your remaining years[if score is not maximum score]. There's still stuff to do here if you want, you suspect[end if]". done-text is "You shouldn't see this description. Oops". sts-hash of Scene Scene is 439799277. uniq-hash of scene scene is 270356.

stats-x is a truth state that varies.

instead of exiting:
	try going outside instead;

section strainer terrains

the Strainer Terrains are a backdrop in Scene Scene. "There's so much to look at in [the strainer terrains]! But you feel you need to get settled first."

instead of doing something with strainer terrains:
	if current action is examining, continue the action;
	say "You may find things to do in [the terrains] once you're settled. Figure what to do in this, uh, scene."

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

book hams

the hams are physical plural-named flippables. description is "Both sorts of hams. Jokesters carrying hams. You suppose more food is always good, but you'd really like something more dignified and helpful, someone who doesn't force their 'excitement' on you so you're distracted. Someone serious about bridging cultural and religious gaps, for instance, someone willing to work for others and not take attention away. Perhaps even a little old-school.". guess-right-text is "The hams throw their hands up in the air. 'Well, if you want someone less exciting than us, it's your life! Not that you really HAVE a life.' A shammash replaces them. They look ready to get down to business, but in a helping people way, not in a 'rip them off' sort of way.". sts-hash of hams is 199819236. uniq-hash of hams is 266369. word-to-include is "shammash". "Hams carry hams around here. While you guess having food is nice, maybe the sort of jokes they wish to foist off on you would be counterproductive. Maybe you can make them into something more serious, though you may just want to clear out the scene in general. You get the sense they might be tougher customers than whatever you can [b]LISTEN[r] to.". printed name is "hams, hams"

book item time

item time is an audible flippable. it is scenery. "'Item time ... item time ...' a voice whispers. You don't know what sort of item you should be looking for.". guess-right-text is "Now you know what to look for, you find something interesting , slightly shiny ... yes! A mineral that can be used as export, in trade! You're not sure for what, but then, that sort of thing isn't your specialty. Perhaps your old friends Len Craig from the Clangier Clearing, or Curtis from Rustic Citrus, could help with the details.". word-to-include is "mimetite". sts-hash of item time is 679968252. uniq-hash of item is 528656.

book some emos

emos are an audible plural-named flippable. "Some emos hang around here, disappointed they have nothing to study.". guess-right-text is "The voices of some emos protest. This can't be what they need to study! But somehow, you manage to convince them it's what they were meant to. The conversation changes, and they give a reasonable showing of the scientific method.". description is "It seems to be in its own little cell--well, mentally speaking, at least. Some emos, indeed!". word-to-include is "mesosome". sts-hash of emos is 725015610. uniq-hash of emos is 282640. printed name of emos is "some emos".

understand "some emos" and "some" as emos.

book since since

since since is an audible flippable. It is scenery. "A nonsensical voice whispers 'since ... since ...' It's hard to tell what it wants or what it doesn't want or what it is trying to imply.". guess-right-text is "You see the nonsensical voice for what it is. Insciences! Ignorance! While you can't just wave your hand and make it go away, just identifying it is a huge first step. You will be able to help others identify that sort of thing, too". word-to-include is "insciences". sts-hash of since since is 713972028. uniq-hash of since is 270612.

book reps reps

reps reps is an audible flippable. It is scenery. "A voice keeps whispering 'Reps ... reps ...' but what do the reps lead to? How are they productive?". guess-right-text is "Of course! You've always wanted to show you were good with words in a more than abstract sense. The more you practice writing, the more you will feel okay sending a work to pre-press.". word-to-include is "prepress". sts-hash of reps reps is 781739674. uniq-hash of reps is 426000.

volume backdrops

the torus is a backdrop. "It's, well, round, and it's big and wide enough, you won't fall off."

understand "door" as torus when score >= 4.

instead of doing something with torus:
	if current action is examining, continue the action;
	if current action is exiting, say "No way out." instead;
	if current action is entering, try going inside instead;
	say "You can't do much with or to the torus besides [b]EXAMINE[r] it.";

the cylinder is a backdrop. "[which-cylinder-look]"

to say which-cylinder-look:
	choose row (score + 1) in table of cylinder descriptions;
	say "[texty entry]";

volume when play begins

when play begins:
	move torus backdrop to all perimeter dubrooms;
	move cylinder backdrop to all perimeter dubrooms;
	now maximum score is number of rooms;
	sort the table of times around in random order;
	sort the table of times around in clue-group order;

when play begins:
	now sts-sequence is 3;
	now the right hand status line is "[score]/[number of rooms]";
	say "Leading Yorpwald after defeating Red Bull Burdell and then Elvira wasn't what you asked for, but it's what you got, and you did well enough. But the job is exhausting. You've never wanted flatterers, and you expected criticism, even unfair criticism, but there are some things you can't avoid listening to by now.";
	wfak;
	say "The worst part, as you're getting older: you're maybe half the person you used to be. This, from people who never thought you were much to begin with. Still, you Got Stuff Done. But your heart was in things less. Others seemed to have better ideas. You felt you spent all your time delegating and getting credit for stuff you just signed off on.";
	wfak;
	say "You wanted adventure. But defeating Red Bull Burdell required changing just about every pair of things imaginable, and with Elvira, well, it was more abstract, deciding what to do or think or how to describe things. What could be left? Then, one day, a diplomat told you of a distant structure. One worth visiting. A [this-game]. Nothing seemed there. But if anyone could unlock its secrets, you could.";
	wfak;
	say "You returned to the museum that held the tagged gadget and letters settler that helped you in your first two quests. You did so every few months and felt nothing. But this time, a surge! Still, they were too much a part of history to move from a museum. The curator had an idea--some stat tats that could help you, if needed.";
	wfak;
	say "You made your final choice. You resigned as leader, leaving things to trusted advisors. Your heart was in adventuring. Who knows what you'd find?";
	wfak;

volume clue-visiting

clue-row is a number that varies. clue-row is 1.

after printing the locale description (this is the clue on complete tour rule):
	if in-heptagon-puzzle is true, continue the action;
	if location of player is scene scene, continue the action;
	if score > 0 and ever-heptagon-puzzle is false, continue the action;
	now location of player is cluevisited;
	if number of cluevisited rooms is 7:
		now all rooms are not cluevisited;
		if ever-heptagon-puzzle is true and solved-heptagon is false:
			say "Hmm. Nothing new to do. You should really try going [b]ON[r] again.";
			continue the action;
		show-next-clue;

to show-next-clue:
	while clue-row < number of rows in table of times around:
		choose row clue-row in table of times around;
		if there is no skip-rule entry:
			break;
		process the skip-rule entry;
		if the rule succeeded:
			say "Skipping [clue-row].";
			increment clue-row;
		else:
			break;
	if clue-row > number of rows in table of times around:
		decrement clue-row;
	choose row clue-row in table of times around;
	say "[clue-text entry][line break]";
	now cheat-voice is true;

volume game progress verb

chapter deededing

deededing is an action out of world.

understand the command "deeded" as something new.

understand "deeded" as deededing when player is in Scene Scene.

deededed is a truth state that varies.

carry out deededing:
	if deededed is true, say "You already took on an additional challenge." instead;
	say "Regardless of what [b]DEEDED[r] may or may not mean, you think the word. You say the word. New things and people pop up. You're not sure what to do, but there's a lot to do! Oh, you can also still figure out what to do with [scene scene].";
	repeat with fl running through flippables:
		move fl to Scene Scene;
	try looking;
	now deededed is true;
	now maximum score is number of dubrooms + number of flippables;
	now the right hand status line is "[score]/[maximum score]";
	the rule succeeds;

chapter oning

to decide which number is hep-prog:
	decide on number of hep-traversed dubrooms;

after printing the locale description when in-heptagon-puzzle is true and hep-prog > 1:
	say "The torus is now [entry hep-prog of litness] lit. You have covered [list of hep-traversed dubrooms].";
	continue the action;

litness is a list of text variable. litness is { "barely", "somewhat", "moderately", "slightly more than half", "very", "almost fully", "completely" }.

oning is an action out of world.

understand the command "on" as something new.

understand "on" as oning.
understand "go on" as oning.

zero-one-warn is a truth state that varies.

carry out oning:
	if solved-initials is false, say "You're not ready to really go on yet. But you'll know when you are." instead;
	if in-heptagon-puzzle is true, say "You're already in the process of going on." instead;
	if player is in scene scene, say "You already successfully went on." instead;
	if in-heptagon-puzzle is false:
		say "[b]NOON NO NO[r] is simple and devastating, but you found an even simpler retort to stop feeling paralyzed by it.[paragraph break]";
		now in-heptagon-puzzle is true;
	say "Yes, you decide it's time to start going [b]ON[r][one of]. [location of player] seems as good a place to start as any others. The ground beneath you in [location of player] seems to brighten up as you make your decision. You feel confident that if you don't do things right, you'll have another try[or] again. Maybe you'll find the right way through this time[stopping].";
	now ever-heptagon-puzzle is true;
	now all dubrooms are not hep-traversed;
	now location of player is hep-traversed;
	now heptagon-path is {};
	now init-hept-dir is up;
	now on-start-room is location of player;
	if zero-one-warn is false:
		ital-say "since the map of Tours Roust Torus is circular, you can use the verbs [b]0[i] and [b]1[i] to track the rooms as numbers to make things a bit easier, here.";
		now zero-one-warn is true;
	the rule succeeds;

on-base is a number that varies. on-base is -1.

after printing the name of a room (called rm) when in-heptagon-puzzle is true and on-base > -1:
	say " ([cur-on-index of rm])";
	continue the action;

section zerobasing

zerobasing is an action out of world.

understand the command "0" as something new.

understand "0" as zerobasing when zero-one-warn is true.

carry out zerobasing:
	if on-base is 0:
		say "No longer mapping rooms to numbers.";
		now on-base is -1;
	else:
		say "Now the initial room when you type [b]ON[r] is given a value of zero.";
		now on-base is 0;
		if debug-state is true, d "[list of perimeter rooms].";
	now zero-one-warn is true;
	the rule succeeds;

section onebasing

onebasing is an action out of world.

understand the command "1" as something new.

understand "1" as onebasing when zero-one-warn is true.

carry out onebasing:
	if on-base is 1:
		say "No longer mapping rooms to numbers.";
		now on-base is -1;
	else:
		say "Now the initial room when you type [b]ON[r] is given a value of one.";
		now on-base is 1;
		if debug-state is true, say "[list of perimeter rooms].";
	now zero-one-warn is true;
	the rule succeeds;

section failure

to fail-heptagon:
	now all dubrooms are not hep-traversed;

volume meta verbs

check restarting the game:
	say "A random voice booms 'Restart-Set rates tears!'";

check restoring the game:
	say "A random voice booms 'Restore-tos? Rotes! Rotes!'";

chapter abouting

big-details is a truth state that varies.

abouting is an action out of world.

understand the command "about" as something new.

understand "about" as abouting.

carry out abouting:
	say "[this-game] is installment 3 in [tsts]. It was originally published for Spring Thing 2022. Number one in the series was [shuf], published for IFComp 2012, and number two was [aro], published for Spring Thing 2013. These should all be on itch.io.";
	say "[line break]";
	if big-details is false:
		say "[b]CREDITS[r] will give thanks to people who helped in [this-game]. This includes cover art, testing and those who keep the community active and those who give general resources.";
	else:
		say "[this-game] isn't meant to be as challenging or as long as [shuf] or [aro]. It's much smaller, and it is [b]POLITE[r] on the Zarfian Cruelty scale, but it does sweep up some things I wanted to, and I wanted a good-bye from the other games beyond 'I hope I fixed all the bugs and added all the features I could!' I always had the sense I could fit one more game in, but I wanted it to be relatively small. And I wanted some sort of theme. I couldn't find one until I almost stumbled on it by accident. I had an idea where it would take place--a Tours Torus, for a circular map--but what was left? After all, the remaining 'good' ones got bled into Roiling. I needed some relatively long words, but I didn't want them to be long for their own sake.[paragraph break]Saying more would spoil things for Spring Thing, but the post-comp version of this game should come with a postmortem.";
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
	say "Direct thanks:[paragraph break]";
	say "Thanks to ClubFloyd for Beta Testing a version of this game. They worked through some parts that are much better hinted and described now. I'm worried I'll miss a few names, but there were bg, David Welbourn, Jacqueline, MoyTW, pinkunz, and Roger, among others.";
	say "Thanks to individuals for some late testing. I appreciate it. Their names*: Dee Cooke, Olaf Nowacki, A Numb Scan Down.";
	say "Thanks to J. J. Guest for the cover art. He's done a lot of other cool cover art, too. https://ifdb.org/viewlist?id=6qv507dlg1j4klk8 has his complete works with editorial comments. I bet if you like [this-game], you'll like some of the games featured there, too.";
	say "* [i]Thanks to one of them for an additional anagram puzzle. If you need a hint, they've written XYZZY-nominated stuff before[r].";
	say "[line break]General thanks:";
	say "[line break]Thanks to Amanda Walker for starting the blurb thread on intfiction.org which helped me with ideas in general.";
	say "Thanks to Greg Boettcher for starting the Spring Thing competition and giving me a bit of a mulligan when I entered [aro]. Thanks to Aaron Reed for continuing to hold the Spring Thing competition.";
	say "Thanks to wordsmith.org for so many anagrams verified and inspired.";
	the rule succeeds;

chapter listening

the block listening rule is not listed in any rulebook.

cheat-voice is a truth state that varies.

ever-voice is a truth state that varies.

to say sestet: say "'Sestet! Set! SET!!!'"

definition: a thing (called th) is end-bonus-hear:
	unless th is touchable, no;
	unless th is flippable, no;
	unless th is audible, no;
	yes;

after printing the name of a flippable (called fl) when listening:
	say "'";
	continue the action;

before printing the name of a flippable (called fl) when listening:
	say "'";
	continue the action;

check listening:
	if deededed is false and location of player is Scene Scene:
		say "A voice whispers [b]DEEDED[r] ... [b]DEEDED[r] ... you're torn between just figuring what to do here and moving on, because 'deeded' would probably involve signing a lot of boring contracts, or just figuring how to settle in quickly.";
		the rule succeeds;
	let ebh be number of end-bonus-hear things;
	if ebh  > 0, say "You hear [if ebh is 1]one last voices[else]various voices[end if] focusing on a specific word: [list of end-bonus-hear things]. You can probably [b]EXAMINE[r] one for more details." instead;
	say "[one of]Ugh. You sometimes have to listen twice, to make sure you heard stuff right.[paragraph break][or][stopping]";
	if cheat-voice is false and ever-voice is false, say "Nothing... yet... funny, you almost expected something by ABBA." instead;
	if score is 0:
		say "[one of]A voice whispers [sestet][line break]That's odd! You counted seven locations, which would make a [i]heptet[r]. But maybe it's one of those deals where they're saying something slightly wrong to draw your attention to something else. Maybe that will help a bit, you think. But where is the voice coming from? You can't see anyone, or anything.[paragraph break]Wait. That's it. It's got to be something small. A tsetse fly! Of course![or]The tsetse fly again: [sestet][stopping]";
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

chapter score

check requesting the score:
	if deededed is true:
		say "You've gotten inside the torus. You still have to figure how to sit back and get on with your life[if deededed is false], though you can listen to the voice to try for one last pile of things to set straight[else if number of unflipped flippables is 0], especially now you've straightened out the challenges you were [b]DEEDED[r][else if number of flipped flippables is 0], and you can do so even without tackling what you were [b]DEEDED[r][else], though you've still got some stuff you were [b]DEEDED[r] to clean up, if you want[end if].";
		say "You have figured [number of flipped flippables] of [number of flippables] things here in [scene scene].";
		the rule succeeds;
	say "You've figured [score] of [maximum score] areas of the Torus. [if number of unvisited rooms is 1 and score < 7][one of]Why, yes, there is a way to the center[or][stopping][else if number of unvisited rooms > 1]You may wish to explore the whole torus to see what you might be able to do[else if hams are off-stage]You can just go ahead and figure how to end your journey, but there are bonus puzzles if you [b]LISTEN[r] and do as the voice says[end if].";
	the rule succeeds;

chapter smelling

the block smelling rule is not listed in any rulebook.

every turn: say "[hay-smell-known].";

check smelling:
	if player is in scene scene, say "It smells nice here." instead;
	if hay-smell-available is true:
		now hay-smell-known is true;
		say "You smell hay[one of][or], again[stopping], and you can't help theatrically [one of][or]re-[stopping]exclaiming 'Ahh! Yay! Hay!' as you recall trading the straw for hay way back when." instead;
	say "Nothing unusual." instead;


chapter going outside

the convert exit into go out rule is not listed in any rulebook.

check going outside:
	if location of player is Scene Scene, say "There's no way back out. Here's where you want to be." instead;
	say "You'd fall off the [this-game] that way." instead;

chapter no/yes

the block saying no rule is not listed in any rulebook.
the block saying yes rule is not listed in any rulebook.

check saying no:
	if solved-initials is true and player is not in scene scene:
		if in-heptagon-puzzle is true:
			say "You can't reverse that way. You don't need to. Worse case, you do-over and start again.";
		else:
			say "[if ever-heptagon-puzzle is true]Thinking [b]ON[r] was enough of a reverse of 'Noon? No! No!'[else]Just the opposite. And I don't mean saying yes.[end if]";
		the rule succeeds;
	say "No need for negativity[if player is in scene scene], especially now you've found somewhere nice.[else]. You'll need the opposite to get to the center of the torus![end if]" instead;

sys-eye-yes is a truth state that varies.

check saying yes:
	if sys-eye-yes is false:
		say "Out of nowhere, a SYS-EYE pops up and whirrs around. You're not sure where it's gone. It's a bit worried you're being surveilled like that[if score is 0]. But maybe the SYS-EYE can help you in its own weird way[end if].";
		now sys-eye-yes is true;
	else:
		say "The SYS-EYE does not reveal itself. Perhaps it [if score is 0]is[else]was[end if] just there as bizarre help, in its own way.";
	the rule succeeds;

understand "yes yes" and "yesyes" as saying yes.

chapter stating

stating is an action out of world.

understand the command "stat" as something new.

understand "stat" as stating.

carry out stating:
	if tats-stat is 2:
		say "You gaze at your stat tats so they don't give quite such big numbers as information.";
		now tats-stat is 1;
		the rule succeeds;
	if tats-stat is 1:
		say "You gaze at your tats to get an extra stat from them when you try to guess what to do[one of]. [b]STAT[r] again will give slightly less information[or][stopping].";
	else:
		say "Your tats are now in stat-giving mode. [b]STAT[r] again will give even more potentially revealing stats when you make guesses. [b]TATS[r] will get rid of stat-giving mode.";
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

to stat-mention:
	say "[line break][b]STAT[r] and [b]TATS[r] adjust whether your stat tats actually give meaningful stats. [b]STAT[r] twice in a row gives a bigger potential hint.";

check verbing when player is in scene scene:
	say "You're pretty much at the end, here. There's nowhere else left to go. [b]DEEDED[r] [if deededed is true]gave you some bonus point tries[else]can help you with a slightly nicer extended ending[end if]. However, all you need to do is figure how to manipulate [scene scene]. Just as with the outside area.";
	stat-mention;
	the rule succeeds;

carry out verbing:
	say "Compass directions aren't really viable, here. You may try to go [b]IN[r] or [b]OUT[r], but the main directions are [b]A[r] and [b]B[r] to move clockwise and counterclockwise around the torus.";
	say "[line break]You can also skip over adjacent torus areas with [b]AA[r], [b]AAA[r], [b]BB[r], or [b]BBB[r]. Note anything more than that is accepted but impractical, as [b]AAA[r] and [b]BBBB[r] are equivalent.";
	stat-mention;
	if zero-one-warn is true:
		say "[line break]You also have the option of referring to areas of the torus as numbers after you've gone [b]ON[r]. This can be done with [b]0[r] or [b]1[r]. Typing the same number twice removes the numerical reference. Currently numerical referencing is [if on-base is -1]off[else][on-base in words]-based[end if].";
	if score is 0 and clue-row > 1:
		say "[line break]Also, if you'd like a clue, you can enter a blank command.";
	the rule succeeds;

chapter swearing

the block swearing obscenely rule is not listed in any rulebook.
the block swearing mildly rule is not listed in any rulebook.

check swearing mildly: try swearing obscenely instead;

check swearing obscenely: say "Appall? Pal! PAL!" instead;

chapter xyzzying

xyzzying is an action out of world.

understand the command "xyzzy" as something new.

understand "xyzzy" as xyzzying.

carry out xyzzying:
	say "So close! Just one letter off. Or one too much. You [if score > 0]probably know[else]can maybe guess[end if] which one.";
	the rule succeeds;

volume endgame

The print final score rule is not listed in for printing the player's obituary.

volume parsing

caps-warn is a truth state that varies.

after reading a command:
	abide by the punctuation-munge rule;
	let cmd-lo be indexed text;
	if caps-warn is false:
		if the player's command matches the regular expression "<A-Z>":
			ital-say "The parser for [this-game] is case-insensitive, so don't worry about getting CAPS right.";
			now caps-warn is true;
	now cmd-lo is the player's command in lower case;
	repeat through table of one time warnings:
		if warned-yet entry is true, next;
		if the player's command matches the regular expression "\b[my-topic entry]\b":
			process the should-i-print entry;
			if the rule succeeded, now warned-yet entry is true;
	if location of player is not solved:
		repeat through table of pre-brushoffs:
			if location of player is not my-room entry, next;
			if cmd-lo matches the regular expression "\b[my-topic entry]\b":
				say "[my-brushoff entry][line break]";
				reject the player's command;
	if location of player is solved:
		repeat through table of post-brushoffs:
			if location of player is not my-room entry, next;
			if cmd-lo matches the regular expression "\b[my-topic entry]\b":
				say "[my-brushoff entry][line break]";
				reject the player's command;
	if cmd-lo exactly matches the text "[word-to-include of location of player]":
		if location of player is solved:
			say "You look back to how you fixed things here and think how you can apply that going forward.";
			the rule succeeds;
		now location of player is solved;
		say "[guess-right-text of location of player][line break]";
		increment the score;
		choose row (number of solved dubrooms) in table of progress;
		say "[line break][texty entry][line break]";
		if there is a ruley entry, process the ruley entry;
		say "[line break][b][location of player][r][line break]";
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
		if got-one is false:
			say "Oops. We should have done something here, but we didn't.";
		if ever-voice is true and score is 1:
			say "[line break]You sense the tsetse fly has left. You won't need it any more. For such a small fly, it did a lot.";
		process the notify score changes rule;
		process the clue ON rule;
		reject the player's command;
	if at-on-puzzle:
		if word number 1 in cmd-lo is "n" or word number 1 in cmd-lo is "o":
			say "Weird! You felt halfway there, thinking that. But you froze up at the wrong moment.";
			reject the player's command;
	if location of player is scene scene:
		repeat with F running through touchable flippables:
			if cmd-lo exactly matches the text "[word-to-include of F]":
				now F is off-stage;
				now F is flipped;
				say "[guess-right-text of F][line break]";
				increment the score;
				process the notify score changes rule;
				now last-clue-thing is yourself;
				reject the player's command;

to decide whether at-on-puzzle:
	if ever-heptagon-puzzle is false and all perimeter dubrooms are solved, yes;
	no;

Include (-

	#Undef OOPS1__WD;
	Constant OOPS1__WD = 'o o';
	#Undef OOPS2__WD;
	Constant OOPS2__WD = 'o o';
	#Undef OOPS3__WD;
	Constant OOPS3__WD = 'oops';

-) after "Language.i6t".

volume help stuff

to say verbs: say "[b]V[r]/[b]VERB[r]/[b]VERBS[r]"

after printing the locale description for Ehs Ehs when Ehs Ehs is unvisited:
	say "[i][bracket]NOTE: to see general information about [this-game][i], type [b]ABOUT[i]. To see the verbs used, type [verbs][i]. In particular, you may want to note the directions used.[close bracket][r][line break]";
	continue the action;

volume endgames

this is the show rejected words rule:
	say "Here are some rejected words:";
	say "[line break][b]HORSESHOER[r] could have been a good one, but there was already a Hero's Shore with Shoer Osher in [aro].";
	say "[b]APPEASES[r] is definitely a word that could've come from [b]APSE[r], [b]APSE[r], but it's a verb in a weird tense, so I couldn't fit it in. Also, [b]PEAS[r] could've worked, but it's in the answer.";
	say "[b]SALALS[r] are an evergreen shrub, but no three-letter words make sense.";
	say "A [b]MILLIEME[r] is, apparently, Tunisian currency, so that's too obscure. [b]LIME[r] and [b]MILE[r] would've worked so well!";
	say "[b]BILABIAL[r] means with both lips, but I saw no connection to [b]BAIL[r].";
	say "[b]GENSENGS[r] was flagged in my words file, but [b]NEGS[r]and [b]GENS[r]didn't work.";
	say "[b]NOTIONISTS[r] came from oints, twice, but oint is not short for ointment but rather a verb tense of smearing with oil.";
	say "Some other words were neat but too abstract or obscure, or they had nothing that half-anagrammed: [b]JIPIJAPA[r], [b]SASARARA[r](scolding), [b]SASSARARAS[r], [b][b]SNIFFINESSES[r]([b]FINESS[r] 'almost' works), [b]SNIPPINESSES[r] and [b]TRISECTRICES[r].";

after printing the name of a flippable (called fl) when detail-flippable is true:
	say "([b][word-to-include of fl in upper case][r])";
	continue the action;

deed-spoil-warn is a truth state that varies. detail-flippable is a truth state that varies.

this is the show what you missed rule:
	if score is not maximum score:
		say "The only opportunities for additional points are in [scene scene]. ";
		if deededed is false and deed-spoil-warn is false:
			say "You could have typed [b]DEEDED[r] to bring out some new puzzles. ";
			say "I'll make you type [b]MISSED[r] again to see spoilers for what is there.";
			now deed-spoil-warn is true;
		else:
			now detail-flippable is true;
			say "You missed [list of flippables in scene scene].";
			now detail-flippable is false;
	else:
		say "You missed nothing in [scene scene]. Well done!";
	if ever-voice is false, say "[line break]You [if score is maximum score]started so quickly, you[else]also[end if] missed a chance to have a friendly NPC help you. If you visited all the areas without solving any of the rooms, one would help you and continue to help you until you scored a point. I won't spoil it, as it's easy enough to traverse the rooms.";
	say "[line break]This is the practical, point-scoring stuff. [b]AMUSING[r] has odds and ends.";


Rule for amusing a victorious player:
	say "If you are wondering whether you missed any cute responses or anagrams, you can look in the [b]Tours Roust Torus Mistakes.i7x[r] file that should come with the distributable from itch.io.";
	say "[line break]Also, you can see it at: [b]https://raw.githubusercontent.com/andrewschultz/stale-tales-slate/main/Torus/Tours%20Roust%20Torus%20Mistakes.i7x[r].[paragraph break]The full source is at [b]https://github.com/andrewschultz/stale-tales-slate/tree/main/Torus[r].";
	say "[line break]You also get clues for swearing, saying [b]XYZZY[r], saying [b]YES[r], for entering an empty command before circling the torus a few times, and [b]LISTEN[r]ing. These may not be side-splitters, but I smiled when I thought of them.";
	say "[line break]The Nudges file (replace Mistakes with Nudges) shows rejects for when you try certain anagrams."

volume parser errors

murmur-yet is a truth state that varies.

rule for printing a parser error when the latest parser error is the i beg your pardon error:
	say "[umm-urr].";
	now murmur-yet is true;

cmdhash is a number that varies.

firstwordhash is a number that varies.

rufhash is a number that varies.

ruffirst is a number that varies.

to decide whether tat-cheat-regular:
	if the remainder after dividing tats-stat by 2 is 1, yes;
	no;

to decide whether tat-cheat-extra:
	let temp be tats-stat / 2;
	if the remainder after dividing temp by 2 is 1, yes;
	no;

brainy-warn is a truth state that varies.

to say how-many-right of (myit - indexed text):
	let x1 be filtered name of myit;
	let count be 0;
	let binary be 0;
	let q be location of player;
	if last-clue-thing is not the player, now q is last-clue-thing;
	repeat with y running from 1 to number of characters in x1:
		now binary is 2 * binary;
		if character number y in x1 is character number y in word-to-include of q:
			increment binary;
			increment count;
	if tat-cheat-regular:
		say "The stat tats show two numbers: [count] of [number of characters in x1]";
	if tats-stat >= 2 and brainy-warn is false:
		say ". Whoah! You wonder if you're brainy enough to figure this out";
		now brainy-warn is true;
	if tats-stat is 3:
		say ".[paragraph break]CHEAT RELOAD[paragraph break]";
	if tat-cheat-extra:
		say "The stat tats show two numbers: [binary] of [exp-1 of number of characters in x1]";
	if last-clue-thing is not yourself, say ".[paragraph break]The stat tats must refer to [the last-clue-thing]";
	if debug-state is true, say ".[paragraph break]DEBUG NOTE: Comparing [x1] vs [word-to-include of q]";

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
	now rufhash is the rough-hash of the player's command;
	now firstwordhash is the hash of word number 1 in the player's command;
	now ruffirst is the rough-hash of word number 1 in the player's command;
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
			say "This area of the torus sways slightly. You must have done something, but not everything, right.";
		else:
			say "[how-many-right of the player's command].";
		continue the action;
	repeat through table of nudge hashes:
		if cmd-hash entry is cmdhash or cmd-hash entry is firstwordhash:
			if there is a cmd-loc entry:
				if location of player is not cmd-loc entry, next;
				if location of player is solved, next;
			if there is a cmd-rule entry:
				process the cmd-rule entry;
				if the rule failed, next;
			say "[nudge-text entry][line break]";
			continue the action;
	if rufhash is uniq-hash of location of player or ruffirst is uniq-hash of location of player:
		say "Man! You had all the right letters, you think, but they didn't come together.";
		continue the action;
	let itmhash be 0;
	repeat with itm running through touchable flippables:
		now itmhash is the hash of the printed name of itm;
		if cmdhash is itmhash / 2:
			say "No, no half-measures here.";
			continue the action;
		else if cmdhash is itmhash:
			say "Hmm, [the itm] seems to waver a bit. You must be on the right track to change [the itm], here.";
			continue the action;
		if rufhash is uniq-hash of itm or ruffirst is uniq-hash of itm:
			say "Man! You had all the right letters for [the itm], you think, but they didn't come together.";
			continue the action;
	if solved-initials is true and player is not in scene scene:
		let temp-hash be 0;
		if the remainder after dividing cmdhash by 143260085 is 0:
			now temp-hash is cmdhash;
		else if the remainder after dividing firstwordhash by 143260085 is 0:
			now temp-hash is cmdhash;
		if temp-hash > 0:
			if in-heptagon-puzzle is true:
				say "You already started going [b]ON[r]. No need to overdo things.";
				continue the action;
			let ons be cmdhash / 143260085;
			if ons > 2:
				say "Your thoughts were racing too much. Simplify things.";
				the rule succeeds;
			else if ons is 2:
				say "Hmm. Somehow, some way, you're overthinking things here. Well, that's your gut feeling.";
				the rule succeeds;
	say "[this-game] doesn't have a deep bench of standard verbs, though in each room, you need to find something special to do or say or think. For a general list of verbs, type [b]VERBS[r].";

Rule for printing a parser error when the latest parser error is the not a verb I recognise error or the latest parser error is the didn't understand error:
	say "[reject]";

book Inform 6 stuff

volume parser check tables

volume First Word Retry extra stuff

Include (-
Replace LanguageVerb;
-) after "Definitions.i6t".

Include (-
[ LanguageVerb i;
	switch (i) {
	  'i//','inv','inventory':
			   print "take inventory";
	  'l//':   print "look";
	  'r//','read':   print "read";
	  'on': print "move on in your quest";
	  'no': print "say no";
	  'yes': print "say yes";
	  'x//':   print "examine";
	  'z//':   print "wait";
	  default: print "get a potential response";
	}
	rtrue;
];

-) after "Language.i6t".
