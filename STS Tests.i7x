Version 1/170918 of STS tests by Andrew Schultz begins here.

"Tracks various testing commands that can be used by Shuffling Around or A Roiling Original"

"Some parts are based heavily on Emily Short's very useful Property Checking extension but modified to count what is done and ignore certain important cases."

chapter bcheing - not for release

bcheing is an action out of world.

understand the command "bche" as something new.

understand "bche" as bcheing.

carry out bcheing:
	repeat with Q running through boring things:
		if Q is scenery, say "(scenery) ";
		say "[Q] ~ [bore-check of q] ~ [bore-text of Q][line break]";
	the rule succeeds.

chapter etuing - not for release

cmdtype is a number that varies.

etuing is an action applying to one number.

understand the command "etu" as something new.

understand "etu [number]" as etuing.

understand "etu" as etu0ing.

etu0ing is an action out of world.

carry out etu0ing:
	try etuing 0 instead;

maxtestnum is a number that varies.

hint-divide is a number that varies.

when play begins (this is the calculate maxtestnum and hintnum rule):
	say "Calculating the max test number.";
	now maxtestnum is 1;
	let power be 1;
	while power <= number of rows in table of cmds:
		choose row power in table of cmds;
		if testact entry is hinting, now hint-divide is maxtestnum;
		now maxtestnum is maxtestnum * 2;
		increment power;
	decrement maxtestnum;

carry out etuing:
	let nu be number understood;
	if nu is -1:
		let power be 1;
		repeat through table of cmds:
			say "[power]: [testact entry].";
			now power is power * 2;
		the rule succeeds;
	if nu < 0 or nu > maxtestnum, say "Need 1-[maxtestnum]. Try -1 to see the whole list. Currently the test command each turn list is [cur-act]." instead;
	let oldcmd be cmdtype;
	now cmdtype is number understood;
	if nu is 0:
		say "[if oldcmd is 0]Already testing nothing[else]Resetting[end if]." instead;
	else:
		if hint-divide > 0 and remainder after dividing number understood by (hint-divide * 2) >= hint-divide, now have-objhinted is true;
		say "Now [cur-act] every turn.";
	the rule succeeds;

to say cur-act:
	if cmdtype is 0:
		say "nothing";
		continue the action;
	let power be 1;
	let gotyet be false;
	let cmdtemp be cmdtype;
	repeat through table of cmds:
		if the remainder after dividing cmdtemp by (power * 2) is power:
			now cmdtemp is cmdtemp - power;
			if gotyet is true, say ", ";
			now gotyet is true;
			say "[testact entry]";
			if cmdtemp is 0, continue the action;
		now power is power * 2;

table of cmds
testact
smelling
listening
hinting
tkalling
taking inventory
requesting the pronoun meanings
thinking

every turn when cmdtype > 0 (this is the testrun rule):
	let cmdtemp be cmdtype;
	let power be 1;
	repeat through table of cmds:
		if the remainder after dividing cmdtemp by (power * 2) is power:
			say "[bold type]======Carrying out [testact entry]======[roman type]";
			try the testact entry;
			now cmdtemp is cmdtemp - power;
		now power is power * 2;
		if cmdtemp is 0, continue the action;
	continue the action;

after fliptoing (this is the redo cmd on debug rule):
	if cmdtype > 0:
		consider the testrun rule;
	continue the action;

tkalling is an action applying to nothing.

carry out tkalling:
	if location of player is not visited:
		repeat with Q running through all visible things not held by player:
			say "[Q]";
			try taking Q;

chapter nuling - not for release

nuling is an action out of world.

understand the command "nul" as something new.

understand "nul" as nuling.

carry out nuling:
	ply-table regnud of mrlp;
	the rule succeeds;

chapter gnling - not for release

gnling is an action out of world.

understand the command "gnl" as something new.

understand "gnl" as gnling.

carry out gnling:
	ply-table table of general nudges;
	ply-table regnud of mrlp;
	ply-table roomnud of location of player;
	the rule succeeds;

to ply-table (tn - a table name):
	say "Here are nudges from [tn]:[paragraph break]";
	let in-room be false;
	repeat through tn:
		if there is a this-item entry:
			say "(item [this-item entry]) [this-cmd entry] [hashval entry] is [unless this-item entry is touchable]NOT [end if]a valid hash try.";
			next;
		if there is a this-rule entry:
			process the this-rule entry;
			say "(rule [this-rule entry]) [this-cmd entry] [hashval entry] is [unless the rule succeeded]NOT [end if]a valid hash try.";
			next;
		say "[this-cmd entry] [hashval entry] is universally valid.";
	say "."

