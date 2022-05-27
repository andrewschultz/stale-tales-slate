"Shuffling Around" by "Ned Yompus"

volume 1 - the main program

[I don't recommend building, though it is possible. You'll need a 6G version of Flexible windows. Most everything should be in https://github.com/andrewschultz/stale-tales-slate/, but I won't give much help building my own programs. I have trouble enough myself!

Glulx Text Effects.i7x
Flexible Windows.i7x

are modified versions.

You may have some problems with Glulx Text Effects.i7x / Glulx Text Effects - New.i7x naming and getting duplicate tables. If you are getting an already defined table, make sure other extensions all point to one of the two. This is the big hurdle to building. I may need to sort this out or update modules if there are new ones. I'm not sure about copyright issues and whether you can put others' Inform extensions in your repository.
]

[Given that the main source is 680000+ bytes, the headers are 380000+ bytes, and the common files this shares with A Roiling Original and, in part, Tours Roust Torus are alomst 60000 bytes, I've tried to provide a rough outline as well as places to look to find the tricky bits. The standard method of searching game text in the source will probably get you pretty far, but also, I used some search markers repeatedly when I needed to change something in this game. Code is roughly arranged by region, then the order rooms appear in the region.

Shuffling Mistakes.i7x includes all the repiles for great guesses. By great guesses I mean stuff that should definitely give a coherent response, because they are words. It is probably the most fun to look at.

Shuffling Random Text.i7x includes all the random text. It is searchable by xx(f,m,i,r,x) -- x is introductory names, and the others are the store the region is behind. Its functionality is duplicated if you get to the end of the game, where you can see all the random tables.

Shuffling Nudges.i7x includes all the nudges for good guesses. By good guesses I mean trying objects that can't be anagrammed, but they're descibed prominently enough, and if you have the right letters in the right quantity, it tells you "no, try something else." It contains nudges listed by region and in the rough order you find the room.

Shuffling Tables.i7x now contains the major tables for the game. They are arranged by function and region. The tables were cut into regions as otherwise they got unwieldy. Some rules are also cut into regions, e.g. "the x-rule of ordeal loader is the x-ordeal-loader rule."

Shuffling Beta Tests.i7x isn't very important to the end player, since the beta commands are hidden from release mode, but they may be interesting.

Shuffling Tests.i7x feels antiquated since I started using Zarf's regression scripts more heavily.

STS *.i7x contains reusable code. They are the common files mentioned above.

Ancient note to self: there are many places to put in a SKIP UPCOMING RULEBOOK BREAK, but they're too minor to hunt down & probably dealt with better with PROCESS. Still, they'd be nice to fix, and anyone who helps me with this will get my gratitude and probably a place in the credits.
]

the story description is "Yorpwald's a weirdly-named land. Perfect for your weird powers to save it."

the story headline is "Putzing around is unmagical. Shuffling around, though..."

the story genre is "Humor/wordplay"

[release along with a solution.]

the release number is 5.

release along with cover art. [and a website?]

release along with a website.

release along with the "Parchment" interpreter.

use American dialect.

use authorial modesty.

include Conditional Undo by Jesse McGrew.

book i6 replacement

Include (-
Replace LanguageVerb;
-) after "Definitions.i6t".

Include (-
[ LanguageVerb i;
	switch (i) {
	  'i//','inv','inventory':
			   print "take inventory";
	  'a//':   print "ask about";
	  'about':  print "see about the game";
	  'options':  print "read about options in your notepad";
	  'walkthrough':  print "see a walkthrough";
	  'reminders':  print "toggle restore-game reminders";
	  'tech':  print "see techincal details";
	  'parse':  print "parse gadget output";
	  'spare':  print "spare gadget output";
	  'access':  print "toggle screen reader access";
	  'son', 'space', 'space on', 'spaces on':  print "add spaces to gadget output";
	  'sg':  print "use sg to switch the gadget between secure and recuse";
	  'release':  print "see release info";
	  'sites':  print "see web sites that helped the development of Shuffling Around";
	  'nos', 'no space', 'no spaces':  print "remove spaces from gadget output";
	  'credit', 'credits':  print "see credits";
	  'hint', 'hints':  print "get hints";
	  'help', 'info', 'instructions':  print "get basic help or info";
	  'verb', 'verbs':  print "see common verbs";
	  'l//':   print "look";
	  'flap':  print "fly";
	  'pf':  print "consult your pad about flips";
	  'x//':   print "examine";
	  'angle', 'harken', 'hrn', 'hkn', 'rk', 'kn':  print "angle the blue lube";
	  'glean', 'hanker', 'hnr', 'hkr', 'kr', 'nk':  print "glean the blue lube";
	  'hush':  print "hush random text";
	  'uhhs':  print "re-trigger random text with uhhs";
	  'secure':  print "secure the gadget";
	  'recuse':  print "recuse the gadget";
	  'terry':  print "retry with terry";
	  'optin':  print "opt in";
	  'notip', 'no tip':  print "give no tip";
	  'xyzzy':  print "say xyzzy";
	  'hints off', 'help off', 'info off', 'hint off':  print "turn hints off";
	  'xx//':   print "examine magically";
	  'rc//', 'cr//':   print "scan both ways";
	  'r//', 'rec//', 'rect//':   print "rectify";
	  'poss//':   print "track possible points";
	  'consult pad', 'pad':   print "consult your pad about something";
	  'c//', 'cert//', 'cer//':   print "certify";
	  'z//':   print "wait";
	  default: rfalse;
	}
	rtrue;
];
-) after "Language.i6t".

book modules that need to be included before mine

include Flexible Windows by Jon Ingold.

include Glulx Status Window Control by Erik Temple.

book separate modules

include Intro Restore Skip by Andrew Schultz.

include Shuffling Random Text by Andrew Schultz.

include Shuffling Tables by Andrew Schultz.

include Shuffling Nudges by Andrew Schultz.

include Shuffling Mistakes by Andrew Schultz.

include Rules-Based Testing by Andrew Schultz.

include Shuffling Tests by Andrew Schultz. [must come after rules-based testing]

include STS Common by Andrew Schultz.

include First Word Retry by Andrew Schultz.

include Bold Final Question Rows by Andrew Schultz.

section test module(s) - not for release

include STS Tests by Andrew Schultz

section beta testing module - not for release

include Shuffling Beta Testing by Andrew Schultz

book regional stubs and definitions (put near the top for administrative purposes)

a sto is a kind of thing. a sto is usually undescribed. a sto is usually fixed in place.

a region has a sto called reg-sto. a region has a portal called reg-ent. a region has a rule called glean-rule.

a region has a table name called done reject table.

a region has a table name called hintobjstable.

a region has a rule called altrule.

a region has a rule called saltine-check-rule.

a region has a rule called prescan check rule.

a region has a rule called parse-rule.

 Ordeal Loader is a region. min-score of Ordeal Loader is 4. max-score of Ordeal Loader is 8. regnud of Ordeal Loader is table of Ordeal Loader nudges. regana of Ordeal Loader is table of Ordeal Loader anagrams. reg-hint-rule of Ordeal Loader is ordeal-loader-hinting rule. goto-check of Ordeal Loader is ordeal-loader-goto rule. spechelp of ordeal loader is table of ordeal loader spechelp. done reject table of ordeal loader is table of ordeal loader done rejects. hintobjstable of ordeal loader is table of ordeal loader hintobjs. misses-rule of ordeal loader is ordeal-loader-misses rule. [altrule of ordeal loader is ordeal loader-alt rule.] saltine-check-rule of ordeal loader is ordeal loader saltine check rule. prescan check rule of ordeal loader is ordeal-loader-scan-check rule. parse-rule of ordeal loader is ordeal-loader-parse rule.
[LLP(s): both bulge/blot, both deer/goat, sent nets, static]

Stores is an unsolvable region. min-score of Stores is 4. max-score of Stores is 6. regnud of Stores is table of Stores nudges. regana of Stores is table of Stores anagrams. reg-hint-rule of Stores is stores-hinting rule. goto-check of stores is stores-goto rule. spechelp of stores is table of stores spechelp. done reject table of stores is table of stores done rejects. hintobjstable of stores is table of stores hintobjs. misses-rule of stores is stores-misses rule. [altrule of stores is stores-alt rule.] [saltine-check-rule of stores is stores saltine check rule.] prescan check rule of stores is stores-scan-check rule. parse-rule of stores is stores-parse rule.
[LLP(s): cabinet]

Forest is a region. min-score of Forest is 15. max-score of Forest is 17. regnud of Forest is table of Forest nudges. regana of Forest is table of Forest anagrams. reg-hint-rule of Forest is forest-hinting rule. goto-check of forest is forest-goto rule. spechelp of forest is table of forest spechelp. done reject table of forest is table of forest done rejects. hintobjstable of forest is table of forest hintobjs. misses-rule of forest is forest-misses rule. altrule of forest is forest-alt rule. saltine-check-rule of forest is forest saltine check rule. prescan check rule of forest is forest-scan-check rule. parse-rule of forest is forest-parse rule.
[LLP(s): slit, banshee]

Sortie is a region. min-score of Sortie is 25. max-score of Sortie is 27. regnud of Sortie is table of Sortie nudges. regana of Sortie is table of Sortie anagrams. reg-hint-rule of Sortie is sortie-hinting rule. goto-check of sortie is sortie-goto rule. spechelp of sortie is table of sortie spechelp. done reject table of sortie is table of sortie done rejects. hintobjstable of sortie is table of sortie hintobjs. misses-rule of sortie is sortie-misses rule. [altrule of sortie is sortie-alt rule.] saltine-check-rule of sortie is sortie saltine check rule. prescan check rule of sortie is sortie-scan-check rule. parse-rule of sortie is sortie-parse rule.
[LLP(s): cake pan, grist]

Metros is a region. min-score of Metros is 17. max-score of Metros is 18. regnud of Metros is table of Metros nudges. regana of Metros is table of Metros anagrams. reg-hint-rule of Metros is metros-hinting rule. goto-check of metros is metros-goto rule. spechelp of metros is table of metros spechelp. done reject table of metros is table of metros done rejects. hintobjstable of metros is table of metros hintobjs. misses-rule of metros is metros-misses rule. altrule of metros is metros-alt rule. saltine-check-rule of metros is metros saltine check rule. prescan check rule of metros is metros-scan-check rule. parse-rule of metros is metros-parse rule.
[LLP(s): antlers]

Resort is a region. min-score of Resort is 10. max-score of Resort is 15. regnud of Resort is table of Resort nudges. regana of Resort is table of Resort anagrams. reg-hint-rule of Resort is resort-hinting rule. goto-check of resort is resort-goto rule. spechelp of resort is table of resort spechelp. done reject table of resort is table of resort done rejects. hintobjstable of resort is table of resort hintobjs. misses-rule of resort is resort-misses rule. altrule of resort is resort-alt rule. saltine-check-rule of resort is resort saltine check rule. prescan check rule of resort is resort-scan-check rule. [parse-rule of resort is resort-parse rule.]
[LLP(s): Leis Isle, both swing/rock, both toolshed/sprig&poles (2), chain links]

Resort is not autosavable.

orig-region is Ordeal Loader.

hub-region is Stores.

glean-rule of ordeal loader is ordeal-glean rule.
glean-rule of stores is stores-glean rule.

[reg-stos are defined after stores are defined]

to solve-region (sre - a region):
	process the notify score changes rule;
	say "[line break][sre] node: done! A bump-up, bam![wfak]";
	now sre is solved;
	if sre is not Ordeal Loader:
		moot reg-ent of sre;
		if reg-sto of sre is in Trips Strip:
			say "This is (hopefully) a testing bug, but [reg-sto of sre] should not be in the Trips Strip. Sending it away.";
			moot reg-sto of sre;
	item-warp;
	process the autosave on region complete rule;
	if player is not in Trips Strip:
		move player to Trips Strip; ["if" squelches dumb text-reprint bug for testing command TS (#)]
		notify-portal-gone sre;
	if number of solved regions is 3 and player has gadget and gadget-secured is true:
		say "Man! With the [b]SECURE[r] settings on your gadget, you can [b]RECUSE[r] if you want and hit Store R.";
	if number of passed-up regions is 3:
		ital-say "you unlocked a new command for if you want to see the endgame again. [b]LEADIN DENIAL[i] or [b]LEADIN NAILED[r] will put the game-state where you just have to tackle Store R. This is also doable with the warp commands from each store in order, but I hope this is easier to remember. You either nailed the lead-in, or you denied the game the chance to put you through the other three stores. Also, you can put a space in [b]LEAD IN[r]."

to say espec-xtra:
	if number of things in cabinet > 0, say ", especially after it dumped its old contents, the stuff you forgot to take, in your hands[if tin foil is in cabinet]. Well, except the tinfoil info lit[end if]";
	if tin foil info lit is in cabinet, moot tin foil info lit;
	now player has all things in cabinet;

to item-warp:
	if mrlp is not Stores, d "So far you have [cur-score of mrlp] of [max-score of mrlp] points.[line break]";
	now last-loc of mrlp is location of the player;
	if number of carried not warpable things > 0 or number of worn not warpable things > 0:
		if mrlp is solved:
			if mrlp is Ordeal Loader:
				say "Error! An item that should not have been removed, was. [bug-report]! => ([list of carried not warpable things]) ([list of worn not warpable things]).";
			else:
				say "Out of nowhere swoops the [if cabinet is not flippable]acne-bit [end if]cabinet. [if number of solved regions is 2]You're about to complain, but then you realize it's helping you not carry all that junk around. It sits there, out of reach[else if cabinet is not flippable]You're still a little spooked, but grateful, as it bounces around[else]The cabinet's trying its best to be good and helpful, even making enthusiastic squeaky noises, but they sound pained. You wonder if you can take a bit of time out from questing to fix that[end if][espec-xtra].";
				if cabinet is in Notices Section, now cabinet is in Trips Strip;
		repeat with Q running through all things enclosed by the player:
			if Q is not warpable, moot Q;

ignore-line-break is a truth state that varies.

to say ilb-later:
	now ignore-line-break is true;

to say opt-break: [ I really hate having to use this! But in one case, it worked well. The problem is, it's so hard to turn off if you miss anything. ]
	if ignore-line-break is true, say "[run paragraph on]";
	now ignore-line-break is false;

to score-notify: do nothing;

book inform 6 stubs

[most of these have been moved to Trivial Niceties]

section setting specific pronouns

after doing something with a flower:
	set the pronoun them to the noun;
	continue the action;

book d = debug-say

to d (a - indexed text):
	if debug-print is true:
		say "DEBUG INFO: [a][line break]"

to dn (a - indexed text):
	if debug-print is true:
		say "DEBUG INFO: [a]"

volume basic variables

section variables i'd like to NFR but can't quite--mostly debug stubs

showtabname is a truth state that varies.

debug-scan is a truth state that varies. debug-scan is usually false. [a testing variable for if we want to check scaning beforehand]

debug-parse is a truth state that varies. debug-scan is usually false. [a testing variable for if we want to check parse-scaning beforehand]

tnt is a truth state that varies. tnt is true. [tip no tip, toggled with TNT in the test file]

ff is a truth state that varies. [this is for Fake Flip, for testing purposes.]

the file of gamehints is called "shufhints".

chapter basic things about things

a thing has text called rgtext. rgtext of a thing is usually "[bug-report]".

a thing has text called cert-text.

a thing has text called rect-text.

a thing can be prefigured, unfigured or done-for. a thing is usually unfigured.

a thing can be thruhinted. a thing is usually not thruhinted.

a thing can be reversible. a thing is usually not reversible.

a thing has a number called rpos. a thing has a number called gpos. a thing has a number called lgth.

a thing can be padded. a thing is usually not padded.

a thing can be flipped-yet. a thing is usually not flipped-yet.

a thing can be flippable, auxiliary or inflexible. a thing is usually inflexible.

a thing can be universal, useless, amusing, unimportant, abstract, bounding or practical. a thing is usually practical.

a disguise-piece is a kind of thing. a disguise-piece has a number called elevation.

a flower is a kind of thing. understand "flower" and "flowers" as a flower.

a portal is usually boring. the bore-check of a portal is usually the bore-portal rule. [Roiling portals may not be boring]

this is the bore-portal rule:
	if the current action is opening, say "Just [b]ENTER[r] [the noun]." instead;
	if the current action is entering, now boring-exception is true;
	if the current action is knocking, now boring-exception is true;

chapter stuff based on extensions

undo-code is a number that varies. undo-code is usually 0.

chapter colors

when play begins (this is the status window rule):
	set the background of the status window to colored;
	set the background color of the status window to g-black;
	set the text color of the status window to g-white;
	open the status window;

section about the player

does the player mean examining the player: it is unlikely.

description of player is "[player-descrip].". initial appearance of player is "You should never see yourself.".

to say player-descrip:
	if Trips Strip is unvisited:
		say "You're [tag-status]. And hey, your ex-company let you dress casually[one of]. It'd stink if the dress code STILL applied[or][stopping]"; [bold-ok]
	else:
		say "[if warts are part of player]Those warts are making you feel ugly right now[else]You're wearing generic, comfortable and inoffensive clothes, which have enough pockets for a modest inventory[end if]";

section dropping

to say game-specific-drop-msg: say "You don't need to drop anything in [this-game], much less multiple things. There is no inventory limit";

check dropping:
	if noun is shotgun, say "You[if wolves are touchable] probably [else]'re going to [end if] need that gun." instead;
	say "You shouldn't need to drop [if noun is plural-named]those[else]that[end if]. You have enough hands and pockets." instead;

to say tag-status:
	if player is wearing the nametag:
		say "still wearing that nametag";
	else:
		say "[if gateman is touchable]at least [end if]not wearing that stupid nametag any more";

check dropping tomato: say "Much as you'd like to drop it, it [if player is in The Ol Hotel]is actually handy here[else]might come in handy somewhere[end if]." instead;

section mootness bonus

definition: a thing (called th) is abrod: [ "abroad," geddit? ]
	if th is in Adorb Bardo, yes;
	no;

chapter help stuff

pointcue is a truth state that varies.

last-hash is a number that varies. last-hash is usually -1.
num-in-row is a number that varies.
cur-ceil is a number that varies. cur-ceil is usually 3.

firstword is a number that varies. [key2]
fullcmd is a number that varies. [key]

to decide whether (nt - a table name) is hash-found:
	repeat through nt:
		if firstword is the hashval entry or fullcmd is the hashval entry:
			if there is a this-rule entry:
				process this-rule entry;
				if the rule succeeded:
					say "[this-clue entry][line break][note-good-guesses]";
					decide yes;
			else if there is a this-item entry:
				if this-item entry is fungible:
					say "[this-clue entry][line break][note-good-guesses]";
					decide yes;
			else:
				say "[this-clue entry][line break][note-good-guesses]";
				decide yes;
	decide no;

to say reject:
	now fullcmd is the hash of the player's command;
	now firstword is the hash of word number 1 in the player's command;
	d "The hash of the command is [fullcmd]. The hash of word #1 is [firstword].";
	repeat through regana of mrlp:
		if the-from entry is fungible:
			d "[the-from entry] fungible.";
			if firstword is the fullhash entry or fullcmd is the fullhash entry:
				if the-to entry is prefigured:
					say "You already figured what to do here. [b]PAD FLIPS[r] for a refresher.";
				else:
					say "[spec-help of the-from entry]";
				if last-hash is fullcmd or last-hash is firstword:
					increment num-in-row;
					if point is false and num-in-row is cur-ceil:
						say "[i][bracket]NOTE: it looks like you've tried a second anagram in a row. It may help to [b]OPT IN[r]. You can always switch back with [b]NO TIP[r].[close bracket][roman type][line break]";
						now num-in-row is 0;
						if cur-ceil < 6:
							increment cur-ceil;
				now last-hash is fullhash entry;
				continue the action;
	now num-in-row is 0;
	if roomnud of location of player is hash-found, continue the action;
	if regnud of mrlp is hash-found, continue the action;
	if table of general nudges is hash-found, continue the action;
	if found-misspelled-anagram, continue the action;
	say "[verb-cue][warn-inc]."

to decide whether found-misspelled-anagram:
	let quickcmd be the rough-hash of the player's command;
	let quickfirstword be the rough-hash of word number 1 in the player's command;
	d "[quickcmd] / [quickfirstword] for binary hash.";
	repeat through regana of mrlp:
		if the-from entry is fungible:
			if quickcmd is binhash entry or quickfirstword is binhash entry:
				if the-to entry is prefigured:
					say "You already figured what to do here. [b]PAD FLIPS[r] for a refresher.";
				else:
					say "[spec-help of the-from entry]";
				ital-say-lb "you may have misspelled things, though. Too many or few of one letter.";
				decide yes;
	decide no;

to say verb-cue: say "That's not something you can say, do or see here. For a list of common verbs, type [b]VERBS[r]"

to say warn-inc:
	if player does not have tagged gadget, continue the action;
	increment rewarn-val;
	if rewarn-val is rewarn-next:
		if rewarn-next < 7:
			increment rewarn-next;
		now rewarn-val is 0;
		say ". You may want to use or examine the tagged gadget or maybe [b]ANGLE[r] to see what you can tinker with";

to say set-bug: say "BUG. You shouldn't have the tagged gadget yet. If this is wrong, contact me at [email] or report a bug at [ghsite]. Transcripts are a big help. Up arrows work too."

a room can be noisy. a room is usually not noisy.

chapter say shortcuts

section debugging flags and such

debug-print is a truth state that varies. debug-print is usually false.

helpdebugflag is a truth state that varies. helpdebugflag is usually false.

chapter glulx stuff

to say hc-sp: if sr-acc is true or spaces-on is true, say " ".

[the syntax here is, only screen-reader space for *c, neither for *cn, forced space for *cf]

to say bc: say "[bluetext]B[r]".

to say bcn: say "[hc-sp][bluetext]B[r]".

to say bcf: say " [bluetext]B[r]".

to say gc: say "[second custom style]G[r]"

to say gcn: say "[hc-sp][second custom style]G[r]"

to say gcf: say " [second custom style]G[r]"

to say rc: say "[first custom style][hc-sp]R[r]"

to say rcn: say "[hc-sp][first custom style]R[r]"

to say rcf: say " [first custom style]R[r]"

to say ast: say "[if sr-acc is true or spaces-on is true] [end if]"

to say d1: say "[ast]-".

to say d2: say "[ast]-[ast]".

book procedural AIP

to decide whether the action is procedural: [aip]
	if examining, yes;
	if searching, yes;
	if fliptoing, yes;
	if kicking, yes;
	if attacking, yes;
	if scaning, yes;
	if objhinting, yes;
	if smelling, yes;
	if cring, yes;
	if reading, yes;
	if listening, yes;
	if saying yes, yes;
	if saying no, yes;
	if xmxing, yes;
	if dropping, yes;
	if looking, yes;
	if certifying, yes;
	if rectifying, yes;
	if requesting the score, yes;
	if taking inventory, yes;
	if gotothinging, yes;
[	if out of world, yes;]
	if objasking generically, yes;
	if objasking about, yes;
	if asking generically, yes;
	if asking about, yes;
	no;

book megachatter

chat-rand is a truth state that varies.

talk-quiet is a truth state that varies.

every turn (this is the process random dialogue rule):
	if current action is mainhelping, do nothing instead;
	if current action is hinting, do nothing instead;
	if current action is fliptoing, do nothing instead;
	now chat-rand is true;
	process the find-blather rule;
	now chat-rand is false;

this is the find-blather rule:
	let zz be 0;
	repeat through table of megachatter:
		if eturn entry is chat-rand:
			if there is a go-ahead entry:
				process the go-ahead entry;
				if the rule succeeded:
					if chat-rand is true and talk-quiet is true and done-once entry is true, the rule succeeds;
					if showtabname is true:
						say "([mytab entry])";
					now done-once entry is true;
					increment curidx entry;
					if curidx entry > maxidx entry:
						if there is a lasties entry:
							say "[lasties entry]";
							now curidx entry is 0;
							the rule succeeds;
						else:
							[say "(generic note that random text is cycling)[paragraph break]";]
							now curidx entry is 1;
					if there is a prefix entry:
						say "[prefix entry]";
					let whrow be curidx entry;
					let posties be suffix entry;
					choose row whrow in mytab entry;
					say "[blurb entry][posties][line break]";
					if chat-rand is true:
						if talk-quiet is true:
							say "[line break][i][bracket]NOTE: the above was random dialogue that won't be repeated since you have [b]HUSH[r] on. You can undo this with [b]UHHS[r].[close bracket][r][line break]";
						else if quiet-warn is false: [this is skipped if you jump to RBB]
							say "[line break][i][bracket]Note: the above was random dialogue that can be turned off with [b]HUSH[r] or on with [b]UHHS[r]. If you forget this, it's in your notepad. Also, if you want all the dialogue, no need to hit Z a ton. You can read the source or, to see it formatted a bit better, solve the game.[close bracket][r][line break]";
							pad-rec-q "random dialogue";
							now quiet-warn is true;
					the rule succeeds;

to say randbla:
	say "[run paragraph on]";
	repeat through table of megachatter:
		if eturn entry is chat-rand:
			if there is a go-ahead entry:
				process the go-ahead entry;
				if the rule succeeded:
					if showtabname is true:
						say "([mytab entry])";
					increment curidx entry;
					let whrow be curidx entry; [needed for the multiple-name entry]
					let mdx be maxidx entry;
					let posties be suffix entry;
					let lly be "";
					if there is a lasties entry:
						now lly is lasties entry;
					if there is a prefix entry:
						say "[prefix entry]";
					if ent-per entry > 1:
						let thistab be mytab entry;
						let q be ent-per entry;
						if maxidx entry - curidx entry + 1 < q:
							now q is maxidx entry - curidx entry + 1;
						now curidx entry is curidx entry + q - 1;
						if curidx entry >= maxidx entry:
							now curidx entry is 0;
						repeat with tmp running from 1 to q:
							if tmp is q and tmp > 1:
								say " and ";
							choose row whrow + tmp - 1 in thistab;
							say "[blurb entry]";
							if tmp < q - 1:
								say ", ";
						if mdx is q + whrow - 1:
							say "[lly]";
						the rule succeeds;
					[d "[curidx entry] vs [maxidx entry].";]
					if curidx entry > maxidx entry:
						if there is a lasties entry:
							say "[lasties entry]";
							now curidx entry is 0;
							the rule succeeds;
						else:
							[say "(generic note that random text is cycling)[paragraph break]";]
							now curidx entry is 1;
							now whrow is 1;
					choose row whrow in mytab entry;
					say "[blurb entry][posties]";
					the rule succeeds;

bull-taunt is a number that varies.

to say 1-in-5:
	increment bull-taunt;
	if bull-taunt is 5:
		now bull-taunt is 0;
		say ".[paragraph break]You think how you can use your word power. Somehow going 'TUT, EGO!' won't be incisive enough. You need action"; [bold-ok]

book section-victory

chapter commending

to commend (y - a region):
	if y is solved:
		say "[bug-report] already solved.";
		the rule succeeds;
	now y is solved;

chapter itemdefaulting

itemdefaulting is an action applying to one thing.

understand the command "[something]" as something new.

understand "[something]" as itemdefaulting.

carry out itemdefaulting:
	d "Itemdefaulting: [noun].";
	if noun is a portal and noun is examined, try entering noun instead;
	try examining noun instead;

chapter hinting

hinting is an action applying to nothing.

mainhelping is an action applying to nothing.

understand the command "hint/hints" as something new.

understand "hint" and "hints" as hinting.

hintsoff is a truth state that varies. hintsoff is usually false.

just-print is a truth state that varies. just-print is usually true.

carry out hinting:
	if location of player is Busiest Subsite, say "You're not in the area where the magic happens, yet. The cardinal directions, including the boring lecture east, are out. There's only one way to go." instead;
	abide by the first-time-hint-check rule;
	if hintfull is false:
		try mainhelping;
	else:
		say "[bug-report] Hints are already being traced. This is a debug-feature only.";

to say got-r: say "[if store r is prefigured]already guessed right--it's a resort[else]can still guess it. If you don't, this hint will tell you what it should be once you can advance".

carry out mainhelping:
	if hintsoff is true, say "You elected to turn hints off for the remainder of the game. You'll need to restart to change that." instead;
	abide by the reg-hint-rule of mrlp;
	say "[bug-report] Bug text. Should not appear.";
	the rule succeeds;

outline-print is a truth state that varies. outline-print is usually true.

coe-clue is a truth state that varies. coe-clue is usually false.

section hintrelevance

redness is a thing. understand "red" and "color red" as redness when player is in Notices Section. description of redness is "Bug."

does the player mean objasking generically redness when player is in notices: it is very likely.
does the player mean objasking about redness when player is in notices: it is very likely.

does the player mean objasking generically when noun is enclosed by location of the player: it is very likely.

does the player mean objasking about when second noun is enclosed by location of the player: it is very likely.

check objhinting red bull burdell: if red bull burdell is off-stage, say "You haven't found him yet!" instead;

does the player mean objhinting a deregioned object: it is very unlikely.

does the player mean objhinting a hintrelevant object: it is likely.

does the player mean objhinting a moot object: it is unlikely. [ic]

definition: a thing (called hthing) is deregioned:
	if location of hthing is nothing, decide no;
	if hthing is moot, decide no;
	if hthing is a backdrop:
		if drop-region of hthing is mrlp, no;
		yes;
	if mrlp is not map region of location of hthing, decide yes;
	decide no.

definition: a thing (called hintcand) is hintrelevant:
	if hintcand is a backdrop:
		if mrlp is not drop-region of hintcand, no;
		if touched-yet of hintcand is true, yes;
		no;
	if hintcand is tech etch or hintcand is signers ingress: [this isn't a backdrop, but it's the only door in the game.]
		if mrlp is metros, yes;
		decide no;
	if hintcand is off-stage, decide no;
	if hintcand is moot, decide no;
	if hintcand is abrod, decide yes;
	if hintcand is location of player, decide no;
	let reg1 be map region of location of hintcand;
	let reg2 be mrlp;
	if reg1 is not reg2, decide no;
	if reg1 is reg2:
		if location of hintcand is visited, decide yes;
	decide no;

[does the player mean objasking about a hintrelevant thing: it is likely;]
[does the player mean objasking generically a hintrelevant thing: it is likely;]

chapter objhinting

objhinting is an action applying to one visible thing.

check objhinting a deregioned object: say "[if debug-state is true]DEBUG: ([noun])[line break]That's not a thing or person in this region[one of]--note: locations are not available to hint[or][stopping]." instead;

understand the command "hint/hints/info/help [any thing]" as something new.

understand "hint [any hintrelevant thing]" as objhinting. understand "hints [any hintrelevant thing]" as objhinting. understand "info [any hintrelevant thing]" as objhinting. understand "help [any hintrelevant thing]" as objhinting.

[understand "hint [text]" as a mistake ("There's nothing relevant around like that.")]

ever-obj-hinted is a truth state that varies.

a thing can be realized. a thing is usually not realized.

to realize (th - a thing): now th is realized;

cur-item is a thing that varies.

this is the first-time-hint-check rule:
	if first-hint-check is true, continue the action;
	now first-hint-check is true;
	say "You call out for the Magic Hint Fairy. 'Please! Please!'[paragraph break]All you hear in return is 'Asleep! Asleep!'[paragraph break]You pause. You've heard she may be a hi-rent hinter, maybe even a cruel cluer--not that she can spirit you to the cheaters['] hectares--but even a thin hint could probably make you enjoy your journey less if you rely on her too much.[paragraph break]Do you really want to poke her now?";
	ital-say "this is just a one-time warning [if current action is objhinting]against potential spoilers and temptation[else]because you may wish to hint a specific item instead, avoiding accidental spoilers[end if]. It will not show again.";
	if player dir-consents:
		say "You see by the look on her face she's thinking 'Spiel or Spoiler?' But the look on your face shows you're ready to take the Perilous trip to Spoiler U with an idea aide. You won't spit on tips. [hintblah]";
		continue the action;
	else:
		say "Her cheats sachet tempts you, even trying to scathe as you remain chaste. [hintblah]" instead;

carry out objhinting:
	if hintsoff is true, say "Hints are disabled for this session." instead;
	if debug-state is true, say "DEBUG: [noun] being objhinted.";
	abide by the first-time-hint-check rule;
	now ever-obj-hinted is true;
	now cur-item is noun;
	abide by the reject unknowable objects if not testing rule;
	abide by the generic hint state rejects rule;
	if there is hint-entry of noun in hintobjstable of mrlp:
		choose row with hint-entry of noun in hintobjstable of mrlp;
		if there is a parallel-entry entry, try objhinting parallel-entry entry instead;
		say "[advice-entry entry]" instead;
	if noun is a portal, say "You can just enter [the noun]." instead;
	if noun is unimportant, say "[noun]: that isn't needed to solve the game. It's probably just there for local flavor." instead;
	say "[noun]: I don't have any hints for that. That means it is not important to the game, or this is a bug." instead;

section Ordeal Loader

blot-first is a truth state that varies.

toga-first is a truth state that varies.

this is the ordeal-loader-hinting rule:
	if player is in Busiest Subsite, say "[one of]Look around. Most of the standard directions don't really seem to get you anywhere--going east with the crowd doesn't count. [plus][or]There's a passage that's not quite so prominent. [if vacate caveat is examined]You've already read the sign[else]The sign has an odd message that's not quite stopping you entering[end if]. [plus][or]You can go [b]IN[r], [b]ENTER[r], or [b]ENTER PASSAGE[r]. [minus][cycling]" instead;
	if player is in Rested Desert:
		if odor is touchable, try objhinting odor instead;
		if blot is moot, try objhinting OR DO door instead; [?? can enter door?]
		if bolt is in location of player and bulge is in location of player:
			if blot-first is true, try objhinting bolt instead;
			try objhinting bulge instead;
		if player has bugle and bugle-played is false, try objhinting bugle instead;
		try objhinting OR DO door instead;
	if player is in Thickest Thickets:
		if toga is touchable and reed is touchable:
			if toga-first is true, try objhinting toga instead;
			try objhinting reed instead;
		say "You can just go [b]IN[r], now." instead;
	if player is in Notices Section:
		if gateman is not in Notices Section, try objhinting magenta nametag instead;
		if player does not have gadget, say "You probably want to [b]TAKE GADGET[r] before entering the gate. Well, maybe even [b]TAKE ALL[r]." instead;
		if lube-asked is false, say "You can [b]ASK GATEMAN ABOUT CABINET[r] to get some goodies in addition to the tagged gadget." instead;
		say "You can just enter the getaway gateway now." instead;

section stores

this is the stores-hinting rule:
	if you-can-advance:
		if store r is in Trips Strip:
			if store r is prefigured, say "You already figured what this is--a resort." instead;
			try objhinting store r instead;
		say "The way is clear. You can just enter the ogled lodge[if store m is in Trips Strip or store f is in Trips Strip or store i is in Trips Strip]. You could try the remaining store, but it's not necessary[end if]." instead; [?? specify store?]
	if scented descent is in Trips Strip or posted depots are in Trips Strip or trade tread is in Trips Strip, say "You can just enter the [list of portals in Trips Strip]. If you want or need help with a particular store, [b]HINT STORE Q[r]." instead;
	if store f is in Trips Strip, try objhinting store f instead;
	if store i is in Trips Strip, try objhinting store i instead;
	if store m is in Trips Strip, try objhinting store m instead;
	if store r is in Trips Strip, try objhinting store r instead;
	say "[bug-report] I should be able to hint something for you, but I can't. I'd like to know how this happened, so I can fix it.." instead;

section forest

this is the forest-hinting rule:
	if location of player is rf or location of player is sf:
		if number of touchable guiders is not 1, say "There's a problem here--you should have a clue which direction to go, but you don't." instead;
		try objhinting a random touchable guider instead;
	if Gnarliest Triangles is unvisited or Flesh Shelf is unvisited, say "Go [if triangles is visited]west[else if shelf is visited]east[else]east and west[end if] and look around a bit. There're only three rooms to start, and passing Corses Crosse needs stuff from each side room. While you can still hint an object, [b]HINT[r] will only give you this nag until you visit all three locations." instead;
	if ones are off-stage or shades are off-stage and player is not in Gnarliest Triangles, say "You need to solve a [if ones are off-stage and shades are off-stage]couple puzzles[else]puzzle[end if] to the east." instead;
	if player is in Gnarliest Triangles:
		if nose is off-stage, try objhinting ones instead;
		if shades are off-stage, try objhinting dashes instead;
		if shotgun is off-stage, try objhinting the noughts instead;
	if player is in Flesh Shelf and bread is part of the sandwich, try objhinting sandwich instead; [this and the above two together mean that you will get local hints first before generic ones]
	if Emptiness Sepiments is unvisited:
		if coe-clue is false:
			now coe-clue is true;
			try objhinting line of no life instead;
		if player has beard and shades are part of beard and nose is part of beard, say "You should be able to walk [b]NORTH[r] from [here-there of Self ID Fields] now with your disguise." instead;
		if nose is off-stage, try objhinting ones instead;
		if shades are off-stage, try objhinting dashes instead;
		if noughts are off-stage, try objhinting noughts instead;
		if bread is part of the sandwich, try objhinting sandwich instead;
		if beard is off-stage, try objhinting the bread instead;
		say "You have everything you need to enter Corses Crosse, now. You can worry about the other stuff in [here-there of Flesh Shelf] later. [b]PUT[r] (item) [b]ON[r] (item)[unless shades are part of beard or nose is part of beard] twice[end if] to create the full disguise." instead;
	if chisel is off-stage, try objhinting liches instead;
	if livers are off-stage:
		if player does not have River Ville liver and player does not have viler liver, try objhinting chisel instead;
		if River Ville liver is not off-stage, try objhinting River Ville liver instead;
		if viler liver is not off-stage, try objhinting viler liver instead;
		try objhinting River Ville liver instead;
	if sliver is off-stage, try objhinting livers instead;
	if spread is in Emptiness Sepiments, try objhinting spread instead;
	if red asp is in Emptiness Sepiments, try objhinting red asp instead;
	if drapes are in Emptiness Sepiments:
		if sliver is off-stage, try objhinting livers instead;
		try objhinting drapes instead;
	if shotgun is off-stage, try objhinting noughts instead;
	if silver is off-stage, try objhinting sliver instead;
	if shotgun is not loaded, try objhinting shotgun instead;
	if player does not have maps, try objhinting spam instead;
	if player is in Ghouls Slough, try objhinting maps instead;
	if player is not in Frost Forts, say "You should be able to go north [if player is not in Emptiness Sepiments]from Emptiness Sepiments [end if]now." instead;
	if player is in Frost Forts:
		if vowels are touchable, try objhinting vowels instead;
		if wolves are touchable, try objhinting wolves instead;
	say "I can't find anything more to do in the forest. This is probably a [bug-report]" instead;

section metros

carry out objhinting faeries when fairy-worthy is true: say "You've done all you can for the faeries." instead;

carry out objhinting begonias when fairy-worthy is false: try objhinting faeries instead;

carry out objhinting heaths when fairy-worthy is false: try objhinting faeries instead;

carry out objhinting tulip when tulip is in Esoteric Coteries: try objhinting nerds instead;

this is the metros-hinting rule:
	if player is in The Ol Hotel:
		if night thing is in The Ol Hotel, try objhinting night thing instead;
		if player has termite emitter, say "Your work in the ol['] hotel is done." instead;
		say "Why not search the mattress? Something's in there." instead;
	if player is in Obtains Boastin Bastion:
		if poses posse is touchable, try objhinting poses posse instead;
		say "The only thing you need to do is to [if player does not have dry cake]get the dry cake and [end if]get out." instead;
	if player has heaths, try objhinting heaths instead;
	if player has begonias, try objhinting begonias instead;
	if player is in Undesired Underside:
		if drainage is in Undesired Underside, try objhinting drainage instead;
		if Fo Real Florae is not visited, say "Since you've got the gardenia, you can and should visit the flower shop east of the Roarings Garrison." instead;
		if Bile Libe is not visited, say "You can go west from the camp to a library." instead;
		if dry cake is in Obtains Boastin Bastion, say "You should try going [if Obtains Boastin Bastion is visited]back north to the Obtains Boastin['] Bastion[else]north[end if]. There are several places to visit and people to deal with." instead;
		if Esoteric Coteries are not visited:
			if keycard-put is true, say "Just go east." instead;
			if player has dry cake, try objhinting dry cake instead;
			if player has brocade, try objhinting brocade instead;
			if player has keycard:
				if barcode is part of the keycard, say "Nothing except badly hinted verbs should be stopping you from PUTting the keycard on the friend finder." instead;
				try objhinting keycard instead;
			if player has barcode:
				if dry cake is in Obtains Boastin Bastion, say "You need something to put the barcode on. Maybe check out [if bastion is visited]the Bastion[else]north of the Roarings Garrison[end if]." instead;
			if player has dry cake, try objhinting dry cake instead;
			say "You will need to get by that door. You should find items lying around in the camp and the flower shop." instead;
		if nerds-unwelcome is true, say "You are pretty much done here. You've annoyed the nerds. [if heaths are in Fo Real Florae and begonias are in Fo Real Florae]Maybe check out the flower shop northeast[else if words are touchable or sword is touchable]You can maybe check the terminal to the south[else]Maybe check out the Bile Libe[end if]." instead;
		say "You've unlocked the way east here. You shouldn't need to do any more." instead;
	if player is in Roarings Garrison:
		if dry cake is in Obtains Boastin Bastion, say "You need to clear out the Bastion to the north to gain the Roarings Garrison's trust[unless player has emitter]. It may help to have a machine or something to use[end if]." instead;
		if clover is in camp, say "You can take the clover for later, or you can figure what it should be." instead;
		if lost corn is in camp, say "The lost corn will be useful as something else." instead;
		say "You've gotten everything you need here. There are no hidden puzzles." instead;
	if location of player is Fo Real Florae:
		if player does not have brocade and barcode is off-stage, say "The brocade is free, whether or not you've helped the faeries. Why not take it?" instead;
		if fairy-worthy is false, try objhinting faeries instead;
		if player has gardenia, try objhinting gardenia instead;
		if heaths are in Fo Real Florae and begonias are in Fo Real Florae, say "Take a flower. Either flower." instead;
		if player has sheath or player has noise bag, say "You've transformed your flower[if words are not in Bile Libe], and you've gotten the words from the Bile Libe. So you're done here[else], but you need to use your new item in the Bile Libe[end if]." instead;
		say "Take a flower. Either flower." instead;
	if player is in Bile Libe:
		if motto is in Bile Libe, try objhinting motto instead;
		if fairy-worthy is false, say "You need something from the flower shop to do any more here." instead;
		if words are not in Bile Libe, say "You've done what you need here." instead;
		if player has heaths, try objhinting heaths instead;
		if player has sheath, try objhinting sheath instead;
		if player has begonias, try objhinting begonias instead;
		if player has noise bag, try objhinting noise bag instead;
		if heaths are in Fo Real Florae and begonias are in Fo Real Florae, say "Pick a reward from the faeries, then come back here." instead;
		say "You don't have much to do here right now." instead;
	if player is in Esoteric Coteries:
		if player has lit up tulip, say "Nothing more to do here." instead;
		try objhinting nerds instead;
	if player is in Elm Train Terminal or player is on cafe face:
		if power-shut is true, say "You've done what you can here[if player does not have tulip]. You'll need a light source to go east across the rail[end if][if Esoteric Coteries are unvisited]. You haven't been behind the door east of the Underside, yet[end if]." instead;
		if clover is in camp, say "You need something sticky to climb the cafe face. Go back to the camp." instead;
		if player has clover, try objhinting clover instead;
		if player is not wearing Velcro and player is not on cafe face, say "You can [b]WEAR[r] the Velcro to climb the cafe face." instead;
		if neon pig is in Elm Train Terminal, try objhinting neon pig instead;
		if controls are off-stage:
			if bastion-evac is false, say "You need to [if camp is unvisited]see someone up north[else]please the deadbeat[end if] to get an item to replace the neon pig in the opening." instead;
			try objhinting lost corn instead;
		if controls are not in gin nope opening, try objhinting gin nope opening instead;
		say "You're done here. You can just go east [if tulip is in Esoteric Coteries]once you've got light[else if words are in Bile Libe]once you have a weapon[else]for the final confrontation[end if]." instead;
	if location of player is Bassy Abyss:
		if stickyhanded is false, try objhinting siren instead;
		if player has sword or player has sheath:
			if beats are touchable, try objhinting beats instead;
			say "[b]ATTACK BEAST[r]. You win." instead;
		if beats are touchable, try objhinting beats instead;
		if player has noise bag, try objhinting noise bag instead;
		say "[bug-report] I let you in with an item I should not have." instead;
	if player is in Obtains Boastin Bastion:
		if player has dry cake, say "You've got the cake. You can just leave." instead;
		if player does not have emitter, say "There's something in the Ol['] Hotel that will upset the residents here, if you use it." instead;
		try objhinting emitter instead;
	say "[bug-report] I ran out of hints and should not have.";
	the rule succeeds;

section resort hinting

rock-first is a truth state that varies.

isle-clue is a truth state that varies.

this is the resort-hinting rule:
	if player is in Astral Altars, try objhinting tiles instead;
	if player is in Leis Isle:
		if cork is touchable or wings are touchable, say "You've found one way across the water, though you can [b]HINT[r] [if cork is off-stage][b]ROCK[r][else][b]SWING[r][end if] for another." instead;
		if isle-clue is false:
			now isle-clue is true;
			say "Either item lying around can help you across the water." instead;
		if rock-first is true and rock is touchable, try objhinting rock instead;
		if swing is touchable, try objhinting swing instead;
		say "You can just go east here now." instead;
	if player is in Rived Drive:
		if toeholds are in Rived Drive and poles are in Rived Drive, try objhinting poles instead;
		if ropes are touchable and grips are touchable:
			say "You can just go east now, up the slope." instead;
		if spore is touchable, try objhinting spore instead;
		if sprig is touchable, try objhinting sprig instead;
		if poles are touchable, try objhinting poles instead;
		say "You can just go east here[if toeholds are off-stage or ropes are off-stage or grips are off-stage], though you haven't gotten full points for Rived Drive yet[end if]." instead;
	if player is in Potshot Hotspot:
		if riot is touchable, try objhinting riot instead;
		if protest is touchable, try objhinting protest instead;
		if potters are touchable and kilns are not touchable, try objhinting links instead;
		if red bull burdell is touchable, try objhinting red bull burdell instead;
		say "There is nothing more to do here except go east." instead;
	if player is in Means Manse, try objhinting X ITES exits instead;
	say "Unhandled case. I need to fix this, so a transcript would be an enormous help." instead;
	the rule succeeds;

ever-nerd-hint is a truth state that varies. ever-nerd-hint is usually false.

ingred-check is a truth state that varies. ingred-check is usually false.

carry out objhinting oils when oils are in cask and player is not in moor: say "The oils need an foundation to pour them. But you're kind of inside right now." instead;

carry out objhinting cask when sack is off-stage: say "[one of]The cask is versatile. Did you look at it? [plus][or]The tagged gadget gives it away. [plus][or]It is also a [b]SACK[r], which can carry different things. [minus][cycling]" instead;

carry out objhinting an ingredient: say "[The noun] can become part of a meal." instead;

this is the sortie-hinting rule:
	if player is in Trap Part:
		if numset of dial is 16, say "You don't need to do anything else here." instead;
		try objhinting dial instead;
	if location of player is the nick, try objhinting great instead;
	if taco is touchable, try objhinting taco instead;
	if location of player is kitchen:
		if player wears coat or player has taco, say "Your work in the kitchen is done[if moor is unvisited]. There's one location outside this underground area to find, and your coat should help you feel more comfortable there[end if]." instead;
		if ingred-check is false and taco is off-stage:
			now ingred-check is true;
			say "It's a kitchen. You need to make something. But there are no ingredients around--just weird non-food items. Hmm." instead;
		if number of touchable pregredients > 0:
			repeat with pg running through kitchen-hint-list:
				if pg is touchable, try objhinting pg instead;
			say "OOPS bug. Pre-gredient was flagged as being in the kitchen, but it's not." instead;
		say "You just need to combine ingredients you've already made and [b]PUT[r] them on each other." instead;
	if warts are touchable, try objhinting warts instead;
	if roomroom is visited and sack is off-stage, try objhinting cask instead;
	if player is in roomroom:
		if hoses are in roomroom, try objhinting hoses instead;
		if player does not have coat:
			if kitchen is unvisited, say "If you're cold, look around a bit more. There's a room you haven't been to yet." instead;
			if player does not have taco, say "You may want to go to the kitchen to prepare something." instead;
			try objhinting taco;
		if moor is not visited:
			if r2 is prefigured, say "You are fully ready to go to the [b]MOOR[r] now, as you tried before." instead;
			say "[one of]The room is just a plain room. You feel like you want to get out, though. [plus][or]Like the kitchen, the name doesn't anagram, so maybe there's another location that does.[plus][or]The [b]MOOR[r].[minus][cycling]" instead;
		say "Nothing more to do here, other than pass between the moor and other rooms you may need to visit." instead;
	if player is in Stiller Trellis:
		if roomroom is unvisited, say "You can still visit the room to the south." instead;
		if crashing archings are in Stiller Trellis, say "You don't need to do anything more here. Or in Sacred Cedars." instead;
		if scraped wall is not touchable, say "[if oils are in cask]You'll want to visit the moor with the oils[else]You'll probably have more to do to the east, now you opened the passage there[end if]." instead;
		if moor is unvisited, say "You have visited everywhere here, but you can break away outside. There's one place you can zap to, but not from here." instead;
		try objhinting scraped wall instead;
	if player is in Sacred Cedars:
		if caskfillings is 2, say "You have gotten all the oils you need here. Maybe you can pour them in the moor, again, with a different result." instead;
		if oils are in cask, say "You can't pour the oils anywhere in this enclosed area. Try going back to the moor." instead;
		if caskfillings is 0, say "[if sack is touchable]Once you change the sack to a cask, y[else if player does not have cask]Once you get a cask, y[else]Y[end if]ou can [b]FILL CASK[r] here, to start." instead;
		if caskfillings is 1, say "You can refill the cask with oils." instead;
	if player is in moor:
		if anapest is touchable, try objhinting anapest instead;
		if peasant is touchable, try objhinting peasant instead;
		unless smilies are moot:
			if poem is unexamined, say "You should read the poem the peasant gave you. It's not terrible, but it contains some things that don't belong in a poem." instead;
			try objhinting smilies instead;
		if soil is not touchable or silo is not touchable:
			if Sacred Cedars is unvisited, say "You need to visit the room you opened east of the trellis first." instead;
			if cask is moot, say "You need to change the sack into a cask to carry the oils from Sacred Cedars." instead;
			if oils are not in cask, say "You need to fill the cask[if soil is in moor]. Yes, again[end if]." instead;
			try objhinting oils;
		if roadblock is touchable, try objhinting roadblock instead;
		if black door is not part of the silo, try objhinting black door instead;
		if missile is not in silo, say "You can PUT MISSILE IN SILO." instead;
		if poem is touchable:
			if poem is folded, say "[one of]The plane is useless. What can it become?[plus][or]It can become a [b]PANEL[r].[minus][cycling]" instead;
			try objhinting poem instead;
		if panel is not part of the silo, try objhinting panel instead;
		if hoots button is touchable, try objhinting hoots button instead;
		if trees button is touchable, try objhinting trees button instead;
		if steer button is touchable and missile-steered is false, try objhinting steer button instead;
		if shoot button is touchable, try objhinting shoot button instead;
	say "Oops. I did not account for this hint. This is a [bug-report], and you'll need to see the walkthrough.";
	the rule succeeds;

check hinting:
	if hintfull is true, say "Ignoring hint nag due to hint-every-move debug flag set. Only testers should see this. [bug-report] in final release." instead;

to say hintblah: say "(To resist the temptation of summoning the Hint Fairy later, you can use the [b]HINTS OFF[r] command to disable hints until you restart.)".

chapter helpoffing

helpoffing is an action applying to nothing.

understand the commands "help off" and "info off" and "hint off" and "hints off" as something new.

understand "help off" and "info off" and "hint off" and "hints off" as helpoffing.

carry out helpoffing:
	if hintsoff is true, say "Hints are already disabled." instead;
	say "This will shut off hints for the remainder of the play session. You will need to restart to see them again. Are you sure?";
	if the player dir-consents:
		say "Done.";
		now hintsoff is true;
	else:
		say "You can always shut hints off again if you change your mind.";

book silly verbs

before exiting:
	if red bull burdell is touchable, say "You may believe in brawns over brain, but I don't. I believe in you! And your ability to exploit what Red Bull keeps repeating!" instead;
	if player is in Trap Part and centrifuge-stopped is false, try going west instead;

chapter don't get a rifle

to decide whether got-flier:
	if player is in Trips Strip, decide yes;
	if player has expo flier, decide yes;
	decide no;

chapter cleaning

understand the command "rub" as something new.
understand the command "shine" as something new.
understand the command "polish" as something new.
understand the command "sweep"as something new.
understand the command "clean"as something new.
understand the command "dust"as something new.
understand the command "wipe" as something new.
understand the command "scrub" as something new.

chapter tasting

rule for supplying a missing noun while tasting: now the noun is the player.

check tasting:
	if noun is saltine, try eating noun instead;
	say "I have nothing to state about taste." instead;

chapter yes/no

check saying yes: say "[yn]" instead;
check saying no: say "[yn]" instead;

to say yn: say "I am not yes-no nosey...am I? [b]NOT[r].[no line break][one of] (Yes and no aren't useful commands here--you'll be prompted when you need to make that choice.)[or][line break][stopping]"

chapter swinging

rule for supplying a missing noun while swinging: now the noun is the swing.

does the player mean swinging the swing: it is very likely.

the block swinging rule is not listed in any rulebook.

check swinging:
	if noun is the swing, say "Whee! Sitting on the twine hurts a bit, but with a little shifting around, you imagine the swing could make you fly." instead;
	if noun is sword or noun is shotgun, say "Don't play with weapons." instead;
	say "That's probably just silly. Or risky. Or impossible." instead;

chapter drinking

understand "drink" as drinking.

understand "drink [something]" as drinking.

rule for supplying a missing noun while drinking: now the noun is the player.

check drinking:
	if noun is CATHOUSE, say "Deadly." instead;
	if noun is phial or noun is lube, say "The lube looks sort of like mercury, now you think of it. Ugh." instead;
	if noun is oils, say "The oils seem too valuable for that. You're not thirsty, anyway, and they wouldn't help if you were." instead;
	if noun is drainage or noun is skin sink, say "Eww, don't even." instead;
	say "I show no kind grin on drinking!" instead;

chapter sleeping

check sleeping:
	if mattress is touchable and night thing is moot, say "On that mattress? Eww." instead;
	say "On basker breaks? No!" instead;

chapter squeezing

check squeezing: say "That's either icky or impossible or both." instead;

chapter singing

the block singing rule is not listed in any rulebook.

check singing:
	if location of player is Gnarliest Triangles, say "Alas, the notes stone does not interact favorably with your tones." instead;
	if trio is touchable, say "Dah, dah, dah. They don't love you. You don't love them." instead;
	say "Oddly, when you start, you imagine a big sign telling you not to." instead;

chapter waving hands

check waving hands:
	if player is in Busiest Subsite, say "You don't see any friends nearby, sadly. It's all a bit awkward." instead;
	if player is in notices and gateman is in notices, say "You've already introduced yourself. Just ask him about what you want/need." instead;
	if player is in The Ol Hotel and night thing is in The Ol Hotel, say "Bad idea. Don't know what might make it charge." instead;
	if player is in Roarings Garrison, say "The dead beat deadbeat nods in return." instead;
	if player is in Obtains Boastin Bastion and poses posse are in Obtains Boastin Bastion, say "They pointedly ignore you." instead;
	if beast is in Bassy Abyss and player is in Bassy Abyss, say "It's not very friendly at all." instead;
	if goat is in Thickest Thickets and player is in Thickest Thickets, say "Do you expect it to wave back? It'd probably fall over trying." instead;
	if number of npcish people > 0, say "There's someone else here, but just [b]TALK TO[r] them or [b]ASK[r] them about something instead." instead;
	say "An Inform 7 programmer waves at you from behind the fourth wall and points meaningfully to your keyboard or whatever you're typing on." instead;

chapter wearing

check wearing:
	if noun is not wearable, say "You don't need to wear [the noun]. Anything you need to wear temporarily will be slipped on implicitly." instead;
	if noun is velcro, continue the action;
	say "You don't need to wear [the noun]. I should have a better reason for this, but I don't. This is worth reporting as a bug, if you have the time." instead;

the can't wear what's not clothing rule is not listed in any rulebook.

chapter jumping

check jumping:
	if player is in Busiest Subsite, say "Apparently, it's your career that needs the jump, not you." instead;
	if player is on cafe face, say "Bad idea. Just climb down instead." instead;
	if player is in Rived Drive, say "You don't get anywhere close to over the [slo-po]. Perhaps it's better to [if poles are touchable]try to [end if][b]CLIMB[r]." instead;
	say "What am I supposed to do with THAT four-letter mess?" instead;

to say slo-po: say "[if slope is touchable]slope[else]poles[end if]"

understand the command "eat [something]" as something new.
understand "eat [something]" as eating.

chapter eating

check eating: [?? eat weird stuff]
	if noun is tin foil info lit, say "If this were a spy game, that would be ideal. But it isn't." instead; [ordeal loader]
	if noun is bread, say "It's not as disgusting as the meat you've seen, but you're not hungry now. There must be some other use." instead; [forest]
	if noun is beard, say "It's less appetizing as a beard than as bread. And if there WERE anything edible in it, ... eww." instead;
	if noun is a glopmeat, say "Uggh. No way[if noun is examined]. Even though someone stamped it as eatable[end if]." instead;
	if noun is livers, say "Wow. No. It might be safe to, but it wouldn't be fun to." instead;
	if noun is Spam, say "The thought of eating Spams gives you a spasm. Eww." instead;
	if noun is sandwich, say "It doesn't seem appetizing, and you don't need the energy it might give." instead;
	if location of player is the nick, say "Man, you'd sure like to be somewhere you could make some food." instead; [sortie]
	if noun is cake pan, say "Err, it's kind of metal." instead;
	if noun is grist, say "Ooh. It's almost edible enough. Just needs a little change." instead;
	if noun is pancake, say "Too cold and bland. Plus, it's probably someone else's, like Ana Peck. Or Cap. Kane[if taco is off-stage]. You might want to fiddle with what's on the counter[else]. The stuff on the counter was what was really important, anyway[end if]." instead;
	if noun is grits, say "You have an attack of conscience and decide to leave them for someone else." instead;
	if noun is a pregredient, say "Not in that form, and not by itself." instead;
	if noun is an ingredient and noun is part of the tortilla, try eating tortilla instead;
	if noun is lettuce, say "Too plain by itself." instead;
	if noun is steak, say "It's cooked, but really, it'd go better with something." instead;
	if noun is Parmesan, say "Too strong by itself. You could've when you were three. Not now." instead;
	if noun is HOTSAUCE, say "If you really want to do this, you are obviously too wild and crazy for text adventures." instead;
	if noun is an ingredient, say "No, that may be used to make something better." instead;
	if noun is tortilla, say "[if ingredients-in-tort is 0]Too plain by itself. Put something in it?[else if ingredients-in-tort is 1]It's still too plain to eat.[else if ingredients-in-tort is 2]It's about halfway to being something nice.[else if ingredients-in-tort is 3]It looks pretty good but needs one more ingredient.[else][bug-report][end if]" instead;
	if noun is taco, say "It looks so good, you'd wind up eating it all quickly. That might give you a gas saga, or a hardier... anyway, [this-game] has no fully implemented bathrooms. Or any at all." instead;
	if noun is straw, say "Eww." instead;
	if noun is hay, say "Eww." instead;
	if noun is dry cake, say "It's not terribly palatable, and you don't need the calories. Maybe it's better as something else." instead; [metros]
	if noun is motto, say "I hope you're not dumb enough to swallow that. Figuratively or literally." instead;
	if noun is tomato, say "That might give you a gas saga. Or a hardier diarrhea." instead;
	if noun is dry cake, say "It's in no state to taste[if cake is unexamined], as mentioned earlier[end if], and it won't be." instead;
	if noun is ketchup, say "You don't know where it's been. Oh, wait, even worse, you DO." instead; [bold-ok]
	if noun is toe, say "That might hurt a bit, but you'd get the worst of toof-foot, or teef-feet, action." instead; [resort]
	if noun is not edible, say "A new odd metabolism is not your magic power." instead;
	say "[if location of player is the nick]Your hunger is a hint, not a necessity[else]You won't strictly need any food for [this-game]. Well, your character won't[end if]." instead;

chapter asking

asked-gateman is a truth state that varies.

the asking yourself for something rule is not listed in any rulebook.

Check asking something for (this is the reflexive asking for item rule):
	if player has the second noun, say "You already have that." instead;

the nobody gives anything rule is listed before the translate asking for to giving rule in the check asking it for rulebook.

Check asking something for (this is the nobody gives anything rule):
	if noun is gateman, say "'Everything here is yours. No need to ask me.'" instead;
	if noun is nerds, say "'You can't just bully us, man! This isn't the playground any more!'" instead;
	if noun is deadbeat, say "He mumbles something about the man taking everything righteous people have." instead;
	if noun is faeries, say "[if fairy-worthy is true]You've already pleased them[else]They remind you that you need to get a flower for them, first[end if]." instead;
	if noun is poses posse, say "Welfare? Certainly not." instead;
	say "Asking directly for stuff doesn't work. If it were that easy, someone already would've. Maybe you want to ask [b]ASK ABOUT[r]." instead;

check objasking gateman about saltine: now asked-gateman is true.

chapter throwing

check throwing tomato at nerds: say "They're not a real menace, just annoying." instead;

check throwing tomato at:
	if second noun is deadbeat or second noun is tents, say "They don't deserve it. Tonight is not their poetry night[if moor is visited]. They're almost as bad as Woeful Pat[end if]." instead;
	if second noun is poses posse, say "That would cause a brief scuffle, but it'd get cleaned up, and people wouldn't flee for good." instead;
	if second noun is faeries, say "They could probably make it turn back and splatter you." instead;
	if second noun is neon pig, say "That might feel good, but it wouldn't do anything." instead;
	if second noun is ulcer or second noun is Night Thing:
		say "A direct hit! The tomato goes into the cruel ulcer with a pulp's splup, a gish, a sigh. The Night Thing smiles at first at the ketchupiness of the tomato. Then the inner rottenness and backwards logic from the (oops, a) motto kicks in. The beast wonders what sort of villain would DO that to ketchup. It looks at you in fear, sure you have more where that came from, and retreats into an unseen hole, scratching and clawing, suddenly a Thing of no Fight.[paragraph break]The mattress the Night Thing was on is slightly but noticeably bumpy. It's also ripped open, and it's concealing something rather badly."; [bold-ok]
		moot tomato;
		moot night thing;
		reg-inc;
		the rule succeeds;

check throwing it at: say "No worth in that throw[if noun is tomato], but it could make a mess elsewhere[end if][if second noun is night thing], but the right item mite (sic) get to him[end if]." instead;

rule for supplying a missing second noun while throwing:
	if noun is tomato:
		if night thing is touchable, now second noun is night thing;
		if faeries are touchable, now second noun is faeries;
		if nerds are touchable, now second noun is nerds; [I doubt this will ever happen, but let's make sure]
	else:
		say "No need to go pitching items. [line break]";
		continue the action;

chapter touching

check touching:
	if noun is toe, say "Just touching wouldn't be enough to cause serious pain." instead;
	if noun is blades, say "They begin to whir at your finger's presence." instead;
	if noun is bolt, say "You can't quite. It's as if an invisible lock is around it." instead;
	if noun is missile, say "You hear a small FWEE, as if from a party favor." instead;
	if noun is Velcro or noun is cafe face, say "Kind of rough and gritty." instead;
	if noun is thorn, say "Pain, a nip, like a pin." instead;
	if noun is spread, say "The spread lashes back--it turns into a red asp! You back off quickly, but fortunately, the asp is only a vicious guardian, not a vicious attacker[red-to]." instead;
	say "Touch's not [i]tons[r] couth." instead;

chapter examining

does the player mean doing something with location of the player: it is unlikely.

check xrooming astral altars: say "The altars are probably mostly for showcasing the tiles and stile." instead;

chapter throwing

understand the command "throw" as something new.

understand "throw [something preferably held] at [something]" as throwing it at.

chapter exiting

Direction viability is a direction based rulebook.

definition: a direction (called dir) is viable: [ note to self: NEVER USE NOUN. Always use dir. ]
	follow the direction viability rules for dir;
	if the rule succeeded, yes;
	if the rule failed, no;
	if the room dir of location of player is nowhere, decide no;
	decide yes;

a direction viability rule for a direction (called dir) when location of player is self id fields:
	if dir is north:
		if ever-failed-crosse is true and player does not wear beard, the rule fails;

a direction viability rule for a direction (called dir) when location of player is emptiness sepiments:
	if dir is north or dir is inside:
		if drapes are moot, the rule succeeds;
		the rule fails;

a direction viability rule for a direction (called dir) when location of player is stiller trellis:
	if dir is east:
		if trel-priv is moot, the rule fails;
		if scraped wall is in Stiller Trellis, the rule fails;

a direction viability rule for a direction (called dir) when location of player is elm train terminal:
	if dir is east and not beast-prepared, the rule fails;

a direction viability rule for a direction (called dir) when location of player is leis isle:
	if dir is east and leis-isle-transport > 0, the rule succeeds;

to decide whether beast-prepared:
	if player does not have tulip, no;
	if player does not have sheath and player does not have noise bag, no;
	if player has noise bag and noise bag does not contain words, no;
	if player has sheath and sword is not in sheath, no;
	if controls are not in gin nope opening, no;
	yes;

the can't exit when not inside anything rule is not listed in any rulebook.

check exiting (this is the check for default exit rule):
	if number of viable directions is 0:
		abide by the find-nowhere-text rule;
		if outside-text of location of player is not empty, say "[outside-text of location of player][line break]" instead;
		say "There appears to be no way to [b]EXIT[r], so this is likely a sort of puzzle room. I should really have a less generic message here." instead;
	if number of viable directions is 1:
		let rvd be random viable direction;
		say "The only way to exit is [rvd], so let's go that way.";
		try going rvd instead;
	say "You have more than one way to leave: [list of viable directions]. So you'll need to specify which one." instead;

chapter buying

rule for supplying a missing noun while buying:
	if player is in Fo Real Florae:
		if heaths are in Fo Real Florae:
			now noun is heaths;
		if begonias are in Fo Real Florae:
			now noun is begonias;

check buying:
	if noun is player, say "Silly." instead;
	if player has noun, say "You already have that." instead;
	if location of player is subsite, say "This is not exactly a shopping mall." instead;
	if location of player is Notices Section:
		if noun is gateman, say "Just ask him for what he knows. Knowledge is free." instead;
		say "Awfully generous, but your quest-aiding items here are all free." instead;
	if noun is tulip and nerds are touchable, say "You have nothing to barter with. Either find what to ask, or outflank them somehow." instead;
	if location of player is Trips Strip, say "Your job is presumably to raise property values here, not take advantage of them." instead;
	if player is in Fo Real Florae:
		if noun is brocade, say "[if torn cue is examined]The torn cue said i[else]I[end if]t is free." instead;
		if noun is heaths or noun is begonias, say "You don't have any money[if fairy-worthy is true], and the faeries don't seem to want to barter any more[else], but perhaps if you gave the faeries a flower, they would be willing to trade[end if]." instead;
		if fairy-worthy is true:
			if player has heaths or player has sheath or player has begonias or player has noise bag, say "You've already traded them a favor. Plus, you have no money." instead;
			say "You can just take the flowers you want, since you did the faeries a favor.";
		else:
			say "These magic faeries are above such unmagical things as currency.";
	if peasant is touchable and noun is hay, say "Maybe there's something you can give him, instead." instead;
	if peasant is touchable and noun is peasant, say "Things aren't THAT feudal here." instead;
	if noun is dry cake, say "It's free to invited guests. But the only way to be invited is to have money. Which you don't." instead;
	say "You don't have a lot of money in [this-game]. Maybe you can [b]GIVE[r] someone an item, to trade, but buying isn't necessary." instead;

chapter pushing and pulling

this is the push-or-pull rule:
	if noun is controls, say "[if controls are in gin nope opening]No need to fiddle further[else]They're not hooked up to anything[end if]." instead;
	if noun is signers ingress, say "It's an automatic door." instead;

check pushing:
	if noun is the player, say "You push yourself to find the next word that works." instead;
	if noun is tip, try switching on gadget instead;
	[if player has the noun:
		say "It's not pushable." instead;]
	if noun is panel and panel is part of the silo, say "Brute force is no way to figure what the panel does! Well, you could try mental brute force..." instead;
	if noun is black door:
		if silo is touchable, try putting black door on silo instead;
		say "Unfortunately, you don't have anything to push the door onto. Yet." instead;
	if noun is missile:
		if silo is touchable, try inserting missile into silo instead;
		say "Unfortunately, you don't have anything to push the missile into. Yet." instead;
	if noun is panel, say "You give a few hups but fail to push[if panel is part of the silo]. Probably better to put it on something[else]. Maybe push the buttons individually[end if]." instead;
	if noun is drapes, say "The drapes almost seem to enfold you as you get close. You may need to cut your way through." instead;
	say "You give a few hups but fail to push." instead;

check pulling:
	abide by the push-or-pull rule;
	if noun is the player, say "Whew! All this wordplay makes you nervous." instead;
	if player is in Potshot Hotspot and red bull is in Potshot Hotspot, say "No, not pull, something even shorter." instead;
	if player is in Means Manse, say "No, something much more passive." instead;
	say "Ullp! You don't need to [b]PULL[r] anything in [this-game], though a synonym may help somewhere...and [b]PUSH[r] may be marginally useful." instead;

chapter fireing

fireing is an action applying to one thing.

understand the command "fire [something]" as something new.

understand "fire [something]" as fireing.

carry out fireing:
	if noun is missile:
		if missile is touchable:
			if panel is touchable:
				if panel is not part of silo, say "Maybe if you plugged that panel in." instead;
				say "That panel probably holds the key to firing the missile." instead;
			say "You probably need some circuitry or machinery for that." instead;
	if noun is shotgun, try shooting noun instead;
	if noun is emitter, try switching on emitter instead;
	say "No, you were the one who got fired[if player has shotgun]. You may want to [b]SHOOT[r] something, though. And not just because you got fired. I hope not[end if].";
	the rule succeeds;

chapter inserting

check inserting into:
	if second noun is trel-priv, say "Maybe you mean to put something in the wall instead?" instead;
	if second noun is silo:
		if noun is panel or noun is black door, try putting noun on second noun instead;
	if noun is notepad, say "Goodness, no, you might leave it there." instead;
	if second noun is bubble or second noun is bucket or second noun is shell, say "But it's already been sorted. No need to muck it up." instead;

the straw-hay insert rule is listed before the can't insert what's not held rule in the check inserting it into rules.

the straw-hay put-on rule is listed before the can't put what's not held rule in the check putting it on rules.

check inserting it into (this is the straw-hay insert rule):
	if second noun is cask:
		ignore the can't insert what's not held rule;
		if cask is closed, say "The cask is probably for holding liquids, and it's not open. Well, not yet." instead;
		if noun is straw or noun is hay:
			say "Too messy--it'd stick out and fall out. [run paragraph on]";
		say "The cask is really made to hold liquids." instead;
	if second noun is sack:
		ignore the can't insert what's not held rule;
		if noun is in sack, say "It already is." instead;
		if noun is missile or noun is panel or noun is door, say "That wouldn't fit in the sack[if straw is in sack or hay is in sack], even if the sack were empty[end if]." instead;
		if noun is not straw and noun is not hay, say "[if straw is in sack or hay is in sack]You've already got something in there[else]The sack's probably better for stuff that might spill[end if]." instead;
	if noun is black door or noun is panel:
		ignore the can't insert what's not held rule;
		try putting noun on second noun instead;
	if noun is missile:
		ignore the can't insert what's not held rule;
		if second noun is not silo:
			if noun is black door and black door is part of the silo, try inserting missile into silo instead;
			say "The missile needs to fit in or on a big structure." instead;
	if noun is hay or noun is straw:
		ignore the can't insert what's not held rule;
		if second noun is silo, say "Farming isn't what you need to do, here[if door is not part of silo], and anyway, you've got no door to schlep things through." instead;
		if noun is straw:
			if second noun is scraped wall, say "Straw would be perfectly sensible, to make the scraped wall impermeable. It seems to indicate the need for a hallway, though. Maybe another material, without an S, T or R." instead;
			if second noun is not sack, say "The straw is probably more useful thatching a cottage or something. You haven't seen any, yet." instead;
	if second noun is silo:
		if noun is not missile and noun is not panel and noun is not door, say "[that-those-do of noun] belong in or on the silo." instead;
	if second noun is cafe face:
		if gin nope opening is touchable, try putting noun on gin nope opening instead;
		say "[if player is on cafe face]There's no place something'll stick on the cafe face this high up. Well, not yet[else]The bottom of the cafe face doesn't seem like a useful place to stick things[end if]." instead;

to say that-those-do of (th - a thing):
	say "[if noun is plural-named]That doesn't[else]Those don't[end if]"

check putting on scraped wall: try inserting noun into scraped wall instead;

check inserting it into (this is the sack-into-wall rule):
	if noun is sack:
		if number of things in sack is 1:
			say "I'm assuming you mean what's in the sack.";
			try putting a random thing in the sack on the noun instead;
		else if number of things in sack is 0:
			say "The sack wouldn't look right, there.";
		else:
			say "[bug-report] Should not have 2 things in the sack." instead;

chapter pouring (mostly for cask)

pouring is an action applying to one visible thing.

understand the command "pour [any thing]" as something new.

understand "pour" as pouring.

rule for supplying a missing noun while pouring:
	if player has cask, now noun is cask;
	say "You don't really have anything you can pour.";
	reject the player's command;

understand "pour [any thing]" as pouring.

does the player mean pouring the oils when player is in Sacred Cedars: it is very likely.

does the player mean filling the cask: it is very likely.

carry out pouring:
	if player has sack and cask is abrod, say "Fluids would leak through the sack. The cask you had would be better." instead;
	if player does not have cask, say "Nothing to pour anything into." instead;
	if noun is cask and oils are not in cask, say "Nothing in the cask to pour." instead;
	if noun is soil and oils are in cask and soil is not touchable, try fliptoing soil instead;
	if noun is silo and oils are in cask and soil is in moor, try fliptoing silo instead;
	if noun is not touchable, say "You can't see any such thing." instead;
	if noun is oils and location of player is Sacred Cedars:
		if oils are in cask, say "[cask-full]." instead;
		try filling cask instead;
	if noun is oils or noun is cask, say "You need to decide what you want the oils to be before pouring. Don't worry, there are only twenty-odd possibilities. And some don't make sense." instead;
	if noun is spout:
		say "(I assume you mean the oils into the cask.)";
		try filling the cask instead;
	say "You can't pour that!" instead;

to say cask-full: say "The cask is already full of oils"

chapter taking

check taking scenery: say "You don't need to take [the noun]. Most of what you can take should be listed in a paragraph on its own, and if you need scenery, there is probably a puzzle to get it." instead;

check taking:
	if noun is Spam and Spam is part of sandwich:
		say "You peel the meat from the bread and take both.";
		now player has bread;
		now player has Spam;
		moot sandwich;
	if noun is in fridge, say "If it's in the fridge, it's probably someone's property. Even if it's someone you don't know or like[if noun is grits or noun is pancake], and even though you made it edible[end if]." instead;
	if location of player is Fo Real Florae:
		if noun is brocade:
			if fairy-worthy is false:
				say "The faeries buzz around for a bit, peeved at your boldness. 'Well, maybe you will do something for us some day.'";
			else:
				say "'It is the least we can do for you! Thank you for helping us!'";
			say "[line break]The FREE TO [if fairy-worthy is true]FREEDOM FIGHTERS[else]FREELOADERS[end if] torn cue by the brocade vanishes as you take it. Nice magic touch, that."; [bold-ok]
			moot torn cue;
			now player has brocade instead;
		if noun is begonias:
			if player has heaths or player has sheath, say "[greedy-greedy]" instead;
		if noun is heaths:
			if player has begonias or player has noise bag, say "[greedy-greedy]" instead;
		if fairy-worthy is false, say "The faeries buzz around a bit. 'Bring us a gift first, human! A loner? No real loaner!' they cry." instead;

chapter taking inventory

section inventory stubs

definition: a thing (called itm) is regspecial:
	if itm is warpable, decide no;
	if itm is part of the phail phial or itm is part of the gadget or itm is part of the dope tan notepad or itm is part of the show hows tag or itm is pockets, decide no;
	decide yes;

check taking inventory:
	if the first thing held by the player is nothing, say "Not very 'in.'" instead;
[	say "Regspecial [list of regspecial enclosed by player].";
	say "Warpable [list of warpable things enclosed by player].";]
	say "Item time! [run paragraph on]";
	if mrlp is Ordeal Loader or mrlp is stores, continue the action;
	if the number of regspecial things enclosed by the player is 0:
		say "You have nothing from this region in particular.";
	else:
		now all things enclosed by player are unmarked for listing;
		now all regspecial things carried by player are marked for listing;
		if player carries Mean Old Mondale Doleman, now Mean Old Mondale Doleman is unmarked for listing;
		if player carries oils2, now oils2 are unmarked for listing;
		say "In this region you have found:[line break]";
		list the contents of the player, with newlines, indented, including contents, giving inventory information, with extra indentation, listing marked items only;
	now all things enclosed by player are unmarked for listing;
	now all warpable things enclosed by player are marked for listing;
	say "Your general tools include:[line break]";
	list the contents of the player, with newlines, indented, including contents, giving inventory information, with extra indentation, listing marked items only;
	if number of things worn by player > 0, say "You are also wearing [a list of things worn by player].";
	if warts are touchable, say "Those warts are still bugging you, too.";
	the rule succeeds;

after printing the name of the emitter while taking inventory: say " ([if emitter is angstgnatted]full of angst gnats[else if bastion-evac is false]full. Uh, you think[else]nothing inside[end if])".

after taking inventory:
	if stickyhanded is true and player is in Bassy Abyss, say "You also have sticky hands." instead;
	if xray-vision is true:
		say "The aftertaste from the salient saltine remains. If you stare at things, they can become--different. Perhaps you could [b]XX[r] something that's stumping you.";
	continue the action;

chapter tying / putting

check tying hoses to something: say "They are too thick to bend and twist and tie to anything." instead;

check tying something to hoses: say "They are too thick to bend and twist and tie to anything." instead;

before putting on (this is the put tautology rule) :
	if noun is second noun, say "[tau]" instead;

to say tau: say "Tautology?! Got ya, lout!".

check examining the panel:
	if panel is not part of the silo, say "It looks kind of electrical. It doesn't seem to have wires, so hopefully you can just slip it where it needs to go." instead;
	say "There are two buttons, on the left ([if trees button is not moot]TREES[else]STEER[end if]) and right ([if shoot button is not moot]SHOOT[else]HOOTS[end if] Both are an important shade of maroon, and you'll probably have to push them to figure what they do." instead; [bold-ok]

tie-warn is a truth state that varies.

the check for big quest item attachment rule is listed first in the check tying it to rules.

check tying to (this is the check for big quest item attachment rule):
	if tie-warn is false:
		ital-say "while [this-game] generally maps [b]ATTACH[i] or [b]TIE X TO Y[i] to [b]PUT X ON Y[i] or [b]PUT X IN Y[i], the [b]PUT[i] syntax is generally recommended, since it is more specific.";
		now tie-warn is true;
	if noun is missile or noun is hay or noun is straw or noun is panel or noun is black door, try inserting noun into second noun instead;
	if second noun is missile or second noun is hay or second noun is straw or second noun is panel or second noun is black door, try inserting second noun into noun instead;
	if second noun is cafe face:
		if gin nope opening is not touchable, say "[if player is on cafe face]The cafe face doesn't have any sort of recess[else]Sticking something to the steel wool would do very little[end if]." instead;
		if player is not on cafe face, say "You'd need to climb the cafe face first." instead;
		try inserting noun into gin nope opening instead;
	if second noun is gin nope opening, try inserting noun into gin nope opening instead;
	continue the action;

check putting a thing on the cafe face:
	if player is on the cafe face:
		if gin nope opening is off-stage, say "The neon pig is in the way." instead;
		try putting noun on gin nope opening instead;
	say "Something might stick, but it wouldn't do much there." instead;

chapter entering

rule for supplying a missing noun when entering:
	if or do door is touchable:
		now noun is or do door;
	else if number of touchable portals is 1:
		now noun is random touchable portal;
	else if mis send dimness is touchable:
		now noun is mis send dimness;
	else if player is in self id fields and corses crosse is in self id fields:
		now noun is corses crosse;
	else:
		say "I couldn't determine anything to enter. This may be the fault of imprecise code, so you may have to stat what you specifically want to enter.";
		reject the player's command;

chapter kicking-attacking

kicking is an action applying to one thing.

understand the command "kick [something]" as something new.

understand "kick [something]" as kicking.

carry out kicking:
	if noun is beast, say "Maybe you know beast-fu in real life. But I'd advise using a weapon." instead;
	try attacking the noun instead;
	the rule succeeds;

the block attacking rule is not listed in any rulebook.

check attacking:
	if noun is the player:
		if player has shotgun, try attacking the player instead;
		say "I hope it's not the puzzles that made you try this." instead;
	if noun is not touchable, say "You don't have any weapon with that sort of range." instead;
	if noun is gadget, say "Boy, if that's how you treat stuff that's there to [b]HELP[r] you..." instead; [general]
	if noun is knot, say "You fail to tonk it." instead;
	if noun is phial, say "The lube would ooze out and be useless." instead;
	if noun is mega ant, say "The ant spits, and you back off. You don't have a weapon, and you can't see any, even in the cabinet." instead; [Ordeal Loader]
	if noun is doll house, say "Some hero(ine) you'd be, vandalizing a doll house." instead;
	if noun is gateman, say "But he's here to help you. And he's, uh, bigger than you, too." instead;
	if noun is sandwich, try opening noun instead; [forest]
	if noun is spread, try cutting noun instead;
	if noun is a disguise-piece, say "You are not the fashion police, alas." instead;
	if noun is bucket, say "You give the bucket a good kick, but fortunately [this-game] is about anagrams and not figures of speech." instead;
	if location of player is Frost Forts, try shooting the noun instead;
	if noun is wolves and player has shotgun, try shooting wolves instead;
	if noun is large packet, say "Peck at packet? Ack, pet! (Once your meal is ready, you'll do this.)[paragraph break]" instead; [sortie]
	if noun is fridge, say "If this were a graphic game, a RED GIF would pop up to stop you. See what I did there?" instead; [bold-ok]
	if noun is scraped wall, say "Hm, pounding on it doesn't help[if hay is part of scraped wall]. You've filled it, though, and maybe you can change it more easily now[else]. The reading on the trellis seems to indicate you need to fill it first[end if]." instead;
	if noun is tall trio, say "Even this threesome would leave you smote here." instead;
	if noun is woeful pat, say "Violence against the English language should not beget physical violence." instead;
	if noun is poses posse, say "Their inanity inspires violent fantasies, but no.'" instead; [metros]
	if noun is neon pig, say "No poking a pig even if your name's Penny." instead;
	if noun is nerds, say "[one of]'Def-con: co-fend!' they yell, seeing you tense up. [or][stopping]They're just annoying and superior, not evil." instead;
	if noun is the signers ingress, say "As you rush at the door, you notice one of the stick figures in the tech etch attacking a door as big and solid as this one! To save your self-esteem, you turn away and forget what you saw." instead;
	if noun is mattress:
		if bump is part of the mattress, say "You might to better to look at that bump before disturbing it." instead;
		say "Hey, it's not the mattress's fault it only yielded a lousy termite emitter." instead;
	if noun is night thing, say "Just getting close to it fills you with terror. How could you attack from afar?" instead;
	if noun is deadbeat, say "He doesn't deserve to be beat dead. Or beat-up. Or upbeat, but that's another matter.[paragraph break]Plus it'd be more painful for people to have to listen to his version of the fight." instead;
	if noun is tomato, say "Why not get it all over someone, or something, else instead?" instead;
	if noun is faeries:
		say "They might spray you back with disaster asterids.";
	if noun is siren, say "It's surprisingly resilient, and your [if sword is touchable and stickyhanded is true]sword[else]fist[end if] bounces off it. Plus, it's probably hooked up to a hidden alarm that sounds even worse." instead;
	if noun is beats:
		if player carries words, say "You have words, but they're drowned out by the beats." instead;
		if player carries sword, say "The beats seem to pulse harder, as your sword-swinging looks remarkably like some techno dance." instead;
		say "You flail your weaponless hands at how annoying the beats are." instead;
	if noun is beast:
		if player has noise bag, say "You have nothing that can physically attack the beast." instead;
		if player has sheath:
			if player has sword, metro-victory instead;
			if sword is touchable:
				try taking sword;
				if player has sword, metro-victory instead;
				do nothing instead;
		if player has sword, metro-victory instead;
		say "You are stuck. [bug-report] Sorry it's so near the end of the game. All I can do is ask your help to weed it out." instead;
	if noun is riot, say "You don't want to see the mob act in combat." instead; [resort]
	if noun is red bull burdell, say "No chance of even a few slick licks. Maybe you have one last bit of verbal trickery. Or maybe you'll have to do something, too." instead;
	if noun is toe, say "He could pull it back quickly enough." instead;
	if forest is solved and metros is solved, say "You already used all the violence you need in [this-game]." instead;
	if forest is solved or metros is solved, say "There's one more thing to use violence on in [this-game], but not [if noun is plural-named]those[else]that[end if]." instead;
	say "It'll be clear when you need violence. And how. Hopefully. You won't, often." instead;

book more irregular verbs

chapter danceing

danceing is an action applying to nothing.

understand the command "dance" as something new.

understand "dance" as danceing.

carry out danceing: say "You won't get caned for that, but it isn't constructive." instead;

chapter filling

filling is an action applying to one thing.

understand the command "fill [something]" as something new.

understand "fill [something]" as filling.

caskfillings is a number that varies. caskfillings is usually 0.

carry out filling:
	if mrlp is not sortie, say "You don't need that verb for this region. Though, if it makes sense to use it, let me know via email." instead;
	if noun is scraped wall:
		if player has sack:
			if hay is in sack, try inserting hay into scraped wall instead;
			if straw is in sack, try inserting straw into scraped wall instead;
		say "You don't have any sort of stuffing to put in the wall." instead;
	if noun is fridge, say "You don't need a separate storage space." instead;
	if sack is not touchable and cask is not touchable, say "You don't see any containers." instead;
	if noun is sack:
		if straw is in sack or hay is in sack, say "You already have something in there." instead;
		if straw is touchable, try inserting straw into sack instead;
		if cask is touchable, try inserting hay into sack instead;
	if location of player is not cedars:
		if oils are in cask, say "The cask is full already." instead;
		say "You may have to be more specific. Try [b]PUT X IN Y[r] instead." instead;
	if noun is sack, say "The oils would leak out of the sack." instead;
	if noun is oils:
		if oils are in cask, say "You have enough." instead;
		say "You want to fill a container that can hold the oils." instead;
	if noun is not cask, say "You need something solid to pour the oils into." instead;
	if silo is in moor and soil is in moor, say "A voice. It must be Lois. 'WIN,' she whines[one of]. You won't be getting any more oils[or][stopping]." instead;
	if oils are in cask, say "[cask-full]." instead;
	say "Gainly laying the cask under the spout, you pour in some oils.";[check for 3rd time]
	increment caskfillings;
	if caskfillings is 2:
		say "[line break]A voice calls SO NOW HALLS SHALL SWOON. You're pretty sure it has a particular one in mind. You hope you've gotten what you need.";
		now rpos of oils is 1;
		now cert-text of oils is "-[ast]I[ast]L[d1]";
		now rect-text of oils is "S[d1][d1][ast]O";
		now rgtext of oils is "[rcn][gc][gc][rc]";
	else if caskfillings is 1:
		now player has oils2;
	now oils are in cask;
	the rule succeeds;

the oils2 are a privately-named thing. printed name of oils2 is "oils". description is "You shouldn't see this description of a dummy item."

section switching

the can't switch on unless switchable rule is not listed in any rulebook.

check switching on:
	if noun is steer button or noun is shoot button or noun is trees button or noun is hoots button, try pushing noun instead;
	if noun is odor, say "You're not sure how to switch that odor. You wonder if you need to switch it a little, or a lot." instead;
	say "[if noun is flippable]You'd like to, but you don't see how, yet[else]You feel some resistance, as if you can't switch [that-those of noun][end if]." instead;

to say that-those of (p - a thing): say "[if p is plural-named]those[else]that[end if]"

chapter following

following is an action applying to one thing.

understand the command "follow [something]" as something new.

understand "follow [something]" as following.

carry out following:
	if noun is the player, say "Tautological." instead;
	if noun is vacate caveat or noun is passage: [ordeal loader]
		say "You duck inside the passage.";
		try going inside instead;
	if noun is banner, try going east instead;
	if noun is gy or noun is line of no life, try going north instead; [forest]
	if noun is the beats: [metros]
		if player is in Elm Train Terminal, try going east instead;
		say "No telling where they're coming from." instead;
	if noun is riot or noun is protest, say "They aren't convincing enough to make you hate yourself." instead; [resort]
	if noun is potters, say "Yours is the way of the adventurer, not the artist." instead;
	say "[if noun is a person]They don't[else]That doesn't[end if] seem to be going anywhere.";
	the rule succeeds;

chapter playing

playing is an action applying to one thing.
blowing is an action applying to one thing.

understand the command "play [something]" as something new.
understand "play [something]" as playing.

understand the command "blow [something]" as something new.
understand "blow [something]" as blowing.

does the player mean playing the bugle: it is very likely.
does the player mean blowing the bugle: it is very likely.

carry out blowing:
	if noun is not bugle, say "[b]BLOW[r] only functions as a synonym for [b]PLAY[r], as in playing an instrument, in [this-game]." instead;
	try playing noun instead;

carry out playing:
	if noun is bulge, say "You can't quite play the bulge--not in its current form. But maybe a small change? Like when you changed the odor to a door?" instead;
	if noun is not bugle, say "That's not an instrument you can play." instead;
	if player is in Notices Section, say "[if mega ant is in Notices Section]The mega ant is not moved[else]Nothing seems to happen to the gateway[end if][if bugle-played is true]. Maybe you need to do something different than play the bugle here[end if]." instead;
	if player is not in Rested Desert, say "You should not have the bugle at this point, so this is a [bug-report]" instead;
	if bugle-played is true, say "Nothing further happens." instead;
	say "The note from the bugle causes the door to swing back and forth, [if bolt is moot]just as when you got rid of the bolt[else]even with the bolt in place. You can probably enter now[end if].";
	now bugle-played is true;
	the rule succeeds;

chapter lifting

lifting is an action applying to one thing.

understand the command "lift [something]" as something new.

understand "lift [something]" as lifting.

carry out lifting:
	if noun is great grate or noun is getaway, try opening the noun instead;
	say "(I'm assuming you meant taking it.)";
	the rule succeeds;

chapter unfolding

unfolding is an action applying to one thing.

understand the command "unfold [something]" as something new.

understand "unfold [something]" as unfolding.

carry out unfolding:
	if noun is poem and poem is folded, say "The poem deserves obscurity. Folding it out of view was a good first step." instead;
	if noun is drapes, say "They are much too heavy and thick." instead;
	say "You don't need to, or you can't." instead;
	the rule succeeds;

chapter pating

pating is an action applying to one thing.

understand the command "stroke/pet/pat [something]" as something new.

understand "stroke [something]" and "pet [something]" and "pat [something]" as pating.

carry out pating:
	if noun is spout, say "You sense that you can fill the cask by placing it under the spout. Having faith and all." instead;
	if noun is goat, say "The goat bleats and pushes your hand away with its hoof. It's too tired for that nonsense." instead;
	if noun is shrub, say "It's a shrub, not the real thing, and it's a bit pointy. Someone took time to create it." instead;
	if noun is wolves, say "Man, you must really like dogs, or something. Or trying to break text adventure games." instead;
	say "It's not couth to touch." instead;
	the rule succeeds;

chapter folding

folding is an action applying to one thing.

understand the command "fold [something]" as something new.

understand "fold [something]" as folding.

chapter biteing

biteing is an action applying to one thing.

understand the command "bite [something]" as something new.

understand "bite [something]" as biteing.

carry out biteing:
	if noun is cabinet, say "The cabinet doesn't deserve that. Plus, no good surface." instead;
	if noun is toe, say "It'd be hard to hold in your teeth." instead;
	if noun is saltine, say "It'll only take one bite to [b]EAT[r]. You can't save half for later and get another hint." instead;
	try eating noun instead;

chapter climbing

the block climbing rule is not listed in any rulebook.

check climbing:
	if noun is swing, say "No silly games here, please! This is a Very Serious text adventure!" instead;
	say "Most of the time, you won't need to climb objects, unless you can see something on them." instead;

chapter instructionsing

instructionsing is an action out of world.

understand the command "help/info/instructions" as something new.

understand "help" and "info" and "instructions" as instructionsing.

carry out instructionsing:
	say "[if location of player is Busiest Subsite]There's not much to do here, but if you [b]EXAMINE[r] different things may give you a clue what's going on[else if cur-score of Ordeal Loader is 0]You need to do something with the odor[else]What you did with the odor will clue the rest of the game[end if]. This is a part of most of the puzzles in the game, with some item-munging, but you'll have to do other things, too.";
	if first-hint-check is false:
		ital-say "if you want actual hints, you may wish to try [b]HINT[i] or [b]HINTS[i]. You also may wish to [b]HINT[i] a specific object, as generic hinting may point you to something you don't want spoiled yet.";
	the rule succeeds;

chapter knocking

knocking is an action applying to one thing.

understand the command "knock [something]" as something new.
understand the command "knock on [something]" as something new.

understand "knock [something]" as knocking.
understand "knock on [something]" as knocking.

does the player mean knocking the black door: it is very likely.
does the player mean knocking the cabinet: it is very likely.
does the player mean knocking the OR DO door: it is very likely.
does the player mean knocking the signers ingress: it is very likely.
does the player mean knocking Corses Crosse: it is very likely.
does the player mean knocking a portal:
	if cabinet is touchable, it is unlikely;
	it is very likely;

carry out knocking:
	if noun is a portal, say "Better just to try to enter." instead;
	if noun is cabinet, say "That's potentially an act of violence." instead;
	if noun is black door, say "[if black door is part of silo]Nobody answers, unsurprisingly[else]How polite! And ineffective[end if]." instead;
	if noun is OR DO door, say "[if ordo-opened]You don't need to. You can just go in[else if player has bugle]It's a bit awkward knocking with the bugle in your hand[else]You aren't sure where to knock. The bulge and bolt get in the way. Maybe you can get rid of one of them[end if]." instead;
	if noun is signers ingress, say "[if player has tulip]You don't need to go back[else if Esoteric Coteries are visited]Nah, just walk in[else]Weird. It doesn't make any noise. Or the noise drowns quickly. You suspect the door's intended to keep people out, though[end if]." instead;
	if noun is Corses Crosse, say "A good way to scrape your knuckles, seeing how quickly it turns." instead;
	say "Knock, knock. Who's there? Conkk, conkk." instead;

chapter grinding

grinding is an action applying to one thing.

understand the command "grind" as something new.

understand "grind [something]" as grinding.

carry out grinding:
	if canister is touchable, try inserting noun into the canister instead;
	say "There appears to be nothing that can grind anything here." instead;

chapter untieing

untieing is an action applying to one thing.

understand the command "untie [something]" as something new.

understand "untie [something]" as untieing.

carry out untieing:
	if noun is heaths or noun is stems, say "They're actually not tied, though they seem like they should be. Hmph. Magic." instead;
	if noun is ropes, say "You have better things to do than take apart potentially useful ropes. Like getting up that [p-s] over there." instead;
	if noun is swing, say "The knots where it is tied to the tree are too high up." instead;
	say "That doesn't seem tied to anything." instead;

chapter swearing

check swearing obscenely: say "[one of]No [']scusing on cussing[or]Swearing? [']s wearing[cycling][plus-check]." instead;

to say plus-check: if Notices Section is visited, say "[one of]. Plus, I checked. Or had someone more vulgar than me check. Nothing[or][stopping]";

check swearing mildly:
	if the player's command matches the text "drat", say "Don't dart to such talk." instead;
	try swearing obscenely instead;

chapter xyzzying

xyzzying is an action applying to nothing.

understand the command "xyzzy" as something new.

understand "xyzzy" as xyzzying.

carry out xyzzying:
	say "[one of]What a mess! Hard to do anything with that[if goat is off-stage]. You'll see why[end if].[or]This sort of game, I can only make lame meta-jokes with that[if cur-score of Ordeal Loader > 0]...you should've figured that out[else], and if you knew why, that'd be sort of a spoiler[end if].[or]Testing all 29 possibilities...just to make sure...nope.[or]Testing the 119 possibilities...including duplicates...[wfak]...[wfak]...[wfak]...[wfak]...[wfak]...[wfak]...[wfak]...[wfak]...[wfak]...[wfak]nope. You happy now?[or]If you're looking for jokes, that's the best I can do.[stopping]";
	the rule succeeds;

chapter shooting

shooting is an action applying to one thing.

understand the command "shoot/fire at/ [something]" as something new.

understand "shoot at [something]" as shooting.
understand "shoot [something]" as shooting.

understand "fire at [something]" as shooting.

does the player mean shooting the wolves when the wolves are touchable: it is very likely.

does the player mean shooting the hoots button when the hoots button is touchable: it is very likely.

Rule for clarifying the parser's choice of hoots button when shooting: do nothing.

carry out shooting:
	if noun is hoots button:
		say "You shoot the hoots button with some of your magic.";
		try fliptoing shoot button instead;
	if noun is emitter, try switching on the emitter instead;
	if noun is shotgun, say "Mention what you want to shoot with the gun." instead;
	if player does not have shotgun, say "No gun." instead;
	if noun is drapes, say "[if silver is off-stage]If you had ammo, y[else]Y[end if]ou'd probably want to shoot something more dangerous than the drapes." instead;
	if noun is the player, say "Oh dear. Did the puzzles really lead you to that? I'm so sorry[if shotgun is not loaded], and you didn't even get to load the gun[end if]!" instead;
	if shotgun is not loaded, say "Your shotgun is not loaded." instead;
	if noun is dice, say "Gambling? At a dramatic point in the narrative like THIS?!" instead;
	if noun is asp:
		say "Using a shotgun blast on the red asp would be overkill. The asp might be too narrow a target, anyway. Perhaps a shotgun is the wrong tool for the job here." instead;
	if noun is wolves:
		say "Blam! Some part of the shotgun you couldn't see carves the silver bullet into sixths. Each flies off in a slightly different direction--taking out the wolves. The poison works quickly on them, and the Frost Forts and iced dice begin to melt quickly with a 'WHAT? THAW? HAWT!' Behind them, you see the strip. You walk back there.[paragraph break]The lupine lineup is no more, thanks to your adept hit in the death pit![paragraph break]You remember seeing the word [b]LOGOI[r] in an igloo that melted--you wonder if you could've said it to save yourself the whole trip in an alternate universe."; [bold-ok]
		reg-inc;
		solve-region Forest;
		now wolves are off-stage instead;
	if noun is vowels, say "For someone who I'm guessing likes text adventures, that'd be kind of out of character.[paragraph break]Plus, they aren't really attacking you. Yet." instead;
	say "That'd be wasting firepower.";
	the rule succeeds;

chapter peeling

the dont-peel-taken-River Ville rule is listed before the use-cur-liv rule in the does the player mean rulebook.
the dont-peel-taken-viler rule is listed before the use-cur-liv rule in the does the player mean rulebook.

test pe with "purloin chisel/gonear viler/rules/peel liver/peel liver"

peeling it with is an action applying to two things.

understand the command "chisel/pry/scrape/peel" as something new.

understand "peel [thing] with [thing]" as peeling it with.
understand "scrape [thing] with [thing]" as peeling it with.
understand "pry [thing] with [thing]" as peeling it with.

understand "livers" as the plural of a glopmeat.

does the player mean doing something with livers when a glopmeat is touchable: it is very unlikely.

rule for supplying a missing second noun while peeling: now the second noun is chisel.

does the player mean peeling the River Ville liver with when the player has the River Ville liver (this is the dont-peel-taken-River Ville rule): it is very unlikely.

does the player mean peeling the cur-liv with when the player does not have the cur-liv (this is the peel-untaken-liv rule): it is very likely.

does the player mean peeling the viler liver with when the player has the viler liver (this is the dont-peel-taken-viler rule): it is very unlikely.

does the player mean peeling the cur-liv with when the player has the cur-liv: it is very unlikely.

does the player mean peeling with the chisel: it is likely.

does the player mean doing something with the cur-liv (this is the use-cur-liv rule):
	if the current action is peelxing:
		if cur-liv is not in Flesh Shelf:
			it is very unlikely;
	if the current action is peeling with:
		if cur-liv is not in Flesh Shelf:
			it is very unlikely;
	it is likely.

check peeling sandwich with:
	say "You can just do so with your hands.";
	try opening sandwich instead;

to decide which glopmeat is the non-cur-liver:
	if cur-liv is River Ville liver, decide on viler liver;
	decide on River Ville liver.

does the player mean inserting into cur-liv: it is unlikely.
does the player mean putting on cur-liv: it is unlikely.
does the player mean tying to cur-liv: it is unlikely.

[does the player mean tying noun to itself: it is very unlikely.
does the player mean putting noun on itself: it is very unlikely.]

check putting a glopmeat on a glopmeat: try tying noun to second noun instead;

check inserting a glopmeat into a glopmeat: try tying noun to second noun instead;

check tying viler liver to River Ville liver: try tying River Ville liver to viler liver instead;

check tying River Ville liver to viler liver: say "You can't blend them that thoroughly by yourself. Some device might be more handy." instead;

carry out peeling it with:
	if second noun is not chisel, say "Wrong instrument." instead;
	if noun is show hows tag:
		say "That'd be one way to remove it. But it would probably disable the gadget.";
		ask-to-cut instead;
	if noun is not a glopmeat, say "[that-those-do of noun] need to be scraped. Try something stuck to something." instead;
	if noun is in canister, say "The chisel and the blades would have a big fight first." instead;
	if noun is not in Flesh Shelf, say "You already peeled it off." instead;
	say "Cr-r-r-r-k. The chisel successfully leverages the freezer-burned [noun] from the wall.";
	now player has noun;
	the rule succeeds;

peelxing is an action applying to one thing.

understand the command "peel/pry/scrape [thing]" as something new.

understand "peel [thing]" as peelxing.
understand "pry [thing]" as peelxing.
understand "scrape [thing]" as peelxing.

carry out peelxing:
	if noun is barcode, say "[dont-peel]" instead;
	if noun is sandwich, try opening sandwich instead;
	if player does not have chisel, say "You have nothing to peel anything with." instead;
	try peeling noun with chisel instead;

chapter stabing

stabing is an action applying to one thing.

understand the command "stab [something]" as something new.

understand "stab [something]" as stabing.

carry out stabing:
	if player has sliver:
		if noun is drapes or noun is spread, try cutting noun instead;
	if player has sword or sword is in sheath, try attacking the noun instead;
	say "Stab? With what you have? Bats." instead;
	the rule succeeds;

chapter kissing

understand "kiss [something]" as kissing.

check kissing:
	if noun is goat, say "The goat doesn't seem like it appreciates affection." instead; [start ordeal loader]
	if noun is the player, say "[if Notices Section is unvisited]Hooray for loving yourself even after losing your job. I guess.[else]You love yourself! You can do it! You can solve this game! You can...try something more serious next move![end if]" instead;
	if noun is wolves, say "Hit wolves with loves?!" instead; [start forest]
	if noun is Woeful Pat, say "'Please! I am not finished!'" instead; [start sortie]
	if noun is peasant, say "He has a wife. Sorry." instead;
	if noun is faeries, say "You're not their type." instead; [start metros]
	if noun is night thing or noun is beast, say "Yeah, love thy enemy, but only in thy heart." instead;
	say "Affection's so fine. Fact." instead;

chapter thinking

check thinking: say "Yes, I hope [this-game] makes you do a little of this, but nothing painful[one of] (if you need hints, [b]HINT[r] will work better, or [b]HINT OBJECT[r][or][stopping]." instead;

book stub verbs

chapter parseing

parseing is an action out of world.

understand the command "parse" as something new.

understand "parse" as parseing.

carry out parseing:
	process the gadget-okay rule;
	if the rule succeeded:
		say "The game is [if parse-output is true]already[else]now[end if] parsing output from the gadget.";
		now parse-output is true;

chapter spareing

spareing is an action out of world.

understand the command "spare" as something new.

understand "spare" as spareing.

carry out spareing:
	process the gadget-okay rule;
	if the rule succeeded:
		say "The game is [if parse-output is false]already[else]now[end if] not parsing output from the gadget.";
		now parse-output is false;

this is the gadget-okay rule:
	if show hows tag is moot:
		say "You pulled off the tag, so this isn't a relevant action.";
		the rule fails;
	if Notices Section is unvisited:
		say "You haven't gotten a gadget with results you can parse.";
		the rule fails;
	if player does not have gadget:
		say "You need[if player is not in Notices Section]ed[end if] the gadget for that.";
		the rule fails;
	the rule succeeds;

chapter accessing

accessing is an action out of world.

understand the command "access" as something new.

understand "access" as accessing.

carry out accessing:
	now sr-acc is whether or not sr-acc is false;
	say "Screen reader accessible text is now [on-off of sr-acc].";
	the rule succeeds;

chapter soning

spaces-on is a truth state that varies.

soning is an action out of world.

understand the command "son/space/space on/spaces on" as something new.

understand "son" and "space" and "space on" and "spaces on" as soning.

carry out soning:
	if sr-acc is true, say "Spaces are on by default with screen readers." instead;
	if player does not have gadget, say "This option means nothing until you have acquired the gadget." instead;
	say "Spaces in gadget output are [if spaces-on is true]already[else]now[end if] on.";
	now spaces-on is true;
	pad-rec-q "spaces";
	now son-nos is true;
	the rule succeeds;

chapter nosing

nosing is an action out of world.

understand the command "nos/no space/no spaces" as something new.

understand "nos" and "no space" and "no spaces" as nosing.

carry out nosing:
	if sr-acc is true, say "Spaces are on by default with screen readers." instead;
	if player does not have gadget, say "This option means nothing until you have acquired the gadget." instead;
	say "Spaces in gadget output are [if spaces-on is false]already[else]now[end if] off.";
	now spaces-on is false;
	pad-rec-q "spaces";
	now son-nos is true;
	the rule succeeds;

chapter uhhsing

quiet-warn is a truth state that varies.

uhhsing is an action out of world.

understand the command "uhhs" as something new.

understand "uhhs" as uhhsing.

carry out uhhsing:
	if talk-quiet is false:
		say "You already can hear random dialogue.";
	else:
		say "Random dialogue on again.";
	now talk-quiet is false;
	the rule succeeds;

chapter hushing

hushing is an action out of world.

understand the command "hush" as something new.

understand "hush" as hushing.

carry out hushing:
	if red bull burdell is touchable, say "[one of]Being the main villain, Red Bull Burdell's just too loud. But perhaps you can make the Talking Villain pay for his big mouth[or]You may want to pay attention to what Red Bull Burdell says every turn, since you can't zone it out[stopping]." instead;
	if talk-quiet is true, say "You already can't hear random dialogue." instead;
	now talk-quiet is true;
	say "[b]HUSH[r] on. [i][bracket]NOTE: you will still hear the first random dialogue in an area, but it will be noted as such.[close bracket][r][line break]" instead;

chapter angleing

angleing is an action out of world.

understand the command "harken/rk/kn/hkn/angle/angl/ange/hrn" as something new.

understand "angle" as angleing.
understand "angl" as angleing. [I made these 2 typos. I bet others will too.]
understand "ange" as angleing. [I made these 2 typos. I bet others will too.]
understand "harken" as angleing.
understand "hkn" as angleing.
understand "hrn" as angleing.
understand "rk" as angleing.
understand "kn" as angleing.

carry out angleing:
	if phial is not touchable, say "[reject]" instead;
	if phial is in cabinet:
		if lube-asked is true:
			try taking phail phial;
			if player does not have phail phial, say "[bug-report] Please let me know how this happened." instead;
		say "You'd need to get the phial from the cabinet first." instead;
	if player does not have phail phial, say "[reject]" instead;
	if player is in sf or player is in rf:
		if thorn is not touchable, say "There's a weird haze in each of the four directions--north, south, east and west. Perhaps something incorporeal is giving a clue." instead;
	if player is in frost forts and wolves are in frost forts, say "You won't need the blue lube to inform you that the wolves need to be dealt with. Un-magically." instead;
	if player is in means manse, say "It's glowing all around here. The [x ites] are glowing a bit differently, but everything's glowing. There must be more than one way to take care of business here." instead;
	say "You stare into the blue lube for a bit, then look around. ";
	let ANG be the number of angleable things;
	let see-others be false;
	if player is in nick:
		say "The nick glows all around. ";
		now see-others is true;
	else if player is in roomroom:
		say "The whole room seems lit up. ";
		now see-others is true;
	else if player is in moor:
		say "The whole moor seems lit up[if anapest is in moor], and the glow pulses with the anapest beat of the poem[end if]. ";
		now see-others is true;
	else if player is in Means Manse:
		say "All the exits seem lit up. ";
		now see-others is true;
	else if player is in bassy abyss:
		say "The blue glow pulses with the [if beast is touchable]beast's roars[else]beats[end if][if words are touchable], forming angry words[end if]. ";
		now see-others is true;
	if ANG is 0:
		if see-others is false, say "Nothing looks different here. Looks like you have very little magic to do[if warts are touchable], except for those warts[end if]." instead;
		say "There's nothing else, here, than the general glow." instead;
	if ANG > 0:
		say "You notice [if ang is 1]a weird haze[else]weird hazes[end if] around [the list of angleable things] for a few seconds[if warts are part of the player]. Your warts also tingle[end if].";
	now all angleable things are padded;
	h-check;
	unless "to do" is padded:
		say "[i][bracket]You decide to keep a running to-do entry in your notebook of stuff you haven't tackled, yet.[close bracket][line break]";
	pad-rec-q "to do";
	the rule succeeds;

after printing the name of an unnecc thing while angleing: say " (faint)". [unnecc is necessary (heh) because LLPish means you get a point for it, but flipping the attics/static infinitely is possible. ]

rule for printing the name of protest when angleing: say "protest"

definition: a thing (called amiun) is unnecc:
	if amiun is LLPish, yes;
	if amiun is attics or amiun is static, yes;
	if amiun is tool shed:
		if sprig is moot and spore is moot, yes;
	if amiun is scraped wall and amiun is not hayfilled, yes;
	if amiun is sprig or amiun is spore:
		if tool shed is moot, yes;
	decide no;

definition: a thing (called cand) is angleable:
	if cand is cake pan or cand is grist:
		if player is in kitchen and fridge is open and cand is in fridge, yes;
		no;
	if cand is anapest, decide no;
	if cand is beats, decide no;
	if cand is words:
		if player is not in Bile Libe and player is not in Bassy Abyss, decide no;
	if cand is cabinet and player is in Notices Section, decide no;
	if cand is poem and cand is not folded, decide no;
	if cand is r2, decide no;
	if cand is m2, decide no;
	if cand is t-n, decide no;
	if cand is warts, decide no;
	if cand is oils2, no;
	if cand is oils and oils are in Sacred Cedars, decide no;
	if cand is heaths:
		if player has begonias or player has noise bag, decide no;
	if cand is begonias:
		if player has heaths or player has sheath, decide no;
	if cand is touchable and cand is flippable:
		if cand is not flipped-yet or cand is protest or cand is sliver, decide yes;
	decide no;

to h-check:
	if h-short-told is true, continue the action;
	if the player's command matches "angle":
		increment h-short;
	if the player's command matches "glean":
		increment h-short;
	if h-short > 4 and location of player is not Notices Section:
		say "[line break]After this vision, you shake your head a bit on seeing yourself taking six foot-high letters labeled [b]ANGLE[r] and crumpling them into [b]AN[r]. Then you do the same for [b]GLEAN[r], which folds to [b]GL[r]. (Fourth wall time, to be clear--you can use four abbreviations, now.)";
		now h-short-told is true;
		pad-rec "macros";

h-short is a number that varies. h-short-told is a truth state that varies.

chapter point / opt in / no tip

to set-optin-notip (ts - a truth state):
	say "You are [if ts is point]already[else]now[end if] seeing extra hints when you guess the right collection of letters. ";
	say "[if ts is false][b]OPT IN[r] will set this option on[else][b]NO TIP[r] will set this option off[end if].";
	now point is ts;
	now pointcue is true;

point is a truth state that varies.

section opt in

optining is an action out of world.

understand the commands "opt in" and "optin" as something new.

understand "optin" and "opt in" as optining.

carry out optining:
	set-optin-notip true;

section no tip

notiping is an action out of world.

understand the commands "notip" and "no tip" as something new.

understand "no tip" and "notip" as notiping.

carry out notiping:
	set-optin-notip false;

chapter certifying

annoying-switches is a number that varies.

certifying is an action applying to one thing.

understand the command "c/cer/cert/certify [something]" as something new.

understand "certify [something]" as certifying.
understand "cert [something]" as certifying.
understand "cer [something]" as certifying.
understand "c [something]" as certifying.
understand "certify" as certifying.
understand "cert" as certifying.
understand "cer" as certifying.
understand "c" as certifying.

does the player mean certifying the gadget: it is likely.

certify-short is a truth state that varies.

carry out certifying:
	if gadget is rect:
		if gadget-secured is true, say "[b]CERTIFY[r]/[b]RECTIFY[r] has been locked in for [if button-locked is true]good. You can only [b]RECTIFY[r][else]for now, but you can [b]PUSH SECURE[r] to change that[end if].." instead;
		increment annoying-switches;
		now gadget is cert;
		if noun is gadget:
			say "Switching gadget to [b]CERTIFY[r].";
			continue the action;
		say "(switching to certify first)";
	if certify-short is false:
		if the player's command matches the text "certify":
			say "(NOTE: when using [b]CERTIFY[r], you can shorten it to [b]CERT[r]/[b]CER[r]/[b]C[r] in the future.)";
			now certify-short is true;
	try scaning noun;
	mention-marcos-macros;
	the rule succeeds;

chapter rectifying

rectifying is an action applying to one thing.

understand the command "r/rec/rect/rectify [something]" as something new.

understand "rectify [something]" as rectifying.
understand "rect [something]" as rectifying.
understand "rec [something]" as rectifying.
understand "r [something]" as rectifying.
understand "rectify" as rectifying.
understand "rect" as rectifying.
understand "rec" as rectifying.
understand "r" as rectifying.

does the player mean rectifying the gadget: it is likely.

rectify-short is a truth state that varies.

carry out rectifying:
	if gadget is cert:
		if gadget-secured is true, say "[b]CERTIFY[r]/[b]RECTIFY[r] has been locked in for [if button-locked is true]good. You can only [b]CERTIFY[r][else]now, but you can [b]PUSH SECURE[r] to change that[end if].." instead;
		now gadget is rect;
		increment annoying-switches;
		if noun is gadget:
			say "Switching gadget to [b]RECTIFY[r].";
			continue the action;
		say "(switching to rectify first)";
	if rectify-short is false:
		if the player's command matches the text "rectify":
			say "(NOTE: when using [b]RECTIFY[r], you can shorten it to [b]RECT[r]/[b]REC[r]/[b]R[r] in the future.)";
			now rectify-short is true;
	try scaning noun;
	mention-marcos-macros;
	the rule succeeds;

chapter cring

cring is an action applying to one thing.

understand the command "rc/cr [something]" as something new.

understand "rc" as cring.

understand "rc [something]" as cring.

understand "cr" as cring.
understand "cr [something]" as cring.

marcos-trumped is a truth state that varies.

to gadflip:
	if gadget is cert:
		now gadget is rect;
	else:
		now gadget is cert;

to buzz-or-no-noise (ana - a thing):
	repeat through regana of mrlp:
		if the-from entry is ana:
			say "The gadget buzzes[buz-help]";
			continue the action;
	say "The gadget makes no noise.";

kibitz-on-scan is a truth state that varies. kibitz-on-scan is true.

first-scan-okay is a truth state that varies.

this is the r-rc-c umbrella check rule:
	if gadget is not examined and ever-scan is false:
		say "Before scanning for the first time, you fumble with the gadget and note it is set to [if gadget is cert][b]CERTIFY[r][else][b]RECTIFY[r][end if].";
		now ever-scan is true;
	abide by the r-rc-c general clues rule;
	if noun is oils and player has oils2, now noun is oils;

this is the r-rc-c general clues rule:
	if noun is spout, say "The spout reads nothing, but [if spout is examined or caskfillings > 0]re[end if]examining it, perhaps the [b]OILS[r] it mentions have possibilities." instead;
	if noun is easel and motto is in bile libe, say "The easel reads nothing most of the time, but you pick up something near the (a) motto." instead;

carry out cring:
	if gadget-secured is true, say "You can't use this shortcut. Your gadget is locked." instead;
	if player is in Potshot Hotspot and red bull is in Potshot Hotspot, try scaning red bull instead;
	abide by the r-rc-c umbrella check rule;
	if noun is inflexible:
		buzz-or-no-noise noun;
		the rule succeeds;
	now marcos-trumped is true;
	if noun is pig and player is not on cafe face, say "You are too far away at the moment." instead;
	now kibitz-on-scan is false;
	say "You get to scanning, twiddling from [if gadget is cert]certify to rectify[else]rectify to certify[end if] and back.";
	now first-scan-okay is false;
	try scaning the noun;
	if first-scan-okay is false, say "You decide against [if gadget is cert]rectifying[else]certifying[end if] as well, since [if gadget is rect]rectifying[else]certifying[end if] didn't turn up anything just now." instead;
	gadflip;
	try scaning the noun;
	gadflip;
	now kibitz-on-scan is true;
	kibitz the noun;
	d "Rect-text: [rect-text of noun].";
	d "Cert-text: [cert-text of noun].";

chapter sging

sging is an action applying to nothing.

understand the command "sg" as something new.

understand "sg" as sging.

carry out sging:
	if Notices Section is unvisited, say "[reject]" instead;
	if player does not have tagged gadget:
		try silently taking tagged gadget;
	if player does not have tagged gadget, say "You need the gadget to do that." instead;
	if button-locked is true, say "You can't switch the gadget now it's locked." instead;
	if gadget-secured is true, say "You can't switch the certify/rectify tip now that it's in [b]SECURE[r]/[b]RECUSE[r] mode. But you can probably push the [b]SECURE[r] button to change that." instead;
	if gadget is cert:
		say "You switch the gadget to rectify.";
		now gadget is rect;
	else:
		say "You switch the gadget to certify.";
		now gadget is cert;
	the rule succeeds;

book area-save

chapter retrying

retrying is an action applying to nothing.

understand the command "retry/terry" as something new.

understand "retry" as retrying.
understand "terry" as retrying.

retried is a truth state that varies. retried is usually false.

carry out retrying:
	if location of player is Trips Strip:
		if retried is true, say "This is the place you go after retrying--as you probably know. So nothing happens." instead;
		say "Nothing happens. Perhaps this is where you'd be sent back to [if sf is visited or underside is visited or Trap Part is visited]after going somewhere like you've been[else]once you're able to look around[end if]." instead;
	if Trips Strip is unvisited, say "You haven't been to the Trips Strip yet, whatever that is, and you suspect you can't just jump ahead. Besides, you don't want to risk retrying the Busiest Subsite." instead;
	if mrlp is resort:
		if red bull burdell is in Potshot Hotspot, say "No wimping out now. You can do it!" instead;
		if red bull burdell is moot, say "You've disposed of Red Bull Burdell[if number of solved regions < 4], so if you want to explore another region, you'll need to restart the game[end if]." instead;
		say "You don't really need to[if number of solved regions is 4]. In fact, you have nowhere else to go[else], though there's one more region to solve[end if]. Are you sure?";
		if the player dir-consents:
			do nothing;
		else:
			say "Okay, back to the endgame." instead;
	repeat with JJ running through carried things:
		unless JJ is warpable:
			moot JJ;
			add JJ to item-list of mrlp;
	repeat with JJ running through worn things:
		unless JJ is warpable:
			moot JJ;
			add JJ to worn-list of mrlp;
	now retried is true;
	now last-loc of mrlp is location of player;
	now player is in Trips Strip;
	the rule succeeds;

a thing can be warpable. a thing is usually not warpable.

book fliptoing

chapter the verb

definition: a thing (called xx) is fungible:
	if xx is enclosed by the player, yes;
	if location of player is kitchen and fridge contains xx and fridge is closed, no;
	if xx is a backdrop:
		if xx is in location of player, yes;
	else:
		if location of xx is location of player, yes;
	no.

definition: a thing (called xx) is available-to-flip:
	if xx is held, yes;
	[if location of xx is location of player, yes;]
	if xx is enclosed by location of player, yes;
	if xx is a backdrop:
		if xx is in location of player, yes;
	if xx is words and xx is in noise bag, yes;
	if location of player is kitchen and fridge contains xx, yes;
	no.

fliptoing is an action applying to one visible thing.

carry out fliptoing (this is the main flipping rule) :
	let mything be the player;
	let got-yet be false;
	repeat through regana of mrlp:
		if the-to entry is noun and got-yet is false and the-from entry is available-to-flip:
			if there is a pre-rule entry:
				if debug-state is true, say "DEBUG: checking [pre-rule entry].";
				abide by the pre-rule entry;
			if debug-scan is true and player has gadget, try scaning the-from entry;
			now mything is the-from entry;
			if ff is true:
				say "Test flip: [from-msg entry][line break]";
				the rule succeeds;
			now got-yet is true;
			say "[from-msg entry][line break]";
			if the-to entry is teleporter:
				d "Teleporter is in [location of teleporter].";
				if to-room entry is unvisited, reg-inc;
				move player to to-room entry;
			else:
				if the-to entry is not moot and the-to entry is not abrod: [attics/static can't get infinite points]
					reg-inc;
					if the-from entry is LLPish, min-up;
				if force-take entry is true or player has the-from entry, now player carries the-to entry;
				if the-to entry is prefigured, now the-to entry is done-for;
				if vanish entry is true:
					if the-from entry is a backdrop:
						move the-from entry to Meta Team;
					else:
						if the-from entry is reversible:
							move the-from entry to Adorb Bardo;
						else:
							moot the-from entry;
			if the-to entry is plural-named, set the pronoun them to the-to entry;
			set the pronoun it to the-to entry;
			if the-to entry is a person:
				set the pronoun him to the-to entry;
				set the pronoun her to the-to entry;
			if player does not have the noun and noun is not touchable and noun is not teleporter, move noun to location of player; [?? may need special case for slippery sword]
			if there is a post-rule entry:
				if debug-state is true, say "DEBUG: checking [post-rule entry].";
				abide by the post-rule entry;
			if hintfull is true or helpdebugflag is true:
				now just-print is false;
				try mainhelping;
				now just-print is true;
			now the-to entry is flipped-yet;
			process the notify score changes rule;
			continue the action;
	say "Something went wrong here with flipping to. It should not have, but it did. To file a bug report, To=[noun]. [bug-report]";
	the rule succeeds;

after fliptoing (this is the set pronouns rule) :
	if noun is teleporter:
		set the pronoun it to location of player;
		continue the action;
	if noun is beast or noun is wolves:
		set the pronoun him to noun;
		set the pronoun her to noun;
	if noun is touchable:
		if noun is plural-named, set the pronoun them to noun;
		set the pronoun it to noun; [if noun is singular-named: ... is grammatically proper but this seems more convenient for the user]
		if noun provides the property male and noun is male, set the pronoun him to noun;
		if noun provides the property female and noun is female, set the pronoun her to noun;
	continue the action;

chapter special cases

check fliptoing when player is in kitchen (this is the tortilla check rule):
	if noun is taco and tortilla is touchable:
		if ingredients-in-tort < 4:
			say "[one of]The tortilla's not ENOUGH of a taco yet.[or][stopping]"; [bold-ok]
			try examining tortilla instead;

check fliptoing (this is the enter pray or examine rule):
	if noun is touchable:
		if noun is portal and noun is enter-clued:
			say "(entering instead)";
			try entering noun instead;
		say "(examining instead)";
		try examining noun instead;

check fliptoing (this is the should we bother flipping rule):
	if noun is not touchable:
		repeat through regana of mrlp:
			if the-to entry is noun and the-from entry is available-to-flip, continue the action;
		d "[noun] can't seem to be flipped.";
		say "You can't see anything here like that[if toga is not in Rested Desert], or changeable into that[end if]." instead;

chapter more special cases

[these could go to the appropriate room but it's just more shuffling around. Ha ha.]

to say liv-preef: preef silver.

chapter the anagram table

book start and notepad

part dope tan notepad

understand "notes" as notepad.

does the player mean doing something with notes stone: it is likely.

the dope tan notepad is a thing. understand "pad/note" and "note pad" as dope tan notepad.

the dope tan notepad is warpable.

check dropping the dope tan notepad: say "But it's compact and can be useful to take notes." instead;

vaguing is an action applying to nothing.

understand the commands "consult pad" and "pad" as something new.

understand "consult pad" and "pad" as vaguing.

carry out vaguing:
	say "[cur-has]";
	the rule succeeds.

padconsulting is an action applying to one topic.

understand "consult about [text]" as padconsulting.

carry out padconsulting:
	try consulting notepad about the topic understood;

description of dope tan notepad is "You just like it. The color, the feel. It might not be a top-end notepad, but it feels like one. [cur-has]"

check examining dope tan notepad for the first time: say "It's your workbook. It holds bookwork. Not a thrilling color to most, and one of many you bought cheap a long time ago, and they haven't run out yet. It's small enough to fit in a pocket, and you have clipped what you call your 'toad pen' over it, too[one of]. It helped you through a lecture from this morning[or][stopping].[paragraph break](To use the notepad, you can type [b]PAD[r] (subject) or [b]CONSULT PAD ABOUT[r] (subject). If you forget what you've written about, you can type [b]PAD[r] or [b]CONSULT PAD[r].)"

to say cur-has:
	say "Currently you can consult the notepad about:[line break]--";
	let A be 0;
	repeat through table of notepad entries:
		if known entry is true:
			if remainder after dividing A by 4 is 0:
				say "[if A > 0].[line break]--";
			else:
				say ", ";
			increment A;
			say "[short entry]";
	if A > 0:
		say "."

the toad pen is part of the dope tan notepad. the toad pen is amusing.

description of the toad pen is "It's green, and it hasn't croaked yet, thus 'toad.' It's securely clasped over the pedanto-notepad."

check taking a person: say "Your power isn't superhuman strength." instead;

check taking the pen: say "Bad idea. You tend to lose those things like nobody's business if they're not attached." instead;

to say found-status of (a - a region): say " ([if a is solved or a is bypassed]solved[else]opened[end if])";

to say reso-maybe: if store r is prefigured, say " (resort, not opened)[run paragraph on]";

to say opts-list:
	if gadget-active, say "[2da][b]PARSE[r] interprets the gadget's clues, and [b]SPARE[r] hides them. [b]PARSE[r] is currently [on-off of parse-output].";
	verbsplain "opt in/no tip";
	verbsplain "random dialogue";
	verbsplain "access";
	verbsplain "spaces"

to decide whether gadget-active:
	if show hows tag is moot, decide no;
	if Notices Section is unvisited, decide no;
	if player does not have gadget, decide no;
	decide yes;

to say verb-list:
	say "[2da]X or [b]EXAMINE[r] an object. You can get clues if you [b]READ[r] objects with writing.";
	say "[2da]The four directions, north, south, east and west.";
	say "[2da][b]PAD[r] to see a list of topics. Then [b]PAD VERBS[r], for example.";
	say "[2da][b]VERB[r]/[b]VERBS[r] shows this, [b]OPTIONS[r] shows options you can change, and informational meta-commands include [b]ABOUT[r], [b]CREDITS[r], [b]TECH[r], [b]SITES[r], and [b]RELEASE[r].";
	if gadget-active:
		if button-locked is false:
			if "macros" is padded, say "[2da][b]RC[r] or [b]CR[r] lets you scan both ways.";
	if "rectify" is padded, say "[2da][b]RECTIFY[r][if rectify-short is true], or [b]RECT[r]/[b]REC[r]/[b]R[r] for short,[end if] has the gadget rectify the first and last letters of what you need.";
	if "certify" is padded, say "[2da][b]CERTIFY[r][if certify-short is true], or [b]CERT[r]/[b]CER[r]/[b]C[r] for short,[end if] has the gadget certify which letters are correct in the thing you wish to change.";
	if "angle" is padded, say "[2da][b]ANGLE[r] lets you see what can be changed, while [b]GLEAN[r] gives you more general hints about your direction.";
	verbsplain "xx";

table of notepad entries
short	known	verify	topic (topic)	blurb
"access"	true	false	"access"	"[b]ACCESS[r] toggles screen reader accessibility."
"advice"	false	--	"advice"	"--Nothing over eight words. Maybe one two-word deal.[line break]--Red Bull Burdell is much bigger and stronger than you. Traditional fighting won't work."
"angle"	false	--	"angle"	"Lets you see what can be changed."
"board"	false	--	"broad/board"	"[if location of player is Notices Section]It's got notes on needing two simple 7-letter portmanteaux[how-many-notices][else]You're past the bit about the introductory puzzles[end if]."
"certify"	false	--	"c/cer/cert/certify"	"1 beep = 1 word, buzz = already changed, silence = nothing.[line break]red/green = right/wrong letters."
"flips"	false	--	"flips"	"[what-can-flip]"
"glean"	false	--	"glean"	"Lets you glimpse what you need to do."
"lecture"	true	--	"lecture"	"An hour-long pre-lunch lecture by some fellow named Curt Lee netted you three pages of doodles. You remember him saying how [b]ONE WORD[r] could open a [b]NEW DOOR[r] in this age of technological innovation if you picked the right one, and that's more magic than real magic, if real magic existed, which it doesn't.[paragraph break]But hey, at least lunch was nice."
"lube"	false	--	"phial" or "lube"	"Worth looking into. Though you probably just want to [b]ANGLE[r] and [b]GLEAN[r]."
"macros"	false	--	"macros"	"[tell-macros][run paragraph on]"
"notepad"	true	false	"notepad/pad/note" or "note pad"	"You keep the date you started using your notebooks on the inner front cover. This one's from three years ago."
"opt in/no tip"	false	false	"opt in" or "opt/notip/optin/tip" or "no tip"	"[b]OPT IN[r] gives you more detail when you are on the right track. [b]NO TIP[r] gives you less detail but lets you know you have the right anagram."
"options"	true	false	"options/option" or "post opts" or "ops"	"[opts-list]"
"poss"	false	--	"poss"	"[b]POSS[r] toggles if you see the possible minimum and maximum scores on solving a region. It's a small spoiler/clue for last lousy points."
"random dialogue"	false	true	"random/dialogue" or "random dialogue" or "uhhs/hush"	"[b]UHHS[r] turns on random dialogue, [b]HUSH[r] turns it off."
"rectify"	false	--	"r/rec/rect/rectify"	"green dot = 1st letter. Red dot = last letter. Blue = the rest."
"recuse"	false	--	"recuse"	"If you secured, [b]RECUSE[r] will come in handy once you've solved two quests, to skip a third."
"Red Bull Burdell"	false	--	"red bull burdell" or "red bull" or "red/bull burdell" or "red/bull/burdell" 	"The nemesis to be defeated here in Yorpwald. He is too physically strong. Perhaps anagramming magic can help."
"red"	false	--	"red/reds/redness"	"Any words that are red, or make you see red, or make people turn red, are all wrong, just like Red Bull Burdell. This is handy to know--what do you need to mess with? And how shouldn't it be messed with?" [note: this comes second, because otherwise it trumps "red bull burdell"]
"retry"	false	--	"terry" or "retry"	"[b]RETRY[r] gets Terry to send you [if Trips Strip is visited]back [end if]to the Trips Strip[if Trips Strip is unvisited], wherever that is[end if]."
"secure"	false	--	"secure"	"Having [b]SECURE[r] activated will make the gadget less useful on any one puzzle but will let you skip a chunk of your quest later. [b]SECURE[r] will be locked once you visit certain places. The button will flash when you need to choose."
"spaces"	false	false	"space/spaces"	"[b]SPACES[r] toggles whether you have an extra space in raw gadget results. [b]SPACE[r](S) [b]ON[r]/[b]SON[r] forces it on, while [b]NO SPACE[r](S)/[b]NOS[r] forces it off."
"stores"	false	--	"store/stores/malls/shop/shops/lots/mall"	"--[if scented descent is touchable]Forest[found-status of forest][else]Store F[end if][line break]--[if posted depots are touchable]Sortie[found-status of sortie][else]Store I[end if][line break]--[if trade tread is touchable]Metros[found-status of metros][else]Store M[end if][line break]--[if resort is touchable]Resort[found-status of resort][else]Store R[reso-maybe][end if]"
"talking"	true	--	"talking"	"[b]ASK[r] for other people, or just say the word/s otherwise. Specific topics or in-game things are suggested, but default dialogues may give hints."
"the goat"	false	--	"goat/toga"	"Certify = [rcn][gc][rc][rc] and Rectify = [rcn][bc][gc][bc]."
"to do"	false	--	"todo" or "to do"	"What's on tap right now: [if number of padded flippable not flipped-yet things is 0]nothing[else][list of padded not inflexible not flipped-yet things][end if]."
"verbs"	true	false	"verbs/verb"	"[verb-list]"
"warts"	false	--	"warts"	"'No, too stupid a fad. I put soot on warts.' But what is it that's too stupid?"
"writing"	false	--	"writing"	"If something has writing on it, you need to [b]READ[r] or [b]EXAMINE[r] something instead of [b]X WRITING[r]."
"xx"	false	true	"xx"	"You can [b]XX[r] after you eat the saltine in order to see what an item should be. This has one use, and benign items do not waste it."

pf-warn is a truth state that varies.

to preef-l (flipper - a thing):
	if flipper is unfigured:
		say "[line break][i](That's worth noting in your notepad for later, so you do[one of][or], once again[stopping], under [b]FLIPS[r].)[r][if ignore-line-break is true][run paragraph on][end if]";
		now ignore-line-break is false;
	now flipper is prefigured;
	choose row with short of "flips" in table of notepad entries;
	now known entry is true;

to preef (flipper - a thing):
	if flipper is unfigured:
		say "[i](That's worth noting in your notepad for later, so you do[one of][or], once again[stopping], under [b]FLIPS[r].)[r][if ignore-line-break is true][run paragraph on][else][line break][end if]";
		now ignore-line-break is false;
	now flipper is prefigured;
	choose row with short of "flips" in table of notepad entries;
	now known entry is true;

table of preflip clues [this must have a regular item first due to a small bug in 6g]
preflip	pretodo
gateman	"nametag -> gateman" [Ordeal Loader]
tenibac	"cabinet -> Bactine" [stores]
ogled lodge	"Store R -> Resort"
silver	"[if livers are not moot]livers[else]sliver[end if] -> [b]SILVER[r]" [forest]
drapes	"spread -> [if red asp is in Emptiness Sepiments][b]RED ASP[r] -> [end if]drapes"
r2	"room -> moor" [sortie]
hallway	"[if hay is part of scraped wall]wall -> [b]HAYWALL[r][else][b]WALL[r] -> haywall[end if] -> hallway"
missile	"smilies -> missile"
soil	"oils -> soil"
silo	"oils -> silo"
sword	"words -> sword" [metros]
keycard	"dry cake -> keycard"
beast	"beats -> beast"
store p	"Store P -> [b]PRESTO[r] in [aro]"
store u	"Store U -> [b]ROUTES[r] in [aro]"
store v	"Store V -> [b]TROVES[r] in [aro]"
store w	"Store W -> [b]TOWERS[r] in [aro]"
store y	"Store Y -> [b]OYSTER[r] in [aro]"

to say what-can-flip:
	if pf-warn is false:
		if word number 1 in the player's command is not "pf":
			say "[i][bracket]Note: you can abbreviate this with [b]PF[r] in the future.[close bracket][r][line break]";
			now pf-warn is true;
	if number of prefigured things is 0:
		say "You have nothing else you figured in advance.[no line break]";
		continue the action;
	say "Stuff you figured, but you couldn't use it right away: ";
	repeat with pft running through prefigured things:
		let got-one be false;
		repeat through table of preflip clues:
			if pft is preflip entry:
				say "[line break][pretodo entry].";
				now got-one is true;
				break;
		if got-one is false:
			d "We need an entry in table of preflip clues for [pft].";
			say "[line break]You remember you need to think [pft] at some time.";

to say tell-macros:
	if marcos-trumped is true:
		say "[b]CR[r]/[b]RC[r] (something) = C (something) + R(something).";
	if h-short-told is true:
		say "[b]ANGLE[r]=[b]AN[r] to see changeable items, [b]GLEAN[r]=[b]GL[r] to see the story ahead."

to say how-many-notices:
	if gateman is in Notices Section:
		if getaway is in Notices Section:
			say ", both of which you got";
		else:
			say ", of which you've got one--the nametag/gateman";
	else:
		say ", which you need to figure out. The nametag seems to change to someone who can help you with whatever the gateway should become";

[how to include a topic IN WORDS]

chapter pfing

pfing is an action applying to nothing.

understand the command "pf" as something new.
understand the command "flips" as something new.

understand "pf" as pfing.
understand "flips" as pfing.

carry out pfing:
	now pf-warn is true;
	if player does not have dope tan notepad:
		say "You need your notepad to use the [b]PF[r] shortcut.";
	else:
		unless "flips" is padded, say "You consult your notepad but haven't figured any flips in advance yet." instead;
		try consulting dope tan notepad about "flips";
	the rule succeeds;

chapter consulting

the block consulting rule is not listed in any rulebook.

consulting is an action applying to one thing and one topic.

rule for supplying a missing noun when consulting:
	now the noun is the notepad;

check consulting it about:
	if noun is not notepad, say "You can only really consult your notepad. [b]ASK[r] something animate, if you want to." instead;
	repeat through table of notepad entries:
		if known entry is true and topic understood includes topic entry:
			say "[blurb entry][line break]";
			the rule succeeds;
		else:
			do nothing;
	say "You haven't written anything about that. [cur-has]";
	the rule succeeds;

chapter padding

understand the command "pad [text]" as something new.
understand "pad [text]" as padding.

padding is an action applying to one topic.

carry out padding: try consulting notepad about topic understood instead;

volume when play begins

sr-acc is a truth state that varies.

when play begins (this is the initialise anagrams pad and beats rule) :
	now sts-sequence is 1;
	now all rooms in metros are noisy;
	now Obtains Boastin Bastion is not noisy;
	now Esoteric Coteries is not noisy;
	move beats backdrop to all noisy rooms;
	repeat with Q running through regions:
		repeat through regana of Q:
			if the-from entry is not a room, now the-from entry is flippable;
			if there is no vanish entry, now vanish entry is true;
			if there is no force-take entry:
				d "no force-take for [the-from entry]/[the-to entry].[line break]";
				now force-take entry is false;
	place-random-garbage;
	shuffle-chat-lists;
	move Red Bull Burdell to Adorb Bardo; [these are concepts that you will ask about]
	move redness to Adorb Bardo;
	now player wears magenta nametag;
	now player has the dope tan notepad;
	now left hand status line is "[location of player] ([mrlp])[last-scan-thing]";
	now right hand status line is "[cur-score of mrlp]/[if possibles is true][poss-range][else][max-score of mrlp][end if][if Trips Strip is visited] [bracket][number of solved regions][close bracket][end if]";
	set the pronoun it to the vacate caveat;
	sort the table of iconmaps in random order;
	repeat with Q running through things:
		if Q is a sto, move Q to Trips Strip;

when play begins (this is the skip small intro if wanted rule):
	process the check-skip-intro rule;
	let skip-stuff be whether or not the rule succeeded;
	say "[this-game] has accessibility features for the vision impaired that make a hinting device more readable. Would you like to activate them?";
	if the player no-consents, now sr-acc is true;
	if skip-stuff is true, continue the action;
	say "Okay. This can be toggled at any time with [b]ACCESS[r].";
	say "[line break]So you just got fired from the best company ever, but it's the best day of your life. Because, new opportunities! New horizons! New ways to look at things! Like calling this stupid kiss-off job fair a 'convention.' As you are stuffed in a slow slow elevator up to the next lecture, you hope there's some way out...";
	move player to Busiest Subsite, without printing a room description;

last-was-cert is a truth state that varies.
scan-to-header is a truth state that varies.

to say last-scan-thing:
	if last-scan is nothing or last-scan is moot, continue the action;
	if map region of location of last-scan is not mrlp, continue the action;
	now scan-to-header is true;
	say " || ";
	say "[last-scan]:[if last-was-cert is true][rgtext of last-scan][else][rgbtext of last-scan][end if]";
	now scan-to-header is false;

to shuffle-chat-lists:
	repeat through table of megachatter:
		if there is no ent-per entry, now ent-per entry is 1;
		if there is no end-count entry, now end-count entry is 0;
		now done-once entry is false;
		sort mytab entry in random order;
		now table-size entry is number of rows in mytab entry;
		if there is a lasties entry and number of characters in lasties entry > 2, increment table-size entry;
		if there is a maxidx entry:
			if maxidx entry is 0 or maxidx entry > number of rows in mytab entry, now maxidx entry is number of rows in mytab entry;
		now curidx entry is 0;
		if there is no maxbeforepause entry, now maxbeforepause entry is 30;

to place-random-garbage:
	if a random chance of 1 in 2 succeeds, now blot-first is true; [hint blot or bugle at door]
	if a random chance of 1 in 2 succeeds, now toga-first is true; [hint toga or reed in thickets]
	if a random chance of 1 in 2 succeeds, now rock-first is true;	[hint rock or swing 1st]
	move random guider to sf;
	d "[random guider in sf] in Softer Forest.";
	move random off-stage guider to rf;
	d "[random guider in rf] in Rest of Forest.";
	now kitchen-hint-list is the list of all pregredients;
	sort kitchen-hint-list in random order.

volume Ordeal Loader

book initial player state

chapter the player's pockets

the pockets are a boring thing. They are part of the player. the pockets are plural-named and useless.

description of pockets is "This shouldn't be here since any action gives a default message."

bore-text of pockets is "[if location of player is Busiest Subsite]That would be unprofessional in future job interviews[else if location of player is Rested Desert]You fidget nervously with your pockets for a bit .There's not much else you can do with them[else][one of]Your pockets have no holes. But r[or]R[stopping]eal adventurers don't futz with their pockets. Or pocket-equivalents[end if]."

chapter magenta nametag

check dropping magenta nametag:
	if player is in Busiest Subsite, say "Enough people have discarded their nametags carelessly. No littering please." instead;
	if player is in Rested Desert, say "Littering in a nature-filled area like this is not a good idea." instead;

the magenta nametag is a thing. rgtext of magenta nametag is "[rcn][gc][rc][gc][rc]*[rc]". lgth of nametag is 7. gpos of nametag is 7. rpos of nametag is 1. cert-text of nametag is "-[ast]A[d1][ast]E[d1][ast]A[d1]". rect-text of nametag is "G[d1][d1][d1][d1][d1][ast]N".

does the player mean doing something with the magenta nametag:
	if Notices Section is not touchable, it is possible;
	if the nametag is not touchable, it is very unlikely;
	if the show hows tag is examined, it is unlikely;
	if the tagged gadget is examined, it is unlikely;
	it is possible.

understand "tag" and "name tag" as nametag.

check taking off show hows tag: try taking show hows tag instead;

does the player mean examining the show hows tag when the tagged gadget is handled or tagged gadget is examined: it is likely.

description of magenta nametag is "[nametag-desc]"

check taking off magenta nametag (this is the remove your tag or gadget tag rule) :
	if player is in Busiest Subsite, say "Nobody really cares about nametags, but someone'd give you grief for it." instead;
	if player has gadget:
		if the player's command includes " tag" and the player's command does not include "name":
			say "You consider doing something with the show hows tag, but maybe you should wait for someone with more practical knowledge...";
			try taking off show hows tag instead;

report taking off magenta nametag when player has gadget: say "You remove the magenta nametag, which seems safer and easier than futzing with the gadget's [if tag is examined]show hows [end if]tag.".

to say nametag-desc:
	if player is in Rested Desert:
		say "[one of]You were the only person stuck with this color. Others got plain white or grey. Surely that can't mean anything...can it?[paragraph break]Because it seems totally useless now [if player wears nametag]on your shirt[else]it's detached[end if][if goat is touchable]. But after what you did to the goat, maybe it'll be useful somewhere[else]. You'd like it to be useful for more than identification[end if][or]An ugly magenta[stopping].[no line break]";
		continue the action;
	if broad board is examined:
		say "You never noticed it before, but the nametag is made by [first custom style]TENGAMA[r], whoever they are. The red writing is odd--just like [b]A TAN GEM[r] on the broad board.[no line break]";
		continue the action;
	if player is in Notices Section:
		say "It's still a bit scratched from your trip through the thickets--about 3/7 of the way from the right. It's, just, well--a nametag. For now. Maybe the broad board will have a clue what to do, nametag or not.[no line break]";
		continue the action;
	if player wears nametag:
		say "It's stuck to your shirt, all right. Somehow, you got a magenta one while most other people got plain white. It just took a tame nag to put it on, and you hate it but can't bring yourself to pull it off in public.[paragraph break]It does not make you feel like a powerful magnate, that's for sure.[no line break]";
	else:
		say "It's cast off and harmless-looking. Be cool if it could become something useful.[no line break]"

check wearing the magenta nametag:
	if player wears the magenta nametag, say "You already are." instead;
	say "It's lost most of its sticky stuff on the back side. It'd just be a gnarled dangler if you reattached it." instead;

book Busiest Subsite

Busiest Subsite is a room in Ordeal Loader. "This is the ritziest hotel you'll ever stay in. Terraces are west, a banner hangs over an auditorium entry to the east, and the elevator you came from is to the south. North's got an slim neat name list tacked on by it.[paragraph break]There's a vacate caveat over an odd side passage, and also, an Oafs['] Sofa is planted squarely in the center.".  roomnud of Busiest Subsite is table of Busiest Subsite nudges.

exits-text of Busiest Subsite is "Something in the scenery will be worth entering."

last-loc of Ordeal Loader is Busiest Subsite.

section directional rejects

check entering passage: try going inside instead;

check taking brazier: say "That'd probably be illegal." instead;

check going north in Busiest Subsite:
	say "That way's a costlier cloister of rooms than recent firees deserve. The measure-a-resume event will be there, but not for another couple hours. You don't really want to deal with agents or headhunters now, anyway[if name list is unexamined], but the name list catches your eye[else], though the name list seems to be mocking you to read it again[end if].";
	been-check north instead;

check going east in Busiest Subsite:
	say "That way's an hour or two of listening to an under-action denunciator. You sure?";
	if the player no-consents:
		say "You look back at the passage under the vacate caveat. It says NONE TRY. You blink, and it says NO ENTRY. Ugh! You hope whatever new job you find has a decent vision plan. But you realize you can't be fussy.[paragraph break]One more look back as you sit in one of the asset-seats. Someone else walks through--he's wearing the same color nametag you are. During the talk--based on a horrendous bowdlerization of Robert Frost's [i]The Road Less Traveled[r]--you mark the feedback survey 'gave core coverage' and try to convince yourself you weren't really missing anything. It doesn't quite work. Maybe you could've done something else?";
		end the story;
	else:
		say "You sort of procrastinate the lecture, thinking it'd be fun to just ditch.";
		been-check east instead;

check going west in Busiest Subsite:
	say "The Caterers['] Terraces are west. You see someone sweating over a bizarre brazier, hear how this next lecture will 'Prep us for supper,' and promptly lose your will to do anything for a minute.";
	been-check west instead;

check going south in Busiest Subsite:
	say "You already spent too much time in the overlate elevator.";
	been-check south instead;

check going outside in Busiest Subsite:
	if vacate caveat is examined or passage is examined:
		say "Do you mean trying the passage?";
		if the player yes-consents, try entering the passage instead;
		say "Well, it's still there, if you want to enter it." instead;
	say "There are many ways out. You may want to be more specific or have somewhere interesting or unusual in mind." instead;

chapter silly scenery

section oafs' sofa

The oafs sofa is amusing boring scenery in Busiest Subsite. printed name is "OAFS['] SOFA". description is "It's labeled OAFS['] SOFA to remind you that you don't want to be wasting time off in dreamland right now.". bore-check of oafs sofa is bore-enter-reject rule. bore-text is "The OAFS['] SOFA is there as something to avoid. The organizers tried to make a joke out of this, because jokes help people be motivated and productive and turn that frown upside-down, but unsurprisingly, they totally failed."

this is the bore-enter-reject rule:
	if current action is taking, say "Hauling a big sofa is the wrong sort of work to look for, here." instead;
	if current action is entering, say "The first people who did that were booted from the event in humiliating fashion. You'd like a way to leave, but not like that." instead;

section overlate elevator

the overlate elevator is amusing scenery in Busiest Subsite.

description of elevator is "It's closed, now, on its way to being late for the next batch of people.".

check entering elevator: try going south instead;

check opening elevator: say "Foolhardy." instead;

section bizarre brazier

the bizarre brazier is amusing boring scenery in Busiest Subsite. description is "Next meal's too far off, and you've got no business on the terraces. You don't need to tinker with the bizarre brazier.".

section caterers terraces

the caterers terraces are plural-named amusing scenery in Busiest Subsite. "You can't see the caterers working on the terraces, and you probably don't want to disturb them.". printed name is "caterers['] terraces". understand "caterer" and "caterer terraces" as caterers terraces.

section vacate caveat

the vacate caveat is scenery in Busiest Subsite. description of vacate caveat is "It advertises the way to ACT AVE, and below it there's a side passage.".

understand "act/ave" and "act ave" as vacate caveat when player is in Busiest Subsite.

check taking vacate caveat: say "[grounds]." instead;

to say grounds: say "Appropriation of company property is potentially a fireable offense. Oh, wait. It's just useless, seriously"

section banner

[??endorsable bandoleers]
The banner is amusing scenery in Busiest Subsite. "'This way: BEING FIRED!'[one of] People walk by, discussing how the DEBRIEFING should make Mondays dynamos again.[or] You're run over by people saying 'This talk will be a FINE BRIDGE to a new job!'[or] Has nobody else noticed this sign? Or what it says?[stopping]" [bold-ok]

check taking banner: say "[grounds]." instead;

chapter grim hint

grims is a truth state that varies.

every turn when player is in Busiest Subsite:
	if turn count is 4 and grims is false:
		say "'Non-grim morning!' you hear a voice call. It seems to be coming from that passage, and when you focus there, it repeats. You're guessing someone wants you to look there.";
		now grims is true;

chapter passage and entry

the odd side passage is scenery in Busiest Subsite. "It seems to say OPEN a bunch of times in a row. That means it is open, not that you should try to. But if you blink a bit, the OPENs run together and say NOPE. Hmm.[paragraph break]Nothing is stopping you from ENTERing it or going [b]INSIDE[r]. It's not really any direction you can tell, and you could have sworn it was near a different exit before you turned your back on it just a bit ago. It curves quickly so you can't see much of it." [bold-ok]

check entering side passage: try going inside instead;

the auditorium entry is useless scenery in Busiest Subsite. "You'd love any excuse not to join everyone else going there."

chapter slim neat name list

cycled-yet is a truth state that varies. cycled-yet is false.

the slim neat name list is scenery in Busiest Subsite. description of name list is "[one of]The list is slim, but it's long. Several names[or]More names[stopping]: [randbla][unless cycled-yet is true]. [one of]A list of names has always left you feeling like you wouldn't fit in, but this is a step beyond[or]Okay, maybe your name will stand out among these others. Maybe even the right way[or]It's as if someone, or something, is hinting you don't really belong at this job fair[or]Man! So many applicants, so few jobs[or]The names can't all be like this. It's just one more obstacle against you getting re-hired. Grr[or]This is a joke, right? Then someone else writes their name down, and yup, it's in tune with the others[or]You half expect Candid Camera to pop up, or maybe your old psychology professor[or]What is the deal here? Did some computer drudge run a Perl script and spit these names out as a joke? If so, you wonder what their problem is, and if they have anything better to do, and if they got canned like you did. You definitely would hate to be stuck sifting through their work or jokes for a few hours. That'd be painful[or]You're slightly disappointed and glad that there's nobody with the same last and first names, yet[or]Maybe there's a really weird Fermi question in here somewhere, or it's like that freshman year high school 'quiz' that said read everything before doing anything, then the final step was, sign your name[or]Your morbid curiosity is, apparently, not dead yet[stopping][end if]."

after examining name list for the first time:
	say "Someone mutters, 'Bob Smith. Joe White. Bill Jones. Sure they're nice people, but not worth staring at...'[paragraph break]You're not seeing that at ALL. Hmm."; [bold-ok]
	continue the action;

check taking name list: say "That'd get you escorted out." instead;

check examining (this is the examine-dirs rule):
	if noun is a direction, say "[if the room noun of location of player is nowhere]That doesn't seem to lead anywhere.[else]Just try going that way instead. Don't be scared! You can always undo![end if]" instead;

check going inside in Busiest Subsite:
	say "Someone tugs you by the arm. 'Can't you read? It says NOPE! PEON!'[paragraph break]But you look at it again, and the passage seems to say OPEN. You brush that someone off, and oddly, each is wearing a NEON POPE t-shirt.[paragraph break]'Nice. Smart. Miscreant!' they snort, as you flee.[paragraph break][wfak]"; [bold-ok]
	say "The voice cuts off. The passage behind is gone. You shake off a momentary fear missing the lecture will go in your life file, or you may be charged with an if-ill fee.";
	set the pronoun it to odor;
	now player is in Rested Desert instead;

dirs-missed is a number that varies. dirs-missed is 0.

a direction can be subsite-fled. a direction is usually not subsite-fled.

to been-check (subdir - a direction):
	if subdir is subsite-fled, continue the action;
	increment dirs-missed;
	choose row dirs-missed in table of busiest subsite rejects;
	say "[line break][cue-passage entry][line break]";
	now subdir is subsite-fled;

table of busiest subsite rejects
cue-passage
"For all the lectures about new and exciting possibilities everyone should know about, you'd like one for your own."
"Your eye catches the side passage, which looks more interesting than the standard ways out. Maybe you could give it [if vacate caveat is examined or odd side passage is examined]another [else]a [end if]look."
"You feel sort of cornered by all the main passages. Sneaking off anywhere would be kind of fun."
"The standard, usual directions don't seem to cut it. But there has to be somewhere else."

check exiting in Busiest Subsite: try going outside instead;

book Rested Desert

Rested Desert is a room in Ordeal Loader. roomnud of Rested Desert is table of Rested Desert nudges.

to decide which number is door-score:
	decide on (boolval of whether or not location of blot is rested desert) + boolval of bugle-played;

exits-text of Rested Desert is "You won't get anywhere with a long walk[if door-score > 0], but you should be able to go [b]IN[r] the door[else if or do door is in desert], but there's got to be a way to get through that door[end if]."

check exiting in Rested Desert: say "You'd just get even more lost[if door-score > 0]. The door is open. You should just walk [b]IN[r][else if or do door is in desert]. Going [b]IN[r] that door looks like a safer bet[end if]." instead;

report looking in Rested Desert for the first time: say "[i]So what was that lecture supposed to be about? One word changing how we look at things, how things are? Rubbish. It has to be. You think.[line break][r]"

every turn when player is in Rested Desert and odor is in Rested Desert and player was in Rested Desert (this is the clue odor to door rule) :
	if current action is not objhinting:
		say "[one of]You imagine a swordsman changing to sandworms, and back.[or]You confuse latitude and altitude for a second. Odd.[or]An inner voice briefly espouses your latent talent.[or]You suddenly find waterskiing awestriking.[or]You're seized with sudden fervor that there's only one way to spell centimeters. Or centimetres.[or]You hear a voice for a moment: demanding, maddening.[or]You think back to the NO ENTRY, err, NONE TRY sign. Odd that you saw the two letters switch. The odor smells a bit different.[or]The odor reminds you of crazy-huge organic isomers that become different if you exchange two arms. But maybe you can think simpler than that.[or][final-hint][stopping]"

to say final-hint: say "[one of]You know you need to find the right thing to think, [i]or do[r].[or]You suddenly wish someone would come by to help, so you could be all [one of]'Dr.! Oo!'[or]'Oo! Dr.!'[cycling][cycling]"

description of Rested Desert is "This is the center of a wide-open space. There's only a shrub and brush for vegetation[if odor is touchable]. You definitely smell an odor, though[else]. A door stands here, too[end if]."

check going inside in Rested Desert: if OR DO door is touchable, try entering OR DO door instead;

chapter shrub brush

the shrub is scenery in Rested Desert. "[shru-bru]."

to say shru-bru: say "It's as unremarkable as the [if the item described is shrub]brush[else]shrub. You sort of wonder about that [oddo], though"

check taking when player is in Rested Desert:
	if noun is shrub or noun is brush, say "That'd be as useless and cumbersome as taking the [if noun is brush]shrub[else]brush[end if]. It wouldn't seem to help with the [oddo], either." instead;

the brush is scenery in Rested Desert. "[shru-bru]."

to say oddo: say "[if odor is in Rested Desert]odor[else]door[end if]"

chapter odor

the odor is boring scenery. it is in Rested Desert. description of odor is "The odor makes you yearn for adventure and new and different things. If only you had some sort of simple passage! Or would that be asking too much?[paragraph break]Well, maybe it would not[one of][or]. There are only so many things the odor could become[stopping].". bore-check is bore-odor rule.

this is the bore-odor rule:
	if current action is smelling, try examining the odor instead;
	if current action is taking, say "You'll need to make the odor into something more tangible." instead;

lgth of odor is 4. gpos of odor is 2. rpos of odor is 4. cert-text of odor is "-[d1][ast]O[ast]R". rect-text of odor is "D[d1][d1][ast]R". rgtext of odor is "[rcn][rc][gc][gc]".

understand "smell" and "breeze" as odor.

to say bul-blo:
	if bulge is in rested desert, say "bulge and a ";
	say "[if blot is in rested desert]blot[else]bolt[end if]"

chapter OR DO door

the OR DO door is a fixed in place thing. description is "It has OR DO written on it, with musical chords interspersed above [if bulge is in rested desert]a bulge which doesn't seem to belong on the door[else]where the bulge was[end if]. [if bolt is in rested desert]A bolt's sticking out, too, not locked into anything[else]It's covered by a blot, too[end if]. You have no clue where the door could lead [if ordo-opened]now you've opened it[else]even if you figure how to open it[end if][can-enter-ordo]."

check taking OR DO door: say "Now it's appeared, you'll want to [if door-score is 0]find a way to [end if]enter it." instead;

Check taking (this is the revised take-blocking rule):
	if the noun is fixed in place, say "You don't need to take [that-those of noun]. It probably wouldn't be practical, either." instead;

the revised take-blocking rule is listed instead of the can't take what's fixed in place rule in the check taking rules.

to say can-enter-ordo:
	say ". ";
	if player has bugle and bolt is moot:
		say "You found both ways to deal with it, and you have nothing to do other than [b]ENTER[r] it";
	else if bolt is moot or bugle-played is true:
		say "You can enter it, since you found a way to open it";
	else:
		say "But you probably need a way to enter it and leave this empty place"

initial appearance of OR DO door is "That door you summoned, with OR DO on the front, is here. It has a [bul-blo] on it."

to decide whether ordo-opened:
	if bolt is moot, yes;
	if bugle-played is true, yes;
	no;

section chord (part of door)

the musical chord is part of the OR DO door. description is "[if bugle-played is true]It was probably just to clue the bugle[else if bulge is in rested desert]It seems to suggest music would be a good idea. Hmm[else]You can't tell what note it is, but maybe it's just a clue to play anything on your bugle[end if]."

check taking the musical chord: say "It's engraved in the door." instead;

section bolt

the bolt is scenery. description is "It seems [if bugle-played is true]to stick out uselessly now that you played the bugle[else]to hold the OR DO door in place[end if]."

check taking bolt: say "It's like there's an invisible force field around the bolt." instead;

lgth of bolt is 4. gpos of bolt is 1. rpos of bolt is 4. cert-text of bolt is "[set-bug]". rect-text of bolt is "[set-bug]". rgtext of bolt is "[gcn][rc][rc][gc]".

section blot

the blot is a thing. description of blot is "It almost looks like a musical chord[if bulge is in rested desert]. It stands out by the bulge[end if].". understand "music" as blot.

check taking the blot: say "It's pretty much bled into the door." instead;

section bulge

the bulge is scenery. description of the bulge is "It's shaped like a narrow rectangle with rounded corners. Very unnatural! There's no way to pry or pull it from the door, given its shape. [run paragraph on][bugle-clue]."

lgth of bulge is 5. gpos of bulge is 1. rpos of bulge is 5. cert-text of bulge is "B[ast]U[d1][d1][ast]E". rect-text of bulge is "B[d1][d1][d1][ast]E". rgtext of bulge is "[gcn][gc][rc][rc][gc]".

to say bugle-clue: say "[one of]You give it a few taps, but it's wedged in[or]Maybe it could become some sort of instrument to get rid of the door[or]It's stuck to the door proper, like a tattoo[or]You guess it's your charge to open the door with it[or]You've got no reveilleation, err, revelation, what it should be, yet[or]You pay closer attention--it's early on, and surely you don't have to mix letters too much[cycling]"

check taking the bulge: say "[bugle-clue]." instead;

section bugle

the bugle is a thing. description of bugle is "It's brass, you guess, and it probably can't be too hard to play."

bugle-played is a truth state that varies. bugle-played is false.

understand "horn" as bugle when bugle is fungible.

understand "doorway" as OR DO door when OR DO door is fungible.

check opening OR DO door:
	if bugle-played is false and bolt is in Rested Desert, say "There's no real handle to grab[if bulge is in rested desert]. Not even that bulge, though you probably shouldn't snub nubs like that completely[end if]." instead;
	say "You already unlocked it. Would you like to walk through?";
	if the player yes-consents, try entering OR DO door instead;
	say "There's nowhere else to go, though." instead;

check entering OR DO door:
	if player has bugle and bugle-played is false and bolt is not moot, say "The door won't budge. The bolt makes a jarring noise. Hm, maybe that bugle could help." instead;
	if blot is off-stage and bugle-played is false, say "The door seems stuck by an invisible force[if bolt is in rested desert]. The bolt seems to shake a bit, too, and make a jarring noise[end if]." instead;
	say "[if bugle-played is true]The door swings open as you approach. [else if blot is part of OR DO door]Without the bolt, the door swings open easily. [end if]";
	say "You can't see what's behind, but fortunately it's just a small tumble[if player has bugle], though the bugle gets caught on an outgrowth on the way down[end if]...[wfak]";
	if player has bugle, moot bugle;
	if blot is off-stage or bugle is off-stage, poss-d;
	now player is in Thickest Thickets instead;

book Thickest Thickets

Thickest Thickets is a room in Ordeal Loader. "The door you dropped through plumped you right in a dense, prickly garden[one of]. You look around but can't see it any more[or][stopping]. It's too, uh, thick to go in [if goat is in Thickest Thickets or deer is in thickest thickets]almost all directions, but you can go [b]IN[r][else]all directions[end if][if nest is touchable]. That nest you made lies off to the side[else]. Some nets have been, uh, sent here. They're littering up the ground. If you wanted, you could clean them up[end if].". roomnud of Thickest Thickets is table of Thickest Thickets nudges.

exits-text of Thickest Thickets is "[if thickets-score > 0]You can go IN again[else]You need some way to cut through the vegetation to find a passage[end if]."

to decide which number is thickets-score:
	decide on (boolval of whether or not toga is moot) + (boolval of whether or not reed is moot);

chapter reed

the reed is a thing in Thickest Thickets. "A large reed has grown here, even though you don't seem to be near a swamp or a river. It seems out of place."

the lgth of reed is 4. gpos of reed is 4. rpos of reed is 1. cert-text of reed is "-[ast]E[ast]E[d1]". rect-text of reed is "D[d1][d1][ast]R". the rgtext of reed is "[rc][gc][gc][rc]".

check taking the reed: say "Too big and tall and impractical. It just doesn't belong here, at least not in its current form." instead;

description of the reed is "It's very tall, but it doesn't belong here, you sense."

chapter toga

the toga is a thing in Thickest Thickets. "A toga is lying here. It doesn't look particularly festive or clean.".

the lgth of toga is 4. gpos of toga is 3. rpos of toga is 1. cert-text of toga is "-[ast]O[d1][d1]". rect-text of toga is "G[d1][d1][ast]T". the rgtext of toga is "[rc][gc][rc][rc]".

report taking the toga:
	say "From the smell[if toga is examined] and the writing on it[end if], you doubt wearing it will get you anywhere cool in its current form, but you take it anyway.";
	the rule succeeds;

description of the toga is "On it you see a four-legged animal with a sort of beard and horns. It's not very clear, but there are only so many possibilities--and if you read the toga, maybe you can see what's written on it."

check wearing the toga: say "If the barnyard smell weren't unpleasant enough, you feel pricked by hairs--like a beard--and maybe even horns. You remove the toga and flip it inside-out, but you don't see anything. Odd." instead;

section deer

the deer is an animal. "The deer is half-sleeping here. It's probably best left that way."

understand "animal" as goat when deer is fungible and goat is not fungible.

check taking the deer: say "Dear, dear. That would not be endearin['] to the deer." instead;

description of the deer is "It seems quite peaceful, sleeping. That meal did it some good. You've done all you can for it, and it's done all it can for you."

section goat

the goat is an animal. "The goat is half-sleeping here. It's probably best left that way."

understand "animal" as goat when goat is fungible and deer is not fungible.

check taking the goat: say "Trying to get the goat would more likely get the goat's goat." instead;

description of goat is "It seems ill-tempered despite, or perhaps because of, its eclectic recent meal."

section both animals

to decide whether both-thickets-animals:
	if goat is touchable and deer is touchable, yes;
	no;

for printing a locale paragraph about an animal in Thickest Thickets:
	say "The [list of all npcish animals in Thickest Thickets] [if both-thickets-animals]are[else]is[end if] half-sleeping here. [if both-thickets-animals]They're[else]It is[end if] probably best left that way.";
	now all animals are mentioned;

check waking an animal in thickest thickets: say "If [the noun] is having a bad dream, you'll probably get kicked at. If you interrupt a good dream, you'll probably get kicked at." instead;

chapter sent nets

the sent nets are plural-named LLPish scenery in Thickest Thickets. "The sent nets seem sort of stuck in the ground. They're not very nature-like. I mean, maybe they're biodegradable, but perhaps you could find a way to get rid of them or change them into something useful.[paragraph break]You try counting them, but there must be TENS." [bold-ok]

check going inside in thickest:
	if goat is off-stage and deer is off-stage, say "There's nowhere to go in." instead;
	if sent nets are touchable, poss-d;
	if reed is touchable or toga is touchable, poss-d;
	say "You leave the [if toga is touchable]deer[else if reed is touchable]goat[else]animals[end if] and the thickets behind. The path opens up. The yard was too empty, and the thickets were too cluttered, but this--this seems right. You think you hear a voice saying 'Trainees site near!'";
	move player to Notices Section instead;

the lgth of sent nets is 4. gpos of sent nets is 1. rpos of sent nets is 4. cert-text of sent nets is "[set-bug]". rect-text of sent nets is "[set-bug]". the rgtext of sent nets is "[rcn][rc][rc][rc]". [ note: you don't have the tagged gadget when you see the sent nets. ]

section nest

the nest is boring scenery. description of nest is "It's about the same color as the nets it replaced, but it's less of an eyesore. Some bird family will be glad it's there.". bore-text of the nest is "There's nothing more to do with the nest. Birds probably won't visit it until you leave."

book Notices Section

Notices Section is a room in Ordeal Loader. "[one of]You're not sure what to do here, and there's no welcoming committee. But there's a broad board SMIT with TMIs[or]The broad board is SMIT with TMIs you [if broad board is unexamined]haven't read yet[else]figure will be useful[end if][stopping].". roomnud of Notices Section is table of Notices Section nudges.

exits-text of notices section is "Sooner or later, you're probably going to want to [b]ENTER[r] the getaway gateway.".

understand "tmi/tmis" as broad board when player is in Notices Section.

check going outside in Notices Section: try entering getaway gateway instead;

check going inside in Notices Section: try entering getaway gateway instead;

chapter getaway gateway

the getaway gateway is a portal in Notices Section. go-region of getaway gateway is Stores. "[one of]You see a gateway here. It doesn't look too dangerous, but who knows where it leads[or]The gateway still towers here[if mega ant is off-stage and gateman is off-stage], half daring you to enter[end if][stopping].". entry-rule of getaway gateway is enter-gateway rule. description of getaway gateway is "You can't see a lot. It's dark and murky.  It says GETAWAY at the top, WARMUP on the side facing you and UM, WARP on the other, but there's a little something else to [b]READ[r][one of].[paragraph break]Maybe you'll spend long enough there, your severance check'll make it to your mailbox before you get back[or][stopping].". bore-text of getaway gateway is "The getaway gateway is open, so you can just [b]ENTER[r] it to find somewhere new[if mega ant is in Notices Section], once you get rid of the mega ant[end if].". bore-check of getaway gateway is bore-gateway rule. [bold-ok]

this is the enter-gateway rule:
	if gateman is off-stage:
		if mega ant is in notices, say "The mega ant snaps at you, in all its redness! You may need to get someone to dispel it." instead;
		say "A bright red mega-ant appears from behind the gateway! As you grasp at your nametag, which seems to pulse on its own, you wonder what, or who, could defeat the ant, which is too quick for you to defeat it. Its redness is overdone and clearly, well, wrong. Maybe that's something.";
		now mega ant is in notices instead;
	if player does not have tagged gadget and gadget-warned is false:
		say "'Dang adventurers these days. It's not demo mode out there. If I'd had doohickeys nice as that gadget in the cabinet when I saved that one world...I'd of took it! And saved two or three worlds!' He gives a warning, wan grin.";
		now gadget-warned is true instead;
	say "Your path is clear. [if player has gadget]'Eh, get at the gate.' Nat Egam gets his hanky out. 'Okay, hunt.'[paragraph break]'Thank you,' you say.[paragraph break]'Plod wary through warpy old Yorpwald!' he say, also handing you a prep paper. 'This all--what I know--very theoretical. But you'll figure it. Oh--remember. If you [b]SECURE[r] the tip to either [b]CERTIFY[r] or [b]RECTIFY[r], you can [b]RECUSE[r] yourself from the last of the three stores you need to enter. But you don't have to choose [']til the button starts flashing. Also, you can [b]RETRY[r] at any point for Terry to return you to the Strip.'[pad-sec][else]'A fool! Aloof! Ol['] oaf!' cries Nat Egam as you mutter 'rely on only...er...' As you walk through, you hear 'Oh, nope! No hope!'[end if]";
	now retry-known is true;
	if player has gadget:
		now player has a prep paper;
		pad-rec-q "retry";
	say "[line break]The gate disappears behind you[if static is touchable] as you hear Nat Egam grumble about being stuck with the static[end if], and you walk down a pathway, then yap 'What?!' when you see...";
	wfak;
	say "...a few strip malls. Ugh. There's nothing adventurous about THAT.[no line break]";
	now cabinet is LLPish;
	solve-region Ordeal Loader instead;

this is the bore-gateway rule:
	if current action is opening, say "It's open. It's just unclear where it leads." instead;
	if current action is entering, now boring-exception is true;

the new land is boring scenery in Notices Section. description of new land is "You'll have to go there to see it all.". bore-text is "[b]ENTER[r] the gate to learn more about it.". bore-check is bore-new-land rule.

this is the bore-new-land rule:
	if current action is entering, try entering the getaway instead;

understand "gate" as getaway when getaway is fungible.

gadget-warned is a truth state that varies. gadget-warned is false.

[I tried til Tired!]

understand "fellow" as gateman.

chapter gateman

The gateman is a person. "Nat Egam, the tan mage/gateman, is grousing around here.".

understand "nat/egam" and "nat egam" and "tan/mage" and "tan mage" and "gate man" as the gateman.

understand "old man" and "man" as gateman when player is in Notices Section and gateman is in Notices Section.

check taking gateman: say "'Gateman, get a man, very clever. But thing is, you'll be working with things, not ideas or actions.'" instead; [??]

chapter broad board

the broad board is scenery in Notices Section."[one of]Welcome to YORPWALD![paragraph break]OUR NEEDS ENDURE SO![paragraph break]--Person willing to turn self into humiliating identification to aid adventurers in rescuing our fair land. Must have strength or magic touch to raise big metal gate. Benefits include unlimited complaining to rescuer/prospective hero. Obligations include explaining situation to rescuer/prospective hero. Risks include hero getting stuck on requisite four- then three-letter word combination to release you.[line break][2da]fellow named Terry to allow quick way for temporarily stuck adventurers to [b]RETRY[r] and return to Trips Strip.[paragraph break]You hear a big VOOP. The writing on the board is replaced by even more writing, but not before you write some basic stuff down in your notepad.[board-note][or][2da]quester request: text adventurer with savoir-savior to save shuffled Yorpwald from being fflushed. High chance of real fun, flaneur, low chance of funeral. No crudities like diuretics needed! Also, nothing above eight letters.[line break][2da]Canny Nancy or Brain-Bairn Brian preferred to Manly Lyman or Army Mary. Skill kills![line break][2da]Scrabble, MasterMind, and/or Boggle expertise a plus. Simple on-the-game training provi... oh! Hi! You're here. Futz with the static if you want[if nametag is touchable]. Nametag: it grants starting. You can't just walk into the gateway--and not like you can find [first custom style]a tan gem[r][end if]. But you won't have to go to [first custom style]Mt. Egana (Mt. Agena?) [r]I forget! [paragraph break]Also, the color red is all wrong, but now you know that, it can help you be right. So look out for red writing.[stopping]"

to say board-note:
	pad-rec-q "board";
	pad-rec "retry";
	now retry-known is true;

retry-known is a truth state that varies.

understand "billboard" as broad board.

broad-board-x-count is a number that varies. broad-board-x-count is 0.

after examining broad board:
	if broad-board-x-count < 3, increment broad-board-x-count;
	continue the action

chapter mega-ant

the mega ant is a thing. description is "Boy, is it bright red! And fierce! It's clicking aggressively at you.". "A mega-ant now guards the gateway! It's too tough for you, so you may need someone to dispel it."

check taking the mega ant: say "You can't take it, either in the figurative or literal/fight-ual sense." instead;

understand "mega-ant" as mega ant.

Include (-
	has transparent talkable
-) when defining mega ant.

chapter doll house

a doll house is a thing in Notices Section. "You see [if static is in Notices Section]an incomplete-looking doll house with a crackling noise coming from a few loud holes[else]that doll house you put those attics on[end if]. It is labeled FOR INSTRUCTIONAL PURPOSES ONLY."

check entering doll house: say "It's way too small. As the house itself says, it's for instructional purposes[if static is flipped-yet], and you've sort of figured things already[else], but you don't have to tinker with the static[end if]." instead;

understand "dollhouse" as doll house.

check taking the doll house: say "Some hero(ine) you'd be, stealing a doll house." instead;

description of the doll house is "[if attics are touchable]It's much nicer and quieter now that you tacked the attics on[else]You hear static hissing from it. Plus, the doll house isn't nearly as tall as it could be. It could use an extra floor or two[end if]."

section static

the static is reversible LLPish scenery in Notices Section. lgth of static is 6. gpos of static is 3. rpos of static is 1. rgtext of static is "[rcn][gc][rc][rc][rc][rc]". cert-text of static is "-[ast]T[d1][d1][d1][d1]". rect-text of static is "A[d1][d1][d1][d1][ast]S".

description of static is "It's not especially painful to listen to, but you probably don't have to."

understand "noise" as static when player is in Notices Section and static is in Notices Section.

section attics

the attics are reversible plural-named scenery. the attics are flippable and flipped-yet. lgth of attics is 6. gpos of attics is 6. rpos of attics is 5. rgtext of attics is "[rcn][gc][rc][rc][rc][rc]". cert-text of attics is "-[ast]T[d1][d1][d1][d1]". rect-text of attics is "S[d1][d1][d1][d1][ast]C".

understand "attic" as attics when attics are fungible or static is fungible.

check taking the attics: say "You could flip them back to the static if you want, but it'd be mean to steal what you just built. And useless." instead;

description of the attics is "They fit perfectly on what was once the top of the house. Maybe there's no way a doll could get there, but the house looks nicer now."

chapter acne-bit cabinet

the acne bit cabinet is a LLPish open openable transparent flippable container in Notices Section. It is fixed in place. "[one of]It can't be... can it be...? A cabinet floating in mid-air. It looks acne-bit. It's open, too[or]The [if acne bit cabinet is not flippable](no longer) [end if]acne-bit cabinet is still floating [if player is in notices]and squeaking, maybe shuddering as if trying to move meaningfully [end if]here[if player is in Notices Section]. It contains [a list of things in cabinet][end if][stopping].". printed name of cabinet is "acne-bit cabinet". understand "acnebit" and "acnebit cabinet" as cabinet. description of acne bit cabinet is "It's open[if acne bit cabinet is not flippable], and you can't see the acne that was there[else]. The acne-bit parts do look red--maybe you can get rid of them[velcro-check][end if]. [if number of things in cabinet is 0]It's empty[else]You see [a list of things in cabinet] inside[end if].".

gpos of acne bit cabinet is 3. rpos of acne bit cabinet is 6. lgth of acne bit cabinet is 7. rgtext of acne bit cabinet is "[rcn][gc][rc][rc][rc][rc][rc]". cert-text of acne bit cabinet is "-A[d1][d1][d1][d1][d1]". rect-text of acne bit cabinet is "B[d1][d1][d1][d1][d1]E".

to say velcro-check: say " with the right healing potion or whatever[if metros is solved]. You think back to how the Velcro was sort of a brand name, and maybe you need a common one here[end if]"

check inserting into the acne bit cabinet:
	if noun is gadget or noun is saltine or noun is tin foil info lit or noun is phial, say "No need to put [the noun] back in the cabinet. It's yours." instead;
	say "Yes, the cabinet is for storage, but you [if gateman is off-stage]don't have anywhere to go, yet[else if Trips Strip is visited]only need to put items you're done with in it[else]probably won't be coming back[end if]." instead;

check examining cabinet:
	ignore the examine containers rule;
	if location of player is Trips Strip, say "You've no idea where the cabinet puts all its items. Maybe you didn't read the right fantasy books. But--they're there, helping keep your inventory free. A small favor[if number of things in cabinet > 0]. You notice some potentially useful stuff in the cabinet: [list of things in cabinet][end if]." instead;

check opening acne bit cabinet: say "It already is." instead;

check taking acne bit cabinet: say "Whatever keeps it floating in place also keeps you from moving it. Besides, it's a bit heavy." instead;

description of cratered bits is "The acne-bit parts are very red. Interesting."

check closing the acne bit cabinet: say "You don't need to hide anything in there from anyone." instead;

the tenibac is boring abstract scenery. it is privately-named. printed name is "some Bactine". description of tenibac is "The acne-bit cabinet doesn't need a double dose of Bactine.". bore-text is "BUG.". [this is the dummy flip to thing for the cabinet LLP]

check putting something on cabinet: [??]
	say "(I'll assume you meant in, not on.)";
	try inserting noun into cabinet instead;

chapter prep paper

a prep paper is a warpable thing. description of a prep paper is "USURPER PURSUER STENO-NOTES (TEN, SO). LASTING NAG-LIST OF CRAFTIEST TRIFECTAS.[paragraph break][unless forest is solved][forest-prep][else][second custom style]                        FOREST DONE[r][end if][line break][unless sortie is solved][sortie-prep][else][second custom style]                        SORTIE DONE[r][end if][line break][unless metros is solved][metros-prep][else][second custom style]                METROS DONE[r][end if][line break]                    [if burdell is moot][second custom style]JUST, WELL, -BE- NOW![r][else]R. FIND RED BULL BURDELL'S WEAKNESS[end if]" [bold-ok]

to say sortie-prep: say "I-A. [if taco is off-stage]Warm Food[else][second custom style]GOT TACO[r][end if] I-B. [if coat is off-stage]Warm Clothing[else][second custom style]GOT COAT[r][end if] I-C. [if missile is off-stage]Weapon of Kindness[else][second custom style]GOT MISSILE, NOW TO LAUNCH IT[r][end if]". [bold-ok]

to say forest-prep: say "F-A. [if beard is not wearable]Disguise[else][second custom style]GOT DISGUISE[r][end if] F-B. [if shotgun is off-stage]Get and load weapon[else if silver is off-stage]Load weapon[else][second custom style]GOT LOADED WEAPON[r][end if] F-C. [if player is not in Frost Forts]Find way, d[else]D[end if]efeat an all-ice alliance". [bold-ok]

to say metros-prep: say "M-A. [if gardenia is off-stage]Find a flower[else][second custom style]GOT FLOWER[r][end if] M-B. [if tulip is in Esoteric Coteries]Find a light source[else][second custom style]GOT LIT-UP TULIP[r][end if] M-C. [if controls are not in gin nope opening]Find a way underground[else][second custom style]REPAIRED RAILS[r][end if]" [bold-ok]

chapter salient saltine

the salient saltine is a warpable thing in the acne bit cabinet.

report taking salient saltine for the first time:
	say "Got it. You'd have liked a beefier freebie, but with calm opining, you see no use complaining.";
	the rule succeeds;

description of salient saltine is "It says [b]SLAINTE[r][one of] (pronounced slan-chuh, a Gaelic toast for health)[or][stopping] on the package. Not a brand name, but appropriate in the circumstances."

Undo flag is a number variable. Undo flag is 0.

rule for deciding whether to allow undo:
	if helpdebugflag is true:
		append "[b]UNDO[r]: (no hint)[line break]" to the file of gamehints;
	if undo is prevented:
		if undo-code is 1:
			say "Un-eating the saltine entails a huge intent--to win it NOW.[paragraph break]";
			allow undo;
		else if undo-code is 2:
			say "You won't be arrested or serrated for such retreads, but I will provide a warning against your reusing sin urge.";
			allow undo;
		else if undo-code is 3:
			say "Very sensible indeed.";
			allow undo;
		else:
			say "[bug-report] I've disabled undo on this command for some reason I can't figure.";
			deny undo;

chapter tinfoil info-lit

the tin foil info lit is an amusing thing in cabinet. understand "paper" as tin foil info lit. the tin foil info lit is warpable. printed name of tin foil info lit is "tinfoil info-lit". understand "tinfoil" and "tinfoil info/lit" and "tinfoil info lit" as tin foil info lit. [we might as well separate tin and foil, hence the "tin foil"]

description of tin foil info lit is "[one of]It's tinfoil only in writing content--it's actually just paper. It's excessively all-caps and underlined, but I'll spare you that.[or]You read it again.[stopping]--If you can change stuff, why can't the people who made the gadget? How do they know you can? Or why couldn't they find someone off the street? Perhaps they're the real enemy and you're the pawn.[line break]--If they really wanted you to clean things up, why don't you have even MORE cluing items?[line break]--That NEW DOOR is not really ONE WORD. Same as the guy who can lift it! They are two short words, easier than one big scary seven-letter word.[line break]--Anyone smart enough to untangle this world won't get any fulfillment from doing so. So there, stupider disputer![paragraph break]--Sane Sean, Farce Facer, Saltier Realist[paragraph break][if store f is moot or store i is moot or store m is moot]This seems like total nonsense, now you've found other portals and such[else if player is in Trips Strip]This guy must be wrong. You've gotten to the Trips Strip, and you just need a way out[else]It'd all be distressingly persuasive gotcha-logic if you hadn't been able to summon [anim-animals]. But this is a fantasy world, [logic-cracks][end if]." [bold-ok]

to say anim-animals: say "[if thickets-score > 1]some animals[else]an animal[end if]"

to say logic-cracks: say "[if getaway is touchable or gateman is touchable]and you've already shown cracks in his logic[else]so there's a chance he's wrong[end if]"

chapter tagged gadget

a tagged gadget is in acne bit cabinet. the tagged gadget is warpable. the tagged gadget can be broken. the tagged gadget is not broken.

button-locked is a truth state that varies.

forest-warn is a truth state that varies.
sortie-warn is a truth state that varies.
metros-warn is a truth state that varies.

secure-warn is a truth state that varies.

after printing the name of the tagged gadget when taking inventory:
	if tagged gadget is examined or ever-scan is true:
		say " ([if button-locked is true]locked into [end if][if gadget is cert][b]CERTIFY[r][else][b]RECTIFY[r][end if] mode)";

check taking gadget: if gadget is in Potshot Hotspot and red bull is in Potshot Hotspot, say "Red Bull Burdell kicks it out of the way." instead;

report taking the tagged gadget:
	say "As you pick it up, you see it's a weird go-hint thingo, all right. The show hows tag dangling from it seems relatively free of legalese. You notice a tip in a pit on the side of the gadget.";
	if gateman is touchable, say "[line break]Nat Egam nods. 'Take good care of it. Well, it's hard to break, so don't feel you'll wear it out. I'm proud of what I can make it do ... and  yet ... I have some ideas for a new version, maybe far in the future, if worse evil comes to Yorpwald. Anyhoo.'";
	the rule succeeds;

to say buz-help: say "[if gateman is touchable][one of]. 'That means you can't change the item back,' says the gateman.[or].[stopping][else].[end if]".

rule for supplying a missing noun (this is the scan the location if you can rule) :
	if current action is scaning or current action is rectifying or current action is certifying or current action is cring:
		if current action is certifying:
			now gadget is cert;
		if current action is rectifying:
			now gadget is rect;
		if player is in Potshot Hotspot and red bull is in Potshot Hotspot:
			now noun is red bull;
			continue the action;
		if player is in Esoteric Coteries and player does not have tulip:
			now noun is tulip;
			continue the action;
		if player is in moor and anapest is in moor:
			now noun is anapest;
			continue the action;
		if player is in sf or player is in rf:
			now noun is a random touchable guider;
			say "You're picking something up. Probably [the noun].";
			continue the action;
	if current action is cring:
		if can-scan-air:
			say "You scan the air around, twiddling from certify to rectify and back.[paragraph break]";
			read-gadget;
			gadflip;
			say "[line break]You try the other setting, too.[paragraph break]";
			read-gadget;
			gadflip;
		else:
			say "You wave the gadget, but nothing happens. Maybe specify something to scan.";
		reject the player's command;
	if current action is scaning or current action is rectifying or current action is certifying:
		if can-scan-air:
			read-gadget;
		else:
			say "You wave the gadget, but nothing happens. Maybe specify something to scan.";
		reject the player's command;
	continue the action;

to decide whether can-scan-air:
	if player is in the nick, yes;
	if player is in Astral Altars, yes;
	if player is in roomroom, yes;
	if player is in moor and anapest is moot, yes;
	if player is in Means Manse, yes;
	no.

to read-gadget:
	if player is in the nick:
		say "[gad][if gadget is cert]seven reds on its screen[else][bcn][bc][bc][rc][bc][bc][gc][end if].";
	else if player is in roomroom:
		say "Your gadget's not near anything, but it's registering [if gadget is cert][rcn][gc][gc][rc][else][rcn][bc][bc][gc][end if].";
	else if player is in moor:
		say "Your gadget's not near anything, but it's registering [if gadget is cert][rcn][gc][gc][rc][else][rcn][bc][bc][gc][end if].";
	else if player is in Means Manse:
		say "When you wave your gadget at the exits, it shows [if gadget is cert][gcn][gc][gc][rc][rc][else][gcn][bc][bc][rc][bc][end if]. Elsewhere, it blinks a bit. [if gadget is cert]The first and fourth and fifth entries blink. Maybe there's more than one way to do things[else]There's all sorts of blinking. Hopefully, that means there's more than one thing to think up.";
	else:
		say "[bug-report]";

check examining the tagged gadget (this is the see if gadget clues locations rule):
	if can-scan-air:
		read-gadget;
		the rule succeeds;
	if player is in Esoteric Coteries and nerds are in Esoteric Coteries, try scaning nerds instead;
	if player is in Esoteric Coteries:
		if player has tulip, say "The gadget shows nothing now." instead;
		say "You scan the area, wondering what you could ask nerds that'd get that tulip. You see [asknerds]." instead;

rule for printing a locale paragraph about the tagged gadget:
	if location of player is hotspot:
		say "[if red bull burdell is touchable]Your gadget lies here, but no way you get to it[else]Your gadget, kicked from your hands by Red Bull Burdell, is here for the taking[end if].";
		now tagged gadget is mentioned;

does the player mean switching on the gadget: it is likely.

sg-warn is a truth state that varies.

check switching on gadget:
	if sg-warn is false:
		say "[i][bracket]Fourth wall note: [b]SG[r] may save you keystrokes in the future. You can also [b]C[r]/[b]CER[r]/[b]CERTIFY[r] (object) or [b]R[r]/[b]REC[r]/[b]RECTIFY[r] (object) to skip this altogether.[close bracket][r][line break]";
		now sg-warn is true;
	try sging instead;

understand "device" as tagged gadget.

the tagged gadget can be cert or rect. the tagged gadget is cert.

section cratered bits

section pit

the pit is a boring thing. it is part of the tagged gadget. description of pit is "It holds the tip, which points to the gadget's setting.". bore-text of pit is "You don't need to fiddle with the pit--just examine the tip.". bore-check of pit is bore-pit rule.

this is the bore-pit rule:
	if current action is examining:
		say "You check the tip's setting in the pit.";
		try examining the tip instead;

section tip

the tip is a boring thing. it is part of the tagged gadget. description of tip is "The tip points to [c-r][if gadget-secured is true] and is stuck there, so you can't[else], but you can[end if] switch it back to [r-c][if button-locked is false] unless you push [b]SECURE[r][end if].". bore-text is "The tip's just there to examine, so you know the gadget's setting.".

the block setting it to rule is not listed in any rulebook.

check setting it to:
	if noun is dial, say "[if centrifuge-stopped is true]Oh no. No need for more 'fun.'[else]If you want to set a dial to a number, just type the number in, instead.[end if]" instead;
	say "In [this-game], [b]SWITCH[r] is the preferred verb." instead;

check switching off gadget: say "There's no way to switch the gadget off, but you can try to [b]SWITCH[r] between certify and rectify." instead;

check switching on tip: try switching on gadget instead;

check switching off tip: try switching on gadget instead; [?? check these cases to avoid INSTEAD rules?]

understand "side" as tip.

section handle

the handle is a boring thing. it is part of the tagged gadget. description of handle is "Just wide enough so the tag won't fall off, and just long enough you can grab it without blocking the screen.". bore-text is "The handle is about what it seems to be. Don't worry about it too much."

the cratered bits are part of the cabinet. understand "acne" and "bit" as cratered bits.

scanned-for-gateman is a truth state that varies.

check dropping the gadget: say "It seems far too useful[if scanned-for-gateman is false], if indeed it works[else], especially since it actually works[end if]." instead;

check examining tagged gadget (this is the did I break gadget rule): if gadget is broken, say "It's lifeless without the tag. Nice work!" instead;

description of tagged gadget is "It looks like a wall stud sensor, six inches by twelve, with a screen (labeled 'RECENT CENTER' with a NetRec brand) on the top. A show hows tag [if show hows tag is examined]you've read[else]you can read[end if] is tied by a tight knot to the handle, which narrows where it meets the main part. The gadget crackles with greeny energy. A tip in a pit on one of its edges points to [c-r][if gadget-secured is true] and is stuck there[end if].[paragraph break]You see a blurb above a button labeled [b]SECURE[r]/[b]RECUSE[r]."

section show hows tag

the show hows tag is part of the tagged gadget. understand "show-hows" and "show-hows tag" as show hows tag

does the player mean taking off the magenta nametag when the player is not wearing the magenta nametag: it is very unlikely.

procedural rule while taking off show hows tag: ignore the carrying requirements rule.

description of show hows tag is "'This gadget is certified untransmogrifiable. It can be used to [b]SCAN[r] objects to determine their transmogrification states. Removing tag invalidates warranty. One beep indicates changeabilty. Two mean a compound word.'[paragraph break]Above a small print disclaimer you see two helpful examples."

to say lemon-melon:
	if sr-acc is true:
		say "[first custom style]L[second custom style]E[first custom style]M[second custom style]ON[r], two-way arrow, and [first custom style]M[second custom style]E[first custom style]L[second custom style]ON[r]. The m's and l's are red, but the other letters are green";
	else:
		say "[first custom style]L[second custom style]E[first custom style]M[second custom style]O[second custom style]N[r] <-> [first custom style]M[second custom style]E[first custom style]L[second custom style]O[second custom style]N[r][one of]. A little thought and you realize only two reds on the gadget makes things trivial[or][stopping]"

to say paste-tapes:
	if sr-acc is true:
		say "PASTE, two-way arrow, TAPES. The ST of paste is red and green, with the PE of tapes being green and red. Hmm. Tapes starts with T and ends with S, while Paste starts with P and ends with E"; [bold-ok]
	else:
		say "[bluetext]PA[r][first custom style]S[r][second custom style]T[r][bluetext]E[r] <-> [bluetext]TA[r][second custom style]P[r][first custom style]E[r][bluetext]S[r][one of]. The red S/green T in [b]PASTE[r] and green P/red E in [b]TAPES[r] are, you realize, the first and last letters in the other word[or][stopping]";

to say prg:
	pad-rec-q "certify";
	pad-rec "rectify";

the examples are part of the show hows tag. understand "text" and "example" as examples.

description of examples is "[b]CERTIFY[r]: [lemon-melon].[paragraph break][b]RECTIFY[r]: [paste-tapes].[prg]"

the small print disclaimer is part of the show hows tag.

description of small print disclaimer is "'Adventurers using the gadget frequently are no less certifiably heroic and no more certifiably practical than those who don't. Manufacturer not responsible for guilt and lack of intellectual self-satisfaction over using gadget too frequently or frustration from using gadget too rarely.'"

check taking off the show hows tag: try silently taking the show hows tag instead;

check taking the show hows tag:
	ignore the can't take component parts rule;
	say "If it were a mattress tag, you'd laugh and pull it off, but everything's gotten a bit weird. You don't know about the warranty on it, but the tag seems pretty important. It's made of some weird plastic you can't just rip[one of].[paragraph break]Plus, embarrassingly, you've no clue how to undo the knot tying the tag to the handle--and you're not strong enough to pull the tag off[or][stopping].";
	if player does not have the gadget:
		say "[line break]By the way, it seems you don't even have the gadget. Did you mean to take the tagged gadget instead?";
		if the player dir-consents:
			say "Ok, taking the gadget.";
			try taking the gadget instead;
		else:
			say "Okay.";
	the rule succeeds;

check pulling show hows tag: try taking show hows tag instead;

does the player mean examining the gadget: it is very likely.

[description of colored writing is "'Provably 79.12% hintier than a tagged gadget. [b]Green print[r] gives you the start, [i]red print[r] the end. The middle bits fall into place.'[paragraph break]The example reads PA[i]S[b]T[r]E <-> TA[b]P[r][i]E[r]S. (red S, green T, green P, red E. Everything else blue.)"]

section recent center

the Recent Center is a boring thing. it is part of the tagged gadget. understand "net rec" and "netrec" as Recent Center. bore-text is "Looking at the tag, you see you probably need to [b]SCAN[r] other objects so something appears in the Recent Center. You probably can't manipulate the data, once it's on there.". description of Recent Center is "[if last-obj is not oafs sofa][last-obj] gave a reading of [last-reading][else]You need to [b]SCAN[r] something to see anything on the Recent Center[end if].".

last-obj is a thing that varies. last-obj is the oafs sofa.

last-was-cert is a truth state that varies.

to say last-reading:
	let po be parse-output;
	now parse-output is false;
	say "[if last-was-cert is true][rgtext of last-obj][else][rgbtext of last-obj]";
	now parse-output is po;
	if last-obj is moot, say ", but you took care of that. So I guess that clue was useful, even if it isn't, now"

section s-r secure/recuse button

the s-r is part of the tagged gadget. the s-r is privately-named.

printed name of s-r is "[b]SECURE[r]/[b]RECUSE[r] button". understand "secure/recuse button" and "secure/recuse" and "button" as s-r.

description of s-r is "It's currently [unless gadget-secured is true]not [end if]lit up indicating [if gadget-secured is true][b]SECURE[r][else][b]RECUSE[r][end if], [if button-locked is true]and it's locked in place[else]but you can probably push it to change that[end if]. An arrow leads from it to the [c-r] tip."

the arrow is part of the tagged gadget. description is "The arrow leads from the locked [b]SECURE[r]/[b]RECUSE[r] button to the [c-r]. This seems to indicate [b]SECURE[r]/[b]RECUSE[r] affects whether you can change the [b]RECTIFY[r]/[b]CERTIFY[r] settings."

gadget-secured is a truth state that varies.

[!!! take all: make sure gadget is last]

check switching on s-r: try pushing s-r instead;

check switching off s-r: try pushing s-r instead;

check pushing s-r:
	if button-locked is true, say "You can't twiddle the button any more. Entering a store seems to have broken it." instead;
	if gadget-secured is true:
		now gadget-secured is false;
	else:
		now gadget-secured is true;
	say "You push the button, and it [if gadget-secured is true]starts[else]stops[end if] glowing. The tip in the pit [if gadget-secured is true]clicks[else]vibrates[end if].";
	the rule succeeds;

to say c-r: say "[if gadget is cert][b]CERTIFY[r][else][b]RECTIFY[r][end if]".

to say r-c: say "[unless gadget is cert][b]CERTIFY[r][else][b]RECTIFY[r][end if]".

section blurb

the blurb is part of the tagged gadget. description of blurb is "'Ask a qualified person if the [s-r] button is right for you. Or, at least, to learn what it does.'"

procedural rule while eating something: ignore the carrying requirements rule.

section knot

the tight knot is part of the tagged gadget.

description of the knot is "It's simple but tight, with no way to start to loosen it."

check taking the knot: try untieing the knot instead;

check untieing the knot: say "There's no way to do much with the knot. It's simple and tight." instead;

check untieing tag: try untieing knot instead;

check untieing gadget: try untieing knot instead;

section blue lube and phail phial

[a hack here is to put this below the gadget so the "Ow" appears last]

the PHAIL phial is a thing in acne bit cabinet. the phial is warpable.

description of PHAIL phial is "It looks glinty and[if phial is in cabinet], you imagine,[end if] feels tingly. It contains some blue lube that sloshes about a bit[if phial is not in cabinet]. You see the words [b]GLEAN[r]/[b]ANGLE[r] scratched on it, and it also reads, in small print, PROACTIVELY HELPING ADVENTURERS IN LIMBO. Geez, acronyms can be so contrived[else]. It looks like you could read it, if you took it from the cabinet[end if]."

the blue lube is a boring thing. it is part of the phail phial. description of blue lube is "[if phial is in cabinet]You have to blink a couple times after looking at it, even from outside the cabinet. It has some weird powers, but you'd probably need to ask how to harness them[else if lube-asked is false]You sense it's powerful, but you need to look at it right[else]You remember what Nat Egam said. You can either [b]ANGLE[r] or [b]GLEAN[r] as you look at it, which may help your quest[end if].". bore-check of blue lube is bore-lube rule. bore-text of blue lube is "The lube's really only good for staring at."

[Rule for deciding whether all includes blue lube while taking (this is the zap lube rule): rule fails.]

cabinet-bit-me is a truth state that varies.

check taking phial:
	if cabinet is touchable:
		if lube-asked is false and player is not in Trips Strip:
			now cabinet-bit-me is true;
			say "Ow! The cabinet bites you as you try to take the phial. It didn't break your skin, at least[if gateman is in Notices Section][one of]. Nat Egam coughs, as if he might be able to help you[or][stopping][else if gateman is off-stage]. Maybe you could use someone to help you understand the cabinet[end if]." instead;

check opening the phail phial: say "No. The blue lube would leak out." instead;

this is the bore-lube rule:
	if the current action is objasking generically or current action is objasking about, continue the action; [?? what is procedural]
	if the current action is taking, say "[if lube-asked is false]The blue lube probably belongs in [the phial], until you determine otherwise[else]You wouldn't be able to [b]GLEAN[r] or [b]ANGLE[r] then[end if]." instead;

last-lube-turn is a number that varies. last-lube-turn is usually -5.

check examining blue lube:
	if lube is not in cabinet:
		if turn count < 5 + last-lube-turn:
			say "It's too soon since the last time you looked into the lube. Wait [5 + last-lube-turn - turn count] turn[if 5 + last-lube-turn - turn count > 1]s[end if], then try again.";
			decrement the turn count;
		else:
			now last-lube-turn is turn count;

report taking phail phial:
	if player has phail phial:
		say "The cabinet's doors seem to waver a bit[if cabinet-bit-me is true], but this time it doesn't nick you[else], but they don't slam on you[end if].";
		say "[line break]'Oh! I should mention the two commands on the phial are the only ones you need. I hope they're powerful enough,' Nat Egam remarks.";
	continue the action;

section secureing

secureing is an action applying to nothing.

understand the command "secure" as something new.

understand "secure" as secureing.

carry out secureing:
	if player has gadget, try pushing s-r instead;
	say "[reject]" instead;

section recuseing

recuseing is an action applying to nothing.

understand the command "recuse" as something new.

understand "recuse" as recuseing.

carry out recuseing:
	if player does not have gadget, say "[reject]" instead;
	if player is not in Trips Strip, say "You can't recuse unless you are in the Trips Strip[if button-locked is false]. The button's locked, anyway[else]. However, you can [b]SECURE[r] or [b]PRESS SECURE[r][end if]." instead;
	if gadget-secured is false and button-locked is true, say "Not securing in your first trip means you can't use the gadget to recuse." instead;
	if number of solved regions is 1, say "The [b]RECUSE[r] button is for after you've solved two areas, but you haven't solved any, yet." instead;
	if number of solved regions < 3, say "You can't recuse yet. You still need to work through one more store." instead;
	if forest is unsolved:
		say "Suddenly, you know what to do. You point the gadget at [if store f is touchable]store F[else]the forest you didn't get through[end if]. As if in a blur, you see werewolves in ice being shot, and you hear distant applause.";
		moot store f;
		moot scented descent;
		now forest is bypassed instead;
	if sortie is unsolved:
		say "Suddenly, you know what to do. You point the gadget at [if store f is touchable]store I[else]the sortie you didn't get through[end if]. As if in a blur, you see a missile launched, and it bathes a grey castle in bubbles and rainbows and other obnoxiously smiley stuff.";
		moot store i;
		moot posted depots;
		now sortie is bypassed instead;
	if metros is unsolved:
		say "Suddenly, you know what to do. You point the gadget at [if store f is touchable]store I[else]the sortie you didn't get through[end if]. As if in a blur, you see a missile launched, and it bathes a grey castle in bubbles and rainbows and other obnoxiously smiley stuff.";
		moot store m;
		moot trade tread;
		now metros is bypassed instead;
	say "You don't seem to have any regions to recuse yourself from. From which to recuse yourself. And you don't get to skip [if store r is touchable]store R[else]the resort[end if]." instead;
	the rule succeeds;

book weird stuff

chapter mention-marcos-macros

to mention-marcos-macros:
	if annoying-switches > 5 and marcos-trumped is false and location of player is not Notices Section:
		say "A shady figure sidles up to you. 'Hey! Pal! The name's Marcos. Sellin['] macros. Ways to lump actions together. Streamline your thinking. Actually, not selling them at all, just hoping you remember me once you fix things here and are an acclaimed hero with clout.'[paragraph break]He takes the gadget away from you, fiddles with it, and gives it back. You are impressed with his dexterity, and yet, you feel it would not be too tough to imitate him.[paragraph break]'Just, if you think of one scan as R or C--you can make both of them with [b]RC[r]. Or [b]CR[r]. I won't judge.'[paragraph break]As you note this in your notepad, he pops out of view.";
		pad-rec "macros";
		now marcos-trumped is true;

chapter gleaning

gleaning is an action out of world.

understand the command "glean/glen/glea/hanker/nk/kr/hnr/hkr" as something new.

understand "glean" and "glea" and "glen" and "hanker" and "nk" and "kr" and "hnr" and "hkr" as gleaning. [glea/glen are typos I made a lot during manual testing.]

this is the ordeal-glean rule:
	if location of player is Notices Section:
		if nametag is touchable, say "You see yourself looking down at your nametag, mouthing a word and pointing to the gate as an old man appears. Then you see yourself tinkering with the tagged gadget on both settings, snapping your fingers and groaning, and walking through the gate." instead;
		if player does not have gadget, say "You see yourself taking the tagged gadget inside the cabinet." instead;
		say "You see Nat Egam sneaking up from behind you and smacking you on the head, saying to get going already...[paragraph break]And a few seconds later, he does[one of]. Well, the clairvoyance bit seems to work[or]. Again. Hooray for double-checking, I think[stopping]." instead;

this is the stores-glean rule:
	repeat with myp running through portals:
		if myp is ogled lodge and not you-can-advance, next;
		if myp is touchable, say "You see yourself exploring [the myp] you created." instead;
	if store f is touchable, say "You see yourself walking into woods instead of store F. Well, not quite woods. You think you hear lumber rumble." instead;
	if store i is touchable, say "You see yourself examining the pictures on store I, then store I, then watching it collapse. You see yourself walking down a narrow exit. You even hear something like a rocket launch." instead;
	if store m is touchable, say "You see yourself examining the map on store M. You hear a subway--or maybe just a busy city street." instead;
	if number of solved regions < 3, say "You see yourself entering [the random touchable portal]." instead;
	if store r is touchable, say "You see yourself walking into store R, which temporarily looks like a luxury hotel, with palm trees around." instead;
	say "You see yourself relaxing in a large home far from here." instead;

this is the forest-glean rule:
	if Self ID Fields is unvisited, say "You see yourself considering all four compass directions before picking the right one." instead;
	if Emptiness Sepiments is unvisited, say "You see yourself [if number of things that are part of beard < 2]putting something on your face and then [end if]walking through Corses Crosse with ease." instead;
	if livers are off-stage, say "You see the liches working their way under the meats, which fall into the grinder." instead;
	if sliver is off-stage, say "You see the livers narrowing to a sharp, semi-metallic point." instead;
	if spread is in Emptiness Sepiments, say "You see the spread fluttering as if outside an open window." instead;
	if red asp is in Emptiness Sepiments, say "You see a snake-skin patterned cloth hanging and swaying from an unseen wind." instead;
	if drapes are in Emptiness Sepiments, say "You see yourself slashing at the drapes, which billow out." instead;
	if shotgun is off-stage, say "You see yourself reading the Notes Stone poem and carrying something stick-like." instead;
	if drapes are off-stage, say "You see yourself changing the [if red asp is in Emptiness Sepiments]red asp[else]spread[end if] [if player is not in Emptiness Sepiments]in Emptiness Sepiments [end if]into something easier to cut with the sliver." instead;
	unless silver is moot, say "You see yourself [if silver is off-stage]molding the sliver into something more compact and glowing and then [end if]loading your shotgun." instead;
	if Frost Forts is unvisited:
		if player has spam or player has maps, say "You see yourself tracing something on the [if Spam is moot]maps[else]Spam[end if] and then walking with a purpose." instead;
	if location of player is Frost Forts:
		if vowels are in Frost Forts, say "You see the vowels grow slavering teeth." instead;
		say "A loud blast, then gore splatters everywhere." instead;

to say in-here of (rm - a room): say "[if player is in rm]here[else]in [rm][end if]"

this is the sortie-glean rule:
	if centrifuge-stopped is false, say "You see yourself flipping the dial back and forth about six or seven times[sortie-end]." instead;
	if the nick is unvisited, say "Things look hazy. You find yourself in a cell, which is a bit scary, but you can't stay here." instead;
	if player is in the nick, say "You see yourself patting your stomach." instead;
	if warts are part of the player, say "You see your face clear again, pleased you reversed the warts." instead;
	if taco is off-stage and coat is off-stage, say "You see yourself making a meal, then dressing up to go out. Funny, though. The meal disappears without you eating it. You can't see what it becomes." instead;
	if hoses are touchable, say "You see yourself smiling at your feet with pride!" instead;
	if moor is unvisited, say "You see yourself [if player is not in roomroom]going to the southeast room and [end if]disappearing!" instead;
	if anapest is in moor, say "You see a rough but friendly fellow scaring Pat away." instead;
	if hay is not part of scraped wall, say "You see yourself filling up [if stiller trellis is visited]the wall [in-here of Stiller Trellis][else]a wall you don't recognize yet[end if] then making it disappear." instead;
	if scraped wall is not moot, say "You see the haywall vanishing." instead;
	if silo is not in moor, say "You see yourself building a huge structure [if player is not in moor]in the moor [end if]without saying anything." instead;
	if black door is not part of the silo or panel is not part of the silo or missile is not in silo, say "You see yourself assembling the silo further." instead;
	if hoots button is touchable or trees button is touchable, say "You see yourself pointing at one of the buttons before it changes. Then you push it and hear a roar." instead;
	say "The blue lube shows you nothing. You probably just need to push a button or something." instead;

this is the metros-glean rule:
	if night thing is in The Ol Hotel, say "You see yourself giving something reddish to [if The Ol Hotel is visited]the night thing in the hotel[else]some weird monster[end if] before it runs off." instead;
	if dry cake is in Obtains Boastin Bastion, say "You see bugs crawling over rich people, while you sit in the center, smiling." instead;
	if brocade is in Florae, say "You see yourself taking a free sample of some cloth." instead;
	if player has heaths, say "You see a weapon at your side, as if tied to a belt." instead;
	if player has begonias, say "You are holding a bag with one hand and plugging an ear with another." instead;
	if neon pig is in Elm Train Terminal and Elm Train Terminal is visited, say "You see the neon pig exploding, the empty space being filled with--an ear of corn?!" instead;
	if Esoteric Coteries are unvisited:
		d "dry cake: [location of dry cake].";
		d "keycard: [location of keycard].";
		say "You see yourself putting the [if brocade is moot]barcode[else]brocade[end if] and the [if player has keycard]keycard[else]dry cake[end if] on the friend finder [in-here of Underside][if barcode is not part of keycard]. Nothing works until you put them together[end if]." instead;
	if player does not have tulip:
		if player has noise bag or player has begonias, say "You see yourself grabbing the tulip as the nerds close their ears!" instead;
		if termite emitter is angstgnatted, say "You see yourself opening the termite emitter so it swarms over the nerds." instead;
		say "You see yourself asking the nerds about something before a lightbulb goes on over your head. But it is not lit. Odd." instead;
	if player is not in Bassy Abyss, say "You see yourself (finally) walking east from Elm Train Terminal now that you have a light source." instead;
	if siren is touchable, say "You see yourself pounding the siren, then clapping your hands and creating a swarm of dust." instead;
	if beats are touchable, say "You see a crooked musical chord replaced with a monster worse than the night thing. Then you take something from your [if player has noise bag]noise bag[else]sheath[end if], and the monster collapses before you touch it." instead;
	if sword is touchable, say "A quick swordfight, and the beast is vanquished!" instead;
	say "Words morph into a sword that overpowers the beast." instead;

this is the resort-glean rule:
	if player is in Astral Altars, say "You watch as the tiles shrink from a large land mass to a smaller one." instead;
	if player is in Leis Isle, say "You see yourself either swimming or flying east[if cork is off-stage and wings are off-stage], but not without proper gear[end if]." instead;
	if player is in Rived Drive:
		if poles are in Rived Drive, say "You see the poles to the east bend at an angle." instead;
		if toeholds are touchable or (ropes are touchable and grips are touchable), say "You see yourself climbing east without much trouble." instead;
		say "You see two visions: one, [if tool shed is not in Rived Drive]you trying out the toeholds[else]the tool shed being destroyed[end if], and another, you wearing the [if sprig is in Rived Drive]sprig, modified[else]grips[end if] and the [if spore is in Rived Drive]spore, modified[else]ropes[end if]. In each, you climb east." instead;
	if player is in Potshot Hotspot:
		if red bull burdell is touchable, say "You see yourself somehow managing to defeat Red Bull Burdell while still on the ground." instead;
		if red bull burdell is moot, say "You see yourself walking east." instead;
		say "You see the [if riot is in Potshot Hotspot]riot[else]trio[end if], happier now, discussing art and wearing dirty smocks." instead;
	if player is in Means Manse, say "You ... well, you see lots of possibilities. Just sitting around, avoiding the exits, or making the Means Manse feel more like home." instead;

carry out gleaning:
	if phial is not touchable, say "[reject]" instead;
	if phial is in cabinet:
		if lube-asked is true:
			say "(taking the phial first)[paragraph break]";
			try taking phail phial;
			if player does not have phail phial, say "[bug-report] Please let me know how this happened." instead;
		else:
			say "You need to take the phial for that to happen. The cabinet may not want to relinquish it right away. Maybe [if gateman is off-stage]find someone to ask[else]ask the gateman[end if]." instead;
	if blue lube is not touchable, say "[reject]" instead;
	say "You stare into the blue lube for a bit. You see a small story unfold.[line break]";
	abide by glean-rule of mrlp;
	say "BUG. The current game state needs a story.";
	the rule succeeds;

report gleaning (this is the angle-glean check rule):
	h-check;
	continue the action;

to say sortie-end: say ". It all seems to end with some sort of rocket hitting a huge building. But there is no explosion, just rainbows and bubbles. Weird".

book xmxing (saltine cheat)

to ditch-saltine:
	if xray-cheat is false:
		now xray-vision is false;
		say "[line break]You blink, and things look a little less sharp. The saltine's done its work.";
		now undo-code is 1;
		pad-del "xx";
		prevent undo;

rule for supplying a missing noun when xmxing:
	if player is in the nick:
		now noun is t-n;
		continue the action;
	if player is in roomroom:
		now noun is r2;
		continue the action;
	if player is in moor:
		if anapest is in moor:
			now noun is anapest;
		else:
			now noun is m2;
		continue the action;
	if player is in Means Manse:
		now noun is spire;
		continue the action;
	say "Nothing really sticks out. You may have to [b]XX[r] something specific.";
	reject the player's command;

xray-cheat is a truth state that varies.

understand the command "xx" as something new.

understand "xx [something]" as xmxing.
understand "xx " as xmxing.

xmxing is an action applying to one thing. [xmxing is a debug-only command, but we need it to be procedural for automated testing.]

check xmxing:
	if xray-cheat is true:
		if xray-vision is false:
			d "** DING DING ** RELOADING XRAY VISION!"; [bold-ok]
		now xray-vision is true;
	if xray-vision is false:
		if saltine is moot:
			say "You lost your x-ray vision, so you can only just examine, instead.";
		try examining the noun instead;
	if noun is a direction, say "[if player is in sf or player is in rf]You can't see which way to go--maybe use your other senses[else]Just try going [noun] instead[end if]." instead;
	if xray-vision is false:
		if saltine is moot, say "You lost your x-ray vision." instead;
		try examining the noun instead;
	abide by the saltine-thrucheck rule;
	abide by the saltine-llp rule;

this is the saltine-thrucheck rule:
	if noun is thruhinted:
		say "You already hinted through for that. Are you sure you want to use the x-ray vision from your saltine?";
		if xray-cheat is true:
			say "BYPASSING FOR TESTING."; [bold-ok]
		else:
			unless the player dir-consents:
				say "Okay." instead;

this is the saltine-llp rule:
	if noun is unnecc:
		say "Some aftertaste from the saltine doesn't feel great. You wonder if this is the best way to use your vision. Use it anyway?";
		if the player dir-consents:
			do nothing;
		else:
			say "Okay.";
			the rule succeeds;

this is the saltine-location rule:
	if player is in Bile Libe and words are in Bile Libe:
		say "You stare at where the words may be coming from.";
		try xmxing words instead;
	if player is in the moor:
		if pat is touchable:
			say "You imagine a peasant coming by to disrupt Pat's poetry.";
			ditch-saltine instead;
		say "Before staring at anything, you wonder if you could just think yourself back to the [b]ROOM[r]." instead;
	if player is in Means Manse, say "You just want to [b]EXIST[r], really." instead;

carry out xmxing:
	abide by the saltine-check-rule of mrlp;
	if noun is the location of the player, abide by the saltine-location rule;
	if noun is flippable: [start general case]
		repeat through regana of mrlp:
			if the-from entry is the noun:
				if debug-state is true, say "DEBUG EXPERIMENT: article is [indefinite article of the-to entry].";
				say "[v-b]you see [salt-text of noun][if the-to entry is a portal][printed name of go-region of the-to entry in lower case][else][the-to entry][end if].";
				ditch-saltine instead;
		say "You give the saltine a funny look. Like you're not sure if it could give you help. This is a [bug-report]" instead;
	say "Though you squinted extra, you don't see anything beyond what you normally would've. Well, maybe some other time.";
	try examining the noun instead;
	the rule succeeds.

this is the ordeal loader saltine check rule:
	if noun is nametag:
		if broad-board-x-count < 3:
			say "You pause a bit. Maybe there's something [broad-board-x]on the broad board that'd help you decide what to do with the nametag. Or what not to do[if mega ant is touchable]. Maybe that mega-ant is, in its own way, a hint[end if]." instead;
		say "Well, you probably just need to get through with things. You take a bite of the saltine, then you think 'How do I get through that gate, man?' Hmm...[b]GATEMAN[r]. That'd fit." instead;
	if noun is gateway:
		if nametag is moot, say "You don't need to unlock any further mysteries of the gateway." instead;
		try xmxing nametag instead;
	if noun is static:
		say "[if gateman is touchable]Nat Egam makes a dubious noise. Maybe it is not a good idea to use something as powerful as the saltine this early in the game, on something potentially unimportant[else]You stop and think. The static doesn't seem as important as that gateway[end if]. Do so anyway?";
		unless the player dir-consents:
			say "Okay." instead;
		say "[v-b]the static seems to form attics near the doll house[if gateman is touchable]. Nat Egam makes a dubious noise[end if].";
		ditch-saltine instead;
	if noun is attics, say "After some thought, that seems like it'd be a waste, since you know what they were. You can probably change things back, if you want." instead;

to say broad-board-x:
	if broad-board-x-count is 1:
		say "more ";
	else if broad-board-x-count is 2:
		say "you can re-read ";

this is the forest saltine check rule:
	if noun is thorn:
		say "Your vision blurs, and you see a compass rose pointed north.";
		ditch-saltine instead;
	if noun is stew:
		say "Your vision blurs, and you see a compass rose pointed west.";
		ditch-saltine instead;
	if noun is teas:
		say "Your vision blurs, and you see a compass rose pointed east.";
		ditch-saltine instead;
	if noun is shout:
		say "Your vision blurs, and you see a compass rose pointed south.";
		ditch-saltine instead;
	if noun is shell and dashes are in shell:
		say "The shell doesn't change, but the dashes inside do.";
		try xmxing dashes instead;
	if noun is bucket and ones are in bucket:
		say "The bubble doesn't change, but the ones inside do.";
		try xmxing ones instead;
	if noun is bubble and noughts are in bubble:
		say "The bubble doesn't change, but the ones inside do.";
		try xmxing ones instead;
	if noun is River Ville liver or noun is viler liver, say "It seems to come together with a duplicate of itself. You look again, and your x-ray vision remains." instead;
	if noun is banshee:
		say "The banshee seems to howl about becoming a has-been.";
		ditch-saltine instead;
	if noun is livers:
		say "[v-b]you see a silver sliver.";
		preef silver;
		ditch-saltine instead;
	if noun is sliver:
		say "The sliver turns silver for a moment.";
		ditch-saltine instead;
	if noun is spread:
		say "[v-b]the spread seems to become a red asp, then drapes. Hmm. The drapes seem much safer.";
		preef drapes;
		ditch-saltine instead;
	if noun is red asp:
		say "[v-b]drapes seem to flutter in front of the red asp.";
		ditch-saltine instead;

this is the sortie saltine check rule:
	if noun is t-n:
		say "Your vision swirls, and you see a kitchen.";
		ditch-saltine instead;
	if noun is r2:
		if moor is visited:
			say "You non-magically space out and realize you can go back to the moor.";
			the rule succeeds;
		say "Your vision swirls, and you see a moor.";
		ditch-saltine instead;
	if noun is m2:
		say "You have a very non-magical vision of the room you were in before you jumped to the moor.";
		the rule succeeds;
	if noun is trap exits and centrifuge-stopped is false: [start sortie]
		say "The exits are rushing past too fast to focus on them. But you're in line with the dial.";
		try xmxing dial instead;
	if noun is dial and centrifuge-stopped is false:
		say "The number sixteen takes prominence on the dial for a moment. You shake your head, and it disappears. Weird.";
		ditch-saltine instead;
	if noun is warts, say "You can't see them, but you remember the palindrome 'No, too stupid a fad. I put soot on ...'" instead;
	if noun is cask and sack is not off-stage, say "You already changed the cask to a sack[if straw is moot], and you don't see any reason to do so again[else], and if you need to do so again, you won't forget[end if]." instead;
	if noun is sack, say "After some thought, that seems like it'd be a waste, since you know what it was. It may be worth changing the sack back, depending on what you want to carry, though." instead;
	if noun is pat, say "You try to, but it's awkward making eye contact. Maybe you could stare at the air, to flow with the poetry's anapest beat." instead;
	if noun is poem:
		if poem is not folded:
			say "[v-b]you see [if smilies are touchable]the smilies flying off the page, then [end if]the poem folding and becoming a panel.";
			ditch-saltine instead;
		say "You imagine a panel of experts critiquing the poem, before it was folded. Hm. You don't need THAT sort of panel.";
		ditch-saltine instead;
	if noun is scraped wall:
		say "You imagine the scraped wall[if scraped wall is not hayfilled] gets stuffed with hay, then[else], already being a haywall,[end if] becomes a haywall.";
		if scraped wall is not hayfilled:
			preef hallway;
		ditch-saltine instead;
	if noun is oils:
		say "[v-b][if soil is in moor]you see a silo[else]you see soil, then a silo[end if].";
		ditch-saltine instead;
	if noun is t-n, say "[v-b]you see a kitchen." instead;
	if player is in the nick and noun is not t-n:
		say "You let your eyes wander.[paragraph break]";
		try xmxing t-n instead;

this is the metros saltine check rule:
	if noun is a reading, try xmxing drainage instead;
	if noun is begonias and heaths are not in Florae:
		say "You already took the heaths." instead;
	if noun is heaths and begonias are not in Florae:
		say "You already took the begonias." instead;
	if noun is begonias or noun is heaths:
		unless gardenia is moot, say "The faeries buzz, perturbed. You really shouldn't do anything until you've traded for merchandise." instead;
		unless player carries noun, say "You should take [the noun] if you want to work on them." instead;
	if noun is motto:
		say "You thought you saw a tomato whiz by 'a motto,' there.";
		ditch-saltine instead;
	if noun is antlers:
		say "You take care not to drop any crackers on the rug. A large RENTAL sign seems to obscure the antlers for a moment.";
		ditch-saltine instead;
	if noun is dry cake and bastion-evac is false, say "Someone coughs 'discreetly' as you stare at the cake. If they were gone, you might be able to look at it more closely." instead;
	if noun is nerds or noun is tulip:
		if player does not have tulip:
			say "You suddenly feel darkness, along with an urge to ask the nerds about it.";
			ditch-saltine instead;
	check-deadbeat-corn;
	if noun is neon pig:
		say "[v-b]you see an opening where the pig is.";
		ditch-saltine instead;

to check-deadbeat-corn: if noun is lost corn and bastion-evac is false, say "The dead beat deadbeat eyes you warily. You probably can't take the corn until you pleased the deadbeat, but yay for looking ahead.[paragraph break]" ;

this is the resort saltine check rule:
	if noun is tiles:
		say "As your vision blurs, the tiles['] blue, green and brown re-form to make an islet.";
		ditch-saltine instead;
	if noun is stile:
		say "As your vision blurs, the stile seems to stand over a small islet.";
		ditch-saltine instead;
	if noun is l2:
		say "Your vision blurs as you recall people you thought you trusted telling you lies.";
		ditch-saltine instead;
	if noun is protest:
		say "You see the trio stopping their protest to get to work as potters.";
		ditch-saltine instead;
	if noun is links:
		say "[v-b]you see [unless china is moot]some china and also [end if]kilns, to bake clay in, or something.";
		ditch-saltine instead;
	if noun is red bull burdell or noun is toe:
		say "You squint at Red Bull Burdell, trying to notice what he could become, but all you notice is his infected toe as he yells 'GET OUT.' Maybe you could pull it...no, not pull...well, there are only six possibilities...";
		ditch-saltine instead;
	if noun is X ITES exits:
		say "The [x ites] just seem to [b]EXIST[r]. Maybe you can, too.";
		ditch-saltine instead;
	if noun is spire:
		say "Your vision blurs a bit, and you see names and hear AMENs.";
		ditch-saltine instead;

to say salt-text of (sal - a thing): [I couldn't seem to get indefinite articles to work, so I just hard coded it]
	if sal is store f or sal is store i or sal is store r, say "a "; [stores]
	if sal is bread or sal is ones or sal is noughts or sal is liches or sal is slit, say "a "; [forest]
	if sal is cake pan or sal is cult tee or sal is tall trio or sal is spearman or sal is taco, say "a "; [sortie]
	if sal is anapest or sal is roadblock or sal is smilies, say "a ";
	if sal is trees button or noun is hoots button, say "a ";
	if sal is cask, say "a ";
	if sal is beats or sal is dry cake or sal is brocade, say "a "; [metros]
	if sal is drainage or sal is heaths or sal is begonias or sal is words, say "a ";
	if sal is poles or sal is riot, say "a "; [resort]

to say v-b: say "Your vision blurs a bit, and instead ".

xray-vision is a truth state that varies. xray-vision is usually false.

saltine-warn is a truth state that varies.

check eating the saltine:
	if gateman is touchable:
		now saltine-warn is true;
		say "[one of]Nat Egam coughs. 'You might want to save that. It'll help you later, with a real puzzle, if you [b]X[r], err, [b]EXAMINE[r] double hard. The static [if static is moot or attics are moot]was[else]is[end if] just practice.'[or]You reckon you can wait until the real quest.[stopping]";
		pad-rec "xx";
		the rule succeeds;
	if saltine-warn is false:
		now saltine-warn is true;
		say "[if trips strip is visited]Small one-time warning: Nat Egam could've told you what the saltine does, though you may be able to guess[else]Maybe you should find someone who can tell you what it does, first[end if]." instead;
	if faeries are touchable, say "As you open the packet, the faeries buzz. It'd be rude to eat in here, so you step out, eat and come back.";
	if "xx" is padded:
		say "Gulp. It tastes decent enough.";
	else:
		say "You're not sure what the saltine is supposed to do, but your vision looks a little weirder after eating it. Some things seem especially sharp if you stare doubly hard at them. In other words, [b]XX THING[r] instead of [b]X THING[r].";
		pad-rec "xx";
	moot saltine;
	now xray-vision is true;
	now undo-code is 2;
	prevent undo instead;

volume stores

book Trips Strip

Trips Strip is a room in Stores. last-loc of Stores is Trips Strip. "You see what was once a bunch of small malls. Most lots appear vacant or dilapidated[if storeall are examined][exc-which][end if]. A tepid icon depiction is drawn out near various stores[if hubs bush is in Trips Strip]. The hubs bush that sprang up when you tried to escape still blocks your way out[end if]. A begad-badge inscribed here has some information."

hub-room is Trips Strip.

outside-text of trips strip is "[trips-bound]."

exits-text of trips strip is "[trips-bound]."

to say trips-bound: say "The stores are where it's at. You can go [b]IN[r] [if number of discovered portals is 0]once you've found what they can become[else if number of portals in trips strip > 0]to [the list of portals in trips strip][else]once you open another portal[end if]"

after printing the locale description for Trips Strip when Trips Strip is unvisited:
	if one-rigged is false and denial is false:
		ital-say "if, for whatever reason you lose a save file or wish to replay, [b]IGNORE REGION[i] or [b]RIG ONE REGION[i] will skip the introduction you just played and give you all the goodies.";
	continue the action;

definition: a portal (called PO) is discovered:
	if PO is gateway, no;
	if PO is off-stage, no;
	yes;

after choosing notable locale objects when player is in Trips Strip (this is the show cabinet last rule):
	if scented descent is in Trips Strip, set the locale priority of scented descent to 6;
	if posted depots are in Trips Strip, set the locale priority of posted depots to 7;
	if trade tread is in Trips Strip, set the locale priority of trade tread to 8;
	if cabinet is in Trips Strip, set the locale priority of cabinet to 9;

sto-all is a truth state that varies.

after examining disamb-store:
	now sto-all is true;
	continue the action;

after examining a sto when sto-all is false:
	now sto-all is true;
	say "You can [b]X STORES[r] to examine all the stores.";
	continue the action;

definition: a sto (called stst) is lookdesc:
	if stst is store b, decide no;
	if stst is moot, decide no;
	if stst is flippable, decide yes;
	decide no;

to say exc-which:
	if store f is moot and store i is moot and store m is moot and store r is moot, continue the action;
	let nvs be the number of lookdesc stos in Trips Strip;
	if nvs is 1:
		say ", except [random sto that is lookdesc]";
		continue the action;
	say ", except store[if number of stos that are lookdesc > 1]s[end if] ";
	let sofar be 0;
	if store f is in Trips Strip:
		say "F";
		increment sofar;
	if store i is in Trips Strip:
		increment sofar;
		say "[if sofar is nvs], and [else if sofar > 1], [end if]I";
	if store m is in Trips Strip:
		increment sofar;
		say "[if sofar is nvs], and [else if sofar > 1], [end if]M";
	if store r is in Trips Strip:
		increment sofar;
		say "[if sofar is nvs], and [else if sofar > 1], [end if]R";
		now sofar is 1;

chapter tepid icon depiction

the tepid icon depiction is scenery in Trips Strip. "It's not high art, but it seems practical. You [if regions-to-clue is 1]look at the only remaining bit[else]pick [one of][or]another [stopping]one of the [regions-to-clue in words] at random[end if].[line break][icon-depict]."

to decide which number is regions-to-clue:
	let temp be 0;
	if forest is unsolved, increment temp;
	if metros is unsolved, increment temp;
	if sortie is unsolved, increment temp;
	if temp < 2, decide on 1; [then R appears]
	decide on temp;

to decide which number is stos-down:
	let temp be 0;
	if store f is moot, increment temp;
	if store i is moot, increment temp;
	if store m is moot, increment temp;
	decide on temp;

table of iconmaps
icon-rule	icon-text
forest-unsolved rule	"Near Store F, you see yourself walking past innumerable trees, wearing a disguise through a sort of archway, and finally creating some sort of explosion somewhere very cold"
sortie-unsolved rule	"Near Store I, you see yourself making food, entering a sacred area behind a secret passage, and creating some sort of fireworks that seem to land on a castle without harming it"
metros-unsolved rule	"Near Store M, you see yourself picking up several hours and taking a light source into a very deep place underground. You seem to have a hand over one ear in each picture"
resort-ready rule	"Near Store R, you see yourself hopping from one island to another, climbing a plateau, dispersing an angry crowd before quaking in fear, and finally, enjoying doing nothing"

this is the forest-unsolved rule:
	if forest is unsolved, the rule succeeds;
	the rule fails;

this is the sortie-unsolved rule:
	if sortie is unsolved, the rule succeeds;
	the rule fails;

this is the metros-unsolved rule:
	if metros is unsolved, the rule succeeds;
	the rule fails;

this is the resort-ready rule:
	if metros is unsolved or sortie is unsolved or forest is unsolved, the rule fails;
	the rule succeeds;

icon-index is a number that varies. icon-index is 1.

to say icon-depict:
	let got-one be false;
	let current-icon be icon-index;
	let cycled be false;
	while cycled is false or icon-index is not current-icon:
		choose row current-icon in table of iconmaps;
		process the icon-rule entry;
		increment current-icon;
		if current-icon > number of rows in table of iconmaps:
			now current-icon is 1;
			now cycled is true; [this is just to make sure there's no infinite loop]
		if the rule succeeded:
			say "[icon-text entry]";
			now icon-index is current-icon;
			the rule succeeds;
	say "You see nothing. You should see something, but you don't";

section direction redirection

this is the trips-strip-descent rule:
	if metros is passed-up and sortie is passed-up, say "You've solved both the metros and sorties." instead;
	if trade tread is touchable and posted depots are touchable, say "You've opened two ways down, so you'll specifically need to [b]ENTER SORTIE[r] or [b]ENTER METROS[r] instead." instead;
	if trade tread is not touchable and posted depots are not touchable, say "You can't find any place to descend[if sortie is solved or metros is solved] that you need to any more[end if][if sortie is not solved or metros is not solved], but there's at least one to find[end if]." instead;
	if trade tread is touchable, try entering trade tread instead;
	if posted depots are touchable, try entering posted depots instead;
	say "Unfortunately, there are no cool hidden passages beneath the stores. That you can see. Yet." instead;

check going inside in Trips Strip:
	if number of touchable portals is 1:
		let RP be a random touchable portal;
		d "Trying portal [RP].";
		try entering RP instead;
	if number of touchable portals is 0, say "You'll need to figure a store out to go inside[if number of not unsolved regions > 1], on top of what you solved[else], first[end if]." instead;
	say "That's ambiguous--you can currently enter [the list of touchable portals] to explore areas you haven't solved yet. No one looks more intimidating than the other." instead;

cool-index is a number that varies.

the begad badge is boring scenery in Trips Strip. description of begad badge is "'For warping purposes, a store is not a shop.' Beneath is scribbled 'hopes, chops, hoops, well, that's it. Not enough possibilities. Stores, though...'".

chapter stos (sto = type of thing)

understand "unlock [something]" as unlocking it with.

rule for supplying a missing second noun while unlocking: now second noun is notepad.

check opening a sto: say "It's locked, and you won't find the key." instead;

check closing a sto: say "It's already closed. And locked." instead;

the can't unlock without a lock rule is not listed in any rulebook.
the can't unlock what's already unlocked rule is not listed in any rulebook.
the can't unlock without the correct key rule is not listed in any rulebook.

check unlocking:
	if noun is a sto, say "Forget it. It's good and shut." instead;
	if noun is signers ingress, say "It has no visible keyholes. The only possible interface seems to be the friend finder." instead;
	if noun is OR DO door, say "[if bugle-played is true]You already did when you played the bugle.[else if bolt is moot]You already got rid of the bolt.[else]No keyholes. Maybe you can break it down some other way?[end if]" instead;
	say "You don't need to unlock anything explicitly in [this-game]." instead;

search-warn is a truth state that varies.

check searching:
	if search-warn is false:
		say "(Nothing in [this-game] has anything deeply hidden, so searching works like examining.)[paragraph break]";
		now search-warn is true;
	try examining the noun instead;

chapter stores

to say store-summary:
	if number of touchable flippable stos is 0:
		say "You don't see any more stores. You should probably get going to that resort";
	else:
		say "Of the various stores you see, only [list of puzzlematic stos] look[if number of puzzlematic stos is 1]s[end if] like you can do anything with [if number of puzzlematic stos is 1]it[else]them[end if]. [if store b is touchable]Store B looks--well, not quite dead, but not very substantial, either. [end if]Store R [if you-can-advance]finally looks like you can visit[else]has COMING SOON spray-painted to the side it[end if]"

definition: a sto (called stst) is puzzlematic:
	if stst is store b, decide no;
	if stst is store r, decide no;
	if stst is flippable, decide yes;
	decide no;

to show-em-all:
	say "[one of]They're labelled with letters, not numbers, though you can refer to them by number if you want. [or][stopping][store-summary]. A few others seem greyed-out, like in a video game or something. There can't be anything in any of them. [no line break]";
	pad-rec "stores";

to say mult-if:
	if recbuffer matches the text "/":
		say "multiple entries in ";

say-break is a truth state that varies.

to pad-rec-p (q - text):
	now say-break is true;
	pad-rec q;

to pad-rec (q - text):
	repeat through table of notepad entries:
		if there is no short entry:
			say "[bug-report] need short entry for [q].";
		else if short entry is q:
			if debug-state is true, say "DEBUG: pad-reccing [q].";
			if known entry is false:
				now known entry is true;
				if there is no verify entry or verify entry is true or number of characters in recbuffer > 0:
					say "[line break][i](You record the information about [recbuffer][short entry] in [mult-if]your [one of]dope tan [or][stopping]notepad.)[r][no line break]";
			now recbuffer is "";
			if say-break is true:
				say "[line break]";
			the rule succeeds;

recbuffer is indexed text that varies.

to pad-rec-lump (q - text):
	repeat through table of notepad entries:
		if there is no short entry:
			say "[bug-report] need short entry for [q].";
		else if short entry is q:
			if known entry is false:
				now known entry is true;
			now recbuffer is "[recbuffer][short entry]/";
			the rule succeeds;

to pad-rec-q (q - text):
	repeat through table of notepad entries:
		if there is no short entry:
			say "[bug-report] need short entry for [q].";
		else if short entry is q:
			if known entry is false:
				now known entry is true;
			the rule succeeds;

to pad-del (q - text):
	repeat through table of notepad entries:
		if there is no short entry:
			say "[bug-report] need short entry for [q].";
		else if short entry is q:
			if known entry is true:
				now known entry is false;
			the rule succeeds;

check taking storeall: say "[ment-not-phys]." instead;

to say ment-not-phys: say "Your extreme powers are mental, not physical".

to say sto-desc:
	say "There are 26 of them. Would you like a general overview?";
	if the player dir-consents:
		say "[store-overview]";
		the rule succeeds;
	else:
		if store f is touchable:
			say "Okay, the first one you see is store f...";
			try examining store f;
			the rule succeeds;
		if store i is touchable:
			say "Okay, the first one you see is store i...";
			try examining store i;
			the rule succeeds;
		if store m is touchable:
			say "Okay, the first one you see is store m...";
			try examining store m;
			the rule succeeds;
		if store r is touchable:
			say "Okay, the first one you see is store r...";
			try examining store r;
			the rule succeeds;
		say "No remaining store looks terribly adventurous.";
		the rule succeeds;

chapter sto by sto

the plural of sto is stos.

to say gd: say "It's mostly greyed out, like an area in a video game you can't get to. [no line break]"

to say na: say "There isn't even a store here any more--just a plot. [no line break]"

section storeall = all of them

storeall is plural-named privately-named scenery in Trips Strip. understand "all/stores/lots/mall/malls/strip" and "small malls" as storeall. printed name of storeall is "all the stores".

check entering storeall: say "They're all closed, and even if they weren't you'd have to pick a specific one." instead;

description of storeall is "[stos-desc]".

first-warned is a truth state that varies. first-warned is false.

to say stos-desc:
	if first-warned is true:
		say "They'd probably take too long to look at one-by-one. So you decide for a general overview.";
		now first-warned is true;
	show-em-all;

check pushing a sto: say "Physical activity won't do it, here." instead;

check entering a sto: say "It's closed and locked, and you won't find a key[if noun is flippable]. Maybe you can do something else to it[else]. It doesn't seem like you need to enter, anyway[end if]." instead;

check taking a sto: say "[ment-not-phys]." instead;

section disamb-store as all the stores

disamb-store is privately-named scenery in Trips Strip. printed name of disamb-store is "the entire store bank". understand "store" and "entire store" and "store bank" and "entire store bank" as disamb-store when player is in Trips Strip.

check entering disamb-store: say "Hmm, you can't enter all the stores at once. You'll need to pick a store--you can also refer to it by its abbreviation, e.g. Q for Store Q." instead;

does the player mean examining disamb-store:it is likely.
does the player mean entering disamb-store: it is likely.
[does the player mean doing something to disamb-store: it is likely.]

description of disamb-store is "[sto-desc]".

check burning:
	if noun is a sto, say "The stores have suffered enough." instead;
	if noun is warts, say "That's a false cure that makes them worse." instead;
	say "You've got no source of fire[if player has lit up tulip]. The tulip doesn't count--it's child safe and stuff[end if]." instead;

to say store-overview:
	if number of touchable flippable stos is 0:
		say "You've gotten rid of all four stores you could have.";
		the rule succeeds;
	say "Most seem greyed out. [run paragraph on]";
	if number of touchable flippable stos is 1:
		say "Only [list of touchable flippable not LLPish stos] seems worth a closer look.";
		the rule succeeds;
	say "You might be able to do something with [list of touchable flippable stos].";
	the rule succeeds;

chapter store by store

section store a

There is a sto called Store A. it is in Trips Strip. description of store a is "You can't imagine anything as rote as calling itself A Store, but it did.".

understand "store 1/one" and "1/one" as store a when player is in Trips Strip.

section store b

Store B is a LLPish sto. description of store b is "It seems to catch a rainbow every now and then, and you smell fruits you can't discern. It looks nowhere near as, well, lively as stores F, I or M, but maybe it holds a small treat.".

understand "store 2/two" and "2/two" as store b when player is in Trips Strip.

rgtext of store b is "[gcn][rc][rc][rc][gc][rc]". lgth of store b is 6. gpos of store b is 1. rpos of store b is 2. cert-text of store b is "S[d1][d1][d1][ast]E[d1]". rect-text of store b is "S[d1][d1][d1][d1][ast]T".

the marquee is part of store b. the marquee is auxiliary. description of the marquee is "It reads: BERTO'S fine (the rest is cut off.)". understand "berto" and "bertos" as marquee when marquee is examined.

lgth of marquee is 6. gpos of marquee is 6. rpos of marquee is 4. rgtext of marquee is "[rcn][rc][gc][rc][rc][rc]". cert-text of marquee is "-[d1][ast]R[d1][d1][d1]". rect-text of marquee is "S[d1][d1][d1][d1][ast]T".

the sorbet is an amusing thing. description is "The sorbet is never in play, so this is a BUG."

section store c

Store C is an amusing sto in Busiest Subsite. description of store c is "[one of]It's bolted up but seems to be advertising a corset sale. Useful for people who work in the escort sector. [this-game] is word-weird, not sex-weird, though[or]You briefly wonder if you'll find sapient panties in there that might give a hint, then you feel kinda guilty. Whether you're male or female[or]'This is a LEGIT AD to help you (censored)!!!'[or]You see striptease tapestries and are sorry you did[or]'No shower here. Don't ask.'[or]Apparently employees of L'Harem Harlem pay only 69% of retail here[or]All Lipsopolis items are 20% off, apparently. Whatever those were.[or]It's adults only, but no Lady Lust will visit any time soon[or]Oh dear. Not a legit ad. 'Get L...'? Whoah.[or]You think you hear 'You perv, voyeur :p' but the emoticon makes it moot. Nice.[or]'Helpin' you deuces seduce!'[or]That's all the innuendo I got. There are a lot better sites on the Internet to find information on THAT sort of thing than wherever you downloaded this game from. Go on. Harp. Pry[stopping].".

understand "store 3/three" and "3/three" as store c when player is in Trips Strip.

section store d

Store D is a sto. description of store d is "On store D, you see some scratch work scrawled:[paragraph break]OLD STORE F ROOM NAMES[line break]Stored, Er, Dots[line break]Sorted Trodes[paragraph break]But other than that, it doesn't seem particularly lively.".

understand "store 4/four" and "4/four" as store d when player is in Trips Strip.

section store e

Store E is a sto. description of store e is "It's bolted up but seems to be advertising a stereo sale.".

understand "store 5/five" and "5/five" as store e when player is in Trips Strip.

section store f

Store F is a sto. description of store f is "This is odd. It's kind of green on top, brown on the bottom. You smell pine needles and dirt and leaves you can't quite discern[if forest is unvisited]. You think back to the gateway and how you got here. There might be a way to do something to this store[end if].".

lgth of store f is 6. gpos of store f is 6. rpos of store f is 2. cert-text of store f is "-[d1][d1][d1][d1][d1]". rect-text of store f is "F[d1][d1][d1][d1][ast]T". rgtext of store f is "[rcn][rc][rc][rc][rc][rc]".

understand "store 6/six" and "6/six" as store f when player is in Trips Strip.

the roadsign is boring scenery. the roadsign is part of store f. understand "road sign" as roadsign. bore-text is "The road sign too high to do anything except examine. Seeing as how it's green with red lettering, you can read it, as high up as its writing is.". description of roadsign is "It's too high to examine casually, but you can [b]READ[r] it.".

section store g

Store G is a sto. description of store g is "A flier stapled to the front of the door says [unless you-can-advance]REST?! GO![else]GO REST![end if]. There's nothing else interesting about the store, though." [bold-ok]

understand "store 7/seven" and "7/seven" as store g when player is in Trips Strip.

the go rest flier is boring scenery in Trips Strip. description is "The go rest flier is just a subtle hint to get on with things[if you-can-advance]--in this case, to your reward in store R[end if].". bore-text is "The flier is just there for informational purposes."

section store h

Store H is a sto. description of store h is "Inside store H you see such a miscellany that you doubt it was successful even in better times. But maybe it could be one day. Just not in [this-game]."

understand "store 8/eight" and "8/eight" as store h when player is in Trips Strip.

section store i

Store I is a sto. description of store i is "Store I has something written on it. Perhaps there is something behind, trying to get you out of here."

understand "store 9/nine" and "9/nine" as store i when player is in Trips Strip.

lgth of store i is 6. gpos of store i is 1. rpos of store i is 5. rgtext of store i is "[gcn][rc][rc][rc][rc][rc]". cert-text of store i is "S[d1][d1][d1][d1][d1]". rect-text of store i is "S[d1][d1][d1][d1][ast]E".

section store j

Store J is a sto. description of store j is "[na]"

understand "store 10/ten" and "10/ten" as store j when player is in Trips Strip.

section store k

Store K is a sto. description of store k is "A peculiar smell of smoke and incense seeps from store k, but that's probably not the BIG reason this place went downhill. No use prying."

understand "store 11/eleven" and "11/eleven" as store k when player is in Trips Strip.

section store l

Store L is a sto. description of store l is "You take a peek inside but feel loster and loster as you do."

understand "store 12/twelve" and "12/twelve" as store l when player is in Trips Strip.

section store m

Store M is a sto. description of store m is "There's no window in Store M--just a detailed map of a subway."

understand "store 13/thirteen" and "13/thirteen" as store m when player is in Trips Strip.

rgtext of store m is "[rcn][rc][rc][gc][rc][rc]". lgth of store m is 6. gpos of store m is 6. rpos of store m is 1. cert-text of store m is "-[d1][d1][ast]R[d1][d1]". rect-text of store m is "M[d1][d1][d1][d1][ast]S".

subway map is part of store m. description of subway map is "It's for a city called Mt. Rose, apparently."

section store n

Store N is a sto. description of store n is "It's greyed out, but you see a music book inside, songs for tenors, apparently."

understand "store 14/fourteen" and "14/fourteen" as store n when player is in Trips Strip.

section store o

Store O is a sto. description of store o is "[na]"

understand "store 15/fifteen" and "15/fifteen" as store o when player is in Trips Strip.

section store p

Store P is a sto. description of store p is "[gd]A poster covers the entire window. It's turned away from you, as if to say, don't worry about solving anything on this trip, pal.".

understand "store 16/sixteen" and "16/sixteen" as store p when player is in Trips Strip.

the poster is part of store p. the poster is amusing. description of poster is "Wait! There is some writing, if you look closely.[paragraph break]'This poster intentionally left blank until next game.'"

section store q

Store Q is a sto. description of store q is "[na] There's no secret passage to store u, either."

understand "store 17/seventeen" and "17/seventeen" as store q when player is in Trips Strip.

section store r

Store R is a sto. description of store r is "Store R may be the smallest store in the strip, and it [how-far-along]. You also see a roster in the front door."

understand "store 18/eighteen" and "18/eighteen" as store r when player is in Trips Strip.

rgtext of store r is "[rcn][rc][rc][rc][rc][rc]". lgth of store r is 6. gpos of store r is 4. rpos of store r is 2. cert-text of store r is "-[d1][d1][d1][d1][d1]". rect-text of store r is "R[d1][d1][d1][d1][ast]T".

to say how-far-along:
	if number of not unsolved regions is 1:
		say "is almost all grey, except for a touch of red at the corners";
	else if number of not unsolved regions is 2:
		say "has a thin band of red paint around the bottom";
	else if number of not unsolved regions is 3 and gadget-secured is false:
		say "is now about halfway red";
	else:
		say "is now completely red";
	say ". You [if you-can-advance]should be able to do something to it like with the other stores[else]probably need to see what's behind at least one other stores first[end if]"

the roster is part of store r. the roster is auxiliary. rgtext of roster is "[gcn][rc][gc][rc][rc][rc]". gpos of roster is 1. rpos of roster is 4. lgth of roster is 6. cert-text of roster is "R[d1][ast]S[d1][d1][d1]". rect-text of roster is "R[d1][d1][d1][d1][ast]T".

check taking the roster: say "It's taped inside the front door, and besides, it's just there for information." instead;

definition: a region (called reg) is passed-up:
	unless reg is forest or reg is sortie or reg is metros, no;
	if reg is solved, yes;
	if reg is bypassed, yes;
	no;

to decide whether you-can-advance:
	if number of passed-up regions is 3, yes;
	if number of passed-up regions is 2 and gadget-secured is true, yes;
	decide no.

description of roster is "The roster on the front of store R reads: 'People who have earned a vacation: you (well, [if you-can-advance]go on[else]soon[end if]!)'"

section store s

Store S is a sto. description of store s is "As you get near, you hear GO AWAY YOU TOSSER. The accent doesn't sound British, so you suspect this person just needed to use a new swear."

understand "store 19/nineteen" and "19/nineteen" as store s when player is in Trips Strip.

section store t

Store T is a sto. description of store t is "The window of store T is really lovely stained-glass--it's a depiction of a family of otters."

understand "store 20/twenty" and "20/twenty" as store t when player is in Trips Strip.

section store u

Store U is a sto. description of store u is "[gd]The floor looks like some sort of cross-country map."

understand "store 21/twentyone" and "21/twentyone" as store u when player is in Trips Strip.

section store v

Store V is a sto. description of store v is "[gd][one of]You see people voting glumly and you think you hear them whisper it doesn't matter. Their votes go in the stove anyway. But politics wasn't in your job description. There are, apparently, more even basic needs than the right to vote right now. Plus it's pervy to vote pry[or]Voters...but with [burdell] in control, election integrity isn't the biggest concern. Maybe you can deal with such first-world installment the next game you're called into action[stopping].".

understand "store 22/twentytwo" and "22/twentytwo" as store v when player is in Trips Strip.

section store w

Store W is a sto. description of store w is "You see replicas of two tall, narrow buildings.".

understand "store 23/twentythree" and "23/twentythree" as store w when player is in Trips Strip.

section store x

Store X is a sto. description of store x is "[na]"

understand "store 24/twentyfour" and "24/twentyfour" as store x when player is in Trips Strip.

section store y

Store Y is a sto. description of store y is "[gd]However, the store seems filled with water. There's a slimy bit and a small glistening sphere."

understand "store 25/twentyfive" and "25/twentyfive" as store y when player is in Trips Strip.

section store z

Store Z is a sto. description of store z is "[na]"

understand "store 26/twentysix" and "26/twentysix" as store z when player is in Trips Strip.

section basic actions

does the player mean examining a direction when player is in Trips Strip: it is unlikely.

[check examining a direction in Trips Strip:
	if player's command matches the regular expression "\b<a-z>$", case insensitively, try examining the store instead;]

chapter general portal checks

Rule for supplying a missing noun while entering (this is the other stuff to enter rule):
	if passage is touchable:
		now the noun is the passage;
		continue the activity;
	if location is Trips Strip:
		let Q be number of touchable portals;
		if Q > 1, say "That's ambiguous--you can currently enter [the list of touchable portals] to explore areas you haven't solved yet." instead;
		if Q is 0, say "You don't have anywhere to enter." instead;
		now the noun is a random touchable portal;
		continue the activity;
	continue the activity.

to last-loc-move (rg - a region):
	move player to last-loc of rg;
	process the move dumbdrops rule;

definition: a portal (called po) is regsolve:
	if go-region of po is not unsolved, yes;
	if go-region of po is Stores, yes;
	no;

check entering a portal (this is the check if portal region is solved rule):
	abide by the entry-rule of noun;
	let gr be go-region of noun;
	if gr is regsolve, say "[solved-text of noun]" instead;
	if gr is not hub-region:
		now good-guesses-noted is true;
		now great-guesses-noted is true;
	check-2-of-3;
	now the noun is ever-entered;
	last-loc-move gr;
	recover-items;
	the rule succeeds;

to recover-items:
	repeat with JJJ running through item-list of mrlp:
		now player has JJJ;
	repeat with JJJJ running through worn-list of mrlp:
		now player wears JJJJ;

to check-2-of-3: if button-locked is true and number of solved regions is 3, say "You think you hear oohing and aahing in the background at the adventurer who has decided to do more than the bare minimum.[paragraph break][i][bracket]Fourth wall note: you can [b]UNDO[r] and recuse if you want to.[close bracket][r][line break]"

chapter the four portals stos/stores can become

section forest portal

does the player mean entering the scented descent: it is likely. [forest is first in alphabet and easiest]

the scented descent is a portal. go-region of scented descent is Forest. "There's a scented descent to a forest here where store F was[if forest is solved], but you probably don't need to go back there[end if].". solved-text of scented descent is "You already [if forest is bypassed]bypassed[else]solved[end if] the forest. Maybe you should look elsewhere?". entry-rule of scented descent is the forest-entry rule.

understand "forest" as scented descent when scented descent is fungible.

description of scented descent is "[if forest is solved]It's real verdant, yeah. I could tell you about what's inside, but you've been through it[else]It's bigger on the inside than the outside, you're sure, or something like that[end if]."

this is the forest-entry rule:
	if last-loc of forest is rf and rf is unvisited:
		say "As you walk in the forest, you hear rumors of monsters ravaging the surrounding areas. Not zombies, or vampires, or skeletons. Trying to figure what it is, you daydream maybe YOU could be that hero--so successfully that you get lost!";
		say "[wfak]Until you stumble on a small clearing. You think you [if shout is in sf]hear something[else if thorn is in sf]stepped on a thorn[else if teas are in sf or stew is in sf]smell something[else]should see a clue, but nothing's there[end if].";

section sortie portal

the posted depots are a plural-named portal. go-region of posted depots is Sortie. "Posted depots stand where store I used to be. [if Trap Part is visited]You can [b]ENTER[r] again, to finish business.[else]They're a sortie...but to where?[end if]". solved-text of posted depots is "You [if sortie is solved]did[else]bypassed[end if] what you needed in the moor. No sense retracing your steps.". entry-rule of posted depots is sortie-entry rule.

this is the sortie-entry rule:
	if centrifuge-stopped is false and Trap Part is visited:
		say "You're prepared for the tumble, but it's still disorienting once the Trap Part starts spinning, again.";
	else if Trap Part is unvisited:
		say "You climb down a larded ladder, slip, and hear people chattering about Mean Old Mondale-Doleman, finances fan since... once a money yeoman, the frugalest till the fear gluts, but who'd nag nary a granny for late fees. Generous? Gone sour. Got antsy, then nasty... more garnish, less sharing... stern rents, a splinter should rent slip... a testier treatise from his Taxman, Tan Max... claiming to feel raw and that the welfare era flew! 'No grace in ignorance, caring one!' A cold clod, now. He may even have aborted a debtor...";
		say "[wfak]You hear cases for destroying his castle and for showing love. Then someone comes along, introduces himself as Patt Parr. 'Rapt, rapt!' he says, telling you how to get to Mondale-Doleman. You follow his advice...";
		say "[wfak]You see and avoid tripwires, and just as you feel your wit's riper, a snare nears. You swat at a pest and miss a step, then tumble madly wide of a middle way...";
		say "[wfak]You roll down a gradient, tirade, nag to yourself...";
		say "[wfak]Thump. ('Drat, poor trapdoor!' you hear.)";
		say "[wfak]And you realize his advice was a TRAP, of course it was...";
		say "[wfak]Your head is spinning. Wait, no, it's the room...";
		now player has Mean Old Mondale Doleman;

understand "sortie" as depots when player is in Trips Strip and depots are in Trips Strip.

check exiting in Trips Strip: if number of portals in trips strip > 0, try entering instead;

description of posted depots is "It's a stairway. For making a sortie. Exiting[sortie-have]"

to say sortie-have:
	if sortie is solved:
		say ". But you already did. It's not worth revisiting.";
	else:
		say ". Though you probably want to [b]ENTER[r] it to exit the strips[if trade tread is not touchable]. Or go [b]DOWN[r][end if].[no line break]"

section metros portal

the trade tread is a portal. go-region of trade tread is Metros. "A trade tread leads off [if Undesired Underside is visited]back to the Underside[else]somewhere[end if].". description of trade tread is "You can't see the metros where the trade tread ends, but you probably want to [b]ENTER[r] or [b]FOLLOW[r] it, now that you've revealed it.". solved-text of trade tread is "You've been there, done that[if metros is bypassed], or had it done, at any rate[end if]. Big city life is not for you.". entry-rule of trade tread is metros-entry rule.

understand "metros" as trade tread when trade tread is fungible.

check climbing trade tread: try entering trade tread instead;

this is the metros-entry rule:
	if last-loc of metros is not visited:
		say "The elevator's descent is rapidly scented worse. After you pass [one of]a[or]that[stopping] 'Tasers? You bet! Asters? Out, bye!' billboard, an automated voice announces that Mt. Rose has made its freedom more def, so ordinary citizens are motivated to level up and money farm just like Red Bull Burdell, and a funky thumping beat helps them to action.[paragraph break]You jog down the elevator to escape it, but of course it's coming from the city[if drainage is in Undesired Underside]. And you step into some drainage at the bottom. Eww[end if][if Undesired Underside is visited]. Which you should've remembered from last time[end if].[wfak]";
	else:
		say "Back to the metros...";

section resort portal

the ogled lodge is a portal. go-region of ogled lodge is Resort. description of ogled lodge is "Man, it's beautiful, spacious and sunny. Even sunnier than the Trips Strip, which is much nicer since you started cleaning up, but still...". initial appearance of ogled lodge is "You see a big resort here. It seems like it's all for you! All you have to do is enter.". entry-rule of ogled lodge is resort-entry rule. solved-text of ogled lodge is "Somehow, you got back to the Trips Strip after solving the game. I'd love to know how! Send me a bug report with a transcript."

understand "resort" as ogled lodge when player is in Trips Strip and ogled lodge is in Trips Strip.

this is the resort-entry rule:
	say "'You! Find! Unify! Do!' a voice booms. You stride into the ogled lodge thinking 'Gee. Damn. Endgame.' But it is a mirage! You're gamier than to let that bother you, though, even though you hardly seem to be in paradise. You wind up somewhere ethereal. Have you been made a deity? A high priest? Even without defeating Red Bull Burdell?";

book store properties (at the end so item namespaces aren't overwritten)

reg-sto of forest is Store F. reg-ent of forest is the scented descent. glean-rule of forest is forest-glean rule.
reg-sto of sortie is Store I. reg-ent of sortie is the posted depots. glean-rule of sortie is sortie-glean rule.
reg-sto of metros is Store M. reg-ent of metros is the trade tread. glean-rule of metros is metros-glean rule.
reg-sto of resort is Store R. reg-ent of resort is the ogled lodge. glean-rule of resort is resort-glean rule.

volume Forest

to decide what thing is the current getup:
	if nose is part of the beard or shades are part of the beard, decide on beard;
	if shades are part of nose, decide on nose;
	if shades are touchable, decide on shades;
	if nose is touchable, decide on nose;
	decide on beard.

understand "disguise" as a disguise-piece.

check going when player is in sf or player is in rf:
	let mygu be a random touchable guider;
	if noun is godir of mygu:
		say "The [mygu] seems to be pushing you [noun]. Walking that way, there aren't many obstacles or branching paths[one of][or] again[stopping].[paragraph break]";
		if player is in sf:
			say "You wind up in an area that doesn't look that much different but feels a bit colder.";
			reg-inc;
			move player to rf;
			move leaves to rf;
			the rule succeeds;
		else:
			say "You follow the path some more, really getting somewhere. 'Mastery of a forest, my!' you say, feeling vainer and promptly tumbling into a ravine! It's too steep to climb, so you walk on some more...";
			reg-inc;
			move player to Self ID Fields;
			the rule succeeds;
	if noun is inside or noun is outside, say "Any of the four directions could lead inside somewhere else, or outside the forest. So you need to figure which." instead;
	say "You go [noun] a bit, but the paths and vegetation multiply. You detect [one of]a sneak-snake[or]a fauns snafu[or]a stag or gators[or]a stoat making toast of you[or]percuss-spruces[or]slickest stickles[in random order], which is enough to drive you back to where you were." instead;

book Softer Forest (sf)

sf is a privately-named room in Forest. the printed name of sf is "Softer Forest". last-loc of Forest is sf.

outside-text of sf is "[ww-outside]?"

exits-text of sf is "[ww-exits]?".

to say ww-outside: say "Hmm, that's the question. Which way to exit"

to say ww-exits: say "One compass direction out will move ahead. The others won't. But which does which"

after printing the locale description for sf when sf is unvisited: set the pronoun it to a random guider in sf.

understand "forest1" as sf when debug-state is true.

understand "softer" and "softer forest" as sf when mrlp is forest.

description of sf is "You recognize no trees: no sprucy cyprus, forensic conifers, or even a clear sign of clearings. But [vis-hint]."

to say vis-hint: say "[if stew is touchable or teas are touchable]there's a[nuthers] smell you should check out[else if shout is touchable]you hear a rambling shout[else if thorn is touchable]a thorn sticks up[else]there should be something, but there isn't. BUG[end if]"

to say nuthers: if player is in rf, say "[if stew is in sf or teas are in sf]nother[end if]"

section guiders

[guiders are items that cue the direction to go. There are four.]

a guider is a kind of thing. a guider is usually scenery. a guider has a direction called godir. a guider is usually flippable. a guider has text called badana.

check taking a guider: say "[if noun is thorn]You'd just poke yourself. Maybe you can take a hint from it[else]Maybe you can take a hint from the [noun], instead[end if]." instead;

a whiff of stew is a guider. godir of whiff of stew is west. description of whiff is "It smells pretty good, even if you can't detect any specific ingredients. But which way is it from?". badana of whiff of stew is "The stew smells a bit burnt for a minute. No, that can't quite be it".

lgth of stew is 4. gpos of stew is 4. rpos of stew is 2. rgtext of stew is "[rc][rc][rc][rc]". cert-text of stew is "-[d1][d1][d1]". rect-text of stew is "W[d1][d1][ast]T".

understand "smell" as whiff of stew when whiff of stew is fungible.

a thorn is a guider. godir of thorn is north. description of thorn is "You won't step on it or any of its brethren. Maybe it indicates the way to go, if you stop and think for a moment.". badana of thorn is "The thorn wilts slightly for a second"

rgtext of thorn is "[rc][rc][rc][rc][rc]". the lgth of thorn is 5. gpos of thorn is 5. rpos of thorn is 2. cert-text of thorn is "-[d1][d1][d1][d1]". rect-text of thorn is "N[d1][d1][d1][ast]H".

an aroma of teas is a guider. godir of aroma of teas is east. description of teas is "You're not refined enough to know which teas. It's kind of a combination of them, a new direction in olfactory sense.". badana of teas is "The scent of teas changes slightly".

rgtext of teas is "[rc][rc][rc][rc]". the lgth of teas is 4. gpos of teas is 2. rpos of teas is 1. cert-text of teas is "-[d1][d1][d1]". rect-text of teas is "E[d1][d1][ast]T".

understand "smell" as aroma of teas when aroma of teas is fungible.

understand "tea" as aroma of teas.

a rambling shout is a guider. godir of rambling shout is south. description of shout is "It's gibberish, but it has to be coming from somewhere.". badana of shout is "The shout wavers for a bit. Maybe you're on to something"

rgtext of shout is "[gc][rc][rc][rc][rc]". the lgth of shout is 5. gpos of shout is 1. rpos of shout is 2. cert-text of shout is "S[d1][d1][d1][d1]". rect-text of shout is "S[d1][d1][d1][ast]H".

understand "noise/sound" as rambling shout when rambling shout is fungible.

book Rest of Forest

rf is a privately-named room in Forest. the printed name of rf is "Rest of Forest". "The forest feels a bit thinner here, so you must be close to somewhere new. Here, [vis-hint].". roomnud of rf is table of Rest of Forest nudges.

outside-text of rf is "[ww-outside]?"

exits-text of rf is "[ww-exits]?".

after printing the locale description for rf when rf is unvisited: set the pronoun it to a random guider in rf.

understand "Rest of Forest/" as rf when mrlp is forest.

understand "forest2" as rf when debug-state is true.

the leaves are privately-named boring scenery in sf. "They've already undergone nature's transformation, so they're beautiful rather than useful. They don't leave any clues.". printed name of leaves is "forest leaves". bore-text of leaves is "You don't need to do anything with the leaves. There's other stuff that should stand out.". understand "forest leaves" as leaves.

book Self-ID Fields

Self ID Fields is a room in Forest. printed name is "Self-ID Fields". "You feel a breeze from the west, and there's a plainer passage east. A line of no life passes from a selves vessel to the south through [one of]something labeled [or][stopping]Corses Crosse at regular intervals to the north.". roomnud of Self ID Fields is table of Self ID Fields nudges. understand "selfid" and "selfid fields" as Self ID Fields.

after looking in Self ID Fields:
	set the pronoun it to gy;
	set the pronoun him to gy;
	set the pronoun her to gy;
	set the pronoun them to line of no life;
	continue the action;

check going inside in Self ID Fields: try going north instead;

to check-beard:
	if player has beard and player is not wearing beard:
		if player has beard and shades are part of beard and nose is part of the beard:
			say "'Improper facial...' you quickly slip on your disguise.[paragraph break]";
			now player wears the beard;

check going north in Self ID Fields when Emptiness Sepiments is unvisited and player has gadget and tag is part of the gadget (this is the forest gadget checkpoint rule):
	check-beard;
	if player wears beard:
		if forest-warn is false and button-locked is false:
			now forest-warn is true;
			say "[gadact] once you go north. Do you continue?";
			if the player yes-consents:
				do nothing;
			else:
				say "Okay. This warning won't appear next time you go north." instead;
		if button-locked is false:
			now button-locked is true;
			say "You hear a click from the gadget. You fumble around a bit and note the [b]SECURE[r]/[b]RECUSE[r] button is locked in place."

to say agn: say "[one of][or] again[stopping]".

ever-failed-crosse is a truth state that varies.

check going north in Self ID Fields:
	say "'Scopers! Process corpses!' you hear.[paragraph break]";
	check-beard;
	if player wears the beard:
		say "You are[agn] 'recognized' and let through. A voice whispers 'Many vowels, one flow.'";
		if can-pass-crosse is false:
			reg-inc;
			now can-pass-crosse is true;
		continue the action;
	else:
		now ever-failed-crosse is true;
		say "Corses Crosse blocks you invisibly. There's no way around it. Maybe it doesn't like your face[if number of things that are part of beard is 2]. Perhaps that disguise could fool it[end if]." instead;

chapter generic guy

Include (-
	has transparent animate
-) when defining gy.

gy is privately-named boring scenery in Self ID Fields. understand "man" as gy when player is in Self ID Fields. description of gy is "They are going by too quickly to look at any one for too long. There's some limited variety to their facial hair and dress.". bore-text of gy is "Any individual guy going by doesn't matter. All they can do is face their fate. Maybe you can learn from them.".

this is the bore-gy rule:
	set the pronoun it to gy;
	set the pronoun him to gy;

printed name of gy is "bearded man".

understand "bearded man/guy/figure" and "man/guy/figure" as gy.

to it-them (x - a thing):
	set the pronoun it to x;
	set the pronoun them to x;

chapter line of no life

Include (-
	has transparent animate
-) when defining line of no life.

a thing called line of no life is plural-named boring scenery in Self ID Fields. printed name of line of no life is "bearded men". description is "They're a fine ol['] line of no life, you guess. Their faces are different, but they seem the same, and they take no notice of you.". bore-text is "The line of no life is too incorporeal to interact with[if Emptiness Sepiments is unvisited], but maybe you can imitate it partially to go north[end if].". bore-check is bore-line-life rule.

this is the bore-line-life rule:
	it-them line of no life;

understand "bearded men/guys/figures" and "men/guys/figures" and "undead" as line of no life.

chapter corses crosse

Corses Crosse is boring scenery in Self ID Fields. description is "It's one of those full-height deals, so you won't be able to jump it. It doesn't look quite vicious enough to grind you backwards with its teeth, but still, it's shiny and imposing[if slit is in Self ID Fields], and there's a menacing looking slit off to one side[end if]. The top reads TO THE LUPINE LINEUP.". bore-text is "You [if Emptiness Sepiments is visited]already got past Corses Crosse. No need to try doing anything[else]need to figure a clever way past Corses Crosse[end if].". bore-check is bore-crosse rule.

this is the bore-crosse rule:
	if current action is entering, try going north instead;

beard-unmade is a truth state that varies. beard-unmade is usually false.

section list

a slit is LLPish scenery in Self ID Fields. description is "Peeking through the slit, you see a list ... of horribly named places, each with its own image too disturbing to describe here. You shudder at [randbla] and [randbla][one of].[paragraph break]Scary! Perhaps if there were some way to neutralize the slit, you'd feel comfort, even if you didn't make progress[or][stopping].". rgtext of slit is "[gcn][rc][rc][gc]". lgth of slit is 4. gpos of slit is 1. rpos of slit is 4. cert-text of slit is "S[d1][d1][ast]T". rect-text of slit is "S[d1][d1][ast]T".

the silt is abstract scenery. description is "You shouldn't be able to see the silt or the slit now."

chapter selves vessel

The selves vessel is boring bounding scenery in Self ID Fields. "It's nondescript but imposing. The line of no life flows out of it from the south.". bore-text is "It's part of a weird magic you don't understand. You're pretty sure you didn't enter through it, but you really don't want to mess with it.". bore-check is bore-selves-vessel rule.

this is the bore-selves-vessel rule:
	if current action is entering, try going south instead;

check going south in Self ID Fields: say "Given that the people leaving the selves vessel look dead, you probably don't want to go in." instead;

chapter random ID field text

every turn when player is in Self ID Fields and Emptiness Sepiments is unvisited (this is the crosse-guys-through rule): say "[guy-by-description]";

to say guy-by-description: say "Dude, an undead! It's got [burns] and is wearing [glasstype] and [nosey]. Corses Crosse glows briefly as the undead walks through."

to say burns: say "[one of]muttonchop sideburns[or]a fu-manchu mustache[or]a glorious handlebar mustache[or]a carefully-trimmed Vandyke[or]a mustache your high school buddies derisively referred to as a 'molestache'[or]general patchy scuzz[or]one of those thin beards mostly along the jawline[or]a pencil-thin mustache[or]a soul patch[or]a goatee, no mustache[at random]"

to say glasstype: say "[one of]browline glasses[or]sixties horn-rimmed glasses[or]reading glasses[or]granny glasses[or]bifocals[or]clip-on sunglasses[or]a pretentious monocle[or]rimless glasses[or]specs with a hideous elastic strap at the back[or]racquetball goggles[at random]"

to say nosey: say "[one of]a fake warty witch's conker[or]a fake parrot beak[or]a red plastic ball under his glasses[or]a fake pig snout[or]a Pinocchio-style wooden rod sprouting from his face[or]a pickle-shaped and -colored schnoz[at random]"

chapter wearing (Self-ID Fields)

the disguise-piece creation rule is listed before the can't put onto what's not a supporter rule in the check putting it on rules.

the disguise-piece conglomeration rule is listed before the can't put what's not held rule in the check putting it on rules.

the tie disguises rule is listed before the block tying rule in the check tying it to rules.

understand the command "hook" as "tie".

check tying it to (this is the tie disguises rule):
	if noun is a disguise-piece and second noun is a disguise-piece:
		ignore the block tying rule;
		try putting the noun on the second noun instead;

[note try all combinations]

[alternate possibility is to do an increment sort of thing]
[then the disguise-piece-piece with the greatest weight, everything is a part of it]
[needed for descripton]

check putting it on(this is the disguise-piece conglomeration rule):
	if noun is a disguise-piece:
		[if noun is part of nose:
			try putting nose on second noun instead;]
		let A be a random thing incorporating noun;
		if A is nothing, continue the action;
		try putting A on second noun instead;

to say you-int: say "You must almost blend in, with that! But you [if player is in Self ID Fields]look over at[else]remember[end if] the spirits walking through, and they have just a bit more."

before wearing a disguise-piece:
	if noun is part of the beard:
		say "(Well, the beard.)[line break]";
		try wearing the beard instead;
	if noun is part of the nose, try wearing the nose instead;

check wearing the shades:
	if shades are not part of anything, say "You put them on, briefly feel cool, and take them off again. You can't help feeling they might go better with something else." instead;
	if shades are part of the nose, say "[you-int]" instead;
	if nose is not part of the beard, say "[you-int]" instead;

check wearing the nose:
	if shades are part of the nose, say "[you-int]" instead;
	say "The plastic nose just slips off yours. Maybe it needs support." instead;

check wearing the beard:
	if shades are not part of the beard, say "It would just slip off your face as-is[if nose is part of the beard], even hooked up to the nose[end if]. Now what could hang on your face? And stay there?" instead;
	if nose is not part of the beard, say "[you-int]" instead;

report wearing the beard:
	if player wore the beard, say "You adjust the disguise you're already wearing." instead;
	say "It's suitably silly to fit in with the folks passing through Corses Crosse[if player is in Gnarliest Triangles] to the west[else if player is in Flesh Shelf] to the east[end if], but different enough you're not conforming.";
	the rule succeeds;

check putting it on(this is the disguise-piece creation rule):
	if noun is a disguise-piece and second noun is a disguise-piece:
		if elevation of second noun > elevation of noun, try putting second noun on noun instead;
		say "The [noun] hook[if noun is not shades]s[end if] over the [second noun] easily and naturally.[opt-break]";
		now noun is part of second noun;
		if shades are part of nose and nose is part of beard:
			now shades are part of beard;
		if nose is part of beard and shades are part of beard:
			say "[line break]You've made a full disguise now!";
			now beard is wearable;
			set the pronoun it to the beard;
		else:
			do nothing;
		the rule succeeds;
	if noun is a disguise-piece and second noun is not a disguise-piece, say "Only one of those would make part of a clever, tricky disguise." instead;
	if second noun is a disguise-piece and noun is not a disguise-piece, say "Only one of those would make part of a clever, tricky disguise." instead;

book Flesh Shelf

Flesh Shelf is west of Self ID Fields. "It's cold here, but you'd expect that, on a ledge with iciest cities lie far below. The only way back is east. A skin sink holds some odd stuff, here.". Flesh Shelf is in Forest. roomnud of Flesh Shelf is table of Flesh Shelf nudges.

the skin sink is scenery in Flesh Shelf. "Eww! But at least you don't have to bend down to pick up or use anything IN the sink." [bold-ok]

chapter iciest cities

the iciest cities are bounding boring scenery in Flesh Shelf. description of cities is "They are spooky and all, but thankfully, they're too far away.". bore-text is "The cities are too far away to do anything with. Or to do anything to you."

first-fs-yet is a truth state that varies.

after choosing notable locale objects when player is in Flesh Shelf: if sandwich is in flesh shelf, set the locale priority of the sandwich to 1.

for printing a locale paragraph about a thing (called sinkthing) in Flesh Shelf:
	if sinkthing is not mentioned and sinkthing is not scenery:
		if first-fs-yet is false:
			say "You notice the skin sink contains, in particular, a scantier canister, a sandwich, and a liver stamped [b]RiverVille[r], along with one that's just, well, viler.";
			now first-fs-yet is true;
		else:
			let Q be number of sinky things in Flesh Shelf;
			say "The skin sink still contains [if livers are not off-stage]that canister you broke[else]a scantier canister[end if][if number of glopmeats in canister is 1] (half full of liver)[end if][if Q > 0], as well as [a list of sinky things in Flesh Shelf][end if].";
		now scantier canister is mentioned;
		now sandwich is mentioned;
		now all glopmeats are mentioned;
		now the player is mentioned;
		now all sinky things in Flesh Shelf are mentioned;
		the rule succeeds;
	now sinkthing is mentioned;

definition: a thing (called t) is sinky:
	if t is a glopmeat, yes;
	if t is sandwich, yes;
	no;

rule for printing a locale paragraph about a glopmeat when Flesh Shelf is visited:
	if the item described is not mentioned:
		say "The [list of glopmeats] [if number of glopmeats in Flesh Shelf is 1]is[else]are[end if] still in the skin sink.";
		now all glopmeats are mentioned;
		the rule succeeds;

chapter canister / red ring

the scantier canister is a fixed in place container in Flesh Shelf.

description of canister is "It's small, nowhere near the size of a cistern. It's got a red ring you can put stuff in, and you can see a grinder of sabled blades inside. The grinder reads [i]team meat, tame [']em at...[r] and appears to have no switch or anything. MASH SHAM HAMS is written on it[if number of moot glopmeats is 1]. It's about half full[end if]." [bold-ok]

to say can-desc:
	if livers are not off-stage:
		say "The canister you broke sits here";
	else:
		say "A scantier canister sits here[if number of glopmeats in canister is 1], containing the [list of glopmeats in canister][one of]. You can probably call it a can without hurting its feelings[or][stopping]";

understand "can" as canister.

check taking the canister: say "It's welded to the shelf." instead;

does the player mean inserting River Ville liver into canister when River Ville liver is in canister: it is very unlikely.

does the player mean inserting viler liver into canister when viler liver is in canister: it is very unlikely.

check inserting into the scantier canister:
	if noun is sandwich, try taking the Spam;
	if canister is broken, say "The canister's broken now." instead;
	if noun is Spam, say "The canister whirrs threateningly before you drop the Spam in. It's probably already been mixed, and the canister possibly even has some bad mechanical memory of being the guilty party. Technology!" instead;
	if noun is in canister, say "It's already in there." instead;
	if noun is saltine, say "Interesting thought, but you don't need to make a casserole." instead;
	if noun is a glopmeat:
		if player does not have chisel and player does not have noun, say "There's no way to peel the meat off, yet." instead;
		if player has chisel and player does not have glopmeat:
			say "(peeling the [noun] off the wall first)[line break]";
		if number of moot glopmeats is 1:
			say "Bam! The canister chokes, sputters, and then wheezes--you see a mist arise from it and vanish. It wheezes, chokes, and coughs out--well, liver-slop spillover, but we'll call the homogenized mess [b]LIVERS[r].";
			set the pronoun it to livers;
			set the pronoun them to livers;
			reg-inc;
			moot River Ville liver;
			moot viler liver;
			now canister is broken;
			now canister is realized;
			now player has the livers;
			now description of canister is "It's completely broken." instead;
		else:
			say "The canister seems to whir. The meat you put in is shortly unrecognizable, so something happened. The canister's about half-full now.";
			if noun is a glopmeat:
				if number of touchable glopmeats is 2:
					if noun is River Ville liver:
						now cur-liv is viler liver;
					else:
						now cur-liv is River Ville liver;
			moot noun;
			the rule succeeds;
	if noun is bread, say "You don't need to futz with the bread that way." instead;
	if noun is the player, say "So, [this-game] hasn't put you through the grinder enough? [aro], the sequel, will be even bigger-time." instead;
	say "The canister's for processing food, and that doesn't count." instead;

check switching on the canister: say "There appear to be no buttons to switch it on or off." instead;

check switching off the canister: say "There appear to be no buttons to switch it on or off." instead;

section red ring / grinder

the red ring is a boring thing. it is part of the canister. description of red ring is "It's on top of the canister.". bore-text is "It's not that important, but, well, the color fit. You probably want to do stuff with the canister and not the grinder.".

the grinder is a boring thing. it is part of the canister. description of grinder is "It's got a pair of sabled blades that rotate opposite to each other when activated[if livers are not off-stage]. But you broke it[end if].". bore-text is "The grinder's too sharp to touch. Probably put something in the canister instead."

check inserting into grinder: try inserting noun into canister instead; [?? test all these cases]

check inserting into red ring: try inserting noun into canister instead;

check putting on grinder: try putting noun on canister instead;

check putting on red ring: try putting noun on canister instead;

check putting on canister:
	say "(I'm going to assume you meant in the canister.)";
	try inserting noun into canister instead;

understand "blender" as grinder.

check entering canister: say "It's too small." instead; [?? test]

section sabled blades

the sabled blades are a boring thing. they are part of the canister. description of blades is "[if livers are off-stage]Sharp[else]Ruined[end if].". bore-text is "The blades will work when they need to.". [??what if they broke?]

understand "sabled/ blade" as sabled blades

the canister can be broken. the canister is not broken.

check examining canister: ignore the examine containers rule.

chapter sandwich

a sandwich is in Flesh Shelf. initial appearance is "A sandwich lies on the ground here. It doesn't seem as stuck as the livers[if number of glopmeats in Flesh Shelf < 2] were[end if]."

check pulling sandwich: try opening sandwich. [?? needs test case]

check opening sandwich: [?? needs test case]
	say "You [if player does not have the sandwich]take the sandwich and [end if]peel the bread from the Spam.";
	now player has bread;
	moot sandwich;
	set the pronoun it to the Spam;
	now player has the Spam;
	the rule succeeds;

description of sandwich is "Just bread and[one of]--oh dear--[or] [stopping]Spam, lumped together. You could probably [b]PEEL[r] it."

section bread

check taking the bread:
	if bread is part of the sandwich:
		now player has the bread;
		now sandwich is off-stage;
		now Spam is not fixed in place;
		now player has Spam;
		say "It was somewhat lumped to the Spam inside it, but you were able to peel them apart. The Spam probably doesn't need to go on the floor, so you take that, too." instead;

check peelxing bread:
	if bread is part of the sandwich, try taking bread instead;
	say "Peeling crust is a bad habit." instead;

the bread is part of the sandwich. rgtext of bread is "[gcn][rc][rc][rc][gc]". lgth of bread is 5. gpos of bread is 1. rpos of bread is 5. cert-text of bread is "B[d1][d1][d1][ast]D". rect-text of bread is "B[d1][d1][d1][ast]D". the indefinite article of the bread is "some".

description of bread is "It appears gritty, like a five o'clock shadow. Not mold, more like it was toasted some time ago[if bread is part of sandwich]. It's kind of stuck to the Spam it's covering[end if]."

check taking bread:
	if bread is part of the sandwich, move bread to location of player;
	if Spam is part of the sandwich, move Spam to location of player;
	now sandwich is off-stage;

the bread is edible. the bread is flippable.

before taking a disguise-piece:
	if noun is part of a disguise-piece, say "No, why break up what you built?" instead;

section beard

the beard is a disguise-piece. the beard is edible. the elevation of the beard is 0.

the printed name of the beard is "[beard-desc]".

to say beard-desc:
	if number of things that are part of the beard is 0:
		say "beard";
	else if number of things that are part of beard is 1:
		say "beard (with [a random thing that is part of the beard] hooked to it)";
	else:
		say "full-blown beard disguise";

description of the beard is "[if nose is part of beard and shades are part of beard]Your beard is hooked to a nose and shades[else if shades are part of beard]Your beard is hooked to some shades[else if nose is part of beard]Your beard is hooked to a nose[else]It's a deplorably generic fake beard. It has a couple little bits that hook, one at the center and one at the edges, but they're not in use[end if]."

section spam

some Spam is part of the sandwich. rgtext of Spam is "[rcn][rc][rc][rc]". lgth of Spam is 4. gpos of Spam is 4. rpos of Spam is 1. Spam is singular-named. the indefinite article of Spam is "some". cert-text of spam is "-[d1][d1][d1]". rect-text of spam is "M[d1][d1][ast]S".

the Spam is flippable. description of Spam is "It's nastily marbled with mostly pink and some white."

understand "meat" as Spam when Spam is fungible.

does the player mean doing something with Spam: it is likely.

check peelxing Spam:
	if Spam is part of the sandwich, try taking Spam instead;
	say "Don't play with your food. Even if it's not very foody." instead;

check taking Spam:
	if bread is part of the sandwich:
		say "You peel the bread before taking the meat. What the heck, you take the bread, too. [run paragraph on]";
		now player has bread;
	now player has Spam;
	say "It's sort of gross, but hey, it's not moldy.";
	moot sandwich;
	the rule succeeds;

section maps

some maps are plural-named things.

understand "map" as some maps when mrlp is forest.

description of maps is "[if Ghouls Slough is visited]They've worked fine. No need to use them again[else if Emptiness Sepiments is visited]You notice the Emptiness Sepiments at the bottom, but you can't make sense of the rest, yet[else]They're labeled 'ALMOST LOST, MA' and claim to lead to the slayer layers and help you go off of fog. Maybe if you get past Corses Crosse they'll make more sense[end if]." [bold-ok]

chapter River Ville/Viler Liver

A glopmeat is a kind of thing.

check putting it on:
	if noun is a glopmeat and second noun is a glopmeat, say "They don't quite seem to stick. What's a better way to join the two pieces of meat?" instead;

the cur-liv is a glopmeat that varies. the cur-liv is the River Ville liver.

understand "meat" as River Ville liver when cur-liv is the River Ville liver.
understand "meat" as viler liver when cur-liv is the viler liver.

liver-disambig-yet is a truth state that varies.

before doing something with the viler liver when viler liver is touchable: now liver-disambig-yet is true.

before doing something with the River Ville liver when River Ville liver is touchable:
	if liver-disambig-yet is false:
		now liver-disambig-yet is true;
		if the player's command does not include "ville" and the player's command does not include "river":
			say "(You aren't sure which liver to handle, but the viler liver is, well, viler. So, yeah, the River Ville.) ";

after doing something with a glopmeat:
	if noun is in canister:
		now cur-liv is a random glopmeat that is not the noun;
	now cur-liv is the noun;
	continue the action;

does the player mean putting the cur-liv on: it is likely.
does the player mean inserting the cur-liv into:
	if cur-liv is in grinder:
		it is very unlikely;
	it is likely.

section river ville

The River Ville liver is a glopmeat in Flesh Shelf.

understand "riverville" and "riverville liver" as river ville liver.

printed name of River Ville liver is "RiverVille Liver". indefinite article of River Ville liver is "a".

section viler liver

The viler liver is a glopmeat in Flesh Shelf.

description of a glopmeat is usually "[if item described is not in canister]It's ugly and frozen and stamped 100% amalgamatable[else]It's all chopped up in the canister right now[end if]."

does the player mean taking cur-liv when cur-liv is held: it is unlikely.

does the player mean taking River Ville liver when River Ville liver is held and viler liver is held: it is very likely.

check taking a glopmeat:
	if player has noun, say "You've already got it." instead;
	if noun is in canister, say "You shouldn't put your fingers near the blades." instead;
	say "It's stuck, well, frozen to the sink[if player does not have chisel]. And you can't change that. Well, not with what you've got[end if][if player has chisel][chiz-chiz][end if].";
	if player has chisel:
		now player has noun;
	the rule succeeds;

check putting bread on Spam:
	ignore the can't put what's not held rule;
	if bread is part of sandwich, say "Already is." instead;
	say "No sense remaking the sandwich." instead;

check putting Spam on bread:
	ignore the can't put what's not held rule;
	if bread is part of sandwich, say "Already is." instead;
	say "No sense remaking the sandwich." instead;

to say chiz-chiz: say ". But you look through your inventory, and that chisel [if number of glopmeats in Flesh Shelf is 2]looks made for scraping stuff. It easily peels the liver, which you take[else]looks up to the task again. It works[end if]"

chapter livers-sliver-silver

the livers are plural-named things. description of livers is "Amalgamated well enough that you can't recognize which parts came from where. You suspect they're an upgrade from the individual livers but need to figure out how.". lgth of livers is 6. gpos of livers is 6. rpos of livers is 5. rgtext of livers is "[rcn][rc][rc][rc][rc][rc]". cert-text of livers is "-[d1][d1][d1][d1][d1]". rect-text of livers is "S[d1][d1][d1][d1][ast]R".

understand "glop" and "glob" as livers.

the sliver is a thing. the sliver is flippable. rgtext of sliver is "[gcn][rc][rc][gc][gc][gc]". lgth of sliver is 6. gpos of sliver is 1. rpos of sliver is 6. cert-text of sliver is "S[d1][d1][ast]V[ast]E[ast]R". rect-text of sliver is "S[d1][d1][d1][d1][ast]R".

description of sliver is "Surprisingly sharp and of an odd metal. It could cut something as long as you didn't have to saw much."

the silver is a thing. the printed name of silver is "silver cylinder". understand "silver cylinder" and "cylinder" and "silver bullet" and "bullet" as silver when silver is fungible.

understand "shell" as silver when silver is fungible.

does the player mean doing something with the shell when silver is touchable: it is unlikely.

description of silver is "[if silver is in shotgun]It's locked and loaded, Junior[else]It's shaped like a small rocket. It'd make a nifty projectile[end if]."

book Gnarliest Triangles

Gnarliest Triangles is east of Self ID Fields. Gnarliest Triangles is in Forest. "It's awesomely geometric and mathematical here. Triangles all around create a sort of dome effect, and the only bummer is that they block any exit except back west. [container-desc]. And a notes stone rises above the center[if notes stone is not examined and still-need-in-triangles]. Maybe it can help you[end if].". roomnud of Gnarliest Triangles is table of Gnarliest Triangles nudges.

to decide whether still-need-in-triangles:
	if ones are in bucket, yes;
	if dashes are in shell, yes;
	if noughts are in bubble, yes;
	no;

to say container-desc:
	if number of containers in Gnarliest Triangles is 0:
		say "You've looted the triangle of the bucket, shell and bubble";
		continue the action;
	say "Placed in a triangle here are [a list of the containers in Gnarliest Triangles]";

after choosing notable locale objects when player is in Gnarliest Triangles:
	repeat with item running through containers in Gnarliest Triangles:
		set the locale priority of the item to 0;

check examining (this is the ignore-container-examine rule): if noun is sack or noun is cask or noun is a container in Gnarliest Triangles, ignore the examine containers rule.

Rule for printing room description details:
	if location of player is Gnarliest Triangles:
		omit contents in listing;
		stop.

chapter silly scenery

section stick figures

the stick figures are amusing scenery in Gnarliest Triangles. understand "stick/ figure" as stick figures.

description of stick figures is "Each one's not particularly detailed, but it probably provides a clue as to the stuff in each bucket."

section notes stone

the notes stone is scenery in Gnarliest Triangles. understand "myth" as notes stone.

check taking the notes stone: say "The notes stone seems to be glued to the tacks stack. Anyway, you probably only need it for its information." instead;

description of notes stone is "'[b]Attention, word-boy/girl/woman/man! You may think letters are the basic building blocks of everything, but the computer age has shown it's 1[']s and 0[']s! We don't stow twos here! You won't find simpler piles, Mr.! Or a simpler pile, Mrs.![r]'"

section stack of tacks

the stack of tacks is amusing boring scenery in Gnarliest Triangles. "oops tacks should not be shown.". bore-text is "The tacks are glued to themselves. And, oddly, to the notes stone. They aren't useful.".

chapter bucket

the bucket is a container in Gnarliest Triangles. printed name of bucket is "bucket[if ones are in bucket] full of ones[end if]". "!!".

description of bucket is "It's got ONES, ONES, SEEN SOON scrawled on it, and a stick-figure with a question mark between a mouth and a pair of eyes[if ones are in bucket]. And yup, there are plenty of ones tiled in the bucket[else]. It's empty[end if]." [bold-ok]

check taking bucket: say "Buckets be stuck here, unsurprisingly." instead;

section ones

the ones are a plural-named thing in the bucket. the ones are flippable. rgtext of ones is "[rcn][rc][rc][rc]". lgth of ones is 4. gpos of ones is 2. rpos of ones is 3. cert-text of ones is "-[d1][d1][d1]". rect-text of ones is "N[d1][d1][ast]E".

understand "1s" and "one" as ones.

check taking the ones: say "Too many of them. They'd spill all over." instead;

section nose

the nose is a disguise-piece. the elevation of the nose is 1.

to say nose-desc:
	if number of things that are part of nose is 0:
		say "nose";
	else:
		say "nose (with shades attached to it)";

the printed name of the nose is "[nose-desc]".

description of nose is "It would probably slip off your own nose just fine with the proper support. Thankfully, it's not sealed, and it looks like it can be hooked up to something[if nose is part of beard]. It's currently hooked up to a fake beard[else if shades are part of nose]. It's currently hooked up to the shades[end if]."

description of the ones is "They easily pass the smell test for being ones."

chapter shell

the shell is a container in Gnarliest Triangles. printed name of shell is "shell[if dashes are in shell] full of dashes[end if]". "!!!".

description of shell is "It's upturned, so it can hold stuff, with HERE BE DASHES scrawled on it[if dashes are in shell]. A bunch of narrow rectangular tiles are piled in, a bit more efficiently than the other containers. A stick figure on it has X-eyes from looking into the sun[else]. It's empty, now you got the shades from it[end if]." [bold-ok]

check taking shell: say "It's welded to the side of the room." instead;

section dashes

the dashes are a plural-named thing in the shell. the dashes are flippable. rgtext of dashes is "[rcn][rc][rc][rc][gc][gc]". lgth of dashes is 6. gpos of dashes is 3. rpos of dashes is 6. cert-text of dashes is "-[d1][d1][d1][ast]E[ast]S". rect-text of dashes is "S[d1][d1][d1][d1][ast]S".

the pattern is part of the dashes.

description of pattern is "Two upside-down semicircles next to each other, engraved in each of the dashes. Nothing too deep, just an imprint."

understand "semicircles" and "imprint" as pattern.

check taking the dashes: say "Too many of them. They'd spill all over. Not cool." instead;

description of dashes is "Each seems to have a pattern carved into it."

section shades

the shades are a plural-named disguise-piece. the elevation of the shades is 2.

understand "shade" and "glasses" as shades when shades are fungible.

description of shades is "They're not dark enough to prevent you seeing anything. You suspect they'd fit your face just fine. They also have a small hook between the lens bits[if shades are part of the nose] and are attached to a nose[else if shades are part of beard]. A fake beard hangs snugly over the stems[end if]."

chapter bubble

the bubble is a container in Gnarliest Triangles. the printed name of bubble is "bubble[if noughts are in bubble] full of noughts[end if]". "!!!!".

description of bubble is "It's [if noughts are in bubble]labeled NOUGHTS. You see a stick figure falling over, clutching at more spilling innards than a stick figure has a right to have[else]empty now that you made a shotgun from the noughts[end if]. You also spy some sort of elegy written."

check taking bubble: say "It's welded to the side the room." instead;

the elegy is part of the bubble.

the description of the elegy is "It's in a bright red that seems entirely wrong: [i][first custom style]Uthgon's Hut-Song:[paragraph break]Hognuts! Un-ghost no thugs! Go! Shunt![line break]Og hunts gnus, tho['] gush not tons, ugh.[r]"

section noughts

the noughts are a plural-named thing in bubble. understand "naughts" as noughts. rgtext of noughts is "[rcn][rc][rc][rc][rc][rc][rc]". lgth of noughts is 7. gpos of noughts is 7. rpos of noughts is 1. cert-text of noughts is "-[d1][d1][d1][d1][d1][d1]". rect-text of noughts is "S[d1][d1][d1][d1][d1][ast]N".

understand "0s" and "zeros" and "zeroes" as noughts.

description of the noughts is "One look at them makes you feel like solving silly word puzzles, shooting stuff and chewing bubble gum.[paragraph break]There is no bubble gum in [this-game]. But hey, two out of three ain't bad."

after doing something with noughts:
	if nau-nou is false and the player's command matches "naughts":
		say "You also remember some nonsense about there being two ways to spell naughts/noughts.";
		now nau-nou is true;

nau-nou is a truth state that varies.

check taking the noughts:
	say "You seem to hear a chorus of ugh-nots." instead;

section shotgun

the shotgun is a container. understand "shot/ gun" as shotgun when shotgun is fungible.

the shotgun can be loaded. the shotgun is not loaded.

description of shotgun is "A glance at your shotgun: it's pretty dingy but still intimidating, and it's stamped [b]NO THUGS[r] in red. For whatever reason, it's six-barreled at the muzzle end[if shotgun is not loaded]. Not loaded, though[else]. It's loaded. You will probably need to [b]SHOOT[r] it at some point[end if]."

the muzzle is part of the shotgun. description of muzzle is "Six-barreled. Weird."

book Emptiness Sepiments

Emptiness Sepiments is north of Self ID Fields. It is in Forest. "A creepy acre, yep. Immovable scoffer coffers block the way west, and scoffin['] coffins block the way east[if liches are in Emptiness Sepiments]. Liches block your way north[one of]. Drat! You were hoping for a ghost, whom you could zap to goths, and then if they had any spunk, you'd show them up as punks[or][stopping][end if][if drapes are in Emptiness Sepiments]. Along one wall you see drapes fluttering. They're too thick to walk through[else if red asp is in Emptiness Sepiments]. A red asp guards the way north[else if spread is in Emptiness Sepiments]. A spread blocking the way north flutters in some breeze you cannot feel[else if liches are not in Emptiness Sepiments]. That missend dimness acts as a sort of doorway north--you'll have to go through it eventually[end if][if banshee is in Emptiness Sepiments]. A banshee also wails about its former life, and it'd be nice to deep-six (well, seven, since it's got seven letters,) but not necessary[else][end if]. You can go back south to the fields.". roomnud of Emptiness Sepiments is table of Emptiness Sepiments nudges.

after looking in Emptiness Sepiments:
	if banshee is in Emptiness Sepiments:
		set the pronoun it to banshee;
		set the pronoun him to banshee;
		set the pronoun her to banshee;
	if liches are in Emptiness Sepiments:
		set the pronoun them to liches;

to say d-s: say "[if drapes are touchable]drapes make[else if red asp is touchable]red asp makes[else]spread makes[end if]".

check going inside in Emptiness Sepiments:
	if liches are in Emptiness Sepiments, say "The liches won't let you past." instead;
	if drapes are in Emptiness Sepiments, say "The drapes are too thick. They almost seem to enfold you in darkness before you can run away." instead;
	if red asp is in Emptiness Sepiments, say "You need to get rid of the red asp, first." instead;
	if spread is in Emptiness Sepiments:
		say "As you try to walk through the spread, it reforms into a nasty red asp! You back up quickly.[red-to]";
		the rule succeeds;
	if player does not have maps and player does not have Spam, say "[dibb]It's probably dangerous to go there without some sort of guide." instead;
	if player does not have shotgun, say "[dibb]You've got maps to help you, but man. That's scary. You need a weapon." instead;
	if shotgun is not loaded, say "You don't know what's to the north. [if prep paper is examined]You remember something about a lupine lineup[else if player has prep paper]You read the prep paper to note something about a lupine lineup[else]Things will probably only get more creepy and dangerous[end if], and that unloaded shotgun won't be enough[if silver is off-stage], and you don't have anything that works against them[else], but maybe you can refashion what you have into a different sort of weapon[end if]." instead;
	say "As you stumble through, a gust of wind makes you turn your head and clutch your belongings. Your disguise goes flying off! Well, you won't need to fool anyone with it any more, anyway.";
	moot nose;
	moot shades;
	moot beard;
	if banshee is not moot, poss-d;
	if slit is not moot, poss-d;

chapter banshee

the banshee is LLPish scenery in Emptiness Sepiments. bore-text is "That's just the banshee wants. Attention, even when they are no longer relevant or directly able to make others miserable. You have more important things to do than spend time on the banshee! Though there might be a way to dispel it.". description is "You can't see the banshee, but boy, is it wailing!"

Include (-
	has transparent animate
-) when defining banshee.

rgtext of banshee is "[rcn][gc][rc][rc][rc][gc][rc]". lgth of banshee is 7. gpos of banshee is 5. rpos of banshee is 3. cert-text of banshee is "-[ast]A[d1][d1][d1][ast]E[d1]". rect-text of banshee is "H[d1][d1][d1][d1][d1][ast]N".

the has been is useless boring scenery. description is "You shouldn't be able to detect it, or the banshee, now.". printed name is "has-been". understand "hasbeen" as has been.

can-pass-crosse is a truth state that varies. can-pass-crosse is usually false.

chapter liches-chisel

section liches

The liches are scenery in Emptiness Sepiments. The liches are flippable. rgtext of liches is "[rcn][rc][rc][rc][gc][rc]". lgth of liches is 6. gpos of liches is 3. rpos of liches is 1. cert-text of liches is "-[d1][d1][d1][ast]E[d1]". rect-text of liches is "C[d1][d1][d1][d1][ast]L".

Include (-
	has transparent animate
-) when defining liches.

understand "lich" as liches

after doing something with liches:
	set the pronoun it to liches;
	continue the action;

description of liches is "They seem to be moaning about being reduced to a tool of greater evil."

check listening when player is in Emptiness Sepiments:
	if liches are touchable, say "The liches are whining about their former lives. 'Tried to...I rotted...' One was a sculpted abstract artist worth far less than its fees, one cheated others for any amount of money it felt like, and one was an obsessive bodybuilder. All forgot about their spiritual life[if banshee is touchable]. They almost drown out the banshee's screams[end if]." instead;
	if banshee is touchable, say "The banshee is still moaning. Not threateningly, but annoyingly. Be nice to get rid of it, if you could." instead;

section chisel

The chisel is a thing. description of the chisel is "It seems like it can [b]PEEL[r] all sorts of things you may not want to handle."

to say dibb: say "A voice booms 'Dash in, be banished!' "

chapter silly scenery

section scoffer coffers

to say scoffy-desc: say "The [item described] remind you of all the times you were laughed at and how even the tritest titters hurt"

to say scoffy-bore: say "You don't want to mess with [the item described] and the horrible laughter contained therein. Plus, they may be guarding you from worse"

the scoffer coffers are boring bounding scenery in Emptiness Sepiments. "[scoffy-desc].". bore-text of scoffer coffers is "[scoffy-bore]."

understand "coffer" and "scoffer coffer" as scoffer coffers.

section scoffin coffins

the scoffin coffins are boring bounding scenery in Emptiness Sepiments. "[scoffy-desc].". bore-text of scoffin coffins is "[scoffy-bore].". printed name is "scoffin['] coffins".

understand "coffin" and "scoffin coffin" as scoffin coffins.

chapter drapes-spread-red asp

section spread

the spread is flippable boring scenery. description of spread is "You feel fear going near the spread. It might lash out at you if you get too close, or if you tried to cut it with [if player has sliver]your sliver[else]something[end if].". bore-check is bore-spread rule.

this is the bore-spread rule:
	if current action is taking or current action is pushing or current action is pulling or current action is opening, say "The spread is too large and too heavy. Maybe you can examine it, to figure what to do with it." instead;

lgth of spread is 6. gpos of spread is 6. rpos of spread is 1. rgtext of spread is "[rcn][rc][rc][rc][rc][rc]". cert-text of spread is "-[d1][d1][d1][d1][d1]". rect-text of spread is "D[d1][d1][d1][d1][ast]S".

section drapes

the drapes are plural-named scenery. description of drapes is "Too thick and heavy to walk through.". bore-text of drapes is "This isn't some living room. (Sorry.) Those drapes are thick and oppressive. You'll need something sharp to cut through them.". bore-check of drapes is bore-drapes rule.

check opening drapes: say "Most normal drapes would be easily openable. But these drapes are guarding something, so operating normally is out. How to dispose of them?" instead;

understand "cloth" as drapes when drapes are fungible.

this is the bore-drapes rule:
	if current action is cutwithing or current action is unfolding, now boring-exception is true;

understand "cloth" as spread when spread is fungible.

section red asp

the red asp is a flippable thing. lgth of red asp is 6. gpos of red asp is 3. rpos of red asp is 5. rgtext of red asp is "[rcn][rc][rc][rc][rc][rc]". cert-text of red asp is "-[d1][d1][d1][d1][d1]". rect-text of red asp is "D[d1][d1][d1][d1][ast]S".

description of red asp is "It's fortunately attached to the north side, much like the spread was before you disturbed it. It's fast, mean, vicious and very red, and you'd be no match for it even with [if player has sliver]that sliver[else]a weapon[end if]."

Include (-
	has transparent talkable
-) when defining red asp.

book Ghouls' Slough

Ghouls Slough is inside of Emptiness Sepiments. It is in Forest. "This is as ethereal as its inhabitants, whom you cannot see or hear[one of]. You think you hear a dog bark in this dark bog, then feel like a dorkbag[or]You feel ... ugh, SOL. Guh, SLO[or][stopping]. A cruel ones['] enclosure is nearby, but it can't be where you want to go.". nowhere is south of Ghouls Slough. roomnud of Ghouls Slough is table of Ghouls Slough nudges. understand "ghoul slough" and "ghoul" as ghouls slough. printed name is "Ghouls['] Slough". [bold-ok]

outside of Ghouls Slough is nowhere.

exits-text of Ghouls Slough is "You might get lost going in any direction without help. Hmm."

check examining maps in Ghouls Slough:
	say "The maps make sense, now you have somewhere to go and seem lost. You note places and things to avoid: [randbla], [randbla], and [randbla]. New ways to go off of fog. And you take a direst stride, past all manner of stown towns. Then the chilling cries of 'BRAAINS, SABRINA!' distract you...[paragraph break]"; [bold-ok]
	now maps are realized;
	move player to Frost Forts instead;

chapter Cruel Ones' Enclosure

the Cruel Ones' Enclosure is boring amusing scenery in Ghouls Slough. "Oh my. It's got all sorts of cruel, but clearly irrelevant, invective against whoever demoted them after release 4. Why, they used to have a whole room named after them. The one you just left! You'd think they'd be happy to be featured at all, but noooo.". bore-check of Cruel Ones' Enclosure is bore-enclosure rule. bore-text of Cruel Ones' Enclosure is "The [enclosure] looks a bit too small-time to be the source of all the evil here. You only have one shot in your shotgun, and you want to make it count.". [no way around the apostrophe here. It clashes with ones, otherwise.]

understand "cruel ones" and "ones enclosure" and "cruel ones enclosure" and "ones" as Cruel Ones' Enclosure when player is in Ghouls Slough.

understand "coe" as cruel ones' enclosure when debug-state is true.

check going inside in Ghouls Slough: try entering Cruel Ones' Enclosure instead.

this is the bore-enclosure rule:
	if current action is taking or current action is entering, say "The cruel ones would take out their frustrations on being demoted to mere scenery on, well, you. That doesn't make sense, but then, cruelty rarely does." instead;
	if current action is attacking, say "You hear an ol['] gush: 'Slug! Ho!'" instead;

chapter dog and bog

the dog is amusing boring scenery in Ghouls Slough. description of dog is "You can't see the dog, but it seems creepier than your average house pet.". bore-text is "The dog! Where was it? Where is it? Eegh. You don't REALLY want to think about it.".

the bog is amusing boring scenery in Ghouls Slough. description is "The bog is pretty much all around. Maybe something could help you through it, though.". bore-text is "The bog feels like a big old gob that could suck you in. You just want to find a way away from it. Maybe something could help you through it, though."

to say end-it: end the story.

book Frost Forts

Frost Forts is a room in Forest. "Now's snow. Sown Snow OWNS. It'd take a chimera to do the ice harm here, there's so much of it. This ain't no snowiest townsies.[paragraph break]The forts all around seem to frown at you, and six-foot-high iced dice are placed all around. An icecap is near you, smelling of ipecac.[paragraph break]Gnash-hangs seem to guard exits every which way[if wolves are in Frost Forts], though I doubt those werewolves will let you get there[end if].". roomnud of Frost Forts is table of Frost Forts nudges.

exits-text of Frost Forts is "You're stuck here. This is the final battle!"

after printing the locale description for forts when forts is unvisited:
	set the pronoun them to vowels;

chapter amusing scenery

section sown snow

the sown snow is amusing boring scenery in Frost Forts. description is "Not too deep to prohibit walking through, but all the same, there's too much of it. You'd like to do what you need and then get out.". bore-text is "The sown snow is just there to create feelings of, like, oppression and woe."

section ipecac icecap

the ipecac icecap is amusing boring scenery in Frost Forts. description of ipecac icecap is "Yechier, icy, here.". bore-text is "The ipecac icecap is just there for ambiance."

section iced dice

the iced dice are plural-named amusing boring scenery in Frost Forts. description of iced dice is "Each side seems to have a big skull-and-crossbones on it. Their fare is fear, with no warm café hidden in any face. Just don't think of them as ice caps, capisce?". bore-text of iced dice is "The dice could crush the [if vowels are in Frost Forts]vowels[else]wolves[end if] easily. But you're not twenty feet tall, so they just sort of add to the atmosphere.". bore-check of iced dice is bore-iced-dice rule.

this is the bore-iced-dice rule:
	if wolves are in Frost Forts and current action is taking, say "If you could pick the dice up, you wouldn't need another weapon to trash the wolves." instead;

understand "ice" as iced dice.

section forts (scenery)

the fos are privately-named amusing boring scenery in frost forts. printed name of fos is "forts". understand "forts" and "frost forts" as fos. bore-text of fos is "The forts aren't doing much more than intimidating you.". bore-check of fos is bore-forts rule. description of fos is "The forts surround you. Still, nothing seems to be inside them. The [wo-vo], on the other hand..."

this is the bore-forts rule:
	if current action is entering, say "The Frost Forts would provide no protection from the final conflict you face." instead;
	if wolves are in Frost Forts and current action is taking, say "If you could pick the dice up, you wouldn't need another weapon to trash the wolves." instead;

the frowns are plural-named amusing boring things. They are part of the fos. description of frowns is "Frowny, as if they want you to fry now. Also, impassable. They have no doors but you're worried something will jump at you from them. As unpleasant as the [wo-vo]."

to say wo-vo: say "[if wolves are in Frost Forts]wolves[else]vowels[end if]"

section gnash hangs

the gnash hangs are bounding boring scenery in Frost Forts. description of gnash hangs is "They menace you from all around, ready to jump if you try to escape. The ones you see stay still, but you can hear the ones behind you snapping.". bore-text of gnash hangs is "The gnash hangs are just there for atmosphere, to force you into the final conflict."

the bumps are a plural-named boring thing. the bumps are part of the vowels. description of bumps is "They look almost like fangs or very long nails."

chapter vowels

the vowels are plural-named boring things in Frost Forts. . "Six large aplastic capitals sway when there is no breeze and stand still when there is.". bore-text of vowels is "They can't fit in here. They must be something else. One last thing to change, maybe.". bore-check of vowels is bore-vowels rule.

rgtext of vowels is "[rcn][gc][rc][rc][rc][gc]". lgth of vowels is 6. gpos of vowels is 3. rpos of vowels is 6. cert-text of vowels is "-[ast]O[d1][d1][d1][ast]S". rect-text of vowels is "W[d1][d1][d1][d1][ast]S".

understand "a/e/i/o/u" as vowels when player is in Frost Forts.

this is the bore-vowels rule:
	if current action is taking, say "They're just way too big. Like that LOVE statue in Philadelphia. But they fill you with fear, unlike the LOVE statue, because they spell AIE OOU, and that's how it sounds as the wind blows through them." instead;

understand "vowels/letters/five/six/tall/aplastic/capital/capitals/pyramid" as vowels when vowels are fungible.

description of vowels is "[vowel-desc]"

to say vowel-desc:
	if the player's command includes "vowels":
		say "Hm...yes...they are that, but what do they need to be?[no line break]";
	else:
		say "A, E, I, O, U and Y, piled up in a pyramid. Hm, they are not just ANY letters. Yup, they're pretty much shouting out (figuratively) 'We're vowels!' Yup, even the Y. The vowels also have bumps where they end.[no line break]"

chapter wolves-vowels

the wolves are plural-named neuter people. "Slavering werewolves aren't quite advancing on you. They're waiting for the first sucker to step forward and get shot. You think."

Include (-
	has transparent animate
-) when defining wolves.

check taking wolves: say "Well, you can take them, but not in that sense." instead;

understand "werewolves" as wolves.

description of wolves is "Drooling, hate in their eyes, etc. And a bit of fear. Of your gun."

volume Sortie

room-flip is a truth state that varies.

definition: a room is moory:
	if it is moor, decide no;
	if it is in Sortie, decide yes;
	decide no;

section taping (joke verb)

taping is an action applying to one thing.

understand "tap [something]" as taping.

[NOTE: If "something new" is put here, they overwrite the mistake file, which gives instructions for TAP FEET. So that's why they seem to be missing. ]

to say pat-tap:
	say "'Ah! You are TAPping your feet to my anapest beat!'[line break]";
	ital-say "[b]TAP[i] is not a standard verb. [b]PUSH[i] may work better when not around Pat, but Pat will be gone by then.";

rule for supplying a missing noun when taping:
	if woeful pat is in location of player:
		say "[pat-tap]";
		reject the player's command;
	else if spout is touchable:
		now noun is spout;
	else:
		now noun is player;

carry out taping:
	if pat is in moor and player is in moor, say "Not apt. Though you can [b]TAP FEET[r] for a clue." instead;
	if noun is spout:
		if cask is touchable, try filling the cask instead;
		say "The oils would go to waste." instead;
	say "[b]PUSH[r] may be the synonym you want, here." instead;

does the player mean taping the spout: it is very likely.

chapter mud

the mum dud mud is a bounding dumbdrop. description of mum dud mud is "Well, it's mud, and not very exciting mud at that.". bore-text is "You can't do much with, or to, the mud. Even if it were, it would cause a cave-in. You have enough to explore here[if moor is visited] and in the moor beyond[else], and maybe there's another way to leave this lair[end if]."

drop-rule is the drop-mud rule.

this is the drop-mud rule:
	if in-i-box, the rule succeeds;
	the rule fails;

to decide whether in-i-box:
	if player is in roomroom or player is in Trap Part or player is in Stiller Trellis or player is in Kitchen, yes;
	no;

to say dmm:
	say "Mum, dud mud"

chapter going inside

check going inside when mrlp is sortie:
	if player is in nick, say "You're already inside. You need a way out, but you can't just walk out." instead;
	if player is in moor, continue the action;
	say "There's nothing to go inside, here. You'll need to specify a cardinal direction." instead;

chapter Trap Part

Trap Part is a room in Sortie. last-loc of Sortie is Trap Part. "[if centrifuge-stopped is true]A round den, unadorned. A lid lies where once the dial laid. Exits lie north and east[maybe-shift]![else]Ug, frenetic centrifuge, with a dial in the center. Two exits are spinning counterclockwise. They're a right angle apart.[end if]". roomnud of trap part is table of trap part nudges.

to say maybe-shift: say "[if kitchen is unvisited and roomroom is unvisited], and you're pretty sure they won't fake you out at the last minute[else], and they've been behaving since you fixed that dial[end if]".

understand "centrifuge" as dial when centrifuge-stopped is false.

understand "round/den" and "round den" and "unadorned" as Trap Part when centrifuge-stopped is true.
understand "frenetic/centrifuge" and "frenetic centrifuge" as Trap Part when centrifuge-stopped is false.

chapter dial

The dial is in Trap Part. The dial has a number called numset. The numset of the dial is 0. the dial is fixed in place. the dial is flippable.

check setting the dial to: say "Try a number instead. Or, if you typed out a number more than twenty, use the digits." instead;

centrifuge-stopped is a truth state that varies. centrifuge-stopped is usually false.

the trap exits are plural-named scenery in Trap Part. understand "angle" as trap exits when player is in Trap Part. "[ufcex-descrip].".

to say ufcex-descrip:
	if numset of dial is 16:
		say "They're behaving nicely now. That is, not at all. They won't jump if you go through them";
		continue the action;
	say "The exits are at a right angle to each other--stationary, but spinning relative to you[if dial is unexamined]. You glance at the dial, which seems to refer to them and be flashing various letters as well[else], and maybe between the dial and the exit positions you can work out which number you need, here[end if]"

check turning the dial:
	if numset of dial is 16, try dialsetting dial to 0 instead;
	say "You need to specify a number: 0-99." instead;

initial appearance of the dial is "There's a dial laid in the middle of the room. It is at [numset of the dial] and [if centrifuge-stopped is true]should probably be kept it that way. There's nothing else of note here[one of], so you may wish to explore elsewhere[or][stopping][else]is not spinning with the rest of the room, so you can probably turn it[end if]."

description of dial is "[if centrifuge-stopped is false]On the dial at the center of the centrifuge, y[else]Y[end if]ou see [b]EXITS [if numset of dial is 16]N E[r] [else]? ?[r]--you can see two letters, but they're scrolling through the four cardinal directions[end if]. The dial's currently set to [numset of dial], and you [if numset of dial is 16]want to keep it that way, thank you very much[else]can set it anywhere from 0 to 99 with [b]TURN DIAL TO[r] or just the number[end if][dial-hints]." [bold-ok]

to say dial-hints:
	if numset of dial is 16, the rule succeeds;
	say "[one of]. You wonder if there's a partial clue here that you just need to look at right[or]. Maybe if you knew where the exits were supposed to be, that would help. There are only twelve possibilities[or]. You briefly wonder what numbers have X's in them[or]. The dial seems to indicate there are seven letters--one is X, and two are a direction. But you haven't had to go diagonally a lot. That leaves four possibilities[or]. Where, abbreviated, the exits should point[or]. The room [b]NEXT IS E[r]asier[or]. You may feel square for missing other solutions to this problem[or]. Worse comes to worst, you can just to a binary search with the numbers: 99, 50, 75, etc[or]. Well, maybe you can brute force things and move the dial one unit at a time. The centrifuge hasn't killed you yet[stopping]"

chapter for Mondale-Doleman to be referenced everywhere

Mean Old Mondale Doleman is a boring thing. description is "You can't see Mean Old Mondale Doleman, but you'll have to defeat him.". bore-text is "Mondale-Doleman is out there, you know. But thinking about what he's done won't help you solve things.". bore-check is bore-doleman rule.

this is the bore-doleman rule: if current action is scaning, try examining doleman instead;

printed name of Mean Old Mondale Doleman is "Mean Old Mondale-Doleman".

chapter a lid

a lid is boring scenery. description is "It covers where the dial was, and you probably want to keep it that way.". bore-text is "The lid's okay where it is. It's not pretty, but it's better than if the dial came back.". understand "dial" as lid when dial is moot.

chapter dial setting

dialsetting it to is an action applying to one thing and one number.

understand the command "set [something] to [number]" as something new.

understand "set [something] to [number]" as dialsetting it to.

understand the command "switch [something] to [number]" as something new.

understand "switch [something] to [number]" as dialsetting it to.

understand the command "turn [something] to [number]" as something new.

understand "turn [something] to [number]" as dialsetting it to.

numming is an action applying to one number.

understand the command "turn [number]" as something new.

understand "turn [number]" as numming when player is in Trap Part and centrifuge-stopped is false.

understand the command "set [number]" as something new

understand "set [number]" as numming when player is in Trap Part and centrifuge-stopped is false.

understand the command "[number]" as something new.

understand "[number]" as numming when player is in Trap Part.

does the player mean examining a sto when player is in Trap Part: it is unlikely.

check numming:
	if dial is moot, say "You don't need to rehash your dizzying introduction, here." instead;
	try dialsetting dial to number understood instead;

numset-ever-greater is a truth state that varies. numset-ever-greater is false.

check dialsetting it to:
	if noun is not dial, say "That doesn't set to a number. [if noun is emitter or noun is gadget or noun is tip or noun is s-r]You may want to [b]SWITCH[r] it, instead[else]It doesn't [b]SWITCH[r], either, so you may want to try another verb[end if]." instead;
	if numset of dial is 16, say "Oh no. You don't need to start that again[if number understood is 16]. Or even think about it[end if]." instead;
	if number understood is numset of dial, say "That's where the dial's already set." instead;
	if number understood > 99, say "If you tried to spin it that high, you'd break the dial." instead;
	if number understood < 0, say "This negative attitude isn't helping you solve the puzzle." instead;
	increment total-tries;
	if number understood is 16:
		now numset of dial is 16;
		say "The room warps a bit. You wonder if you made things worse, but you hear strong g-trons go SNRT...you did it![paragraph break][if dial is unexamined]You glance at the dial, see [b]EXITS N E[r] and wonder if it was always there[else]The flipping bits in the dial lock in to say [b]EXITS N E[r][end if]. And you see, yes, exits are north and east now. My hat, that was mathy.[paragraph break]You find yourself in a round den, unadorned.";
		reg-inc;
		moot dial;
		moot trap exits;
		now lid is in Trap Part;
		now centrifuge-stopped is true;
		the rule succeeds;
	if numset of dial > 17:
		now numset-ever-greater is true;
	if numset of dial < 16 and number understood < numset of dial:
		binary-eval;
	else if numset of dial > 16 and number understood > numset of dial:
		binary-eval;
	else:
		increment consecutive-binary-tries;
		say "[if number understood and numset of dial skip]The room seems to slow down for a bit before picking up speed and spinning as fast as before[else]The room seems to spin a bit slower. You think[end if]. [run paragraph on]";
		if consecutive-binary-tries is 5:
			say "You feel you're getting closer. Perhaps you'll get it soon.";
		else if consecutive-binary-tries is 8:
			say "You feel and hope you're getting there, but maybe dividing and conquering the possible numbers left will work, if you don't understand the dial clues[if dial is unexamined] it'd be worth examining[end if].";
		else if consecutive-binary-tries is 10:
			say "Inching along with the dial will get there, but maybe you should be--or should have been--more clinical. Each guess can cut half the numbers, though maybe there's an even quicker way.";
		else if consecutive-binary-tries is 12:
			say "Well, you know you'll get there eventually. P.S. I hope you are using the up-arrow and not typing the numbers out.";
		else:
			say "[line break]";
	[d "Currently [total-tries] tries, [consecutive-binary-tries] consecutive binary tries.";]
	if total-tries is 5:
		say "[line break][if dial is unexamined]You wonder if the dial has any sort of hint on it--an odd word or number or letter--anything.[else]Maybe the [b]EXITS[r] on the dial provides a hint--you're starting to figure this world out, and since you need a number, which would contain all these letters?[end if]";
	now numset of dial is number understood instead;

consecutive-binary-tries is a number that varies. consecutive-binary-tries is usually 0.

to binary-eval:
	now consecutive-binary-tries is 0;
	say "[one of]The room seems to spin a bit faster, and you worry you've made things worse[if dial is examined]--the dial contains a hint[else]--maybe examining the dial can help[end if].[or]You feel like you are just flailing with the numbers, now, as the room picks up speed[if numset-ever-greater is true]. Maybe you should try guessing some higher numbers--you might pass over the right one[else]. The room slowed down a bit when you moved up several numbers. Maybe if you keep going past the right number, you'll eventually hit it[end if].[or]You think that a binary search may not be a bad way to do things, even if you-the-player don't know what a binary search is.[or]Getting colder.[stopping]";

successful-binary-tries is a number that varies. successful-binary-tries is usually 0.
total-tries is a number that varies. total-tries is usually 0.

to decide whether (a - a number) and (b - a number) skip:
	if a < 16 and b < 16, decide no;
	if a > 16 and b > 16, decide no;
	decide yes.

chapter warts / straw

section warts

some warts are a thing. warts are plural-named.

check taking the warts: say "They're kind of stuck on, and you've heard cures like burning make them worse." instead;

description of warts is "You can only feel them--no mirrors around--but they're plenty bumpy.". rgtext of warts is "[rcn][rc][gc][rc][rc]". lgth of warts is 5. gpos of warts is 5. rpos of warts is 1. cert-text of warts is "-[d1][ast]R[d1][d1]". rect-text of warts is "S[d1][d1][d1][ast]W".

section straw

some straw is a singular-named thing. "Some straw, too much to lug around in your hands, lies here."

the indefinite article of straw is "some"

does the player mean giving the straw to the peasant: it is very likely.

description of straw is "Yellowy, rough edges, semi-musty. Just straw."

book The Nick

A room called The Nick is in Sortie. "You're locked in this arty suite of austerity by a great grate. It's a more forbidding version of the gateway in the Notices Section. You doubt even Nat Egam could magic it open. There appears to be no standard way out. It has no accommodations, not even unsoft futons. This is a saner snare than the centrifuge, but it doesn't look like you'll drug a guard or reveal a lever to escape. At least there is some graffiti[if player has gadget][beepity-nick][end if].". roomnud of the nick is table of the nick nudges.

understand "nick" as nick when player is in nick.

exits-text of the nick is "You can't just walk out of the nick, but there's a way to think yourself out."

section how to get here

check going to kitchen when kitchen is unvisited: go-to-nick instead;

check going to roomroom when kitchen is unvisited: go-to-nick instead;

to go-to-nick:
	say "You're entrap't by a tarpnet pattern! Two nuts stun you with rubber hoses. 'Snooper so prone! A blockhead! Ha, blockade! Pound [']im! Impound!'[paragraph break]Unsubtle, but effective. 'Passed our tamest net, but that's no statement. Outrage if you get past our gate.' After this rare accident, you're incarcerated.[paragraph break]As they walk away, you hear '...made mead. Much, chum.'[paragraph break]Sots at toasts. Boy, those pinheads made your head spin.";
	now cask is open;
	now the hole is part of the cask;
	now the hoses are in roomroom;
	move player to the nick;

section what to do here

to say beepity-nick:
	say ".[paragraph break]Your gadget seems to shake a bit";
	set the pronoun it to gadget;

after looking in kitchen for the first time:
	say "You notice some warts on your face. Stress causes them, you know, and between the centrifuge and the nick, you've had a bit lately.";
	now warts are part of the player;
	now startmod5 is the remainder after dividing (turn count + 4) by 5;

chapter scenery

t-n is privately-named and proper-named boring scenery in the nick. description of t-n is "The nick is all around.". printed name of t-n is "the nick". understand "nick" as t-n. the rgtext of t-n is "[rc][rc][rc][rc][rc][rc][rc]". the lgth of t-n is 7. gpos of t-n is 7. rpos of t-n is 4. the cert-text of t-n is "-[d1][d1][d1][d1][d1][d1]". the rect-text of t-n is "K[d1][d1][d1][d1][d1][ast]N". t-n is abstract. bore-text is "You need to do something special with the nick."

section great grate

The great grate is scenery in The Nick. "Huge. Eugh. Nat Egam couldn't magic it, and not even Flexi-Felix could slip through the holes! It's branded with red writing you could probably [b]READ[r]."

check opening great grate: say "You utterly fail to move it. If it could speak, it might sarcastically say [one of]Boring? Brig? No![or]Give up! And mean it, inmate![or]Denied, Indeed![or]Weak Try, Raw Tyke![at random]" instead;

understand "gate" as great grate when grate is fungible.

section graffiti

some jail cell graffiti is scenery in The Nick. description of jail cell graffiti is "[one of]There are a few things. Here is the first.[paragraph break][or][stopping]In red crayon: [first custom style][one of]N. THICKE-HECKTIN was here.[or]Chetnik was here.[or]Think, C.E.![or]Hecknit was here.[in random order][r]" [bold-ok]

check taking the jail cell graffiti: say "Maybe you can take a hint from it." instead;

nick-turns is a number that varies. nick-turns is 0.

startmod5 is a number that varies.

chapter every turn stuff

every turn:
	if turn count > nick-turns:
		if player is in The Nick:
			say "[one of]Boy. Incarceration's making you hungry already[or]You think back to your home and all its comfy rooms[or]Mmm, Foood. Even a lame meal. You'd even make it yourself[or]You feel the heat of Mean Old Mondale-Doleman's hate even from here. You can't take it, so you want to get out of the The Nick. The Nick[or]You counter your urge to sink in despair. Or maybe you just table it[or]You doze off and dream you're watching a cooking show featuring ten hicks. They work in multiple...oops, you wake up and forget[or]You'd do housework to avoid this workhouse[or]You doze off--some guy named Chen has a kit for getting out of here--you wake up. Dang[or]You feel your mind thicken. You're hungry for a new location and whatever new puzzles it has cooked up[stopping].";
		if the remainder after dividing turn count by 5 is startmod5:
			if warts are touchable:
				if player is in the nick:
					say "[line break]";
				say "You almost pick at your new warts[if player has gadget], and your gadget activates slightly[end if]. Man! If only you could say something to make the warts grow backwards, or just make them disappear. Or both.";
		now nick-turns is turn count;
	if player is in Trips Strip:
		if gadget-secured is true:
			if number of solved regions is 3:
				if given-pass-yet is false:
					say "So. Apparently, you have one store area left to clear. But you don't need to. Store R suddenly looks invitingly idyllic, but if you're in the mood for adventure, you may want to look somewhere else first--[last-store], maybe.";
					now given-pass-yet is true;

given-pass-yet is a truth state that varies. given-pass-yet is false.

to say last-store:
	say "[if store f is touchable]store f[else if store i is touchable]store i[else if store m is touchable]store m[else if metros are touchable]the metros[else if forest is touchable]the forest[else if sortie is touchable]the sortie[end if]"

to say gad: say "Your gadget's not near anything, but it's registering ".

book Kitchen

Kitchen is north of Trap Part. Kitchen is in Sortie. roomnud of kitchen is table of kitchen nudges. description of Kitchen is "This is a kitchen, though it's a bit bare, except for the grief'd fridge and [if taco is off-stage]a Red Inn which holds various foodstuffs[else]the Red Inn you made the taco on[end if]. South is the Trap Part you escaped, and east is [if Stiller Trellis is unvisited]somewhere less hectic[else]the room with the trellis[end if]."

kitchen-hint-list is a list of things variable.

after choosing notable locale objects when player is in kitchen:
	if straw is in kitchen and straw is not enclosed by player, set the locale priority of the straw to 9;

chapter ingredients' properties

an ingredient is a kind of thing.

a pregredient is a kind of thing.

definition: an ingredient (called ing) is separate-in-kitchen:
	if ing is part of the tortilla, no;
	if ing is touchable, yes;
	no;

definition: a thing (called thi) is tacoish:
	if thi is a pregredient or thi is an ingredient, yes;
	no;

to decide which number is nvp: decide on number of touchable pregredients;
to decide which number is nvi: decide on number of touchable ingredients;

for printing a locale paragraph about a tacoish thing (called xyzyx) when player is in kitchen:
	now the player is mentioned;
	now red inn is mentioned;
	now dud mum mud is mentioned;
	now griefd fridge is mentioned;
	if xyzyx is a pregredient or xyzyx is an ingredient:
		if xyzyx is not mentioned and xyzyx is not part of the tortilla:
			say "The Red Inn contains things that [if nvp > 0 and number of separate-in-kitchen ingredients > 0]do and don't [else if number of touchable pregredients > 0]don't [end if]belong in a kitchen: ";
			if nvp > 0, say "[a list of touchable pregredients]";
			if nvp > 0 and nvi > 0, say ". It also contains, more suitably, ";
			if nvi > 0, say "[the list of separate-in-kitchen ingredients]";
			say ".[paragraph break]";
			now all pregredients are mentioned;
			now all ingredients are mentioned;

check taking an ingredient: [?? put steak on saltine before/after on tortilla]
	if noun is part of the tortilla, say "No need to undo your efforts." instead;
	say "It belongs in the kitchen. You don't want to get it dirty if you go adventure elsewhere." instead;

check taking a pregredient: if noun is not spearman, say "It's kind of quirky, but it doesn't seem too useful as-is." instead;

after printing the locale description for kitchen when kitchen is unvisited:
	say "Boy. That time in the nick left you hungry. And in need of warmth. Maybe you can get a two-for-one here in the kitchen.";
	continue the action;

does the player mean putting an ingredient on the tortilla: it is very likely.

check inserting an ingredient into an ingredient (this is the tortilla-into rule): try putting noun on second noun instead;

check inserting something into ingredient:
	if noun is not an ingredient, say "That wouldn't taste very good[if noun is a pregredient], but maybe in some other form, it could[end if]." instead;

the tortilla-into rule is listed before the can't insert into what's not a container rule in the check inserting it into rules.

chapter pregredients

section tall trio

the tall trio is a pregredient in Kitchen. rgtext of tall trio is "[gcn][rc][rc][rc][rc][rc][rc][rc]". lgth of tall trio is 8. gpos of tall trio is 1. rpos of tall trio is 2. cert-text of tall trio is "T[d1][d1][d1][d1][d1][d1][d1]". rect-text of tall trio is "T[d1][d1][d1][d1][d1][d1][ast]A".

understand "chefs/chef/statues/statue" as tall trio.

understand "al/tri/lot" as tall trio when player is in kitchen.

description of tall trio is "Well, they are actually only six inches tall, one with an arm on each other's shoulders. You can probably [b]READ[r] the tall trio to find their names."

this is the part-trio-take rule:
	if current action is taking, say "You don't need to take the tall trio or any part of it. Maybe there's a way to change things, though." instead;

section CATHOUSE

the bottle of CATHOUSE perfume is a pregredient. "A [cathouse] is here.". rgtext of CATHOUSE is "[rcn][rc][gc][rc][rc][gc][rc][gc]". lgth of cathouse is 8. gpos of cathouse is 4. rpos of cathouse is 8. cert-text of cathouse is "-[d1][ast]T[d1][d1][ast]U[d1][ast]E". rect-text of cathouse is "H[d1][d1][d1][d1][d1][d1][ast]E".

understand "cat/ house/ perfume" and "cat/ house/" as CATHOUSE when player is in kitchen and cathouse is in kitchen.

CATHOUSE is in Kitchen.

description of the CATHOUSE is "It's yellow-gold, like most. The bottle seems to advertise a spicy scent too hot for most people's tastes.[paragraph break]By the way, you were never sure if it was one word or two, and what's more, the company who made it probably didn't care, either[one of]. There's something about how it'll free-m-up to love you, which you try to forget[or][stopping]."

section cult tee

the cult tee is a pregredient in Kitchen. rgtext of cult tee is "[rcn][rc][rc][gc][rc][rc][gc]". lgth of cult tee is 7. gpos of cult tee is 3. rpos of cult tee is 6. cert-text of cult tee is "-[d1][d1][ast]T[d1][d1][ast]E". rect-text of cult tee is "L[d1][d1][d1][d1][d1][ast]E".

check wearing cult tee: say "You appreciate the drawing, but [if r2 is prefigured]it's not warm enough to get you to the moor, and [end if]you never were one for bold t-shirts anyway." instead;

understand "shirt" as cult tee.

description of cult tee is "You remember seeing someone wearing it. It's got a picture of a carrot, a cucumber, an olive and several different colored onions all in a bowl. They're drumming their fingers, waiting for someone or something. You remember this t-shirt being briefly in fashion back home, wherever that is."

section skate

the skate is a pregredient in Kitchen. rgtext of skate is "[gcn][rc][rc][rc][rc]". lgth of skate is 5. gpos of skate is 1. rpos of skate is 2. cert-text of skate is "S[d1][d1][d1][d1]". rect-text of skate is "S[d1][d1][d1][ast]K".

check wearing skate: say "You can't skate--well, you definitely can't skate with only one skate." instead;

description of the skate is "Ice, not roller. [one of]Apparently, it's Kate's. The blade is sharp enough to cut meat, but unfortunately, there's not any around here. Yet. Plus, the blade's probably not clean enough. You don't see any sink around. Never mind[or]It's a meaty question, what an ice skate's doing somewhere this warm[stopping]."

section spearman

the cheesy spearman is a male pregredient in Kitchen. "A cheesy spearman is here. Well, he's [i]posed[r] all cheesy.". rgtext of spearman is "[rcn][rc][rc][rc][rc][rc][gc][gc]". lgth of spearman is 8. gpos of spearman is 2. rpos of spearman is 8. cert-text of spearman is "-[d1][d1][d1][d1][d1][ast]A[ast]N". rect-text of spearman is "P[d1][d1][d1][d1][d1][d1][ast]N".

after doing something with the spearman:
	set the pronoun him to the spearman;
	continue the action;

understand "man" as spearman when spearman is fungible.

the spearman can be female or male. the spearman is male.

description of spearman is "[if player does not have spearman]Hmm. You could [b]TAKE[r] him. [end if]He's got a stupid smile and is giving a thumbs-up with his free hand. It's cheesy, not corny. You know the difference. But it is not a REAL cheese. Yet. You could probably [b]READ[r] him for clues, like his name and [if player carries spearman]what's on the base and [end if]so forth.".

check taking the spearman:
	say "As you pick up the spearman, you notice something on the bottom. Perhaps you could [b]READ[r] the spearman to see what it is. You get the feeling it can be changed to something, something you might not want in your hands, so you leave it where it is.";
	the rule succeeds;

understand "spear man" as spearman.

the spear is a boring thing. it is part of the spearman. description of spear is "The spear is about as tall as the spearman, but there's nothing special about it, other than it makes him a spearman.". spear is useless.

chapter ingredients

section tortilla

the tortilla is an ingredient. understand "taco" as tortilla.

to say tort-desc:
	say "tortilla";
	if tortilla is touchable:
		say " ([if ingredients-in-tort is 0]nothing on it[else if ingredients-in-tort is 1]too plain to eat[else if ingredients-in-tort is 2]edible looking, but could be better[else if ingredients-in-tort is 3]almost perfect[else]BUG[end if])";

does the player mean doing something with the tortilla: it is likely.

check putting something on the tortilla (this is the tortilla-onto rule):
	if noun is an ingredient:
		tort-add noun;
		the rule succeeds;

ingredients-in-tort is a number that varies. ingredients-in-tort is 0.

the printed name of the tortilla is "[tort-desc]".

to tort-add (x - a thing):
	if x is part of the tortilla:
		say "You've already put [the x] in the tortilla.";
		the rule succeeds;
	now x is part of the tortilla;
	increment ingredients-in-tort;
	if x is HOTSAUCE:
		say "You open the packet and squirt the sauce in the tortilla. You place the empty packet in a pocket, where you forget about it. [run paragraph on]";
		now printed name of HOTSAUCE is "covering of hot sauce";
	say "[one of]Hm, a good start. The tortilla's not plain any more.[or]The tortilla's coming together.[or]The tortilla's almost there![or]You got it[now-taco]! A full-blown taco! You can't help but pick it up and admire it! It's too good to eat. You almost wish you could wear it.[stopping]";
	set the pronoun it to the tortilla;
	if ingredients-in-tort is 4:
		set the pronoun it to the taco;
		now player has the taco.

to say now-taco:
	moot tortilla;
	now taco is in Kitchen;
	reg-inc;

description of tortilla is "Flat circular dough[if number of things that are part of the tortilla > 0]. It's got [a list of things that are part of the tortilla] on it[else]. Plain[end if].".

understand "tortilla" as taco.

check putting something on an ingredient (this is the funnel kitchen activity to ingredients rule):
	ignore the can't put what's not held rule;
	if noun is second noun, say "Less playing with food, more wordplay." instead;
	if noun is part of the tortilla and second noun is not part of the tortilla:
		say "(Switching the two)";
		try putting second noun on noun instead;
	if noun is saltine, say "Ugh. The saltine is for clues, not cuisine." instead;
	if noun is not an ingredient, say "That wouldn't taste very good." instead;
	if noun is tortilla and second noun is pregredient, try putting second noun on noun instead;
	if noun is tortilla and second noun is ingredient:
		say "(I'm switching the [noun] and [second noun])";
		try putting second noun on noun instead;
	if second noun is part of the tortilla, try putting noun on tortilla instead;
	if second noun is not tortilla, say "Neither of those is the best ingredient to make a base for a dish--maybe something more bready. But they could be combined eventually." instead;

check taking an ingredient: if noun is part of the tortilla, say "Don't futz with your culinary creation." instead;

section HOTSAUCE

the large packet of HOTSAUCE is an ingredient. description of HOTSAUCE is "[if hotsauce is part of tortilla]It certainly gives the taco color[else]It's some disturbing mix of reddish shades of orange-red. The ungrammatical HOTSAUCE on the packet blocks out any list of ingredients, which is probably for the best[end if]." [bold-ok]

check opening HOTSAUCE:
	if tortilla is touchable, try inserting the HOTSAUCE into the tortilla instead;
	say "You don't seem to have anything to put the hot sauce in. Or on." instead;

understand "covering" as HOTSAUCE when HOTSAUCE is part of tortilla.

check opening large packet: try attacking large packet instead;

understand "hot sauce" and "hot/sauce" as HOTSAUCE when player has HOTSAUCE or HOTSAUCE is fungible.

section lettuce

the head of lettuce is an ingredient.

description of the lettuce is "It's green and crispy and healthy and without flavor on its own."

section steak

some cut up steak is an ingredient. printed name of steak is "cut-up steak". description of steak is "Pre-cooked, and you can still smell the sizzle if you reach down to smell it. You think."

section parmesan

the pile of grated Parmesan cheese is an ingredient. understand "cheese" as Parmesan when Parmesan is fungible.

description of Parmesan is "Already grated, for which you are grateful. (Sorry if the description grates.)"

chapter taco and coat

section taco

the taco is a thing. rgtext of taco is "[rcn][rc][rc][rc]". lgth of taco is 4. gpos of taco is 3. rpos of taco is 1. cert-text of taco is "-[d1][d1][d1]". rect-text of taco is "C[d1][d1][ast]T".

check wearing taco: say "The taco is not cereal, and your name is (probably) not Farley Drexel Hatcher. Still, it could become something wearable." instead;

description of taco is "Man, it looks great. It's got meat, lettuce, cheese, sauce and a soft tortilla shell--but you know that, since you made it yourself!"

section coat

the coat is a wearable thing.

does the player mean wearing the coat: it is likely.

report wearing the coat:
	say "It's nice and warm. Not enough to make you sweat. But handy if you [if r2 is prefigured]try to poke around the moor[else]find a way outside of here. There must be one[end if].";
	the rule succeeds;

description of coat is "It's warm and fuzzy and shapeless and as multi-colored as the taco you made it from[if player is in kitchen].[paragraph break]So warm, you're reminded of the phrase 'If you can't take the head, get out of the kitchen.' You can take the heat, but you've probably done everything strictly necessary here[end if]."

check taking off the coat:
	if player is in moor, say "Too cold." instead;
	if moor is visited, say "Nah, you may need to go there." instead;
	say "It's not making you sweaty. Maybe there'll be a place you need it[if roomroom is unvisited or Trellis is unvisited]. You haven't been everywhere here, yet[else if r2 is prefigured]. Like the moor that was too cold before[else if moor is unvisited]. Maybe there's a way out you haven't found--a simple one[end if]." instead;

chapter red inn

the red inn is scenery in kitchen. "It's for rendin['] dinner[if taco is not off-stage], or it was, until you made that taco[end if]."

chapter fridge

the griefd fridge is scenery in kitchen. understand "refrigerator" as fridge. understand "grief fridge" and "grief" as griefd fridge. printed name is "[if fridge-score < 2]grief'd fridge[else]fig'red fridge[end if]".

understand "fig/red/figred fridge" and "fig red fridge" as fridge when fridge-score is 2.

the griefd fridge is an opaque openable closed container.

check inserting into fridge: say "You don't need to store anything for later. The fridge is, well, optional." instead;

check examining fridge: ignore examine containers rule.

to decide which number is fridge-score:
	let temp be 0;
	if grist is moot, increment temp;
	if cake pan is moot, increment temp;
	decide on temp;

description of griefd fridge is "While its brand is (of course) DEF-RIG, it's not exactly top-of-the-line, but it seems to work. A manila animal forms a lamina over it[if grist is not off-stage]. [whats-in-fridge], too, you remember[else]. It doesn't appear locked or anything. It may or may not be useful, but it looks easy to [b]OPEN[r][end if][one of]. Written in dust (which you rub off and copy to your notepad) you see [second custom style]NO, TOO STUPID A FAD. I PUT SOOT ON WARTS[r][or][stopping]."

after examining griefd fridge:
	pad-rec "warts";
	continue the action;

check closing griefd fridge: say "It already is[if grist is not off-stage]You saw what was in there when you first opened it[else], but maybe opening it will reveal something[end if]." instead;

check opening griefd fridge:
	if grist is off-stage:
		say "In the fridge, you see some grist and a cake pan. Hm, mostly instant-meal stuff, nothing nourishing enough for an adventurer, but maybe good for practice.";
		move grist to kitchen;
		move cake pan to kitchen;
	else:
		say "You reopen and peer on. [whats-in-fridge].";
	the rule succeeds;

to say whats-in-fridge:
	if fridge-score is 2:
		say "Nothing's left";
	else if fridge-score is 1:
		say "Only [if grist is in kitchen]the grist[else]the cake pan[end if] remains";
	else:
		say "The grist and cake pan are still";
	say " in the fridge";

to say guards-say-hi: say ". [if fridge-score is 0]They smile and apologize awkwardly, and you say no problem[else if fridge-score is 1]They thank you for leaving enough food to tide them over but not too much. They needed room for a feast[else]They thank you for leaving them so much food even after they--well. They were too lazy when they woke up[end if]";

section manila animal

the manila animal is an amusing boring thing. it is part of the griefd fridge. understand "lamina" as manila animal. bore-text of manila animal is "You've torn up a [if stos-down > 1]couple stores[else]store[end if] already, but you draw the line at aesthetically altering a fridge. Someone surely put love into decorating it!". description of manila animal is "Written on it: '? No, too stupid a fad. I put soot on warts.' But you've seen no soot, and you're not sure what should be behind the question mark."

section grist and grits

the grist is an LLPish thing. it is singular-named. lgth of grist is 5. gpos of grist is 1. rpos of grist is 4. rgtext of grist is "[gcn][gc][gc][rc][rc]". cert-text of grist is "G[ast]R[ast]I[d1][d1]". rect-text of grist is "G[d1][d1][d1][ast]S". indefinite article of grist is "some".

description of grist is "It's a heapin['] helpin['] of the stuff, haphazardly lumped at the bottom of the fridge."

understand "heapin helpin" and "heapin/helpin" as grist when grist is fungible and fridge is open.
understand "heapin helpin" and "heapin/helpin" as grits when grits are fungible and fridge is open.

the grits are a plural-named thing.

rule for deciding whether all includes a thing in fridge: it does not.

rule for deciding whether all includes grist: it does not.
rule for deciding whether all includes grits: it does not.
rule for deciding whether all includes cake pan: it does not.
rule for deciding whether all includes pancake: it does not.

description of grits is "They look more edible than the grist, but you're not THAT hungry right now."

section cake pan and pancake

a cake pan is an LLPish thing. lgth of cake pan is 7. gpos of cake pan is 5. rpos of cake pan is 4. rgtext of cake pan is "[rcn][gc][rc][rc][rc][rc][rc]". cert-text of cake pan is "-[ast]A[d1][d1][d1][d1][d1]". rect-text of cake pan is "P[d1][d1][d1][d1][d1][ast]E".

understand "cakepan" as cake pan.

description of cake pan is "It's empty, and you wonder what it's doing in the fridge."

the pancake is a thing.

description of pancake is "It's too plain to eat. And probably too cold."

book ROOM / roomroom

roomroom is a privately-named room in Sortie. the printed name of roomroom is "Room". "[if moor is unvisited][tagit][else]Zapping yourself to the moor hasn't made this room any more exciting[end if].[paragraph break]A passage leads west back to the Trap Part, and another leads north."

understand "room1" and "roomroom" as roomroom when debug-state is true.

to say tagit:
	say "This room is a little too undescribed. It must be more than it seems. It feels like the nick, in a way, but of course you can walk away";
	if kitchen is visited:
		say ". It's almost as nondescript as the nick, but at least you're not trapped";
	if player has gadget:
		say "[one of]. Your gadget seems to vibrate a bit[or][cycling]";

roomroom is east of Trap Part.

chapter sack

the sack is a transparent reversible container. "A sack is here. It's made of some rough material. Call it burlap. That's a safe one."

the sack is flipped-yet.

rgtext of sack is "[rcn][gc][rc][gc]". lgth of sack is 4. gpos of sack is 3. rpos of sack is 4. cert-text of sack is "-[ast]A[d1][ast]K". rect-text of sack is "C[d1][d1][ast]K".

description of the sack is "Sturdy burlap, reading 'a stick it sack'. [if number of things in sack is 0]It's empty[else]In it you see [list of things in sack][end if]."

chapter cask

the cask is a transparent reversible container in roomroom. "You see a plain cask here[if cask is closed]--it seems unbroached[else]--someone has cut a small hole in the top[end if]."

after printing the locale description for roomroom:
	if cask is in roomroom:
		set the pronoun it to cask;
	if hoses are in roomroom:
		set the pronoun them to hoses;
	continue the action;

the cask is closed. rgtext of cask is "[rcn][gc][rc][gc]". lgth of cask is 4. gpos of cask is 3. rpos of cask is 4. cert-text of cask is "-[ast]A[d1][ast]K". rect-text of cask is "S[d1][d1][ast]K".

description of the cask is "It's plain and cedar[if cask is open], with a small hole on top[else], and it seems airtight[end if]. It's engraved WERE-EWER[in-cask]."

to say in-cask:
	if cask is open:
		say "[if number of things in cask is 0]. It's empty[else]. In it you see [list of things in cask][end if]";

check taking cask:
	if cask is closed, say "It is too heavy right now. There seems to be a liquid in there." instead;

check opening cask:
	if cask is closed, say "There's no obvious way to open it, or weapon to open it with." instead;
	say "It already is." instead;

section hole in cask

the description of the hole is "Wide enough to [b]FILL[r] the cask, but not to put anything in."

chapter rules for sack/cask and carrying stuff

check taking the straw:
	if player has sack:
		if straw is in sack, say "Better to keep it in the sack." instead;
		say "You lump the straw in the sack.";
		now straw is in the sack instead;
	else:
		say "You try to pick up the straw, and you get about half of it in your arms, and then ... [paragraph break] ... it slips out of your arms and falls to the floor. You'll probably need a container to keep it from spilling. Nothing too fancy." instead;

[rule for implicitly taking the straw:
	say "(gathering it up)";

rule for implicitly taking the hay: say "(gathering it up)";]

the straw-hay-oils drop rule is listed before the can't drop what's not held rule in the check dropping rules.

check dropping (this is the straw-hay-oils drop rule):
	if noun is straw or noun is hay:
		if noun is in sack:
			say "No use making a mess. It's easier to lug around that way.";
	if noun is oils and noun is in cask:
		say "(assuming you meant [b]POUR OILS[r])[paragraph break]";
		try pouring oils instead;

check taking the silo: say "Counterproductive and, uh, very unlikely." instead;

check taking the soil:
	if soil is in moor, say "It belongs here[if silo is in moor], as a foundation for the silo[end if]." instead;
	say "It'd be a mess to carry." instead;

chapter hoses-shoes

a pair of hoses are a plural-named thing. "[one of]A familiar pair of hoses lies by the cask. The guards must have forgotten them while, err, celebrating[or]That pair of hoses is still lying around[stopping].". rgtext of hoses is "[rcn][rc][rc][gc][gc]". gpos of hoses is 3. rpos of hoses is 5. lgth of hoses is 5. cert-text of hoses is "-[d1][d1][ast]E[ast]S". rect-text of hoses is "S[d1][d1][d1][ast]S".

check taking hoses: say "They're too unwieldy, but maybe if they transformed into something else..." instead;

after doing something with hoses:
	set the pronoun it to hoses;
	continue the action;

the shoes are a plural-named boring thing. bore-text is "You're wearing the shoes. They fit fine, like you don't notice. No need to adjust them.". description of shoes is "Since thee shoes are mooted after you changed them from the hoses, you shouldn't see this.".

understand "hose" as hoses.

description of hoses is "Thick, probably better for keeping water out than storing it."

section r2 / private moor jump scenery

r2 is a privately-named proper-named backdrop. drop-region of r2 is Sortie. description of r2 is "[bug-report]". r2 is useless. rgtext of r2 is "[rc][gc][gc][rc]". lgth of r2 is 4. gpos of r2 is 4. rpos of r2 is 1. the cert-text of r2 is "-[ast]O[ast]O[d1]". the rect-text of r2 is "M[d1][d1][ast]R".

printed name of r2 is "the room". r2 is in roomroom.

chapter Stiller Trellis / Crashing Archings

Stiller Trellis is east of Kitchen and north of roomroom. printed name of Stiller Trellis is "[if caskfillings is 2]Crashing Archings[else]Stiller Trellis[end if]". "[if trel-priv is moot]The crashing archings cover where the trellis was, blocking the way you made to the east. [else if Sacred Cedars are not visited]This room feels close to something important. [end if][the-trellis]. You can [unless caskfillings is 2 or scraped wall is hayfilled]also [end if]go west or south.". Trellis is in Sortie. roomnud of Stiller Trellis is table of Stiller Trellis nudges.

chapter trellis (scenery)

trel-priv is privately-named scenery in Stiller Trellis. printed name of trel-priv is "the trellis". understand "trellis" as trel-priv.

understand "decoration" as trel-priv.

description of trel-priv is "[if Sacred Cedars is visited]The trellis feels appropriate to guard or indicate the room to the east, now you've been there[else if scraped wall is touchable]It arches over the scraped bit of wall, as if the wall wasn't supposed to be there. You could picture a passage through it, somehow[else]You could just walk under it to the east, now[end if]."

to say the-trellis:
	if Sacred Cedars is visited:
		say "The trellis feels appropriate to guard or indicate the room to the east, now you've been there";
	else:
		say "The trellis to the east is the only decoration you've seen in this area[if scraped wall is not hayfilled], and the wall below it seems scraped and beaten up a bit[end if]"

check going east in Stiller Trellis:
	if scraped wall is touchable, say "You're going to have to do something about that wall, first[if scraped wall is hayfilled]. You already have, but just one more thing[end if]." instead;
	if caskfillings is 2, say "The rubble from the archings is too high and too solid." instead;

chapter haywall

understand "haywall" and "hay wall" as scraped wall when scraped wall is hayfilled.

the scraped wall is scenery in Stiller Trellis. the scraped wall can be hayfilled. the scraped wall is not hayfilled.

the rgtext of scraped wall is "[gc][gc][rc][rc][rc][rc][rc]". the lgth of scraped wall is 7. gpos of scraped wall is 1. rpos of scraped wall is 3. cert-text of scraped wall is "H[ast]A[d1][d1][d1][d1][d1]". rect-text of scraped wall is "H[d1][d1][d1][d1][d1][ast]Y".

check climbing scraped wall: say "No good handholds, and it goes up too high anyway." instead;

check entering scraped wall: say "The wall seems out of place, so there may be something behind it, but you need to figure how to open a passage." instead;

check climbing trel-priv: say "No good handholds, and it goes up too high anyway." instead;

check inserting into scraped wall: if noun is not straw and noun is not hay, say "That doesn't seem to fit. You need something stuffing-like." instead;

check throwing cask at scraped wall: say "The cask bounces off harmlessly, no worse for the wear. You take it back." instead;

chapter crashing archings (after got all the oils you need)

the crashing archings are plural-named scenery. "The archings blocked the passage to the east once they crashed down. You burble like a lubber at the rubble that now blocks the way east."

understand "rubble" as crashing archings.

check climbing archings: say "You can't get through. The rubble has hardened." instead;

check taking archings: say "The rubble seems to have dried and stuck like lava." instead;

description of scraped wall is "It's scraped away, but not enough to bust through[if scraped is hayfilled]. In fact, you stuffed hay where the wall was sort of peeled away[else]. You see HALLWAY UNDER (UN-)UN-CONSTRUCTION scrawled on it[end if].". [bold-ok]

section hallwaying

the hallway is boring scenery. "The hallway isn't much to look at, but whatever's to the east might be.". bore-text is "Now that you made the hallway, you can't do much with it besides walk east through it.". bore-check is bore-hallway rule.

this is the bore-hallway rule:
	if current action is entering, try going east instead;

book moor

Moor is a room in Sortie. description of moor is "You're on a moor. The rime-mire all around leaves you feeling a bit trapped, even though you know you could go back the way you came[if anapest is in moor][one of][or]. You hear bad poetry[stopping][end if].". roomnud of moor is table of moor nudges.

exits-text of Moor is "You don't need to walk anywhere else. You can only go back to the [b]ROOM[r]."

after printing the locale description for moor when moor is unvisited:
	move r2 backdrop to all moory rooms;
	continue the action;

every turn when player is in moor and pat is in moor: say "The poem [one of]establishes its singsong rhythm early[or][drones][stopping].".

after choosing notable locale objects when player is in moor:
	if roadblock is in moor, set the locale priority of the roadblock to 9;
	if black door is in moor, set the locale priority of the black door to 9;
	if Pat is in moor, set the locale priority of Woeful Pat to 8;

chapter rime mire

the rime mire is bounding scenery in moor. "The moor you're on has stable enough footing, but the rime mire seems much more treacherous."

understand "rime-mire" as rime mire.

chapter m2 (teleport scenery)

m2 is privately-named proper-named abstract boring scenery in moor. printed name of m2 is "the moor". bore-text is "The moor--well, you can mess with parts of it, or you can teleport back to the room, but you can't destroy it all. It surrounds you. It's too big.".

rgtext of m2 is "[rc][gc][gc][rc]". lgth of m2 is 4. gpos of m2 is 4. rpos of m2 is 1. cert-text of m2 is "-[ast]O[ast]O[d1]". rect-text of m2 is "R[d1][d1][ast]M".

reset-already is a truth state that varies.

to say reset-goof:
	if steer button is touchable:
		say "You don't need to reset the steer button[if trees-is-pushed is true] like you did the trees button[end if]. It's what it's supposed to be";
	else if reset-already is false:
		say "Unfortunately, it's not quite as easy as just pushing a reset button[if trees-is-pushed is true], which only worked to undo the trees[end if]. But rearranging it? I hope that's not too bad";
		now reset-already is true;
	else:
		say "Resetting twice won't get you anywhere. You need a new direction to change the TREES"

chapter woeful pat

Woeful Pat is an auxiliary person in the moor. initial appearance of Woeful Pat is "Woeful Pat, the awful poet, [one of]sees he has an audience and administers a dose of his odes. It'd be almost enough to make you reverse back to the room immediately[or]is well into a ballad. It's all bad[stopping]."

rgtext of Woeful Pat is "[rcn][rc][rc][rc][rc][rc][gc]". lgth of Woeful Pat is 7. gpos of Woeful Pat is 5. rpos of Woeful Pat is 7. cert-text of Woeful Pat is "-[d1][d1][d1][d1][d1][ast]T". rect-text of Woeful Pat is "P[d1][d1][d1][d1][d1][ast]T".

understand "awful poet" and "awful" and "poet" as woeful pat.

understand "sane" and "sane pat" as woeful pat when pat-flattered is true.

to say pat-wants-quiet: say "He holds up his hand for silence. He is too busy reciting his poem. Maybe you have to ask about the right things, like the poem's [b]RHYTHM[r] or [b]METER[r]. Or, well, him[if anapest-clued is false]. Or maybe its meter[end if]".

description of Woeful Pat is "His clothes are dark and strategically scuffed. Good thing chain wallets and other ugly stuff haven't made it here yet. But looks aren't really important. It's that poetry you find awful that needs to be changed, somehow."

pat-flattered is a truth state that varies.

to say flatter-pat: now pat-flattered is true;

section dark clothes

Woeful Pat wears the dark clothes. the dark clothes are plural-named.

description of dark clothes is "All dark clothes start to look the same after a while."

the dark clothes are amusing.

check taking dark clothes: say "A bad idea on so many levels." instead;

pat-index is a number that varies.

anapest-clued is a truth state that varies. anapest-clued is false.

to say drones: say "drones on[one of], poor and laboring--good qualities in a person but not a poem[or], and Pat gestures with a hand to the ear and nod of his head to make sure you're listening, not breaking his meter[or][cycling]. Da da DA, da da DA, da da DA[one of][or][if anapest-clued is true]. You'd recognize the rhythm if you studied harder in English class[else]. That anapest is getting annoying, and you'd like to get rid of it, somehow[end if][or][ifnv][cycling]".

to say ifnv:
	if player does not have expo flier:
		say ". Pat pauses for a minute, and involuntarily nod your head in gratitude. You don't notice when he shoves a flier into your hand. 'I will be performing minor works soon. A poetry appreciator like you is welcome to attend.' Thankfully, there's no sample on the flier you have";
		now the player has the expo flier;

section pat's expo flier

the expo flier is a thing. description of expo flier is "It's two-sided. One says Stick Figure Connoisseur Expo and Open Poetry Session at [one of][first custom style]ST. PAEAN[r] the so-sinful-(s)he's-holy this Yorpday[or][first custom style]SANE TAP[r] pub and grill next Waldday[cycling]![paragraph break]Well, you know where you won't be." [bold-ok]

poetry-listening is a truth state that varies. poetry-listening is usually false.

to say anapest-clue:
	say "[one of][if anapest-clued is false]'I noticed you nodding your head to the beat. You probably don't even know it's called [b]ANAPEST[r]. But the proper meter of my poem is but the surface of its multifaceted splendor!'[else]'Ah, an appreciator of fine [b]ANAPEST[r]. I will waste little time discussing its details, since you already seem to know them.'[end if][line break]Before you realize he'd given you a break from his poetry, he starts up again. He didn't even tell you the poem's name.[or]He explains that this will not be as great as his next, [first custom style]TAN APSE[r]. You see red at the thought of a sequel.[or]Red-faced, he derides a fellow poet, [first custom style]Nate. SAP![r][or]'[first custom style]Spent! Aa![run paragraph on][r]' he cries, turning red, brushing you away, but not really[one of][or]. That's all you will get from him[stopping].[stopping]";
	now anapest-clued is true;

check listening to anapest:
	if anapest-clued is false, say "[anapest-clue]" instead;
	say "[one of]He at least has the meter--what was it again, [b]ANAPEST[r]?--right. 'End of canto,' he says.[or]'Are you reflecting on the inner meaning? Or are you just amazed I have gotten the anapest right in every single line? Even--pff--mathy types who can't count meter right are amazed, missing the more far-arcing reaches of my wordsmithing.'[stopping]" instead;

chapter anapest

the anapest is boring scenery in moor. understand "anapests" as anapest.

understand "poem/poetry" as anapest when anapest is fungible.

rgtext of anapest is "[rcn][rc][gc][rc][rc][rc][gc]". lgth of anapest is 7. gpos of anapest is 4. rpos of anapest is 7. cert-text of anapest is "-[d1][ast]A[d1][d1][d1][ast]T". rect-text of anapest is "P[d1][d1][d1][d1][d1][ast]T". bore-text is "The beat is drilled in your head: da da DA da da DA da da DA (repeated. I'll spare you the words, but...)". description of anapest is "You can't help NOT paying attention to the anapest.". bore-check is bore-anapest rule.

this is the bore-anapest rule:
	if the current action is objasking generically, continue the action;
	if the current action is listening, continue the action;

chapter peasant

the peasant is a man. "A peasant is here[if peasant has hay], carrying some hay over his shoulder[end if]."

before doing something with the hay when peasant has hay:
	if the current action is objasking generically or the current action is objasking about or current action is scaning or current action is examining or current action is xmxing, continue the action;
	say "The hay is the peasant's, and he is bigger than you. But maybe you can give him something for it, if you want it[one of]. You notice him occasionally looking ruefully at it[or][cycling]." instead;

description of peasant is "He can't help glancing at the hay he is carrying, frowning a bit."

check giving sack to peasant: say "No, wait, you might still need that, after. But you could maybe give him something inside[if number of things in sack is 0], once you have something there[end if]." instead;

check giving cask to peasant: say "No, wait, you might need that. But you could maybe give him something inside." instead;

before showing to peasant:
	ignore the can't show what you haven't got rule;
	try giving the noun to the peasant instead;

before giving to peasant:
	if noun is sack and straw is in sack:
		say "(I'm assuming you meant the straw in the sack)";
		try giving the straw to the peasant instead;
	if noun is hay, say "He already has it." instead;
	say "The peasant probably doesn't want any adventuring goodies. Maybe something more practical for him?" instead;

before giving straw to peasant (this is the straw-peasant rule):
	ignore the can't give what you haven't got rule;
	say "'Oh, thank you! Mean Old Mondale-Doleman stuck me with this hay when I needed much stronger material to re-patch my house. He pretended not to know the difference. But he did once!'[paragraph break]'Here's a little something I wrote. [i]He[r] said even an economist wouldn't put emoticons in a poem.'[paragraph break]He hands you a paper and heads off. You're sick of poetry, but with the hay weighing you down, you'll never catch the peasant.";
	now player has the poem;
	reg-inc;
	moot peasant;
	moot straw;
	now hay is in sack instead;

chapter poem

a poem is a thing. lgth of poem is 5. gpos of poem is 1. rpos of poem is 2. rgtext of poem is "[gcn][rc][rc][rc][rc]". cert-text of poem is "P[d1][d1][d1][d1]". rect-text of poem is "P[d1][d1][d1][ast]L".

understand "poetry" as poem when poem is fungible.

after printing the name of the poem while taking inventory:
	if smilies are part of the poem, say " (improperly punctuated)";
	continue the action;

does the player mean folding the poem: it is likely.
does the player mean doing something with the tin foil info lit: it is very unlikely.

does the player mean doing something with prep paper when the poem is touchable: it is unlikely.

understand "limerick" as poem when poem is not folded.

understand "paper" as poem when poem is fungible.

description of poem is "[i]I'm just a guy who loves his work[smy][line break]Not like that poet, he's a jerk[smy][line break]He says he rhymes neater[smy][line break]And rips on my meter[smy][line break]I'd like to punch him in his smirk[smy][paragraph break][if missile is off-stage]Whoah, lots of smilies, there. They'd drive a grammar pedant ballistic[else]The limerick doesn't make you want to lick the mire like Woeful Pat's stuff[end if]. The paper seems creased on a few diagonals."

check examining poem:
	if poem is folded, say "It's a paper plane now, devoid of evidence anyone ever scrawled poetry on it." instead;

the poem can be folded. poem is not folded.

understand "pome" as poem when debug-state is true.

the creases are part of the poem. understand "diagonals" as creases.

description of creases is "[one of]One down the middle and two diagonally up from its base--two parallel to the middle crease bisect the diagonals.[paragraph break]Oh, forget it, let's try the non-technical explanation. From what you remember from being ten, it'll fold into a plane. Maybe one that can't fly very far, but a plane.[or]Wow! The peasant's poem is multifaceted! It could be a plane if you fold it, too![stopping]"

check throwing poem at when poem is folded: say "[one of]You make some feeoow noises as it flies, then some PFF BMM noises as you pretend it drops a bomb. It's fun, but it'll never cause any actual damage[or]You play at air-wars some more[stopping]. Wouldn't it be neat if you could drop bombs, and it'd make people nicer?" instead;

understand "folded/ paper/ plane/" as poem when poem is folded.

tried-smilies is a truth state that varies. tried-smilies is false.

does the player mean folding the poem: it is very likely.

does the player mean folding the prep paper: it is very unlikely.

carry out folding:
	if noun is prep paper, say "No way! That's got valuable information." instead;
	if noun is maps, say "They aren't big, unwieldy maps. They're surprisingly easy to read." instead;
	if noun is tin foil info lit:
		if player is in Trips Strip:
			say "You find a random trash can behind a random store and drop the tinfoil info-lit in.";
			moot tin foil info lit;
			the rule succeeds;
		say "It probably deserves to be crumpled." instead;
	if noun is shades, say "You try to execute a def move with the shades but fail." instead;
	if noun is not poem, say "That might be fun, but it won't do much." instead;
	if smilies are part of the poem:
		now tried-smilies is true;
		say "You're about to fold the poem up, but those smilies launch into a surprising display of emotion. It's an impressive passive resistance--they do it all without any violence. Maybe they can do more than just be part of a poem." instead;
	if poem is folded, say "It already is." instead;
	now noun is folded;
	say "You fold the paper, and it looks sort of like a paper plane.";
	now printed name of poem is "folded paper plane";
	moot creases;
	the rule succeeds;

understand "folded paper plane" as poem when poem is folded.

section smilies

the smilies are part of poem. smilies are plural-named.

description of smilies is "On reflection, the smilies are the centerpiece of the poem. They're not purely happy, but not sarcastic or violent, either. They've had enough and are willing to launch, or be launched, into some great cause, exploding in the face of elitism and excess.". lgth of smilies is 7. gpos of smilies is 2. rpos of smilies is 6. rgtext of smilies is "[rcn][rc][rc][rc][gc][rc][rc]". cert-text of smilies is "-[d1][d1][d1][ast]I[d1][d1]". rect-text of smilies is "M[d1][d1][d1][d1][d1][ast]E".

check taking smilies: say "You can't just pull them off the page." instead;

to say smy:
	if missile is off-stage:
		say " [if sr-acc is true]SMILIES[else]:) :)[end if]";

section missile

the missile is a thing. "A rather soft and cheery looking missile lies here."

the missile is pushable between rooms.

check taking the missile: say "Too heavy. Maybe you can push it, since it's cylindrical, or [b]PUT[r] it in or on something over a short distance." instead;

description of missile is "It's covered with smiley faces and surprisingly nerfy to the touch. You haven't started glowing mysteriously when you're around it (well, a little, inside,) and it has the words SAD MEGA-DAMAGES crossed out, so maybe it isn't all that violent or deadly[one of]. Overall, the warhead inspires 'aw, rad, eh?' more than hard awe[or]You note the missile was paid for by a bake sale, so it really totally probably can't be harmful[stopping]." [bold-ok]

check shooting the missile:
	if silo is not touchable, say "Not on your own you won't shoot the missile." instead;
	if the missile is not in the silo, say "You're not strong enough to launch it by yourself, but there's a handy silo nearby you can put it in." instead;
	if missile is in silo:
		if player has panel, say "There are no controls attached to the silo at the moment. You happen to have some handy, though." instead;
		if panel is not part of silo, say "The missile's in the silo, but there's no button to push to launch it. Or thing that has lots of buttons to push. " instead;
		say "Maybe you should explicitly try a button and see what happens." instead;

chapter panel

the panel is a thing.

to decide whether plane-or-panel:
	if player has poem and poem is folded, decide yes;
	if panel is enclosed by location of the player, decide yes;
	decide no;

the wires are part of the panel.

description of wires is "They're not, like, chewed or anything. They seem [if panel is part of silo]not to be breaking anything[else]in decent shape[end if]."

description of panel is "All sorts of capacitors and resistors and such. You [if panel is part of silo]thankfully didn't[else]probably don't[end if] have to understand that to know where to use it."

chapter hay

some hay is a singular-named thing. the peasant carries the hay.

indefinite article of some hay is "some".

description of hay is "It's hay, hey? Well...there's enough to stuff something pretty substantial."

check taking the hay:
	if peasant has the hay, say "That's the peasant's. Someone already ripped him off, giving it to him." instead;
	if hay is in sack, say "Keep it in the sack [']til you need it." instead;
	if player has sack:
		say "You can't take it all at once, but it can fit in the sack. So you put it there.";
		now hay is in sack;
		the rule succeeds;
	say "The hay is too unwieldy and heavy to carry around in your hands. Maybe something could hold it." instead;

check inserting hay into:
	if second noun is cask, say "The cask should probably store liquids instead." instead;
	if hay is part of the scraped wall, say "[if second noun is scraped wall]You already did that[else]That hay fits well. Now if you could just make the haywall into something you could walk through, that'd be awesome[end if]." instead;
	if second noun is sack:
		now hay is part of the sack;
		say "The hay fits in without much trouble." instead;
	if second noun is not scraped wall, say "You're not sure how the hay could augment anything, there." instead;
	now hay is part of the scraped wall;
	now scraped wall is hayfilled;
	reg-inc;
	set the pronoun it to scraped wall;
	say "Hey, well, the wall is made of hay now. Anyhow, I hope you know what you're doing." instead;

before taking hay:
	if hay is part of the scraped wall, say "Don't undo what you did. The haywall is close to what you want." instead;

chapter roadblock

the roadblock is a thing in the moor. "A roadblock that isn't actually blocking any roads lies here. Maybe it can become more useful.". rgtext of roadblock is "[rcn][rc][gc][rc][rc][rc][gc][rc][rc]". lgth of roadblock is 9. gpos of roadblock is 5. rpos of roadblock is 1. cert-text of roadblock is "-[d1][ast]A[d1][d1][d1][ast]O[d1][d1]". rect-text of roadblock is "B[d1][d1][d1][d1][d1][d1][d1][ast]R".

understand "block" as roadblock when roadblock is fungible.

description of roadblock is "It's about eight feet long and really dark (you pause and hope you don't need to learn COBOL) and dented about halfway through--well, four-ninths of the way from the right. You are utterly unsure what it could possibly be guarding, and you also notice bright red graffiti[one of].[paragraph break]You think back to how your nametag was creased, and how the roadblock probably doesn't change into anything too easy like a broad lock. The moor [if sack is not off-stage]and the sack [end if]already felt a bit easy[or][stopping]."

the bright red graffiti is a boring thing. it is part of the roadblock. bore-text is "You can really only examine or read it.".

description of bright red graffiti is "[first custom style]DOC OLBARK[r] has chosen to deface this roadblock, in bright red paint, no less."

section road

the road is useless boring scenery in moor. description of road is "[if roadblock is touchable]You'd expect to see a road, what with the roadblock, but you don't[else]Removing the roadblock did not make a road appear. But hey, free black door[end if].". bore-text is "Though there [if roadblock is in moor]is[else]was[end if] a roadblock, there is no road.". bore-check of road is bore-road rule.

this is the bore-road rule:
	if current action is climbing, say "There's no path behind it. Some roadblock, eh? It might be better reincarnated as something else." instead;
	if current action is taking, say "Moving it would be tougher than dock labor." instead;

chapter black door

a black door is a thing. "The black door you made lies here, without a structure to attach it to."

check closing black door: say "[if black door is part of the silo]It is[else]It's not attached to anything[end if]." instead;

description of black door is "It's a swinging door. No knob or bolt or anything."

black door is pushable between rooms.

check pushing black door to:
	if second noun is inside and silo is touchable, try pushing black door instead;
	say "Dragging the door around would be too exhausting. [if silo is touchable]Why not push the door inside the silo?[else]Maybe you can create a structure the door will fit into.[end if]" instead;

check opening black door: say "[if black door is part of the silo][one of]A quick peek inside, and you see enough machinery to know this is not a grain silo. You quickly close the door--the machinery may be beyond you, and you don't need to deal with it[or]You should probably work at the silo from the outside[stopping][else]Other doors in [this-game] may lead somewhere for no reason, but this doesn't[end if]." instead;

check taking the black door:
	say "[if black door is part of the silo]It's where it needs to be[else]It's too heavy to lug around for any amount of time, but maybe it can fit in somewhere if you push it, or put it on something[end if]." instead;

check taking the panel:	if panel is part of the silo, say "It's where it needs to be." instead;

check opening silo: if black door is part of the silo, try opening black door instead;

check entering black door: try opening black door instead;

chapter buttons

section hoots

the hoots button is a thing. description is "It's on the right, and it's labeled [b]HOOTS[r].".

lgth of hoots button is 5. gpos of hoots button is 5. rpos of hoots button is 4. cert-text of hoots button is "-[d1][ast]O[d1][d1]". rect-text of hoots button is "S[d1][d1][d1][ast]T". rgtext of hoots button is "[rcn][rc][gc][rc][rc]".

understand "right" and "right button" as hoots button when hoots button is fungible.

section shoot

the shoot button is a thing. description is "It's on the right, and it's labeled [b]SHOOT[r].".

understand "right" and "right button" as shoot button when shoot button is fungible.

check pushing hoots button: say "You hear loud hoots. You're not sure if people are laughing, or alerting you to the fact that this button doesn't do what it's supposed to, or if maybe it's some high-tech/magic war dance or even an air raid siren. Whatever it is, it's clear noise won't get the missile launched." instead;

check pushing shoot button:
	if missile-steered is false, say "[one of]You hear a loud siren! Unfortunately, the missile doesn't seem to be pointing anywhere besides straight up. Guess where it'll land?[or]The missile doesn't have a specific target. You can't just go chucking it anywhere.[stopping]" instead;
	say "A voice intones 'Chargin[']! Chargin[']! Chagrin-a-grinch!'[paragraph break]Grand finale! A flaring end?! Final danger? ... Landing fear![paragraph break]But a fine garland of light appears, instead. A loud voice echoes 'Mondale-Doleman! Lo, Amend!' You see Mondale-Doleman step out of ... a dolmen. Simple, heartfelt, plainly-worded concerns flooding explode across, and you run towards them, and somehow it takes no time at all to get to Mean Old Mondale-Doleman's castle.[paragraph break]Where he is beaming, no longer big, mean.[paragraph break]'O crater creator! That launch deserves A LUNCH! A do of FOOD!' he booms.";
	say "[wfak]'Had now!' And how![paragraph break]You learn he is, of course, Noble Ol['] Ben. But he feels he hasn't re-earned the title, yet, so he's all 'Me, sir? Miser!' (Yeh, ok, hokey.)[paragraph break]You try every tater treat and enjoy the flukiest lutefisk (fine dish! Finished!) ever. You even meet the guards who imprisoned you[guards-say-hi]. Hugs gush. After a thousand uh, not-sad, handouts (ah! Donuts!) and a fast, live festival ('My encore ceremony!') with an orchestra, a carthorse returns you to the Trips Strip.[paragraph break]Dreaming on the way back, you picture yourself saying 'SOOTH!' when asked if you'd solved the sortie in an alternate universe.";
	reg-inc;
	solve-region sortie instead;

section trees

the trees button is a thing. description is "It's on the left, and it's labeled [b]TREES[r]."

lgth of trees button is 5. gpos of trees button is 5. rpos of trees button is 2. rgtext of trees button is "[rcn][rc][gc][gc][rc]". cert-text of trees button is "-[d1][ast]E[ast]E[d1]". rect-text of trees button is "S[d1][d1][d1][ast]R".

understand "left" and "left button" as trees button when trees button is fungible.

check pushing trees button:
	now trees-is-pushed is true;
	say "Trees begin growing out of the side of the silo. The Trees button switches to a reset button which starts blinking violently. You push it before the trees crash down on you. They vanish, and it's a trees button again. Whew." instead;

section steer

the steer button is a thing. description is "It's on the left, and it's labeled [b]STEER[r]."

understand "left" and "left button" as steer button when steer button is fungible.

missile-steered is a truth state that varies. missile-steered is usually false.

trees-is-pushed is a truth state that varies. trees-is-pushed is false.

check pushing steer button:
	if missile is not in silo, say "Nothing happens. Presumably, the silo needs something to steer inside it." instead;
	if missile-steered is true:
		say "That'd be overkill. You imagine it's [if shoot button is touchable]the other[else]another[end if] one you need to push to launch.";
	else:
		now missile-steered is true;
		say "'AMUSING GUNS! AIM!' The silo makes some ominous VVTT-KLK-BRRW noises and tilts slightly in the direction of what you assume and hope is Mean Old Mondale-Doleman's palace."; [bold-ok]
	the rule succeeds;

chapter silo rules

the silo-put rule is listed before the can't put onto what's not a supporter rule in the check putting it on rules.

the silo-put rule is listed before the can't put what's not held rule in the check putting it on rules.

before tying to (this is the tying tautology rule) :
	if noun is second noun, say "[tau]" instead;

before inserting into (this is the insert tautology and already done rule) :
	if second noun contains noun, say "The [printed name of the second noun] already contain[unless second noun is plural-named]s[end if] [the noun]." instead;
	if second noun is doll house or second noun is attics, say "You'll have a great big residence at the end if you save Yorpwald. Trust me! No need to prettify the doll house." instead;
	if noun is second noun, say "[tau]" instead;

check tying it to (this is the silo tying rule):
	if noun is second noun, say "[tau]" instead;
	if noun is silo, try tying second noun to silo instead;
	if noun is panel:
		if second noun is silo or second noun is rectangle, try putting noun on silo instead;
	if noun is missile:
		if second noun is silo and black door is part of the silo:
			say "(You want to [b]PUT[r] the missile [b]IN[r], I think.)";
			try inserting noun into silo instead;
	if noun is black door or noun is missile, try putting noun on second noun instead;

check putting it on (this is the straw-hay put-on rule):
	if noun is straw or noun is hay, try inserting noun into second noun instead;

check putting it on (this is the silo-put rule):
	if second noun is sack or second noun is cask, try inserting noun into second noun instead;
	if noun is the missile, ignore the can't put what's not held rule;
	if second noun is the missile, say "The missile, being round, can't support things." instead;
	if noun is the panel and noun is part of the silo:
		ignore the can't put what's not held rule;
		say "The panel is where it needs to be." instead;
	if noun is the black door:
		ignore the can't put what's not held rule;
		if second noun is boundary, try putting black door on silo instead;
		if second noun is panel:
			say "Not on the panel, but next to it.";
			if panel is part of the silo, try putting black door on silo instead;
			say "[line break]The panel's not small, but it's not as big as the silo." instead;
		if second noun is not silo, say "The black door probably needs to fit on, or in, a big structure." instead;
	if second noun is rectangle:
		if noun is panel, try putting noun on silo instead;
		say "Not really the right size[if noun is not door] or shape[end if]." instead;
	if second noun is door and door is part of the silo:
		if noun is not door:
			say "Hm, not *on* the door, but maybe by it.";
			try putting noun on silo instead;
	if second noun is silo:
		ignore the can't put onto what's not a supporter rule;
		if noun is black door:
			if black door is part of the silo, say "The black door is already placed in the silo." instead;
			ignore the can't put what's not held rule;
			say "The door fits the dotted line in the silo perfectly, swinging slightly before sliding in place with a click.";
			moot dashed boundary;
			now black door is realized;
			now black door is part of the silo instead;
		if noun is panel:
			if panel is part of the silo, say "The panel is already placed in the silo." instead;
			now panel is part of the silo;
			moot dotted rectangle;
			say "The panel fits into that rectangle handily and even starts to glow. Two buttons appear on it--one says [b]HOOTS[r], the other [b]TREES[r]. 'Panel fits. Final step,' you muse.";
			now panel is realized;
			now the hoots button is part of the panel;
			now the trees button is part of the panel instead;
		if noun is missile:
			say "I assume you mean IN the silo..."; [bold-ok]
			try inserting missile into silo instead;
		say "That doesn't seem to fit anywhere on the silo." instead;
	if second noun is the straw or second noun is the hay, say "That'd crush [the second noun]." instead;
	if noun is the missile, say "You roll the missile around, but you can't find anywhere to put it." instead;

before doing something with the missile when the missile is touchable:
	if missile is in silo, say "It's where it needs to be. No need to worry about it." instead;

check inserting missile into silo:
	if black door is part of silo:
		say "You schlep the missile through the door. You hear some mechanics and whizzing. A luster-result rustle, if you will. Then 'SMILIES MISSILE DEALING-ALIGNED!'"; [bold-ok]
		set the pronoun it to silo;
		now missile is in silo instead;
	else:
		say "No way to put the missile in or on the silo--and nothing on the side to attach it to. If there were any way into the silo, you could put the missile in there." instead;

chapter post-first-oils stuff

section soil

the soil is scenery.

description of soil is "It's a rich foundation for [if silo is touchable]that silo you built[else]a big, big place, you're sure[end if]. Stronger and denser than the usual mush on this moor."

section silo

the silo is a transparent container. it is fixed in place. "That silo you poured from the cask of oils towers above you here[if black door is part of the silo]. You see the outline of the black door on it, but you probably don't want to go in[end if][if missile is in the silo]. You know the missile's in there, too[end if][if panel is part of the silo]. There's also a panel attached to the silo[end if]."

does the player mean shooting the missile when the missile is touchable: it is likely.

the dashed boundary is part of the silo. description of dashed boundary is "It seems to have writing, one letter per dash: PUT CORRECTLY COLORED DOOR ON SILO[if black door is not touchable]. You wonder what you could change into a door[else]. Hm, you doubt there's a red or blue door you have to find[end if]."

the dotted rectangle is part of the silo. description of dotted rectangle is "[if player has panel]Curiously, it's about the size of the panel[else]It's as if you need to put something on there, but you wonder what. It's about two feet square[end if]."

description of silo is "It's thirty feet tall and dark and forbidding, except for [if black door is part of silo]the door you slapped on it[else]a six-by-eight-foot dashed boundary that rises from the ground[end if] and [if panel is part of the silo]that panel you installed[else]a smaller dotted rectangle, chest-high, to the side[end if]."

check entering the silo: say "[if dashed is part of the silo]Bam! That outline almost looked like a door, but it wasn't. [door-clue][else]A quick peek in shows the silo's empty inside. You're not even sure if you could open the door from the inside, [if-missile][end if]." instead;

to say if-missile: say "[if missile is in silo]and the missile wouldn't make good company[else]but you could put something that belongs through the door[end if]".

to say door-clue: say "[if black door is touchable]But there's a door nearby[else]Maybe something can be changed into a door[end if]";

book Sacred Cedars

Sacred Cedars is east of Trellis. "You are in a room with thick entwined cedars as walls. On one, a spout pouts, waiting for a stoup. You can go back west to the Stiller Trellis. Oddly, you feel no reason to be scared. Serve verse veers around drawings on the walls.". Cedars is in Sortie. roomnud of Sacred Cedars is table of Sacred Cedars nudges.

check going to Sacred Cedars for the first time: say "You follow the haywrought throughway..."

after looking in Sacred Cedars:
	set the pronoun them to drawings;
	set the pronoun it to serve verse;
	continue the action;

to say what-to-ask-lois:
	if player is not in Sacred Cedars:
		say "Lois may not hear you out here[if caskfillings is 2]--she has left you to your own devices, but you must be close[else], and she may only give marginal hints in the cedars[end if]";
	else if player does not have cask:
		say "You suddenly feel discontent at your container of choice";
	else if caskfillings is 0:
		say "Lois will not pour the oils in the cask for you, but she is not stopping you. Lois helps those who help themselves";
	else if caskfillings is 1:
		say "Lois is silent. You must figure what to pour, where";
	else:
		say "You feel guilt at asking Lois for more"

check going west in Sacred Cedars: check-block-cedars;

to check-block-cedars:
	if caskfillings is 2:
		say "You hear a creaking [if player is in cedars]above[else]nearby[end if] as you exit. You see the trellis's archings crashing on you and quickly run from under them. The archings smash against each other, and their rubble blocks the hallway. You hear a voice. It must be Lois. 'WIN,' she whines.";
		block-cedars;

to block-cedars:
	now crashing archings are in Stiller Trellis;
	moot trel-priv;

chapter oils

the oils are a plural-named thing in Sacred Cedars.

lgth of oils is 4. gpos of oils is 4. rpos of oils is 3. cert-text of oils is "-[d1][d1][d1]". rect-text of oils is "S[d1][d1][ast]L". rgtext of oils is "[rcn][rc][rc][rc]".

the description of oils is "[if oils are not in cask]You try looking up the spout for a glimpse of the oils, but it doesn't work[else]You can't see through the cask--or its narrow hole very well--but you remember the oils being thick and somewhat golden. You trust they are sacred enough for your job, though[end if].".

understand "oil" as oils when oils are fungible.

check taking oils: say "They'd go through your fingers[if player has cask]. You can pour the oils, or fill the cask, instead[end if]." instead;

rule for printing a locale paragraph about the oils: now oils are mentioned.

section oils2 (dummy item)

the oils2 are a privately-named thing.

lgth of oils2 is 4. gpos of oils2 is 4. rpos of oils2 is 1. cert-text of oils2 is "-[ast]I[ast]L[d1]". rect-text of oils2 is "S[d1][d1][ast]O". rgtext of oils2 is "[rcn][gc][gc][rc]".

chapter lois

Lois is boring scenery in Sacred Cedars. description is "Lois is beyond mere trivial standard I7 descriptions. She helps those wise enough to know how to ask for help. A mere programmer cannot describe her.". bore-text is "Looking for evidence of Lois by trying all sorts of odd verbs suggests lack of faith.". bore-check of lois is bore-lois rule.

this is the bore-lois rule:
	if current action is attacking, say "No. Lois is here to help." instead;

chapter drawings

drawings are plural-named amusing scenery in Sacred Cedars.

description of drawings is "You see a vermian minerva, a cliche chalice, and a lanced candle. They're probably not for anything, but they're solid idols and add atmosphere nicely, even if you can't descry meaning from examining them individually."

check taking drawings: say "Even if they could be moved, that'd be sacrilege." instead;

understand "vermian minerva" and "vermian/minerva" as drawings.
understand "cliche chalice" and "cliche/chalice" as drawings.
understand "solid idols" and "solid/idols" as drawings.
understand "lanced candle" and "lanced/candle" as drawings.

chapter serve verse

the serve verse is scenery in Sacred Cedars.

description of serve verse is "It's all calligraphic, and it reads[paragraph break][i]From here, where lumbers slumber, is, lo! Purest oil snout erupts: solution! Ground unsod becomes sound. Lovely volley. A stone atones![paragraph break]  --LOIS[r]" [bold-ok]

chapter cedar walls

the sc are privately-named plural-named scenery in Sacred Cedars. printed name of sc is "cedar wall/walls". understand "cedars" and "cedar/ wall/walls" as sc.

description of sc is "They look nice and even smell nice. Serve verse veers all over them."

chapter spout

the spout is scenery in Sacred Cedars. description of spout is "It's stamped [b]OILS[r]. [if caskfillings > 0]Hopefully[else]You've already found[end if] you can just [b]FILL[r] the appropriate receptacle here, if you prefer, you can [b]POUR OILS[r], with no need for an object.".

the spout-put rule is listed before the can't put onto what's not a supporter rule in the check putting it on rules.

this is the spout-put rule:
	if noun is cask and second noun is spout, try pouring oils instead;
	if second noun is cask and noun is spout, try pouring oils instead;

check switching on spout:
	if player has cask, try filling the cask instead;
	if player has sack, try filling the sack instead;
	say "It'd be cannier to have a container." instead;

volume metros

to metro-victory:
	say "You draw your sword with the improvised battle cry 'At fencing I'm magnificent!' doing your best impression of St. Abe, or is it St. Bea?[paragraph break]Whichever, the beast scratches you, which you sort of deserve, but then your sword acts as a microphone, converting the beast's remaining beats to equally horrendous lyrics and providing feedback that makes it wince. It gives an owly yowl, tone-deaf: 'Fate! Done!' and runs off.[paragraph break]People can finally think again, so they figure how to find you quickly in the abyss![paragraph break]'How? Who? Ohh wow. You merit this mitre!' someone says. But all you want is to get on with your quest. The trade tread in Undesired Underside reveals itself again. You note the ol['] hotel (L'Hôte Helot) is now Le Hot Hotel, the terminal lean, trim. A fellow named Ace F shows up, vying to revive the cafe face. You then turn your sore to a rose, lead a pared parade and, for slower fun, plant a sunflower before returning to the Trips Strip.[paragraph break]You wonder if you could've just tried to [b]SAY BS[r] to get rid of the metros without trying. Maybe it'd be useful in a future alternate universe.";
	now stickyhanded is false;
	reg-inc;
	solve-region metros;

book Undesired Underside

Undesired Underside is a room in Metros. last-loc of metros is Undesired Underside. "This is some sort of seedy underground intersection with a train station south. You can also go north to [if Roarings Garrison is visited]the camp, again[else]what looks like a camp[end if]. You can't see the trade tread you came here by. Tilting titling advertises The Ol['] Hotel to the west.". roomnud of Undesired Underside is table of Undesired Underside nudges.

check going east in Undesired Underside:
	process the bother-nerds rule;
	if the rule failed, the rule succeeds;
	if signers ingress is open, continue the action;
	if player has the keycard and barcode is part of the keycard:
		if Esoteric Coteries are unvisited, say "Hm, maybe your keycard will do the trick.[paragraph break]";
		try putting keycard on friend finder;
		continue the action;
	else:
		try opening the signers ingress instead;

chapter tilting titling

the tilting titling is boring scenery in Undesired Underside. description of titling is "The tilting titling's too high above to reach. It's just there to advertise the Ol['] Hotel[if The Ol Hotel is visited], where you've already been[end if].". bore-text is "You can't do much with the titling, and you don't need to.".

chapter building

the building is scenery in Undesired Underside. understand "hotel" as building. description of building is "[if drainage is in Undesired Underside]It says L'HÔTE HELOT[else][first custom style]AND I RAGE[r] is written in red.[end if]"

chapter drainage

the drainage is in Undesired Underside. It is fixed in place. "That drainage you stepped in is [one of][or]still [stopping]around, taunting you as much as drainage can. Cleaning it up would help take this city back."

check taking drainage: say "It smells too powerful to even consider taking in its present form. Looks bad, too." instead;

description of drainage is "It smells and looks disgusting. Just the sort of thing that needs to be cleaned up or reprocessed to get this city looking nice again. But you probably aren't going to find any cleaning tools, so you are facing a mess of an eight-letter word.". rgtext of drainage is "[rcn][rc][rc][rc][rc][rc][rc][rc]". lgth of drainage is 8. gpos of drainage is 7. rpos of drainage is 3. cert-text of drainage is "-[d1][d1][d1][d1][d1][d1][d1]". rect-text of drainage is "G[d1][d1][d1][d1][d1][d1][ast]A".

section gardenia (from drainage)

a gardenia is a flower.

description of gardenia is "It's white, and it's just one flower instead of the whole bush. But it's the only one you've seen in the city proper[if Fo Real Florae are visited], and people or humanoids who go in for this sort of thing might value it[end if]."

chapter a reading

There is a boring auxiliary thing called A reading. "[one of]A reading (well, a bunch of papers) has blown in since last time you were here. It's soggy from the drainage where it landed[or]A reading still dries out by the drainage. Maybe it holds clues[stopping].". description is "It says [first custom style]A READING[r] in bold red. You could probably READ through it for a lot of clues. The content seems like nonsense, but hey, anything to help you see red.". bore-text is "It's too gross to do anything with except maybe examine it. You figure it's some sort of clue, since a reading, drainage, etc.". bore-check is bore-reading rule. [bold-ok]

lgth of a reading is 8. gpos of a reading is 8. rpos of a reading is 1. rgtext of a reading is "[rcn][rc][rc][rc][rc][rc][rc][rc]". cert-text of a reading is "-[d1][d1][d1][d1][d1][d1][d1]". rect-text of a reading is "G[d1][d1][d1][d1][d1][d1][ast]A".

this is the bore-reading rule:
	if current action is taking, say "Eww. Anyway, the (a) reading is probably a good clue for the drainage here, having gone through it a bit." instead;

after going to undesired underside (this is the reading clue to underside rule):
	if drainage is not moot and a reading is off-stage:
		move a reading to undesired underside;
	continue the action;

chapter cramped red camp (scenery indicating what's north)

the cramped red camp is useless scenery in Undesired Underside. "It's pretty dirty and meager[if Roarings Garrison is visited], as you already saw[else], but maybe you'll get help there[end if]."

chapter signers ingress (passage east)

The signers ingress is a door. description is "It's very solid[if signers ingress is open] when it's closed[end if][if player is in Undesired Underside], and a tech etch gives it some semblance of character[end if].". it is east of underside and west of Esoteric Coteries. printed name is "signers['] ingress".

check putting keycard on signers ingress when player is in Undesired Underside: try putting keycard on friend finder instead;
check putting keycard on signers ingress when player is in Esoteric Coteries: try going west instead;

the initial appearance of the signers ingress is "[one of]A metallic door labeled SIGNERS['] INGRESS is to the east. It looks forbidding, for now, with a friend finder (sensor) attached to it[or]The signers['] ingress looms to the [if player is in Esoteric Coteries]west. It's got no friend finder on this side, so you can probably just walk back through it[else]east, waiting for, uh, a sign. It has a tech etch repelling any old chump from entering. There's also a [one of]sensor (call it a friend finder)[or]friend finder[stopping] off to the side[prob-reads][end if][stopping].". understand "metallic/door" and "metallic door" as signers ingress when player is in Undesired Underside.

to say prob-reads: say "[if Esoteric Coteries are unvisited]. Probably reads something-or-other to let you in[end if]"

check opening the signers ingress:
	if noun is open, say "But it already is. For now." instead;
	if location of player is Esoteric Coteries:
		say "The [ingress] slides open as you step near it.";
		now signers ingress is open;
		the rule succeeds;
	process the bother-nerds rule;
	if the rule failed, the rule succeeds;
	if keycard-put is true:
		say "You use the keycard to open the door again.";
		try putting keycard on friend finder instead;
	set the pronoun it to signers ingress;
	if location of player is undesired and keycard is off-stage, say "You hear braying laughter behind the door. 'Hey! Some unintellectual's trying to get in. Like we'd make it a piece of cake for them to.' Then someone else admonishes the speaker for ending a sentence with a preposition." instead;
	say "The [ingress] has no handle. It's probably operated by the friend finder[if player has keycard], which might open if you put something like your keycard on it[else], but you don't seem to have anything to activate it[end if]." instead;

section tech etch

the tech etch is a part of the signers ingress. understand "sod" and "figure" and "stick figure" and "stick-figure" as tech etch. the tech etch is amusing.

check taking the tech etch: say "Since it's part of the door, you take the tech etch in the metaphorical sense and vow not to act like the poor schelps depicted on it." instead;

description of tech etch is "It's a red circle with a line through it, below the text 'Special Place is Special.' The poor struck-through sods in the center appear to be stick-figure parodies of stupid people. You note one [one of]stuffing a metal fork in a toaster[or]moving a rook pawn to start a chess game[or]thought-bubbling that 8+8=17[or]picking his nose[or]with his arm around Clippy[or]reading a tabloid magazine[or]hitting a computer that is not plugged in[or]about to walk over an open manhole[or]about to misplace a square manhole[or]watching a sporting event on TV[or]with a barbell crushing his neck[or]carrying a boombox[or]driving an SUV[or]getting an easy Sudoku all wrong[or]wearing a baseball hat backwards[or]wearing a sports jersey[or]drinking and smoking[or]feeding a shark[or]getting a tattoo[in random order]. Then you lose where it was in all the dizzying variety."

after examining tech etch for the first time:
	say "The tech etch is, of course, drawn by one Chet Echt.";
	continue the action;

section friend finder (part of ingress)

The friend finder is scenery in Undesired Underside. description of the friend finder is "It has a small optical beam, probably for detecting proper identification.". understand "sensor/senser" as friend finder.

Include (-
	has transparent animate
-) when defining friend finder.

check showing to friend finder: try putting noun on friend finder instead.

check asking friend finder about:
	if player has tulip, say "You don't need to go back." instead;
	say "You [if coteries is visited]probably have to show[else]already showed[end if] some ID." instead;

to say want-wanted: say "[if player has tulip]got the tulip from[else if Esoteric Coteries are visited]guard the tulip[else]want to see[end if]"

keycard-put is a truth state that varies. keycard-put is usually false.

check putting barcode on friend finder:
	if barcode is part of the keycard, try putting keycard on friend finder instead;
	say "You try holding the barcode up to the friend finder, which pulses a bit. But the door doesn't seem to open. Perhaps the barcode needs to be a part of something." instead;

check inserting into friend finder:
	say "The friend finder isn't a container. So you go with putting it ON, instead."; [bold-ok]
	try putting noun on second noun instead;

check putting on the friend finder (this is the reject silly friend finder tries rule) :
	ignore the can't put onto what's not a supporter rule;
	if noun is gadget, say "The gadget is more for gauging than doing, but yeah, you probably need something high-tech. Oh, the gadget remains silent, too." instead;
	if noun is the dry cake, say "Opening an electronic door is not such a piece of cake. Something more metallic." instead;
	say "'Special place is special!' barks the friend finder. You'll probably need something more high-tech to slip, ace." instead;

check putting keycard on friend finder:
	process the bother-nerds rule;
	if the rule failed, the rule succeeds;
	if barcode is not part of keycard, say "Hm. The blank keycard doesn't seem to work. It needs some sort of code." instead;
	if signers ingress is open:
		say "The [ingress] is open. So you just walk east instead.";
		try going east instead;
	if keycard-put is false:
		say "What do you know? It works! The [ingress] slides open!";
		now keycard-put is true;
		now keycard is realized;
		now friend finder is realized;
		now signers ingress is realized;
		now barcode is realized;
	else:
		say "The [ingress] slides open again.";
	now signers ingress is open instead;

section optical beam

the optical beam is part of the friend finder. description of optical beam is "I wouldn't advise staring into it, but you could put something on it."

check inserting into the beam: try putting noun on beam instead; [??]

check putting on the optical beam:
	ignore the can't put onto what's not a supporter rule;
	try putting noun on friend finder instead;

check putting it on: [?? isn't this duplicate?]
	if second noun is the optical beam, try putting noun on friend finder instead;

book Roarings Garrison

Roarings Garrison is north of Underside.  Roarings Garrison is in Metros. "Here in this cross between a platform and farm plot lie the shocking red tents of the terminally un- and under-employed. [if dry cake is in Obtains Boastin Bastion]You are quickly excluded from this once-mum commune, since you seem actually busy[else]Despite your heroics in the Bastion, people aren't THAT interested in you[end if]. A library lies to the west, a posh shop is to the east, and back south is where you started from[if dry cake is in Obtains Boastin Bastion].[paragraph break]A cordoned red condo is north[else].[paragraph break]The Obtains Boastin['] Bastion you're not welcome back at is to the north[end if]. You hear painful music.". roomnud of Roarings Garrison is table of Roarings Garrison nudges.

check going north in Roarings Garrison: if bastion-evac is true, say "You'd probably be recognized and arrested." instead;

check going east in Roarings Garrison when flowers is unvisited and player has gadget and tag is part of the gadget (this is the metros gadget checkpoint rule):
	if metros-warn is false and button-locked is false:
		now metros-warn is true;
		say "[gadact] once you go east. Do you continue?";
		if the player yes-consents:
			do nothing;
		else:
			say "Okay. This warning won't appear next time you go east." instead;
	if button-locked is false:
		now button-locked is true;
		say "You hear a click from the gadget. You fumble around a bit and note the [b]SECURE[r]/[b]RECUSE[r] button is locked in place."

to say gadact: say "Your tagged gadget's [b]SECURE[r]/[b]RECUSE[r] button blinks violently. Currently [b]SECURE[r]/[b]RECUSE[r] is [if gadget-secured is false]in[end if]active, so you can[if gadget-secured is false][']t[end if] skip a store but can[if gadget-secured is true][']t[end if] switch [b]CERTIFY[r]/[b]RECTIFY[r]"

section music

the music is useless scenery in Roarings Garrison. "Wretchedly sharp harps, fake-smile upbeat protest stuff, but a change from the beats. It clashes with the general chanting."

voice-count is a number that varies.

chapter useless scenery, or scenery that suggests other locations

section cordoned red condo

the cordoned red condo is scenery in Roarings Garrison. "It's immaculate compared to the rest of the city[if bastion-evac is true], but you aren't welcome there any more[end if]."

check entering cordoned red condo: try going north instead;

to say n-of-garrison: say "[if Obtains Boastin Bastion is visited]bastion[else]condo[end if]"

section posh shop

the posh shop is amusing scenery in Roarings Garrison. "It's apparently called Fo' Real Florae with a sub-slogan: 'Go floral or go fall!'"

section library

the library is scenery in Roarings Garrison. "Libraries aren't supposed to be beautiful, but man, this one looks ugly!".

section barrier

the barrier is useless scenery in Roarings Garrison. "[if dry cake is in Obtains Boastin Bastion]It doesn't look electrical[else]You could sneak back under, but you'd get chased[end if]."

section tents

the tents are useless boring scenery in Roarings Garrison. understand "commune" as tents. description of tents is "Decorated with a corny crayon-a-crony.". bore-text is "Probably a long-hair halo ring in the tents. Less helpful than the deadbeat."

chapter deadbeat

the dead beat deadbeat is a male person in Roarings Garrison. "A deadbeat is sitting on the ground here, looking dead beat[if bastion-evac is false]. His eyes dart between you and the lost corn. Clearly, he resents the work your presence is forcing on him[else]. He nods at you in solidarity for your work in the Bastion[end if]."

check giving to deadbeat:
	if noun is a flower or noun is clover or noun is tulip, say "'Flowers, man? During this totally intense class warfare?'" instead;
	say "'One act of guilt-driven re-gifting is no plan of general redistribution and fairness, man!'" instead;

check giving cake to dead beat deadbeat: say "'I didn't, like, want the cake, man. I just, like, wanted a symbolic blow against... (insert class-warfare cliche here.) Plus, totally not enough icing.'" instead;

check showing emitter to deadbeat: try objasking deadbeat about emitter instead;

check giving emitter to deadbeat: try objasking deadbeat about emitter instead;

understand "man" as deadbeat when deadbeat is fungible.

description of deadbeat is "He's wearing designer reedings."

section designer reedings

the designer reedings are amusing scenery in Roarings Garrison.

check taking designer reedings: say "Bad idea. The deadbeat likes no suds with the sounds." instead;

description of designer reedings is "GREED: SIN is written on them, but it's just some dumb slogan, nothing critical." [bold-ok]

chapter clover

the fuzzy clover is a thing in Roarings Garrison. "A small clover is growing here.". rgtext of clover is "[rcn][rc][rc][rc][rc][rc]". lgth of clover is 6. gpos of clover is 4. rpos of clover is 3. cert-text of clover is "-[d1][d1][d1][d1][d1]". rect-text of clover is "V[d1][d1][d1][d1][ast]O".

description of clover is "You touch the leaves a bit, and the are sturdy, fuzzy, almost hooking into your skin. You count two layers of five leaves each.[paragraph break]Clovers are good for luck, but you recall that cringey aphorism of making your own luck. What can the clover be made into?"

check wearing clover: say "You can't wear that as-is, but it'd be helpful to stick to something if it became wearable." instead;

understand "leaves" as clover when clover is fungible.

Report taking the clover:
	say "You pluck it.";
	the rule succeeds;

chapter velcro

some Velcro is a singular-named thing. it is not fixed in place. understand "mittens" and "gloves" as Velcro when Velcro is fungible.

check taking off Velcro:
	if player is on cafe face, say "You'd fall. Best get down from the cafe face, first." instead;
	if player is in Bassy Abyss, say "Maybe if you had something that gave you an even better grip, you could. But that siren is distracting." instead;

check wearing Velcro:
	if player is in Bassy Abyss, say "[if siren is in Bassy Abyss]That's not useful in this sticky situation[else]The resin is more useful for you to grab stuff[end if]." instead;

check tying Velcro to cafe face: say "You test to make sure the Velcro sticks. It does. You pull it back. You could climb up[if cafe-climbed is true] again[end if], if you wanted." instead;

check putting Velcro on cafe face: try tying Velcro to cafe face instead;

after doing something with controls:
	set the pronoun it to controls;
	continue the action;

after doing something with Velcro:
	set the pronoun them to Velcro;
	set the pronoun it to Velcro;
	continue the action;

the indefinite article of Velcro is "some".

description of Velcro is "You're not smitten by these mittens--they're like what some kids had to wear when they were younger. Two glovey bits, with a long connecting string. They're made of a bunch of hooks and can probably catch on something if need be."

the string is part of the Velcro. description of string is "Must've been made from the clover stem. It's not switchable, trust me--it's part of the ex-clover."

the hooks are part of the Velcro. the hooks are plural-named. description of hooks is "You know, small little hooks that attach to loopy bits."

the Velcro is wearable.

chapter lost corn

some lost corn is a singular-named thing. rgtext of lost corn is "[rcn][gc][rc][gc][rc][gc][rc][rc]". lgth of lost corn is 8. gpos of lost corn is 5. rpos of lost corn is 3. cert-text of lost corn is "-[ast]O[d1][ast]T[d1][ast]O[d1][d1]". rect-text of lost corn is "C[d1][d1][d1][d1][d1][d1][ast]S".

after taking the lost corn: say "'All yours, man,' says the deadbeat. 'It's some pretty good corn, too. Ask me if you like want details.'".

the indefinite article of lost corn is "some".

initial appearance of the lost corn is "[one of]Some lost corn is[or]That lost corn is still[stopping] in that corner. Sorry if that sounds corny."

the discolored buttons are part of the corn. description of discolored buttons is "They give you this weird urge to push them."

check taking mattress: try pushing mattress instead;

before doing something with the mattress:
	if emitter is off-stage and night thing is moot:
		if current action is taking or current action is pushing or current action is pulling:
			say "As you move the mattress, but it seems that the bump moves with it. So you decide to search the mattress instead.";
			try examining mattress instead;

before pushing:
	if noun is buttons or noun is lost corn, say "Maybe if the corn were hooked up to something it could do something to. And it weren't, well, lost corn." instead;

chapter corner

the corner is useless scenery in Roarings Garrison. description of corner is "[if corn is in Roarings Garrison]It's not very interesting, but that's where the corn rolled[else]You don't even remember which corner the corn rolled into, now[end if]."

check going to Roarings Garrison:
	if lost corn is off-stage:
		say "As you walk north, you run into someone who is carrying a basket full of corn. You help him pick everything up. Or so you think. As he runs off, cursing you, you look in a corner--a corn ear!";
		now lost corn is in Roarings Garrison;

chapter lost corn

description of lost corn is "It's got a bunch of different kernels, and some look like buttons because they're not yellow[if player has corn]. The deadbeat might have something to say about it, if you could put up with him. His information would certainly be off the mark, but in Yorpwald, that's better than maybe being wrong[end if]."

check taking lost corn:
	if bastion-evac is false, say "The deadbeat almost gets up[one of]. 'Hey, Man, like, how do we know someone undisreputable doesn't, like, like the Man, man? Hey? Hey?' he says, with no dearth of hatred as he[or]but just[stopping] jerks his thumb north. He might not do anything, but his friends might pour out from their tents. You don't need a fight right now.[paragraph break]Maybe you need to strike a blow against some rich people to show you belong." instead;

section kernels

the yellow kernels are part of the lost corn. understand "buttons" as kernels.

does the player mean doing something with the discolored buttons when lost corn is touchable: it is likely.

does the player mean examining the location: it is very likely.

description of kernels is "Most are yellow but others are discolored--red and black and white."

understand "kernels" as discolored buttons when lost corn is fungible.

chapter controls

some controls are a thing.

check taking controls: if controls are in gin nope opening, say "You don't want to undo your work fixing the rails." instead;

description of controls is "This panel features all manner of black and yellow and red doohickeys and there's a small warning message saying REPLACEMENT CONTROLS IN CASE OF SURGE TO TRACKS. They've got instructions, which are surprisingly clear and even leave you wiser about u-boat wires."

section instructions

the instructions are part of the controls.

description of instructions is "[if controls are in gin nope opening]They served you well. No need to reread.[else]Surprisingly readable, enough so you could just stuff these controls somewhere appropriate and things would get working. Some days you're just lucky, eh?[end if]"

chapter noisome moonies

the noisome moonies are amusing plural-named boring scenery in Roarings Garrison. description of noisome moonies is "They all have that 'I'm so ONE' look about them.". bore-text is "The noisome moonies are too wrapped up in themselves to matter.". bore-check is bore-moonies rule.

Include (-
	has transparent animate
-) when defining noisome moonies.

this is the bore-moonies rule:
	set the pronoun them to moonies;
	if current action is objasking or current action is objasking about, say "The moonies are too busy chanting to talk to you, but they have nothing to say." instead;

chapter snakebit beatniks

the snakebit beatniks are amusing plural-named boring scenery in Roarings Garrison. description of snakebit beatniks is "They all be astink (figuratively and literally).". bore-check is bore-beatniks rule. bore-text is "The snakebit beatniks are too wrapped up in themselves to matter.".

Include (-
	has transparent animate
-) when defining snakebit beatniks.

this is the bore-beatniks rule:
	set the pronoun them to beatniks;
	if current action is objasking or current action is objasking about, say "The beatniks are too busy chanting to talk to you, but they have nothing to say." instead;

book Bile Libe

Bile Libe is west of Roarings Garrison. It is in Metros. "This isn't a very good library. It's gross and slimy and cramped[if words are touchable], and words buzz about enough to drown out the intense beats heard elsewhere in the city. A lease easel covers every direction except back east.". roomnud of Bile Libe is table of Bile Libe nudges.

chapter words

some words are a scenery in Bile Libe. rgtext of words is "[rcn][rc][rc][rc][rc]". gpos of words is 5. rpos of words is 4. lgth of words is 5. cert-text of words is "-[d1][d1][d1][d1]". rect-text of words is "S[d1][d1][d1][ast]D".

description of words is "They're not visible[if words are in bag], but you can feel them pulsing against the bag[else], but they certainly sound angry. Sharp. Pointed. Lethal[end if]."

check opening noise bag:
	if player is in Bile Libe:
		if words are in Bile Libe and player has noise bag:
			now words are in noise bag;
			say "You open the bag, and you feel the waves and sounds of the words swirling into the bag. You close it." instead;
	if words are in bag:
		if location of player is Esoteric Coteries:
			say "The nerds put their hands to their ears, whining a brief 'BE FAIR!' They explain it's not their fault dumber people can't insulate themselves from the noise, but they can't STOP you ruining it for everyone. They ask if you want something, and you point to the tulip. One of them gestures for your keycard. You throw it to them. You're not coming back.[paragraph break]As you do, the nerds['] cries help assure your noise bag stays full, in case you need more words--or something else--later."; [bold-ok]
			moot keycard;
			select-nerd-sol 2;
			the rule succeeds;
		if location of player is Abyss, say "[if beast is touchable]The beast has no time for words! You need to attack it more directly, with something else[else]The beats will drown the words out[end if]." instead;
		say "The words currently caught in the bag would do no good here.";
		the rule succeeds;
	if player is in Fo Real Florae, say "The faeries are not making noise." instead;
	if player is in camp, say "The chants are disjointed and not really forceful or annoying anyone. They're talk without action." instead;
	if player is not in Bassy, say "Nothing's quite focused enough here to go pouring in the bag. The beats are too amorphous, and there're no clear words." instead;

for printing a locale paragraph about the words when words are touchable: set the locale priority of the words to 0.

chapter sword

the sword is a thing. it is not fixed in place.

description of sword is "[if sword is in sheath]It's sheathed now. It's not really worth admiring. The handle looks slippery[else]It's for great justice, you're sure. But instead of blood gutters it's shaped more like a microphone. Odd[end if]."

the hilt is part of the sword.

description of hilt is "It's bright and polished and slippery-looking, [if stickyhanded is true]but with your sticky hands, maybe you could grab it[else]and you probably couldn't hold onto it for long right now[end if]."

check taking hilt: try taking sword instead;

check taking sword:
	if stickyhanded is false, say "The sword slips from your hands[if player wears Velcro], and there's nothing the Velcro mittens can hook onto[end if][if resin is not touchable]. Hmm, you haven't found anything that'd help you grasp it[end if]." instead;
	say "The sword is yours, and you grab it firmly in your resined hands!";
	now player has sword instead;

chapter lease easel

the lease easel is boring scenery in Bile Libe. description of lease easel is "It reads PROPERTY OF ELEAS & LEESA SEALE and gives lots of 'profitable' advice (largely on e-sale) starting 'SEE, AL...'[paragraph break][if motto is in Bile Libe]Somehow clinging to the lease easel is [b]A MOTTO[r][else]You got a motto from it, and it's pretty much bare now[end if].". bore-text is "The lease easel is part of the Bile Libe. It[if motto is in Bile Libe]'s[else] was[end if] there to hold the motto and to block you from exploring...well, anywhere else." [bold-ok]

chapter motto-tomato

section motto

A motto is a thing in Bile Libe. "[b]A MOTTO[r] (it says it is, in big bold letters) is somehow stuck to the lease easel. On initial inspection, it doesn't seem like a very good motto, but it qualifies, technically."

rgtext of a motto is "[rcn][rc][rc][rc][gc][gc]". lgth of a motto is 6. gpos of a motto is 4. rpos of a motto is 3. cert-text of a motto is "-[d1][d1][d1][ast]T[ast]O". rect-text of a motto is "T[d1][d1][d1][d1][ast]O".

description of the motto is "It's labeled [b]A MOTTO[r], and somehow, someone named Too-Apt Pa Otto has managed to make a hash of grammar, logic, math, science and basic human decency in sixty letters. Sixty-four if it were spelled correctly.[paragraph break]I'd tell you what it said, but you-the-person would be the worse for it. It's like Monty Python's funniest joke in the world that way. Even considering it makes you feel worried you'll forget simple stupid stuff, like what's a fruit and what's a vegetable."

check taking motto: say "It seems stuck to the lease easel in its current form. Maybe if you could change it, it would fall off. As-is, it's not worth taking, both physically, or the advice therein." instead;

section tomato

understand "rotten tomato" and "rotten" as tomato.

the tomato is a thing. the description of the tomato is "It's as rotten as the motto of Pa Otto's you extracted it from. It is probably even more rotten on the inside, not that you have the bravery to check. Yet it also has that staying power. It doesn't have any mold on it, yet."

chapter Obtains Boastin' Bastion

Obtains Boastin Bastion is north of Roarings Garrison. Obtains Boastin Bastion is in Metros. roomnud of Obtains Boastin Bastion is table of Obtains Boastin Bastion nudges. printed name is "Obtains/Boastin['] Bastion"

check going inside in Obtains Boastin Bastion: say "You're already inside." instead;

after looking in Obtains Boastin Bastion:
	if poses posse are in Obtains Boastin Bastion, set the pronoun them to poses posse;
	continue the action;

after doing something with poses posse:
	set the pronoun it to poses posse;
	set the pronoun them to poses posse;
	continue the action;

check going to Obtains Boastin Bastion for the first time: say "Since you shave, you can pass as one of the 'haves.' The beats drown out as you enter the condo. 'Eat On!' cries the hired help.[paragraph break]'Neato! ... No tea? ATONE!'[paragraph break]You are inspected and deemed less unworthy than that deadbeat who tried to enter--the one still sitting in the camp--but all the same, you're warned not to try anything funny."

description of Obtains Boastin Bastion is "This is a big residence, but any exploration would result in discreter redirects. [if bastion-evac is true][cake-blab][else]The beats aren't audible here, but conversation voices rant on. A poses posse chatters away amongst themselves here[end if]. A barnacled candelabra hangs above[if antlers are touchable], antlers are attached to a wall[end if], and carpets provide garish spectra on the floor[if bastion-evac is false]. [paragraph break]All in all, this place probably has a high property value, and people would be horrified if something happened to make it drop[end if]."

check going in Obtains Boastin Bastion:
	if bastion-evac is true and noun is not south, say "Best not hang around the scene of the crime." instead;
	if noun is north, say "A guard pushes you away from the SIN BOAT." instead;
	if noun is east, say "You're pushed away for not respecting Saint Bo." instead;
	if noun is west, say "You're rudely pushed away as someone says 'SOB... ain't...'" instead;
	if noun is up, say "You're pushed back. As you leave, someone baits on. You aren't allowed anywhere except the main area." instead;
	if noun is diagonal, say "You skulk in a corner for a bit. People not-notice you a bit more than before." instead;

check going south in Obtains Boastin Bastion when bastion-evac is true:
	if player does not have dry cake and player does not have keycard:
		say "You glance at the dry cake and think 'Tool?! Loot!' [run paragraph on]"; [??]
		try taking the dry cake;
		unless player carries dry cake, now player has dry cake;
	say "You migrate, ragtime music in your head. From the south, some camped folks decamp for har-hars and rah-rahs. 'Roaches scare! Ho!'[paragraph break]You're the camp's scamp now, so to speak. Why, the deadbeat has promoted you from The (Wo)Man to Dude. I bet you could even take that corn now!";
	if antlers are not moot, poss-d;

chapter poses posse

the poses posse are plural-named auxiliary scenery in Obtains Boastin Bastion. understand "poso" and "pose posse" as poses posse.

Include (-
	has transparent animate
-) when defining poses posse.

description of poses posse is "They're trying hard to be part of the upper crust, speaking disdainfully of the Roarings Garrison outside and how if they can't tolerate the beats, they can just buy a condo too."

understand "people" as poses posse when player is in bastion and posse is in bastion.

does the player mean throwing the tomato at the poses posse: it is likely.

check throwing tomato at poses posse: say "That would get rid of one of them, but the rest would oust you. Perhaps a more pervasive threat would disperse them." instead;

chapter antlers LLP

the antlers are plural-named LLPish scenery in Obtains Boastin Bastion. rgtext of antlers is "[rcn][rc][rc][rc][rc][rc][gc]". lgth of antlers is 7. gpos of antlers is 6. rpos of antlers is 7. cert-text of antlers is "-[d1][d1][d1][d1][d1][ast]S". rect-text of antlers is "R[d1][d1][d1][d1][d1][ast]S".

check taking the antlers: say "They are utterly useless, even for impressing people. Actually, they're all just here for the free food, too." instead;

description of the antlers is "The antlers are just the sort of annoying thing that people only buy to show they own something more expensive than you do. They say ANTLERS BY BRANTLEY'S and have a reddish tinge and seem more chipped and worn than you'd expect for something so showy. As if they'd been moved around a lot."

the rentals are plural-named useless scenery.

description of the rentals is "The antlers are gone. You shouldn't be able to see the rentals or antlers."

chapter barnacled candelabra

A barnacled candelabra is amusing boring scenery in Obtains Boastin Bastion. description of candelabra is "It's tasteful and clever, as much as you hate to admit it.". bore-text is "You couldn't even jump to get close to it. But it's not important. Someone just put it there because they could.".

chapter spectra carpets

the spectra carpets are plural-named useless scenery in Obtains Boastin Bastion.

after doing something with carpets:
	set the pronoun it to carpets;
	continue the action;

description of carpets is "Tacky but not worth taking."

check looking under carpets: say "This is a tribute to Nord and Bert, not Zork. Though Zork's cool, too." instead;

check taking carpets: say "Too bulky, and what if they turned into something precast?" instead;

chapter dry cake

Some dry cake is a singular-named thing in Obtains Boastin Bastion. "Some dry cake is here[if poses posse is in Obtains Boastin Bastion]. Nobody else is lower-class enough to eat it, but everyone's making sure nobody lower-class nabs it[else]. And nobody is here to stop you from taking it any more[end if].". rgtext of dry cake is "[rcn][rc][gc][gc][gc][rc][rc]". lgth of dry cake is 7. gpos of dry cake is 6. rpos of dry cake is 1. cert-text of dry cake is "-[d1][ast]Y[ast]C[ast]A[d1][d1]". rect-text of dry cake is "K[d1][d1][d1][d1][d1][ast]D".

indefinite article of dry cake is "some".

description of dry cake is "The least stale of what's left, but weird and silvery and in no state to taste[if player does not have cake]. Someone sees you eying the cake, and you suddenly wish to steal it out of spite[end if]."

check taking the dry cake when bastion-evac is false:
	say "[one of]You overhear steal-tales and think, alas, settle. [or]You feel a slap on your hand from someone who mentions Doc Bleak gave a creep a crepe once. A bold cake blockade! [or]Someone shakes a can of Best Cola and points it at you. Obstacle! [or]'Greedbag! Er, bad egg!' someone calls out. [or][cycling]Someone else takes a turn watching you.";
	say "[line break]You'll probably have to disperse the poses posse somehow." instead;

after taking dry cake: say "You take care not to let the cake tear as you pick it up.".

to say cake-blab: say "You probably want to [if cake is in Obtains Boastin Bastion]take the cake and run[else]get going before everyone gets back[end if]"

understand "steal [something]" as taking.

report taking the dry cake:
	say "Taking it is a piece of cake with everyone gone, you note dryly.";
	the rule succeeds;

chapter keycard

the keycard is a thing.

after printing the name of the keycard while taking inventory:
	if barcode is part of the keycard, say " (with the barcode on it)";
	continue the action;

understand "key/ card/" as keycard.

description of keycard is "It's plain and metallic[if barcode is part of the keycard], with a barcode that might help with optical scanners[else], and the only thing that indicates it's a keycard is small text saying FOR AUTHORIZED ACCESS ONLY[end if]."

check putting keycard on barcode: try putting barcode on keycard instead;

check putting barcode on keycard:
	say "You peel the barcode, slap it on the keycard, and it is a perfect fit! Also, you stuff the adhesive backing in your pocket, where you forget about it until you can find a proper garbage can. You haven't seen any in this city yet[if player is in Bile Libe], and you don't want to add to the garbage piles here[end if].";
	moot adhesive backing;
	realize keycard;
	now barcode is part of the keycard instead;

check tying barcode to: try putting barcode on second noun instead;

check tying to barcode: try tying second noun to noun instead;

check taking barcode:
	if barcode is part of the keycard, say "The barcode is where it should be. It you unstuck it, it probably wouldn't re-stick." instead;

check putting barcode on:
	if barcode is part of the keycard, say "The barcode is where it should be. It you unstuck it, it probably wouldn't re-stick." instead;
	if second noun is controls, say "The barcode might be detected by some sort of electronic controls, but it doesn't belong on them." instead;
	if second noun is tomato or second noun is dry cake, say "Boy. When this hero gig ends, maybe don't become a grocery store manager, okay?" instead;
	say "You can't really see what the barcode would do there." instead;

check inserting barcode into keycard: try putting barcode on keycard instead;

book Fo' Real Florae

Fo Real Florae is east of Roarings Garrison. "You're in a flower shop manned (elfed?) by faeries. You can go back west to the camp.". Fo Real Florae is in Metros. roomnud of Fo Real Florae is table of Fo Real Florae nudges.

fairy-worthy is a truth state that varies. fairy-worthy is usually false.

printed name of Fo Real Florae is "Fo['] Real Florae Fare, Lo"

check going to Fo Real Florae for the first time: say "'Main goal, magnolia... what low serf seeks for all floral?' you hear as you enter. 'He must do better than that primrose promiser! A rose leaves us sore! No succor in a crocus either! Players with parsley are rewarded sparely! Peony? Nopey!'".

after choosing notable locale objects when player is in Fo Real Florae: set the locale priority of the faeries to 2.

rule for printing a locale paragraph about faeries:
	say "Faeries buzz around here, [if fairy-worthy is false]guarding some heaths and begonias[else if heaths are moot]guarding the begonias you declined[else if begonias are moot]guarding the heaths you declined[else]waiting for you to choose between the heaths and begonias[end if].";
	now faeries are mentioned;
	now heaths are mentioned;
	now begonias are mentioned;

violets is a truth state that varies.

report going west in Fo Real Florae when violets is false:
	if player has noise bag or player has begonias or player has heaths or player has sheath:
		say "Apropos of nothing, the faeries say 'Violet? Love it!'";
		now violets is true;
	continue the action;

check going east in Fo Real Florae: say "[one of]You wouldn't want to disturb them while they're measuring geraniums or anything back there[or]'Back rooms? Smack boor!' you imagine the faeries saying[or]That's where all the magic happens. It'll happen to you if you get nosy[cycling]." instead;

chapter freesia faeries

Some freesia faeries are people in Fo Real Florae. "Freesia faeries fly around here [if heaths are in Fo Real Florae and begonias are in Fo Real Florae]anxiously[else]randomly[end if]."

understand "freesia/ fairies/" as faeries.

check taking freesia faeries: say "They're too fast for you. And they are not souvenirs." instead;

check objasking faeries about gardenia:
	if player has gardenia:
		say "They see your gardenia and snatch it away before you can offer properly. 'Yes! Yes!' [run paragraph on]";
		try giving gardenia to faeries instead;

description of freesia faeries is "They are maybe a foot high, but each one of them carries a small wand you're sure you don't want pointed at you."

the wands are a plural-named useless boring thing. they are part of the faeries. understand "wand" as wands. description of wands is "[one of]You lean over to peer at the wands and realize the faeries are watching you stare. You feel embarrassed[or]You've got enough magic for one person. You don't need more[stopping].". bore-text is "The wands are the faeries[']. Best not meddle.".

after doing something with wands:
	set the pronoun it to wands;
	continue the action;

to say he-be:
	if heaths are in Fo Real Florae or begonias are in Fo Real Florae:
		if heaths are moot or begonias are moot:
			say "You have performed your magic admirably on our gift. Go and slay the beast![no line break]";
		else:
			say "'Your magic will work on what you have. But you must use your ingenuity.'[no line break]";
	else:
		say "'You may take one of the groups of flowers if you bring us some. They are the last of the batch from before the Night Thing came.'";

to say sure-you: say "[if heaths are not in Fo Real Florae or begonias are not in Fo Real Florae]We are sure you can do something with your reward[else]Do remember to take your reward[end if]".

check giving to faeries:
	if noun is clover:
		if fairy-worthy is true, say "The faeries smile pityingly at you. Clovers grow everywhere[if fairy-worthy is true]. But they don't need anything more from you[else]. They're more like weeds than flowers[end if]." instead;
		say "[one of]'That is not a flower! It is just a silly weed!'[or]They probably want a real flower.[stopping]" instead;
	if noun is tulip, say "'That's not a real flower! That's technology!' they cry." instead;
	if noun is heaths or noun is begonias, say "[if player has noun]The faeries give you a look like, Refund? F U NERD![else]It's not even yours. Yet.[end if]" instead;
	say "They have no need of adventuresome things." instead;

check showing to faeries: try giving noun to faeries instead;

check giving gardenia to faeries:
	say "They're visibly impressed. 'Flower up! Powerful pure flow! For all floral! Perhaps you are the word smyth who will fulfill the sword myth! We offer a flower of your choice. But only one[if brocade is in Fo Real Florae]. And take the brocade, too[end if]. Our flowers, or what you make of them, cannot provoke or participate in violence, but they may be able to contain the weapon you need.'";
	moot the gardenia;
	now fairy-worthy is true instead;

to say take-flower:
	say "A flower! Low fear! Remember, adventurer! The flowers cannot be used for violence. They may be a suitable vessel for a weapon, though";
	now faeries are realized;

chapter merchandise

the merchandise is scenery in Fo Real Florae. "All sorts of flower-related semi-magical stuff spans the store. You wouldn't know what to do with any of it, [if begonias are not in Fo Real Florae and heaths are not in Fo Real Florae]but you've got something for your troubles[else if fairy-worthy is true]but you can probably take the heaths or begonias[else]but maybe if you help the faeries, they'll give you something[end if]."

does the player mean objasking the faeries about the merchandise: it is likely.

understand "flowers/seeds/flower/seed" as merchandise when merchandise is quickvis.

chapter heaths

some heaths are a plural-named flower in Fo Real Florae. they are not fixed in place. rgtext of heaths is "[rcn][rc][rc][rc][rc][rc]". lgth of heaths is 6. gpos of heaths is 6. rpos of heaths is 1. cert-text of heaths is "-[d1][d1][d1][d1][d1]". rect-text of heaths is "S[d1][d1][d1][d1][ast]H".

understand "heath" as heaths.

description of heaths is "They're tied together so their stems seem to form a sort of narrow tube. But surely flowers alone aren't going to stop the thumping here."

check taking heaths: if the player's command matches the regular expression "\bheath\b", say "(all of them, why not?)";

report taking heaths:
	say "'[take-flower].'";
	the rule succeeds;

section stems

stems are part of the heaths. understand "narrow tube" as stems when stems are fungible.

description of stems is "The stems seem to be forming a narrow tube. It's weird--you can't see anything holding the flowers together."

chapter sheath

the sheath is a wearable container.

after taking sheath:
	say "It's a bit awkward, but fortunately it can hook on to your pants or shorts or whatever you're wearing.";
	now player wears the sheath;

check taking off sheath: say "It'd be too awkward to carry." instead;

description of sheath is "It's a dull grey, with the words FOR GREAT QUIETNESS inscribed in some Gothic font."

chapter begonias

some begonias are a plural-named flower in Fo Real Florae. they are not fixed in place. rgtext of begonias is "[rcn][rc][rc][rc][rc][rc][gc][rc]". lgth of begonias is 8. gpos of begonias is 5. rpos of begonias is 3. cert-text of begonias is "-[d1][d1][d1][d1][d1][ast]A[d1]". rect-text of begonias is "N[d1][d1][d1][d1][d1][d1][ast]G".

check taking begonias: if the player's command matches the regular expression "begonia\b", say "(all of them, why not?)";

understand "begonia" as begonias.

description of begonias is "Reddish, pinkish, white. Kind of fragile, but they seem to silence things a bit, like they could somehow contain the sounds if you knew how to mess with them."

report taking begonias:
	say "'[take-flower].'";
	the rule succeeds;

section noise bag

the noise bag is an openable closed transparent container. understand "noisebag" as noise bag.

check wearing bag: say "Oh, come on, you're not doing that badly. Figuring the begonias was pretty clever, really[if words are not in bag]--you just haven't found what to put in the bag, yet!" instead;

description of the noise bag is "Big deal. Idle bag. But it's labeled OPEN TO CAPTURE NOISES."

check inserting into the noise bag:
	if noun is words and words are not held, say "You can't take them, though they do seem to be louder with the bag around." instead;
	if noun is beats, say "They will not get sucked in like the random noises did." instead;
	say "It seems like the bag can only contain non-substantial things. Noisy things." instead;

to say greedy-greedy: say "The faeries cry 'We already gave you one clump of flowers for your one flower! So unfair, sour naif!'".

chapter brocade

the brocade is a thing in Fo Real Florae. "A small piece of brocade is discarded away from the merchandise below the counter. You see a torn cue above it.". rgtext of brocade is "[gcn][rc][rc][gc][rc][gc][gc]". lgth of brocade is 7. gpos of brocade is 1. rpos of brocade is 7. cert-text of brocade is "B[d1][d1][ast]C[d1][ast]D[ast]E". rect-text of brocade is "B[d1][d1][d1][d1][d1][ast]E".

description of brocade is "It's rather plain and white with lots of black bars. It would take a rabider braider than most to weave such a design[if player does not have brocade]. A torn cue above it indicates it's not part of the normal merchandise[end if]."

chapter barcode

the barcode is a thing.

understand "code" and "bar" as barcode when barcode is fungible.

check objhinting barcode when barcode is part of the keycard: try objhinting keycard instead;

description of barcode is "[if barcode is part of keycard]It's stuck to the keycard now, and it'd be unwise to peel it off[else]It's got the adhesive backing so it looks like you could [b]PUT[r] it [b]ON[r] something. Barcodes just aren't too handy by themselves[end if]."

the adhesive backing is a boring thing. it is part of the barcode. bore-text of adhesive backing is "You don't need to futz with the adhesive, explicitly. Just do what you want/need with the barcode.". description is "It's clear, and it'll keep the sticky bit on the barcode until you know where to put it.".

to say dont-peel: say "When you're ready to put the barcode on something, you don't need to peel it. Just [b]PUT[r] it [b]ON[r] whatever.".

chapter torn cue and cornute counter

the torn cue is scenery in Fo Real Florae.

description of torn cue is "FREE TO [if fairy-worthy is true]FREEDOM FIGHTERS[else]FREELOADERS[end if]."

the cornute counter is bounding scenery in Fo Real Florae. "It is cornute, or horn-shaped, and it divides you from the faeries and, well, any mysterious back areas. It doesn't divide them from you, though, since they can fly[if brocade is in Fo Real Florae]. 'ELF ROW FLOWERS = LOW SERF' is scratched in, but a torn cue written into the counter[torn-next-broc] may be more useful."

to say torn-next-broc: say "[if brocade is in florae], next to a brocade,[end if]"

book The Ol' Hotel

There is a room called The Ol Hotel.

The Ol Hotel is west of Undesired Underside. "What would a beaten-down city be without an ol['] hotel? Both have seen better days. Still hard not to loathe a hotel in this state.[paragraph break]While it's a pretty big hotel, exploring seems extremely unwise, with L'HÔTE HELOT scribbled about. So when you leave, you'll probably want to go back east to Undesired Underside.". Hotel is in Metros. roomnud of The Ol Hotel is table of the ol hotel nudges. printed name of the ol hotel is "The Ol['] Hotel".

chapter Night Thing

The Night Thing is a neuter person in The Ol Hotel. "A scary Night Thing is here, sitting on some sort of mattress."

after doing something with the night thing:
	set the pronoun her to night thing;
	continue the action;

does the player mean throwing the tomato at the night thing: it is likely

after doing something with the night thing:
	set the pronoun it to night thing;
	continue the action;

description of Night Thing is "It's grown wrong, a gigantic hairy eyeless potato clearly not the right girth. And it's wired weird, with a cruel ulcer for a mouth. It seems more in the mood for bellowing than fighting, but it still probably doesn't belong in the hotel. It's too big to fight and too fearsome to get near. It appears to be sitting on some sort of mattress."

understand "potato" as night thing when night thing is fungible.

check showing something to the night thing: try giving noun to night thing instead;

check giving something to the night thing:
	if noun is tomato:
		say "It stops roaring a bit to sniff the tomato, but it clearly doesn't trust you, doesn't have arms, and doesn't understand or care why you'd hate if it bit off your hand along with the tomato. So you decide to back up a bit and throw the tomato.";
		try throwing the tomato at the night thing instead;
	say "It's roaring too much. It seems upset about something, and you look unlikely to help." instead;

section cruel ulcer

the cruel ulcer is a boring thing. it is part of the night thing. description of cruel ulcer is "It's nasty and yellowed and an indication maybe scaring people in the hotel is more stressful than you think. You wonder how food goes down there.". bore-text is "It's neither a clue-r nor lucre."

chapter ketchup bottle

the ketchup bottle is a thing in The Ol Hotel. "A ketchup bottle lies here, torn apart--and you have a prime suspect in the Night Thing that [if night thing is touchable]is roaring nearby[else]was here[end if]."

the description of the ketchup bottle is "It is THE PUCK brand ketchup. And it's shaped that way, too. They apparently put, heck, whatever they want in it! And you'll like it that way!" [bold-ok]

check taking the ketchup bottle: say "[if night thing is not touchable]Trust me. You don't need it[else]The night thing roars. Though it's drained the bottle of its contents, it still feels an emotional attachment you would be wise not to break[end if]." instead;

check inserting into the bottle: say "Ketchup bottles have those narrow necks, so nothing really fits. One look at the bottle, and you probably don't WANT anything to fit." instead;

chapter smartest mattress

the smartest mattress is a boring fixed in place container in The Ol Hotel. bore-text of smartest mattress is "The night thing [if night thing is moot]was sitting on the mattress, so you want as little to do with the mattress as possible[else]is sitting on the smartest mattress. You'll need to get rid of the night thing before seeing more about the mattress[end if].". bore-check is bore-mattress rule.

does the player mean entering the mattress: it is likely.

this is the bore-mattress rule:
	if night thing is moot and current action is searching, continue the action;
	if night thing is not moot:
		if current action is examining or current action is searching or current action is reading, say "You can't see enough of the mattress with the night thing covering it." instead;

rule for printing a locale paragraph about the smartest mattress:
	if night thing is not touchable, say "The mattress still conforms to the shape of the night thing that sat on it[if emitter is off-stage]--but it also has a bump in one corner[end if].";
	now mattress is mentioned;

description of smartest mattress is "The Smartest Mattress doesn't have a one-page proof of Fermat's Last Theorem in it or anything. It just 'remembers' the shape of whatever sat on it for a long, long time[if emitter is off-stage][get-the-bump][else]. It doesn't seem to have held anything other than the termite emitter[end if]."

to say get-the-bump:
	say ". The bump in the mattress is obvious enough that you have to take another look. You find a small machine labeled, apparently, a termite emitter, and you take it";
	set the pronoun it to termite emitter;
	moot bump;
	now player has the emitter;

section bump

the bump is a boring thing. it is part of the mattress. description of the bump is "Why not examine the whole mattress instead?". bore-check of bump is the bore-bump rule.

this is the bore-bump rule:
	if current action is objhinting, say "(You decide to examine it before asking for hints.)[paragraph break]";
	say "On getting close to the bump you realize it's due to something wedged inside the mattress. You search around, find a small machine that is apparently a termite emitter, and take it.";
	moot bump;
	now player has the emitter;

understand "something" as bump when bump is part of the mattress and mattress is fungible.

does the player mean throwing the tomato at the night thing: it is very likely.

rule for supplying a missing second noun while throwing:
	if night thing is touchable, now the second noun is the night thing;

rule for supplying a missing noun while throwing:
	if night thing is touchable, now the noun is the tomato;

chapter termite emitter

The termite emitter is a device. "A termite emitter lies here, forgotten. It still looks operational. Perhaps it's part of why the hotel is so beaten up."

check inserting into emitter: say "You have nothing small enough to go in." instead;

the termite emitter can be ungnatted, angstgnatted or doubleused. the termite emitter is ungnatted.

does the player mean switching on the termite emitter: it is very likely.

check opening termite emitter: say "You can't figure how. There's a reason for that[if bastion-evac is true and flies-in-emitter is false], and it's empty anyway[else]. Better to switch it, probably[end if]." instead;

description of termite emitter is "It's a black box the side of maybe two CD cases stacked[if bastion-evac is true]. It's empty now, you hope[else]. It probably holds a lot of termites. You can switch it when you need to[end if]. Someone has scratched a circle with a line through it over a dollar sign[if bastion-evac is false]. You can't hear or see the termites that should be in there, but hey, faith[else if flies-in-emitter is true]. The deadbeat put some angst gnats in it for you[else]. It's probably empty after your hijinks[end if]. It's Mr. Eet-It brand. Of course.".

after examining termite emitter:
	if termite emitter is not doubleused, say "You can [b]SWITCH[r] the termite emitter to release its, uh, contents.";
	continue the action;

check examining the termite emitter: ignore the examine devices rule.

understand "black box" and "black/box" and "machine" as termite emitter when termite emitter is fungible.

bastion-evac is a truth state that varies. bastion-evac is usually false.

flies-in-emitter is a truth state that varies. flies-in-emitter is false.

check switching on the termite emitter:
	if flies-in-emitter is true:
		if deadbeat is touchable, say "It'd be rude to throw the gift back in the deadbeat's face." instead;
		if faeries are touchable, say "The faeries are on your side. Try someone else, maybe." instead;
		if player is in Bassy Abyss, say "Those angst gnats have no chance. You need something much more powerful." instead;
		if location is not Esoteric Coteries, say "There's nobody here worth bumming out with the angst gnats." instead;
		if player has lit up tulip, say "You already have the tulip. That'd be mean." instead;
		say "The angst gnats rise, fitful, like fruit-flies or as furies flit. The nerds go from woots to ows, but it isn't [']til they start complaining to each other or worrying about the poor repressed deadbeats they didn't do enough for that you snatch the lit-up tulip as they scalp-clasp and flail about.[paragraph break]Angered, enraged nerdage! En garde! (Gee, darn, no grenade.) 'Why didn't you [b]ASK[r] about the [b]DARKNESS[r]?' one moans as he swipes for the tulip--but only knocks the keycard out of your hand.[paragraph break]They continue moaning, but now it is about economic equality. You hear one point out that all this sensitivity to social stuff will make them more sensitive for the ladies. Then another one argues that it's a Heisenberg Uncertainty Principle sort of thing that if people know you might be angling for that emo stuff, it won't work.[paragraph break]You're almost sucked in, until you realize you have a city to save, and you chuck your keycard at them in frustration over how dumb smart people can be before running out.";
		now nerds-unwelcome is true;
		moot keycard;
		select-nerd-sol 3;
		now emitter is doubleused;
		the rule succeeds;
	if bastion-evac is true, say "It's empty now." instead;
	now termite emitter is switched off;
	if location is Hotel, say "This place has seen enough abuse. Maybe find one that hasn't?" instead;
	if location is Roarings Garrison, say "That'd be kind of cruel." instead;
	if location is Bile Libe, say "The termites are the wrong sort of pest for the Bile Libe." instead;
	if location is Fo Real Florae, say "Trust me. You don't want to know what the faeries would do back to you." instead;
	if location is Esoteric Coteries, say "You're being watched too closely." instead;
	if location of player is Obtains Boastin Bastion:
		if bastion-evac is true, say "It's already crawling with termites." instead;
		now bastion-evac is true;
		moot poses posse;
		reg-inc;
		say "You activate. They vacate it. 'Raiders, dear sir!' It's like a petard--those who prated, depart and ratchet down the chatter. The emitter shuts with a click after the last termite escapes." instead;
	if location is Elm Train Terminal, say "The city's public transport has taken enough of a beating. It doesn't need that." instead;
	if location is Bassy, say "The termites would put up a valiant but futile effort." instead;
	say "The termites don't have enough to eat here." instead;

book Esoteric Coteries

Esoteric Coteries is a room in Metros. description of Esoteric Coteries is "It's cleverly soundproofed here. It'd make a nice mob combine, except the nerds don't seem like the bad guys, just annoying. Earliest ateliers, where the nerds make odd items to help adventurers like yourself (often well before you know you need them,) lie everywhere but back west.". roomnud of Esoteric Coteries is table of Esoteric Coteries nudges.

to get-tulip:
	now player has the lit up tulip;
	now termite emitter is realized;
	now dead beat deadbeat is realized;

after printing the locale description for Esoteric Coteries when Esoteric Coteries is unvisited:
	reg-inc;
	say "Man! These nerds seem like the real deal. So smart that even (or especially) asking them about irrelevant stuff might help you figure what to do.[paragraph break]";
	close-the-ingress;
	continue the action;

nerds-unwelcome is a truth state that varies.

this is the bother-nerds rule:
	if nerds-unwelcome is true:
		say "You aren't welcome back east[if keycard is moot], and besides, no keycard[end if].";
		the rule fails;
	if player has lit up tulip:
		say "You don't want to put up with the nerds now you've gotten their tulip. They may not want to put up with you, either. Probably mention how they're sure they could figure what you need to do, etc.";
		the rule fails;
	the rule succeeds;

ever-shut is a truth state that varies.

after printing the locale description when ingress is open and ingress is touchable:
	close-the-ingress;
	continue the action;

every turn when signers ingress was open (this is the close signers ingress rule):
	close-the-ingress;

to close-the-ingress:
	if signers ingress is touchable and signers ingress is open:
		now signers ingress is closed;
		say "The [ingress] slides shut.";
		if ever-shut is false:
			now ever-shut is true;
			if player has tulip:
				do nothing;
			else:
				say "[i][bracket]NOTE: the game will just let you walk east now, so don't worry about swiping the card again.[close bracket][r][paragraph break]";

chapter nerds

some nerds are plural-named flippable people in Esoteric Coteries.

to say asknerds: say "[if gadget is cert][rcn][rc][rc][rc][rc][rc][rc][gc][else][bcn][rc][bc][bc][bc][bc][gc][bc][end if]".

to say nerdsask: say "[if gadget is cert][rcn][rc][gc][rc][rc][rc][gc][rc][else][bcn][bc][bc][gc][rc][bc][bc][bc][end if]".

check putting noise bag on nerds:
	if words are in noise bag:
		say "Just opening it is probably less violent, so you do.";
		try opening the noise bag instead;
	say "Too many nerds, too few bags." instead;

before giving something to nerds:
	if player has lit up tulip, say "You have nothing they want, and they gave you what you need." instead;
	if noun is gadget, say "They have their own techie toys to futz with. With which to futz." instead;
	if noun is noise bag:
		say "It's too valuable[if words are not in bag], even with nothing in it[else], so you just open it instead[end if].";
		if words are in bag, try opening bag instead;
		do nothing instead;
	say "They aren't big on material things. They probably prefer to show how smart they are." instead;

initial appearance of nerds is "Some nerds are here, nattering about technology and such. Yet you suspect you could [b]ASK NERDS[r] about something in your way."

description of nerds is "They're sitting around nattering about nerd things. They don't look particularly nerdy, but most of their conversation seems to revolve around how smart other people aren't. They're babblier than most but don't seem bribable. As you look at them, they pause, as if expecting you to [b]ASK NERDS[r] about something."

lgth of nerds is 8. gpos of nerds is 7. rpos of nerds is 2. rect-text of nerds is "D[d1][d1][d1][d1][d1][d1]S". cert-text of nerds is "[d1][d1][d1][d1][d1][d1][d1]S". rgtext of nerds is "[rcn][rc][rc][rc][rc][rc][rc][gc]".

nerd-sol is a number that varies.

to select-nerd-sol (nu - a number):
	get-tulip;
	reg-inc;
	now nerd-sol is nu;
	choose row nu in the table of tulip acquisition methods;
	now chosen entry is true;
	now player is in Undesired Underside;

to say nerd-dark:
	if player does not have tulip:
		say "'What, you want us to do everything for you? We're exhausted from building this soundproofing. But whatever. Here. Have this lit-up tulip. There might be some smart people suffering from the beats.'[paragraph break]'Logical call. I go.' You sneak out back west.";
		select-nerd-sol 1;
	else:
		say "'What?! We gave you the tulip! We can't solve all you dumb people's problems. We have our own!' They go on to bemoan how only dumb people seem to enter politics.[run paragraph on]";

chapter lit up tulip

the lit up tulip is a thing in Esoteric Coteries. printed name is "lit-up tulip".

check taking lit up tulip:
	if nerds are touchable and player does not have tulip:
		say "Someone grabs your wrist. 'No light for the unenlightened! You have to [b]ASK NERDS[r] the right thing before you can get it. What do you want it for? Why? And [b]ASK[r] us, don't [b]TELL[r] us.'[paragraph break]That was kind of abrasive[one of]. You think of the places you haven't been and the obstacles to getting there[or]. You wonder if there's a way to disrupt their little gathering if you can't figure what to ask[or]. These intellectual elites are almost as annoying as the economic elites[cycling]." instead;

check dropping the lit up tulip: say "No. It's useful." instead;

description of lit up tulip is "No fickler flicker or slight lights--its twinkle lets it wink for a long while, with no way to turn it off or on. The brand name is SUNLITE UTENSIL. Cute, but unnecessary to fiddle with, since the tulip is already on.[paragraph break][if bassy abyss is visited]It's helping keep the Bassy Abyss lit[else]It will be useful to help you see in the darkness where the beats lurk[end if]."

check switching off tulip:
	if player does not have the tulip, say "That's the nerds[']." instead;
	say "Don't worry. It's very, very energy efficient. The nerds designed that way." instead;

check switching on tulip: say "It's already lit." instead;

chapter darknessing

darknessing is an action applying to nothing.

understand the command "darkness" as something new.

understand "darkness" as darknessing when player is in esoteric coteries.

carry out darknessing: try asking nerds about "darkness" instead;

chapter Earliest Ateliers

Earliest Ateliers are plural-named bounding boring scenery in Esoteric Coteries. description of Earliest Ateliers is "The ateliers are full of research that makes stuff like...well, that lit-up tulip. But you don't need to worry about how things are made. You need to get that tulip.". bore-text is "You can't do anything meaningful with the Earliest Ateliers. They're for the nerds."

understand "earliest atelier" and "atelier" as Earliest Ateliers.

book Elm Train Terminal

Elm Train Terminal is south of Undesired Underside. It is in Metros. "You're in a disused train station ('ELM') with, err, min-alert customer service. A scrolling display reads PA'S PSAs[if faded ad is unexamined], along with a dead-fad faded ad on it[end if]. [if power-shut is false]It's a bit dark, but not as bad as below, where noise seems to be echoing[else]The tracks are east and, it seems, so is the noise[end if]--it's louder here than anywhere else.[paragraph break]You reckon you should [if controls are not in gin nope opening]eventually [end if]strain for the intimidating darkness below to the east, with more rats in than trains.[paragraph break]High up above to the west, you see [terminal-if-piggy].[paragraph break]The cafe face below seems gnarled and tangled[if controls are in gin nope opening], though you don't need to climb it again[else if cafe-climbed is false], and--well, maybe there's a way to get a closer look up there[end if].[paragraph break]A rail is down to the east[if power-shut is false]--it seems to be sparking quite a bit, so best not to step on it, yet[else]--it's no longer sparking[end if]. You could also go back north[if player is on cafe face], though you may need to get off the cafe face[terminal-if-pigcon] first[end if].". roomnud of Elm Train Terminal is table of Elm Train Terminal nudges. [bold-ok]

check going east in Elm Train Terminal:
	if power-shut is false, say "There may be a rail lair that way, but it's behind a live rail in the darkness. You'd touch it before you got there[if shoes are moot]. Even those rubber shoes won't insulate you[end if]." instead;
	if player does not have tulip, say "You go east but reach a thin ledge. It needs to be lightened before you go further. You have no item to help with that." instead;
	if player does not have sheath and player does not have noise bag, say "You hear an even worse roaring than usual. Nothing you're carrying seems up to defeating it. You double back." instead;
	if player has noise bag and noise bag does not contain words, say "You hear an even worse noise as you walk across the tracks. You run back across where you can reflect how it would be nice if you had something in that noise bag to combat...whatever it is there." instead;
	if player has sheath and sword is not in sheath, say "You hear an even worse noise as you walk across the tracks. You run back across where you can reflect how it would be nice if you had a weapon in that sheath." instead;
	say "Your lit-up tulip gives a welcoming anemic glow. You're ready to tackle whatever's lying craven in the cavern. Unfortunately, the glow, while it helps you avoid tripping over rails, doesn't save you from a foot-passage weakened by the beats. You hear a crack and tumble down.";

to say terminal-if-piggy: say "[if neon pig is touchable]a neon pig embedded in the cafe face above a fading cafe face. It seems terribly inappropriate[else if controls are in gin nope opening]controls working nicely in the opening you made above[else]an empty opening where the neon pig was. Perhaps something could fit in it[end if]"

to say terminal-if-pigcon: say "[if pig is touchable] with the pig[else if controls are not in gin nope opening] and away from the opening you made[else] and away from the controls you put in[end if]".

check going west in Elm Train Terminal: say "The cafe face is in the way. Maybe you could climb it[if cafe-climbed is true] again[end if]." instead;

power-shut is a truth state that varies. power-shut is usually false.

chapter dead fad faded ad

the dead fad faded ad is amusing scenery in Elm Train Terminal. "It proclaims ARTISAN, TSARINA: TRANSIT!!! and also that it's an anti-sot 'I sat not to stain' station. Which doesn't help you.". printed name is "dead-fad faded ad".

chapter Pa's PSA

Pas PSA is amusing scenery in Elm Train Terminal. "[randbla].". printed name is "Pa's PSA". understand "pa" and "pa psa" as Pas PSA.

after examining Pas PSA for the first time:
	say "'I'm learnt,' you think, after reading that.";
	continue the action;

understand "psas" as pas psa.

chapter cafe face

the cafe face is a scenery supporter in Elm Train Terminal. "The cafe face looks rough and tangled, like steel wool."

check touching cafe face: say "The cafe face feels rough and tangled, like steel wool." instead;

does the player mean climbing the cafe face: it is very likely.

check climbing when player is in Elm Train Terminal:
	if noun is not cafe face:
		say "You can only climb the cafe face here. So you try that.";
		try climbing cafe face instead;

cafe-climbed is a truth state that varies.

check taking cafe face when cafe-climbed is false: say "If you mean to [b]CLIMB[r] the cafe face, say so. But it's immovable as-is, and it's the only way up to [if neon pig is in terminal][the neon pig][else][the gin nope opening][end if]." instead;

check climbing cafe face:
	if player is on cafe face, say "You can't see anything worth getting to above the [if neon pig is touchable]neon pig[else]recess[end if]. And you're up dangerously high as is." instead;
	if player has Velcro and player is not wearing the Velcro:
		say "You can't climb up there with bare hands, so you decide to wear the Velcro. [run paragraph on]";
		try silently wearing the Velcro;
	if player is not wearing the Velcro, say "The cafe face is vertical. You'd need something that sticks to the bits of steel wool." instead;
	if cafe-climbed is false:
		say "The Velcro strip is just the thing to climb the cafe face and reach the [if neon pig is touchable]pig[else]small recess[end if].";
		now cafe-climbed is true;
	else:
		say "You climb back up the cafe face.";
	now player is on the cafe face instead;

chapter neon pig

the neon pig is scenery in Elm Train Terminal.

lgth of neon pig is 7. gpos of neon pig is 3. rpos of neon pig is 7. rgtext of neon pig is "[rcn][rc][rc][gc][rc][rc][gc]".  cert-text of neon pig is "-[d1][d1][ast]N[d1][d1][ast]G". rect-text of neon pig is "O[d1][d1][d1][d1][d1][ast]G".

description of neon pig is "This flashing half-sign is [if player is not on cafe face]obviously awful and tacky and worse than nothing, even from this distance. It's eating a bunch of glowing flowers and is probably hogging (sorry) electricity and causing the tracks to sputter[else]even tackier up close and in person, err, pig. Thankfully, the neon isn't painfully bright, but it would be nice to just dispose of it somehow[end if]."

after examining the neon pig:
	if player is on cafe face:
		say "The 'artist' seems to have signed his name--do you want a look?";
		if the player yes-consents:
			say "The swine who conceived this is, according to the red glowing cursive script, named [first custom style]INPENGO[r].";
		else:
			say "Don't blame you.";
	continue the action;

chapter gin nope opening

the gin nope opening is a scenery container. description is "[if controls are in gin nope opening]The opening isn't really an opening any more, what with the controls fitting in nicely[else if player is on cafe face]You can see that the opening isn't just a blank area with a 'GIN NOPE' warning, though it doesn't lead anywhere much. Once you got rid of that neon pig, there are still all kinds of receptacles and such that could be attached to something electrical[else]You look back up at the opening you made. Seems something belongs in there[end if].". the printed name of gin nope opening is "the gin-nope opening"

procedural rule while examining gin nope opening: ignore the examine containers rule.

check climbing the gin nope opening:
	say "(I'm assuming you meant the cafe face leading to it.)";
	try climbing cafe face instead;

chapter tracks

the tracks are plural-named scenery in Elm Train Terminal. understand "rail" and "rails" and "track" as tracks.

check taking tracks:
	if power-shut is false, say "They're charged, and they're too heavy, anyway." instead;
	say "And what would you do with the tracks?[if sword is touchable] You have a sword as a weapon[else] There's got to be a better weapon if you need it[end if]." instead;

check putting something on tracks: say "Good way to get electrocuted. You'll need to find some place to switch them off before you get near them." instead;

after doing something with tracks:
	it-them tracks;
	continue the action;

description of tracks is "[if power-shut is false]Sparking dangerously. If you want to get by, you'll probably have to figure where to shut the tracks off[else]Much calmer now that you switched the power off[end if]. Each rail leads LIAR LAIR, unsurprisingly, so you may have to prepare yourself other ways, too."

section glowing flowers

the glowing flowers are a plural-named amusing boring thing. they are part of the neon pig. description of glowing flowers is "The flowers make the neon pig look tackier, but maybe if you get rid of the neon pig, they'll go away, too.". bore-text is "The glowing flowers aren't important. You probably want to deal with the whole hog (sorry.)".

check taking neon pig: say "You'd let go of the cafe face and fall to your doom." instead;

check inserting into gin nope opening:
	if power-shut is true, say "You've already uncrossed things." instead;
	if player is not on cafe face, say "You'd need to climb the cafe face to do that." instead;
	if noun is keycard, say "You wave the keycard around the opening, since the keycard's too small to fit, but no passage opens." instead;
	if noun is not controls, say "Won't fit, wouldn't stay anyway. You need something squarish and electrical. Or electronic." instead;
	say  "They fit well. One of the red buttons starts blinking and whirring, and you flip the switch by it and, BAM! You hear a rush of power. The tracks below seem to stop sparking.";
	reg-inc;
	now controls are in gin nope opening;
	now controls are realized;
	now gin nope opening is realized;
	now power-shut is true instead;

understand "controls" as gin nope opening when controls are in gin nope opening.

book Bassy Abyss

Bassy Abyss is east of Elm Train Terminal. "Well, this is it[if beats are touchable]. You feel like a movie star (not of a GOOD movie, mind,) with the beats pulsing in the background to lead you on to defeating--oh, wait. The beats ARE what you're trying to defeat[rieuw][else if beast is touchable]. The beast is growling, probably to frighten or distract you into doing nothing constructive. I guess it worked for so long when it was incorporeal and it got lazy[rieuw][else]. You should've been kicked back to the Trips Strip, since you won. This is a BUG[end if].". Abyss is in Metros. roomnud of Bassy Abyss is table of Bassy Abyss nudges.

exits-text of Bassy Abyss is "There's no way out or back. But you should have what you need to defeat the [if beast is touchable]beast[else]beats[end if]."

west of Bassy Abyss is nowhere.

after printing the locale description for abyss when abyss is unvisited:
	set the pronoun it to siren;
	continue the action;

every turn when player is in Bassy Abyss:
	if siren was touchable:
		if siren is touchable, say "[b]RRIIEEUUWW. [r]That siren just won't shut up. Man, you just want to pound it into a powder.";
	if noise bag is touchable and words are in noise bag, say "The words in your noise bag [one of]rattle it enough that you feel a sharp poke in your leg[or]continue to rattle[stopping]."

to say rieuw: say "[if siren is touchable][one of].[paragraph break]A siren off to the side kicks in, to make things even more head-achingly techno up in here. Too loud to get near[or]. And still, that stupid siren near you[stopping][end if]".

chapter aligns signal

the aligns signal is bounding boring scenery in Bassy Abyss. description of aligns signal is "You can't see the aligns signal, but you'll probably feel it if you try to cross it. Maybe if you vanquish the [b-b], it'll vanish.". bore-text is "The aligns signal probably comes from the [b-b]. So it's best just to destroy the [b-b] first."

chapter beats

to say b-b: say "[if beast is in Bassy Abyss]beast[else]beats[end if]"

the beats are a plural-named backdrop. drop-region of beats is Metros. rgtext of beats is "[gcn][gc][gc][rc][rc]". lgth of beats is 5. gpos of beats is 1. rpos of beats is 4. cert-text of beats is "B[ast]E[ast]A[d1][d1]". rect-text of beats is "B[d1][d1][d1][ast]T".

understand "thumping" as beats.

description of beats is "You're sure some idiot would call them funky, but you don't have time for aesthetics."

check taking the beats: say "Hmph. Your ears are already sort of taking a beating, but that's not really the same thing." instead;

check examining beats: if night thing is touchable or player is in Bassy or location of player is Esoteric Coteries, say "You can't hear the beats right now, but then, there's [if nerds are touchable]chatter[else]chatter[end if] to contend with." instead;

chapter beast

The beast is a thing.

does the player mean attacking the beast: it is likely.

description of beast is "It's blob-shaped with one tooth and one eye and inside-out headphones that still transmit music."

Include (-
	has transparent animate
-) when defining beast.

chapter siren

the siren is boring scenery in Bassy Abyss. description of siren is "Blue and red and flashing and very loud. You'd love to pound it into a powder.". rgtext of siren is "[rcn][rc][rc][rc][gc]". lgth of siren is 5. rpos of siren is 5. gpos of siren is 3. cert-text of siren is "-[d1][d1][d1][ast]N". rect-text of siren is "R[d1][d1][d1][ast]N". bore-check of siren is bore-siren rule. bore-text is "The siren is too darn loud, even a few feet away. Getting close to it would incapacitate you.";

this is the bore-siren rule:
	if current action is attacking, now boring-exception is true instead;

chapter resin

some resin is singular-named boring thing. printed name of resin is "some resin[if resin is held] (all over your hands)[end if]". description of resin is "It feels sticky on your hands.". bore-check is bore-resin rule.

this is the bore-resin rule:
	if current action is dropping, say "You'll have to wash it off, and there's no running water nearby." instead;

stickyhanded is a truth state that varies. stickyhanded is usually false.

volume resort

chapter Astral Altars

Astral Altars is a room in Resort. last-loc of Resort is Astral Altars. "While this isn't an ugly place, it's a bit severe. Bright enough, to be sure, but it'd be a bummer if this was your final destination[if feral flare is in astral altars]. The feral flare restricts you from non-magical transport[end if].[paragraph break]Two altars lie here: one holds tiles, and one holds a stile. They both look equally important[if roomroom is visited and kitchen is visited]. It's more spacious than that room or the kitchen, but it's still a prison[end if]. You also think you hear something.". roomnud of Astral Altars is table of Astral Altars nudges.

exits-text of Astral Altars is "[if feral flare is in astral altars]There's no way to escape by running out[else]There seem to be no barriers but also nowhere you'd really want to go[end if]."

understand "altar" as Astral Altars when Astral Altars is visited.

chapter tiles

the tiles are plural-named flippable boring scenery in Astral Altars. description of tiles is "They're all sorts of weird shapes, but the colors are what you find curious. Light brown where you are, in a twenty foot radius, with blue around them. There's a lot of brown beyond that. Maybe if you focus and [b]READ[r] them, you could see more details in da tiles. Yeah, sorry for that one.". bore-text is "There must be some way to magic the stile and/or tiles."

gpos of tiles is 2. rpos of tiles is 1. lgth of tiles is 5. the rgtext of tiles is "[rc][rc][gc][gc][rc]". the lgth of tiles is 5. cert-text of tiles is "-[d1][ast]L[ast]E[d1]". rect-text of tiles is "I[d1][d1][d1][ast]T".

chapter stile

the stile is boring auxiliary scenery in Astral Altars. description of stile is "It's reddish. A stile usually provides passage over something, but it's all by itself here. Maybe it can lead you somewhere else, in a different form.". bore-text is "There must be some way to magic the stile and/or tiles."

gpos of stile is 3. rpos of stile is 2. lgth of stile is 5. the rgtext of stile is "[rc][rc][rc][rc][rc]". the lgth of stile is 5. cert-text of stile is "-[d1][d1][d1][d1]". rect-text of stile is "I[d1][d1][d1][ast]T".

chapter feral flare (appears if you try to escape)

The feral flare is bounding boring scenery. description is "It covers everywhere. Looks like you'll have to find what to do with the altars.". bore-text is "The feral flare is there and likely extremely dangerous to get near. You'll want to try your luck with what's on the altars."

book Leis Isle

Leis Isle is a room in Resort. "[if l2 are in Leis Isle]Well, this is a little more like a proper resort. It's just covered with leis. [end if]An odd low woodland leads all ways except east, where you think you can see distant land[if l2 are not in Leis Isle], and now the leis here were exposed, you probably want to get going that way, too[end if]. The isle is covered with sand and sands and sands, which seem appropriate, if not helpful.". roomnud of Leis Isle is table of Leis Isle nudges.

exits-text of Leis Isle is "You can't leave the Leis Isle without transport.".

printed name of Leis Isle is "[if l2 are in Leis Isle]Leis[else]Lies[end if] Isle".

understand "lies isle" as isle when l2 are not in Leis Isle.

check going in Leis Isle (this is the Isle escape rule):
	if noun is up:
		if player has wings, try going east instead;
		say "You have no way to fly. At least not yet." instead;
	if noun is not east, continue the action; [this leads to the going nowhere rule]
	if player does not have cork and player does not have wings, say "It's too far to swim, and you've got no way to go over the lake or whatever it is." instead;
	unless rock is moot and swing is moot, poss-d;
	if l2 is in Leis Isle, poss-d;
	say "Yes. It's time to move on from the [isle]. You need to find Red Bull Burdell.[paragraph break]";
	if player has wings and wings are not worn:
		say "You put on the wings--for spawning wingspan, of course. [run paragraph on]";
		now player wears the wings;
	if wings are worn:
		say "The wings last just long enough for you to get to the landmass you see before they shred in the wind[if player has cork]. You also, unsurprisingly, drop the cork as you operate your wings[end if]. But it probably doesn't matter now--you're across to some sort of mainland.";
	else:
		say "With the cork under your chest, you dog-paddle to the land you saw from the [isle]. It's soggy and gross from your swim, and the seaweed or whatever has already started to eat at it. You scrabble past a few silent inlets...";
	moot cork;
	moot wings;
	now player is in Rived Drive instead;

to decide which number is leis-isle-transport:
	decide on (boolval of whether or not player has wings) + (boolval of whether or not player has cork);

section leis

the l2 are privately-named plural-named LLPish scenery in Leis Isle. "Looking at the leis, you half forget you came through Store R to beat Red Bull Burdell.". printed name is "leis".

gpos of l2 is 1. rpos of l2 is 4. lgth of l2 is 4. the rgtext of l2 is "[gc][rc][rc][gc]". cert-text of l2 is "L[d1][d1][ast]S". rect-text of l2 is "L[d1][d1][ast]S".

the lies are a privately-named thing. description of lies is "You should not see the actual lies."

understand "leis" as l2 when l2 are in Leis Isle.

found-lies is a truth state that varies.

does the player mean doing something with the l2: it is likely.

to say lei-lala:
	poss-d;
	moot l2;

check taking the l2: say "[lei-lala]The leis wither as you touch them. 'I SEE ILLS!' booms an unseen voice. Yes, the leis were...LIES. Your final resort must be further on." instead; [bold-ok]

chapter an odd low woodland

an odd low woodland is boring scenery in Leis Isle. description of woodland is "[if woodland-revealed is false]You stare at it for a while, and eventually the word DOWNLOAD... starts blinking. Hmm. It doesn't seem real at all[woodrev][else]It still seems computer-generated, wrong[end if].". bore-text is "[if woodland-revealed is true]You already know it's a bit hosed. You don't need to do anything with it[else]It seems imposing. You're not sure you want anything to do with it[end if].".

to say woodrev:
	now woodland-revealed is true;

chapter sand and sands and sands

There is a boring useless thing called sand and sands and sands in Leis Isle. It is scenery. description of the sand is "It's not worth digging through[if cork is touchable or wings are touchable]. You've got something useful, anyway[else]. Maybe the stuff lying around is worthwhile[end if].". bore-text is "No use searching for anything like DNAs or a handset in the sand. Isles have sand, so I sort of had to put it here.".

chapter tree (supporting scenery for swing)

the tree is useless scenery in Leis Isle.

check climbing tree: say "That'll only get you off the sand on the island, not the island." instead; [?? test switch from INSTEAD]

description of tree is "It has ALOFT scratched into it[one of]. An arrow points down to the swing, as if to say, the tree can't help you fly[or][stopping]."

chapter swing - wings

section swing

the swing is a thing in Leis Isle. "A rudimentary swing hangs from a tree here."

check taking the swing: say "It's tied, and you can't climb to untie it." instead;

description of swing is "You can't tell what the swing is made of, but it looks firm and stable. It hangs from a tree branch high up. You won't get to untie it, but you can see something scratched on the tree.". rgtext of swing is "[rcn][rc][rc][rc][rc]". lgth of swing is 5. gpos of swing is 2. rpos of swing is 1. cert-text of swing is "-[d1][d1][d1][d1]". rect-text of swing is "W[d1][d1][d1][ast]S".

section wings

the wings are a plural-named wearable thing.

description of wings is "They're pretty standard magical wings you can flap to make fly. You probably don't even need any fancy verbs or anything--just go the direction you want.".

chapter cork - rock

section rock

the rock is a thing in Leis Isle. "A large-ish rock sits here[if player has wings], but it seems less potentially useful now you have the wings[else] away from the swing[end if]."

description of rock is "It's holey, like a sponge, but not any less dense for that--it's scratched to read FLOAT.". rgtext of rock is "[rcn][gc][rc][gc]". lgth of rock is 4. gpos of rock is 3. rpos of rock is 4. cert-text of rock is "-[ast]O[d1][ast]K". rect-text of rock is "C[d1][d1][ast]K".

check taking the rock: say "It's too heavy. You can't see anything to do with it." instead;

section cork

some cork is a thing. "A chunk of cork is here.". description of cork is "It's porous and really very light.". indefinite article of cork is "some"

chapter verbs to leave

section flying

flying is an action applying to nothing.

understand the command "fly/flap" as something new.

understand "fly" and "flap" as flying.

carry out flying:
	if player has wings and player is in Leis Isle, try going east instead;
	say "You have nothing that can help sustained flying." instead;
	the rule succeeds;

section swiming

swiming is an action applying to nothing.

understand the command "swim" as something new.

understand "swim" as swiming.

carry out swiming:
	if player has cork and player is in Leis Isle, try going east instead;
	if player is in Leis Isle, say "No other land anywhere close. You'd need help to swim." instead;
	say "There's no water nearby to swim in. In which to swim.";
	the rule succeeds;

book Rived Drive

There is a room called Rived Drive. "You've reached a Rived Drive. It's an odd low woodland, or was, until release 5. There's a gigantic [if poles are touchable]set of poles[else]slope you could climb[end if] off to the east[if tool shed is touchable]. Also, a tool shed that's in bad shape[else]. You see toeholds on the [p-s][end if].". Rived Drive is a room in Resort. roomnud of Rived Drive is table of Rived Drive nudges.

does the player mean climbing the poles: it is likely.
does the player mean climbing the slope: it is likely.

to say p-s: say "[if poles are touchable]poles[else]slope[end if]"

to say check-tools:
	if ropes are touchable or grips are touchable:
		say ", but you might be able to just walk up with the tools you have";
	else if ropes are touchable:
		say ", and with just a little, the ropes would provide enough safety";
	else if grips are touchable:
		say ", which the grips give--but it's too risky. You need some safety";
	else:
		say ", so maybe a couple tools--or a way to change the smoothness of the slope--will make it climbable";

check going east in Rived Drive:
	if poles are touchable, say "The poles are too vertical to climb[if toeholds are touchable]. Even with the toeholds[else if ropes are touchable and grips are touchable]. Even with your tools[else if ropes are touchable or grips are touchable], and your one climbing tool wouldn't be quite enough anyway[end if]." instead;
	if toeholds are touchable:
		say "You make it up the [p-s] with some effort and surprisingly little risk. The toeholds are more like footholds, really[if player has grips or player has ropes]. You didn't even need any climbing gadgets--and in fact you drop them in surprise when you see what awaits[end if].";
		if grips are off-stage, poss-d;
		if ropes are off-stage, poss-d;
		now player is in Potshot Hotspot instead;
	if player has ropes and player has grips:
		say "Tying the rope around your waist, throwing it [']til it catches on a rock above, and using the grips, you make it up the slope. What you see makes you drop them in surprise!";
		if tool shed is not moot:
			poss-d;
			poss-d;
		now player is in Potshot Hotspot instead;
	else if player has ropes:
		say "You aren't skilled enough to make it up there with the ropes. You might need one more gadget that lets you hold your place on the slope." instead;
	else if player has grips:
		say "The grips seem stable, but you probably want some safety precaution--something to hold you--just in case." instead;
	say "You try climbing the slope, but it's still a bit too steep for you to hold and get traction. If only you had something that magically appeared on the slope--or failing that, a couple of trusty tools to work your way up." instead;

report going east in Rived Drive:
	say "You won't be able to repo the rope.";
	continue the action;

chapter blow bowl

the blow bowl is bounding boring scenery in Rived Drive. description of blow bowl is "You can see a (different) blow bowl whipping around in pretty much any direction except up the [slo-po].". bore-text is "You don't want to mess with a blow bowl. You can't do much with those letters. There are other things here in Rived Drive.".

chapter poles - slope

section poles

the poles are plural-named scenery in Rived Drive. understand "pole" as poles.

description of poles is "They are too vertical [if toeholds are not touchable]and smooth [end if]to climb. You can't push them--they look quite sturdy and are at least twenty feet tall--but maybe, if they were at an angle..[if tool shed is touchable]. Or you could get a grip somewhere[end if].". lgth of poles is 5. gpos of poles is 5. rpos of poles is 4. rgtext of poles is "[rcn][rc][rc][rc][rc]". cert-text of poles is "-[d1][d1][d1][d1]". rect-text of poles is "S[d1][d1][d1][ast]E".

check climbing poles: try going east instead;

section slope

the slope is scenery.

description of slope is "It's forty-five degrees. Too steep to climb without any traction[if toeholds are touchable], so thank goodness you dismantled that tool shed[else][check-tools][end if]."

check climbing slope: try going east instead;

chapter tool shed - toeholds

section tool shed

the tool shed is scenery in Rived Drive. rgtext of tool shed is "[gcn][gc][rc][rc][rc][rc][rc][rc]". the lgth of tool shed is 8. gpos of tool shed is 1. rpos of tool shed is 5. cert-text of tool shed is "T[ast]O[d1][d1][d1][d1][d1][d1]". rect-text of tool shed is "T[d1][d1][d1][d1][d1][d1][ast]S".

description of tool shed is "It's metal, with no touchable entry or even windows. A forbidding u-lock (a padlock could become an old pack, after all,) is welded to it, just to make sure. You notice outcroppings scattered around the tool shed walls.". understand "toolshed" as tool shed.

the windows are part of the tool shed. the windows are useless and plural-named.

description of windows is "They have held soot enough to turn your eyes all red just thinking of what's inside."

the outcroppings are part of the tool shed. the outcroppings are plural-named.

description of outcroppings is "They are something you could put your feet--no, the edge of them--on. They look sturdy enough to hold you, but the problem is, they don't lead anywhere."

the u lock is a boring thing. the u lock is part of the tool shed. understand "ulock" as u lock. bore-check of u lock is bore-ulock rule. description of u lock is "You probably won't be able to do anything with the u-lock. But you could [b]READ[r] it.". printed name of u lock is "u-lock".

this is the bore-ulock rule:
	if current action is scaning or current action is cring or current action is certifying or current action is rectifying:
		say "The gadget is silent. It's probably the tool shed. You want to scan. Do so?";
		if the player yes-consents:
			try scaning the tool shed instead;
		else:
			say "Okay." instead;
	if action is procedural:
		if current action is reading, continue the action;
		say "The u-lock is too strong to break. You have nothing sharp. Maybe you can get a clue from its brand name. Take a look?";
		say "[if the player yes-consents]It's from the [first custom style]OLD, THOSE[r] company, written in red. Locks should be functional and not beautiful, apparently[else]You don't bother with it[end if]." instead; [bold-ok]

check entering tool shed: say "You couldn't break into any stores, and you're not breaking into the tool shed." instead;

section toeholds

toeholds are a plural-named thing. description of toeholds is "They [if poles are touchable]could almost help you up the poles, if the poles weren't so vertical[else]should make it easy to climb the slope to the east[end if]."

chapter spore - ropes

section spore

the spore is in Rived Drive. "A spore, about a foot long, is here. Imagine what it could grow into."

description of spore is "It looks too delicate as is to support any weight."

check taking the spore: say "You might crush it in its present form." instead;

rgtext of spore is "[rcn][rc][rc][rc][rc]". lgth of spore is 5. rpos of spore is 1. gpos of spore is 4. cert-text of spore is "-[d1][d1][d1][d1]". rect-text of spore is "R[d1][d1][d1][ast]S".

section ropes

some ropes are a plural-named thing.

understand "rope" as ropes.

description of ropes is "They look sturdy enough, knotted at the ends and so forth. You could probably use them to climb up a slope, but you might need some help."

check climbing ropes:
	if poles are touchable, try climbing poles instead;
	if slope is touchable, try climbing slope instead;

chapter sprig - grips

section sprig

the sprig is in Rived Drive. "A sprig of some tree or weed you can't identify is here.".

understand "weed" as sprig when sprig is fungible.

check taking the sprig: say "Uprooting it would probably kill it." instead;

rgtext of sprig is "[rcn][rc][rc][rc][rc]". rpos of sprig is 1. gpos of sprig is 5. lgth of sprig is 5. cert-text of sprig is "-[d1][d1][d1][d1]". rect-text of sprig is "G[d1][d1][d1][ast]S".

description of sprig is "Very fragile in its present form."

section grips

some grips are a plural-named thing.

understand "grip" as grips.

check wearing grips: say "You don't want to keep them on all the time, and when you need them, you won't need to prompt the game to put them on." instead;

description of grips is "They appear to be suction-based, but you wouldn't climb anything TOO steep with them."

book Potshot Hotspot

Potshot Hotspot is east of Rived Drive. Potshot Hotspot is in Resort. printed name of Potshot Hotspot is "[if red bull burdell is moot]Setter Street[else]Potshot Hotspot[end if]". roomnud of Potshot Hotspot is table of Potshot Hotspot nudges.

west of Potshot Hotspot is nothing.

check going inside in Potshot Hotspot: try going east instead;

description of Potshot Hotspot is "An arid, trod dirt road[if red bull burdell is moot]--named after you, who set things straight[end if]. Frust turfs blocks the way north and south. East is siesta, with a bunch of ransom manors. West is Rived Drive, but there's no need to go back.[paragraph break][if riot is touchable][one of]Oh dear. A horde. Uprisers--surprise--protesting YOU! Not just a horde. A full-blown [b]RIOT[r][or]There's a riot going on here! A bunch of people seem to be protesting...you, accusing you of things you'd never be brave enough to do. If only there was a way to depopulate said riot[cycling][else if protest is touchable]Three can still be a protest as well as a crowd, apparently. They're blocking your way east[else if potters are touchable]The potters aren't just pottering around[pottiness][else if red bull burdell is not touchable]It's a nice and peaceful neighborhood now, with Red Bull Burdell gone, but you're not fully home[else]There's one more person with potshots, though[end if].".

after printing the locale description for hotspot when hotspot is unvisited:
	set the pronoun it to riot;
	set the pronoun them to riot;
	continue the action;

to say ri-tri: say "[if riot is touchable]rioters[else]remaining protesters[end if]";

riot-count is a number that varies.

every turn while player is in Potshot Hotspot:
	if potters are in Potshot Hotspot and kilns are not in Potshot Hotspot:
		say "The potters eye you with a mixture of contempt, boredom and expectation.";

to say pottiness:
	say "--[if kilns are touchable]they're working happily at their kilns[else]they have nothing better to do with their hands right now than wave signs and pump their fists and point at you[end if]"

check going west in Potshot Hotspot: say "No going back now." instead;

check going east in Potshot Hotspot:
	if riot is touchable, say "That rabble seems mad at you. You'd better disperse them first." instead;
	if red bull burdell is touchable, say "Not with Red Bull Burdell around, you aren't. That 'get out' is just standard villainous taunting a clever hero can take advantage of." instead;
	if protest is touchable, say "They still outnumber you. Though they're only blocking you out of spite. They just--well, they don't have anything to do, and they're sort of expecting you to give them something better to do than, well, [i]protest[r]." instead;
	if potters are touchable and kilns are not touchable, say "They seem a civil trio, buy as you inch east, they get vitriolic. 'Give us something to do!'" instead;

chapter frust turfs

the frust turfs are plural-named bounding scenery in Potshot Hotspot. "The frust turfs are too treacherous. What you really want is to make it to the ransom manors."

chapter roman manors

ransom manors are plural-named bounding scenery in Potshot Hotspot. "They're off to the east. Your Means Manse must be there somewhere. You'll probably find it with a bit of exploration[if red bull burdell is not moot]. But first, you need to deal with the distraction at hand[end if]."

check entering ransom manors: try going east instead;

chapter riot

the riot is plural-named scenery in Potshot Hotspot. lgth of riot is 4. gpos of riot is 4. rpos of riot is 3. rgtext of riot is "[rcn][rc][rc][rc]". cert-text of riot is "-[d1][d1][d1]". rect-text of riot is "T[d1][d1][ast]O".

check taking riot: say "You couldn't even 'take' a few of them." instead;

Include (-
	has transparent animate
-) when defining riot.

description of the riot is "Well, you have to admit, there's a wide variety of people protesting you, even if they're not explaining why. The riot will probably be blocking your way to the east, but they don't seem to be attacking you, which is nice.[paragraph break]You probably can't calm down the whole riot at once, but it'd be nice to have a way to weed out most of them."

understand "protest" and "protesters" and "crowd" and "uprisers" and "horde" and "rioters" and "rabble" and "mob" as riot when riot is in location of player.

chapter protest

the protest is scenery. printed name of protest is "trio". [sadly we have to do it this way--the trio is already defined with tall trio]

before asking protest about: say "You're not going to reason with them. Maybe reason about them, though." instead;

lgth of protest is 7. gpos of protest is 1. rpos of protest is 6. rgtext of protest is "[gcn][rc][rc][gc][gc][rc][rc]". cert-text of protest is "P[d1][d1][ast]T[ast]E[d1][d1]". rect-text of protest is "P[d1][d1][d1][d1][d1][ast]S".

understand "trio" as protest when riot is not fungible and tall trio is not fungible.

understand "three/protesters/crowd/uprisers/horde/rioters" and "rabble" and "mob" as protest when protest is in location of player. ["touchable" here and below causes a nasty infinite loop.]

Include (-
	has transparent animate
-) when defining protest.

description of protest is "They're all smeared with--huh? Looks like clay? In any event, they don't look like their hearts are in the protest."

chapter potters

the potters are plural-named scenery. understand "trio/protest/three" as potters when potters are fungible.

check giving to potters:
	say "You don't have anything artsy enough for the potters. Perhaps you could make something for them, though." instead;

Include (-
	has transparent animate
-) when defining potters.

before asking potters about: say "They don't want talk. They want action. Maybe even bribery." instead;

description of potters is "[if kilns are touchable]They're happily working away at their kilns[else]They're looking around antsily. But they don't look saintly. They're a bit upset you've given them nothing to do with their hands[end if]."

chapter chain links, china, kilns

section chain links

the chain links are a plural-named thing. printed name of chain links is "[unless china is moot]chain [end if]links".

lgth of chain links is 5. gpos of chain links is 4. rpos of chain links is 5. cert-text of chain links is "-[ast]I[d1][d1][ast]S". rect-text of chain links is "K[d1][d1][d1][ast]S". rgtext of chain links is "[rcn][gc][rc][rc][gc]".

description of chain links is "A bunch of ovular links hooked together. Out of the hands of rioters, it'll cause less achin[']. But they're still more violent things than you'd like, this near the Means Manse."

understand "chains" as chain links when chain links are fungible.

check taking chain links: say "[one of]Get chain = cheating.[paragraph break]Seriously, though. You'd still be outnumbered. They need something to do with their hands[or]Maybe you could change the links, instead[stopping]." instead;

section china

some china is a useless thing. description is "The china is nice and artsy and fragile but probably not useful to you."

section kilns

some kilns are a plural-named thing.

check taking the kilns: say "[one of]Way too heavy. (fourth wall time: try this again for a horrible spoiler pun.)[or]How would you potter around with such heavy things?[stopping]" instead;

description of kilns is "You certainly managed to summon the deluxe version. I guess all that practice earlier in the game, you learned how to give your anagrams OOMPH. You gaze at your work proudly, [if potters are touchable]as do the potters[else]but it's not work you can work with further[end if]."

rule for printing a locale paragraph about kilns:
	if potters are touchable, now kilns are mentioned;

chapter RED BULL BURDELL

Red Bull Burdell is a flippable person. "Red Bull Burdell rages here, snarling and mocking you."

before asking red bull burdell about: say "Realizing he's not going to help you, you mutter, ineffectually, 'Ego? Tut!' [one of]Surprisingly[or]Again[stopping], he is slightly taken aback." instead;

understand "rbb" as Red Bull Burdell.

description of Red Bull Burdell is "His face is covered with crass scars, and he's wearing a t-shirt saying 'THIRST' over some rage gear. He has a toe that sticks out--a partial bare foot inside a fear boot. You think back to Achilles for some reason."

to hello-bull:
	say "[wfak]Tremors re-storm. 'Eh, we fly!' / 'Why flee?' / 'Erm, it's Mister Smiter!' The potters have wheeled their kilns to a mowed meadow.[paragraph break]You hear a shout from the south and mad snorts from a sandstorm, then see a man too ham-nosed to be handsome. He washes down some walnuts of wan lust with liquid from one purple metal can labeled Sado-Soda, then a bottle of Renegade Green-Ade.[paragraph break]'I am RED BULL BURDELL!' he shouts, in a voice neither earthy nor hearty. 'Um, poser? Mo['] super Supremo!'[paragraph break]The size of a large hut, bellowing real thug laughter, he emits 'It's me! I'm set! Sit [']em! Mites-smite times! Roots, torso, rot so!'";
	if talk-quiet is true:
		say "[line break]Boy, he's pretty loud. So loud, you can't tune him out every turn.";
		now talk-quiet is false;
	say "[wfak][line break]'Dream-armed, I took my alum-maul and upgraded to an [']ullberd. I went from Da Prominent to Predominant! Once, you rodents snorted.'[paragraph break]Moving from angered to enraged, he puts his battle tablet inside his rage gear and pulls out his cruelty cutlery forged of [i]iron noir[r].[paragraph break]'I will not waste sweat. GET OUT!!!! My ideal time? IMMEDIATELY! Nuance is nuisance!'[paragraph break]He points at you, booming 'BRED? LUL. DULL REB!'[paragraph break]You muse to yourself: 'Maunder unarmed? Me? Un-rad.' But perhaps Red Bull Burdell has a non-obvious weakness.[line break][wfak]"; [bold-ok]
	now Red Bull Burdell is in Potshot Hotspot;
	set the pronoun him to Red Bull Burdell;
	set the pronoun it to cruelty cutlery;
	moot potters;
	moot kilns;
	now cutlery is in Potshot Hotspot;

section cutlery

the cruelty cutlery is boring amusing scenery. "It's built for cruel looks, not practicality. But it looks impressive. Like, +2 or +3. Not that numbers are your thing, more words. Or that you want to look too closely. Red Bull Burdell has a firm grip on it.". bore-check is bore-cutlery rule.

this is the bore-cutlery rule:
	if current action is taking, say "No, Red Bull Burdell's not letting go. He must have another weakness." instead;

section THIRST t-shirt

the THIRST t shirt is an amusing boring thing. printed name is "THIRST t-shirt". Red Bull Burdell wears the thirst t shirt. description of thirst t shirt is "The THIRST t-shirt doesn't provide much protection, but it establishes Red Bull Burdell as the bad guy.". bore-text is "The THIRST t-shirt is not Red Bull Burdell's weakness."

some rage gear is an amusing boring thing. Red Bull Burdell wears the rage gear. description of rage gear is "It's a rare egg--impenetrable, covering almost all of Red Bull Burdell's body. It's no mere flimsy eager rag to re-garage.[paragraph break]If you're looking for a weakness of Red Bull Burdell's, it's elsewhere.". bore-text of rage gear is "No. The rage gear is sturdy. But it can't cover ALL of Red Bull Burdell.".

the crass scars are an amusing boring plural-named thing. They are part of red bull burdell. description of scars is "Every villain has a few. Red Bull Burdell maxed out his useful attributes, but no amount of leveling up could improve his looks.". bore-text of scars is "He'd want to beat you up for looking at them even if he didn't already want to beat you up.".

section RBB's toe

The toe is part of Red Bull Burdell.

understand "his toe" as toe.

description of toe is "A toe just juts out from Burdell's boot, looking infected."

understand "fear boot" and "fear/boot" and "bare foot" and "bare/foot" as toe.

to say kicks:
	say "Red Bull Burdell kicks the gadget out of the way! You were only able to read [if gadget is cert]six reds, then [bcn][rc][gc][bc][bc][bc][else][bcn][rc][gc][bc][bc][bc], then six reds[end if] as he apparently kicked the switch, too[if gadget-secured is true], which is impressive given how you locked it[end if]. He's not going to let you near it.";
	if gadget is cert:
		now gadget is rect;
	else:
		now gadget is cert;
	if player has gadget, now tagged gadget is in Potshot Hotspot;

section tugtoeing

tuging is an action applying to one thing.

understand the command "tug" as something new.

understand "tug [something]" as tuging.

does the player mean tuging the player: it is very likely.

carry out tuging:
	if red bull burdell is touchable:
		if noun is the player, say "You tug at yourself, nervous from hearing GET OUT yet again." instead;
		if noun is red bull, say "Try a small part of him. Both lexicographically and physically." instead;
		if noun is not toe, say "Right verb, wrong thing." instead;
		if the player's command includes "boot", say "The boot is too big to grab. Think smaller." instead;
		if the player's command matches the regular expression "^(tug)? *toe":
			reg-inc;
			say "'It's ju-jitsu!' you yell, grabbing his toe.[paragraph break]'Gritty try, git,' he says, with a sporting pig snort. 'Ha! Inept!' ... 'Ho-ho! Oohh! ... Oh-oh.'[run paragraph on]";
			say "[wfak][paragraph break]'THE PAIN! HEAP'N IT! AH, INEPT!' Burdell's toe yellows, and he yells 'OW!' A raw 'EEK' proves he's getting weaker. 'Rematch, Mr. Cheat!' he squeaks, failing to reobtain his baritone or, indeed, consider your gender. 'My buffs! FFS, Y'bum!'[paragraph break]'No go, goon! No terms, monster!' You ignore the predator's teardrops through a rain of 'No fair!' and 'Violent, not evil!'[paragraph break]Then he moans 'No Mas,' and a wan NAW! 'I predate adepter. I...'[paragraph break]'Who? How?' you reply. He has no answer. He runs off, presumably to see Dr. Buell for that foot pain.[paragraph break]Ya won! No way![paragraph break]The area feels more ... suburban, now. There's even a name for the street you're on!"; [bold-ok]
			if gadget is in Potshot Hotspot:
				say "[line break]You pick up your gadget, not because you need any more puzzles, but because you may need proof you're, well, you.";
				now player has gadget;
			else:
				say "[line break]There can't be much more to do but go east and just sit around.";
			moot red bull burdell;
			the rule succeeds;
		else:
			say "You need six letters. You're close." instead;
	try pulling the noun instead;
	the rule succeeds;

book Means Manse

Means Manse is east of Potshot Hotspot. "Your new home. Um, yo, here. Now. I could ramble about the marble, praise a spire, or sanction what it contains, but really--you sense one last hurdle hurled in your way to happiness.[paragraph break]The last thing to do is to assure yourself you don't need to do any more. Perhaps you could just praise yourself or make the manse feel a bit more yours or even just ignore the exits (labeled X-ITES in red) and be yourself. There's got to be more than one way to get full closure[if player has gadget][one of]. Your gadget rattles for hopefully the last time[or][stopping][end if].". Means Manse is in Resort. roomnud of Means Manse is table of Means Manse nudges. [bold-ok]

west of Means Manse is nowhere.

exits-text of Means Manse is "There's nowhere else you want to be."

check going outside in Means Manse: say "You just want to get settled into the Means Manse. Maybe there's a way to BE, without having something to do with the exits just yet." instead; [bold-ok]

the X ITES exits are flippable plural-named scenery in Means Manse. "They are tempting you to adventure, but you'd rather be than do.". understand "xites" and "xites exits" as X ITES exits when player is in Means Manse. printed name of X ITES exits is "X-ITES exits".

the marble is amusing scenery in Means Manse. "It makes you calm and relaxed enough to sit back and do nothing with a purpose."

the spire is amusing scenery in Means Manse. "It makes you calm and relaxed enough to sit back and do nothing with a purpose."

check going west in Means Manse: try going east instead; [don't allow the player to back out]

section existing

[the final verb, of course]

existing is an action applying to nothing.

understand the command "exist" as something new.
understand the command "amens" as something new.
understand the command "names" as something new.

understand "exist" as existing.
understand "amens" as existing.
understand "names" as existing.

end-path is a number that varies.

carry out existing:
	if player is in Means Manse:
		if word number 1 in the player's command is "exist":
			say "You kick back and enjoy yourself. That is all that's left to do.";
			now end-path is 0;
		else if word number 1 in the player's command is "names":
			say "You can't help yourself, but it's fun to give names to the places in the Means Manse. It makes you feel more at home. There's the Dusty Study, and that can be the Largely All-Grey Gallery. That's the Farming Framing, and the Highest Heights may be a bit hackneyed, too, but... it's YOUR place, to do as you want with, and it sounds pretty good for now.";
			now end-path is 1;
		else:
			say "You give a few quiet amens to your accomplishments. Perhaps you didn't solve any great philosophical problems, buy hey, you did pretty well.";
			now end-path is 2;
		say "[line break]It's time to become an adventurer emeritus. Resume it? One day, but for now, laurels['] allures are too great. You begin your being binge, a pure-wit write-up of the happiest epitaphs to your vaunted, er, adventure. Where IS that notepad?"; [bold-ok]
		say "[wfak][line break]I...what? End a pad with a deadpan: GIVE A HANG? DANG, I HAVE! TREMENDOUS = ME (ENDS TOUR)."; [bold-ok]
		reg-inc;
		now resort is solved;
		process the notify score changes rule;
		say "[line break]Final rank: a smart gamin['] anagrammist.[paragraph break]...well, final, until you feel like playing the second installment in the Stale Tales Slate: [aro].";
		repeat through table of megachatter:
			sort mytab entry in blurb order;
			now maxidx entry is number of rows in mytab entry;
		end the story finally saying "My Adieu to You: Made It!";
	else:
		say "You continue to exist. Perhaps this ability will come in handy some day." instead;

volume Meta Team

Meta Team is an unsolvable region. [Meta Team is only a region for stuff that's been in play but isn't any more.]

book Emerita Emirate

[this region/room is for items that have been consumed, but we don't want to recycle them. It's easier to check if they're off-stage or moot than to define a boolean. Well, for me, anyway.]

Emerita Emirate is a privately-named room in Meta Team. "[bug-report] I have no idea how you got here. Definitely, let me know, so it doesn't happen to anyone else. This room should be inaccessible. Anything that appears here should be pretty much dealt with. Perhaps I could've used a boolean called dealt-with, but I didn't."

understand "ll/me/ee" as Emerita Emirate when debug-state is true.

instead of doing something in Emerita Emirate: say "You probably need to undo things." instead. [ic] [no-irp]

book Adorb Bardo

[used for the cask and sack to indicate they're not done-with yet]

Adorb Bardo is a privately-named room in Meta Team. "This is the Adorb Bardo, a cute tidy little place where items not yet totally done, like the cask or sack, are hid.[paragraph break]Since you're not an item, you really shouldn't be here."

understand "adorb/bardo" and "adorb bardo" as Adorb Bardo when debug-state is true.

teleporter is privately-named scenery in Adorb Bardo. description is "this is just to signify that flipping an item makes a jump.". it is abstract.

volume parser errors

rewarn-val is a number that varies. rewarn-val is usually 0.
rewarn-next is a number that varies. rewarn-val is usually 2.

writing-warn is a truth state that varies.

this is the writing-warn rule:
	if writing-warn is true, continue the action;
	if the player's command includes "writing":
		ital-say "you don't have to do anything with any writing. Just [b]READ[i] whatever contains the writing.";
		pad-rec "writing";
		reject the player's command;

Rule for printing a parser error when the latest parser error is the not a verb I recognise error: [verb guess]
	abide by the writing-warn rule;
	let myh be the hash of the player's command;
	let myh2 be the hash of word number 1 in the player's command;
	repeat through regana of mrlp:	[this code vacuums up the 2nd use of the oils as well as the alternate use of the chain links. It also allows for basic checks of retries etc.]
		if myh is fullhash entry or myh2 is fullhash entry:
			[d "[myh] [the-from entry] [the-to entry] try.";]
			if the-from entry is available-to-flip:
				[d "the-from [myh] [the-from entry] visible.";]
				if there is an exact-text entry and the player's command matches exact-text entry:
					[d "2nd loop Fliptoing from anagram loop: [the-from entry] with command [the player's command].";]
					try fliptoing the-to entry;
					the rule succeeds;
				if there is a text-back entry and the player's command matches text-back entry:
					[d "2nd loop Flipfroming from anagram loop: [the-from entry] with command [the player's command].";]
					try fliptoing the-from entry;
					the rule succeeds;
				if the-from entry is sliver, break;
				if the-from entry is oils and the-to entry is silo and soil is in location of player, break;
			if the-to entry is touchable and the-to entry is not reversible:
				reject-msg the-to entry;
				do nothing instead;
			d "[myh] [the-from entry] [the-to entry] failed.";
	repeat through regana of mrlp: [this is for an extreme case where you have "attic" instead of "attics"]
		if the-to entry is touchable:
			if there is an exact-text entry and the player's command matches exact-text entry:
				d "3rd pass through: [the-to entry].";
				try fliptoing the-to entry instead;
	if mrlp is forest:
		let pieces be 0;
		let bin-try be 0;
		if the player's command includes "nose" and player has nose:
			increment pieces;
			increase bin-try by 1;
		if the player's command includes "shades" and player has shades:
			increment pieces;
			increase bin-try by 2;
		if the player's command includes "beard" and player has beard:
			increment pieces;
			increase bin-try by 4;
		if pieces > 1:
			if bin-try >= 7:
				say "(Trying all three at once)[line break]";
				try putting nose on shades;
				try putting shades on beard instead;
			if bin-try is 4 or bin-try < 3:
				do nothing;
			else:
				say "It looks like you may be trying to combine the two items. PUT X ON Y is the recommended verb. Would you like to do so right now?";
				if the player yes-consents:
					now ignore-line-break is true;
					if bin-try is 3, try putting nose on shades instead;
					if bin-try is 5, try putting nose on beard instead;
					if bin-try is 6, try putting beard on shades instead;
	if the player's command includes "bugle" and player has the bugle:
		say "Hm, I didn't recognize that verb...maybe you want to [b]PLAY[r] the bugle?";
		if the player yes-consents, try playing the bugle instead;
		say "Okay." instead;
	say "[reject]";

Rule for printing a parser error when the latest parser error is the nothing to do error:
	let A be indexed text;
	now A is "[the player's command]";
	replace the regular expression " .*" in A with "";
	say "There's nothing useful or small enough for you to [A] here.";
	the rule succeeds;

long-word-warned is a truth state that varies. long-word-warned is false.

Rule for printing a parser error when the latest parser error is didn't understand error:
	abide by the writing-warn rule;
	[let hop be hash of the player's command;
	d "[hop] = [the player's command].";]
	if long-word-warned is false:
		if the player's command matches the regular expression "^<a-z>{9}", case insensitively:
			now long-word-warned is true;
			say "You won't need to use a word that long in [this-game]. They should all be eight letters or less, except for [if black door is off-stage]one compound word[else]a compound word you already found[end if].";
			reject the player's command;
	if the player's command includes "writing":
		say "You don't have to do anything with any writing, just [b]READ[r] whatever the writing is on. That said, sorry for not implementing any and all writing fully.";
		reject the player's command;
	if deadbeat is touchable:
		if the player's command includes "hipster":
			say "He trips (tough, when you're sitting down) at being called a hipster. Whether that makes him more likely to be one, I don't know.";
	if mrlp is forest:
		if player has nose and player has beard and player has shades:
			if the player's command includes "nose":
				if the player's command includes "shades":
					if the player's command includes "beard":
						say "(Inform doesn't allow three nouns, but I'll try to munge the three together.)[paragraph break]";
						try putting nose on shades;
						try putting beard on nose;
						the rule succeeds;
	say "[reject]";
	reject the player's command;

book parsing

Rule for printing a parser error when the latest parser error is the can't see any such thing error:
	abide by the writing-warn rule;
	say "[l-or-look-prompt].";
	the rule succeeds;

to say l-or-look-prompt:
	say "You can't see anything like that here. If you're trying to view the room, [b]L[r] or [b]LOOK[r] should work[if number of words in the player's command > 2]";
	if the player's command includes "to" or the player's command includes "behind" or the player's command includes "under":
		say ". Prepositions are also not needed with looking or examining"

Rule for printing a parser error when the latest parser error is the I beg your pardon error: say "[one of]I beg your pardon? ... [or][stopping][one of]Be daring, you pro![or]Broaden your grip.[or]Go yon, bud! Repair![or]Go, do pure brainy![or]Peg your brain. Do![or]Probing, you read...[or]'No prayer, bud,' I go.[or]No drab gripe, you![or]You're poring. Bad.[or]Go, bud. Reap irony![or]Be young or rapid![or]Yip on, drab rogue![or]Go yon, rapid rube![or]Yep, I guard no orb.[or]Yup, I err. Dang. Boo.[or]Broody gape? Ruin![at random]" instead;

curfloor is a number that varies.
curtower is a number that varies.

to decide which indexed text is alf of (A - indexed text):
	let B be indexed text;
	let C be indexed text;
	let L be a list of indexed text;
	let Q be the number of characters in A;
	repeat with X running from 1 to Q:
		let B be character number X in A;
		add B to L;
		sort L;
	repeat with X running from 1 to Q:
		now C is "[C][entry X in L]";
	decide on "[C]";

volume after reading a command

say-check is a truth state that varies. say-check is false.

the block answering rule is not listed in any rulebook.

does the player mean answering the player that: it is very likely.

check answering that: say "[this-game] prefers you to just write the word if you need to say something, or you can ASK X ABOUT Y or TELL X ABOUT Y." instead;

check answering (this is the try to guess what the player should do instead of asking about random stuff rule) :
	if noun is deadbeat and bastion-evac is true and the player's command includes "emitter", try giving emitter to deadbeat instead;
	say "[this-game] doesn't support [b]PERSON[r], [b]X[r] very well. It's better to [b]ASK[r] about a [b]SUBJECT[r], instead."; [?? what does this do]

the block asking rule is not listed in any rulebook.

period-warned is a truth state that varies. period-warned is usually false.

ignore-transcript-nag is a truth state that varies.

cheat-lock-warn is a truth state that varies.

after reading a command:
	if the player's command matches the regular expression "^\p" or the player's command matches the regular expression "^\*":
		if currently transcripting:
			say "Noted.";
			reject the player's command;
		else:
			if ignore-transcript-nag is false:
				say "You've made a comment-style command, but Transcript is off. Type [b]TRANSCRIPT[r] to turn it on, if you wish to make notes. Or if you want to eliminate this nag, for instance if you have an interpreter that does so independently, say yes now. Comments without transcripting may result in confusing errors, especially if they start with a period.";
				if the player yes-consents:
					now ignore-transcript-nag is true;
		if helpdebugflag is true and hintfull is false:
			now just-print is false;
			say "[the player's command]";
			now just-print is true;
	abide by the punctuation-munge rule;
	if period-warned is false:
		if the player's command matches the regular expression "\.":
			say "Small warning--this shouldn't be a problem, but if you use periods to separate a command to do your magic, the parser will have problems. This is fixed in later versions of Inform, but moving ahead proved too sticky. Sorry. That said, normal commands will work okay.[wfak]";
			now period-warned is true;
	let XX be indexed text;
	let XX be the player's command in lower case;
	change the text of the player's command to XX;
[	if Trips Strip is unvisited:
		if the player's command matches "\b?i<mfr>\b":
			say "[reject]";
			reject the player's command;]
	abide by parse-rule of mrlp;
	if say-flag is false and the player's command matches the regular expression "^(summon|say|think|shout|speak|yell) ":
		if the player's command includes " to ":
			do nothing;
		else:
			say "(I[one of]n the future, i[or][stopping]f you want to [b]SAY[r] something, you can just say the single word. To talk to someone, [b]ASK[r] someone [b]ABOUT[r] something.)";
			replace the regular expression "^(say|think|shout|speak|yell) " in XX with "";
			change the text of the player's command to XX;
			now say-flag is true;
	if tell-flag is false and word number 1 in the player's command is "tell":
		say "[bracket]NOTE: [this-game] uses 'ASK X ABOUT Y,' as you don't need to order NPCs around. So the parser will attempt to convert this to asking.[close bracket][line break][wfak]";
		now tell-flag is true;
	repeat with QQ running through available-to-flip things: [this takes care of most of the cases, but when an object like the oils or links is flipped, we need an additional flip. While it gives some speedup (10%) on fallthrough errors, several odd bugs pop up which would require engine reorganization, so it's most efficient to have the code here for the moment. ]
		if QQ is a the-from listed in regana of mrlp:
			d "candidate fungible: [QQ].";
			if the player's command matches exact-text entry:
				d "Found fungible. From = [the-from entry].";
				d "To = [the-to entry].";
				try fliptoing the-to entry;
				the rule succeeds;
	continue the action;

say-flag is a truth state that varies.

tell-flag is a truth state that varies.

cabinet-flip-try is a truth state that varies.

to reject-msg (rejitm - a thing):
	repeat through done reject table of mrlp:
		if rejitm is donething entry:
			say "[donemsg entry][line break]";
			continue the action;
	d "[rejitm] could use a message in [done reject table of mrlp].";
	say "Nothing at all seems to happen this time. You've probably done what you can.";

table of warpcmds
warp-cmd (indexed text)	mystore	myport	myreg	warp-result
"logoi"	store f	scented descent	forest	"You convince the powers that be that you remember all the words from Store F and the forest."
"sooth"	store i	posted depots	sortie	"You convince the powers that be that, in sooth, you really did run through Store I and the sortie earlier."
"say bs"	store m	trade tread	metros	"You convince the powers that be that the idea you didn't solve Store M and the Metros is nonsense."

definition: a thing (called x) is takeable:
	if x is not touchable, decide no;
	if x is part of something, decide no;
	if x is the blue lube, decide no;
	if x is carried, decide no;
	if x is worn, decide no;
	if x is the player, decide no;
	if x is fixed in place, decide no;
	decide yes;

section region specific parsing rules

[this won't speed things up much, but yay organization and nice incremental stuff]

this is the ordeal-loader-parse rule:
	if location of player is rested desert:
		if odor is in location of player and the player's command matches the regular expression "\bdoor\b":
			if number of words in the player's command > 1:
				ital-say "Just the one word will usually be sufficient in the future. But something happens when you focus: door.";
				change the text of the player's command to "door";
	else if location of player is thickest thickets:
		if goat is in location of player and the player's command matches the regular expression "\bgoat\b":
			say "[one of]The goat is off in dreamland and doesn't need disturbing after that meal, whether it was good or bad. Don't fluster the restful[or]Don't fluster the restful[stopping].";
			reject the player's command;
		if deer is in location of player and the player's command matches the regular expression "\bdeer\b":
			say "[one of]The deer is off in dreamland and doesn't need disturbing after that meal, whether it was good or bad. Don't fluster the restful[or]Don't fluster the restful[stopping].";
			reject the player's command;
	else if player is in notices section and gateman is in notices section and cabinet-flip-try is false and hash of the player's command is 384428789:
		say "'Kind of you to try to help the cabinet, but its wounds are too recent,' says Nat Egam.";
		now cabinet-flip-try is true;

this is the stores-parse rule:
	repeat through table of warpcmds:
		if the player's command matches the regular expression "[warp-cmd entry]":
			if myreg entry is solved or myreg entry is bypassed:
				say "Your utterance falls on deaf ears. You've already passed through [mystore entry] and beyond.";
				reject the player's command;
			d "[number of unsolved regions] currently left.";
			if number of unsolved regions is 6 and button-locked is false and player has gadget and cheat-lock-warn is false: [this has to be 6: 3 unsolved stores, roster, Meta Team (blank area) and STORES itself.]
				now cheat-lock-warn is true;
				say "The [b]SECURE[r]/[b]RECUSE[r] button starts blinking. You may need to make sure the gadget's setting is as you want it. Currently, it [if gadget-secured is false]has [b]SECURE[r]/[b]RECUSE[r] off, so you'll need to pick off the remaining store[else if gadget is cert]is set to [b]CERTIFY[r] with [b]SECURE[r]/[b]RECUSE[r] on, and you can skip the final store[else]is set to [b]RECTIFY[r] with [b]SECURE[r]/[b]RECUSE[r] on, and you can skip the final store[end if]. Is this okay?";
				if the player yes-consents:
					do nothing;
				else:
					say "Okay, take time to adjust the gadget as you need. The above warning won't appear again.";
					reject the player's command;
			if number of unsolved regions is 6:
				if button-locked is false:
					say "The [b]SECURE[r]/[b]RECUSE[r] button locks in place as you say the magic word.";
				now button-locked is true;
			say "[warp-result entry][paragraph break]";
			say "You watch [if mystore entry is touchable][mystore entry][else if myport entry is touchable]the [myport entry][end if] crackle, fizzle, and disappear. You've now solved that area, by an entirely different magic than your main power. Hooray!";
			now myreg entry is bypassed;
			if mystore entry is touchable, reg-inc;
			process the notify score changes rule;
			reject the player's command;

this is the forest-parse rule:
	if player has chisel and word number 1 in the player's command is "chisel":
		let XX be indexed text;
		let XX be the player's command in lower case;
		replace the regular expression "^chisel" in XX with "scrape";
		change the text of the player's command to XX;
	if the viler liver is fungible or the River Ville liver is fungible or livers are fungible or Spam is fungible:
		if the player's command matches the regular expression "\bmeat(s)?\b", case insensitively:
			say "There are several kinds of meats here. You'll need to be specific.";
			reject the player's command;

this is the sortie-parse rule:
	if location of player is Trap Part:
		if centrifuge-stopped is false and the player's command matches the regular expression "^<0-9>+$":
			say "(turning the dial)[line break]";
	if location of player is moor and panel is part of silo:
		if the player's command matches the regular expression "buttons", say "One button at a time, please." instead;

this is the metros-parse rule:
	if player is in Fo Real Florae:
		if the player's command matches the text "fairies":
			say "[one of]Something you did or thought causes the freesia faeries to buzz...I guess they're magical enough to detect your misspellings. You feel a tingling, but it passes[or]They can see in your eyes you're spelling things wrong, but they'll have to deal.[or][run paragraph on][stopping]";

volume jumpaheads from Roiling

to get-cool-stuff:
	moot nametag;
	let temp-bool be autosave;
	now autosave is false;
	now autosave is temp-bool; [ this skips the save dialogue ]
	now autosave-known is true;
	now all rooms in Ordeal Loader are visited;
	now player has the gadget;
	now player has the prep paper;
	now player has the saltine;
	now player has the phial;
	now Ordeal Loader is solved;
	move cabinet to Trips Strip;
	move player to trips strip;
	now good-guesses-noted is true;
	now great-guesses-noted is true;

chapter rig one (ignore region)

rigoneing is an action applying to nothing.

understand the command "ignore region" as something new.

understand "ignore region" as rigoneing.

understand "rig one" and "rig one region" as rigoneing.

one-rigged is a truth state that varies.

carry out rigoneing:
	if one-rigged is true, say "You already did." instead;
	if player is not in Busiest Subsite, say "You need to be in the Busiest Subsite for [b]IGNORE REGION[r] to work. Otherwise it is messy to reset variables. So restart and you should be okay." instead;
	say "Warping space and time, you move (back) to the Trips Strip, with all possible goodies from the cabinet...";
	now one-rigged is true;
	get-cool-stuff;
	now Ordeal Loader is bypassed;
	the rule succeeds;

chapter lead in denial (ignore everything up to last region)

denialnaileding is an action applying to nothing.

understand the command "leadin denial" and "lead in denial" as something new.

understand the command "leadin denial nailed" and "lead in denial nailed" as something new.

understand "leadin denial nailed" and "lead in denial nailed" as denialnaileding.
understand "leadin denial" and "lead in denial" as denialnaileding.
understand "leadin nailed" and "lead in nailed" as denialnaileding.

denial is a truth state that varies.

carry out denialnaileding:
	if denial is true, say "You already did." instead;
	if player is not in Busiest Subsite, say "You need to be in the Busiest Subsite for [b]IGNORE REGION[r] to work. Otherwise it is messy to reset variables. So restart and you should be okay." instead;
	say "Warping space and time, you move (back) to the Trips Strip, with all possible goodies from the cabinet, with only Store R left...";
	now forest is bypassed;
	now sortie is bypassed;
	now metros is bypassed;
	moot store f;
	moot scented descent;
	moot store i;
	moot posted depots;
	moot store m;
	moot trade tread;
	get-cool-stuff;
	now cur-score of stores is 3;

volume scanning

chapter scaning

does the player mean rectifying the location: it is very likely.

does the player mean scaning the location:
	if player is in Trips Strip:
		it is likely;
	else:
		say "1.";
		it is very likely;

does the player mean certifying the location: it is very likely.
does the player mean cring the location: it is very likely.

does the player mean scaning a sto: it is very likely.

scaning is an action applying to one thing.

understand the command "scan [something]" as something new.

understand "scan [something]" as scaning.
understand "scan" as scaning.

does the player mean scaning the player:
	if Notices Section is visited:
		it is unlikely;
	it is likely;

to say cant-change: say "[if gateman is touchable][one of]'That means what you have can't be changed.'[or].[stopping][else]Hm, maybe you can't do anything with that.[end if]";

gadget-scanned is a truth state that varies. gadget-scanned is usually false.

check scaning location (this is the air scan rule):
	if player does not have gadget, continue the action;
	if player is in the nick or player is in Esoteric Coteries or player is in moor or player is in roomroom or player is in Means Manse:
		if player has gadget, try examining gadget instead;

before scaning (this is the take gadget if you can rule):
	if player is in Potshot Hotspot and burdell is in Potshot Hotspot: [yeah, could be its own rule, but I'd have to shuffle the rules and blah blah blah]
		if show hows tag is not part of the gadget, say "You disabled it, remember?" instead;
		if gadget is in Potshot Hotspot, say "You can't reach the gadget, but you remember six reds, then [bcn][rc][gc][bc][bc][bc]." instead;
		if player does not have gadget, say "Yes, it'd be nice to have the gadget, now." instead;
		say "[kicks]" instead;
	if player does not have the tagged gadget:
		if gadget is touchable:
			say "(Taking the gadget first)";
			try taking the gadget;
		if player does not have gadget, say "Oops, you should've automatically taken the gadget. This is a bug." instead;
	if player has tagged gadget and gadget is broken, say "You broke it when you cut off the tag." instead;

rgb-yet is a truth state that varies.

nametag-rectified is a truth state that varies. nametag-certified is a truth state that varies.

to say check-other-nt:
	if nametag-rectified is false or nametag-certified is false:
		say ". Maybe the gadget's other setting will give you more information, or maybe the ambiguous information is giving you more than you think"

last-scan is an object that varies. last-scan is nothing.

ever-scan is a truth state that varies.

parse-output is a truth state that varies.

section region-specific rules

this is the stores-scan-check rule:
	if noun is storeall, say "Not all at once." instead;
	if noun is disamb-store, say "Pick a specific store, instead." instead;
	if noun is subway map, say "The reading's different over the map of Mt. Rose than the store proper.[if gadget is cert][gcn][rc][rc][rc][rc][rc][else if gadget is rect][gcn][bc][bc][bc][rc][bc][end if]." instead;

this is the ordeal-loader-scan-check rule:
	if noun is doll house:
		if attics are touchable:
			say "The gadget only seems to register anything when pointed at the attics.";
			try scaning attics instead;
		if static is touchable:
			say "Before your gadget gets close, you begin to pick something up. Perhaps it isn't the doll house you need to do something with. Something ambient--like the static. So you do that.";
			try scaning static instead;
		say "[bug-report] One of attics and static should always be in view." instead;
	if noun is gateman, say "The gadget buzzes.[paragraph break]'What?! Were you hoping to change me back?' harrumphs Nat Egam. 'Maybe ask me questions instead.'" instead;
	if noun is the OR DO door: [ this should not happen! But just in case... ]
		say "You see no activity until you wave your gadget over the bulge. So you leave it there, and you pick something up.[line break]";
		try scaning bulge instead;
	if noun is the broad board, say "The gadget makes no noise[if gateman is touchable][cant-change][else]." instead;

this is the forest-scan-check rule:
	if player is in gnarliest triangles:
		if noun is bucket and ones are in bucket:
			say "The bucket registers four lights, so it is probably the ones inside.";
			try scaning ones instead;
		if noun is shell and dashes are in shell:
			say "The shell registers six lights, so it is probably the dashes inside.";
			try scaning dashes instead;
		if noun is bubble and noughts are in bubble:
			say "The bubble registers seven lights, so it is probably the noughts inside.";
			try scaning noughts instead;
	if noun is banshee:
		if liches are touchable, say "The banshee's annoying but not as obstructive and lethal as the liches. In fact, you can't tell where it is." instead;
	if noun is sandwich, say "Your gadget refuses to remain stable. As if it's trying to read two things at once. Perhaps if you pulled the components apart?" instead;
	if noun is River Ville liver or noun is viler liver, say "You see five red lights in a row--but you only see the [if noun is viler liver]bottom[else]top[end if] half of them. Odd." instead;

this is the sortie-scan-check rule:
	if location of player is trap part:
		if noun is dial:
			if numset of dial is 16, say "Your gadget is silent. You've figured what to do with the dial." instead;
			say "[ok-scan]The gadget, when over the [b]EXITS[r] part, reads [if gadget is cert][rcn][rc][rc][rc][rc] ? ?--flipping between [rcn][rc] and [gcn][gc][else][bcn][bc][bc][bc][gc] ? ?--flipping reds and blues[end if]. The dial's solution probably has the letters [b]EXITS[r] in it, somehow." instead;
	if location of player is The Nick:
		if noun is jail cell graffiti or noun is grate:
			say "You see nothing new other than the latent colors registering.";
			try scaning location of player instead;
	if location of player is kitchen:
		if noun is spear:
			say "That's part of the spearman, really, even with the writing on it. At least, the eight lights from your gadget seem to indicate that. [run paragraph on]";
			try scaning spearman instead;
	if location of player is stiller trellis:
		if noun is scraped wall and scraped wall is not hayfilled, say "The gadget makes a noise and blinks briefly. Perhaps the wall is not ready to be changed." instead;
	if location of player is moor:
		if noun is anapest, say "Yes, this sort of poetry doesn't require deep reading, just scanning. [if player has gadget]But seriously, your gadget seems to blink with the beat[else]Too bad you don't have a device to scan it more practically[end if].";
		if noun is pat:
			if pat-flattered is false:
				say "'Fie!' yells Pat. 'My poetic voice transcends technology! I am sure such a fancy gadget could not even discern the meter is [b]ANAPEST[r]!' Then he gets back to recitation.[paragraph break]Perhaps if you asked Pat about himself or the beats or the poetry, he might let you scan him." instead;
			if first-scan-okay is false, say "'Of course, that thing, whatever it is, cannot recognize why I deserve to be called [b]SANE PAT[r] despite my wondrous visions. But perhaps it will help your less creative mind appreciate my wellsprings of verbal virtuosity.'[line break]";
	if noun is poem and poem is not folded:
		if smilies are part of the poem:
			say "The gadget is more active on the right edge where the smilies are, so you move it over there.";
			try examining the smilies instead;
		say "The gadget makes an odd noise. Perhaps the poem's in some weird state between forms. If poems can mean different things, they can probably become different things." instead;
	if noun is poem and poem is not folded:
		if smilies are touchable:
			say "Your gadget doesn't do much [']til it's over the smilies. So you look more closely at those.";
			try scaning smilies instead;
	if noun is expo flier, say "[if anapest is in moor]Your gadget makes no noise, but you can't help feeling the name St. Paean is totally wrong[else]No sound now you dealt with Pat[end if]." instead;

this is the metros-scan-check rule:
	if location of player is Undesired Underside:
		if noun is friend finder, say "It registers nothing. Perhaps it's there to scan you or something in your inventory." instead;
	if location of player is The Ol Hotel:
		if noun is night thing, say "No way you're getting close enough." instead;
	if location of player is Roarings Garrison:
		if noun is deadbeat or noun is designer reedings, say "'Whoah, don't tase me, bro. I have civil rights!'" instead;
	if location of player is Fo Real Florae:
		if noun is faeries, say "You sense that would be a breach of some magical etiquette you don't understand." instead;
		say "[one of]You feel a bit self-conscious waving your gadget around such intrinsically magical beings. But they do not seem to mind.[paragraph break][or][stopping]";
	if location of player is Esoteric Coteries:
		if noun is nerds, say "[ok-scan][one of]'Whoah! Hey! What's this, a Skansder?' You turn red, explaining you don't know what that is. 'You didn't make that, did you? Don't know the specifications? Thought not.'[or]'Still messing with technology over your head, eh? Like that Skansder you don't know what it is.'[stopping][line break]As the nerds ask other questions, the gadget lights up, and you notice [nerdsask], until the nerds ask no more. Then it goes back to [asknerds] as you think how, why and what to ask nerds." instead;
		if noun is tulip, say "[one of]One of the nerds demands to see your gadget. They poke around at it, babble about the sort of capacitors and resistors needed to get the thing working, convince you they know more about it than you do, and hand it back[or]'Insanity is doing the same thing over and over again and expecting to get different results!' one of them says. Stiff high-fives follow all around.[or]You hear exasperated sighs.[stopping]." instead;
	if noun is neon pig or noun is gin nope opening:
		if player is not on cafe face, say "The [if noun is neon pig][pig][else][gin nope][end if] doesn't register. Maybe you're too far away, and you'd have to climb the cafe face to get near it." instead;
	if noun is barcode:
		say "[one of]You receive a rush of insight unlike anything anywhere else in the game![or]You receive more practical insight![stopping][paragraph break]";
		say "[one of]Bread, $1 per loaf[or]Condensed cream of mushroom soup, $.39[or]Cabbage, $.19/lb[or]Ice Cream, $2.50/gallon[or]Jack's Pizza, 5/$10, limit 5[or]OnCor entrees, $2[or]Hot dogs, 89 cents[or]7 oz. pasta, 3/$1[or]Milk, $1.99/gallon[or]Root Beer, $.68 per liter bottle[at random] at BreadCo. Much better than [one of]Winn-Dixie[or]Strack and Van Til[or]SuperFresh[or]Marsh[or]Kroger[or]Piggly Wiggly[or]Jewel Finer Foods[or]Aldi[or]Safeway[or]Moo and Oink[at random]!" instead;
	if location of player is Obtains Boastin Bastion:
		if noun is candelabra, say "Way too high up." instead;
		if noun is antlers:
			say "You scan the antlers all sneaky-like, so nobody thinks you're trying anything subversive. They look useless, but you get a reading.";
	if noun is corn, check-deadbeat-corn;

this is the resort-scan-check rule:
	if location of player is rived drive:
		if noun is windows, say "[ok-scan]The windows that held soot turn up [if gadget is cert][rc][rc][rc][rc][rc][rc][rc][rc][else][bc][bc][bc][bc][rc][bc][bc][gc][end if].";
		if noun is outcroppings, say "[ok-scan]They don't seem to give a different scan than the rest of the tool shed. But you might be able to climb on them, if you were smaller. They show [if gadget is cert][gc][gc][rc][rc][rc][rc][rc][rc][else][gc][bc][bc][bc][rc][bc][bc][bc][end if][shed-rect-clue]. Maybe they are a clue for what the tool shed can become." instead;
	if location of player is means manse:
		if noun is X ITES exits, try scaning the location instead;

to say shed-rect-clue: say "[if parse-output is true and gadget is rect]. Hmm. T[d1][d1][d1][d1][d1][d1]S[end if]".

to say ok-scan: now first-scan-okay is true;

section main rule

this is the basic scaning game state checks rule:
	if Notices Section is not visited and mrlp is not Ordeal Loader, say "[bug-report] You should not get to this code before the Notices Section. You probably jumped away from the Ordeal Loader or (hopefully) used a testing command that will not show in the release" instead;
	if player has gadget:
		now gadget-scanned is true;
	if player does not have gadget:
		if Notices Section is unvisited, say "[reject]" instead;
		say "You'll need the gadget to scan anything." instead;

this is the basic scaning item checks rule: [ this is for things that can cross regions ]
	now scanned-for-gateman is true;
	if noun is tin foil info lit, say "Nothing happens. Which just proves the paper's premise that this is all too ridiculous, amirite?" instead;
	if noun is cabinet, say "Two beeps. It's [rcn][rc][rc][rc][rc][rc][gc] over most of the cabinet but[if number of solved regions < 2] the cabinet seems sensitive about where it is acne-bit and red." instead;
	if noun is part of the gadget, say "If that part of the gadget were detectable, you'd have gone crazy from the beeping by now." instead;
	if noun is gadget:
		if the player's command matches "scan":
			say "If the gadget were detectable, you'd have gone crazy from the beeping by now.";
		else if button-locked is true:
			say "You can't modify the gadget now it's locked in.";
		else:
			say "You don't need to use a command to set the gadget specifically. You can [b]RECTIFY[r] or [b]CERTIFY[r] it as you please.";
		the rule succeeds;
	if noun is the player:
		if warts are touchable:
			say "Hm, the warts are registering. [no line break]";
			try scaning warts instead;
		say "The gadget remains silent as you scan yourself. You're either too awesome for any funny changes, or too boring and inflexible. Whichever." instead;
	if noun is inflexible, say "The Recent Center goes grey for a second before returning to its former state. Maybe you don't need to shuffle [the noun] around." instead;

carry out scaning:
	d "scaning [noun].";
	abide by the r-rc-c umbrella check rule;
	abide by the basic scaning game state checks rule;
	abide by the basic scaning item checks rule;
	abide by the prescan check rule of mrlp;
	now last-scan is noun; [DIVIDING LINE FOR SUCCESSFUL SCAN]
	now first-scan-okay is true;
	now ever-scan is true;
	now gadget is examined;
	now last-was-cert is whether or not gadget is cert;
	now last-obj is noun;
	if noun is nametag, abide by the nametag scanning rule;
	if gadget is cert:
		say "[if noun is begonias or noun is roadblock or noun is acne bit cabinet]You notice the gadget beeps twice. Hmm[else]The gadget beeps once[end if]. A series of lights comes across:[if sr-acc is false] [end if][rgtext of noun][one of] (R = red, G = green)[or][stopping][if parse-output is true]. Hmm, that means [cert-text of noun][end if].";
		kibitz noun;
		check-marcos instead;
	else if gadget is rect:
		say "Most of the screen goes blue. Then a green dot and red dot bounce left and right across the gadget screen until they stabilize: ";
		say "[rgbtext of noun]";
		if rgb-yet is false:
			say " (R = red, G = green, B = blue)";
			now rgb-yet is true;
		say ".";
		kibitz noun;
		check-marcos instead;
	buzz-or-no-noise noun instead;

this is the nametag scanning rule:
	if gadget is rect:
		now nametag-rectified is true;
		say "The gadget's display is a bit of a mess. It starts at [bcn][bc][rc][bc][gc][bc][bc] and goes to [gcn][bc][bc][bc][bc][bc][rc] and back[check-other-nt]." instead;
	else if gadget is cert:
		now nametag-certified is true;

son-nos is a truth state that varies.

to kibitz (sca - a thing):
	if kibitz-on-scan is false, continue the action;
	repeat through table of kibitzes:
		if sca is kib entry:
			unless current action is cring, say "[line break]";
			say "[helpy entry][line break]";
			break;
	note-spaces;

to note-spaces:
	if first-scan-okay is true:
		if son-nos is false and sr-acc is false:
			say "[line break]";
			ital-say "You can toggle spaces between the letters with [b]SPACE(S)[r], or you can set them directly with [b]SPACE(S) ON[r]/[b]NO SPACE(S)[r], or [b]SON[r]/[b]NOS[r] for short."; [bold-ok]
			now son-nos is true;
			pad-rec-q "spaces";

table of kibitzes
kib	helpy
whiff of stew	"Four entries. Whiff and smell are five letters. The reading must rely on what the smell is."
aroma of teas	"Four entries. Aroma and smell are five letters. The reading must rely on what the smell is."
attics	"Hmm. You thought the attics would be more appropriate for the doll house, but maybe the gadget detects you can change back, too."
motto	"Since Motto is only five letters, you wonder what's up, but it's labeled [b]A MOTTO[r]."
tall trio	"You scanned each of the tall trio, and the readout didn't change."
reading	"[read-drain] the drainage."
drainage	"[read-drain] a reading."

to say read-drain: say "Hmm, you may need a lot to figure this. Maybe if you're stuck, you can combine this with"

to say rgbtext of (sca - a thing):
	if scan-to-header is true:
		repeat with Q running from 1 to lgth of sca:
			say "[if sr-acc is true] [end if][if gpos of sca is Q]G[else if rpos of sca is Q]R[else]B[end if]";
		continue the action;
	say "[if gpos of sca is 1][gc][else if rpos of sca is 1][rc][else][bc][end if]";
	repeat with Q running from 2 to lgth of sca:
		say "[if gpos of sca is Q][gcn][else if rpos of sca is Q][rcn][else][bcn]";
	if parse-output is true:
		say "Hmm, that means [if gadget is cert][cert-text of sca][else][rect-text of sca]. ";

yes-scans is a number that varies.

to check-marcos:
	if marcos-trumped is false and button-locked is true:
		if player is not in Trips Strip and strip is visited:
			if the player's command includes "(rectify|certify)":
				increment yes-scans;
				if yes-scans > 5:
					say "You hear a voice. 'Psst! Name's Marcos! Got some help with macros! You can simplify things with [if gadget is rect][b]RECT[r] or [b]REC[r] or [b]R[r][else][b]CERT[r] or [b]CER[r] or [b]C[r][end if].'";

volume dialogue

persuasion rule for asking deadbeat to try doing something:
	if bastion-evac is false:
		say "You don't need to order people around in [this-game], and the deadbeat is not friendly enough.";
		the rule fails;
	if player has emitter and the player's command includes "emitter":
		try giving the emitter to the deadbeat;
		the rule fails;

persuasion rule for asking a person to try doing something:
	say "You don't need to order people around in [this-game]. If you wanted to ask them about something, [b]ASK[r] (person) [b]ABOUT[r] (object) is the preferred syntax.";
	the rule fails;

asking generically is an action applying to one topic. Understand "ask about [text]" or "talk about [text]" or "a [text]" as asking generically.

objasking generically is an action applying to one visible thing. Understand "ask about [any thing]" or "talk about [any thing]" or "a [any thing]" as objasking generically.

a-warn is a truth state that varies.

to say if-magnet:
	if nametag is touchable and word number 2 in the player's command is "magnet":
		say ". In particular, 'a magnet' is a good guess, but it's not what the nametag ultimately needs to be. Allowing a leading article might make puzzles potentially trickier, with two word jumbles to consider instead of one"

this is the a-warn rule:
	if a-warn is false and word number 1 in the player's command is "a":
		say "You never need to use the article 'a' when changing things up[if-magnet].[paragraph break]As a note, the [b]A[r] command is shorthand for [b]ASK ABOUT[r].";
		now a-warn is true;
		the rule fails;

check objasking generically (This is the check for only one sensible object converser rule):
	if the number of NPCish persons is 0:
		repeat with X running through touchable scenery:
			repeat through table of unmatched topic responses:
				if X is the default-talker entry, say "[gen-blah entry][line break]" instead;
		abide by the a-warn rule;
		say "You inquire into your own thoughts. You gain no illumination." instead;
	if the number of NPCish persons is 1:
		d "Asking [random NPCish person] about [the noun].";
		try objasking a random NPCish person about the noun instead;
	if debug-state is true, say "[list of NPCish people].";
	say "Ambiguous--more than two people here." instead;

does the player mean asking scenery about: it is unlikely.

does the player mean asking the player about: it is very unlikely.

objasking it about is an action applying to one thing and one visible thing.

understand the command "ask [thing] about [any thing]" as something new.
understand "ask [thing] about [any thing]" as objasking it about.

understand the command "talk to [thing] about [any thing]" as something new.
understand "talk to [thing] about [any thing]" as objasking it about.

understand the command "tell [thing] about [any thing]" as something new.
understand "tell [thing] about [any thing]" as objasking it about.

understand the command "ask [thing] about [text]" as something new.
understand "ask [thing] about [text]" as asking it about.

understand the command "talk to [thing] about [text]" as something new.
understand "talk to [thing] about [text]" as asking it about.

understand the command "tell [thing] about [text]" as something new.
understand "tell [thing] about [text]" as asking it about.

Check asking generically (This is the check for only one sensible converser rule):
	if the number of npcish people is 0:
		repeat with X running through touchable scenery:
			repeat through table of unmatched topic responses:
				if X is the default-talker entry, say "[gen-blah entry][line break]" instead;
		abide by the a-warn rule;
		say "You inquire into your own thoughts. You gain no illumination." instead;
	if the number of NPCish people is 1:
		try asking a random NPCish person about the topic understood instead;
	if debug-state is true, say "[list of NPCish people].";
	say "Ambiguous--more than two people here." instead;

to say lazy-adv: say "'Scan something. Even if it doesn't give any readings. Like that doll house. Or even me. Then come back and ask for details. You're an adventurer...do a little experimenting. The gadget won't explode, trust me.' It shouldn't be too hard to humor him.".

check objasking it about (This is the check for object information rule): [ note: there is no item1 -- item2 parallel asking, so if something is missing we need NPC/item1/"text" to be duplicated by NPC/item2/"text"]
	if noun is gateman:
		if second noun is gadget or second noun is part of the gadget:
			if scanned-for-gateman is false, say "[lazy-adv]" instead;
	repeat through table of matched thing responses:
		if second noun is the subject-thing entry:
			if noun is the asked-person entry:
				say "[npc-text entry][line break]";
				if noun is gateman and second noun is saltine, pad-rec "xx";
				the rule succeeds;
	repeat through table of unmatched thing responses:
		if noun is gateman:
			if second noun is not goat:
				if second noun is in Rested Desert, say "'In the past now. Nothing more to learn from that.'" instead;
				if second noun is in Busiest Subsite, say "You'd know more about that than he would." instead;
			if second noun is touchable, say "Examining would probably work better." instead;
		if noun is asked-person entry, say "[npc-text entry][line break]" instead;
	repeat through table of unmatched topic responses:
		if noun is default-talker entry, say "[gen-blah entry][line break]" instead;
	if noun is notepad, try consulting notepad about "[second noun]" instead;
	if noun is not a person, say "You can only ask people about things." instead;
	say "[bug-report]!!! [noun] does not have a default entry." instead;

stupid-temp is text that varies.

check asking about (This is the check for specific topics rule):
	if the topic understood is a topic listed in the table of matched topic responses:
		if asked-person entry is the noun:
			if scanned-for-gateman is false:
				if topic understood matches "certify" or topic understood matches "rectify", say "[lazy-adv]" instead;
			say "[npc-text entry][line break]" instead;
			[would like to pad-rec "[what-pad-gen entry]" instead; but inform is confused with 2 tables]
			do nothing instead;
	repeat through table of unmatched topic responses:
		if the noun is default-talker entry, say "[gen-blah entry][line break]" instead;
	if noun is notepad, try consulting notepad about "[second noun]" instead;
	if noun is not a person, say "You can only ask people about things." instead;
	say "[bug-report] no default blather for [noun].";

to say goat-toga:
	if toga is not moot:
		say "'Oh, yes, the toga could've become a [b]GOAT[r].'";
	else:
		say "[one of]'Hm, yes, good job with the goat. It'll be safe and happy. Oh, for the record, the gadget would've said Red-Green-Red-Red in Certify mode and Red-Blue-Green-Blue in Rectify.'[or][dont-dwell of goat].[stopping]";
	pad-rec "the goat";

to say reed-deer:
	if reed is not moot:
		say "'Oh, yes, the reed could've become a [b]DEER[r].'";
	else:
		say "[one of]'Hm, yes, good job with the deer. It'll be safe and happy. Oh, for the record, the gadget would've said Red-Green-Green-Red in Certify mode and Red-Blue-Blue-Green in Rectify.'[or][dont-dwell of deer].[stopping]";

to say dont-dwell of (th - a thing):
	say "You don't wish to dwell too much on past accomplishments. It's probably better to [b]PAD [printed name of th in upper case][r] for the important information"

check asking gateman about "world peace": say "That goal's a slog, but I've got confidence." instead;

description of gateman is "His sober robes are tan, but they're not important. 'Stop staring!' he booms. [if player has tagged gadget]'You're ready to go through that gateway, though you can ask me for help.'[else]'You might need some aids. Get the gadget from the cabinet.'[end if]"

to say your-job: say "[one of]'We need someone to free us from the marauding tyranny of Red Bull Burdell! He has made a plowyard out of Yorpwald! Force alone cannot undo him!'[or]'You. Red Bull Burdell. Win.'[stopping]".

to say oma-gate:
	if player does not have gadget:
		say "'I'd get that gadget in the cabinet before entering[if player does not have phial]. And the phial, too[end if]. I can help, if you ask. But I can't force you to do anything.'[run paragraph on][line break]";
		now lube-asked is true;
	else:
		if lube-asked is false:
			say "'Well, you've got the gadget, but maybe you want the phial. I think the cabinet knows I trust you, so you can just go grab it.";
			now lube-asked is true;
			continue the action;
		say "'It's safe. Don't worry! Get going through there!'[run paragraph on][line break]";

check asking the player about: say "If only learning were so easy." instead;

does the player mean doing something with the merchandise when the merchandise is touchable: it is very likely.

to say faery-flower: say "[if fairy-worthy is true]'We have faith in you! You will make the city safe to grow flowers again!'[else]'We trade in flowers! Flowers we have for flowers we want! What do you have?'[end if][run paragraph on]"

lube-asked is a truth state that varies.

to say about-lube:
	if player has the phial:
		say "'Good, good, you got the phial. Remember to [b]ANGLE[r] to see into things or [b]GLEAN[r] to see around as need be.'";
	else:
		say "'[if lube-asked is true and player does not have lube]You can just take it. [else if cabinet-bit-me is true]Cabinet not letting you have it, eh? [end if][one of]The phial with the lube can grease your way to a solution.' He coughs. 'Sorry.'[paragraph break][or][stopping]'If you [b]ANGLE[r] the lube just right so it reflects a light source, you can see what you can change. If you [b]GLEAN[r], you see what you should be doing. How your story unfolds[if lube-asked is false].' He walks over to the cabinet, pats it, and says a few words. 'You can take the phial now.' So you do.[else].'[end if]";
	now player has phial;
	pad-rec-lump "lube";
	pad-rec-lump "angle";
	pad-rec "glean";
	now lube-asked is true;

after objasking about (this is the post-rec talking rule):
	if noun is gateman and second noun is saltine, pad-rec "xx";
	continue the action;

table of matched thing responses [tsb]
asked-person	subject-thing	npc-text
gateman	redness	"[one of]'Red writing, like Red Bull Burdell, is totally wrong in many ways. So many, it can be a help.'[paragraph break]He shows you some calculations that any such writing can be expected to eliminate 60% of your possible choices, because 1 minus 1/x to the x is 1/e, more if there's a duplicate letter--the Inclusion-Exclusion Principle applies here, and you nod as he mentions the exact numbers aren't important, but every clue helps.[ask-red][or]'Hm. To keep it simple, red is wrong. And that helps you eliminate wrong guesses.'[stopping]"
gateman	board	"'Good idea to take notes on it. But I can tell you about other stuff. Like [if player has gadget]your gadget[else]the gadget in the cabinet[end if]. Or even how it works.'"
gateman	doll house	"[if attics are off-stage]'A nice warm-up puzzle, but if you're in a hurry, I'll respect that too. Not the doll house that needs changing.'[else]'You don't need to take it with or anything. Nice job with it, though.'[end if]"
gateman	static	"'[if attics are off-stage]If it's kind of annoying, you can get rid of it. Or you should be able to. But you don't have to.[else if attics are touchable]Good job getting rid of it.[else]Err...I know you're in a hurry, but can if you could change it back to the attics before you get going, my ears would thank you.[end if]'"
gateman	attics	"'[if attics are off-stage]Yes. Do--whatever it is--to make them appear. I hope you haven't lost your powers.[else if attics are touchable]They're more appropriate to the doll house, definitely.[else]I kind of prefer [']em to the static. You wouldn't mind switching them back?[end if]'"
gateman	blue lube	"[about-lube]"
gateman	phail phial	"[about-lube]"
gateman	prep paper	"'No, I'm not sure how we all know this. There's a lot of high-level magic theory. And if we knew the details and had your powers, maybe one of us could try. But--well, it's a start.'"
gateman	Red Bull Burdell	"[one of]'Like he was thought up by a demonic comedian. Made a desireable age disagreeable. Seemed a poseur when he uprose from abuser to saboteur. He'd make a poignant nag point, acting like a rowdy pal. Heard his cleats in the castle as he did something called 'Leveling up.' Maximizing stuff called hit points and magic points. Things went awry before we were wary.' You sense there's more, if you can bear it.[or]'Rum toil became turmoil. We let the ploy draw us in...then Prowl Day made the world pay. Against Raw Rori, a warrior, the devil lived. We ignored eroding. He humbled Bud Helm. We have lost LOTS because of him. Mega-sad damages. He beat us all. Rooftops of troops on Fort Oops. Profs too. Auctioned Education. I cautioned...' His eyes grow mistened. 'Ten dimes say it's end times. We've waited for an upturn to turn up...'[or]'The time for talk is over.'[stopping][one of][line break][rbb][or][stopping]" [desireable is that way to make a corny anagram, so keep it]
gateman	tip	"[tip-dialogue]"
gateman	pit	"[tip-dialogue]"
gateman	tin foil info lit	"'Sane Sean. Hmph. Either he's dumb enough to believe Red Bull Burdell's a good guy, or he's a deep undercover double agent.'"
gateman	Bud Helm	"'Yeah, we were surprised the bum held Bud Helm.  Bud Helm bled, hum? He's a broken man, now.'"
gateman	Raw Rori	"'Pure strength. That won't get the job done here.'"
gateman	pen	"[one of]'How thoughtful! Nobody's asked me for my autograph for a long time! Wait, we don't have time for that nonsense.'[or]You probably know more about the pen than he does.[stopping]"
gateman	dope tan notepad	"'Good choice, taking notes.'"
gateman	new land	"'I can't tell you everything about it. But you'll see for yourself.'"
gateman	nametag	"'Oh, did you have problems with it? Sorry. I'd have helped, but I was--I mean, I wasn't [i]at all[r].' He rolls his eyes."
gateman	yourself	"[your-job][run paragraph on]"
gateman	gateman	"'Once I solved one of those hero mills with more hills...' he blinks. 'I'm not important. You are. And what you can do.'"
gateman	arrow	"'That's just to show [b]SECURE[r]/[b]RECUSE[r] is linked to whether you can change between [b]RECTIFY[r] and [b]CERTIFY[r].'"
gateman	knot	"'It's good and tight. Case it gets joggled while you adventure. If the gadget isn't tagged, it loses its magic because, well...'"
gateman	examples	"'Hm, [b]LEMON[r] and [b]MELON[r] have three letters in common, and they're all green. The two that switch are red. So that's not bad. [b]PASTE[r] and [b]TAPES[r], on the other hand...the green T and red S on the left map to the first last letters on the right, and the P and E are green and red and map to the first and last letters on the left.'"
gateman	disclaimer	"'Necessary legalese. But really, use the gadget as often or little as you want or need. Nobody will judge.'"
gateman	Recent Center	"'The Recent Center is a fancy name for a screen. It will light up when you scan something relevant, and that data will stay.'"
gateman	handle	"You can't imagine anything tricky about the handle, so you decide not to ask."
gateman	goat	"[goat-toga]"
gateman	toga	"[goat-toga]"
gateman	reed	"[reed-deer]"
gateman	deer	"[reed-deer]"
gateman	getaway	"[oma-gate]"
gateman	gadget	"'[one of]Powerful. Not as a weapon. Won't be many fights. But you can [b]SCAN[r] an object with it, and it won't break down from over-use. Use it as much or as little as you want. There's concrete problems, then there's how many hints make your quest most fun, and that's up to you[or]It can [b]SCAN[r] other things[stopping]. Ask about a specific button if you're interested. Not your only source of clues, either. There's also the color red.'"
gateman	s-r	"'Could make things tougher at first, but then easier, maybe. Switch it, and you can only [b]CERTIFY[r] or [b]RECTIFY[r], but not both. Later, though, you can [b]RECUSE[r] yourself later from one of the three areas to conquer. It'll warn you, too, by flashing before it locks. Magic fields might do that, midway through an adventure or so.'[pad-sec]"
gateman	noise bag	"'Cities gotta have noise but there's one just constantly has it. Burdell's behind it, too, claiming he couldn't have leveled up without that techno-piffle and people get used to it if they try. Actually calls it music. He's got a lieutenant to enforce it.'" [!! HACK ... NOISE BAG comes before NOISE]
gateman	saltine	"'Miniscule, but more than mini-clues. The next item that baffles you, eat that and [b]XX[r] ... not just [b]X[r] or [b]EXAMINE[r], and it'll make sense. Oh, apologies in advance: good flavors and good magic don't mix.'"
gateman	cabinet	"'[if lube-asked is false][lubeit]It's kind of picky and defensive. Might not give you everything [']til I tell it.' He goes over to the cabinet, pats it on its top, and returns. 'Now you should be able to get everything from there.[else]Everything in there's yours.[end if]'"
peasant	hay	"'Not very useful for building something unless you want it to be destroyed quickly. Can't think of any reason I'd need that. Straw, on the other hand...'"
peasant	poem	"'I try my best at it.'"
peasant	straw	"'Good, sturdy stuff. I could use some to repair my hut. Can't imagine anyone would want what I have, though.'"
peasant	Woeful Pat	"'He's better than I am at poetry, I'm sure. I'm not educated enough to know why. Frustrates me sometimes.'"
peasant	Mean Old	"'Used to be much nicer, I'd say!'"
woeful pat	woeful pat	"[flatter-pat]'Of course it would be absorbing to learn about my life and struggles and views,' he drones airily. 'Suffice it to say I deserve also to be known as [b]SANE PAT[r], for all the accusations leveled against me. But you will find right now my poetry is even more profound! It has an [b]ANAPEST[r] beat.'"
woeful pat	Mean Old	"'He does not censor my art. He cannot be that bad!'"
woeful pat	peasant	"'There is one who tries his best. But he is too...obvious.'"
woeful pat	anapest	"[if anapest-clued is false][anapest-clue][run paragraph on][else][one of]'A mere creative writing teacher could educate you as to the pedantic details of writing doggerel that mimics my epic's flow!'[or]You didn't REALLY want the anapest explanation again, did you?[ana-true][stopping][end if]"
deadbeat	beats	"'They're nice and all for being an excuse not to work but they're lame and all because it's hard to concentrate for maximized angst. I'm tired of them, [if bastion-evac is true]dude[else]you square, yo[end if].'"
deadbeat	nerds	"The deadbeat starts shaking as he rattles off how the nerds east of the Underside have forgotten their roots."
deadbeat	faeries	"The deadbeat doesn't believe in magic, now. But he did as a kid."
deadbeat	red bull burdell	"'He is oppressive, man, but he is just a symptom of disparity and malaise.'"
deadbeat	poses posse	"[if poses posse are moot]'You showed them, dude!'[else]The deadbeat starts up some nonsense pseudo-sociological mumblings.[end if]"
deadbeat	lost corn	"[if bastion-evac is false]'Hey, Man, like, how do we know you don't, like, like the Man, man? Hey? Hey?'[else if lost corn is touchable]'Oh, yeah, it's yours, man, I guess. It's real corn, not that genetically modified stuff from,' he sees red for a sentence, '[first custom style]SLORNTCO[r] or that nasty dried stuff from [first custom style]ST ROLCNO[r].'[else]'Whoah. You must've like did something with that corn. Biosustainibility, man.'"
deadbeat	termite emitter	"[if player does not have emitter]'What? Do you know something?' he looks furtively around, more convinced than ever you're with The Man, man.[else if bastion-evac is false]'Whoah. No fingerprints, no proof it's mine.' He clearly doesn't trust you, yet.[else][try-flies][no line break][end if]"
faeries	drainage	"'Perhaps you can turn something in this city into a flower. We are out of ideas. How can drainage become a flower?'"
faeries	gardenia	"[if drainage is in Undesired Underside]You don't have a gardenia, yet. But you can find or make one.[else][faery-flower][end if]"
faeries	heaths	"[if player has begonias or player has noise bag]The faeries have been generous enough.[else][faery-flower][end if]"
faeries	begonias	"[if player has sheath or player has heaths]The faeries have been generous enough.[else][faery-flower][end if]"
faeries	sheath	"[if player has sheath]'It is up to you to use it. We cannot help further.'[else]The faeries wonder aloud what sort of magic could conjure a sheath.[end if]"
faeries	noise bag	"[if player has noise bag]'It is up to you to use it. We cannot help further.'[else]The faeries wonder aloud what sort of magic could conjure a noise bag.[end if]"
faeries	merchandise	"[faery-flower]"
faeries	beats	"'It is terrible! Our hearing is even more delicate than a clumsy human's. We can do no decent long-term magic with it around.'"
faeries	brocade	"[if player has brocade]'Do with it what you need.'[else if brocade is moot]'You have disposed of it! We hope it was useful.'[else]'It is free. But useless to us.'[end if]"
faeries	clover	"'Just weeds! Not useful for our sophisticated magic. Maybe useful for mere human magic, though.'"
faeries	tomato	"'[if player has tomato]Such a putrid plant! Keep it away from us[else]Even humans and monsters must find it revolting[end if]!'"
faeries	tulip	"'For human flower magic, not bad at all! We guess.'"
faeries	deadbeat	"The fairies buzz and give superior sniffs."
faeries	nerds	"The fairies buzz and give superior sniffs."
nerds	beats	"'Anyone can be smart enough to build noise canceling homes to get rid of the beats!'"
nerds	controls	"[if player does not have controls]The nerds might be experts on technical stuff, but they'd be over your head.[else]'Oh! These are simple controls! You don't even need to know about induction and charges and anything. Just slap them in where there's something missing. Pf, barely worth the time to [b]ASK NERDS[r] about.'[end if]"
nerds	deadbeat	"The nerds aren't big on social stuff. They're more about the technical stuff, about showing answers to questions you have. And questions you don't know you have yet."
nerds	faeries	"The nerds assure you science is better than magic."
nerds	red bull burdell	"'Sometimes Yorpwald is so dumb it deserves a thousand years of his rule. Not that he deserves to rule for a thousand years. We need someone smart enough to [b]ASK NERDS[r] the right thing to help dethrone him!'"
nerds	tracks	"'We wouldn't touch it, that's for sure. I mean, even if we could see where it went.'"
nerds	Tulip	"[if player has tulip]'It's not going to burn out for a long time.'[else]'We've got plenty of light here. You can have it, if you know what to ask us about. And if the tulip would help.'[end if]"
poses posse	dry cake	"Someone puts their hand to their lips. Someone else shakes their head. You don't DESERVE that cake, according to them."
protest	kilns	"'If we were artsy, we'd use [']em. But we're not. Take some magic to MAKE us artsy.'"

to say tip-dialogue:
	say "'Well, one of rectify or certify is overall better than the other. Would you like to know which[one of][or], again[stopping]?'";
	if the player dir-consents:
		say "[line break]'Without getting too mathy, you can expect one of the letters to [b]CERTIFY[r] correctly if there are no repeats, but a bit more with repeats--one and a half, in an eight-letter word with a repeat. [b]RECTIFY[r], you're always guaranteed the first and last right. So it's a bit more help if you [b]SECURE[r] later. But how much challenge you want is up to you. Either can work with any red writing you might see.'";
		pad-rec-lump "certify";
		pad-rec "rectify";
	else:
		say "'There's no wrong setting, really.'[no line break]"

to say pad-sec:
	pad-rec-q "secure";
	pad-rec "recuse";

to say rbb: pad-rec "Red Bull Burdell".

to say lubeit: now lube-asked is true.

to say ana-true: now anapest-clued is true.

the Memo Tote Tome is a boring thing in Esoteric Coteries. bore-text is "Maybe you could [b]EXAMINE[r] or [b]READ[r] the book, but you can't do much else with it.". initial appearance of Memo Tote Tome is "A Memo Tote Tome lies here. Perhaps it has some simple information useful to you amidst all the weird stuff the nerds use it for.". description of memo tote tome is "You should never see this, because the check rules should prevent it.".

check reading the Memo Tote Tome: say "Too dense. Really, only examining the Tome briefly [if memo tote tome is examined]could be[else]might've been[end if] worth trying." instead;

check examining the Memo Tote Tome:
	say "Even the author names are pretentious and important sounding. Think they're worth remembering?";
	if the player yes-consents:
		say "All in red: [rcn]Srs. Ek and Rensskad-Knessard";
		now Memo Tote Tome is examined;
	else:
		say "Hm, yes. The nerds may give less cryptic hints, eventually.";
	the rule succeeds;

to say rose-sore: if player does not have gardenia, say "[one of]. It will probably be tougher than getting a sore and changing it to a rose[or][stopping]"

table of unmatched topic responses
default-talker	gen-blah
Red Bull Burdell	"'Ego? Tut!' you mumble, but it has nothing on action."
banshee	"'I strip spirit!' it wails, then, 'Rather be breather!'"
beast	"It cares not for conversation, only noise."
beats	"Dude! They're clearly busy bringing sexy back. You text adventurers don't know how to act."
deadbeat	"He mumbles something about [if bastion-evac is false]chillin['] with his ill chin and how you're probably down with the man's anthems and aligned with those yuppies to the north, glancing furtively at the lost corn[else if corn is touchable]how you haven't put that lost corn to good use yet[else]whatever you did with that corn better work[end if], and he also complains about [if Esoteric Coteries are visited]those nerds you saw[else]nerds down southish, for some reason[end if]."
faeries	"[if fairy-worthy is false]'You must bring a powerful flower up! For our magic garden-and-a-third! There must be one in the garbage in this city! All we can make with the beats pounding are freesias, and we are getting sick of those!' they exclaim[rose-sore].[else]'We are grateful! You are an exceptional human! Thank you so much! [sure-you]! Now go and save the city.'[paragraph break]Hm, they didn't really seem to be listening to you, but fair enough, that's something."
gateman	"[one of]'Eh?! There's all sorts of things to ask me about! That goat back there! Your quest! Your purpose! The [if getaway is touchable]getaway[else]gateway[end if]! General advice! No time to scold clods asking about--whatever you just mumbled about.'[or]Nat Egam pauses. 'There's so much in the world we all want to understand. But unfortunately, we only have time for the questy stuff. So ask me about that goat, your quest, your purpose, general advice. Or--well, just go through the getaway gateway[unless player has tagged gadget] once you have the tagged gadget[end if]. Oh, about the gadget: you'll learn by doing.'[stopping]"
gy	"The men passing through seem too in a hurry to talk, but you doubt they know much."
line of no life	"You could never get everyone's attention at once."
liches	"They are too busy moaning to each other."
nerds	"[one of]'Hm, should we even talk to an outsider about that?'[paragraph break]'Well, if they found their way in, they can't be THAT dumb!'[paragraph break]'Well, they'll have to find the right thing to [b]ASK NERDS[r] like us about if they want us to stop talking about them like they're not here.'[paragraph break]'Maybe they're a lateral thinker. Who knows several ways to get through things.'[paragraph break]'GROAN! Nice Ignorance.'[paragraph break][one of]They don't seem to want to tell you what to ask them, out of principle, but if you keep nagging them, they may let some cryptic knowledge slip[or]They seem to be having fun feeling smarter than you, which is actually kind of good, as maybe the discussions will make more sense this time around[stopping].[paragraph break]'If they don't know what to ask nerds about, they deserve ED'S SNARK!' Ed, indistinguishable otherwise from the rest, leaps, pleased with what elapsed.[or]More annoying banter. Perhaps you could disperse them with the right item. They'd deserve it.[or]Laugh-tons onslaught as you haven't figured what to ask nerds.[or]They form a grin ring, but you close your eyes a bit and girn! They compare your response to K. Sanders.[or]A hundred-nerd DUH follow your latest ask-nerds attempt.[or]'Maroon! A moron! You might as well ask dorks like Karkdoss about something that inconsequential!'[or]An argument on the virtues of code versus Frisbee golf follows, and how nobody would ask geeks like Kaergess for help getting better at either.[or]The nerds jokingly offer to send Sark in your place, maybe to find a left-handed veeblefitzer. You see red at the backhanded insult.[or]Apparently you haven't seen the light for what to ask nerds about. 'We can wait here a thousand years!' one laughs. They debate on what's worse, dumb people in power or out.[or]One nerd tells you you should be sent to the red planet of [first custom style]SKASDREN[r] for asking so many nagging questions.[or]One nerd calculates eight factorial over two factorial, that's 20160, and eventually you'll see the light.[or]A few nerds wonder if anyone has been as snerk'd as you in their presence. You see red, slightly.[or]One nerd jokingly refers you to DR. KASSEN.[or]'[']K, Ren's sad,' one nerd remarks, red-faced.[or]One nerd dumps out his shoe. 'Erks! Sand!' He looks red-faced at such a public display.[or]Duhs won't shut down. Still, the nerds seem to be having fun, so they won't mind if you start over asking about stuff.[cycling]" [bold-ok]
night thing	"'NYURGH! HUNGRY!' Easier to argue a grue away."
peasant	"'I don't know much about that, that's sure. But I know from hay, being an abler baler.'"
riot	"[riot-trio-blather]"
protest	"[riot-trio-blather]"
poses posse	"You get a few pinched, strained smiles, but no actual words. What would they say? 'TALKERS STALKER?!'"
woeful pat	"[pat-wants-quiet]."
wolves	"Now is not the time for a heroic lecture, or even a heroic attempt at peace. Now is a time for violence and gore. You have the equipment."
yourself	"'Self, what should I do now?' 'Self, don't start talking in the third person.' 'Self will make a point of it, self.'"

table of unmatched thing responses
asked-person	npc-text
deadbeat	"He mumbles 'Mt. Rose Rots Me Moster' and giggles stupidly. You probably won't learn much from him except about instruments of subversion."
faeries	"They possess wisdom humans never will, but they don't much want to help you with the physical realm, beyond flowers."
gateman	"'Can't say anything about that. You'll have to find out for yourself later.'"
nerds	"The nerds look at each other, wondering why you would ask about that, really. They are sure you have something important to ask them. Maybe somewhere you can't get to or through. They could figure it out if in your shoes.[paragraph break]Hmm. Apparently, when you [b]ASK NERDS[r], you need to come correct[one of]. All the same, you're a bit annoyed, and you wonder if you can maybe play a mean trick on them to get that tulip, instead[or][cycling]."
yourself	"You start a small mental conversation to take stock of your surroundings and what you might like to do."

to say riot-trio-blather: say "You're not going to reason with them. Maybe reason about them, though.[no line break]"

Bud Helm is a useless person. "You should not see Bud Helm.". description of Bud Helm is "He has been condemned to obscurity."

Raw Rori is a useless person. "You should not see Raw Rori.". description of Raw Rori is "Condemned to obscurity."

does the player mean objasking generically the deadbeat: it is unlikely.
does the player mean objasking about the deadbeat: it is unlikely.

to say roo: pad-rec "advice".

to say ask-red: pad-rec "red"

Check talking to (this is the can only talk to talkables rule):
	if noun is not a person, say "For the most part, whn you [b]TALK TO[r], only people can respond. And it's best to [b]ASK[r] them [b]ABOUT[r] something specific. But you really don't have to talk much at all." instead;
	say "You ask about any old thing ([b]ASK X ABOUT Y[r] is the preferred syntax...)[paragraph break]";
	try asking noun about "small talk" instead;

table of matched topic responses
asked-person	topic	npc-text
gateman	"next guy"	"'Optimistic, aren't we?'"
gateman	"gato"	"[goat-toga]"
gateman	"sane/sean" or "sane sean"	"The gateman shakes his head slowly and shrugs. Sane Sean would probably be a lot funnier if Yorpwald weren't in trouble."
gateman	"general advice" or "advice" or "general"	"'Well, you figured a few things out. Probably want to focus more on changing stuff than weird actions. One thing, though. The things you need to change? Nothing too complex. Nothing over eight letters. Okay, maybe one two-word thing with nine. Red Bull Burdell often babbled about getting eighteen intelligence and wisdom from all that leveling up, but he never got a decent vocabulary. The philistine. Also, there will be clues--clues that seem all wrong, deliberately wrong, but their wrongness will stand out and help you.'[roo]"
gateman	"scold/clods"	"'Like I said, no time for that. Time to fix things!'"
gateman	"xyzzy"	"'Fool! That magic word has no place alongside your magic abilities.'"
gateman	"world"	"'Well, it wasn't a very SPECIAL world. In fact it was one of those hero mills. I remember more hills than anything else. Figure it had to break down for the next guy to save it.'"
gateman	"yorpwald"	"'It's been shuffled, nearly f-flushed! You can rescue it from physical, economic and moral malaise. You will need to travel through Old Warpy to get there. The stuff [if number of things in cabinet > 0]in[else]from[end if] the cabinet should help. Ask me about it. I'm a hero emeritus, and stuff.'"
gateman	"old warpy" or "old/warpy"	"'Once you step in, it'll take you somewhere far away. But it's perfectly harmless and not too bumpy. Like beyond that gateway getaway. Terry's in there, too, and he flips the switch so you can [b]RETRY[r] if you get stuck somewhere.'"
gateman	"terry"	"'He's reliable.'"
gateman	"lupine/lineup" or "lupine lineup"	"'Distant rumblings from somewhere beyond a very quiet place. Sadly, violence may be necessary.'"
gateman	"noble" or "ol' ben" or "noble ol' ben" or "ben"	"'He used to be fair and just. But he saw Red Bull Burdell [']leveling up,['] whatever that is. Red Bull bragged about how he'd multiplied his gold and achieved eighteen charisma, or something, before changing Noble Ol['] Ben.'"
gateman	"quest" or "purpose/goal" or "my purpose/goal"	"[one of]'Three major problems past the gateway. Noise is one. A lupine lineup. Noble Ol['] Ben: gone. Lorn. No longer.'[paragraph break]'And I think I know who's behind it: RED BULL BURDELL!'[or]He mentions 'Noise is one, lupine lineup, Noble Ol['] Ben gone, lorn, no longer.' Then he motions to the gateway. 'You'll see when you get there, I think.'[stopping]"
gateman	"certify" or "certifying"	"'Tells you what letters are right for what something should be. Red is wrong, green is right. Probably not as powerful as rectifying, but gets you some stuff right away. Also--there's some clues out there that're just plain red. They're all wrong.'[prcer]"
gateman	"rectify" or "rectifying"	"'Gives you the first and last letters of what something should be.'[prrec]"
woeful pat	"beat/rhythm/meter"	"[flatter-pat][anapest-clue][run paragraph on]"
woeful pat	"st paean" or "paean"	"[flatter-pat]'It will be my best reading yet. Even better than this[if player does not have flier]. Here you go. Have this flier, just to make sure[give-flier][end if].'"
deadbeat	"slorntco"	"'Organized capital is so repressive, dude.'"
nerds	"darkness"	"[nerd-dark]"
nerds	"dorks"	"They snicker knowingly. They assure you Karkdoss is the worst, if you want to ask dorks for any help."
nerds	"karkdoss"	"They snicker knowingly. You wonder if there is a Karkdoss, and if so, if they really think you should ask dorks."

to say prcer: pad-rec "certify".

to say prrec: pad-rec "rectify".

to say give-flier: now player has expo flier.

to say try-flies:
	if flies-in-emitter is false:
		say "'Dude! So you got it back from the night thing!' He takes the emitter, stuffs it in one of the more grungy-looking tents, and gives it back. 'Sorry there aren't any termites. But now these angst gnats inside may be handy later. We probably like infected them with social discontent when they bit us.'[no line break]";
		now flies-in-emitter is true;
		now termite emitter is angstgnatted;
	else:
		say "'Man, I've done enough work today. I don't want to catch any more angst gnats. Even for you.'[no line break]";

talktoing is an action applying to one thing.

understand the command "talk to [someone]" as something new.
understand "talk to [someone]" as talktoing.

check talktoing:
	if noun is riot or noun is protest, try asking noun about "mumblety-peg" instead;
	if noun is the player, try asking player about "mumbletypeg" instead;
	if noun is not a person, say "This place doesn't have that sort of magic. Best talk to people, or at least human-type things." instead;
	if noun is nerds:
		say "You engage in small talk, and they start showing off weird knowledge, as if they're prodding you to [b]ASK[r] about something. Hm, what to [b]ASK NERDS[r] about.";
	else:
		say "You aren't sure what to ask, so the conversation isn't very incisive. Perhaps you should [b]ASK[r] about something, instead.";
	try asking noun about "mumbletypeg" instead;

tell-warn is a truth state that varies.

check telling about:
	if noun is the player, say "You give yourself a pep talk." instead;
	if noun is nerds, say "The nerds laugh. 'You can't [b]TELL NERDS[r] what you know. You should probably [b]ASK NERDS[r] instead.'" instead;
	if tell-warn is false:
		now tell-warn is true;
		say "You're an adventurer, not a ruler--probably better to [b]ASK[r] about stuff. In the future, the game will usually assume you mean to ask instead." instead;

part talking to

Talking to is an action applying to one visible thing.  Understand "talk to [something]" as talking to.

volume going

chapter going diagonally

the reject diagonals rule is listed first in the check going rules.

diag-init is a truth state that varies.

check going when noun is a diagonal (this is the reject diagonals rule):
	if player is in Busiest Subsite, say "You walk around the perimeter of the big hall. It's weird. The passage by the Vacate Caveat isn't stuck in a corner--it's just off to the side a bit, so it's not really north or whatever. You should be able to [b]ENTER[r] it or go [b]INSIDE[r]." instead;
	if diag-init is false:
		ital-say "you never have to go in a diagonal direction in [this-game].";
		now diag-init is true;
		the rule succeeds;
	say "[one of]Intermediate? Terminate! Die![or]Diagonals?! A sad lingo.[or]Diagonals?! So anal. Dig?[at random]" instead;

chapter going nowhere

upwarned is a truth state that varies.

this is the find-nowhere-text rule:
	repeat through table of nowheres:
		if theloc entry is location of player, say "[thereject entry][line break]" instead;

check going nowhere (this is the main can't go that way rule) :
	if upwarned is false:
		if noun is up or noun is down:
			say "You never need to go up or down anywhere in [this-game]. Some passages may be described as leading down or up, but the four cardinal directions are all you need.";
			now upwarned is true instead;
	abide by the find-nowhere-text rule;
	if noun is outside and number of viable directions > 1, say "Exiting is ambiguous--if there's only one direction, you'll take it, but otherwise, the cardinal directions usually work better." instead;
	if number of viable directions is 0, say "You can't go--well, any way here. This is a sort of puzzle room." instead;
	if number of viable directions is 1, say "You can only go [if room noun of location of player is visited]back [end if][list of viable directions] here." instead;
	say "You can't go [noun] here, but you can go [list of viable directions]." instead;

to say dmb: say "[dmm] blocks your way [noun]. "

to say can-go of (d - a direction):
	let droom be the room d of location of player;
	say "[d][if droom is visited] to [droom][end if]"

to say inside-ambig: if noun is inside, say " or clear way [b]INSIDE[r]"

table of nowheres [tnw]
theloc	thereject
Rested Desert	"The size of the desert, um, deters you. You're steer'd back to the [if OR DO door is off-stage]odor[else]door[end if][if bugle-played is true or blot is not off-stage]. The one you can probably go through[end if]."
Thickest Thickets	"[one of]You hit a snag, and the [if toga is in Thickest Thickets]toga[else]hole in the thickets[end if] nags you. Or seems to[or]You see a snipe among some pines and lose your spine[or]You're feeling negative to vegetation, so you can't see a way through[or]A stick crawling with ticks gives you pause[or]I won't let snag-tangles get at you that way[cycling][if goat is in Thickest Thickets] (you can go [b]IN[r]--there are no specific directions here)[end if][one of]. Plus, if you could go anywhere unseen, you might regret winding up in the Tuffest Tuffets[or][stopping]."
Notices Section	"You hear tectonic noises, then an evil voice whispering 'Once it's...' You sense running away wouldn't work. You should probably explicitly [b]ENTER[r] the gateway[if gateman is in Notices Section][else], though it'd be nice to have some help first[end if]."
Flesh Shelf	"It's too steep down every way except back east."
Gnarliest Triangles	"You don't need an alert sign to know running into the walls any direction but west would cause a real sting."
Emptiness Sepiments	"The scoffer coffers and scoffin['] coffins are impenetrable. But even if they weren't, there are probably slayer layers, or worse, behind."
Ghouls Slough	"Without any sort of guide to look at you'd be (ugh) SOL--or it'd be a pointless, uh, slog[if player has maps]. Hey, those maps might be useful to look at, though[end if]."
Frost Forts	"[if vowels are in Frost Forts]The gnash hangs would, err, shnag you[else]The werewolves will catch you easily[end if]."
Trap Part	"[dmb]You can only go north to the kitchen or east[or-room]." [see before going in trap part for the other text]
The Nick	"You're trapped. If only the nick could be changed to something more to your taste."
Kitchen	"[dmb]You can only go [can-go of south] or [can-go of east]."
roomroom	"[dmb]You can only go [can-go of west] or [can-go of north]."
Stiller Trellis	"[dmb]You can only go [can-go of west] or [can-go of south][if the room east of Trellis is Sacred Cedars and scraped wall is not in Stiller Trellis and trel-priv is not moot] or, since you opened the hallway, east[end if]."
moor	"The rime-mire all round is too dangerous, but nothing's stopping you from leaving (opposite) the way you came, back to the [b]ROOM[r]."
Sacred Cedars	"There is no other way except back west. Anyway, you might find scared cadres you aren't equipped to deal with, or scarce dreads."
Undesired Underside	"A hotel is west, a camp is north, [the ingress] leads east, and some sort of terminal is south. But there are no special exits[inside-ambig]."
Roarings Garrison	"There's a residence north, a library west, a flower shop east, and a seedier area south. But there are no special exits[inside-ambig]."
Bile Libe	"Perhaps there is a I-Be-Libel Lie Bible somewhere in the recesses here, but it and those beats would be too much at once. You probably just want to go back east."
Fo Real Florae	"The faeries wouldn't take kindly to snooping. The only safe way out is back west."
The Ol Hotel	"You don't want to find that L'Hôte Helot is The Hell, Too. Better to find a way to fix it, or the city."
Esoteric Coteries	"The Earliest Ateliers are not for you to visit. You're more an adventurer than a researcher."
Elm Train Terminal	"The tracks lead down east, and the city is back north."
Bassy Abyss	"You try to flee, but there's no way back to Elm Train Terminal. You feel a sharp headache. It's [one of]an aligns signal, and it must be encompassing the whole abyss[or]that aligns signal, again[stopping]. It turns you back to face the [b-b]."
Astral Altars	"[one of][flare-to]As you step away from the altars, a weird barrier blocks you. It's very tarsal. Then a voice in your head booms 'THE FERAL FLARE MUST PROTECT ONE LIKE YOU FROM INFIDELS!'[paragraph break]Unfortunately, it's also protecting you from leaving, so you'll probably need a bit more magic.[or]No, the feral flare is pretty much any which way. Looks like you'll need to do something with the tiles and stile, instead.[stopping]"
Leis Isle	"[if woodland-revealed is true]No, you already saw the woodland was faked[else][woodrev]You step into the woodland and somehow bang your head! You see the word DOWNLOAD blinking in front of you. Odd, very odd[lei-down][end if]."
Rived Drive	"You'd probably get lost that way. Besides, the vague commotion to the east, past the rising [p-s], seems worth seeing."
Potshot Hotspot	"The only way you'll want to [if red bull burdell is not moot]try to [end if]go is east."
Means Manse	"[one of]You suddenly have ye taxin['] any-exit anxiety. Like you're in the middle of an exitstential crisis.[or]I best sit, be, you think.[or]Sit, ex-adventurer.[or]Where would you go? Texis, perhaps.[or]Seeing exits just makes you want to...[or]Aww, c'mon, this one's just switching TWO WHOLE LETTERS. You had other tougher ones to MAKE it here! There are alternate solutions based on Means Manse, but ... maybe you're overthinking.[stopping]"

chapter nowhere auxiliary stuff

to say or-room: say "[if roomroom is visited] to the (plain) room[end if]"

to say flare-to: now feral flare is in astral altars;

to say lei-down: say "[if l2 are not in Leis Isle], but then, the leis were fake, too";

woodland-revealed is a truth state that varies.

book directional cleanup

up-nearby is a truth state that varies.

the force dial puzzle in trap part rule is listed first in the check going rules.

the initial descent check rule is listed first in the check going rules.

the initial ascent check rule is listed first in the check going rules.

check going in Trap Part (this is the force dial puzzle in trap part rule):
	if centrifuge-stopped is false, say "You can't get your bearings long enough to lurch at or through an exit. You're getting hit with a lot of G's.[paragraph break]Maybe if you could figure out which directions the exits should be, you could figure the number to set the dial to." instead;

check going up (this is the initial ascent check rule):
	if player is in Rived Drive, try going east instead;
	if player is in Elm Train Terminal, try climbing the cafe face instead;
	if player is in Undesired Underside or player is in Trap Part, say "There's no way back up to where you came. Looks like you'll just have to solve things here." instead;
[	if up-nearby is true:
		say "[if cur-score of Ordeal Loader is 0]I, uh, lied. There's nowhere you can go up in the game. Or nearby. But that was a clue[else]Well, since you've scored a point, you might guess why 'I'd go nearby or up' is a hint[end if].";
		now up-nearby is false instead;]
	if player has wings and player is in Leis Isle, try flying instead;
	say "You have no boost boots for dances to ascend. And most of the time, if you need to go up, there'll be something clear to climb. Hopefully." instead;

check going down (this is the initial descent check rule):
	if player is in Busiest Subsite, say "You're not waiting for the elevator back down. And the only stairs are fire stairs, which will set off an alarm." instead;
	if player is in Trips Strip, abide by the trips-strip-descent rule;
	if location of player is Flesh Shelf, try going west instead;
	if player is on cafe face, try getting off the cafe face instead;
	if player is in Elm Train Terminal:
		say "(down east)";
		try going east instead;
	say "You see no clear way down. Usually there'll be stairs, if you need to." instead;

book gotoing

[see the common file for the main syntax]

check gotoing (this is the general goto check rule):
	if noun is Trips Strip and Trips Strip is visited:
		say "You may mean to [b]RETRY[r] instead. Do so?";
		if the player dir-consents, try retrying instead;
	if map region of noun is not mrlp:
		if map region of noun is solved, say "You already solved that area." instead;
		say "That'd be hyperwarping to another region. Sorry." instead;
	if noun is unvisited, say "You haven't gotten there yet." instead;

this is the ordeal-loader-goto rule:
	if noun is subsite, say "Goodness, no. [location of player] is way more interesting than the Busiest Subsite." instead; [start Ordeal Loader]
	if noun is Rested Desert, say "The door from Rested Desert was one-way[if player is in Thickest Thickets]. You can't even see it now[end if]." instead;
	if noun is Thickets, say "You can't see the passage back to the Thickets." instead;

this is the stores-goto rule:
	do nothing;

this is the forest-goto rule:
	if noun is sf or noun is rf, say "You can't retrace your steps." instead;
	if player is in Ghouls Slough, say "You've done all you could in Emptiness Sepiments and before. Onward." instead;
	if player is in Frost Forts, say "It's time to deal with things, not run." instead;

this is the sortie-goto rule:
	if noun is the nick, say "No, you don't want to go back there." instead;
	if player is in the nick, say "That's not the magic way out. Sorry!" instead;
	if player is in Sacred Cedars, check-block-cedars;
	if noun is Sacred Cedars and caskfillings is 2, say "You can't go back there." instead;

this is the metros-goto rule:
	if noun is Obtains Boastin Bastion and bastion-evac is true, say "You wouldn't be welcome." instead; [start metros]
	if noun is Esoteric Coteries and player has tulip, say "[if nerd-sol is 1]You got something from the nerds[else]The nerds probably aren't thrilled with you. They might outnumber you and take the tulip back[end if]. They've probably had enough of you." instead;
	if player is in Bassy Abyss, say "No going back now. You came here to defeat the [b-b]." instead; [end metros]

this is the resort-goto rule:
	if red bull burdell is in Potshot Hotspot, say "He's saying GET OUT just to be obnoxious and intimidating." instead;
	if player is in Means Manse, say "But you want to NOT go anywhere. NOT take any exits." instead;
	if red bull burdell is moot, say "But you beat Red Bull Burdell! Just go east!" instead;
	say "Gotta [if player is in astral altars]go[else]keep going[end if] forward." instead;

carry out gotoing:
	abide by the goto-check of mrlp;
	say "You retrace your steps...[line break]";
	move player to noun;

Rule for printing a parser error when the latest parser error is the noun did not make sense in that context error (this is the straighten out go to rule) :
	if word number 1 in the player's command is "x" or word number 1 in the player's command is "examine":
		if the player's command includes "livers" and player is in flesh shelf and number of glopmeats in flesh shelf > 1:
			say "You will need to figure how to combine the livers. Until then, you will want to act on each individually.";
			the rule succeeds;
		say "[l-or-look-prompt].";
		the rule succeeds;
	if word number 1 in the player's command is "go" or word number 1 in the player's command is "gt":
		say "That wasn't a room in the current region that you've visited. You can only go to rooms, not objects.";
		the rule succeeds;
	if the player's command matches the regular expression "^(hint|hints|info)\b", case insensitively:
		say "I couldn't find anything like that to hint." instead;
	say "Sorry, I understood the verb, but I didn't understand the noun." instead;
	continue the action;

part examining

check examining (this is the now-examined rule): if noun is a thing, now noun is examined;

part putting into gun

loading is an action applying to one thing.

understand the command "load [something]" as something new.
understand "load [something]" as loading.

carry out loading:
	if noun is not shotgun, say "That's not something you can load." instead;
	if player does not have silver, say "Nothing to load it with." instead;
	try inserting silver into shotgun instead;

understand the command "load [something] in/into/inside [something]" as something new.

understand "load [something] in/into/inside [something]" as inserting it into.

does the player mean inserting the silver into the shotgun: it is likely.

check inserting it into (this is the forest-insert rule):
	if second noun is sandwich:
		if noun is a glopmeat, say "That might only make the sandwich grosser, and besides, the bread's already stuck to the meat." instead;
		say "The sandwich won't be helped by adding anything." instead;
	if noun is sliver and second noun is shotgun, say "It is about the right shape, but it doesn't seem quite molded into the right material." instead;
	if noun is silver:
		if second noun is shotgun:
			say "The silver fits in well. You hear some melodramatic nonsense in your head about a dreamer rearmed. More practically, you're ready for a firefight.";
			now shotgun is loaded;
			set pronoun it to shotgun;
			moot silver;
			the rule succeeds;
	if second noun is shotgun:
		say "[if shotgun is loaded]Already loaded[else]You'll need to put a bullet in the shotgun. That's not a bullet[end if]." instead;

part cutwithing

cutwithing is an action applying to two things.

understand the command "cut [something] with [something]" as something new.
understand "cut [something] with [something]" as cutwithing.

check cutwithing:
	if second noun is sword:
		if noun is beats or noun is beast, try attacking noun instead;
		if noun is mattress:
			if bump is part of mattress, say "You don't need to cut the mattress to find what's in there." instead;
			say "There's not much left in there." instead;
		say "The sword is probably for some big climactic fight. Don't go waving it around." instead;
	if second noun is not sliver, say "That's not sharp enough to cut." instead;
	try cutting noun;
	the rule succeeds;

part cuting

before cutting:
	if player does not have sliver, say "You have nothing sharp enough to cut." instead;
	if noun is spread, say "As you get close to the spread, it turns bright red and bursts into something else--a red asp! You jump away[red-to]." instead;
	if noun is drapes:
		say "The drapes vanish as they are cut, revealing ... well, something leading somewhere. A voice whispers 'Enter the missend dimness ... if you dare.' Mis-send or miss-end? Either way, you probably need to be prepared.";
		moot drapes;
		now mis send dimness is in Emptiness Sepiments instead;
	if noun is wolves, say "You're way outnumbered. And you have a better weapon." instead;
	if noun is show hows tag or noun is knot:
		if player has sliver, ask-to-cut instead;
	if noun is player, say "Don't do that, now." instead;
	if noun is a person or noun is asp, try attacking noun instead;
	say "Useless vandalism." instead;

to ask-to-cut:
	say "You could cut the tag off the gadget with that, but this might break the gadget. Are you sure?";
	if the player dir-consents:
		now printed name of tagged gadget is "a gadget";
		now tagged gadget is broken;
		say "With a sad BOOOOP, the gadget shuts down. The tag flutters off. Hooray for adding to the challenge!";
		moot show hows tag;
		now undo-code is 3;
	else:
		say "Good choice.";

the mis send dimness is scenery. printed name is "mis-send dimness". "It's pretty imposing. That spread, and those drapes, were huge. And what's behind--well, you can't see much, and it'd be nice to have some sort of guide."

understand "doorway/door" as dimness when dimness is fungible.

understand "miss end" and "miss/end dimness" and "miss end dimness" and "miss/end" as dimness when dimness is fungible.

check opening dimness: try going inside instead;

check entering dimness: try going inside instead;

check going north in Emptiness Sepiments: try going inside instead;

part scoring

to decide which number is player-rank:
	if mrlp is resort:
		if resort is solved, decide on number of rows in table of ranks;
		decide on number of rows in table of ranks - 1;
	if Rested Desert is not visited, decide on 1;
	if Notices Section is not visited, decide on 2;
	if Trips Strip is not visited, decide on 3;
	let temp-rank be 4;
	increase temp-rank by number of passed-up regions;
	decide on temp-rank.

table of ranks
show-at-end-rule	rank-name	to-achieve
a rule	"(ow,) me, a nervy every(wo)man"	"only in Busiest Subsite"
--	"reduced deducer"	"in Rested Desert or Thickest Thickets"
--	"stunted student"	"in Notices Section"
--	"benigner beginner"	"Trips Strip visited, [sol-by of 0]"
--	"solider soldier"	"[sol-by of 1]"
--	"a mature amateur"	"[sol-by of 2]"
--	"new hero now here"	"[sol-by of 3]"
--	"a smart gamin['] anagrammist"	"win the game"

to say sol-by of (nu - a number): say "[nu in words] of Stores F/I/M solved yet"

to say decide-rank:
	choose row player-rank in table of ranks;
	say "[rank-name entry]";

understand "scores" as requesting the score when player is not in Self ID Fields.

to say and-bypass:
	if number of bypassed regions is 0, continue the action;
	say " with [list of bypassed regions] bypassed";

to say and-gadget: if player does not have gadget, say " and get the tagged gadget"

carry out requesting the score:
	[d "[number of bypassed regions] [list of bypassed regions] bypassed, [number of solved regions] [list of solved regions] solved, [number of unsolved regions] [list of unsolved regions] unsolved. Current rank in numbers is [player-rank].";]
	if mrlp is nothing, say "[bug-report]: This location needs a region." instead;
	say "You currently have [cur-score of mrlp] out of [max-score of mrlp] total points for the [mrlp] region. ";
	if possibles is true:
		if max-score of mrlp is cur-score of mrlp:
			say "You [if mrlp is ordeal loader]might want to ask the gateman a few more questions[and-gadget], but you [end if]don't really have anything critical remaining to do here.";
		else if min-score of mrlp is max-score of mrlp:
			say "You have found all the secret points in the region, so you will get the maximum score once you solve it.";
		else if min-score of mrlp is poss-score of mrlp:
			say "Your final possible score is fixed. You missed something you can't go back for.";
		else:
			say "Your minimum possible score on solving is [min-score of mrlp], and the maximum is [poss-score of mrlp].";
	else:
		say "[line break]";
	if mrlp is not Ordeal Loader, say "[line break]";
	repeat with Q running through regions:
		if number of visited rooms in Q > 0:
			if mrlp is not Q, say "You have scored [cur-score of Q] out of [max-score of Q] total points for the [Q] region.";
	if there is a solved region:
		say "[line break]Won now: the [list of solved regions] region[if number of solved regions > 1]s[and-bypass][end if]";
	else:
		say "[line break]You haven't solved any regions yet";
	say ". You have the rank of [b][decide-rank][r].";
	if debug-state is true:
		say "(Only seen in debug) See the total scores possible?";
		if the player yes-consents:
			repeat with Q running through regions:
				if max-score of Q > 0, say "[Q] has a maximum of [max-score of Q].";
	the rule succeeds;

book waiting

to say die-die-die:
	say "Before collapsing from the cold, you fire the shotgun in desperation. Six missiles fly out, and they fall just after you do! Nat Egam receives news of your death, and the forts are not frozen by the time he gets there. The good news: the next adventurer will be able to use your gadget. The bad? Er...";
	end the story;

check waiting:
	if player is in Frost Forts, say "[one of]Ish. Very shivery.[or]Looks like you have a Mexican standoff, if Mexico were in Greenland.[or]The wolves get antsy. I mean, they don't turn into ants. You are getting colder.[or]Your blood runs cold as the wolves inch closer. These aren't totally causally related.[or]If you don't do something cold-blooded, you'll be too cold-blooded to do anything.[or][die-die-die][stopping]" instead;
	if player is in Means Manse, say "Well, you sort of almost have it, but you want to (not) do something with the exits." instead;
	if player is in Rested Desert and goat is not touchable, say "There's something important to do here. But what?" instead;
	if player is in Esoteric Coteries, say "The Esoteric Coteries becomes a lo-action location for a bit." instead;
	say "[one of]Time passes... [no line break][or][stopping][one of]A mist seeps...[or]I see stamps...[or]Me, sit? Passe![or]Sit, see maps...[at random]" instead;

book senses

part smelling

check entering mattress: try sleeping instead; [??]

carry out smelling:
	if noun is the player, say "As good-smelling as ever. You remembered your deodorant this morning. Yay, you." instead;
	if noun is OR DO door, say "It doesn't smell any more." instead;
	if noun is clover:
		if player has clover, say "Still got that planty smell, though it's more the touch that's important." instead;
		say "It's too close to the ground, and the smell doesn't matter." instead;
	if noun is toga, say "Woo. Stinky. You can't quite identify which animal, being a city slicker." instead;
	if noun is cask:
		if cask is closed, say "Faintly alcoholic. Might be honey, too. Not very strong, though." instead;
		if oils are in cask, try smelling oils instead;
		say "The cask smells vaguely of the honey-ish alcohol that was in it." instead;
	if noun is night thing, say "The one good thing about its roaring and flailing is, you can't get close enough to REALLY smell it." instead;
	if noun is oils, say "The oils smell like nothing else and everything else at the same time. They're sacred, you know." instead;
	if noun is drainage, say "It smells like the opposite of a garden. Powerful." instead;
	if noun is gardenia, say "Smells wonderful, like cooking." instead;
	if noun is River Ville liver or noun is viler liver, say "Thankfully, it's been frozen, so it smells vaguely like freezer-burn." instead;
	if noun is taco, say "Awesome. You take righteous pride in your culinary ability." instead;
	if noun is perfume, say "Eurgh." instead;
	if noun is wolves, say "You wouldn't get near enough." instead;
	if noun is HOTSAUCE, say "Nostril-clearing." instead;
	if noun is lettuce, say "Pleasantly inoffensive." instead;
	if noun is steak, say "Wonderful." instead;
	if noun is bread, say "Not like fresh bread--more store-bought." instead;
	if noun is sandwich, say "Frozen enough not to smell. Thankfully." instead;
	if noun is Spam, say "It reminds you of long-gone days you liked its smell. Before having a taste." instead;
	if noun is tomato, say "Could be worse, like rotting meat. You're worried it might be very rotten on the inside." instead;
	if noun is motto, say "Okay, it doesn't PHYSICALLY stink." instead;
	if noun is Hotel, say "You've smelled worse, but the night thing's [if night thing is not touchable]lingering stench is [end if]pretty bad." instead;
	if noun is slough, say "I suppose it's a smell of nearby evil or something." instead;
	if noun is noisome moonies, say "Sadly, you already can without trying." instead;
	if noun is Frost Forts, say "Decayin[']. Cyanide. Nice day? Nay, ICED." instead;
	if location of player is Rested Desert, say "[if OR DO door is not in Rested Desert]It's an odor of new places and adventure and puzzles and how to get there. It tempts you--wouldn't it be nice if there was something more physical to provide passage than, well, just an odor?[paragraph break]You repress a four-letter word. Well, if things are that simple, it's probably a [i]nicer[r] four-letter word[else]The door is of some odd wood you don't recognize[end if]." instead;
	if debug-state is true, say "DEBUG: smelling [noun] in general.";
	if location of player is Trips Strip, say "There's a mixture of smells coming from the shops. You could probably go up to one and examine it." instead;
	if location is kitchen, say "The smell of delicious fried comfort foods. You'll probably not want to make anything too nutritious here." instead;
	if location of player is cedars, say "Still strong and pleasant. Better than ample maple or an a-ok oak. Those cedars." instead;
	if location of player is Thickest Thickets, say "[if goat is in Thickest Thickets]You smell the goat a bit[else]Very green and nature-ish[end if]." instead;
	if player is in sf or player is in rf:
		if stew is touchable, say "You catch a whiff of stew. What kind, you're not sure." instead;
		if teas is touchable, say "You catch a whiff of teas. What kind, you're not sure." instead;
	say "Nothing unusual." instead;

part listening

to say thissy: say "[one of]A passing conversation among the rushing and yelling for others to move aside: 'I bet they take the hotel fees out of our severance.'[paragraph break]'THIS.'[paragraph break]You've always hated when people say that, but it feels nearly profane today[or]Another 'THIS' makes you cringe, as if it were profanity[stopping]"

check listening:
	if player is in Potshot Hotspot:
		if riot is in Potshot Hotspot or protest is in Potshot Hotspot, say "The [if riot is touchable]riot[else]protest[end if] sounds like it can go on for a while, but thankfully, it's not getting violent." instead;
		if red bull burdell is in Potshot Hotspot, say "Tenso-tones (notes?) add drama to it all." instead;
	if location of player is Esoteric Coteries, say "The nerds are nattering about something or other[one of]. Their RPG GRP[or]. 'Vie, Red, Derive!' they chant at someone marking up scratch paper[or]. Complaining of their briefs['] fibers[or]. How to be a nerd mo['] modern[or]. Their time in the Undergrad Nerd Guard[or]. How they like to bug Sundberg[or]. How they're an IQ/clue clique[or]. How the newcomer might be a decent pretend nerd pet[or]. Stupid people who don't vote, or who vote stupid when they do[or]. Some dolt who got TOLD[or]. How text adventures are for losers stuck in the eighties[or]. How nothing's stopping dumb people from getting on the Internet and building the same soundproof bunker they have[or][stopping]." instead;
	if location of player is Abyss:
		if beats are touchable, say "The beats are worse than ever[if siren is touchable], accompanied by that siren[end if]. The Hears-Share sound system dishes out supersonic percussion--a croupiness, if you will." instead;
		say "The beats are gone, replaced with a beast's roaring[if siren is touchable], which clashes nastily with the siren[end if]." instead;
	if mrlp is metros:
		if player is in Bile Libe:
			if words are touchable:
				if player has heaths, say "'That's just words. Shift them to a weapon, and you'll have something!'" instead;
				if player has sheath, say "'Talk is cheap! Now, weapons, there's something valuable!'" instead;
				if player has begonias or player has noise bag, say "[if words are not in bag]'Put a bag over it!' you hear.[else]The semi-sheltered Bile Libe offers some respite from the beats, especially with the words gone. But not enough.[end if]" instead;
				say "The words drown out the beats for the moment. They're sharp words, attacking words, hard to shield yourself from, but they're local enough they can't be twisted." instead;
		if player is in Roarings Garrison, try examining music instead;
		if night thing is touchable, say "The groans from the Night Thing's organs are blocking out the usual thumping. For now." instead;
		if player is in Obtains Boastin Bastion, say "The conversation changes subject rapidly and randomly." instead;
		if player is in Fo Real Florae, say "The faeries have managed to block out the beats here, which is nice." instead;
		say "[one of]Acoustics so caustic.[or]Phoniest hip tones.[or]Fatal a-flat.[or]Thumping's SUMPTHING.[or]Ouch! Hearin['] Hernia.[in random order]" instead; [bold-ok]
	if player is in Busiest Subsite, say "[one of][thissy].[or]'That lecture'll fix your helpless spells, eh?' someone walking by asks.[or]'A resume masseur!' someone exclaims.[or]'Boy, I need to re-care about my career,' someone actually says with a straight face.[or]'Tell yourself I'M PRE PRIME!'[cycling]" instead; [bold-ok]
	if player is in Thickest Thickets, say "[if goat is in Thickest Thickets]The goat snores slightly as he half-naps, but that's it[else]The toga flutters in some wind you can't quite feel[end if]." instead;
	if player is in notices and gateman is in notices, say "'Y'can't have anything worth listening to without anything to ask me about!' says Nat Egam." instead;
	if player is in Gnarliest Triangles, say "The notes stone contains written, not musical, notes." instead;
	if player is in Frost Forts, say "AAAIIIEEE...OOOUUUOOO..." instead; [bold-ok]
	if player is in moor and anapest is in moor, try listening to the anapest instead;
	if player is in moor and peasant is in moor, say "With less, he whistles, eh?" instead;
	if player is in Rived Drive, say "You hear something from above the [p-s] to the east, but you'll need to get closer to make out details." instead;
	if player is in kitchen, say "Dietist ditties pipe through from somewhere unseen. They're the tidiest, but really distracting." instead;
	if doll house is touchable:
		if static is touchable, say "You hear static coming from the doll house." instead;
		say "Each attic is tacit now." instead;
	if player is in astral altars, say "You hear mumblings you aren't in the [first custom style]ELITE LISTS[r]. They make you see red." instead;
	if shout is touchable, say "You still hear that shout[one of], and if you listen again, you could get a couple of words.[or] that turns you red from its silliness: [one of]'Hut! SO!'[or]'Uh?! SOT!'[or]'Us, HOT!'[in random order][stopping]" instead; [bold-ok]
	say "[one of]Silent[or]Quite quiet[cycling]." instead;

to say no-you: say "[one of]No, y[or]Y[stopping]".

volume meta verbs

part walkthroughing

walkthroughing is an action out of world.

understand the command "walkthrough" as something new.

understand "walkthrough" as walkthroughing.

carry out walkthroughing:
	say "[this-game]'s gblorb file should come packaged with Trizbort maps, an InvisiClues-style HTML file and, in older versions, a text file called walkthrough.txt. However, there is a risk that will spoil a lot you won't want, especially since the areas are compartmentalized.[paragraph break]You can ask for hints with the [b]HINT[r] command--they should deal with the puzzle currently restricting you the most and may be doled out slowly to avoid spoilers.";
	the rule succeeds;

part abouting

abouting is an action out of world.

understand the command "about" as something new.

understand "about" as abouting.

carry out abouting:
	say "[this-game] is the first of three wordplay games in [if cur-score of Ordeal Loader is 0]a series I don't want to spoil the name of until you get your first point[else][tsts][end if]. You can see information on the series with the [b]STS[r] command. It was inspired by replaying [i]Nord and Bert Couldn't Make Head or Tail of It[r] and then wondering if there was any way to riff on it. Here's what I came up with. I suspect Jeff O'Neil thought of it, too, but it would've been impossible to stuff any meaningful story in two 140k disks.";
	say "[line break][this-game] is intended to be [b]POLITE[r] on the Zarfian cruelty scale. It's possible to die, but the deaths are meant to be joke deaths. Barring a horrid bug, there is no way to make the game unwinnable, although you may lock yourself out of getting full points, which is just a vanity thing.";
	say "[line break][b]POLITE[r] doesn't mean easy, though, and it doesn't guarantee user-friendliness. I also hope there is little guess-the-verb[if cur-score of Ordeal Loader > 0]--well, not [b]VERB[r], that's the sequel[end if]. Just find the right word to say, type it, and move on. My hope is that the tough ones are clued multiple ways, so you are not too frustrated[if Notices Section is unvisited]. There are hint items[end if].";
	say "[line break]You can see the testers who gave me transcripts with the [b]CREDITS[r], which are rather long. They slugged through a lot! If you want to see technical contributions, type [b]TECH[r]. For general release information, type [b]RELEASE[r].[paragraph break]Also, I still appreciate transcripts! So, if you like, type [b]TRANSCRIPT[r], then send reports--especially ones with comments (* at the start of a line)--to [email].";
	if cur-score of ordeal loader > 0:
		say "[line break]If you enjoyed this, the sequel, [aro], is over twice the size. It has seven areas to explore from [unless Trips Strip is visited]the main world-hub[else]what the Trips Strip becomes[end if]. The final installment, [trt], is much smaller but looks for a specific kind of word.";
	else:
		say "[line break]There are two sequels, but the names themselves might be a spoiler. Say [b]ABOUT[r] once you've scored a point to see their names.";
	the rule succeeds;

part creditsing

creditsing is an action out of world.

understand the command "credits" and "credit" as something new.

understand "credits" and "credit" as creditsing.

carry out creditsing:
	if cur-score of Ordeal Loader is 0:
		say "There is a list of websites I would like to credit. But it might spoil things before you score anything. So I'll just list beta-testers and general help.[paragraph break]";
	say "[if cur-score of Ordeal Loader > 0]Tester Street (gofer forge?):[paragraph break][end if]Adri, Hulk Handsome ([if cur-score of Ordeal Loader > 0]who nicely handles hokum like huge bars and bear hugs in his own IFComp 2012 game[else][i]shout-out not spoiled [']til you score a point[r][end if],) Tomie Campf, DJ Hastings, Anthony Hope, Joey Jones, Paul Lee, Gavin Myers-Leman, John Nitchals, and Robert Patten. They found 700+ bugs. I suppose I can call them 'residents, no on tiredness.'[paragraph break]Source (or cues) : Heartless Zombie, who found a lot of bugs AND helped tighten up my post-release code to lessen horrible spoilery disambiguations.[paragraph break]Storied Editors (post-release fixes) also include: DrkStarr, Olaf Nowacki, Jason Orendorff, Toby Ott, Stefan Scheiffele, Sean M. Shore, Amanda W., Matt Weiner, and David Wilkins. Reviews on the Internet also helped me fix things--Carl Muckenhoupt and Simon Carless discovered unwinnable states but were still kind enough to remark favorably.[paragraph break]A hat tip to ClubFloyd for a wonderful transcript that turned up a lot of usability issues. Their patience and perseverance helped me a lot![paragraph break]It must be noted that several bugs that popped up in the several versions were due to me trying to slip in one more small thing without adequate re-testing. If there is anything obvious (and there was, in the initial release,) it is my fault and not theirs. So play the most recent release! IFArchive.org, or [this-game]'s IFDB page (http://ifdb.tads.org/viewgame?id=ch39pwspg9nohmw) has it.[paragraph break]John Nitchals made the cover art. Cover image is a derivative of 'LED scrolling nametags' (http://www.flickr.com/photos/clanlife/385380701/) by Phil Campbell, used under a Creative Commons Attribution 3.0 Unported (CC BY 3.0) license: http://creativecommons.org/licenses/by/3.0/.[paragraph break]Marco Innocenti provided moral support early on.[paragraph break]Contact me with suggestions (technical or aesthetic) at [email], and you can join these worthy people above.[paragraph break]Also, thanks to the folks at intfiction.org who helped me code things. You can also find who the pseudonyms really are at http://ifwiki.org/index.php/Shuffling_Around.[paragraph break]Finally, type [b]SITES[r] for a list of sites that helped[if cur-score of Ordeal Loader is 0], which will totally spoil things right now[end if]."; [bold-ok]
	say "Also, thanks to Google Code and BitBucket, which contained original source control and issues, and GitHub, where I currently have a repository: [ghsite].";
	say "Oh, hey, do you wish to see what the pen names are right now? Some people were kind enough to take them at my request.";
	if the player yes-consents:
		say "John Nitchals = Wade Clarke.[line break]Gavin Myers-Leman = Melvin Rangasamy.[line break]Tomie Campf = Kevin Jackson-Mead, who used 'Pam Comfite' as an anagram of 'IFComp Meta' the year before--it's worth checking out the 2011 competition for those games alone.[paragraph break]Hulk Handsome is also a cool pseudonym, but it's one he uses lots of places. Oh, and I guess 'Lupe Lea' could've been an anagram for Paul Lee, but I never asked him, and I didn't have my anagram name cranker [']til I got serious with Roiling."

part releaseing

releaseing is an action out of world.

understand the command "release" as something new.

understand "release" as releaseing.

carry out releaseing:
	say "Each version of [this-game] should contain release notes, but here is a brief summary:[paragraph break]";
	say "[this-game]'s first release was for IFComp 2012, on September 29th.";
	say "[line break][this-game]'s second release was mushier--I intended to make an open beta, but that didn't work, so we'll call it January 2013. It included Heartless Zombie's hash tables.";
	say "[line break][this-game]'s third release went out in August of 2014. It was on the back burner a bit, but I refined the hash tables, added error checking, and also nailed down things like Last Lousy Points and in-game hints, both with the paper and with item descriptions. I finally fixed some blocker bugs in Store M, and I also normalized random text, adding things like map locations in Store F.";
	say "[line break][this-game]'s fourth release went out in March of 2015. It was largely a maintenance release, but it simplified the introduction, put a random puzzle in Store F, and added object-based hinting.";
	say "[line break]The current edition of [this-game] should include Invisiclues-style HTML, a color Trizbort map, a walkthrough, a heatmap of (rough) relative area difficulty, new area names, and a list of changes from the previous release. It's planned to be the last significant release, though there are always bug fixes.";
	say "[line break]For amusement, the project 'super-secret' code names are A Purged Upgrade (2), Version I Revision (3), Le Redux Deluxer (4), and Few Neat New Feat (5). The last is a spoonerism, so it feels kind of trivial, but I was running out of options.";

part teching

teching is an action out of world.

understand the command "tech" as something new.

understand "tech" as teching.

carry out teching:
	say "Many people helped with technical aspects of [this-game]. There are the people who wrote the extensions. Andrew Plotkin showed some I6 code for taking transcripts and other things. Climbingstars helped with Bypass Disambiguation (not present [']til post-comp) and setting pronouns, among other things. Heartless Zombie betrayed his name by pointing me to hash tables to process 'good guesses' in the player's commands, which cleared up a lot of thinking that bugged both me and the player. This is not in release 1 and is probably the biggest fix. He also helped me with other neat stubs I've re-used since then.[paragraph break]All three of these people's efforts spilled into [this-game]'s sequel[if cur-score of Ordeal Loader > 0] in the Stale Tales Slate[end if], [aro]. So I am doubly thankful.[paragraph break]Juhana Leinonen's JavaScript code helped me create the HTML for pseudo-Invisiclues.[paragraph break]Genstein's Trizbort app helped me create the map for release 3 (black and white) and Jason Lautzenheiser's modifications for release 4 (region color, borders and more) helped me, and maybe you, visualize things that much better.";
	say "And it's already mentioned in the credits, but [ghsite] is where the project is hosted. I recommend using source control if at all possible. Even if you just use it to keep a backup, or be sure of what you changed, it can save a lot of trouble.";
	the rule succeeds;

chapter optionsing

optionsing is an action out of world.

understand the command "options" as something new.

understand "options" as optionsing.

carry out optionsing:
	say "You read about options in your dope tan notepad.";
	try padding "options";
	the rule succeeds;

part verbing

verbing is an action out of world.

understand the command "verb" as something new. understand the command "verbs" as something new.

understand "verb" as verbing. understand "verbs" as verbing.

carry out verbing:
	say "You read about verbs in your dope tan notepad.";
	try padding "verbs";
	the rule succeeds;

book pause-manipulation

chapter remindersing

remindersing is an action out of world.

understand the command "reminders" as something new.

understand "reminders" as remindersing.

reminders is a truth state that varies. reminders is true.

carry out remindersing:
	say "Now we will [if reminders is false]not [end if]have reminders appear on reloading a saved game.";
	now reminders is whether or not reminders is false;
	the rule succeeds;

chapter wait for any key

first-wfak is a truth state that varies. first-wfak is false.

to say wfak:
	if debug-state is false:
		if first-wfak is false:
			say "[line break]";
			ital-say "this is the first in-game pause[if numsaves > 0] after a saved game[end if]. Whenever the game pauses without a cursor in the future, you need to push any key to continue.";
			now first-wfak is true;
			say "[line break]";
		wait for any key;

numsaves is a number that varies.

report saving the game:
	increment numsaves;
	if reminders is true, now first-wfak is false;
	continue the action;

chapter pause the game

to ptg: [possibly deprecated as wait for any key works better or seems to]
	if debug-state is false:
		pause the game;

volume reading

understand the command "read" as something new.
understand "read [something]" as reading.

reading is an action applying to one thing.

cabinet-reads is a number that varies.

to say cabinet-loop:
	increment cabinet-reads;
	if cabinet-reads > 1 and the remainder after dividing cabinet-reads by 7 is 0, say "[line break]Well, you've read through it all. But you can read it again, if you'd like.";

check reading (this is the reading is almost examining rule):
	if noun is gadget, try examining tag instead;
	repeat through table of readables:
		if noun is to-read entry, say "[the-red entry][line break]" instead;
	say "Most of the time[if-map], unless writing is specifically indicated, [b]READ[r] maps to [b]EXAMINE[r], so let's [b]EXAMINE[r].";
	try examining the noun instead;

to say if-map: if noun is maps, say " (even with the maps)"

table of readables
to-read	the-red
toga	"[first custom style]A GOT-TA GO[r] ... hmm, not the very best ever." [ordeal loader] [bold-ok]
gateway	"'E. g., man, TA!' is written in red, beneath the WARMUP/UM, WARP text. [if board is examined]The red text is just like [first custom style]A TAN GEM[r] and such on the broad board[else]Maybe it's significant that the writing's red, and that can help you[end if][if mega ant is off-stage and gateman is off-stage]. There's also a helpful ENTERING TOO SOON WILL NOT KILL YOU message, which is nice[end if]." [bold-ok]
acne bit cabinet	"Here is one of several writings in red in the cabinet: [one of][first custom style]I C BEATN[r].[or][first custom style]IN, BE, ACT!!![or][first custom style]C N-E BAIT??[or][first custom style]CIT-E BAN!!![or]Numbers for a [first custom style]NITECAB.[or][first custom style]ABE [']N TIC![or][first custom style]TEN ABC, I!!![in random order][r]" [bold-ok]
store i	"Red writing:[paragraph break][first custom style]RISE TO RITES, O! OR TIES.[line break]RISE TO TIES OR RITES, O![r]" [stores] [bold-ok]
roadsign	"The sign appears to say, in all red, [one of][first custom style]E FORTS/OSTFER[or][first custom style]TRESFO/S EFTRO[cycling][r] before a gust of wind picks it up and flips it around." [bold-ok]
great grate	"The grate seems to be made by [hktn]. It's not steel, but it's still too thick. The redness of [hktn] surprises you a bit." [sortie]
tall trio	"The names are Al, Tri, and Lot. [one of]If you [b]READ[r] again, maybe one of the six combinations will make you see red[or][first custom style]AL/LOT/TRI[r] makes you see red, for whatever reason[stopping]." [bold-ok]
spearman	"The spearman's name, in red, is [first custom style]MR. SANE PA[r]. [one of]There are three additional bits of writing that may help you, too[or]You also read, in red, one of three lines: [first custom style][one of]MEAN RAPS[r][or]MS. P. ARENA[r]--crossed out, but red[or]AMEN, RASP[r][in random order][stopping]." [bold-ok]
scraped wall	"[if scraped wall is hayfilled]You can no longer see where it says [end if]HALLWAY UNDER (UN-)UN-CONSTRUCTION." [bold-ok]
a reading	"On one of several pages, you see: [one of][first custom style]AID ANGER[r] is written[or]conspiracy theories from [first custom style]EDGAR IAN[r][or]silly musings on being [first custom style]IN A GRADE[r][or]a horror story: [first custom style]DINER, AAG[r][or]conspiracy theories from [first custom style]NIA EDGAR[r][or]an exhortation to [first custom style]RIDE AGAN[r] (sic) on the next-to-last page[or]an order that this all should be [b]RED AGAIN[r] (sic) on the last page[stopping]. The nonsense makes you see red." [metros] [bold-ok]
neon pig	"Apparently the neon pig is a creation of one [first custom style]INPENGO[r]."
controls	"You [if controls are in gin nope opening]remember[else]notice[end if] that it's underwritten (in red) by [first custom style]ORTON LSC[r], whoever they are."
tiles	"The tiles blur a bit as you (de)-focus just right. You see subtleties in the blues and brown that seem to spell out [first custom style]LEST I[r]. But with the effort, your eyes water, and you see red a bit." [resort]
u lock	"Red writing shows the U-Lock brand is [first custom style]OLD THOSE[r]." [bold-ok]

to say hktn: say "[first custom style]HECK TIN[r]"

volume endgame

book final question options (see what missed)

Table of Final Question Options (continued)
final question wording	only if victorious	topic	final response rule		final response activity
"see what you may've [b]MISSED[r] point-wise"	true	"missed"	show what the player missed rule	--
"see [b]ALT[r]/[b]ALTERNATE[r] mutually exclusive ways ([b]ALTS[r]) through"	true	"alt/alts"	show alternate paths rule	--
"see [b]RANK[r]s and how to achieve them"	true	"rank/ranks"	show ranks rule	--

this is the show alternate paths rule:
	say "Here are alternate paths through [if number of not solved regions is 0]all the regions[else]the regions you solved[end if].";
	repeat with zq running through solved regions:
		process the altrule of zq;

this is the show what the player missed rule:
	let missed-points be 0;
	repeat with zq running through solved regions:
		increase missed-points by (max-score of zq - cur-score of zq);
	if missed-points is 0:
		say "You got all the points! Well done! You are definitely ready for the extra challenge of [aro].";
	else:
		say "You did very well to get through the game. So you deserve to see [if missed-points > 1]all [end if]the Last Lousy Point[if missed-points > 1]s[end if] you missed. There is no special ending if you get them all, so don't bother going through the game unless you really had fun.[paragraph break]";
	now anything-missed is false;
	now all regions are not tickedoff;
	repeat with zq running through solved regions:
		show-miss zq and true;

to say toolwood: say "[one of]. The sprig/spore was one way through, but the toolshed was the other[or][stopping]"

to say alt-sols:
	let firsty be false;
	repeat through table of tulip acquisition methods:
		if chosen entry is false:
			say "[sol entry]";
			if firsty is false:
				say " or ";
				now firsty is true;

table of tulip acquisition methods
chosen	sol
false	"[b]ASK NERDS ABOUT DARKNESS[r]"
false	"[b]OPEN NOISE BAG[r] in the Esoteric Coteries after getting the begonias"
false	"[b]SHOW EMITTER TO DEADBEAT[r] after using it in [bastion], then using it again in the Esoteric Coteries"

chapter warning player who bypassed regions

The warn missed random text rule is listed before the print the final question rule in before handling the final question.

missed-random-warn is a truth state that varies.

this is the warn missed random text rule:
	if number of bypassed regions is 0, continue the action;
	if missed-random-warn is true, continue the action;
	now missed-random-warn is true;
	ital-say "You bypassed [what-bypassed], so there may be minor spoilers if you list random text. This nag will not be repeated.";

to say what-bypassed: say "[if number of bypassed regions is 1]a region behind a store[else]some regions behind some stores[end if]"

chapter missed rules

to show-miss (myreg - a region) and (ts - a truth state):
	now miss-room is adorb bardo;
	if ts is true and myreg is not solved, continue the action;
	now anything-missed is false;
	process the misses-rule of myreg;

this is the ordeal-loader-misses rule:
	if blot is off-stage, say "[2drm of Rested Desert]you could've changed the bolt into a [b]BLOT[r].";
	if bugle is off-stage, say "[2drm of Rested Desert]you could've changed the bulge into a [b]BUGLE[r].";
	if toga is not moot, say "[2drm of Thickest Thickets]you could've changed the toga into a [b]GOAT[r].";
	if reed is not moot, say "[2drm of Thickest Thickets]you could've changed the reed into a [b]DEER[r].";
	if sent nets are not moot, say "[2drm of Thickest Thickets]you could've changed the sent nets into a [b]NEST[r].";
	if attics are off-stage, say "[2drm of Notices Section]you could've changed the static into [b]ATTICS[r].";

this is the stores-misses rule:
	if store b is in Trips Strip, say "[2drm of Trips Strip]store B had some food for you. [b]SORBET[r].";
	if store f is in Trips Strip, say "[2drm of Trips Strip]store F led to a forest.";
	if store i is in Trips Strip, say "[2drm of Trips Strip]store I led to a sortie. Which is both an exit and a missile launch.";
	if store m is in Trips Strip, say "[2drm of Trips Strip]store M led to the Metros.";
	if cabinet is in Trips Strip, say "[2drm of Trips Strip]the cabinet, once it followed you, could've been cured a bit with [b]BACTINE[r].";

this is the forest-misses rule:
	if slit is in Self ID Fields, say "[2drm of Self ID Fields]the slit on [crosse] could've been turned to [b]SILT[r].";
	if banshee is not moot, say "[2drm of Emptiness Sepiments]the banshee could've become a [b]HASBEEN[r] (space or not).";

this is the sortie-misses rule:
	if pancake is off-stage, say "[2drm of kitchen]the cake pan in the fridge could've become a [b]PANCAKE[r].";
	if grits are off-stage, say "[2drm of kitchen]the grist in the fridge could've become [b]GRITS[r].";

this is the metros-misses rule:
	if antlers are in Obtains Boastin Bastion, say "[2drm of bastion]the antlers in the [bastion] could've become [b]RENTALS[r].";

this is the resort-misses rule:
	if found-lies is false, say "[2drm of leis isle]you could've said [b]LIES[r] [if l2 are in Leis Isle]to expose the [isle] as an illusion[else]instead of taking the leis[end if].";
	if rock is in Leis Isle, say "[2drm of leis isle]the rock was changeable to [b]CORK[r].";
	if swing is in Leis Isle, say "[2drm of leis isle]the swing was changeable to [b]WINGS[r].";
	if spore is in Rived Drive, say "[2drm of rived drive]the spore was changeable to [b]ROPES[r][toolwood].";
	if sprig is in Rived Drive, say "[2drm of rived drive]the sprig was changeable to [b]GRIPS[r][toolwood].";
	if tool shed is in Rived Drive, say "[2drm of rived drive]the tool shed was changeable to [b]TOEHOLDS[r] for 2 points.";
	if china is off-stage, say "[2drm of potshot hotspot]the chain links could've become [b]CHINA[r]. [i][bracket]Note: to get this point, you need to change the (chain) links to china before making the kilns.[close bracket][r][line break]";

chapter alt rules

guider-dir is a truth state that varies.

rule for printing the name of a guider (called gu) when guider-dir is true:
	say " ([godir of gu])";

this is the forest-alt rule:
	say "Since the forest had only two directions you had to choose, you'll probably not be surprised there were two other things that cued different ways.";
	now guider-dir is true;
	say "[list of not moot guiders].";
	now guider-dir is false;

this is the metros-alt rule:
	say "[line break]While the other regions are linear, the Metros has five paths based on the flowers you choose from [florae] (two ways) and how you get the tulip (three ways). One way of getting the tulip requires a specific flower.";
	say "You could have gotten the [if begonias are not moot]begonias[else]heaths[end if] from [florae].";
	say "[2da]the other ways to get the tulip are to [alt-sols].";

this is the resort-alt rule:
	say "[line break]There were three final commands to win the game. You chose [if end-path is 0][b]EXIST[r][else if end-path is 1][b]NAMES[r][else][b]AMENS[r][end if], but [one of]there are two other ways to win. Type [b]MISSED[r] again to see them, unless you want to type [b]UNDO[r] to guess[or]you could also have tried [if end-path is 0][b]NAMES[r]/[b]AMENS[r][else if end-path is 1][b]EXIST[r]/[b]AMENS[r][else][b]EXIST[r]/[b]NAMES[r][end if][stopping]."

book amusing

to say nfi: say "[one of]? [or]? (region suggestions are not fully inclusive--search the source for 'as a mistake' in case I missed something, if you want to be exhaustive)[stopping]"

table of big yucks
reg	yux
--	"[b]XYZZY[r] several times?"
--	"In the Ordeal Loader, changing the toga to a gato[nfi]"
--	"Reading the name list until the editorializing doesn't change?"
--	"Examining store c? Several times?"
--	"[b]STROBE[r] in the Trips Strip?"
forest	"The following anagrams in the forest where appropriate: Nile, File, [b]DESTRO[r], amps, steam, padres, rasped, spader[nfi]"
forest	"Saying [b]GOD[r] or [b]GOB[r] in the ghouls['] slough?"
sortie	"Eating the hot sauce or the taco?"
sortie	"Examining the parmesan cheese?"
sortie	"Praying in Sacred Cedars?"
sortie	"Throwing the paper plane?"
sortie	"The following anagrams in the sortie where appropriate: stake, takes, teaks, pears, limes, thicken, lacy, mope or tap (by Pat), similes, sever, serve, POTUS[nfi]"
metros	"Trying to explore the bastion before clearing it?"
metros	"Putting the barcode on the tomato?"
metros	"Scanning the deadbeat?"
metros	"Asking the beats anything?"
metros	"The following anagrams in the metros where appropriate: sap, asp, smitten, trounce, stalker, snores, senors, tar, reins, risen, lair(s), lira, liar(s), bates[nfi]"
--	"the following anagrams in the resort where (in)appropriate: slite, poser, prose, achin, roister, sex it"
--	"reading Shuffling Around Mistakes.i7x for other 'clever' 'jokes?'"
--	"Converting the sprig to prigs in the Rived Drive?"
--	"Any anagrams I missed? Let me know. I'll credit you. Or if you find another silly joke to throw in, tell me. I enjoy them."

Rule for amusing a victorious player:
	let totals be 0;
	say "Have you tried:[paragraph break]";
	repeat through table of big yucks:
		if there is no reg entry or reg entry is solved:
			say "--[yux entry][line break]";
		else unless there is no reg entry:
			increment totals;
	if totals > 0:
		say "There were [totals] funny things in the region you missed."

last-list is a number that varies.

listshowing is an activity.

listlisting is an activity.

listlasting is an activity.

Table of Final Question Options (continued)
final question wording	only if victorious	topic	final response rule	final response activity
"see a full [b]L[r]/[b]LIST[r] of random texts or specific ones (1-[number of rows in table of megachatter]) of random background text, or [b]LN[r] for the next one"	true	"l/list [number]" or "[number]"	--	listshowing
--	true	"l/list"	--	listlisting
--	true	"ln"	--	listlasting

rule for listlasting:
	increment last-list;
	if last-list > number of rows in table of megachatter:
		now last-list is 1;
	try lishing last-list instead;

listshowwarn is a truth state that varies.

rule for listshowing:
	if number understood is 0:
		carry out the listlisting activity;
		the rule succeeds;
	if number understood > number of rows in table of megachatter or number understood < 0:
		say "The valid lists are 1-[number of rows in table of megachatter]. If you forget what maps where, 0 lists everything.";
		the rule succeeds;
	now last-list is the number understood;
	try lishing the number understood;

lishing is an action applying to one number.

carry out lishing:
	if listshowwarn is false:
		say "(You can use no number at all to see which numbers give which lists)[line break]";
		now listshowwarn is true;
	if number understood is 0:
		carry out the listlisting activity;
	if number understood > number of rows in the table of megachatter, say "Maximum choice is [number of rows in the table of megachatter]." instead;
	choose row number understood in table of megachatter;
	say "[descr entry]:";
	if there is a lasties entry:
		say "[paragraph break]LAST ENTRY: [if there is a lasties entry][lasties entry][else](no last entry)[end if][line break]";
	let this-tab be mytab entry;
	let idx be 0;
	let lump-amount be maxbeforepause entry;
	let big-total be number of rows in this-tab;
	let total-read be 0;
	let cur-count be end-count entry;
	let max-count be maxidx entry;
	while cur-count < max-count:
		let this-max be cur-count + lump-amount;
		while cur-count < this-max and cur-count < max-count:
			increment cur-count;
			choose row cur-count in this-tab;
			say "[cur-count]. [blurb entry][line break]";
		if cur-count < max-count:
			abide by the avoid keypress in menu testing rule;
			say "[cur-count] of [big-total] so far. Type q to quit, b to go to the beginning or any other key to continue.";
			let cholet be the chosen letter;
			if cholet is 66 or cholet is 98:
				now cur-count is 0;
			if cholet is 113 or cholet is 81:
				choose row with mytab of this-tab in table of megachatter;
				now end-count entry is cur-count;
				try-ln;
				the rule succeeds;
		else:
			choose row with mytab of this-tab in table of megachatter;
			now end-count entry is 0;
			try-ln;
			the rule succeeds;

ln-yet is a truth state that varies.

to try-ln:
	if ln-yet is false:
		say "Note: [b]LN[r] shows the next list.";
		now ln-yet is true;

rule for listlisting:
	let myrow be 0;
	let listrows be number of rows in table of megachatter;
	say "Below are lists of anagram texts that the game sorts randomly at the start. The parentheses are the region, then the number of texts. They are listed in approximate game order, assuming the most efficient path through.";
	repeat through table of megachatter:
		increment myrow;
		say "[myrow]. [descr entry] ([table-size entry]) [line break]";

volume in-game map

[Ordeal Loader region]
index map with Notices Section mapped east of Trips Strip.
index map with thickets mapped east of Notices Section.
index map with Rested Desert mapped east of thickets.
index map with subsite mapped south of Rested Desert.

[roster]
index map with Astral Altars mapped south of Trips Strip.
index map with Isle mapped south of Astral Altars.
index map with Rived Drive mapped east of Isle.
index map with Potshot Hotspot mapped east of Rived Drive.
index map with Means Manse mapped east of hotspot.

[forest]
index map with sf mapped west of Trips Strip.
index map with rf mapped south of sf.
index map with slough mapped west of sf.
index map with Frost Forts mapped west of slough.
index map with slough mapped north of Emptiness Sepiments.

[sortie]
index map with Trap Part mapped north of Notices Section.
index map with the nick mapped north of kitchen.
index map with moor mapped east of roomroom.

[metros]
index map with terminal mapped north of slough.
index map with abyss mapped west of Elm Train Terminal.

[non-game rooms]
index map with Emerita Emirate mapped east of The Nick.
index map with Adorb Bardo mapped east of Emerita Emirate.

