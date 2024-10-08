Version 1/211021 of Roiling Beta Testing by Andrew Schultz begins here.

"A Roiling Original beta-specific code"

volume beta testing - not for release

section instructions

[* this is a simple list of instructions cluing a5 hintvis and ts]

when play begins:
	now in-beta is true;
	say "Here is a list of Beta Testing commands that will facilitate passage through:[paragraph break]--[b]a5[r] moves you to the Strip of Profits, solving all but Otters.[line break]--[b]hintvis[r] hints everything visible[line break]--[b]ts[r] jumps you to the Strip of Profits, with the patcher etc.[line break]--[b]blaa[r] talks about a generic subject.[line break]--[b]misses[r] shows what optional things you've missed in the region.[line break]--[b]warwar[r] wipes out the prosaic picaros in Store W.[line break]--[b]allrand[r] puts all random pods in one area, which may destabilize things.[line break]--[b]produce redo cup[r] brings back the hint-item in Oyster.[line break]--[b]GX[r] uses [b]GURU[r] on any item in Others, or tries to.";

section gxing

understand the command "gx" as something new.

understand "gx [things]" as gxing when mrlp is others and debug-state is true.

carry out gxing:
	if can-guru is false, now can-guru is true;
	let prev-max-poss be poss-score of others;
	now in-gx is true;
	try guruing the noun;
	now in-gx is false;
	if player does not have arugula:
		say "Taking arugula back. NOTE: this may affect maximum scores. I've tried to check off, but it doesn't affect the release version, so I wasn't rigorous.";
		now can-guru is true;
		now poss-score of others is prev-max-poss;

book produceredocuping

produceredocuping is an action out of world.

understand the command "produce redo cup" as something new.

understand "produce redo cup" as produceredocuping.

carry out produceredocuping:
	if mrlp is not oyster, say "[reject]" instead;
	if pills are moot, say "Through magic, you get your pills back.";
	say "[if produce-redo-cup is true]You already said the magic words[else]The jar of Li'l P's Pills is now un-lose-able[end if].";
	now produce-redo-cup is true;
	if pills are in Posh Hops Shop, say "(Also, giving you the pills even though [if player is in Posh Hops Shop]you didn't take them[else]they're back in the Posh Hops Shop[end if].)";
	now player has pills;
	if jar-empty is true:
		say "...filling the pills...";
	now jar-empty is false;
	the rule succeeds;

book allranding

allranding is an action applying to nothing.

understand the command "allrand" as something new.

understand "allrand" as allranding.

carry out allranding:
	say "[b]ALLRAND[r] dumps all of randomly picked obstacles into their respective rooms. If you wish to twiddle the marble blamer, use [b]MBB[r] 1/2.";
	if parleys splayer players are moot:
		say "WARNING you cleared the players/macks, so moving all pickup lines to [downside] may be useless or worse.";
	else:
		say "Moved all players/macks['] pickup lines to Disowned Downside.";
	now all pickup-lines are in Disowned Downside;
	if Loftier Trefoil is visited and player is not in Loftier Trefoil:
		say "WARNING you passed the Loftier Trefoil. This may result in odd behavior from the game.";
	else:
		say "Moved all picaros to Loftier Trefoil.";
	now all picaros are in Loftier Trefoil;
	the rule succeeds.

book cheatage

[* this book lets the beta-tester skip over boring bits ]

chapter greting

[* this lets you skip over the Downside puzzles and talk to Gretta immediately]

greting is an action applying to nothing.

understand the command "gret" as something new.

understand "gret" as greting.

carry out greting:
	move player to Disowned Downside;
	say "==CHEATING TO DEFEAT THE PLAYERS";
	try fliptoing a random fungible pickup-line;
	try fliptoing a random fungible pickup-line;
	try fliptoing a random fungible pickup-line;
	the rule succeeds;

chapter blaaing

[* BLAA lets you churn through subjects and things to ask visible people about ]

blaaing is an action applying to nothing.

understand the command "blaa" as something new.

understand "blaa" as blaaing.

