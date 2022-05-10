Version 1/211021 of Shuffling Beta Testing by Andrew Schultz begins here.

"Shuffling Around Beta Testers file"

volume beta testing

include Full Monty Testing by Andrew Schultz.

include STS Beta Testing by Andrew Schultz.

description of main-window is "bug"

when play begins (this is the beta tester instruction rule):
	say "This version of the game involves special tricks for the player to warp through the game. It is 'volume beta testing' in the source and should be marked as NOT FOR RELEASE before release. However, it's okay now.[paragraph break]Type [b]DC[r] for all debug commands.";
	if debug-state is false:
		say "After pushing a key, you'll be asked to save to a transcript file immediately, so you don't forget. Thanks for Beta testing![wfak]";
		try switching the story transcript on;

chapter sring

[* this is a stub to test the random forest puzzles. The player can force them a certain direction. sr Diagonal = N then E, rs diagonal = e then N, sr N = n then S. ]

sring is an action applying to one visible thing.

understand the command "sr/rs" as something new.

understand "sr [direction]" and "rs [direction]" as sring.

does the player mean sring sr-dir: it is likely.

to decide which direction is sr-dir:
	if Self ID Fields is not visited, decide on up;
	if stew is off-stage and teas are off-stage, decide on west;
	if shout is off-stage and thorn is off-stage, decide on north;
	if thorn is off-stage and stew is off-stage, decide on northwest;
	if thorn is off-stage and teas are off-stage, decide on northeast;
	if shout is off-stage and stew is off-stage, decide on southwest;
	if shout is off-stage and teas are off-stage, decide on southeast;
	decide on down;

rule for supplying a missing noun while sring (this is the switch directions rule):
	say "(rule invoked)[line break]";
	now the noun is up;

carry out sring:
	if player is in sf or player is in rf, say "In here, odd things might happen if you change the puzzle. But changing it at the fields will send you to the Trips Strip." instead;
	let uf be false;
	if noun is inside or noun is outside or noun is up or noun is down, say "You need to specify a planar compass direction for [b]SR[r]/[b]RS[r]. Usage is as follows:[paragraph break][b]SR NW[r] means you should go north in Softer, west in Rest of.[line break][b]SR W[r] means you go west in Softer, east in Rest of.[line break][b]RS[r] flips these two directions in all cases." instead;
	if noun is north or noun is west or noun is south or noun is east:
		repeat with gi running through guiders:
			if godir of gi is noun:
				now gi is in sf;
			else if godir of gi is opposite of noun:
				now gi is in rf;
			else:
				now gi is off-stage;
	else:
		if character number 1 in the player's command is "s":
			now uf is true;
		now all guiders are off-stage;
		repeat through table of srdir:
			if mydir entry is noun:
				if uf is true:
					now i1 entry is in sf;
					now i2 entry is in rf;
				else:
					now i2 entry is in sf;
					now i1 entry is in rf;
	if player is in Self ID Fields:
		if Gnarliest Triangles is visited or Flesh Shelf is visited:
			say "This shouldn't be a problem, but you've explored some other rooms after hitting the fields.";
		else:
			say "Zapping you back to the Trips Strip, with new directions to plow through.";
		now player is in Trips Strip;
		decrease cur-score of forest by 2;
	say "Softer Forest: [godir of random guider in sf].";
	say "Rest of Forest: [godir of random guider in rf].";
	the rule succeeds;

table of srdir
mydir	i1	i2
northwest	thorn	stew
northeast	thorn	teas
southwest	shout	stew
southeast	shout	teas

section sring debug - not for release

