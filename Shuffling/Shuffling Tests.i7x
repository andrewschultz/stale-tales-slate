Version 1/190606 of Shuffling Tests by Andrew Schultz begins here.

"This header file has tests used for Shuffling Around. They were moved here to de-clutter the main story.ni file."

volume testing commands - not for release

section start-of-play stuff

when play begins (this is the debug version info that should not be in the release rule):
	now bugsquash is true; [be harsh to myself in programmer testing. Sniff out any bugs and kill walkthrough tests.]
	now debug-state is true; [this is the not-for-release flag for debug state, if I am grepping]
	now debug-print is true;

[be sure to do stuff when you're not in the right room. This is CRITICAL to testing.]

part monty commands

section monty testing - not for release

after fliptoing (this is the monty after flipping rule):
	process the full monty test rule;
	continue the action;

the monty after flipping rule is listed last in the after rules.

part quick checks

test newkit with "ts/sortie/in/16/n/kitchen/l/lettuce/l/parmesan/l/straw/hotsauce/l/steak/l/tortilla/l/put steak on tortilla/l/put lettuce on tortilla/l/put parmesan on tortilla/l/put hotsauce on tortilla/l"

part areas

[* best to break things into areas in case 1 area breaks]

chapter quick wins

test qf with "gonear forts/purloin shotgun and silver/put silver in shotgun/vowels/shoot wolves".
test qi with "gonear moor/abstract shoot button to moor/abstract steer button to moor/push steer button/push shoot button".
test qm with "gonear abyss/purloin sword/beast/attack beast".

chapter player tests

[* this tries various odd tests to jump to]

section sortie-specific

[* uses testing commands to test the most breakable puzzles, as well as playing dumb with guesses in the centrifuge]

test setup with "test ordeal-loader/gonear poet/abstract poet to emerita emirate/purloin sack/abstract straw to sack/abstract missile to moor/purloin cask/abstract black door to moor/abstract silo to moor/purloin panel/put panel in sack/put panel on sack/attach panel to sack/put missile on straw/put missile in straw/attach missile to straw/put missile in silo/put missile on silo/attach missile to silo/put door in silo/put door on silo/put missile in silo/put missile on silo/attach missile to silo/" in subsite

test dial with "sortie/d/60/40/10/25/5/20/18/14/15/16" in Trips Strip

section forest-random

[* this fixes the path through the forest, north then south]

test allfor with "ts/forest/sr n/in/n/s/v fi/sr s/gonear softer/s/n/v fi/sr e/gonear softer/e/w/v fi/sr w/gonear softer/w/e/v fi/sr nw/gonear softer/n/w/v fi/sr ne/gonear softer/n/e/v fi/sr sw/gonear softer/s/w/v fi/sr se/gonear softer/s/e/v fi/rs nw/gonear softer/w/n/v fi/rs ne/gonear softer/e/n/v fi/rs sw/gonear softer/w/s/v fi/rs se/gonear softer/e/s/v fi"

section odd talks

[* this tests miscellany like asking weird stuff of the wrong people]

test yack with "in/door/blot/in/goat/in/gateman/babble" in subsite

test hinttest with "hint/y/ask me about 1 should not show/hint/hf/ask me about 2 should not show/hint/hd/ask me about 3 should show/hint/hf/ask me about 4 should show/hd/hint"

section randtext

[* this tests the random text being put out, which loops every 11 times so we see the end text.]

test randtext with "cap 11/x list/g/g/g/purloin maps/x maps/g/g/g/g/g/cap 4/gonear moor/z/z/z/z/z/gonear psa/x psa/g/g/g/g/g/n/n/z/z/z/z/z/n/z/z/z/z/z/gonear nerds/z/z/z/z/z/gonear hotspot/z/z/z/z/z/trio/potters/chain/kilns/z/z/z/z/z/z"

section big-picture

[* all possible combinations. Shouldn't make difference what order we solve things in, but we also want to try solving 2 of 3 areas. The recuse- tests do this without tricks.]

test win123 with "test ordeal-loader/test forest/test sortie/test metros/nice bat/sorbet/test resort" in subsite.
test win231 with "test ordeal-loader/test sortie/test metros/test forest/nice bat/sorbet/test resort" in subsite.
test win312 with "test ordeal-loader/test metros/test forest/test sortie/nice bat/sorbet/test resort" in subsite.

test q12 with "test ordeal-loader/secure/sk 1/sk 2/test resort" in subsite.
test q13 with "test ordeal-loader/secure/sk 1/sk 3/test resort" in subsite.
test q21 with "test ordeal-loader/secure/sk 2/sk 1/test resort" in subsite.
test q23 with "test ordeal-loader/secure/sk 2/sk 3/test resort" in subsite.
test q31 with "test ordeal-loader/secure/sk 3/sk 1/test resort" in subsite.
test q32 with "test ordeal-loader/secure/sk 3/sk 2/test resort" in subsite.

test recuse-metros with "test ordeal-loader/secure/test forest/test sortie/recuse/test resort" in subsite.
test recuse-sortie with "test ordeal-loader/secure/test forest/test metros/recuse/test resort" in subsite.
test recuse-forest with "test ordeal-loader/secure/test sortie/test metros/recuse/test resort" in subsite.

section rm-testing

[*this just tests bashing about in a room]

test alldirs with "nodir ne/nodir se/nodir sw/nodir nw/rmneglect emerita emirate/allrooms"

test abouts with "about/credits/tech/verbs/history/in/goat/about/credits/tech/verbs/history"

section tester-scripts

[*mostly paul lee's cool tries]

test pl9m with "test ordeal-loader/metros/d/beast/gardenia/x gardenia/n/Velcro/ask deadbeat about himself/ask deadbeat about cake/e/ask faeries about clover/give clover to faeries/ask faeries about heaths/ask faeries about begonias/ask faeries about gardenias/x brocade/x torn cue/barcode/x flowers/w/get lost corn/w/x garbage/smell/smell garbage/smell tomato/beats/sword/e/e/sheath/w/w/e/n/throw tomato/s/s/w/throw tomato/get emitter/e/n/n/switch emitter/get cake/keycard/s/get corn/" in subsite

[u/u/jump/]

test pl9 with "x tag/x room/x air/get sign/get banner/get brazier/in/goat/exit/n/n/n/n/x tag/x room/north/x tag/x room/gateman/getaway/ask about goat/ask about toga/ask about xyzzy/ask about me/ask about him/ask about gate/ask about attics/ask about abcde/ask about gadget/get device/scan static/switch gadget/attics/in/x stores/pad stores/forest/pad stores/sortie/pad stores/metros/pad stores/resort/pad stores/enter sortie/w/n/turn dial/turn dial to 57/g/turn dial to 16/n/x room/x air/x me/kitchen/x animal/x fridge/lettuce/steak/tortilla/x tortilla/parmesan/put parmesan on steak/put steak on tortilla/x tortilla/put parmesan in steak/x tortilla/put steak on lettuce/x tortilla/put tortilla on lettuce/x tortilla/sauce/hotsauce/put sauce on lettuce/eat taco/smell taco/coat/scan me/x warts/scan warts/straw/e/s/x cask/open cask/sack/coat/door/black/black door" in subsite

[x cask/open cask/x hole/
get straw]

test pl8 with "j/sortie/d/e/n/ne/16/straw/get straw/e/sack/w/get straw/cask/put straw in cask/sack/e/n/w/kitchen/tortilla/sauce/hot sauce/lettuce/parmesan/steak/put lettuce on steak/put tortilla in lettuce//put tortilla on lettuce/put tortilla in lettuce/put sauce on lettuce/put steak in lettuce/coat/e/scrape wall/i/pad/s/pad" in subsite

test pl7 with "x brazier/m/f/r/hd/hf/hd/hf/in/x cat/pet cat/pet goat/gato/x gato/man/north/goat/go north/x new land/x gateway/open gateway/gate man/open gateway/in/l/x new land/x gadget/x slider/x flipside/x example/get slider/attack small slider/x device/swap/x device/swap/swap gadget/swap slider/swap slider/swap gadget/in/get a way/talk to man/ask about mumbletypeg/ask about toga/ask about goat/ask about slider/ask about gadget/ask about game/x gateway/attack gateman/attack old man/attack gadget/attack slider/attack nat/scan attic/scan attics/scan static/scan doll house/in/x trapdoor/x roster/m/f/r/forest/in/x leaves/m/f/r/smell/door/n/x leaves/x device/door/scan door/x music/x note/x musical chord/scan bulge/scan bugle/bugle/play bugle/in/e/x shell/x bubble/x bucket/nose/shades/hook nose to shades/w/w/open sandwich/beard/hook shades to beard/wear beard/e/n/chisel/s/w/get viler/get river/put viler in canister/put river in canister" in subsite

chapter ending-testing

[ * simple very-ending test ]

test lbrk with "gonear hotspot/trio/kilns"

test end-test with "gonear manse/exist"

chapter for-testers

[* quick start for testers]

test hb with "hd/z/l/hf/x me/l/hd/x myself/l/hf/xyzzy/l"

chapter odd verbs

[* this tests that retrying preserves items in the Adorb Bardo, for the simpelst case, in the Metros ]

test ts with "ts/metros/in/gardenia/retryi//in/i"

chapter win

[* big test for the full win]

test win with "test ordeal-loader/test metros/test forest/test sortie/test resort" in subsite

chapter gbg

[* garbage tests]

test g-1 with "jump/sing/listen/smell/wave/think/sleep/wake/x me/i/z/"

test g0 with "forest/store f/sortie/store i/metros/store m/resort/store r/tories/roster/1/2/3/x store/x stores/x mall/x malls/x strip"

test g1 with "goat/gateman/gateway/getaway/thorn/soil/silo/oils/lois/plane/panel/attics/static/ones/nose/shades/dashes/shotgun/noughts/wolves/vowels/spam/maps/chisel/liches/lich/beard/bread/x liver/livers/sliver/silver/spread/drapes"

test g2 with "cask/sack/cask/sack/6/9/13/18/19/16/straw/kitchen/the nick/moor/room/missile/smilies/anapest/peasant/haywall/hallway/coat/aco/skate/parmesan/tortilla/hot sauce/hotsauce/cathouse/cat house/lettuce/shoot button/hoots/trees/steer/reset"

test g3 with "drainage/gardenia/brocade/barcode/sheath/heaths/begonias/noise bag/dry cake/keycard/sword/words/tomato/motto/a motto/lost corn/controls/Velcro/clover/beats/beast"

test g4 with "cork/rock/swing/wings/toolshed/toeholds/grips/sprig/ropes/spore/trio/riot/potters/protest/kilns/links/tug toe"

chapter Ordeal Loader

[* maximum and minimum Ordeal Loader points]

test ordealloadermin with "opt in/poss/in/door/blot/open door/goat/in/gateman/take gadget/ask gateman about cabinet/misses/in".

test ordealloadermax with "opt in/poss/gateman/pf/bugle/play bugle/blot/open door/nest/goat/deer/in/attics/gateman/take gadget/ask gateman about cabinet/bactine/in".

chapter stores tests

[* this is a big long test for every store by number and first letter]

test store-mega with "j/x 1/x 2/x 3/x 4/x 5/x 6/x 7/x 8/x 9/x 10/x 11/x 12/x 13/x 14/x 15/x 16/x 17/x 18/x 19/x 20/x 21/x 22/x 23/x 24/x 25/x 26/x a/x b/x c/x d/x e/x f/x g/x h/x i/x j/x k/x l/x m/x n/x o/x p/x q/x r/x s/x t/x u/x v/x w/x x/x y/x z/x one/x two/x three/x four/x five/x six/x seven/x eight/x nine/x ten/x eleven/x twelve/x thirteen/x fourteen/x fifteen/x sixteen/x seventeen/x eighteen/x nineteen/x twenty/x twentyone/x twentytwo/x twentythree/x twentyfour/x twentyfive/x twentysix"

test storesmin with "z/opt in/ts/forest/sortie/metros/n/sorbet".

test storesmax with "z/opt in/ts/resort/pf/forest/sortie/metros/n/sorbet/bactine".

chapter forest

test forestmin with "ts/z/poss/opt in/forest/sr ne/in/n/e/e/nose/shades/shotgun/w/w/open sandwich/maps/beard/put shades on beard/put nose on beard/e/n/chisel/s/w/peel river ville/e/w/peel viler liver/put river ville in canister/put viler liver in canister/sliver/e/n/drapes/n/cut drapes/n/silver/put silver in shotgun/n/x maps/wolves/misses/shoot wolves".

test forestmax with "ts/z/poss/opt in/forest/sr ne/in/n/e/e/nose/shades/shotgun/w/w/open sandwich/maps/beard/put shades on beard/put nose on beard/e/silt/n/chisel/hasbeen/s/w/peel river ville/e/w/peel viler liver/put river ville in canister/put viler liver in canister/sliver/e/n/drapes/n/silver/pf/cut drapes/n/silver/put silver in shotgun/n/x maps/wolves/misses/shoot wolves".

test shades with "w/get bread/e/e/dashes/ones/shades/nose/beard/put shades on nose/put nose on beard/disas/put shades on beard/put nose on beard/disas/put nose on beard/put shades on beard/disas/put nose on beard/put shades on nose" in Self ID Fields

test forest with "forest/enter forest/smell/fo/fo/e/nose/shades/shotgun/put shades on nose/get nose and shotgun/w/w/get bread/get spam/beard/put nose on beard/wear beard/e/n/y/chisel/get chisel/s/w/peel viler/peel river/put viler in canister/put river in canister/spam/e/n/hasbeen/silver/sliver/silver/drapes/silver/cut drapes/silver/put silver in shotgun/maps/n/read maps/wolves/shoot wolves/v ts" in Trips Strip

test formin with "forest/enter forest/smell/fo/fo/e/nose/shades/shotgun/put shades on nose/get nose and shotgun/w/w/get bread/get spam/beard/put nose on beard/wear beard/e/n/y/chisel/get chisel/s/w/peel viler/peel river/put viler in canister/put river in canister/spam/e/n/silver/sliver/silver/drapes/silver/cut drapes/silver/put silver in shotgun/maps/n/read maps/wolves/shoot wolves/v ts" in Trips Strip

chapter metros

[* this is the trickiest. There are 5 ways through. The noise bag allows you to open it by the nerds, which the sheath doesn't. For both, can release the gnats or ask about darkness]

test metrosmin with "ts/poss/opt in/metros/in/gardenia/n/w/tomato/e/s/w/throw tomato at thing/x mattress/e/n/n/switch emitter/get dry cake/s/ltso/conr/controls/keycard/velcro/e/give gardenia to faeries/take heaths/sheath/take brocade/w/w/sword/e/barcode/s/put barcode on keycard/put card on sensor/e/w/put card on sensor/w/z/e/w/z/open metallic door/e/ask nerds about darkness/s/opening/u/put controls in opening/d/e/resin/beast/take sword/misses/alts/attack beast".

test metrosmax with "ts/poss/opt in/metros/in/beast/pf/gardenia/n/w/sword/pf/tomato/e/s/w/throw tomato at thing/x mattress/e/n/controls/n/rentals/keycard/keycard/pf/switch emitter/get dry cake/s/give emitter to deadbeat/ltso/conr/controls/keycard/velcro/e/sheath/noise bag/give gardenia to faeries/take heaths/noise bag/sheath/take brocade/w/w/sword/e/barcode/s/put barcode on keycard/put card on sensor/e/w/put card on sensor/w/z/e/w/z/open metallic door/e/ask nerds about darkness/s/opening/u/d/u/put controls in opening/d/e/beast/resin/beast/take sword/misses/alts/attack beast".

test metmin with "metros/enter metros/gardenia/n/w/tomato/e/s/w/throw tomato at night thing/search mattress/e/n/n/switch emitter/keycard/s/e/y/give gardenia to faeries/get brocade/get heaths/w/w/sheath/sword/barcode/put barcode on keycard/e/controls/velcro/wear velcro/s/e/ask nerds about darkness/s/opening/climb face/put controls in opening/attack beast/e/resin/beast/sword/attack beast/v ts/v sco" in Trips Strip

test metros-s-n1 with "metros/enter metros/gardenia/n/w/tomato/e/s/w/throw tomato at night thing/search mattress/e/n/n/switch emitter/rentals/keycard/s/e/y/give gardenia to faeries/get brocade/get heaths/w/w/sheath/sword/barcode/put barcode on keycard/e/controls/velcro/wear velcro/s/e/ask nerds about darkness/s/opening/climb face/put controls in opening/attack beast/e/resin/beast/sword/attack beast/v ts/v sco" in Trips Strip

test metros-s-n2 with "metros/enter metros/gardenia/n/w/tomato/e/s/w/throw tomato at night thing/search mattress/e/n/n/switch emitter/rentals/keycard/s/e/y/give gardenia to faeries/get brocade/get heaths/w/w/sheath/sword/barcode/put barcode on keycard/e/show emitter to deadbeat/controls/velcro/wear velcro/s/e/switch emitter/s/opening/climb face/put controls in opening/attack beast/e/resin/beast/sword/attack beast/v ts/v sco" in Trips Strip

test metros-n-n1 with "metros/enter metros/gardenia/n/w/tomato/e/s/w/throw tomato at night thing/search mattress/e/n/n/switch emitter/rentals/keycard/s/e/y/give gardenia to faeries/get brocade/get begonias/w/w/noise bag/open noise bag/barcode/put barcode on keycard/e/controls/velcro/wear velcro/s/e/ask nerds about darkness/s/opening/climb face/put controls in opening/attack beast/e/resin/beast/sword/attack beast/v ts/v sco" in Trips Strip

test metros-n-n2 with "metros/enter metros/gardenia/n/w/tomato/e/s/w/throw tomato at night thing/search mattress/e/n/n/switch emitter/rentals/keycard/s/e/y/give gardenia to faeries/get brocade/get begonias/w/w/noise bag/open noise bag/barcode/put barcode on keycard/e/show emitter to deadbeat/controls/velcro/wear velcro/s/e/switch emitter/w/s/opening/climb face/put controls in opening/attack beast/e/resin/beast/sword/attack beast/v ts/v sco" in Trips Strip

test metros-n-n3 with "metros/enter metros/gardenia/n/w/tomato/e/s/w/throw tomato at night thing/search mattress/e/n/n/switch emitter/rentals/keycard/s/e/y/give gardenia to faeries/get brocade/get begonias/w/w/noise bag/open noise bag/barcode/put barcode on keycard/e/controls/velcro/wear velcro/s/e/open bag/s/opening/climb face/put controls in opening/attack beast/e/resin/beast/sword/attack beast/v ts/v sco" in Trips Strip

[get sword/resin/sword/beast/attack beast]

[resin/sword/attack beast]

chapter sortie

[*Not many alternate ways to go through the sortie but you can test different ways to make the taco]

test sortiemin with "opt in/ts/xc/sortie/poss/in/sixteen/n/kitchen/xx/xx grist/xx cake pan/xx cathouse/xx tall trio/xx cult tee/xx skate/xx spearman/tortilla/hotsauce/parmesan/steak/lettuce/put lettuce on tortilla/put steak on tortilla/put parmesan on tortilla/put hotsauce on tortilla/coat/e/s/sack/straw/put straw in sack/shoes/moor/mroo/z/z/z/z/z/z/z/z/z/z/z/z/z/z/z/z/z/z/peasant/ask peasant about straw/ask peasant about Woeful Pat/give straw to peasant/room/n/w/e/put hay in wall/hallway/e/cask/pour oils/w/s/moor/missile/fold paper/panel/soil/black door/room/n/e/pour oils/w/s/moor/silo/put panel in silo/put door in silo/put missile in silo/steer/shoot/push steer/misses/push shoot".

test sortiemax with "opt in/ts/xc/sortie/poss/in/sixteen/n/kitchen/open fridge/open fridge/xx/xx grist/xx cake pan/xx cathouse/xx tall trio/xx cult tee/xx skate/xx spearman/x fridge/grits/pancake/tortilla/hotsauce/parmesan/steak/lettuce/put lettuce on tortilla/put steak on tortilla/put parmesan on tortilla/put hotsauce on tortilla/coat/e/s/sack/straw/put straw in sack/moor/pf/shoes/moor/mroo/z/z/z/z/z/z/z/z/z/z/z/z/z/z/z/z/z/z/peasant/ask peasant about straw/ask peasant about Woeful Pat/give straw to peasant/room/n/w/e/hallway/pf/put hay in wall/hallway/e/pour oils/cask/pour oils/sack/soil/silo/pf/pour oils/w/s/missile/pf/moor/missile/panel/fold paper/panel/silo/soil/black door/room/n/e/pour oils/pour oils/w/s/moor/silo/put panel in silo/put door in silo/put missile in silo/steer/shoot/push steer/misses/push shoot".

test cedars with "sortie/enter sortie/sixteen/n/kitchen/s/e/straw/sack/put straw in sack/get sack/n/w/tortilla/lettuce/steak/parmesan/hotsauce/put hotsauce in tortilla/put steak on tortilla/put lettuce on tortilla/put parmesan on tortilla/open fridge/grits/pancake/coat/wear coat/e/s/shoes/moor/y/peasant/give straw/room/y/n/put hay in wall/hallway/e/cask"

test moor-1 with "sortie/enter sortie/sixteen/n/kitchen/s/e/straw/sack/put straw in sack/get sack/n/w/tortilla/lettuce/steak/parmesan/hotsauce/put hotsauce in tortilla/put steak on tortilla/put lettuce on tortilla/put parmesan on tortilla/open fridge/grits/pancake/coat/wear coat/e/s/shoes/moor/y/peasant/give straw/room/n/put hay in wall/hallway/e/cask"

test moor-2 with "sortie/d/sixteen/e/straw/sack/put straw in sack/get sack/n/w/kitchen/tortilla/lettuce/steak/parmesan/hotsauce/put hotsauce in tortilla/put steak on tortilla/put lettuce on tortilla/put parmesan on tortilla/coat/wear coat/e/s/moor/peasant/give straw/room/n/put hay in wall/hallway/e/cask/fill cask/w/s/moor/soil/room/n/e/fill cask/w/s/moor/silo/missile/black door/fold poem/panel" in Trips Strip

chapter resort

[* maximum and minimum point tests, as well as medium points]

test resortmin with "ts/tsf/opt in/poss/resort/enter resort/e/slope/toeholds/e/trio/potters/kilns/get out/tug toe/e/misses/exist".

test resortmax with "ts/tsf/opt in/poss/resort/enter resort/islet/lies/cork/wings/e/slope/toeholds/ropes/grips/e/trio/potters/china/china/kilns/get out/tug toe/e/exist/missed/alts/amens/alt/names/alts/alt".

volume programmer testing commands - not for release

when play begins (this is the check objects and rooms rule):
	if undescribed-objects is 0:
		say "Yay! All objects accounted for and described.";
	else:
		say "Objects remaining to describe: [undescribed-objects].";
	if undescribed-rooms is 0:
		say "All rooms accounted for and described.";
	else:
		say "Rooms remaining to describe: [undescribed-rooms].";

to say miss-types: [this is different from Roiling]
	say "[this-game] only offers [b]MISSES[r] = this region's misses (may provide nonsense/spoilers).";
	if mrlp is metros and nerd-sol > 1:
		say "[2da]the other ways to get the tulip are to [alt-sols].";
	say "If nothing else is below, you found everything";

chapter alting

alting is an action out of world.

understand the command "alt" as something new.
understand the command "alts" as something new.

understand "alt" as alting.
understand "alts" as alting.

carry out alting:
	if mrlp is not solved, say "Here are alternate paths through the current region, [mrlp].";
	process the altrule of mrlp;
	if number of solved regions is 0:
		say "There are no solved regions to look through.";
	else:
		process the show alternate paths rule;
	the rule succeeds;

chapter yacking

[ * this goes through all the subjects]

yacking is an action applying to nothing.

understand the command "yack" as something new.

understand "yack" as yacking.

carry out yacking:
	let cur-guy be poses posse;
	let cur-line be 0;
	repeat through the table of matched thing responses:
		if asked-person entry is not visible:
			move asked-person entry to location of player;
		say "[b]ASK [printed name of asked-person entry in upper case] ABOUT[r] [subject-thing entry]: [npc-text entry][line break]"; [bold-ok]
	repeat through table of unmatched thing responses:
		if asked-person entry is not visible:
			move asked-person entry to location of player;
		say "[b]ASK [printed name of asked-person entry in upper case] ABOUT SOFA[r] (e.g. object in game): [npc-text entry][line break]"; [bold-ok]
	repeat through the table of unmatched topic responses:
		if default-talker entry is not visible:
			move default-talker entry to location of player;
			say "[b]ASK [printed name of asked-person entry in upper case] ABOUT MUMBLETY-PEG[r] (e.g. object not in game): [gen-blah entry][line break]"; [bold-ok]
	repeat through the table of matched topic responses:
		if asked-person entry is not visible:
			move asked-person entry to location of player;
		if asked-person entry is not cur-guy:
			now cur-guy is asked-person entry;
			now cur-line is 0;
		increment cur-line;
		say "[b]ASK [asked-person entry] ABOUT[r] (topic [cur-line]): [npc-text entry][line break]"; [bold-ok]
	the rule succeeds;

chapter unsolve

[ * this tries to reset the game to go through twice. It probably has holes, though. I didn't use it much. You should probably just reset.]

to unsolve-resort:
	now cur-score of resort is 0;
	now rock is in Leis Isle; [Isle]
	now rock is not flipped-yet;
	now cork is off-stage;
	now swing is in Leis Isle;
	now swing is not flipped-yet;
	now wings are off-stage;
	now tool shed is in Rived Drive; [Rived Drive]
	now tool shed is not flipped-yet;
	now toeholds are off-stage;
	now poles are in Rived Drive;
	now poles are not flipped-yet;
	now slope is off-stage;
	now sprig is in Rived Drive;
	now sprig is not flipped-yet;
	now ropes are off-stage;
	now spore is in Rived Drive;
	now spore is not flipped-yet;
	now riot is in Potshot Hotspot; [hotspot]
	now potters are off-stage;
	now riot is not flipped-yet;
	now protest is off-stage;
	now protest is not flipped-yet;
	now grips are off-stage;
	now links are off-stage;
	now links are not flipped-yet;
	now kilns are off-stage;
	now red bull burdell is off-stage;

to unsolve-metros:
	if metros is not solved:
		say "WARNING. Metros is not solved.";
	now last-loc of metros is underside;
	now drainage is in Undesired Underside; [underside]
	now drainage is not flipped-yet;
	now gardenia is off-stage;
	now a reading is off-stage;
	place-random-garbage;
	now lost corn is off-stage;	[Roarings Garrison]
	now lost corn is not flipped-yet;
	now controls are off-stage;
	now Roarings Garrison is unvisited;
	now clover is in camp;
	now clover is not flipped-yet;
	now Velcro is off-stage;
	now bastion-evac is false; [Obtains Boastin' Bastion]
	now dry cake is in Obtains Boastin Bastion;
	now dry cake is not flipped-yet;
	now keycard is off-stage;
	now antlers are in Obtains Boastin Bastion;
	now antlers are not flipped-yet;
	now brocade is in Fo Real Florae;	[Fo' Real Florae]
	now brocade is not flipped-yet;
	now barcode is in Trips Strip;
	now barcode is off-stage;
	now heaths are in Fo Real Florae;
	now heaths are not flipped-yet;
	now sheath is off-stage;
	now begonias are in Fo Real Florae;
	now begonias are not flipped-yet;
	now noise bag is off-stage;
	now fairy-worthy is false;
	now words are in Bile Libe;	[Bile Libe]
	now words are not flipped-yet;
	now sword is off-stage;
	now motto is in Bile Libe;
	now motto is not flipped-yet;
	now tomato is off-stage;
	now tulip is in Esoteric Coteries;	[special place]
	now Esoteric Coteries are unvisited;
	now night thing is in The Ol Hotel;	[ol' hotel]
	now termite emitter is off-stage;
	now termite emitter is ungnatted;
	now power-shut is false;	[train terrain]
	now neon pig is in Elm Train Terminal;
	now neon pig is not flipped-yet;
	now gin nope opening is off-stage;
	now resin is off-stage;	[abyss]
	now siren is in Bassy;
	now siren is not flipped-yet;
	now beats are in metros;
	now beats are not flipped-yet;
	now beast is off-stage;
	now metros is unsolved;
	now cur-score of metros is 0;

to unsolve-sortie:
	now last-loc of sortie is Trap Part;
	now centrifuge-stopped is false;
	now warts are off-stage;
	now warts are not flipped-yet;
	now cask is off-stage;
	now cask is not flipped-yet;
	now sack is off-stage;
	now skate is off-stage;
	now skate is not flipped-yet;
	now steak is off-stage;
	now cult tee is off-stage;
	now cult tee is not flipped-yet;
	now lettuce is off-stage;
	now spearman is off-stage;
	now spearman is not flipped-yet;
	now Parmesan is off-stage;
	now CATHOUSE is off-stage;
	now CATHOUSE is not flipped-yet;
	now HOTSAUCE is off-stage;
	now tall trio is off-stage;
	now tall trio is not flipped-yet;
	now coat is off-stage;
	now taco is not flipped-yet;
	now grist is in griefd fridge;
	now cake pan is in griefd fridge;
	now grits are off-stage;
	now pancake is off-stage;
	now grist is not flipped-yet;
	now cake pan is not flipped-yet;
	now moor is unvisited; [moor]
	now anapest is in moor;
	now anapest is not flipped-yet;
	now peasant is off-stage;
	now scraped wall is in Stiller Trellis;
	now scraped wall is not hayfilled;
	now nick is unvisited;
	now numset of dial is 0;
	now caskfillings is 0; [Sacred Cedars]
	now roadblock is in moor; [moor]
	now roadblock is not flipped-yet;
	now black door is off-stage;
	now silo is off-stage;
	now soil is off-stage;
	now trees button is off-stage;
	now steer button is off-stage;
	now shoot button is off-stage;
	now hoots button is off-stage;
	now panel is off-stage;
	now sortie is unsolved;
	now cur-score of sortie is 0;

to unsolve-forest:
	now last-loc of forest is sf;
	now nose is off-stage;
	now beard is off-stage;
	now shades are off-stage;
	now sandwich is in Flesh Shelf;
	now bread is part of sandwich;
	now spam is part of sandwich;
	now maps are off-stage;
	now liches are in Emptiness Sepiments;
	now chisel is off-stage;
	now spread is in Emptiness Sepiments;
	now vowels are in Frost Forts;
	now wolves are off-stage;
	now livers are off-stage;
	now silver is off-stage;
	now sliver is off-stage;
	now forest is unsolved;
	now cur-score of forest is 0;

to unsolve-ordeal-loader:
	now odor is off-stage;
	now bulge is off-stage;
	now bugle is off-stage;
	now goat is off-stage;
	now toga is off-stage;
	now deer is off-stage;
	now reed is off-stage;
	now nest is in thickest thickets;
	now static is in notices section;
	now attics are off-stage;
	now player wears nametag;
	now gateman is off-stage;
	now gadget is in cabinet;
	now phial is in cabinet;
	now cur-score of ordeal loader is 0;

chapter uaing

[ * this resets a solved region, which is also quite risky]

uaing is an action applying to one number.

understand the command "ua [number]" as something new.

understand "ua [number]" as uaing.

carry out uaing:
	say "Note that resetting a region may cause problems, and it's better probably to [b]RESTART[r] and use [b]TS[r].";
	if Trips Strip is not visited, say "You need to visit the Trips Strip before using this." instead;
	if the number understood is 4:
		say "Resetting resort.";
		move player to Trips Strip, without printing a room description;
		unsolve-resort instead;
	if the number understood is 3:
		say "Resetting metros.";
		move player to Trips Strip, without printing a room description;
		unsolve-metros instead;
	if the number understood is 2:
		say "Resetting sortie.";
		move player to Trips Strip, without printing a room description;
		unsolve-sortie instead;
	if the number understood is 1:
		say "Resetting forest.";
		move player to Trips Strip, without printing a room description;
		unsolve-forest instead;
	say "Invalid number. 1=forest 2=sortie 3=metros";
	the rule succeeds;

chapter babbleing

[ * This plows through everything you can ask someone about ]

babbleing is an action applying to nothing.

understand the command "babble" as something new.

understand "babble" as babbleing.

carry out babbleing: [Any way to pull out the topic?]
	let X be indexed text;
	repeat through table of matched topic responses:
		say "============[location of asked-person entry]: [asked-person entry].";
		move player to location of asked-person entry, without printing a room description;
		try asking asked-person entry about topic entry;
	the rule succeeds;

chapter mooting

[ * MOOT moots any item. You could just ABSTRACT, but yay saving keystrokes ]

booting is an action applying to one visible thing.

understand the command "moot [any thing]" as something new.
understand the command "boot [any thing]" as something new.

understand "moot [any thing]" as booting.
understand "boot [any thing]" as booting.

carry out booting:
	say "[noun] mooted/moved to Emerita Emirate.";
	moot noun;
	the rule succeeds;

chapter met

[* MET gets you near the end of Metros for the final fight. There are test commands to plow through, but this is a jump.]

meting is an action applying to one number.

understand the command "met" as something new.

understand "met [number]" as meting.

carry out meting:
	if number understood > 2 or number understood < 1, say "1 for heaths, 2 for begonias." instead;
	if Bassy Abyss is visited:
		say "Sorry, you need to restart to run the [b]MET[r] test command again.";
	now player has the lit up tulip;
	now power-shut is true;
	move player to terminal, without printing a room description;
	if number understood is 1:
		now player has sheath;
		now sword is contained in sheath;
	else:
		now player has noise bag;
		now words are in noise bag;
	try going east;
	the rule succeeds;

chapter scanalling

[* this tries to scan all not inflexible things ]

scanalling is an action applying to nothing.

understand the command "scanall" as something new.

understand "scanall" as scanalling.

carry out scanalling:
	let yay be 0;
	let boo be 0;
	let Z be indexed text;
	now player has tagged gadget;
	repeat with Q running through not inflexible things:
		if Q is not off-stage and Q is not moot and Q is not a backdrop:
			let Y be the map region of the location of Q;
			if Y is sortie or Y is forest or Y is resort or Y is ordeal loader or Y is stores or Y is metros:
				say "[Q]: [rgtext of Q].";
				now Z is "[rgtext of Q]";
				if Z matches the text "R":
					increment yay;
				else:
					increment boo;
					say "Boo, [Q].";
	say "[yay] yay, [boo] boo.";
	the rule succeeds;

chapter scanvising

[* this scans all visible things]

scanvising is an action applying to nothing.

understand the command "scanvis" as something new.

understand "scanvis" as scanvising.

carry out scanvising:
	let yay be 0;
	let boo be 0;
	let Z be indexed text;
	if player does not have gadget, say "Get the gadget first." instead;
	repeat with Q running through visible things:
		say "[Q]: ";
		try scaning Q;
	the rule succeeds;

chapter debug printing

[* toggles if I print debug stuff to file]

dbprinting is an action out of world.

understand the command "dp" as something new.

understand "debug" and "dp" as dbprinting.

carry out dbprinting:
	now debug-print is whether or not debug-print is false;
	say "Debug info printing [if debug-print is true]on[else]off[end if].";
	the rule succeeds;

chapter privsing

[ * this is a script to find privately named stuff that you may feel a pulse from]

privsing is an action out of world.

understand the command "privs" as something new.

understand "privs" as privsing.

carry out privsing:
	let privent be 0;
	repeat through regana of mrlp:
		if the-from entry is privately-named:
			say "Checking [the-from entry] -> [the-to entry].";
			if the-from entry is spayshul:
				do nothing;
			else:
				say "[the-from entry] should have an entry in [spechelp of mrlp] for changing to [the-to entry].";
				increment privent;
	say "[privent] new entries needed.";
	the rule succeeds;

chapter evting

[* this specifies what to do every turn ]

ettest is a truth state that varies.

evting is an action out of world.

understand the command "evt" as something new.

understand "evt" as evting.

carry out evting:
	now ettest is whether or not ettest is false;
	say "Every-turn-test is now [if ettest is true]on[else]off[end if].";
	the rule succeeds;

every turn when ettest is true: [this can be varied based on the test we wish to run]
	if missile is visible:
		try shooting the missile;

chapter bcoing

[ lets the player put the barcode on the keycard ]

bcoing is an action out of world.

understand the command "bco" as something new.

understand "bco" as bcoing.

carry out bcoing:
	now player has barcode;
	now player has keycard;
	try putting barcode on keycard;
	the rule succeeds;

chapter foing

[* this lets the player cheat through the forest. It's used in general testing commands so I can make sure I went the right way.]

foing is an action out of world.

understand the command "fo" as something new.

understand "fo" as foing.

carry out foing:
	if player is not in rf and player is not in sf, say "This command has no meaning outside the start of the forest." instead;
	if number of visible guiders is not 1:
		say "BUG! There should be only one guider visible. There are [number of visible guiders].";
		repeat with GG running through guiders:
			say "[GG] is in [location of GG].";
		the rule succeeds;
	let GGG be a random visible guider;
	try going godir of GGG;
	process the notify score changes rule;
	the rule succeeds;

chapter dscing

[* DEBUG SCAN scans something before flipping it]

dscing is an action out of world.

understand the command "dsc" as something new.

understand "dsc" as dscing.

carry out dscing:
	now debug-scan is whether or not debug-scan is false;
	say "Debug-scanning is now [on-off of debug-scan].";
	the rule succeeds;

chapter dpaing

[* DEBUG PARSE toggles whether we parse when we debug-scan]

dpaing is an action out of world.

understand the command "dpa" as something new.

understand "dpa" as dpaing.

carry out dpaing:
	now debug-parse is whether or not debug-parse is false;
	say "Debug-parsing is now [on-off of debug-parse].";
	the rule succeeds;

chapter verif

[* for use with rules verification extension: TEST X ]

table of verification rules (continued)
rule-short (topic)	rule-name	rule-description
"ts"	trips-strip rule	"At Trips Strip e.g. solved area"
"sco"	max-reg-score rule	"All solved region scores are maximum"
"rm"	in-means-manse rule	"In Means Manse"
"fi"	in-fields rule	"in [fields]"

this is the in-fields rule:
	if the player is in Self ID Fields, the rule succeeds;
	the rule fails;

this is the max-reg-score rule:
	let tempbool be true;
	repeat with this-reg running through solved regions:
		if last-loc of this-reg is visited:
			if cur-score of this-reg is not max-score of this-reg:
				append "Region [this-reg] only has [cur-score of this-reg] of [max-score of this-reg] points.[line break]" to the file of test results;
				now tempbool is false;
	if tempbool is true, the rule succeeds;
	the rule fails;

this is the trips-strip rule:
	if the player is in Trips Strip, the rule succeeds;
	the rule fails.

this is the in-means-manse rule:
	append "Current score = [cur-score of resort] of [max-score of resort].[line break]" to the file of test results;
	if player is in Means Manse, the rule succeeds;
	the rule fails;

chapter shomising

[ * shomis lets you see what the player missed after solving a region. It's obviously imperfect but it's useful for testing when I don't want to jump to the very end. ]

shomising is an action applying to nothing.

understand the command "shomis" as something new.

understand "shomis" as shomising.

carry out shomising:
	process the show what the player missed rule;
	say "[line break]ALTERNATE PATHS:[paragraph break]";
	process the show alternate paths rule;
	the rule succeeds;

chapter tnting

[ * tnt toggles if both hints are shown on something good. ]

tnting is an action out of world.

understand the command "tnt" as something new.

understand "tnt" as tnting.

carry out tnting:
	now tnt is whether or not tnt is false;
	say "Tip-no-tip is now [on-off of tnt].";
	the rule succeeds;

chapter apping

[ * APP tests what is on the prep paper every move]

apping is an action applying to nothing.

understand the command "app" as something new.

understand "app" as apping.

show-prep is a truth state that varies.

carry out apping:
	if show-prep is false:
		now show-prep is true;
	else:
		now show-prep is false;
	say "We now [if show-prep is false]don't [end if]show the prep paper's contents every move.";
	the rule succeeds;

after fliptoing when show-prep is true: [general rule]
	process the prep-rehash rule;
	continue the action;

every turn when player has prep paper and show-prep is true (this is the prep-rehash rule):
	say "====PREP PAPER SAYS[line break]";
	try examining prep paper;
	say "====END PREP PAPER[line break]";

chapter check HALing

definition: a thing (called th) is mass-hint-appropriate:
	unless th is fungible, no;
	if th is the player or th is pockets or th is dope tan notepad or th is toad pen or th is magenta nametag, no;
	if th is part of the tagged gadget, no;
	yes;

chapter defined in core

definition: a thing (called th) is reflexed: no;

definition: a thing (called th) is flip-irrelevant:
	no;

volume jumpthrough information

understand "jf [number]" as jumpthroughing.
understand "ji [number]" as jumpthroughing.
understand "jm [number]" as jumpthroughing.
understand "jr [number]" as jumpthroughing.
understand "jo [number]" as jumpthroughing.
understand "js [number]" as jumpthroughing.

understand "jf" as jumpthroughalling.
understand "ji" as jumpthroughalling.
understand "jm" as jumpthroughalling.
understand "jr" as jumpthroughalling.
understand "jo" as jumpthroughalling.
understand "js" as jumpthroughalling.

the deduce region from first letter rule is listed first in the check jumpthroughing rules.

check jumpthroughing (this is the deduce region from first letter rule):
	if word number 1 in the player's command is "jf":
		now jump-region is forest;
		now jump-table is table of forest jumps;
	else if word number 1 in the player's command is "ji":
		now jump-region is sortie;
		now jump-table is table of sortie jumps;
	else if word number 1 in the player's command is "jm":
		now jump-region is metros;
		now jump-table is table of metros jumps;
	else if word number 1 in the player's command is "jr":
		now jump-region is resort;
		now jump-table is table of resort jumps;
	else if word number 1 in the player's command is "jo":
		now jump-region is ordeal loader;
		now jump-table is table of ordeal loader jumps;
	else if word number 1 in the player's command is "js":
		now jump-region is stores;
		now jump-table is table of stores jumps;
	else:
		say "Unrecognized region." instead;
	say "Jump region is now [jump-region].";
	say "Jump table is now [jump-table].";

table of ordeal loader jumps
what-to-flip-to	what-before	dir-to-go	place-to-go	is-llp	is-alt-llp
or do door	--	inside	a room	--	--
bugle	--	--	--	false	true
blot	--	--	--	true	false
goat	inside-to-thickets rule	--	--	true	false
deer	inside-to-thickets rule	--	--	false	true
nest	--	--	--	true	--
gateman	--	inside	--	--	--
attics	--	--	--	true	true

this is the inside-to-thickets rule:
	if player is not in Thickest Thickets, try going inside;

table of stores jumps
what-to-flip-to	what-before	dir-to-go	place-to-go	is-llp	is-alt-llp
scented descent
depots
trade tread
tenibac	--	--	--	true	true
sorbet	--	--	--	true	true

table of forest jumps
what-to-flip-to	what-before	dir-to-go	place-to-go	is-llp	is-alt-llp
--	first-guider-flip rule
--	second-guider-flip rule
nose	--	east
shotgun
shades
silt	--	west	--	true	true
maps	open-sandwich rule	west
beard
--	disguise-and-through rule
chisel
sliver	prepare-livers rule	--	flesh shelf
drapes	--	--	emptiness sepiments
has been	--	--	--	true	true
silver	cut-drapes rule
wolves	load-shotgun rule
--	shoot-wolves rule

this is the first-guider-flip rule:
	try ts0ing;
	try fliptoing scented descent;
	try entering scented descent;
	try going godir of a random fungible guider;

this is the second-guider-flip rule:
	try going godir of a random fungible guider;

this is the open-sandwich rule:
	try opening the sandwich;

this is the disguise-and-through rule:
	try putting shades on nose;
	try putting beard on nose;
	try going east;
	try going north;

this is the prepare-livers rule:
	try peeling river ville liver with chisel;
	try peeling viler liver with chisel;
	try inserting river ville liver into grinder;
	try inserting viler liver into grinder;

this is the cut-drapes rule:
	try cutting the drapes;

this is the load-shotgun rule:
	try inserting silver into shotgun;
	try going inside;
	try examining maps;

this is the shoot-wolves rule:
	try shooting the wolves;

table of sortie jumps
what-to-flip-to	what-before	dir-to-go	is-llp	is-alt-llp
--	dial-fix rule
teleporter	--	north
tortilla
parmesan
steak
hotsauce
lettuce
--	prepare-taco rule
coat
grits	open-fridge rule	--	true
pancake	open-fridge rule	--	true
shoes	kitchen-room rule
sack
straw
teleporter	straw-in-sack rule
peasant
teleporter	hay-in-sack rule
hallway	prepare-hallway rule
soil	first-oils rule
silo	second-oils rule
missile
panel	fold-poem rule
black door
shoot button	prepare-silo rule
steer button
--	final-shot rule

this is the dial-fix rule:
	try ts0ing;
	try fliptoing depots;
	try entering depots;
	try numming 16;

this is the prepare-taco rule:
	try inserting parmesan into tortilla;
	try inserting steak into tortilla;
	try inserting hotsauce into tortilla;
	try inserting lettuce into tortilla;

this is the open-fridge rule:
	try opening the fridge;

this is the kitchen-room rule:
	try going east;
	try going south;

this is the straw-in-sack rule:
	if straw is fungible, try inserting straw into sack;

this is the hay-in-sack rule:
	if straw is fungible or straw is in sack:
		now player has straw;
		try giving straw to peasant;
	if hay is fungible and peasant is not fungible, try inserting hay into sack;
	try gotoing stiller trellis;

this is the prepare-hallway rule:
	try fliptoing teleporter;
	try going north;
	if hay is fungible, try inserting hay into wall;

this is the first-oils rule:
	try fliptoing cask;
	try going east;
	try pouring oils;
	try gotoing moor;

this is the second-oils rule:
	try gotoing sacred cedars;
	try pouring oils;
	try gotoing moor;

this is the fold-poem rule:
	try folding the poem;

this is the prepare-silo rule:
	if black door is fungible, try putting black door on silo;
	if panel is fungible, try putting panel on silo;
	if missile is fungible, try inserting missile into silo;

this is the final-shot rule:
	if steer button is fungible, try pushing steer button;
	if shoot button is fungible, try pushing shoot button;

table of metros jumps
what-to-flip-to	what-before	dir-to-go	is-llp	is-alt-llp
gardenia	metros-prep rule
velcro	--	north
tomato	--	west
--	emitter-loop rule
rentals	--	--	true	true
--	termites rule
keycard
controls	--	south
sheath	pre-fairy-purchase rule
barcode	--	west
sword	--	west
--	enter-coteries rule
--	ask-nerds rule
gin nope opening	to-terminal rule
--	controls-in-slot rule
resin	pre-resin rule
beast
--	kill-beast rule

this is the metros-prep rule:
	try ts0ing;
	try fliptoing trade tread;
	try entering trade tread;

this is the emitter-loop rule: [ this goes beyond getting a point but we'd like to be by the bastion ]
	try going east;
	try going south;
	try going west;
	try throwing tomato at night thing;
	try examining mattress;
	try going east;
	try going north;
	try going north;

this is the termites rule:
	try switching on termite emitter;

this is the pre-fairy-purchase rule:
	try going east;
	try taking brocade;
	try giving gardenia to faeries;

this is the enter-coteries rule:
	try going east;
	try going south;
	try putting barcode on keycard;
	try putting keycard on friend finder;
	try going east;

this is the ask-nerds rule:
	try asking nerds about "darkness"

this is the to-terminal rule:
	try going south;
	try going west;
	try going south;

this is the controls-in-slot rule:
	try going up;
	try inserting controls into gin nope opening;

this is the pre-resin rule:
	try going down;
	try going east;

this is the kill-beast rule:
	try attacking beast;

table of resort jumps
what-to-flip-to	what-before	dir-to-go	is-llp	is-alt-llp
teleporter	resort-prep rule
lies	--	--	true	true
cork	--	--	false	true
wings	--	--	true	false
toeholds	--	east	false	true
grips	--	--	true	false
ropes	--	--	true	false
slope
protest	--	east
potters
china	--	--	true
kilns	--	--	true
--	tug-toe rule
--	exist-end rule

this is the resort-prep rule:
	try ts0ing;
	now forest is solved;
	now sortie is solved;
	now metros are solved;
	try fliptoing ogled lodge;
	try entering ogled lodge;

this is the tug-toe rule:
	change the text of the player's command to "tug toe";
	try tuging toe;

this is the exist-end rule:
	change the text of the player's command to "exist";
	try existing;

Shuffling Tests ends here.

---- DOCUMENTATION ----