carry out blaaing:
	let this-guy be false;
	say "=================default unmatched topic responses[line break]";
	repeat with pe running through people:
		now this-guy is false;
		repeat through unmatched topic responses table of mrlp:
			if pe is askee entry:
				say "[pe]: [dialogue-text entry][line break]";
				now this-guy is true;
		if this-guy is false:
			say "[pe] has nothing to say!";
	let found-chat be false;
	say "=================asking people you can see about random stuff, the hydra and themselves[line break]";
	repeat with pe running through fungible people:
		if pe is not the player:
			now found-chat is true;
			say "[pe] about random stuff:";
			try asking pe about "mumblety-peg";
			say "[pe] about hydra:";
			try objasking pe about hydra;
			say "[pe] about [pe]:";
			try objasking pe about pe;
			now found-chat is true;
	if found-chat is false:
		say "Oops, nobody around.";
	the rule succeeds;

chapter sloning

sloning is an action out of world.

understand the command "slon" as something new.

understand "slon" as sloning when player has letters settler.

carry out sloning:
	if slider is switched on, say "The slider already is." instead;
	try switching on slider instead;

chapter tsing

[* TS starts you out with nice toys, at the strip with the purse/settler/notepad]

tsing is an action out of world.

understand the command "ts" as something new.

understand "ts" as tsing.

carry out tsing:
	if player is in Strip of Profits, say "You already are here!" instead;
	if Strip of Profits is visited, say "You should [b]RETRY[r] instead to go back." instead;
	move player to Strip of Profits;
	get-cool-stuff;
	moot lamp;
	moot teariest treatise;
	moot respect specter; [ all for testing purposes ]
	now Ordeal Reload is solved;
	now autosave-known is true;
	say "Moving player to [profits] and giving you the purse, settler, deductin['] and notepad. Also setting autosave-known to true.";
	the rule succeeds;

chapter chating

[* CHAT is a debug command that lets the player jump to the chats with Report Porter Perrot, Elmo and Elvira]

chating is an action out of world.

understand the command "chat" as something new.

understand "chat" as chating.

carry out chating:
	if player is not in Dusty Study, say "Too late...restart." instead;
	now do-i-chat is true;
	now thinko is true;
	now bookshelf is examined;
	now player has lamp;
	now player has settler;
	repeat with ram running through ramabits:
		now ram is ncscanned;
		now ram is cscanned;
	try opening isolani liaison;
	now player has whistle;
	now adjsolve is 4;
	now nounsolve is 4;
	now player wears medals;
	the rule succeeds;

chapter a5ing

[* a5 allows you to solve everything except OTTERS]

a5ing is an action applying to nothing.

understand the command "a5" as something new.

understand "a5" as a5ing.

carry out a5ing:
	if mrlp is otters or mrlp is others or otters is solved, say "You will have to restart to run [b]a5[r]. You are too far along in the game." instead;
	now Ordeal Reload is solved;
	repeat with MI running through held things:
		if MI is not warpable:
			moot MI;
			now lreg of MI is mrlp;
	get-cool-stuff;
	if player is not in Strip of Profits, move player to Strip of Profits;
	now suppress-score is true;
	let XXX be debug-state;
	now debug-state is false;
	if store k is in Strip of Profits, try fliptoing tokers;
	if store n is in Strip of Profits, try fliptoing nestor;
	if store p is in Strip of Profits, try fliptoing odorant tornado;
	if store u is in Strip of Profits, try fliptoing course source;
	if store v is in Strip of Profits, try fliptoing Tastee Estate;
	if store w is in Strip of Profits, try fliptoing truster turrets;
	if store y is in Strip of Profits, try fliptoing balancer barnacle;
	now debug-state is XXX;
	try fliptoing solid idols;
	moot odorant tornado;
	moot course source;
	moot Tastee Estate;
	moot truster turrets;
	moot balancer barnacle;
	now troves is solved;
	now routes is solved;
	now oyster is solved;
	now presto is solved;
	now towers is solved;
	now suppress-score is false;
	say "Beeep. All pre-Otters areas (fake)-solved. You may now proceed to Otters behind Store T. I also gave you the settler and purse and notepad, in case.";
	process the notify score changes rule;
	say "[i][bracket]NOTE: you may wish to [b]SEED[i] 1 so you can make the [pla-ma]s talk blearily, nastily and bossily, if you are in an automatic testing situation.[close bracket][r][paragraph break]";
	say "[i][bracket]NOTE: you may also wish to [b]OTWIN[i] to almost-win Otters.[close bracket][r][line break]";