[* this needs to be separate, as the release version won't "know" the file of test results.]

after sring: append "[random guider in sf] in Softer Forest, [random guider in rf] in Rest of Forest.[line break]" to the file of test results.

chapter hahaing

[* this shows what you can GLEAN and ANGLE every move ]

hahaing is an action out of world.

understand the command "haha" as something new.

understand "haha" as hahaing.

carry out hahaing:
	if haha is false:
		now helpdebugflag is true;
		now haha is true;
	else:
		now haha is false;
	the rule succeeds;

haha is a truth state that varies.

every turn (this is the haha-debug rule):
	if haha is true:
		if helpdebugflag is true:
			let temp-haha be just-print;
			now just-print is false;
			say "DEBUG: GLEAN = [run paragraph on]"; [bold-ok]
			try gleaning;
			say "DEBUG: ANGLE = [run paragraph on]"; [bold-ok]
			try angleing;
			now just-print is temp-haha;

chapter hint debugs

[ * this is a stub to make sure we are printing out the debug version of the hints]

every turn (this is the print debug hints rule):
	if hintfull is true or helpdebugflag is true:
		now just-print is false;
		try mainhelping;
		now just-print is true;

chapter ufcing

[ * this resets the centrifuge for re-testing]

ufcing is an action applying to nothing.

understand the command "ufc" as something new.

understand "ufc" as ufcing.

carry out ufcing:
	now centrifuge-stopped is false;
	now numset-ever-greater is false;
	now consecutive-binary-tries is 0;
	decrement the cur-score of sortie;
	d "Resetting centrifuge.";
	now the numset of the dial is 0;
	if player is not in Trap Part:
		move player to Trap Part;
	the rule succeeds;

chapter askthruing

[* this asks gateman about pretty much everything in the room or before ]

askthruing is an action applying to nothing.

understand the command "askthru" as something new.

understand "askthru" as askthruing.

carry out askthruing:
	repeat with the-thingamabob running through the list of touchable things:
		say "Asking about [the-thingamabob].";
		try objasking gateman about the-thingamabob;
	repeat with the-thingamabob running through the list of things in Busiest Subsite:
		say "Asking about [the-thingamabob].";
		try objasking gateman about the-thingamabob;
	repeat with the-thingamabob running through the list of things in Rested Desert:
		say "Asking about [the-thingamabob].";
		try objasking gateman about the-thingamabob;
	the rule succeeds;

chapter xraying

[* xray all visible things]

xraying is an action applying to nothing.

understand the command "xray" as something new.

understand "xray" as xraying.

carry out xraying:
	repeat with a-thing running through touchable things:
		if a-thing is flippable or a-thing is the location:
			say "Xraying [a-thing]:";
			try xmxing a-thing;
	the rule succeeds;

chapter stiting

[ * xc controls if you can get saltine effects]

xcing is an action out of world.

understand the command "xc" as something new.

understand "xc" as xcing.

carry out xcing:
	if xray-cheat is false:
		now xray-cheat is true;
	else:
		now xray-cheat is false;
	say "Now the game will act as though you [if xray-cheat is false]don't [end if]have x-ray vision.";
	the rule succeeds;

chapter sc1ing

[* this gives you the gadget and scans everything]

sc1ing is an action applying to nothing.

understand the command "sc1" as something new.

understand "sc1" as sc1ing.

carry out sc1ing:
	if player does not have tagged gadget, say "Giving you the gadget." instead;
	now player has tagged gadget;
	repeat with a-thing running through touchable things:
		say "Scanning [a-thing]:[line break]";
		try scaning a-thing;
	the rule succeeds;

test sfs with "sc1/switch gadget/sc1/switch gadget"

chapter xalling

[* shows results from examining all visible things]

xalling is an action applying to nothing.

understand the command "xall" as something new.

understand "xall" as xalling.

carry out xalling:
	repeat with this-item running through touchable things:
		say "[this-item]: [no line break]";
		try examining this-item;
	the rule succeeds;

chapter dcing

[* describes what beta testers can/should do]

dcing is an action applying to nothing.

understand the command "dc" as something new.

understand "dc" as dcing.

carry out dcing: say "[b]TS[r] skips the Ordeal Loader and gets you near the stores.[line break][b]SR[r] is a test-fixing command that lets you decide which puzzles to solve at the two random rooms at the start of the forest. [b]SR NE[r] puts them N and E, [b]SR E[r] puts them E and W, and [b]RS[r] reverses which is in which room.[paragraph break][b]RJ[r] jumps to various regions, 1-4, 1=f, 2=i, 3=m, and 4=r, the finale. 5 puts you in the final room, the Means Manse.[line break][b]SK 1-4[r] solves a region with 1=f 2=i 3=m and 4=r.[line break][b]DISAS[r] disassembles the disguise if you want to try to break that.[paragraph break]Also extra fun is [b]XC[r], which gets you [if saltine is not in cabinet]a hint item that can only be used once in release mode[else]unlimited uses of the saltine[end if]."

chapter tsing

[* TS starts you out with nice toys, at the strip with the gadget/paper]

ts0ing is an action out of world.
tsing is an action applying to one number.

understand the command "ts" as something new.

understand "ts" as ts0ing.
understand "ts [number]" as tsing.

carry out ts0ing:
	try tsing 0 instead;

carry out tsing:
	if Trips Strip is visited, say "You can't use [b]TS[r] from the Trips Strip or beyond. You will need to restart the game and try again." instead;
	increase the cur-score of Ordeal Loader by 4;
	if Rested Desert is unvisited:
		move player to Rested Desert, without printing a room description;
		if a random chance of 1 in 2 succeeds: [this is a silly randomization for what you could've solved at Rested Desert]
			moot bugle;
		else:
			moot bolt;
	if Notices Section is unvisited, move player to Notices Section, without printing a room description;
	get-cool-stuff;
	say "I gave you the gadget and paper and saltine, regardless of what you already had.";
	say "Note that [b]TS[r] can be used with a number, or [b]TSF[r] can solve everything. 4=metros 2=sortie 1=forest.";
	let curstuff be number understood;
	if curstuff > 8:
		now curstuff is the remainder after dividing curstuff by 8;
		say "You need a number between 0 and 7, so I took [number understood] mod 8 to get [curstuff].";
	if curstuff >= 4:
		say "<METROS SOLVED>[line break]";
		solve-region metros;
		decrease curstuff by 4;
		reg-inc;
	if curstuff >= 2:
		say "<SORTIE SOLVED>[line break]";
		solve-region sortie;
		decrease curstuff by 2;
		reg-inc;
	if curstuff >= 1:
		say "<FOREST SOLVED>[line break]";
		solve-region forest;
		decrease curstuff by 1;
		reg-inc;
	process the full monty test rule;
	the rule succeeds;

chapter tsfing

[* this lets us face the resort]

tsfing is an action out of world.

understand the command "tsf" as something new.

understand "tsf" as tsfing.

carry out tsfing:
	if Trips Strip is unvisited:
		move player to Trips Strip;
		now ordeal loader is solved;
		say "Okay. You should be able to [if store r is in resort]flip store R and [end if]enter the resort, now.";
	else:
		say "WARNING: you may not want to mess around in the Trips Strip if you run [b]TSF[r] after visiting the strip. Bad things may happen. Just a warning.";
	now sortie is solved;
	now forest is solved;
	now metros is solved;
	moot store f;
	moot store i;
	moot store m;
	now player has the gadget;
	now player has the prep paper;
	the rule succeeds;

chapter j2ing

[ * J2 lets us jump to the Trips Strip, with extra goodies]

j2ing is an action applying to nothing.

understand the command "j2" as something new.

understand "j2" as j2ing.

carry out j2ing:
	if Trips Strip is visited, say "Already beat Ordeal Loader." instead;
	increase the cur-score of Ordeal Loader by 4;
	solve-region Ordeal Loader;
	now player has gadget;
	now player has notepad;
	now player has phail phial;
	say "Moving player to Trips Strip, with gadget.";
	the rule succeeds;

chapter getbying

[ * toggles wareas that are solved ]

getbying is an action applying to one number.

understand the command "getby" as something new.

understand "getby [number]" as getbying.

carry out getbying:
	if number understood is 0:
		toggle-solve Ordeal Loader;
	if number understood is 1:
		toggle-solve forest;
	if number understood is 2:
		toggle-solve sortie;
	if number understood is 3:
		toggle-solve metros;
	the rule succeeds;

to toggle-solve (re - a region):
	if re is solved or re is bypassed:
		now re is unsolved;
		say "Now [re] is unsolved.";
	else:
		now re is solved;
		say "Now [re] is solved.";

chapter ggading

[* gets the gadget, shorthand for purloining it]

ggading is an action applying to nothing.

understand the command "ggad" as something new.

understand "ggad" as ggading.

carry out ggading:
	say "Executing heinous cheat--doing so is a [bug-report] in the final release version. Got gadget now.";
	now player has tagged;
	the rule succeeds;

chapter rjing

[* region jump: this lets you bypass a region. Negative number opens it up again.]

rjing is an action applying to one number.

understand the command "rj [number]" as something new.

understand "rj [number]" as rjing.

[the magic numbers below are bad but they work. Basically, 1=forest 2=sortie 3=metros 4=resort 5=very last, so rj 5 = 1 move to win]

carry out rjing:
	let rj be the number understood;
	if rj < 1 or rj > 4, say "Region 1-4 please. 1=store f/6 2=store i/9 3=store m/13 4=store r/18." instead;
	say "(skipping introductory text with hyperwarp)";
	if rj is 1:
		move player to sf;
	if rj is 2:
		move player to Trap Part;
	if rj is 3:
		move player to Undesired Underside;
	if rj is 4:
		move player to Astral Altars;
	if rj is 5:
		move player to Means Manse;
		say "Debug-testing note: [b]EXIST[r] or [b]NAMES[r] or [b]AMENS[r] to win.";

chapter sking

[* the magic numbers below are bad but they work. Basically, -1/1 toggles if forest is solved. -2/2 toggles if sortie is solved. -3/3 toggles if metros is solved.]

sking is an action applying to one number.

understand the command "sk [number]" as something new.

understand "sk [number]" as sking.

understand the command "sa [number]" as something new.

understand "sa [number]" as sking.

carry out sking:
	let A be false;
	let sk be the number understood;
	let my-reg be forest;
	if sk < 0:
		now A is true;
		change sk to 0 - sk;
	if sk is 5:
		say "To the end.";
		now player is in Means Manse;
	if sk is 4:
		say "Now all 3 regions are solved.";
		now forest is solved;
		now sortie is solved;
		now metros is solved;
		moot store f;
		moot store i;
		moot store m;
		the rule succeeds;
	if sk > 3, say "Only 3 sections to change: forest, sortie, metros." instead;
	if sk is 1:
		now my-reg is forest;
	if sk is 2:
		now my-reg is sortie;
	if sk is 3:
		now my-reg is metros;
	if my-reg is solved and A is false, say "Already solved. Try with a negative number?" instead;
	if my-reg is unsolved and A is true, say "Already unsolved. Try with a positive number?" instead;
	if A is true:
		now my-reg is unsolved;
		if my-reg is forest:
			now store f is in Trips Strip;
			if scented descent is in Trips Strip:
				moot scented descent;
		if my-reg is sortie:
			now store i is in Trips Strip;
			if posted depots are in Trips Strip:
				moot posted depots;
		if my-reg is metros:
			now store m is in Trips Strip;
			if trade tread is in Trips Strip:
				moot trade tread;
	else:
		now my-reg is solved;
		if my-reg is forest:
			moot store f;
			moot scented descent;
		if my-reg is sortie:
			moot store i;
			moot posted depots;
		if my-reg is metros:
			moot store m;
			moot trade tread;
	say "Now [my-reg] is [if A is true]not [end if]solved.";
	the rule succeeds;

chapter disasing

[* get all 3 things to make the disguise in 1 place - used to test different ways to make it]

disasing is an action applying to nothing.

understand the command "disas" as something new.

understand "disas" as disasing.

carry out disasing:
	repeat with Q running through disguise-pieces:
		move Q to location of player;
		now player has Q;
	say "The three beard parts are now all disassembled.";
	the rule succeeds;

section extra monty test

table of monties (continued)
montopic (topic)	on-off	test-title (text)	test-action	topic-as-text (text)
"glean"	false	"GLEANing"	try-gleaning rule	"glean"

this is the try-gleaning rule: try gleaning;

check montying:
	if the topic understood matches "glean":
		now first-hint-check is true;

Shuffling Beta Testing ends here.

---- DOCUMENTATION ----
