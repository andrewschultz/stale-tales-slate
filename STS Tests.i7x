Version 1/170918 of STS tests by Andrew Schultz begins here.

"Tracks various testing commands that can be used by Shuffling Around or A Roiling Original"

"Some parts are based heavily on Emily Short's very useful Property Checking extension but modified to count what is done and ignore certain important cases."

include Full Monty Testing by Andrew Schultz.

volume basic stubs

[the below should be commented out now that Roiling is relatively stable]

[when play begins:
	process the modified run property checks rule;
]

chapter mooting

[ * MOOT moots any item. You could just ABSTRACT, but yay saving keystrokes. Note BANISH is in ]

booting is an action applying to one visible thing.

understand the command "moot [any thing]" as something new.
understand the command "boot [any thing]" as something new.

understand "moot [any thing]" as booting.
understand "boot [any thing]" as booting.

carry out booting:
	say "[noun] moved to solved room.";
	if noun is a backdrop:
		remove noun from play;
	else:
		moot noun;
	the rule succeeds;

chapter showtabing

[ * showtab shows the random tables we are choosing along with the random text, to make sure they're being accessed ]

showtabing is an action out of world.

understand the command "showtab" as something new.

understand "showtab" as showtabing.
understand "showtaby" as showtabing when showtabname is false.
understand "showtabn" as showtabing when showtabname is true.

carry out showtabing:
	now showtabname is whether or not showtabname is false;
	say "Showing table names in random text is now [on-off of showtabname].";
	the rule succeeds;

chapter redefining Emily Short's property checking

this is the modified run property checks rule:
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
			say "[b]APPEARANCE IN ROOM[r] [init-mt-ppl] [person].";
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
		say "[b]PERSON[r] [undescribed-people]";
	else:
		increment undescribed-objects;
		say "[b]OBJECT[r] [undescribed-objects]";
	say " [target] [if target is plural-named]have[else]has[end if] no description.";

A property-check rule for a room (called the target) (this is the modified rooms must have descriptions rule):
	if description of target is empty:
		unless target is abstract:
			increment undescribed-rooms;
			say "[b]ROOM[r] [undescribed-rooms] [target] has no description.";

volume verbs for focusing testing

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

volume diagnostics

chapter hintalling

[* HINTALL detects which items still need hinting]

the skip hinting rules are an object based rulebook.

a skip hinting rule for a thing (called th):
	if th is useless or th is amusing or th is bounding or th is abstract, the rule succeeds;

hintalling is an action out of world.

understand the command "hintall" as something new.

understand "hintall" as hintalling.

to say hint-type of (th - a thing): say "[if th is universal]universal[else if th is useless]useless[else if th is amusing]amusing[else if th is cluey]cluey[else if th is unimportant]unimportant[else if th is abstract]abstract[else if th is bounding]bounding[else if th is practical]practical[else]other[end if]"

after printing the name of a thing (called th) while hintalling: say " ([hint-type of th][if th is privately-named]--privately named[end if])";

stuff-to-duplicate is a list of things variable.
stuff-to-delete is a list of things variable.
stuff-to-find is a list of things variable.

carry out hintalling:
	let my-count be 0;
	let times-found be 0;
	let this-row be 0;
	let last-row be 0;
	now stuff-to-find is {};
	now stuff-to-delete is {};
	now stuff-to-duplicate is {};
	let should-find be true;
	let duplicate-this be false;
	say "Running [b]HINTALL[r] to find which items need hinting. This may take a [if is-roiling]long [end if]while.";
	say "You may wish to define something as [b]AMUSING[r], [b]USELESS[r] or [b]BOUNDING[r] if it pops up here and doesn't need a hint.[paragraph break]";
	now hintobjstable of meta team is table of general hintobjs;
	repeat with vth running through all things:
		now should-find is true;
		now times-found is 0;
		now last-row is 0;
		now duplicate-this is false;
		follow the skip hinting rules for vth;
		if the rule succeeded:
			[say "skip rules succeeded for [vth].";]
			now should-find is false;
		else if the rule failed:
			[say "skip rules failed for [vth].";]
			do nothing;
		else:
			[say "skip rules no action for [vth].";]
			do nothing;
		now this-row is 0;
		repeat with MYR running through regions:
			repeat through hintobjstable of MYR:
				increment this-row;
				if hint-entry entry is not vth, next;
				increment times-found;
				if should-find is true and times-found > 1:
					say "Row [this-row]: duplicate [vth] in table of hintobjs from row [last-row].";
					now duplicate-this is true;
					increment my-count;
				if should-find is false:
					say "Row [this-row]: [vth] shouldn't be in the table of hintobjs at all.";
					increment my-count;
				now last-row is this-row;
		if should-find is true and times-found is 0:
			add vth to stuff-to-find;
			increment my-count;
		else if should-find is false and times-found > 0:
			add vth to stuff-to-delete;
			increment my-count;
		else if duplicate-this is true:
			add vth to stuff-to-duplicate;
			increment my-count;
	if my-count is 0, say "Everything that needs to be hinted is, and everything that doesn't, isn't! Yay!" instead;
	say "[my-count] total things to fix.";
	say "[if number of entries in stuff-to-find > 0]Stuff to put in tables of hintobjs ([number of entries in stuff-to-find]): [stuff-to-find][else]The hintobject tables need no entries[end if].";
	say "[if number of entries in stuff-to-delete > 0]Stuff to remove from tables of hintobjs ([number of entries in stuff-to-delete]): [stuff-to-delete][else]The hintobject tables had no excess entries[end if].";
	say "[if number of entries in stuff-to-duplicate > 0]Stuff to unduplicate in tables of hintobjs ([number of entries in stuff-to-delete]): [stuff-to-delete][else]The hintobject tables had no duplicate entries[end if].";
	the rule succeeds;

section so hintall works ok

[* this is just so HINTALL can say "everything works." Odd things that aren't items or in the game are rejected.]

main-window is abstract.

Null-bitmap-typeface is abstract.

Null-image-typeface is abstract.

null tileset is abstract.

Glimmr C&C is abstract.

graphics-window is abstract.

chapter bcheing - not for release

[ * bche checks all boring items ]

bcheing is an action out of world.

understand the command "bche" as something new.

understand "bche" as bcheing.

carry out bcheing:
	repeat with Q running through boring things:
		if Q is scenery, say "(scenery) ";
		say "[Q] ~ [bore-check of q] ~ [bore-text of Q][line break]";
	the rule succeeds.

chapter missesing

[* MISSES shows what all areas missed]

missesing is an action out of world.

understand the command "misses" as something new.

understand "misses" as missesing.

carry out missesing:
	say "[miss-types].";
	show-miss mrlp and false;
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

chapter check off nudge tables

[ * this gives a bit more overhead to any testing so I don't want to run it at startup ]

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

volume room specific diagnostics

chapter nuding

nuding is an action out of world.

understand the command "nud" as something new.

understand "nud" as nuding.

to show-nudges (ta - a table name):
	if ta is Table of No Nudges, continue the action;
	repeat through ta:
		if there is a this-item entry and this-item entry is not fungible, next;
		if there is a this-rule entry:
			process the this-rule entry;
			unless the rule succeeded, next;
		say "[this-cmd entry] can be nudged.";

carry out nuding:
	let nudges be 0;
	let showit be false;
	show-nudges regnud of mrlp;
	show-nudges roomnud of location of player;
	if nudges is 0, say "Nothing can be nudged. Oh dear, that's wrong!";
	else say "total nudge(s) [nudges]"

volume general monty testing

[ * objhinting action applies to both Shuffling and Roiling ]

table of monties (continued)
montopic (topic)	on-off	test-title (text)	test-action	topic-as-text (text)
"hint/hints"	false	"[b]SHOWING BASIC HINTS[r]"	try-hinting rule	"hint/hints"

this is the try-hinting rule:
	let Q be scams;
	if scams is true:
		say "Turning scams off to hint.";
	now scams is false;
	try hinting;
	now scams is Q;

check montying:
	if the topic understood matches "hint" or the topic understood matches "hints":
		now first-hint-check is true;

volume commands solely for reg-*-lone

[ * this plows through the hint tables for a region and makes sure basic punctuation works ]

chapter hreging (hint through a region)

to hintthru (th - a thing):
	try objhinting th;
	let count be 1;
	if plus-after is false, continue the action;
	while plus-after is true and count < 12:
		try objhinting th;
		increment count;
	if count is 12:
		say "WARNING: we have a nonterminating sequence of clues for [the th].";
	if minus-after is false:
		say "WARNNG: we never got to a minus in the hints for [the th].";

hreging is an action out of world.

understand the command "hreg" as something new.

understand "hreg" as hreging.

to brute-force-hints (tn - a table name):
	say "We are brute-forcing our way through the hints for [tn].";
	repeat through tn:
		say "Hinting [hint-entry entry].";
		hintthru hint-entry entry;

carry out hreging:
	now in-hint-testing is true;
	brute-force-hints hintobjstable of mrlp;
	if mrlp is hub-region, brute-force-hints table of general hintobjs; [ not orig-region as the TS command gives us some goodies worth hinting ]
	now in-hint-testing is false;
	the rule succeeds;

chapter tabpuncing

[ * this is needed for the zarfscripts where we just plow through all the entries in random tables ]

current-chatter-index is a number that varies.

tabpuncing is an action applying to one number.

understand the command "tp" as something new.

understand "tp [number]" as tabpuncing.

carry out tabpuncing:
	if number understood < 1 or number understood > number of rows in table of megachatter, say "You need 1-[number of rows in table of megachatter]." instead;
	spill-row number understood;

to spill-row (num - a number):
	choose row num in table of megachatter;
	let need-period be endpunc entry;
	let tab-to-spill be mytab entry;
	repeat through mytab entry:
		say "[blurb entry][if need-period is true].[else][line break][end if]";
	say "Finished dumping [tab-to-spill].";
	say "That's row [num], if you're counting at home. Or if you lost count.";
	the rule succeeds;

tabnexting is an action out of world.

understand "tp" as tabnexting.

carry out tabnexting:
	increment current-chatter-index;
	if current-chatter-index > number of rows in table of megachatter, now current-chatter-index is 1;
	spill-row current-chatter-index;

volume jumpthroughing

[ possible improvement: describe what each row does with an additional column ]

chapter jumpthrough variables

a region has a table name called jumpthrough-table.

stop-jump-at-error is a truth state that varies.

llps-in-jump is a truth state that varies. llps-in-jump is true.

chapter the main command

jumpthroughing is an action applying to one number.
jumpthroughalling is an action out of world.

jump-region is a region that varies.

jump-table is a table name that varies.

jump-length is a number that varies.

carry out jumpthroughalling: try jumpthroughing 0;

check jumpthroughing (this is the reject undoable jumpthroughs rule):
	if mrlp is not hub-region and hub-room is visited, say "You are too far along." instead;
	if jump-region is orig-region:
		if turn count > 1, say "You need a turn count of one to jump through the starting region." instead;
	else if last-loc of jump-region is visited:
		say "You've already been to [jump-region]." instead;
	if jump-region is solved or jump-region is bypassed, say "You already got through [jump-region]." instead;

carry out jumpthroughing:
	let pts be the number understood;
	if pts is 0, now pts is number of rows in jump-table;
	let current-rows be 0;
	let last-score be 0;
	let failed-test be false;
	repeat through jump-table:
		increment current-rows;
		if jumpthroughminimal is true:
			if jumpthroughalt is false:
				if there is an is-llp entry and is-llp entry is true, next;
			else:
				if there is an is-alt-llp entry:
					if is-alt-llp entry is true, next;
				else:
					if there is an is-llp entry, say "We need both an is-llp and is-alt-llp entry.";
		say "[second custom style]Row [current-rows]. Current score [cur-score of mrlp]. ";
		if there is a place-to-go entry, say "Going to [place-to-go entry]. ";
		if there is a dir-to-go entry, say "Going [dir-to-go entry]. ";
		if there is a what-before entry, say "Processing [what-before entry]. ";
		if there is a what-to-flip-to entry, say "Flipping [what-to-flip-to entry]. ";
		say "[line break][r]";
		if there is a place-to-go entry and place-to-go entry is not location of player, try gotoing place-to-go entry;
		if there is a dir-to-go entry, try going dir-to-go entry;
		if there is a what-before entry, process the what-before entry;
		if there is a what-to-flip-to entry, try fliptoing what-to-flip-to entry;
		if cur-score of mrlp is last-score:
			say "[first custom style]WARNING did not gain point for this try.[r]";
			if jumpthroughbreak is true:
				say "BREAK before end.";
				now failed-test is true;
				break;
		now last-score is cur-score of mrlp;
		process the notify score changes rule;

chapter jtsing

jumpthroughbreak is a truth state that varies.

jtsing is an action out of world.

understand the command "jts" as something new.

understand "jts" as jtsing.

carry out jtsing:
	say "Jump through skip is [if jumpthroughbreak is true]already[else]now[end if] on. We work through errors.";
	now jumpthroughbreak is true;
	the rule succeeds;

chapter jtbing

jtbing is an action out of world.

understand the command "jtb" as something new.

understand "jtb" as jtbing.

carry out jtbing:
	say "Jump through break is [if jumpthroughbreak is false]already[else]now[end if] on. We stop at the first error.";
	now jumpthroughbreak is true;
	the rule succeeds;

chapter jtmxing

jumpthroughminimal is a truth state that varies.

jtmxing is an action out of world.

understand the command "jtmx" as something new.

understand "jtmx" as jtmxing.

carry out jtmxing:
	say "We now do a maximal jump through.";
	now jumpthroughminimal is false;
	the rule succeeds;

chapter jtm1ing

jumpthroughalt is a truth state that varies.

jtm1ing is an action out of world.

understand the command "jtm1" as something new.

understand "jtm1" as jtm1ing.

carry out jtm1ing:
	say "We now do a minimal jump through, via route 1.";
	now jumpthroughminimal is true;
	now jumpthroughalt is false;
	the rule succeeds;

chapter jtm1ing

jtm2ing is an action out of world.

understand the command "jtm2" as something new.

understand "jtm2" as jtm2ing.

carry out jtm2ing:
	say "We now do a minimal jump through, via route 2.";
	now jumpthroughminimal is true;
	now jumpthroughalt is true;
	the rule succeeds;

STS tests ends here.

---- DOCUMENTATION ----