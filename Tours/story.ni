"Tours Roust Torus" by Andrew Schultz

volume dubroom definitions

rule for printing the name of a solved dubroom: say "[word-to-include of the item described in title case]"

a dubroom is a kind of room. a dubroom has text called word-to-include. a dubroom has text called guess-right-text. a dubroom can be solved. a dubroom is usually not solved. a dubroom has a number called right-now. a dubroom has a number called total-length. a dubroom has text called right-pattern.

a dubroom has text called clue-text.

to say heptround:
	say "[if heptcount < 7]You feel like there should be something in the Torus, but nothing's there yet[else]You see a way inside to the center of the torus[end if]";
	if location of player is not solved:
		say ". [clue-text of location of player]";
		if number of visited dubrooms is 7 and heptcount is 0:
			say ". You keep feeling jumbled when you think of all the room names. Whatever you need to do, there are no things to change, so you need to do something new, here"

book basic going

check going inside: if heptcount < 7, say "You don't see any way to the center of the Torus, yet." instead;

check going: say "Directions other than inside are meaningless here." instead;

book rooms

Ehs Ehs is a dubroom. "This is the west room in what seems to be a heptagonal ring. [heptround].". printed name is "Ehs, Ehs". word-to-include is "sheesh". guess-right-text is "You effectively dismiss the eh's with something more powerful.". clue-text is "The EHs you hear make you wish you could throw back something at them. Something double-powered, perhaps"

Prep Area is a dubroom. it is northeast of Ehs Ehs. "This is the northwest room in what seems to be a heptagonal ring. [heptround].". word-to-include is "reappear". guess-right-text is "You back out a bit, then reappear.". clue-text is "You feel like you are being watched. You want to duck out and in, but not in the standard directions"

Grain Grain is a dubroom. it is east of Prep Area. "This is the northeast room in what seems to be a heptagonal ring. [heptround].". printed name is "Grain, Grain". word-to-include is "arraigning". guess-right-text is "The grain turns into a court of law, but since you have no guilt, you are free to go.". clue-text is "You feel on trial. Well, not quite, but you feel a need for acquital for ... something"

Meta Meat is a dubroom. it is southeast of Ehs Ehs. "This is the southwest room in what seems to be a heptagonal ring. [heptround].". word-to-include is "teammate". guess-right-text is "Someone comes along and bangs at the barrier inside. You hear a small cracking.". clue-text is "You feel as if a friend or confidante could help you make a dent in the Attentat Tent, here"

Tines Inset is a dubroom. it is east of Meta Meat. "This is the southeast room in what seems to be a heptagonal ring. [heptround].". word-to-include is "intestines". guess-right-text is "You find the guts to turn the place into something more gross, but manageable.". clue-text is "You feel disjointed from the whole body of rooms here"

Pechan Pechan is a dubroom. it is southeast of Grain Grain. It is northeast of Tines Inset. "This is the west room in what seems to be a heptagonal ring. [heptround].". word-to-include is "happenchance". guess-right-text is "You suddenly find a lucky way out.". clue-text is "Oh, a pechan is an odd word for stomach. You may need luck to solve the secret of this room. Some skill, maybe, but enough skill so your luck matters".

Latte Latte is a dubroom. "All sorts of coffee shops here! What is going on? You know it's ridiculous, but you can't bring yourself to say so. [heptround].". word-to-include is "tattletale". guess-right-text is "Someone comes along and mentions how ridiculous it is to have that many coffee shops so close to each other. Suddenly, everyone believes it! Some coffee shops decide to become something with a little more variety.". clue-text is "Coffee certainly makes folks chatty, you know.".

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

to decide which number is heptcount: decide on number of solved dubrooms;
