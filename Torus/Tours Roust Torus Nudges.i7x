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
"tine"	344816481	Tines Inset	--	"[plural]."
"prep"	376061830	Prep Area	--	"[asym-area]."
"area"	217505548	Prep Area	--	"[asym-area]."
"cene"	343525311	Scene Scene	--	"[plural]."
"tsetse"	654380186	--	tsetse-there rule	"[tsetse-ok]."
"set"	327190093	--	tsetse-there rule	"[tsetse-ok]."
"sys"	314907184	--	--	"[sys-eye-clue]."
"eye"	377971470	--	--	"[sys-eye-clue]."
"yes"	346439327	--	--	"[sys-eye-clue]."

to say whole-torus: say "You don't need to act on the whole torus, here"

to say plural: say "You're missing an (s) to make things plural, here"

to say asym-area: say "Act on the whole area, here"

to say tsetse-ok: say "The tsetse fly can't really be changed"

to say sys-eye-clue: say "[if score > 0]The SYS-EYE seems less prominent now that you've figured something to do[else]You doubt you can do something with the sys-eye beyond thinking yes. But maybe this is a clue what to do elsewhere[end if]."

this is the tsetse-there rule:
	if tsetse is not off-stage, the rule succeeds;
	the rule fails;

Tours Roust Torus Nudges ends here.

---- DOCUMENTATION ----