chapter endgameing

[* ENDGAME tests the endgame]

end-jump is a truth state that varies.

endgameing is an action applying to one topic.

understand the command "endgame [text]" as something new.

understand "endgame [text]" as endgameing.

carry out endgameing:
	let temp be 0;
	now player has settler;
	now Ordeal Reload is solved;
	if end-jump is true or the player's command matches the regular expression "p": [we keep regexes here so we can pick off which is solved]
		increment temp;
		now presto is solved;
	if end-jump is true or the player's command matches the regular expression "u":
		increment temp;
		now routes is solved;
	if end-jump is true or the player's command matches the regular expression "v":
		increment temp;
		now troves is solved;
	if end-jump is true or the player's command matches the regular expression "w":
		increment temp;
		now towers is solved;
	if end-jump is true or the player's command matches the regular expression "y":
		increment temp;
		now oyster is solved;
	now end-jump is false;
	move player to Gates Stage;
	now player has passport;
	now no-tip is true;
	now perp-check is true;
	say "Okay, you need to do 2 of 3 of [b]RESEARCH[r]/[b]REVIEW[r]/[b]PREP[r].";
	the rule succeeds;

egalling is an action out of world.

understand the command "endgame" as something new.

understand "endgame" as egalling.

carry out egalling:
	now end-jump is true;
	try endgameing;
	the rule succeeds;

chapter otwin

[* OTWIN almost-wins otters]

otwining is an action out of world.

understand the command "otw" as something new.
understand the command "otwin" as something new.

understand "otw" as otwining.
understand "otwin" as otwining.

to say otw2: say "[b]OTWIN[i] in [inclosure] will cause [b]ADJSOLVE[i] and [b]NOUNSOLVE[i] (the variable determining how much you helped the animals) to drop to 2, thus getting you killed if you attack Elvira"

carry out otwining:
	if player is in Reclusion Inclosure and Merle is moot:
		ital-say "[otw2]. This isn't a troll job--it just allows you to test losing.";
		now adjsolve is 2;
		now nounsolve is 2;
	else:
		if power-back is false, say "Getting powers back...[paragraph break]";
		now power-back is true;
		now player has whistle;
		now player wears medals;
		moot hydra;
		moot parrot;
		moot raptor;
		moot Merle;
		moot Elmer;
		now adjsolve is 3;
		now nounsolve is 3;
		now ordeal reload is solved;
		now routes is solved;
		now troves is solved;
		now presto is solved;
		now oyster is solved;
		now towers is solved;
		now player is in Reclusion Inclosure;
	say "[i][bracket]NOTE: Otters endgame cheats are invoked! You can't win directly, because there are things worth testing. You will need to [b]QUICKLY[i] before attacking Elvira, although of course the insta-death if you forget is relevant too. Also, you need to play the whistle [b]DEEPLY[i] or it won't work in Rancho Archon Anchor. And for further testing, if you want, [otw2].[close bracket][r][line break]";
	the rule succeeds;

chapter seed

