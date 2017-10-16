Version 1/170918 of STS tests by Andrew Schultz begins here.

"Tracks various testing commands that can be used by Shuffling Around or A Roiling Original"

chapter scling - not for release

scling is an action out of world.

understand the command "scl" as something new.

understand "scl" as scling.

carry out scling:
	say "List of scenery:[line break]";
	repeat with QQ running through visible scenery:
		say "--[QQ][line break]";
	the rule succeeds;

chapter etuing

cmdtype is a number that varies.

etuing is an action applying to one number.

understand the command "etu" as something new.

understand "etu [number]" as etuing.

understand "etu" as etu0ing.

etu0ing is an action out of world.

carry out etu0ing:
	try etuing 0 instead;

maxtestnum is a number that varies.

when play begins (this is the calculate maxtestnum rule):
	say "Calculating the max test number.";
	now maxtestnum is 1;
	let power be 1;
	while power <= number of rows in table of cmds:
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
	now cmdtype is number understood;
	if nu is 0, say "Resetting." instead;
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
			say "======Carrying out [testact entry]======";
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
	ply-table regtab of mrlp;
	the rule succeeds;

chapter gnling - not for release

gnling is an action out of world.

understand the command "gnl" as something new.

understand "gnl" as gnling.

carry out gnling:
	ply-table table of general nudges;
	the rule succeeds;

to ply-table (tn - a table name):
	say "Here are nudges from [tn]";
	let in-room be false;
	repeat through tn:
		if there is a this-room entry:
			if this-room entry is location of player:
				now in-room is true;
				say ".[line break](room [this-cmd entry]) [this-cmd entry] [hashval entry] is a valid hash try";
				next;
		if there is a this-item entry:
			if this-item entry is visible:
				say ".[line break](item [this-item entry]) [this-cmd entry] [hashval entry] is a valid hash try";
				next;
		if there is a this-rule entry:
			consider the this-rule entry;
			if the rule succeeded:
				say ".[line break](rule [this-rule entry]) [this-cmd entry] [hashval entry] is a valid hash try";
				next;
		if in-room is true:
			say ".[line break](NOT VALID) [this-cmd entry] [hashval entry] is in this room but not valid";
	say "."

STS tests ends here.

---- DOCUMENTATION ----