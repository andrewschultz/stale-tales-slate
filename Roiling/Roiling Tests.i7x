Version 1/190606 of Roiling Tests by Andrew Schultz begins here.

"This header file has tests used for A Roiling Original. They were moved here to de-clutter the main story.ni file."

volume testing - not for release

[ monty ideas: scan location every turn ]

section debug flags at game start

[needs to be near the top--well, could place it before all other when play begins rules]

when play begins (this is the debug by default when debugging rule) :
	now bugsquash is true; [be harsh to myself in programmer testing. Sniff out any bugs and kill walkthrough tests.]
	now debug-state is true; [this is the not-for-release flag for debug state, if I am grepping]
	now xtra-trax is true; [this is cheap, but it helps testing. I forget to turn it on.]
	now extra-not-taxer is true; [see above]

section monty rules

after fliptoing (this is the monty after flipping rule):
	process the full monty test rule;
	continue the action;

the monty after flipping rule is listed last in the after rules.

book basic tests

[these are largely superseded by what I test with Zarf's scripts. However, they contain paths to reach critical junctures that are most likely to require manual testing.]

chapter combos

[* this tests combinations of big tests e.g. going through each area]

test this with "seed 1/ts/a5/t/otters/opt in/enter solid idols/barely/l/discern ed riley/discern/reedily/w/bossily/angrily/blearily/au 0/1/3/no/n/because/else/s/atom/e/n/enragedly/remotely/n/slow/coolest/paroled/artsy/l/s/s/s/loathingly/joltily/s/parrot/snail/hornets/racoon/l/n/n".

test win-quick with "test ordrelminn/test stores/test routes/test troves/switch patcher/test otters"

test win-q-patchstore with "ts/y/zap store u/zap store w/zap store y/zap store v/zap store p/zap store t/test otters"

test win-q-patchport with "ts/y/routes/towers/oyster/troves/presto/otters/zap routes/zap towers/zap oyster/zap troves/zap spot/zap otters/test otters"

test win-all with "test ordrelmin/test stores/test routes/test troves/test presto/test oyster/test towers/test otters"

test win-plus with "test ordrelmin/test stores/test routes/test troves/test presto/test oyster/test towers/a5/test otters/y/test others"

test win-dial with "cap 2/test win-plus"

chapter ordeal reload

test porter with "x bookshelf/think/open door/1"

test qs with "x bookshelf/think/open door/1/5/lamp"

test elmo with "test porter/5/lamp/satchel/x settler/basement/d/in"

test orxdial with "test porter/5/sb niche/sb beams/sb tables/basement/chimney/stable/u/sb pram/ramp/enter closets/in/sb stair/stair/d".

test specter with "test elmo/3/y"

test ordrelmin with "think/x chair/x shelf/open door/1/5/sleep/lamp/satchel/t/basement/d/x settler/in/flier/1/1/1/1/1/1/1/1/1/1/1/1/1/1/1/1/1/1/1/1/1/1/2/staple/stapler/put staple in stapler/staple departure/in".

test ordrelmax with "think/x chair/x shelf/open door/1/5/sleep/lamp/satchel/t/basement/stable/chimney/painting/in/stair/out/u/ramp/d/snib/in/x settler/in/flier/1/1/1/1/1/1/1/1/1/1/1/1/1/1/1/1/1/1/1/1/1/1/2/staple/stapler/put staple in stapler/staple aperture/scepter/scepter/scan specter/t/scan specter/scepter/t/scan specter/scan specter/scan specter/scan specter/scan specter/scan specter/scan specter/x spectre/scepter/x 1/x 2/x 3/x 4/x 5/x 6/in".

chapter stores

test storesmin with "poss/ts/t/routes/troves/zap store b/zap store h/zap store y/patch course source/zap store t/otters/zap solid idols".

test storesmax with "poss/ts/t/sorbet/nestor/tokers/enter steaming/outside/routes/troves/abstract patcher to strip of profits/towers/oyster/others/presto/otters".

chapter troves

test trovesmin1 with "mbb 1/ts/t/troves/enter tastee/l/hate/care/observe/spot/believe/recall/despair/decide/bolster/deal/desire/aspire/ponder/deserve/last/ramble/misses/recant".

test trovesmin2 with "mbb 1/ts/t/troves/enter tastee/l/hate/care/observe/spot/reason/recall/despair/decide/master/deal/desire/strive/ponder/deserve/last/resist/misses/recant".

test trovesmax with "mbb 1/ts/t/troves/enter tastee/l/gape/stare/hate/care/spot/observe/surmise/spot/stay/recall/believe/reason/recall/despair/glare/decide/relapse/deal/bolster/master/deal/discover/desire/aspire/strive/ascertain/ponder/deserve/last/romanticise/ramble/resist/recant".

chapter routes

test routesmin with "ts/routes/enter routes/inside/x list o toils/x toils/out/past/despite/out/across/opposite/out/against/astride/below/under/in/out/above/from/beneath/until/around/along/amidst/athwart/between/misses/beyond".

test routesmax with "ts/routes/enter routes/in/inside/x list o toils/x toils/out/past/despite/out/across/opposite/out/against/astride/below/under/towards/in/out/above/from/beneath/until/around/along/amidst/athwart/between/through/without/beyond".

chapter presto

test prestomin with "ts/t/au 2/presto/enter tornado/umph/pooh/e/s/rats/drat/n/bleep/e/get popgun/w/wont/s/s/ole/darn/whassup/n/n/bingo/load gun with dart/there/n/syke/later/tough/n/screen/skid/leaf/get book/push skid s/push skid s/push skid s/put leaf on skid/push skid n/push skid n/push skid n/keyboard/put keyboard on slab/put screen on slab/disk/put disk in drive a/reboot/capslock/put lock on keyboard/futon/sleep/compile/cola/mug/pour cola in mug/debug/misses/sub".

test prestomax with "ts/t/au 2/presto/enter tornado/bleep/umph/phooey/e/s/keyboard/rats/drat/n/bleep/e/get popgun/prost/w/mazeltov/blam/there/s/s/ole/goodness/darn/whassup/n/n/abstract popgun to seminar/there/there/purloin popgun/there/bingo/load gun with dart/there/n/syke/what/later/tough/trasch/n/screen/get polemic/skid/leaf/reboot/sleep/casserole/get book/push skid s/push skid s/push skid s/put leaf on skid/disk/push skid n/push skid n/push skid n/keyboard/compile/put keyboard on slab/compile/no/put screen on slab/compile/disk/compile/put disk in drive a/compile/skid/reboot/capslock/compile/compile/put lock on keyboard/sleep/futon/compile/compile/sleep/compile/cola/mug/avider/derive/romsticks/tab/pour cola in mug/debug/misses/sub".

test presto1 with "ts/t/au 2/presto/enter tornado/umph/pooh/e/s/rats/drat/n/bleep/e/get popgun/w/wont/s/s/ole/darn/whassup/n/n/bingo/load gun with dart/there/n/syke/later/tough/n"

chapter oyster

test oystermin with "ts/oyster/enter barnacle balancer/get pills/spill pills/calm/run/boast/leap/scrap/e/seek/eat/tutor/w/n/trace/react/kiss/bonk/snap/in/bust/drop/out/s/w/warp/search/enlarge/n/w/bury/e/s/e/unearth/assuage/ask haunter about ruby/w/n/w/e/patrol/x gleaner/in/prepay/derail/spin/redial".

test oystermax with "ts/oyster/enter barnacle balancer/unset/remap/sing/scrape/stroll/calm/run/soar/fart/enter raft/boast/leap/tutor/scrap/unearth/misses/slander/misses/e/scan/seek/eat/tend/tutor/warp/swipe/w/n/warp/splain/react/kiss/snap/trace/kiss/bonk/react/kiss/bonk/snap/in/bust/drop/sweat/shape/clean/out/s/banish ruby/unearth/purloin ruby/unearth/w/search/warp/search/x gleaner/e/x gleaner/w/enlarge/n/w/bury/e/s/e/unearth/assuage/ask haunter about ruby/w/n/w/e/patrol/x gleaner/in/derail/revel/prepay/trample/psalm/tan/revel/derail/redial/spin/redial".

test oyster1 with "ts/oyster/enter barnacle balancer/unset/remap/sing/scrape/stroll/calm/run/boast/leap/tutor/scrap/e/seek/eat/w/n/trace/react/kiss/bonk/snap/in/bust/drop" [ cut-down, max-avoiding version of oystermax gets you to where you can shortly UNEARTH ]

chapter towers

test towersminh with "ts/towers/seed 1/enter turrets/z/gone/lardy/bleak/yonder/sadder/get all/n/put tarts in toaster/xray butlers/purloin brownies/put brownies in toaster/xray nereid/subtler/reined/n/semipro/pastier/n/married/n/s/s/e/sewed/nerdiest/e/marginal/holiest/n/hastiest/s/s/broken/resting/e/wordy/push retape/gt duck/push repeat/gt subsector/unlocked/gt copse/w/revised/put dagger in deviser/gt coastlines/grained/ask agnostic about doctor yow/rowdy/gt coastlines/give gizmo to agnostic/robust/stabler/enter boat/misses/spectacular".

test towersmini with "ts/towers/seed 1/enter turrets/z/gone/lardy/bleak/yonder/sadder/get all/n/put tarts in toaster/xray butlers/purloin brownies/put brownies in toaster/xray nereid/subtler/rinsed/e/restful/saltier/e/w/n/sewed/weariest/n/hastiest/released/e/holiest/w/w/married/n/s/e/s/s/e/broken/resting/e/wordy/push retape/gt duck/push repeat/gt subsector/unlocked/gt copse/w/revised/put dagger in deviser/gt coastlines/grained/ask agnostic about doctor yow/rowdy/gt coastlines/give gizmo to agnostic/robust/stabler/enter boat/misses/spectacular".

test towersmax with "ts/towers/seed 1/enter turrets/z/yonder/droney/gone/lardy/bleak/achier/snared/cricked/talcier/yonder/spectacular/sadder/get all/n/rusty/subtler/reined/rinsed/creaky/n/coiled/semipro/pastier/n/angstier/w/rustled/e/released/married/n/s/e/hastiest/weariest/s/nerdiest/saltier/sewed/mined/d/dandier/e/marginal/holiest/n/s/s/restful/naivest/w/grandiose/e/s/w/aimless/rousted/prosiest/n/broken/resting/e/fussier/unlocked/wordy/push retape/gt duck/push repeat/gt subsector/unlocked/gt copse/w/revised/put dagger in deviser/gt coastlines/grained/ask agnostic about doctor yow/pearly/attentive/rowdy/gt coastlines/give gizmo to agnostic/stabler/robust/rewired/enter boat/punier/antsier/present/in/spectacular/give pot to sitter/triste/give pot to sitter/annoyed/give pot to sitter/out/misses/spectacular".

[towers is big enough that for pre-regtest runs I want to make sure that my fix, indeed, works locally. So I have these tests divided up. ]

test towers1 with "ts/towers/seed 1/enter turrets/z/yonder/droney/gone/lardy/bleak/achier/snared/cricked/talcier/yonder/spectacular/sadder/get all/n/rusty/subtler/reined/rinsed/creaky/x scope/n". [ to the Scope Copse ]

test towers2 with "test towers1/n/coiled/semipro/pastier/n/angstier/w/rustled/e/released/married/n/s/e/hastiest/weariest/s/nerdiest/saltier/sewed/mined/d/dandier/e/marginal/holiest/n". [ to the coastlines with the Agnostic appearing ]

test towers3 with "test towers2/s/s/restful/naivest/w/grandiose/e/s/w/aimless/rousted/prosiest/n/broken/resting/e/fussier/unlocked/wordy/push retape/gt duck/push repeat/gt subsector/unlocked". [ rescue Dr Yow ]

test towers4 with "test towers3/gt copse/w/revised/put dagger in deviser/gt coastlines/grained/ask agnostic about doctor yow/pearly/attentive/rowdy/gt coastlines/give gizmo to agnostic". [ a bot boat is now prepared ]

test towers5 with "stabler/robust/rewired/enter boat". [ at the Mislit Limits. Not much of an extension, but each game-state is an important checkpoint ]

chapter otters

test ottersmin with "seed 1/ts/a5/t/otters/opt in/enter solid idols/barely/l/discern ed riley/discern/reedily/w/bossily/angrily/blearily/au 0/1/3/no/n/because/else/s/atom/e/n/enragedly/remotely/n/slow/coolest/paroled/artsy/l/s/s/s/loathingly/joltily/s/parrot/snail/hornets/racoon/l/n/n/w/w/raptor/quickly/w/7/e/deeply/w/misses/au 2/play whistle/y".

test ottersmax with "seed 1/ts/a5/t/otters/opt in/enter solid idols/barely/l/rescind/reedily/w/atom/s/although/ergo/n/n/because/else/s/bossily/angrily/blearily/au 0/1/3/no/actually/atom/quickly/n/else/because/else/unless/misses/s/s/ergo/although/ergo/however/n/atom/e/n/enragedly/remotely/n/slow/coolest/paroled/artsy/quickly/l/garbed/s/s/s/loathingly/joltily/s/parrot/snail/hornets/racoon/l/snipe/n/n/basically/w/raptor/deeply/deeply/w/honestly/aside/honestly/quickly/raptor/e/quickly/w/quickly/w/7/e/deeply/w/misses/au 2/play whistle/y".

chapter others

test othersmin with "rove over/others/in/t/z/z/limes/pears/grapes/plums/compass/x ruts circuits/tamarind/blueberries/cantaloupe/persimmon/maraschino/pomegranate/dates/n/apricot/apples/mulberries/gooseberry/s/n/icon/coconuts/tangerines/s/n/w/cranberries/blackberries/watermelon/e/s/sonic/n/d/give dollar/put icons in slot/eat arugula/guru dr severe/u/research/review/s/n/prep/n".

test othersmax with "rove over/others/in/t/z/z/limes/pears/grapes/plums/compass/x ruts circuits/tamarind/blueberries/cantaloupe/persimmon/maraschino/pomegranate/dates/n/apricot/apples/mulberries/gooseberry/s/n/icon/coconuts/tangerines/s/n/w/cranberries/blackberries/watermelon/pineapple/e/s/sonic/concisions/n/w/strawberries/grapefruit/raspberry/breadfruit/e/e/olives/cinque/cheap/papayas/among/ancienter/solemn/len mo/cripes/w/d/give dollar/put icons in slot/banana/go near/rhubarb/reversed/u/n/n/research/review/n".

chapter demo dome

test demodomemax with "z/demo dome mode/smell/listen/x me/s/s/n/xtrak/xab tripods/xtrak/x tripods/xtrak/x ignsay/x grate/turn dial/turn dial on/turn dial off/n/x tester street/g/xab tester street/xtrak/x tester street/xtrak/x coder decor/xab coder decor/xtrak/x coder decor/xtrak/x raised aiders/xtrak/xab raised aiders/x raised aiders/xtrak/w/s/w/x chronicle/xtrak/xab chronicle/x chronicle/xtrak/e/in/n/x apses/xtrak/xab apses/x apses/xtrak/x calendar/xtrak/xab calendar/x calendar/x shiest thesis/xtrak/out/e/out/e/w/e/x novella/w/e/read/w/s/e/rr/read/rr/rr/rr/rr/rr/rr/rr/rr/rr/r/rr/xtrak/w/d/x trifle/x placer/x duster/x dustpan/x ladder/x plastic/x bolt case/x satires/u/d/x clasper/u/s".

volume definitions

definition: a thing (called th) is mass-hint-appropriate: [this is a definition that the STS test file needs]
	unless th is fungible, no;
	yes;

chapter hint clashes

[* to make sure HINT, EAT CRUST and PREEF don't clash]

test clash-u with "routes/enter routes/against/past/out/across/out/inside/x list/out/x spoon/y"

test clash-v with "troves/enter troves/hate/care/spot/observe/eat truffle/sopt/reason/recall/hint/hint/hint/hint/eat truffle/y"

test clash-p with "presto/enter spot/w/e/s/hint/hint/hint/hint/eat crust/star/dart/n/umph/blam/eat crust"

test clash-y with "oyster/enter oyster/get pills/remap/sing/scrape/stroll/calm/hint/hint/hint/spill pills/n/run/boast/leap/spike/w/search arches/e/e/scan/seek/tutor/eat/w/w/warp/spill pills"

test clash-w with "fixtow/towers/enter towers/gone/awed/bleak/olden/godly/lardy/yonder/n/creaky/get toaster/rustled/n/rinsed/e/drained/e/broken/e/unlocked/fussier/eat strudel/xray fissure/w/w/w/hint hulk/g/g/g/xray hulk"

test clash-t with "a5/otters/enter otters/barely/reedily/w/snidely/tearily/n/because/else/discern/s/tediously/s/hint ghoul hat/g/g/g/discern"

volume talk-tests

chapter talky tests - not for release

section grill

grilling is an action applying to one thing.

understand the command "grill" as something new.

understand "grill [thing]" as grilling.

does the player mean grilling the player: it is very unlikely.

carry out grilling:
	if noun is not a person, say "Try grilling a person, instead." instead;
	repeat through matched item responses table of mrlp:
		if askee entry is noun, say "[askee entry] / [if there is a game-thing entry][game-thing entry][else](general)[end if] = [dialogue-text entry][line break]";
	repeat through unmatched topic responses table of mrlp:
		if askee entry is noun, say "[askee entry] / = [dialogue-text entry][line break]";
	repeat through ask x about x table of mrlp:
		if askee entry is noun, say "[askee entry] / = [dialogue-text entry][line break]";
	repeat through table of NPC and topic pairs:
		if askee entry is noun, say "[askee entry] -> [dialogue-text entry][line break]";

volume game state manipulation

chapter deprefing

[ * removes all prefiguring, for testing purposes]
deprefing is an action out of world.

understand the command "depref" as something new.

understand "depref" as deprefing.

carry out deprefing:
	if number of not unfigured things is 0:
		say "Nothing is prefigured.";
	else:
		say "De-prefiguring [list of prefigured things].";
		now all prefigured things are unfigured;
	the rule succeeds;

chapter xtuing

[this resets the xtra trax warning variable, for testing]

xtuing is an action out of world.

understand the command "xtu" as something new.

understand "xtu" as xtuing.

carry out xtuing:
	say "The xtra-trax-warn variable is [if xtra-trax-warn is false]already[else]now[end if] false.";
	say "The xtra-trax variable is [if xtra-trax is false]already[else]now[end if] false.";
	now xtra-trax is false;
	now xtra-trax-warn is false;
	the rule succeeds;

chapter unneging - not for release

[ * unneg can tell the game to help Gretta ]

unneging is an action applying to nothing.

understand the command "unneg" as something new.

understand "unneg" as unneging.

definition: a pickup-line (called mi) is smackable:
	if mi is not in Disowned Downside, no;
	if mi is not reflexive, no;
	yes;

carry out unneging:
	unless player is in Disowned Downside and parleys splayer players are in Disowned Downside, say "Need the parleys splayer players around." instead;
	let count be 0;
	let SI be number of smackable pickup-lines;
	while parleys splayer players are in Disowned Downside and count < 5:
		let rmi be a random smackable pickup-line in Disowned Downside;
		try fliptoing rmi;
		increment count;
	if count is 5:
		say "Uh-oh! The test command to unneg a random pickup line failed.";
		say "[SI] before, [number of smackable pickup-lines] after.";
	the rule succeeds;

chapter iiing

iiing is an action out of world.

understand the command "ii" as something new.

understand "ii" as iiing.

carry out iiing:
	say "DEBUG: Warpable [list of warpable things carried by player].";
	say "DEBUG: Special carried [list of regspecial things carried by player].";
	say "DEBUG: Special held [list of regspecial things held by player].";
	say "DEBUG: Special enclosed [list of regspecial things enclosed by player].";

section posfing - not for release

[force possible point notification on]

posfing is an action out of world.

understand the command "posf" as something new.

understand "posf" as posfing.

carry out posfing:
	say "Forcing possible point notification on[if possibles is true], though it already is[end if].";
	now possibles is true;
	pad-rec-q "poss";
	the rule succeeds;

chapter liliing

[* LILI lets you show a list by number in-game. LILI0 lets you see the list of activities. ]

understand the command "lili" as something new.

understand "lili" as lili0ing.

understand "lili [number]" as liliing.

[* TUT allows you to see Elmo and alter the scannedness of everything. 1 = no more scans and 2 = all scans. Should change to 0 for no scans, 1=ncscan, 2=cscan, 3=allscan]

tuting is an action applying to one number.

understand the command "tut" as something new.

understand "tut [number]" as tuting.

carry out tuting:
	let zzzz be { tables, niche, giant pin, meet bans, beams, pram, sitar, stria };
	if player is not in Dusty Study:
		say "Too late to use the Elmo tutorial. Restart and try again." instead;
	if number understood is 1:
		do nothing;
	else if number understood is 2:
		repeat with zzzzz running through zzzz:
			moot zzzzz;
			now zzzzz is ncscanned;
			now zzzzz is cscanned;
	else:
		say "tut 1 (no scans) or tut 2 (all scans) are the only numbers that work." instead;
	now player has settler;
	now player has treatise;
	now player has purse;
	move player to Carven Cavern;
	now Elmo is in Carven Cavern;
	try fliptoing rifle;
	the rule succeeds;

volume troves specific hinting

chapter mbbing

[ * this changes who the Marble Blamer is ]

mbbing is an action applying to nothing.
mbbnuming is an action applying to one number.

understand the command "mbb" as something new.

understand "mbb" as mbbing.
understand "mbb [number]" as mbbnuming.

this is the blamer-moot rule:
	if mbb is moot, say "Already mooted [mbb]." instead;

carry out mbbing:
	abide by the blamer-moot rule;
	now mbb is off-stage;
	say "[mbb] moved off-stage, and ";
	if mbb is Marble Blamer Mr Beal:
		now mbb is Marble Blamer Balmer;
	else:
		now mbb is Marble Blamer Mr Beal;
	move mbb to upscale capsule;
	now not-mbb is off-stage;
	say "[mbb] moved to [location of mbb].";
	the rule succeeds.

carry out mbbnuming:
	abide by the blamer-moot rule;
	if number understood is 1:
		now mbb is Marble Blamer Balmer;
	else if number understood is 2:
		now mbb is Marble Blamer Mr Beal;
	else:
		say "1 = Balmer, 2 = Mr Beal." instead;
	move mbb to Upscale Capsule;
	now not-mbb is off-stage;
	say "Moved [mbb] to Upscale Capsule, [not-mbb] off-stage." instead;
	the rule succeeds;

volume otters specific hinting

chapter powing

powing is an action applying to one number.

understand the command "pow" as something new.

understand "pow [number]" as powing.

carry out powing:
	let pbprev be power-back;
	if the number understood is 1:
		now power-back is whether or not power-back is false;
	else if the number understood is 0:
		now power-back is false;
	else if the number understood is 2:
		now power-back is true;
	say "You [if pbprev is power-back]already[else]now[end if] [if power-back is false]don't [end if]have your magic powers for Otters.";
	the rule succeeds

volume others specific testing

chapter fruiing

[* tests where all the fruits are]

fruiing is an action out of world.

understand the command "fruits" as something new.
understand the command "fruit" as something new.
understand the command "frui" as something new.
understand the command "fru" as something new.
understand the command "fr" as something new.

understand "fruits" as fruiing.
understand "fruit" as fruiing.
understand "frui" as fruiing.
understand "fru" as fruiing.
understand "fr" as fruiing.

definition: a fruit (called fr) is in-play:
	if fr is moot or fr is off-stage, no;
	if fr is held, no;
	yes;

to say f-and-rev of (fr - a fruit):
	say "[fr] ([if rev-item of fr is fr]magic word[else]from [rev-item of fr][end if])"

carry out fruiing:
	if mrlp is not others, say "Fruit tracking is not useful outside the others region." instead;
	repeat with fru running through moot fruits:
		say "[f-and-rev of fru] returned to Curtis. From room = [frroom of fru].";
	if number of moot fruits > 0, say "========================================[line break]";
	repeat with fru running through off-stage fruits:
		say "[f-and-rev of fru] still off-stage. From room = [frroom of fru].";
	if number of off-stage fruits > 0, say "========================================[line break]";
	repeat with fru running through in-play fruits:
		say "[f-and-rev of fru] still in-play, in [location of fru][if location of fru is location of player] [b]([b]HERE[r])[r][end if].";
	if number of in-play fruits > 0, say "========================================[line break]";
	repeat with fru running through held fruits:
		say "[f-and-rev of fru] held.";
	if number of held fruits > 0, say "========================================[line break]";
	let got-error be false;
	repeat with fru running through fruits:
		let rev-itm be rev-item of fru;
		let frr be frroom of fru;
		if frr is Rustic Citrus:
			if rev-itm is listed in rustic-hard-items or rev-itm is listed in rustic-easy-items, next;
			say "[rev-itm] not in [rustic-hard-items] or [rustic-easy-items].";
			next;
		if frr is Swell Wells and rev-itm is listed in wells-hintables, next;
		if frr is Clangier Clearing and rev-itm is listed in clearing-hintables, next;
		if frr is Filed Field and rev-itm is listed in field-hintables, next;
		if frr is Scape Space and rev-itm is listed in scapespace-hintables, next;
		say "[fru], in [frr], does not have [rev-itm] in a hint list. It doesn't need one, but it'd be nice to have one.";
		now got-error is true;
	if got-error is true, say "========================================[line break]";
	say "[number of fruits] total fruits. [number of moot fruits] to Curtis, [number of off-stage fruits] not here yet, [number of held fruits] held, [number of fruits - (number of moot fruits + number of off-stage fruits + number of held fruits)] in the area.";
	the rule succeeds;

to decide which thing is rev-item of (f - a fruit):
	repeat through table of others anagrams:
		if the-to entry is f, decide on the-from entry;
	decide on nothing;

chapter soning

soning is an action applying to one number.

understand the command "son" as something new.

understand "son [number]" as soning.

coinlist is a list of things variable. coinlist is { coin, icon, coins, icons, s-c, s-i }.

carry out soning:
	if number understood < 0 or number understood > number of entries in coinlist, say "0-[number of entries in coinlist] please." instead;
	repeat with ZZ running from 1 to number of entries in coinlist:
		if ZZ is number understood:
			now player has entry ZZ in coinlist;
		else:
			now entry ZZ in coinlist is off-stage;
	if number understood is 0:
		say "All coinish items are out of play.";
	else:
		say "Giving you [the entry number understood in coinlist].";
		if number understood > 4:
			say "[line break](giving you concisions as well)[line break]";
			now player has concisions;
	the rule succeeds;

volume towers specific testing

chapter palcluing

palcluing is an action applying to nothing.

understand the command "palclu" as something new.

understand "palclu" as palcluing.

carry out palcluing:
	say "Moving all palace clue items to Mislit Limits: [nextclue].";
	repeat with NC running through nextclue:
		now NC is in Mislit Limits;
	the rule succeeds.

chapter repling

[* replaces guardians in TOWERS, otherwise, reject]

repling is an action out of world.

understand the command "repl" as something new.

understand "repl" as repling.

carry out repling:
	if mrlp is towers:
		now all red guardians are off-stage;
		now all blue guardians are off-stage;
		now atheists are off-stage;
		now the-hostile is off-stage;
		say "All red and blue guardians reinitialized. Side guardians (necessary or not) are still there.";
		reposition-guardians;
		the rule succeeds;
	say "Doesn't apply here.";

chapter coping

[* repositions guardians, sends you to Scope Copse]

coping is an action out of world.

understand the command "cop" as something new.

understand "cop" as coping.

carry out coping:
	move player to Scope Copse;
	reposition-guardians;
	the rule succeeds;

chapter gzing

[* GZ zaps all the guardians.]

gzing is an action out of world.

understand the command "gz" as something new.

understand "gz" as gsing.

carry out gzing:
	repeat with myg running through guardians:
		moot myg;
		increment cur-score of towers;
	now min-score of towers is 31;
	if strudel is reflexed:
		increment min-score of towers;
	if old ice is reflexed:
		increment min-score of towers;
	if sporties ripostes are reflexed:
		increment min-score of towers;

chapter picpicing

picpicing is an action applying to nothing.

understand the command "picpic" as something new.
understand the command "warwar" as something new. ["warrior" backwards compatibility]

understand "picpic" as picpicing when player is in Loftier Trefoil.
understand "warwar" as picpicing when player is in Loftier Trefoil.

carry out picpicing:
	say "Flipping all of [the list of picaros in Loftier Trefoil] and [the recital article], too.";
	repeat with pic running through not leaderly picaros in Loftier Trefoil:
		try fliptoing pic;
	try fliptoing recital article;
	try fliptoing Rodney;
	the rule succeeds;

chapter gforceing

gforceing is an action applying to one visible thing.

understand "gf [any room]" as gforceing.

definition: a room (called rm) is deadendy:
	let temp be 0;
	repeat with DI running through cardinal directions:
		unless the room DI of rm is nowhere, increment temp;
	if temp is 1, yes;
	no;

carry out gforceing:
	if mrlp is not towers, say "[b]GFORCE[r] only works in [b]TOWERS[r]." instead;
	if map region of noun is not towers, say "[b]GFORCE[r] only works moving to another room in [b]TOWERS[r]." instead;
	if progval of noun is not 2, say "[noun] is not a mainland room." instead;
	if noun is deadendy, say "[noun] is a dead end room. The only way to get there is to remove its only guardian." instead;
	repeat with QQ running through guardians:
		unless QQ gendermatches:
			if QQ is in noun, now QQ is off-stage;
			next;
		if gualoc of QQ is noun or far-room of QQ is noun:
			move QQ to noun;
		else:
			now QQ is off-stage;
	move the player to noun;
	choose-new-hint-guardian;
	say "(You may wish to [b]UNDO[r] once you see the debug text.)";

chapter xring

understand the command "xr" as something new.

understand "xr" as xring.
understand "xr [something]" as xring.

carry out xring:
	now xraytrump is true;
	try xraying the noun;
	the rule succeeds;

chapter xaing

xaing is an action out of world.

understand the command "xa" as something new.

understand "xa" as xaing.

carry out xaing:
	now xraytrump is true;
	repeat with xc running through all fungible things:
		if xc is not curst palace and xc is not the player:
			say "[xc]:[line break]";
			try xraying xc;
	now xraytrump is false;
	the rule succeeds.

volume demo dome specific tests

chapter xabing

[x all but last row of an exhibit]

understand the command "xab" as something new.

understand "xab [something]" as xabing.

chapter xtraking

understand the command "xtrak" as something new.

understand "xtrak" as xtraking.

check going south in Peek Keep:
	try xtraking;

xtraking is an action out of world.

after printing the name of an exhibit (called myx) when xtraking: say " ([location of myx])";

carry out xtraking:
	say "[b]UNNOTED[r] exhibits: [list of unnoted exhibits].";
	say "[b]PERUSED[r] exhibits: [list of perused exhibits].";
	say "[b]EXHAUSTED[r] exhibits: [list of exhausted exhibits].";
	if sparse spares is visited:
		say "[b]UNEXAMINED[r] in Sparse Spares: [list of unexamined things in sparse spares].";
		say "[b]EXAMINED[r] in Sparse Spares: [list of examined things in sparse spares].";
	the rule succeeds;

volume superpower hinting

chapter hring

[ * hr = headache recharge is not a very good superpower but it still counts ]

hring is an action applying to nothing.

understand the command "hr" as something new.

understand "hr" as hring.

carry out hring:
	say "Recharged slider headaches to 50.";
	now headaches is 50;
	the rule succeeds.

chapter tkturbo

[* TAKE ALL is allowed & applies to scenery as well]

talling is an action out of world.

understand the command "tall" as something new.

understand "tall" as talling.

carry out talling:
	say "Now you can[if take-test is true]'t[end if] take all the things.";
	now take-test is whether or not take-test is false;
	the rule succeeds;

take-test is a truth state that varies.

check taking:
	if take-test is true:
		if noun is scenery, say "DEBUG: [noun]: Can't take scenery.";
		if noun is fixed in place, say "DEBUG: [noun]: Fixed in place.";
		if noun is a person, say "DEBUG: [noun]: Person.";

The can't take what's fixed in place rule is not listed in the check taking rulebook.
The can't take scenery rule is not listed in the check taking rulebook.

[The exclude scenery from take all rule is not listed in the for deciding whether all includes rulebook.
The exclude fixed in place things from take all rule is not listed in the for deciding whether all includes rulebook.
The exclude people from take all rule is not listed in the for deciding whether all includes rulebook.

Rule for deciding whether all includes scenery:
	if take-test is true, it does;
	it does not;

Rule for deciding whether all includes people while taking:
	if take-test is true, it does;
	it does not;

Rule for deciding whether all includes fixed in place things while taking:
	if take-test is true, yes;
	it does not;]

chapter scams

[* SCAM enables scams for areas with hints that should only work once. Spoon Crust Pills Cinders (?) Xray (?) ]

scaming is an action applying to one number.

understand the command "scam" as something new.
understand the command "scams" as something new.

understand "scam [number]" as scaming.
understand "scams [number]" as scaming.

carry out scaming:
	if number understood < 0 or number understood > 2, say "Scam toggling should be 0 (off), 1 (toggle) or 2 (on)." instead;
	let prev-scam be scams;
	if number understood is 1:
		now scams is whether or not scams is false;
	else if number understood is 2:
		now scams is true;
	else if number understood is 0:
		now scams is false;
	say "Scams is [if scams is prev-scam]already[else]now[end if] [on-off of scams].";
	the rule succeeds;

scambasing is an action out of world.

carry out scambasing:
	try scaming 1;

understand "scam" as scambasing.
understand "scams" as scambasing.

volume male/female

chapter gsing

[* GS switches your sex.]

gsing is an action out of world.

understand the command "gs" as something new.

understand "gs" as gsing.

carry out gsing:
	if player is male:
		choose-female;
	else:
		choose-male;
	say "Player is now [if player is female]fe[end if]male, and all associated NPCs['] genders have been swapped, too.";
	the rule succeeds;

volume misc

chapter mowing

[* MOW allows you to mow through all the options you haven't used yet in a dialogue]

mowing is an action out of world.

understand the command "mow" as something new.

understand "mow" as mowing.

carry out mowing:
	let count be 0;
	repeat through qbc_litany:
		if response entry is not mowered and enabled entry is 0:
			increment count;
			if count is 6:
				say "More than 5 choices still left. You may need to rerun.";
				the rule succeeds;
			now enabled entry is 1;
	say "Enabled [count] new choice[if count is not 1]s[end if].";
	the rule succeeds;

chapter halling

[* this hints everything that is still useful and not realized]

halling is an action out of world.

understand the command "hall" as something new.

understand "hall" as halling.

carry out halling:
	repeat with thisthing running through fungible not realized things:
		say "[thisthing]: [run paragraph on]";
		try objhinting thisthing;
	the rule succeeds;

volume diagnostics

chapter palling

[* PALL lets you see all the pad]

palling is an action out of world.

understand the command "pall" as something new.

understand "pall" as palling.

carry out palling:
	now player has pedanto notepad;
	repeat through table of notepad entries:
		now known entry is true;
	say "Pad is now fully stocked. Have fun.";

chapter misseding

[* MISSED shows what this area missed, and in the strip you get an added bonus of alternate ways through]

misseding is an action out of world.

understand the command "missed" as something new.

understand "missed" as misseding.

carry out misseding:
	say "[miss-types].[paragraph break]";
	now mrlp is solved;
	process the show what the player missed rule;
	now mrlp is unsolved;
	the rule succeeds;

chapter missalt

[* MISSALT shows alternate routes]

missalting is an action out of world.

understand the command "missalt" as something new.
understand the command "alt" as something new.

understand "missalt" as missalting.
understand "alt" as missalting.

carry out missalting:
	say "[miss-types].[paragraph break]";
	process the show alternate paths rule;
	the rule succeeds;

to say miss-types:
	say "[b]MISSED[r] = all (solved) regions['] misses--not including the current region.";
	say "[b]MISSES[r] = this region's misses (may provide nonsense/spoilers).";
	say "[b]MISSALT[r] = show alternate mutually exclusive routes for solved regions.";
	say "[b]THISALT[r] = show alternate mutually exclusive routes for this region (may provide nonsense/spoilers).";
	say "[paragraph break]========================Real stuff below";

chapter thisalting

[ * THISALT shows the alternate paths so far ]

thisalting is an action out of world.

understand the command "thisalt" as something new.

understand "thisalt" as thisalting.

carry out thisalting:
	say "Looking at alternate routes, [mrlp] using [altroutes of mrlp]...";
	process the altroutes of mrlp;
	the rule succeeds;

chapter sccing

sccing is an action out of world.

understand the command "scc" as something new.

understand "scc" as sccing.

[* SCC tracks the scan text of things.]

carry out sccing:
	let unscan be 0;
	let myl be a list of things;
	repeat with Z running through not unspoilable things:
		if Z is uncluing:
			say "[Z] is not not-easy but it is uncluing. Fix this.";
	repeat with Z running through not uncluing things:
		if a-text of Z is "":
			say "[Z] needs a-text.";
			add Z to myl;
			increment unscan;
		if b-text of Z is "":
			say "[Z] needs b-text.";
		unless a-text of Z is "" or b-text of Z is "":
			say "[Z]: [a-text of Z] [b-text of Z]. [Z] is [if Z is auxiliary]auxiliary[else]flippable[end if]. ";
			say "[Z] is [if Z is unspoilable]unspoilable[else if z is any-spoilable]any-spoilable[else if Z is parse-spoilable]parse-spoilable[else]unknown: BUG[end if].";
	if unscan > 0:
		say "[unscan] things left to ID: [myl].";
	else:
		say "A-text/b-text complete!";
	the rule succeeds;

chapter hashchecking

[* HASHCHECK makes sure that hashes check okay]

hashchecking is an action out of world.

understand the command "hashcheck" as something new.

understand "hashcheck" as hashchecking.

carry out hashchecking:
	let my-bool be false;
	let this-hash be 0;
	repeat with QQ running through regions:
		if QQ is not demo dome:
			repeat through regana of QQ:
				now this-hash is the hash of right-word entry;
				 if fullhash entry is not this-hash:
					say "Bad flip hash for [the-from entry]/[right-word entry]: [fullhash entry] should be [this-hash].";
					now my-bool is true;
	if my-bool is false:
		say "Hooray! No bad hashes in tables of anagrams.";
	now my-bool is false;
	repeat through regnud of mrlp:
		now this-hash is the hash of this-cmd entry;
		if this-hash is not hashval entry:
			say "Bad nudge hash for [this-cmd entry]: [hashval entry] should be [this-hash].";
	if my-bool is false:
		say "Hooray! No bad hashes in table of nudges.";

chapter orfing

[* ORF detects conversational orphans]

orfing is an action out of world.

understand the command "orf" as something new.

understand "orf" as orfing.

carry out orfing:
	let this-found be false;
	repeat with qi running through quips:
		now this-found is false;
		let qa be qi;
		repeat through table of Elmo comments:
			if response entry is qa:
				now this-found is true;
		repeat through table of Elvira comments:
			if response entry is qa:
				now this-found is true;
		repeat through table of Perrot comments:
			if response entry is qa:
				now this-found is true;
		if this-found is false:
			say "[qa] is orphaned.";

chapter mf

[* MF checks who is male or female]

mfing is an action out of world.

understand the command "mf" as something new.

understand "mf" as mfing.

carry out mfing:
	repeat with mf running through people:
		say "[mf] ";
		say "[if mf is plural-named]are[else]is[end if] ";
		say "[if mf is male]M[else if mf is female]F[else]neutered AFAIK[end if][if mf is animal] and animal too[end if].";
	the rule succeeds;

chapter misc

[* shows all flippable nonreflexive e.g. what you can muck with]

miscing is an action out of world.

understand the command "misc" as something new.

understand "misc" as miscing.

carry out miscing:
	if number of flippable nonreflexive things > 0:
		say "Flippable nonreflexive: [list of flippable nonreflexive things].";

chapter puh

[ * PUH pickup-hints everything ]

chapter puhing

puhing is an action out of world.

understand the command "puh" as something new.

understand "puh" as puhing.

carry out puhing:
	repeat with X running through pickup-lines:
		say "[X]: disrupt the [pla-ma]s [if pickup-description of X is empty]BLANK, FIX THIS[else][pickup-description of X][end if]."; [bold-ok]
		say "Make the [pla-ma]s talk more [pickup-spoil of X].";
	the rule succeeds.

volume seeding

chapter ploping

[* PLOP seeds the towers/otters with everything ]

ploping is an action out of world.

understand the command "plop" as something new.

understand "plop" as ploping.

carry out ploping:
	let any-good be false;
	if uber-rand-cheat is true:
		say "You already dumped everyone in the Trefoil and Disowned Downside.";
		the rule succeeds;
	if Loftier Trefoil is visited and Disowned Downside is visited:
		say "You already went to the Trefoil and Disowned Downside, so I'm going to make you restart, because reasons. It might break too much.";
		the rule succeeds;
	if Loftier Trefoil is visited:
		say "Skipping the Trefoil as you've been there.";
	else:
		now all picaros are in Loftier Trefoil;
		say "Dumping every warrior in the Trefoil.";
		say "ts, towers, in, y for towers.";
	if gretta-score > 0:
		say "Skipping the Disowned Downside as you've already messed with the players/macks/pickup lines a bit.";
	else:
		now all pickup-lines are in Disowned Downside;
		say "Dumping every pickup line idea in the Disowned Downside.";
		say "a5, in, barely, reedily, w for otters.";
	now uber-rand-cheat is true;
	the rule succeeds;

after fliptoing when uber-rand-cheat is true:
	process the uber-towers rule;
	process the uber-otters rule;
	continue the action;

every turn when player is in Disowned Downside and parleys splayer players are in Disowned Downside and uber-rand-cheat is true (this is the uber-otters rule):
	say "Adverbs available:";
	repeat with QQ running through pickup-lines in Disowned Downside:
		choose row with the-from of QQ in table of otters anagrams;
		say " [right-word entry in upper case]";
	say ".";

every turn when player is in Loftier Trefoil and uber-rand-cheat is true (this is the uber-towers rule):
	say "Adjectives available:";
	repeat with QQ running through picaros in Loftier Trefoil:
		choose row with the-from of QQ in table of towers anagrams;
		say " [right-word entry in upper case]";
	say ".";

chapter srqing

[ * solve region quick ]

srqing is an action out of world.

understand the command "srq" as something new.

understand "srq" as srqing.

carry out srqing:
	if mrlp is stores:
		say "Need to do stores manually." instead;
	if mrlp is demo dome:
		say "Unsolvable." instead;
	if mrlp is otters:
		now otters is solved;
		end the story finally saying "A MONSTER ROTS. AMEN.";
		follow the shutdown rules instead;
	if mrlp is others:
		end the story finally saying "A Giddy Route: You Did Great";
		follow the shutdown rules instead;
	solve-region mrlp;
	the rule succeeds;

chapter ptsing

[ this approximately shows the points you did ]

ptsing is an action out of world.

understand the command "pts" as something new.

understand "pts" as ptsing.

carry out ptsing:
	if cur-score of mrlp is 0, say "You've done nothing yet." instead;
	let any-yet be false;
	repeat through regana of mrlp:
		if the-from entry is moot or the-from entry is reflexed or the-from entry is flip-irrelevant, next;
		if there is a the-to entry and the-to entry is moot, next;
		if the-from entry is flip-irrelevant, next;
		if location of the-from entry is shunned:
			now any-yet is true;
			say "(too late): [right-word entry].";
	now any-yet is false;
	say "[if any-yet is true]===========================================[line break]";
	repeat through regana of mrlp:
		if the-from entry is moot or the-from entry is reflexed or the-from entry is flip-irrelevant, next;
		if there is a the-to entry and the-to entry is moot, next;
		if the-from entry is flip-irrelevant, next;
		if the-from entry is llpish and location of the-from entry is shunned, next; [ this accounts for B which doesn't come on-stage until A does ]
		now any-yet is true;
		say "(LLP): [right-word entry].";
	say "[if any-yet is true]===========================================[line break]";
	now any-yet is false;
	repeat through regana of mrlp:
		if the-from entry is moot or the-from entry is reflexed or the-from entry is flip-irrelevant, next;
		if there is a the-to entry and the-to entry is moot, next;
		if the-from entry is flip-irrelevant, next;
		if location of the-from entry is shunned or the-from entry is llpish, next;
		if any-yet is false:
			now any-yet is true;
			say "[b]LIKELY FIRST NECESSARY[r]: [right-word entry].";
		else:
			say "[b]UNDONE[r]: [right-word entry].";
	the rule succeeds;

definition: a thing (called th) is flip-irrelevant: [NOTE: this is not used for regular LLPs but rather for optional stuff like the 3-of-6 at the start of Oyster]
	if th is in posh hops shop and posh hops shop is shunned, yes;
	if mrlp is presto:
		if lawl wall is moot:
			if th is keys or th is hogs, yes;
		if Leo is dismissed:
			if th is log ons letters or th is alert letters or th is ought letters, yes;
	if mrlp is oyster:
		if th is carps or th is pikes:
			if pikes are moot, yes;
	if mrlp is towers:
		if Rawest Waster Waters is visited or mislit limits is visited:
			if th is turbos or th is blaster or th is earnest eastern neaters, yes;
	if mrlp is others:
		if gates-score is 2:
			if th is viewer or th is searcher or th is fleeing feeling, yes;
	if th is not-mbb, yes;
	no;

volume synonyms for items we don't want to be able to manipulate in release

understand "tbossily" as t-bossily.

understand "tcattily" as t-cattily.

understand "tseedily" as t-seedily.

understand "ttearily/tirately/treality" as t-tearily-irately.

understand "tnastily" as t-nastily.

understand "tshadily" as t-shadily.

understand "tsnidely" as t-snidely.

understand "tstarkly" as t-starkly.

understand "tblearily" as t-blearily.

understand "tcoitally" as t-coitally.

understand "tformally" as t-formally.

understand "tribaldly" as t-ribaldly.

understand "tshabbily" as t-shabbily.

understand "tshoddily" as t-shoddily.

understand "tsilently" as t-silently.

understand "tsuddenly" as t-suddenly.

understand "tmodestly" as t-modestly.

understand "tsteamily" as t-steamily.

understand "tstupidly" as t-stupidly.

understand "tmartially" as t-martially.

understand "tsincerely" as t-sincerely.

understand "tsobbingly" as t-sobbingly.

understand "ttediously" as t-tediously.

understand "twearingly" as t-wearingly.

understand "tdesperately" as t-desperately.

understand "tdrawlingly" as t-drawlingly.

understand "temotionally" as t-emotionally.

understand "tdespairingly" as t-despairingly.

understand "tindiscreetly" as t-indiscreetly.

volume jumpthrough information

understand "jh [number]" as jumpthroughing.
understand "jo [number]" as jumpthroughing.
understand "jp [number]" as jumpthroughing.
understand "js [number]" as jumpthroughing.
understand "jt [number]" as jumpthroughing.
understand "ju [number]" as jumpthroughing.
understand "jv [number]" as jumpthroughing.
understand "jw [number]" as jumpthroughing.
understand "jy [number]" as jumpthroughing.

understand "jh" as jumpthroughalling.
understand "jo" as jumpthroughalling.
understand "jp" as jumpthroughalling.
understand "js" as jumpthroughalling.
understand "jt" as jumpthroughalling.
understand "ju" as jumpthroughalling.
understand "jv" as jumpthroughalling.
understand "jw" as jumpthroughalling.
understand "jy" as jumpthroughalling.

the deduce region from first letter rule is listed first in the check jumpthroughing rules.

check jumpthroughing (this is the deduce region from first letter rule):
	if word number 1 in the player's command is "jh":
		now jump-region is others;
		now jump-table is table of others jumps;
	else if word number 1 in the player's command is "jo":
		now jump-region is ordeal reload;
		now jump-table is table of ordeal reload jumps;
	else if word number 1 in the player's command is "jp":
		now jump-region is presto;
		now jump-table is table of presto jumps;
	else if word number 1 in the player's command is "js":
		now jump-region is stores;
		now jump-table is table of stores jumps;
	else if word number 1 in the player's command is "jt":
		now jump-region is otters;
		now jump-table is table of otters jumps;
	else if word number 1 in the player's command is "ju":
		now jump-region is routes;
		now jump-table is table of routes jumps;
	else if word number 1 in the player's command is "jv":
		now jump-region is troves;
		now jump-table is table of troves jumps;
	else if word number 1 in the player's command is "jw":
		now jump-region is towers;
		now jump-table is table of towers jumps;
	else if word number 1 in the player's command is "jy":
		now jump-region is oyster;
		now jump-table is table of oyster jumps;
	else:
		say "Unrecognized region." instead;
	say "Jump region is now [jump-region].";
	say "Jump table is now [jump-table].";
	now in-jump-test is true;

report jumpthroughing:
	now in-jump-test is false;

table of ordeal reload jumps
what-to-flip-to	what-before	dir-to-go	place-to-go	is-llp	is-alt-llp
lamp	intro-bit rule	a direction	a room	a truth state	a truth state
letters settler
tables
abstract painting	--	--	--	true	true
meet bans
chimney	--	--	--	true	true
ramp	--	up	--	true	true
stair	--	down	--	true	true
bins	--	--	--	true	true
rifle	flier-prep rule	--
staple	cavern-prep rule
stapler
respect specter	--	--	--	true	true
--	enter-aperture rule

this is the intro-bit rule:
	try thinking;
	try examining the bookshelf;
	try examining the isolani liaison;
	deliver the summary-quip quip;
	deliver the leave-quip quip;
	darken-study;

this is the flier-prep rule:
	try examining the settler;
	try going inside;

this is the cavern-prep rule:
	now yn-auto is 2;
	deliver the bye-Elmo-quip quip;
	move-to-cavern;

this is the enter-aperture rule:
	try stapleing apertured departure;
	try going inside;

table of stores jumps
what-to-flip-to	what-before	dir-to-go	place-to-go	is-llp	is-alt-llp
store b	--	--	--	true	true
tokers
nestor
suit ode	--	inside
source course
tastee estate
odorant tornado
barnacle balancer
truster turrets
solid idols

table of routes jumps
what-to-flip-to	what-before	dir-to-go	place-to-go	is-llp	is-alt-llp
scripture picturers	to-routes rule
gast	see-ingredients rule
worst ad	--	--	--	true	true
side art
rude n nuder
u nerd endur redun
adsorbing signboard
stupor sprout
lairage regalia	--	outside
pipe soot
morf form	check-with-horbert rule
the bean
the bean
odd run on aura
un road
noon gag
data dim mists
thickness sketchins
bent ewe
hurt hog
raptest patters	--	--	--	true	true
yob den

this is the to-routes rule:
	try tsing;
	try fliptoing source course;
	try entering source course;

this is the see-ingredients rule:
	try examining list o toils;
	try going outside;

this is the check-with-horbert rule:
	try going outside;
	try going inside;
	process the horbert quest item return rule;
	try going outside;

table of troves jumps
what-to-flip-to	what-before	dir-to-go	place-to-go	is-llp	is-alt-llp
eh at heat	to-troves rule
Pa Egg Pea	--	--	--	true	true
tears taser	--	--	--	true	true
Race Acre
sob ever verbose
mussier misuser	--	--	--	true	true
stop post
SNORE SO ARENA	--	--	--	false	true
evil bee	--	--	--	true	false
a sty tasty say	--	--	--	true	true
L Clear Cellar
diapers
large regal lager	--	--	--	true	true
Id Cede
ME ARTS	--	--	--	false	true
lobster	--	--	--	true	false
pleaser leapers	--	--	--	true	true
LEAD
DIVORCES	--	--	--	true	true
Si Reed
praise spirea	--	--	--	false	true
rivets	--	--	--	true	false
sectarian craniates	--	--	--	true	true
END PRONER POD
red vees
salt
Sister Tressi Siters	--	--	--	true	false
Marble Blamer Balmer	--	--	--	false	true
Creationism Reactionism	--	--	--	true	true
trance nectar

this is the to-troves rule:
	try tsing;
	now mbb is marble blamer balmer;
	try fliptoing tastee estate;
	try entering tastee estate;

table of presto jumps
what-to-flip-to	what-before	dir-to-go	place-to-go	is-llp	is-alt-llp
hump	to-presto rule
angrier earring	--
maze walls	--	east
lamb
star	--	south
leo	--	south
rand
wzup
sods gone odes song	--	--	--	true	true
dart	--	north
plebe	--	north
boing go bin	--	east
sport ports	--	--	--	true	true
ether	load-gun rule
keys	--	north
log ons letters
alert letters
hawt thaw	--	--	--	true	true
starch charts	--	--	--	true	true
caps lock	get-censer rule
screen
leaf
skid
keyboard	get-yak rule
mug
cola
e robot	disk-in-drive rule
drive a
drive e
futon
tba key	--	--	--	true	true
rom sticks	--	--	--	true	true
casserole	--	--	--	true	true
polemic
speel
BUB DUDE EGG
USB

this is the to-presto rule:
	try tsing;
	try fliptoing odorant tornado;
	try entering odorant tornado;

this is the load-gun rule:
	try going west;
	try inserting dart into popgun;

this is the get-censer rule:
	try going north;

this is the get-yak rule:
	try putting leaf on skid;
	try pushing skid to south;
	try pushing skid to south;
	try pushing skid to south;
	abide by the leaf-yak rule;
	try pushing skid to north;
	try pushing skid to north;
	try pushing skid to north;
	try fliptoing disk;

this is the disk-in-drive rule:
	try inserting disk into drive a;

table of oyster jumps
what-to-flip-to	what-before	dir-to-go	place-to-go	is-llp	is-alt-llp
gins sign	to-oyster rule
tips pits
tines
LOLstr trolls
clam
urn
boats
pale plea
pikes
pest pets	--	east
cans	--	--	--	true	true
eeks
wipes	--	--	--	true	true
dent	--	--	--	true	true
trout
tea
snarled darnels	--	west	--	true	true
bogus-trace	--	north
crate
skis
knob
span pans
bogus-plains	--	--	--	true	true
tubs	--	inside
digger
waste	--	--	--	true	true
lance	--	--	--	true	true
heaps	--	--	--	true	true
ruby	hutlets-to-closures rule
Achers Chaser Arches
thin hint	sausage-prep rule
sausage	--	--	Anger Range
sausage
--	tell-sausage rule
pol art portal
bogus-enlarge
bogus-reangle	--	--	--	true	true
papery yapper	avoid-dead-end rule
lever	--	--	--	true	true
templar ramplet	--	--	--	true	true
bogus-psalm	--	--	--	true	true
natant ant	--	--	--	true	true
bogus-derail
pins
bogus-redial

this is the to-oyster rule:
	try tsing;
	try fliptoing balancer barnacle;
	try entering balancer barnacle;

this is the hutlets-to-closures rule:
	try going outside;
	try going south;
	try going west;
	try taking inventory;

this is the sausage-prep rule:
	try going north;
	try going west;

this is the tell-sausage rule:
	try objasking sausage about ruby;

this is the avoid-dead-end rule:
	try examining general gleaner;
	try going inside;

table of towers jumps
what-to-flip-to	what-before	dir-to-go	place-to-go	is-llp	is-alt-llp
--	first-picaro-flip rule
--	picaro-flip rule
--	picaro-flip rule
--	picaro-flip rule	--	--	true	true
--	picaro-flip rule	--	--	true	true
--	picaro-flip rule	--	--	true	true
recital article	--	--	--	true	true
rodney
dreads adders
brownies	--	north	--	true	true [from yurts]
butlers
deviser	--	west
samiels	--	west	--	true	true
bogus-rousted	--	--	--	true	true
nereid	--	east
diners	--	--	--	true	true
keycar	--	--	--	true	true
pirates	--	north
docile old ice	--	--	--	true	true
admirer	--	north
ingrates	--	--	--	true	true
strudel	--	west	--	true	true
Reeds Ale	--	east	--	true	true
promise imposer	--	south
ragged dagger	--	east
sweatier wait seer	--	--	--	true	true
Eclairs	--	--	--	true	true
bogus-dandier	--	down	--	true	true
realist tailers	--	--	--	true	true
fluster self rut	--	south	--	true	true
organised ego drains	--	--	--	true	true
raves saver	--	north	--	true	true
resident trendies
alarming grailman	--	east
bonker	--	south
stinger
luck node	prepare-luck-node rule
natives site van	--	west	--	true	true
sporties ripostes	--	south	--	true	true
hostile is he lot	--	--	artist traits strait
asset hit atheists	--	north
solve a loaves
--	yow-teaches-agnostic rule
atblock	--	--	--	true	true
--	get-gizmo rule
weirder red wire	--	--	--	true	true
turbos
blaster
repents serpent	get-in-boat rule	--	--	true	true
nastier stainer retinas	--	--	--	true	true
succor crocus	--	--	--	true	true
done any anodyne	--	west	--	true	true
done any anodyne	--	--	--	true	true
Curst Palace	go-to-limits rule

this is the first-picaro-flip rule:
	try tsing;
	try fliptoing truster turrets;
	try entering truster turrets;
	process the picaro-flip rule;

this is the picaro-flip rule:
	try fliptoing a random fungible followy picaro;

this is the prepare-luck-node rule:
	try going east;
	try wordying;
	try pushing retape;
	try gotoing anemic cinema;
	try going north;
	try pushing repeat;
	try gotoing subsector;

this is the yow-teaches-agnostic rule:
	try gotoing coastlines;
	try objasking agnostic about dr yow;
	try rowdying;

this is the get-gizmo rule:
	try gotoing outer route;
	try inserting dagger into deviser;
	try gotoing coastlines;
	try giving gizmo to agnostic;

this is the get-in-boat rule:
	try entering bot boat;

this is the go-to-limits rule:
	if player is in mesprise, try going outside;
	if player is in coastlines, try entering a bot boat;

table of otters jumps
what-to-flip-to	what-before	dir-to-go	place-to-go	is-llp	is-alt-llp
nude dune	to-otters rule
ed riley
yer all a yell'r	--	west
parleys splayer players
--	any-pickup-line rule
sea cube	gretta-chat-first rule
eels
sullenness us	--	--	--	true	true
cult laya	--	south	--	true	true
ghoul hat	--	south	--	true	true
gore ogre	--	--	--	true	true
vow here	--	--	--	true	true
motleyer	to-shrine rule
butlery
owls	--	north
leopard
badger
stray satyr
ocelots
jollity	realm-to-cathedral rule
callosity
parrot	--	south
snipe
snail
hornets
racoon
blase bales	--	--	minded midden
atmo moat	--	west
pen o nope
aside-llp	--	west
holy nest
parrot-flees	west-if-needed rule [can't use the location column since we haven't been to Reclusion Inclosure yet ]
medals
whistle
--	win-the-game rule

this is the to-otters rule:
	try a5ing;
	try fliptoing solid idols;
	try entering solid idols;

this is the any-pickup-line rule:
	try fliptoing a random fungible pickup-line;

this is the gretta-chat-first rule:
	now yn-auto is 0;
	deliver the gre-players-quip quip;
	deliver the gre-go-quip quip;
	process the end-gretta-convo rule;
	try going north;

this is the to-shrine rule:
	try gotoing minded midden;
	try going north;

this is the realm-to-cathedral rule:
	try going south;
	try going south;
	try going south;

this is the west-if-needed rule:
	if player is in disowned downside, try going west;
	move parrot to reclusion inclosure;

this is the win-the-game rule:
	try going west;
	try playing whistle;

table of others jumps
what-to-flip-to	what-before	dir-to-go	place-to-go	is-llp	is-alt-llp
pears	to-others rule
limes
grapes
plums
compass	x-circuits rule
dates
cherries
blueberries
cantaloupe
maraschino cherry
persimmon
pomegranate
tamarind
apples	--	north
apricot
coconuts
gooseberry
mulberries
orange	--	down
rhubarb
banana
s-i	see-curtis rule
tangerines	--	--	swell wells	true	true
blackberries	--	west	--	true	true
breadfruit	--	--	--	true	true
cranberries	--	--	--	true	true
grapefruit	--	--	--	true	true
pineapple	--	--	--	true	true
raspberry	--	--	--	true	true
strawberries	--	--	--	true	true
watermelon	--	--	--	true	true
concisions	--	east	--	true	true
mango	--	east	--	true	true
nectarine	--	--	--	true	true
peach	--	--	--	true	true
olives	--	--	--	true	true
quince	--	--	--	true	true
kumquat	--	--	--	true	true
melon	--	--	--	true	true
papayas	--	--	--	true	true
lemons	--	--	--	true	true
--	get-storage rule
guava	--	--	scape space	true	true
--	go-to-gates rule
searcher
viewer
--	--	north

this is the to-others rule:
	try roveovering;
	try fliptoing hoster;
	try entering hoster;

this is the x-circuits rule:
	process the curtis pleased rule;
	try examining the ruts circuits;

this is the see-curtis rule:
	try going up;
	try going south;
	coin-eval;

this is the get-storage rule:
	try gotoing swell wells;
	try going down;
	try giving dollar to art erd;
	try inserting s-i into lost slot;

this is the go-to-gates rule:
	try gotoing swell wells;
	try going north;
	try fruiing;


Roiling Tests ends here.

---- DOCUMENTATION ----
