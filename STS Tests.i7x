Version 1/170918 of STS tests by Andrew Schultz begins here.

"Does nothing much yet"

chapter scling - not for release

scling is an action out of world.

understand the command "scl" as something new.

understand "scl" as scling.

carry out scling:
	say "List of scenery:[line break]";
	repeat with QQ running through visible scenery:
		say "--[QQ][line break]";
	the rule succeeds;

chapter bkling - not for release

bkling is an action out of world.

understand the command "bkl" as something new.

understand "bkl" as bkling.

carry out bkling:
	say "List of scenery:[line break]";
	repeat with QQ running through visible backdrops:
		say "--[QQ][line break]";
	the rule succeeds;

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