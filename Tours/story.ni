"Tours Roust Torus" by Andrew Schultz

volume dubroom definitions

rule for printing the name of a hex-ok dubroom: say "[word-to-include of the item described in title case]"

a dubroom is a kind of room. a dubroom has text called word-to-include. a dubroom has text called guess-right-text. a dubroom can be hex-ok. a dubroom is usually not hex-ok. a dubroom can be solved. a dubroom is usually not solved.

a dubroom has text called clue-text

to say hexround:
	say "You can [if hexcount is 6]enter the remains of[else]skirt[end if] the Attentat Tent to the [hexdir] by going [list of viable directions][if hexcount is 6], but you probably want to go [hexdir][end if]";
	if location of player is not hex-ok:
		say ". [clue-text of location of player]";
		if number of visited dubrooms is 6 and hexcount is 0:
			say ". You keep feeling jumbled when you think of all the room names. Whatever you need to do, there are no things to change, so you need to do something new, here"

book rooms

Ehs Ehs is a dubroom. "This is the west room in what seems to be a hexagonal ring. [hexround].". printed name is "Ehs, Ehs". word-to-include is "sheesh". guess-right-text is "You effectively dismiss the eh's with something more powerful. You're a bit sick of not being able to go [hexdir], and you hear a thud from behind the [tent].". clue-text is "The EHs you hear make you wish you could throw back something at them. Something double-powered, perhaps"

Prep Area is a dubroom. it is northeast of Ehs Ehs. "This is the northwest room in what seems to be a hexagonal ring. [hexround].". word-to-include is "reappear". guess-right-text is "You back out a bit, then reappear.". clue-text is "You feel like you are being watched. You want to duck out and in, but not in the standard directions"

Grain Grain is a dubroom. it is east of Prep Area. "This is the northeast room in what seems to be a hexagonal ring. [hexround].". printed name is "Grain, Grain". word-to-include is "arraigning". guess-right-text is "The grain turns into a court of law, but since you have no guilt, you are free to go.". clue-text is "You feel on trial. Well, not quite, but you feel a need for acquital for ... something"

Meta Meat is a dubroom. it is southeast of Ehs Ehs. "This is the southwest room in what seems to be a hexagonal ring. [hexround].". word-to-include is "teammate". guess-right-text is "Someone comes along and bangs at the barrier [hexdir]. You hear a small cracking.". clue-text is "You feel as if a friend or confidante could help you make a dent in the Attentat Tent, here"

Tines Inset is a dubroom. it is east of Meta Meat. "This is the southeast room in what seems to be a hexagonal ring. [hexround].". word-to-include is "intestines". guess-right-text is "You find the guts to turn the place into something more gross, but manageable.". clue-text is "You feel disjointed from the whole body of rooms here"

Pechan Pechan is a dubroom. it is southeast of Grain Grain. It is northeast of Tines Inset. "This is the west room in what seems to be a hexagonal ring. [hexround].". word-to-include is "happenchance". guess-right-text is "You suddenly find a lucky way out.". clue-text is "Oh, a pechan is an odd word for stomach. You may need luck to solve the secret of this room. Some skill, maybe, but enough skill so your luck matters".

Einstein St is east of Ehs Ehs. It is southeast of Prep Area. It is southwest of Grain Grain. It is northeast of Meta Meat. It is northwest of Tines Inset.

check going to Einstein St:
	if hexcount < 6, say "The Attentat Tent pushes back aggressively at you." instead;
	say "You stride nervously [hexdir], wondering who or what you will see. People all around are forming or creating logic puzzles. There is no war between crossword, Sudoku, Kakuro general logic-problem aficionados or people who like odder, weirder puzzles. There's something for everyone, and everyone is doing their own thing. People can even rate Karateka! It's all quite nice. But of course it can't last forever. It might get boring. Fortunately, an estates tat (with a very legible gib) explains the magic words 'meantime, anti' means you need to summon escapees['] capes to go back to the real world, and 'Rehire! Hi!' forms a request to come back. Which might not succeed. But eventually, when you really need the break, you will get it.[paragraph break]Oh, wait. I forgot to tell you the name of this place. It is:";
	end the story finally saying "EINSTEIN ST."


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

after going when map region of location of player is Ingoing O:
	now this-examine is 0;

to decide which number is hexcount: decide on number of hex-ok rooms;

to decide which direction is hexdir: decide on the best route from the location of the player to Einstein St;

the Attentat Tent is a scenery in Dwell'd Well. "It seems to almost lurch aggressively at you as if to push you back. It's blocking your way [hexdir]."