chapter redefining Emily Short's property checking

When play begins (this is the modified run property checks at the start of play rule):
	if the description of the player is "As good-looking as ever.":
		say "The player has the default description.";
		increment undescribed-people;
	repeat with item running through rooms:
		follow the property-check rules for item;
	if undescribed-rooms is 0, say "DEBUG Yay all rooms described.";
	repeat with item running through things:
		if item is a person, follow the property-check rules for item;
	repeat with person running through people:
		if initial appearance of person is empty and person is not scenery:
			increment init-mt-ppl;
			say "APPEARANCE IN ROOM [init-mt-ppl] [person].";
	repeat with item running through things:
		if item is not a person, follow the property-check rules for item;
	if undescribed-objects is 0, say "DEBUG Yay all objects described.";
	if undescribed-people is 0, say "DEBUG Yay all people described.";
	if init-mt-ppl is 0, say "DEBUG Yay all people have initial appearances.";

The property-check rules are an object-based rulebook.

undescribed-rooms is a number that varies.
undescribed-objects is a number that varies.
undescribed-people is a number that varies.
init-mt-ppl is a number that varies.

A property-check rule for a thing (called the target) (this is the modified things must have description rule):
	unless target provides the property description, continue the action;
	if the description of target is non-empty, continue the action;
	if target is abstract, continue the action;
	if target is a person:
		increment undescribed-people;
		say "PERSON [undescribed-people]";
	else:
		increment undescribed-objects;
		say "OBJECT [undescribed-objects]";
	say " [target] [if target is plural-named]have[else]has[end if] no description.";

A property-check rule for a room (called the target) (this is the modified rooms must have descriptions rule):
	if description of target is empty:
		unless target is abstract:
			increment undescribed-rooms;
			say "ROOM [undescribed-rooms] [target] has no description.";

volume verbs for testing

chapter cap

