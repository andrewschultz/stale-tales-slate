Version 1/220314 of Tours Roust Torus Nudges by Andrew Schultz begins here.

"Nudge tables for Tours Roust Torus."

[ott.py trt should straighten out the auxiliary text and rules in the order in which they appear in the table]

volume nudge tables

book general nudges

chapter general

table of nudge hashes
cmd-val (text)	cmd-hash (number)	cmd-loc	cmd-rule	nudge-text
"tours"	464166171	--	--	"[whole-torus]."
"rout"	367892205	--	--	"[whole-torus]."
"tast"	304681820	--	--	"[tats-only]."
"tas"	201571802	--	--	"[tats-only]."
"tasttat"	513089674	--	--	"[all-tats]."
"tastats"	506253622	--	--	"[all-tats]."
"tat"	208407854	--	--	"[all-tats]."
"tine"	344816481	Tines Inset	--	"[plural]."
"prep"	376061830	Prep Area	--	"[asym-area]."
"area"	217505548	Prep Area	--	"[asym-area]."
"cene"	343525311	Scene Scene	--	"[plural]."
"tsetse"	654380186	--	tsetse-there rule	"[tsetse-ok]."
"set"	327190093	--	tsetse-there rule	"[tsetse-ok]."
"sys"	314907184	--	eye-summoned rule	"[sys-eye-clue]."
"eye"	377971470	--	eye-summoned rule	"[sys-eye-clue]."
"yes"	346439327	--	eye-summoned rule	"[sys-eye-clue]."
"yseyse"	692878654	--	eye-summoned rule	"[sys-eye-clue]."
"hya"	161829369	--	smelt-hay rule	"While lots of snappy noises come to mind, [hay-stuff]."
"yahyah"	323658738	--	smelt-hay rule	"No, [hay-stuff]."

to say hay-stuff: say "you can't do anything with the smell of hay. It was there, and it gave you a boost [if score is 0]you'll cash in on, you're sure[else]to get you started[end if]"

to say all-tats: say "You need all the tats to help you, and you don't need to shift them. [just-stat]"

to say whole-torus: say "You don't need to act on the whole torus, here"

to say tats-only: say "There's no tricky command to manipulate the tats further. [just-stat]"

to say plural: say "You're missing an (s) to make things plural, here"

to say asym-area: say "Act on the whole area, here"

this is the tsetse-there rule:
	if player is in scene scene, the rule fails;
	if tsetse is not off-stage, the rule succeeds;
	the rule fails;

this is the eye-summoned rule:
	if player is in scene scene, the rule fails;
	if sys-eye-yes is true, the rule succeeds;
	the rule fails;

this is the smelt-hay rule:
	say "Rule [hay-smell-known] = hay known.";
	if player is in scene scene, the rule fails;
	if hay-smell-known is true, the rule succeeds;
	the rule fails;

to say tsetse-ok: say "The tsetse fly can't really be changed"

to say sys-eye-clue: say "[if score > 0]The SYS-EYE seems less prominent now that you've figured something to do[else]You doubt you can do something with the sys-eye beyond thinking yes. But maybe this is a clue what to do elsewhere[end if]"

book general roughhash nudges

table of rough hashes
cmd-val (text)	cmd-hash (number)	cmd-loc	cmd-rule	nudge-text
"ed"	24	--	deeded-listened rule	"You don't need to do anything fancy with [b]DEEDED[r]."
"on"	24576	--	noon-known rule	"[if in-heptagon-puzzle is true]You don't need to do anything fancy. Going [b]ON[r] was enough[else if ever-heptagon-puzzle is true]There's no extra option. Just [b]ON[r][else]You may be overthinking things, here. There's a more direct refutation to 'NOON, No, No[end if]."
"hay"	16777345	--	--	"You can't really do anything with the hay."
"yes"	17039376	--	sys-eye-known rule	"You can't really manipulate the SYS-EYE."
"buh"	1048706	--	buh-known rule	"[if solved-heptagon is true]You dealt with the, uhh, hubbub.[else]You have to figure how to work with the 'Buh.'"

this is the deeded-listened rule:
	if heard-deeded is true, the rule succeeds;
	if deededed is true, the rule succeeds;
	the rule fails;

this is the hay-known rule:
	if hay-smell-available is true, the rule succeeds;
	the rule fails;

this is the noon-known rule:
	if solved-initials is true, the rule succeeds;
	the rule fails;

this is the sys-eye-known rule:
	if sys-eye-yes is true, the rule succeeds;
	the rule fails;

this is the buh-known rule:
	if player is in scene scene, the rule fails;
	if ever-heptagon-puzzle is true, the rule succeeds;
	the rule fails;

book auxiliary

to say just-stat: say "So you can just use [b]STAT[r] and [b]TATS[r]"

Tours Roust Torus Nudges ends here.

---- DOCUMENTATION ----