[* SEED seeds the towers or otters with option #N in a list]

seeding is an action applying to one number.

understand the command "seed" as something new.

understand "seed [number]" as seeding.

to place-warrior (myp - a number) and (myi - a number):
	let temp-ord be 0;
	let cur-war be Rodney;
	let max-pod be 0;
	repeat with QQ running through picaros:
		if pod-num of QQ is myp:
			if pod-ord of QQ > max-pod:
				now max-pod is pod-ord of QQ;
	let myi2 be myi;
	if myi2 > max-pod:
		say "[b]Cutting [myi2] to [max-pod] for pod [myp]:[r] ";
		now myi2 is max-pod;
	repeat with QQ running through picaros:
		if pod-num of QQ is myp and pod-ord of QQ is myi2:
			if QQ is in Loftier Trefoil:
				say "Oops, we placed [QQ] twice. [myp] [myi2].";
			now QQ is in Loftier Trefoil;
			say "[QQ] to Loftier Trefoil.";
			the rule succeeds;

to place-idea (myp - a number) and (myi - a number):
	let temp-ord be 0;
	let cur-idea be t-despairingly;
	let max-pod be 0;
	let myi2 be myi;
	repeat with QQ running through pickup-lines:
		if pod-num of QQ is myp:
			if pod-ord of QQ > max-pod:
				now max-pod is pod-ord of QQ;
	if myi2 > max-pod:
		say "[b]Cutting [myi2] to [max-pod] for pod [myp]:[r] ";
		now myi2 is max-pod;
	repeat with QQ running through pickup-lines:
		if pod-num of QQ is myp and pod-ord of QQ is myi2:
			if QQ is in Disowned Downside:
				say "Oops, placed [QQ] twice. [myp] [myi2].";
			now QQ is in Disowned Downside;
			say "[QQ] to Disowned Downside.";
			the rule succeeds;
	say "BUG: didn't get anything for pod [myp] index [myi2].";

carry out seeding: [100 = Balmer or Beal in Capsule, 200 = skip trefoil, 400 = skip Disowned Downside. Most of the time we'll just need the non hundreds.]
	let temp be 0;
	let G be Rodney;
	let found-yet be false;
	let act-index be the remainder after dividing number understood by 100;
	let seedflags be number understood / 100;
	say "[b]USAGE NOTES[r]: SEED requires a number between 1 and 708, which seems kind of arbitrary, but the details are below.[paragraph break]100=Balmer 0=Mr Beal.[line break]200=ignore Trefoil seeding.[line break]400=ignore Downside seeding.[line break]The ones digit is the pod number, which is 1-8 for the players and 1-5 for the picaros. Anything above that is bumped down to the maximum pod number for that group of people.[paragraph break]You will probably just want to use 1-8.";
	say "10s digit = unused as of now.";
	if act-index > 8:
		say "[b]WARNING: this is probably out of range, but we will round down.[r][line break]";
		now act-index is 8;
	if act-index < 1:
		say "Need a positive act index.";
		the rule fails;
	if Upscale Capsule is visited and sister tressi is not off-stage:
		say "We can't randomly allocate the marble blamer.";
	else:
		if the remainder after dividing seedflags by 2 is 1:
			now mbb is Marble Blamer Balmer;
		else:
			now mbb is Marble Blamer Mr Beal;
		say "[mbb] will be in [capsule].";
	if seedflags < 4: [400 = skip downside]
		if Disowned Downside is visited and gretta-score > 0: [next, seed the players' pickup lines in OTTERS]
			say "Skipping Disowned Downside seeding because you already started wiping the players/macks out.";
		else:
			now all pickup-lines are off-stage;
			repeat with J running from 1 to max-pod-num:
				place-idea J and act-index;
			if the remainder after dividing seedflags by 2 is 0:
				assign-random-pickup-priority;
			else:
				assign-fixed-pickup-priority; [ 200 = skip trefoil]
	if the remainder after dividing seedflags by 4 < 2:
		if Loftier Trefoil is visited and number of moot picaros > 0: [first, seed the start of TOWERS]
			say "Skipping Trefoil seeding as you've already disposed of [number of moot picaros] warrior[if number of moot picaros > 1]s[end if]. Restart if you wish to re-seed.";
		else:
			if act-index > 5:
				say "Decreasing index to 5 for the Trefoil.";
				now act-index is 5;
			now all picaros are off-stage;
			repeat with J running from 1 to 7:
				place-warrior J and act-index;
			pick-a-picaro;

Roiling Beta Testing ends here.

---- DOCUMENTATION ----