[* CAP caps the # of entries in a random table. For testing.]

caping is an action applying to one number.

understand the command "cap" as something new.

understand "cap [number]" as caping.

carry out caping:
	if number understood < 1, say "You need a positive number to cap the table with." instead;
	repeat through table of megachatter:
		if maxidx entry > number understood, now maxidx entry is number understood;
		if curidx entry > number understood, now curidx entry is number understood;
	say "Capped all random table entries at [number understood].";
	the rule succeeds;

chapter ffing

[* FF toggles if flips are unfrozen. Useful to test if you -could- flip something.]

ffing is an action out of world.

understand the command "ff" as something new.

understand "ff" as ffing.

carry out ffing:
	now ff is whether or not ff is false;
	say "Flips [if ff is false]un[end if]frozen.";
	the rule succeeds;

chapter hfing

[* shows full hints each turn]

hfing is an action applying to nothing.

understand the command "hf" as something new.

understand "hf" as hfing.

carry out hfing:
	now hintfull is whether or not hintfull is false;
	say "Showing full hints with the game (not recommended for testers unless you are bulldozing through) is [on-off of hintfull].";
	the rule succeeds;

chapter hfing

[* HF allows you to export hints to roilhints.glksave ]

hfiing is an action applying to nothing.

understand the command "hfi" as something new.

understand "hfi" as hfing.

carry out hfing:
	now hint-to-file is whether or not hint-to-file is false;
	say "Hint to file is now on. Exported to [gm-short]. This is largely deprecated with HF, which displays full hints each move.";
	append "==================[if hint-to-file is true]start[else]end[end if]ing hint debug session[paragraph break]" to the file of gamehints;
	the rule succeeds;

chapter hintalling

[* HINTALL detects which items still need hinting]

hintalling is an action out of world.

understand the command "hintall" as something new.

understand "hintall" as hintalling.

carry out hintalling:
	let mycount be 0;
	let times-found be 0;
	let should-find be true;
	repeat with VTH running through all things:
		now should-find is true;
		now times-found is 0;
		if VTH is useless or VTH is amusing or VTH is cluey or VTH is abstract or VTH is bounding, now should-find is false;
		repeat through table of hintobjs:
			if hint-entry entry is VTH, increment times-found;
		if should-find is true:
			if times-found is not 1:
				increment mycount;
				say "[if times-found is 0]Need[else]Too many[end if] [VTH] in table of hintobjs ([mycount]).";
		else if times-found > 0:
			increment mycount;
			say "Need to delete [VTH] from table of hintobjs ([mycount]).";
	if mycount is 0, say "Everything that needs to be hinted is, and everything that doesn't, isn't! Yay!";
	the rule succeeds;

section so hintall works ok

[* this is just so HINTALL can say "everything works." Odd things that aren't items or in the game are rejected.]

main-window is abstract.

Null-bitmap-typeface is abstract.

Null-image-typeface is abstract.

null tileset is abstract.

Glimmr C&C is abstract.

graphics-window is abstract.

chapter hintvising

[* this hints everything visible. It is trumped by hintall but may be useful to the beta tester. ]

hintvising is an action out of world.

understand the command "hintvis" as something new.

understand "hintvis" as hintvising.

carry out hintvising:
	repeat with VTH running through all visible things:
		if VTH is vishintable:
			all-say "Hinting [VTH]: ";
			try objhinting VTH;
	the rule succeeds;

definition: a thing (called VT) is vishintable:
	if VT is publically-named, decide yes;
	if VT is unscannable, decide no;
	decide yes;

chapter pluraling

[ * test for plurals ]

pluraling is an action applying to nothing.

understand the command "plural" as something new.

understand "plural" as pluraling.

carry out pluraling:
	repeat with Q running through things:
		if q is abstract, next;
		say "[Q] = [if Q is plural-named]plural[else]singular[end if] and [if Q is fixed in place]fixed[else]takeable[end if].";
	the rule succeeds;

chapter scoing

[*this tracks score-debugging. There are better ways. But it tells you what increased when in the debug file.]

scoing is an action out of world.

understand the command "sco" as something new.

understand "sco" as scoing.

carry out scoing:
	now scotrack is whether or not scotrack is false;
	say "Score-tracking in debug file is [scotrack].";
	if scotrack is false:
		now scotrack is true;
	else:
		now scotrack is false;
	the rule succeeds;

after fliptoing when scotrack is true (this is the score track debug rule):
	process the score debug rule;
	continue the action;

scotrack is a truth state that varies.

every turn when scotrack is true (this is the score debug rule) :
	append "[mrlp] > [the player's command] [cur-score of mrlp] / [min-score of mrlp]-[poss-score of mrlp].[line break]" to the file of debuggery;

chapter showtabing

[ * showtab shows the random tables we are choosing ]

showtabing is an action out of world.

understand the command "showtab" as something new.

understand "showtab" as showtabing.
understand "showtaby" as showtabing when showtabname is false.
understand "showtabn" as showtabing when showtabname is true.

carry out showtabing:
	now showtabname is whether or not showtabname is false;
	say "Showing table names in random text is now [on-off of showtabname].";
	the rule succeeds;

chapter specsing

[ * SPECS tests the spec-help of all items in table of anagrams]

specsing is an action out of world.

understand the command "specs" as something new.

understand "specs" as specsing.

carry out specsing:
	let qq be 0;
	let reg be orig-region;
	repeat with Q running through regions:
		if Q is frivolous, next;
		repeat through regana of Q:
			unless the-from entry is spayshul:
				increment qq;
				if the-from entry is not a backdrop:
					if the-from entry is not off-stage and the-from entry is not moot:
						now reg is map region of location of the-from entry;
				say "[qq]. [the-from entry] -> [the-to entry] [reg] : [spec-help of the-from entry]";
	if qq is 0:
		say "Yay! All things are clued.";
	the rule succeeds;

chapter bouing

bouing is an action applying to nothing.

understand the command "bou" as something new.

understand "bou" as bouing.

definition: a room (called rm) is boundy:
	if number of bounding things in rm > 0, yes;
	no;

definition: a room (called rm) is noboundy:
	if map region of rm is Meta Team, no;
	if number of bounding things in rm is 0, yes;
	no;

carry out bouing:
	repeat with Q running through boundy rooms:
		let BS be number of bounding things in Q;
		say "[Q] has bounding scenery ([BS]): [list of bounding things in Q].";
	say "No bounding: [list of noboundy rooms].";
	the rule succeeds.

section check off nudge tables - not for release

this is the check nudge tables rule:
	repeat with X running through rooms:
		if X is in meta team, next;
		unless roomnud of X is Table of No Nudges, next;
		if "[X]" matches the text "nowt", case insensitively:
			next;
		if "[X]" matches the text "trips strip", case insensitively: [ trips strip = stores in SA]
			next;
		if "[X]" exactly matches the text "room", case insensitively: [room-only in Sortie has nothing special]
			next;
		if "[X]" exactly matches the text "softer forest", case insensitively: [Softer Forest has nothing specific to it, shares with Rest of Forest]
			next;
		say "Define table of nudges for [X].";

STS tests ends here.

---- DOCUMENTATION ----