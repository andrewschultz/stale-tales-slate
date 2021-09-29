Version 1/171011 of Roiling Mistakes by Andrew Schultz begins here.

[mist.py checks to make sure the unit tests are synced with this]
[malf.py alphabetizes mistakes by section]
[books are arranged by difficulty/first viewed, and rooms are arranged by first viewed]
[note the code may look weird since room names don't have hyphens, to facilitate parser usage for the player with GT]

volume Roiling Mistakes

[some of these were defined in the main file, but if we do that, we wipe out the mistakes]

understand the command "hug" as something new.
understand the command "embrace" as something new.
understand the command "knock" as something new.
understand the command "inset" as something new.

book general

understand "walkthrough" or "walkthru" as a mistake ("You can HINT an individual thing or ask for a general HINT. There is also a walkthrough.txt that should've come with the game. It should be linked to at IFDB or somewhere.");

understand "use [text]" as a mistake ("The verb USE is a bit too nonspecific for the parser. You can SWITCH things, or OPEN doors[if player has settler], or SCAN with the settler[end if][if player has whistle], or PLAY the whistle[end if]. You should also be able to EXAMINE something you want to use, and the game should hint a verb.")

understand "knock [text]" as a mistake ("Just KNOCK instead.");

understand "cheat on/off" and "teach on/off" as a mistake ("Just type c/t or cheat/teach to toggle. Note: settler is currently in [unless cheat-on is true]non-[end if]cheat mode.") when player has settler.

understand "hug [text]" and "hug" as a mistake ("Hug? Ugh. Guh.")

understand "embrace [text]" and "embrace" as a mistake ("Hug? Ugh. Guh.")

understand "pace" and "paces" as a mistake ("The space capes are already abstract and bizarre enough. They work, and you probably don't want to change them.") when player has super purse.

understand "consult [text]" as a mistake ("You can CONSULT PAD ABOUT X, CONSULT ABOUT X, or PAD X.") when player has pedanto notepad.

book Ordeal Reload

understand "laredo" as a mistake ("If you want a Western game situated on the US/Mexico border, this isn't for you.") when mrlp is Ordeal Reload.

chapter Dusty Study

to say intro-warn: if Report Porter Perrot is off-stage, say "--well, once you've had an introductory dialogue with an NPC"

understand "[text] stable [text]" and "stable [text]" and "[text] stable" as a mistake ("You can just [if tables are in Dusty Study]change the tables by saying STABLE[intro-warn][else]go IN to the stable[end if].") when player is in Dusty Study.

understand "basement [text]" and "[text] basement [text]" and "[text] basement" as a mistake ("You can just [if meet bans are in Dusty Study]change the ten beams by saying BASEMENT[intro-warn][else]go DOWN to enter the basement[end if].") when player is in Dusty Study.

understand "best name" and "bestname" as a mistake ("Hm, you're pretty sure the beams guard something below. What's the best name for a room that's below? (You note the first and third squares on your settler turn purple as you think of the best name.)")

understand "chalets" as a mistake ("You don't need a safe home, right now. You need adventure[if player has latches]. Oh, and you don't have to switch that many letters, either[end if].") when player has latches or player has satchel.

understand "net" and "net beams" and "beams net" as a mistake ("But the net would still block you.") when player is in Dusty Study and meet bans are in Dusty Study.

understand "nip" as a mistake ("Maybe if it weren't a giant pin. Well, giant enough to hide a wall safe.") when player is in Dusty Study and giant pin is in Dusty Study.

understand "odor" as a mistake ("[if Report Porter Perrot is off-stage]You'd stink as a host, trying that[else if Dusty Study is not lit]No, you need a light source, not a way out[else]The smell would gag you before the shouty youths[end if].") when player is in Dusty Study.

understand "palm" as a mistake ("Maybe you could, but you will need the light. You won't need the landscaping.") when player has lamp

understand "pedo" as a mistake ("[one of]Yep. It's probably part of Elvira's reject-and-retreat, insinuating something without proving it. One of her 'clever' games[or]Don't dwell on it. It's lies[stopping].") when player is in Dusty Study and op ed is in Dusty Study.

understand "rood" as a mistake ("[if Report Porter Perrot is off-stage]No need to surprise a guest like that. Just open the door[else if Dusty Study is not lit]You need a light source[else]It'd be your own crucifix if you let the shouty youths outside in[end if].") when player is in Dusty Study.

understand "trestle" as a mistake ("The settler is pretty powerful, but it can't build bridges.") when player has settler.

chapter Largely All-Grey Gallery

understand "astir" as a mistake ("[if stair is touchable]You don't need a moving stair.[else]You need to change that to something else, then it'll be astir[end if].") when stair is touchable or stria is in location of player or sitar is in location of player.

understand "basement" as a mistake ("Well, if you want points for that, you'll need to go back to the study.") when player is in Largely All Grey Gallery and meet bans are in Dusty Study.

understand "bsin" and "bs in" as a mistake ("Now, now! This game is strictly about logic! Nothing frivolous, if you please! [if isbn bins are reflexed]Okay, you can take a small break for fixing the bins[else]Right now, you're just dancing around a way to fix the ISBN bins[end if].") when player is in Largely All Grey Gallery.

understand "gnu" as a mistake ("It's a rifle, not a gun. Besides, you don't need a gnu-sance.") when rifle is touchable.

understand "sitar" as a mistake ("[if stair is touchable]Surely a stair is more handy right now[else]You don't need music right now. A way to get around would be better[end if].") when player is in Largely All Grey Gallery.

chapter Carven Cavern

to decide whether plates-staple-touch:
	if plates are touchable or stapler is touchable, yes;
	no;

to say check-sign-imminent: process the sign-imminent rule;

to say spelling-matters of (ts - a truth state): say "'Spelling matters, here. If [if ts is true]I[else]it[end if] were a spectre, I'd give a different cheat reading. Slots six and seven would turn [if ts is true]yellow and red[else]red and yellow[end if], respectfully. Err, respectively,' says the Respect Specter.[paragraph break]You're not sure how it was able to detect your mental spelling, but you're a bit impressed and worried at the same time"

understand "craven" as a mistake ("Ok, the Carven Cavern [b]IS[r] pretty craven as anagrams go, but you need to find a way through, no matter what its name is.") when player is in Carven Cavern.

understand "filer" as a mistake ("You can't just give Elmo a desk job. Though maybe some paperwork would help.[check-sign-imminent]") when elmo is in location of player and elmo has rifle.

understand "lifer" as a mistake ("You start to educate Elmo about the penalties for murder, but he gestures at you like you've almost guessed a Charades clue or something.[check-sign-imminent]") when elmo is in location of player and elmo has rifle.

understand "mole" as a mistake ("You can't change Elmo into an animal. Your powers don't work that way. [if rifle is moot]He already seems to be[else]But maybe he is[end if] a different sort of mole.[check-sign-imminent]") when Elmo is in location of player.

understand "petals" as a mistake ("That's already been done, and quite well, by Alan Garner in The Owl Service. If you haven't read his Brisingamen books, you should! They're not too long and very entertaining.") when plates-staple-touch.

understand "pleats" as a mistake ("You are a text adventurer, not a fashion designer.") when plates-staple-touch.

understand "sceptre" as a mistake ("[spelling-matters of false].") when Respect Specter is touchable.

understand "spectre" as a mistake ("[spelling-matters of true].") when Respect Specter is touchable.

understand "trainer" as a mistake ("You're on your own. Perhaps you'd be better off [if plaster is in Carven Cavern]scanning the plaster and [end if][if player has staple]making use of the staple[else]twiddling the plates[end if] to get on with things.") when player is in Carven Cavern. [?? respect specter is not here for that]

book stores

chapter Strip of Profits

understand "destro" as a mistake ("It's going to get evil enough even without a high-ranking COBRA officer.") when player is in Strip of Profits.

understand "doters" as a mistake ("You don't need people oohing and ahing at your skill.") when player is in Strip of Profits.

understand "ektor" and "ektors" as a mistake ("There's only one Ektor Mastiff, and to find him, you'd need to visit Marco Innocenti's most un-cyanotic Andromeda Collection.") when Store K is in location of player or tokers are in location of player.

understand "ergots" as a mistake ("You're trying to rescue the people of Yorpwald, not give them fungus infections.") when Store G is in location of player.

understand "gorest" and "go rest" as a mistake ("Store G is too busy to allow that these days.") when Store G is in location of player.

understand "gots er" as a mistake ("And what would you do with Store G, when you take it?") when Store G is in location of player.

understand "hoster" as a mistake ("That was sort of a given from the warning on Store H[if Store H is examined], as you note E. S. Roth's signature[end if], and it is all in red. So none of those letters are in place. Hmm, what's a place/person that's been isolated?") when Store H is in location of player.

understand "ouster" as a mistake ("It's your job to be the ouster in [if store u is in Strip of Profits]Store U[else]the course source[end if], but you'll need to warp out of the Strip.") when Store U is in location of player or course source is in location of player.

understand "pteros" as a mistake ("You don't need to face any predators. Aigh!") when player is in Strip of Profits and store p is in Strip of Profits.

understand "repost" as a mistake ("That's not what you need to do with Store P--you even see red trying to figure HOW you would.") when player is in Strip of Profits and Store P is in Strip of Profits.

understand "resort" as a mistake ("You can't go back to the Means Manse. Well, you can, but it's a bad idea.") when player is in Strip of Profits.

understand "restow" as a mistake ("Store W glows red as you try this.") when Store W is touchable.

understand "sportif" as a mistake ("You can argue whether the strip is already sportif, but nonetheless, that would be a superficial change compared to fixing what's behind the stores.") when player is in Strip of Profits.

understand "stoner" as a mistake ("[if nestor is in location of player]Being a stoner isn't treason. Use his real name.[else][one of]'Hey, man! Don't depersonalize me! Or I'll throw something at you!' you hear from inside Store N.[or]'Like, don't do it again, dude, or I will literally totally throw these empty bottles at you.'[or]The door to Store N opens, and two bottles whizz in your direction but nowhere close. They're bright red, and they appear to be lotions or something[move-toners].[or]You've teased the person in Store N enough. You should have enough clues to figure his name now, anyway.[stopping][end if]") when player is in Strip of Profits

understand "storge" as a mistake ("[one of]You have a momentary vision of an apocryphal eighth book in the Harry Potter series sitting by a pillar, but it passes[or]Stop trying to make Pillar of Storge happen[stopping].") when Store G is in location of player.

understand "stroke" as a mistake ("You need a stroke of genius, but that's all wrong. You are left seeing red a bit. But this puzzle probably isn't worth risking your health over.") when player is in strip and mangiest steaming is off-stage.

understand "sureto" or "sure to" as a mistake ("You'll be sure to figure it out sooner or later. You see red a bit at not quite being there yet.") when Store U is in location of player or course source is in location of player.

understand "throes" as a mistake ("No, you are not in your last throes. Neither is Yorpwald. Try [if otters is solved or others is unsolved]thinking of a more common word[else]looking at stores at the other end of the alphabet[end if].") when Store H is in location of player or Throes Hoster is in location of player.

understand "tortes" as a mistake ("There's no time for food! Especially fatty, non-brain food[if Topside Deposit is visited]! Besides, the towers had plenty of food. There was your chance[end if]!")

understand "tosher" as a mistake ("[if store h is in strip]Insults will get you nowhere. You see red at thinking such a word[else]The Throes Hoster does look a bit weird, but you need to enter it, not change it[end if].") when player is in Strip of Profits

understand "toyers" as a mistake ("You see red at the possibility people might mess with your mind in whatever's behind store Y--especially after noting the TOYERS with the red line through in the window.") when store y is in location of player.

understand "troyes" as a mistake ("Store Y does not lead to France.") when store y is in location of player.

chapter Cruelest Lectures

understand "be rash" as a mistake ("It'd get you in trouble around here.") when player is in Cruelest Lectures.

understand "douse it" as a mistake ("Sort of, but why not get rid of it--this whole boondoggle--outright?") when player is in Cruelest Lectures.

understand "easting" as a mistake ("Compass directions aren't relevant here. You need to upset everything, somehow.") when player is in Cruelest Lectures.

understand "eatings" and "tangies" as a mistake ("You might be suspected of having the munchies if you tried that.") when player is in Cruelest Lectures.

understand "hear bs" or "hear b s" as a mistake ("You can't help but do so, alas.") when player is in Cruelest Lectures.

understand "ingates" as a mistake ("More like, you could use out-gates to leave, amirite?") when player is in Cruelest Lectures.

understand "tedious" as a mistake ("Yes, it's tedious enough to make you see red.") when player is in Cruelest Lectures.

book routes

understand "among" as a mistake ("Maybe if there were mango trees around.") when mrlp is routes.

[def=ouster-in-routes]
understand "ouster" as a mistake ("You're the ouster here, trying to get by the routes.") when mrlp is routes.

understand "follow [text]" as a mistake ("This game doesn't allow the FOLLOW verb--you should ENTER a road or something if you need to.") [for ROUTES]

chapter Same Mesa

understand "aint gas" and "gas" as a mistake ("The [sit a nag] is plenty solid and will stay that way, independent of your efforts.") when anti sag sit a nag is touchable.

understand "aint" as a mistake ("You don't need to make the [sit a nag] any sturdier. And calling it ain't-sag would be false advertising.") when anti sag sit a nag is touchable.

understand "ames" as a mistake ("Ames, Iowa is less nowhere than here for sure, regardless what some wiseguys from rival Big Twelve schools might say. But you can't just up and leave.") when player is in Same Mesa.

understand "apts" as a mistake ("Pat's is a local small business, not nameless, faceless real estate.") when player is in Same Mesa or player is in Idle Deli.

understand "bane" as a mistake ("You fill yourself with fear for no reason. It's really easy to do! You add to the screaming so that it reaches a tipping point. You're so into the act, you don't notice that--THE BEAN is about to roll over on you! And out pops some of Elvira's new stank tanks! They roll over the Same Mesa, and you.[paragraph break][uurrgg]") when player is in Same Mesa and THE BEAN is in Same Mesa.

understand "below" as a mistake ("[if woe bow bell is moot]You already tried this preposition. There must be others[else]Nice try, but wrong preposition for the situation[end if].") when WOE BOW BELL is not in Same Mesa and mrlp is routes.

understand "beneath" as a mistake ("Nice try, but wrong preposition for the situation.") when mrlp is routes and THE BEAN is off-stage.

understand "bowel" and "elbow" and "bowels" and "elbows" as a mistake ("The WOE BOW BELL sounds disembodied, but you don't want to give it a body. Find a direction to duck.") when player is in Same Mesa and WOE BOW BELL is in Same Mesa.

understand "car" as a mistake ("Oscar's Uhh-Tut Hut isn't much, but he'd be upset if you left him homeless. Even if the car you made him was nice.") when player is in Same Mesa.

understand "gats" and "tags" as a mistake ("This game is not violent enough for tags with gats.") when Gast is touchable.

understand "ides" and "rat" and "tar" as a mistake ("It's the whole side art you need[if tirades are moot]ed[end if] to deal with.") when player is in Same Mesa and side art is in Same Mesa.

understand "indies" as a mistake ("You don't need to worry about art, here.") when scripture picturers is in location of player.

understand "preposition" and "prepositions" as a mistake ("Yes, but WHICH prepositions?") when player is in Same Mesa.

understand "psat" as a mistake ("You have enough word juggling now. You don't need a standardized test, too.") when player is in Same Mesa or player is in Idle Deli.

understand "ptas" as a mistake ("Concerned parents won't be able to help you here.") when player is in Same Mesa or player is in Idle Deli.

understand "satired" as a mistake ("[if gast is off-stage]You find nothing to satirize[else if gast is touchable]Bad idea to poke fun at someone that much bigger than you[else]Don't be mean. [Gast] isn't and wasn't the enemy. Move on[end if].") when player is in Same Mesa.

understand "seam" as a mistake ("You can't find any crack in the Same Mesa that you could follow[if THE BEAN is in location of player], except maybe under THE BEAN. Wait, not quite UNDER[end if].") when player is in Same Mesa.

understand "spat" as a mistake ("Picking a fight--or spitting--is uncouth.") when player is in Same Mesa or player is in Idle Deli.

understand "stag" as a mistake ("[gast] already came alone and does not deserve to be changed into an animal.") when Gast is touchable.

understand "staider" as a mistake ("[if gast is off-stage]Nothing has gotten too riotous yet[else if side art is reflexed]You already did your best with the tirades and side art[else][Gast] fails to calm down. Perhaps you just need to position yourself correctly and play along. You see red, a bit[end if].") when player is in Same Mesa.

understand "taps" as a mistake ("You have no bugle. Well, not in this game.") when player is in Same Mesa or player is in Idle Deli.

understand "tardies" as a mistake ("Actually, you have all the time in the world, and you don't need to delay anyone.") when side art is touchable.

understand "under" as a mistake ("[if Gast is in location of player]You can't hide from [Gast] like that, right now[else]There's nobody to hide from, though you could fit under the [sit a nag] later[end if].") when player is in Same Mesa and Rude N Nuder is off-stage.

[def=under-generic]
understand "under" as a mistake ("You already went UNDER. You need something new. Something slightly different.") when player is in Same Mesa and THE BEAN is in Same Mesa.

chapter Cleric Circle

[?? pat's inside and out, as well as oscar's]

understand "man let" and "let man" as a mistake ("Your heart is in the right place, but telling the mantle to cool it won't do much good.") when player is in Cleric Circle.

understand "noops" as a mistake ("The snoop spoon isn't as complicated as assembly language.") when player has snoop spoon.

understand "opposite" as a mistake ("Hm. The list doesn't seem to be what you need to stand opposite from. If it were, maybe Brother Horbert could and would have.") when list o toils is in location of player and pipe soot is not touchable.

chapter Adobe Abode

understand "orcas" as a mistake ("But the whales would be beached. [if player is in same mesa]Inside or outside of Oscar's[else if list o toils is unexamined]There's no sign Oscar himself needs or wants such a change[else if pipe soot is in Adobe Abode]Besides, it's the pipe soot you want[else]Besides, you got the pipe soot[end if].") when player is in Same Mesa or player is in Adobe Abode.

understand "poopiest" as a mistake ("This is the wrong area for adjectives, clean or unclean. And [if player is not in Adobe Abode]the pipe soot is icky enough as-is[else]Oscar's abode is, well, dingy enough[end if].") when player is in Adobe Abode or player has pipe soot.

understand "scoar" and "scoars" as a mistake ("You don't get points just for asking them.") when player is in Same Mesa or player is in Adobe Abode.

chapter Idle Deli

understand "apt" as a mistake ("Actually, Pat's advice may not be apt[if seed pit is reflexive]. Look to the seed pit[end if].") when player is in Idle Deli.

understand "atp" as a mistake ("No need for biochemistry, here.") when player is in Idle Deli.

understand "lied" as a mistake ("There has been no false advertising.") when player is in Idle Deli.

understand "pat pat" and "pat" as a mistake ("Pat doesn't need consolation for his lost business.") when player is in Idle Deli.

understand "proust" as a mistake ("Alas, the stupor sprout has nothing in common with [i]madeleine[r].") when stupor sprout is touchable.

understand "pta" as a mistake ("You don't need to attend any school board meetings.") when player is in Idle Deli.

understand "scarving" as a mistake ("Changing the restaurant to a clothes boutique isn't helpful.") when player is in Idle Deli.

understand "tap pat" and "tap" as a mistake ("You have Pat's attention, already, and [if seed pit is reflexive]he's not letting you in that seed pit without argument[else]you don't really need it now that you got the stupor sprout[end if].") when player is in Idle Deli.

chapter Harms Marsh

to decide whether told-of-logan:
	process the am-along rule;
	if the rule succeeded, yes;
	no;

understand "along" as a mistake ("[if Harms Marsh is unvisited]You aren't far enough along to, err, look along[else]There must be some passages, but you can't see anywhere to go along, yet. You need to do more looking[end if].[preefsay of un road]") when told-of-logan. [?? how do we reconcile preefsay in mistakes with preefsay outside of mistakes?]

understand "around" as a mistake ("You can't see an un-road yet, or anything that might lead to it.") when be ova is not off-stage and odd aura is off-stage.

understand "helos" as a mistake ("Helicopters can't make it underground.") when player is in Harms Marsh.

chapter Ripe Pier

understand "ta da" and "tada" as a mistake ("This is the wrong region for that sort of flash of insight.") when player is in Ripe Pier.

chapter Cripple Clipper

understand "abroad" and "aboard" as a mistake ("Now you have the bad oar and you're aboard, you know you need to go abroad, but--you need to find a new way to navigate.") when player is in Cripple Clipper.

understand "feer" as a mistake ("Fearing or pretending fake fear won't help, here.") when player is in Cripple Clipper.

chapter Sonancy Canyons

understand "spatter" as a mistake ("No violence!") when player is in Sonancy Canyons and patters are in Sonancy Canyons.

understand "tapster" as a mistake ("No alcohol appears, and worse, Spinal Tap's 'Back from the Dead' doesn't start playing, either.") when player is in Sonancy Canyons and patters are in Sonancy Canyons.

understand "thru" as a mistake ("Well, sort of, but not so colloquial.") when player is in Sonancy Canyons and hurt hog is in Sonancy Canyons.

book troves

chapter Loather Rathole

understand "real hot" as a mistake ("[if Race Acre is touchable]You already got hot. Now you need to summon a different emotion.[else]But what emotion would provide heat?[end if]") when player is in Loather Rathole.

chapter Bustle Sublet

understand "obverse" as a mistake ("You can't just make things obverse by wanting them to be. [i]But if change comes within, perhaps things are closer to obverse than you think[r].") when sob ever verbose is touchable.

understand "pots" as a mistake ("You can't see what you would do with a bunch of pots.") when stop post is touchable.

chapter Boarded Roadbed

to say snore-was-is:
	say "[if SNORE SO ARENA is reflexed]was[else]is[end if]"

understand "norse" as a mistake ("The bee or arena's nationality is not relevant, and besides, it [snore-was-is] a snore.") when player is in Boarded Roadbed.

understand "noser" as a mistake ("A small orange blob with big eyes, short legs, and no arms falls off to the side, emitting garbled pseudo-profanity.") when player is in Boarded Roadbed.

understand "senor" as a mistake ("The bee's gender [snore-was-is] only relevant to the point of knowing it's a [i]senora[r].") when player is in Boarded Roadbed.

chapter Drain Nadir

understand "alger" as a mistake ("What would an Alger hero DO to such foul spirits as the lager, though?") when lager is touchable.

understand "aspired" as a mistake ("Now is not the time to fret solely on past dreams. Fret on the hopeless present and future as well!") when player is in Drain Nadir.

understand "praised" as a mistake ("You would like to be, but you can't just want others to. Change comes from within.") when player is in Drain Nadir.

understand "snog" as a mistake ("You're too busy for...THAT. You focus on the singer. Probably someone you'd like to...hire to sing a song you wrote.") when Id Cede is touchable.

chapter Boredom Bedroom

understand "aled" as a mistake ("Getting drunk will not solve your problems. Besides, you missed your 'chance' with the lager in Drain Nadir. You see red at yourself for such thoughts.") when player is in Boredom Bedroom.

understand "broomed" as a mistake ("You are not rich and consequential enough to snap your fingers and watch your own mess get cleaned up. Yet.") when player is in Boredom Bedroom.

understand "maters" and "tamers" as a mistake ("Perhaps they know their trade, well, but you need to, too.") when ME ARTS is in location of player.

understand "repeal" and "repeals" as a mistake ("That's the right sort of emotion, but REPEALS is a noun, and REPEAL is only six letters. Plus the pleaser leapers wouldn't find it emotional or artistic enough to be disappointed.") when pleaser leapers are touchable.

chapter Browse Bowers

understand "bowser" as a mistake ("This game is pretty old school, but it has enough obstacles.") when player is in Browse Bowers.

understand "eiders" as a mistake ("But what would ducks DO in the big city? They have no ambition. They crave food for survival, but you want more...") when player is in Browse Bowers

understand "persia" as a mistake ("You redden at the thought of mystical lands that aren't relevant to the here and now.") when player is in Econ Cone.

chapter Econ Cone

understand "once" as a mistake ("Yes! You only need a chance! Once! To get inside! [if cone-points is 0]But you're nowhere near enthused enough[else if cone-points is 1]You're enthused enough, but you need to strategize[else]You're more than enthused enough, but you need to strategize[end if].") when player is in Econ Cone.

understand "penrod" as a mistake ("Juvenile children's literature? At a time like this, when you are so close to making it? Certainly not!") when player is in Econ Cone and END PRONER POD is in Econ Cone.

understand "pernod" as a mistake ("There will be time for ritzy, overpriced alcohol AFTER you have made it to the top.") when player is in Econ Cone and END PRONER POD is in Econ Cone.

chapter Upscale Capsule

to decide whether mbb-in:
	unless player is in Upscale Capsule, no;
	if Mr Beal is in Upscale Capsule, yes;
	if balmer is in Upscale Capsule, yes;
	no;

understand "able" as a mistake ("Fortuntaely, [mbb] doesn't become physically able.") when Mr Beal is in Upscale Capsule and player is in Upscale Capsule.

understand "ambler" as a mistake ("You see red slightly as [mbb] fails to look away.") when mbb-in;

understand "bale" as a mistake ("Neither you nor [mbb] turns into hay.") when Mr Beal is in Upscale Capsule and player is in Upscale Capsule.

understand "fren" as a mistake ("No dog walks along dragging Sebastian in their mouth.") when player is in Upscale Capsule.

understand "gwano" as a mistake ("Enough with the (redacted) spelling.") when player is in Upscale Capsule and wonga wagon is in Upscale Capsule.

understand "lsat" as a mistake ("Oh dear. Is a standardized lawyers['] aptitude test really less tedious than this? Well, I guess both have a lot of logic chopping. Ouch.") when player is in Upscale Capsule and salt is in Upscale Capsule.

understand "slat" as a mistake ("You're not in the window making business.") when player is in Upscale Capsule and salt is in Upscale Capsule.

understand "wogan" as a mistake ("You don't need Terry Wogan announcing your progress like it's Eurovision.") when player is in Upscale Capsule and wonga wagon is in Upscale Capsule.

book presto

understand "fire [text]" as a mistake ("SHOOT something with the gun instead.") when player has popgun.

understand "shoot [text] with [text]" as a mistake ("Just say what you want to shoot.") when player has popgun.

chapter Grey Gyre

understand "balm" as a mistake ("Giving the lamb balm might be an option, if there was any in the game, but turning it into balm would be out of line. And it wouldn't scare the lamb home.") when lamb is in location of player.

understand "bleep" as a mistake ("I don't know what you said, but it's vulgar, I'm sure. Doesn't faze ME, though.") when plebe is not in location of player and mrlp is presto

understand "enemy tzar" and "tzar enemy" as a mistake ("You hear a rumbling. Then Elvira appears from the maze! 'Oh, dear, this will be easy,' she says. And it is.[paragraph break][uurrgg]") when location of player is Grey Gyre and maze entry is in Grey Gyre.

understand "hm up" and "up hm" as a mistake ("You don't need to levitate the hump. You need a way to jump over it.") when hump is in Grey Gyre and player is in Grey Gyre.

chapter Char Arch

understand "arts" as a mistake ("Being an arts tsar won't help. You need a word that shows anger.") when tsar star is in Char Arch.

understand "cafe" as a mistake ("You don't need caffeine or food here.") when player is in Char Arch.

understand "gpa" and "gpas" as a mistake ("You're not being graded here. I mean, you are getting a score, but this isn't school or anything.") when player is in Char Arch.

understand "kay" as a mistake ("You try to nag the yak with a 'kay?' but without the 'mm' it's just not Lumberghian enough to work.") when yak is in location of player.

understand "kya" as a mistake ("The yak is unimpressed with your karate noises.") when yak is in location of player.

understand "mad" as a mistake ("How can you feel mad, looking at such a beautiful work of nature?") when player is in Char Arch.

understand "okey" as a mistake ("You try to make things okey (sic) but you aren't enough of a bard to.") when yoke is touchable.

understand "pga" and "pgas" as a mistake ("No golfers appear.") when player is in Char Arch.

understand "rats" as a mistake ("[if tsar star is moot]Boy! You miss that tsar star[else]Boy! It'd be neat to have something that made you more authoritative[end if].") when tsar star is not in location of player and tsar star is not worn and mrlp is presto.

understand "spag" as a mistake ("You don't have time to read text-adventuring magazines right now. You're too busy living them.") when player is in Char Arch.

understand "srat" as a mistake ("The Self-Referential Aptitude Test is an interesting puzzle, but you have enough on your mind, right now.") when tsar star is in Char Arch.

understand "tard" as a mistake ("[if Rand is in location of player]You pause before saying/thinking that, especially with Rand and Leo around. They may've heard that, before.[else if dart is enclosed by the player]The interjections in Presto stop short of slurs. I hope.[else][one of]Whether you are cursing the person who put the dart there, or yourself for not being able to get the dart, a slur like that isn't the way to go. In fact, it isn't the way to go in real life, either! This game doesn't want to be THAT sort of juvenile.[paragraph break]You see red at your slight indiscretion[or]Instead of using that word again, you think back to what seeing red after thinking it MEANT. You need a four-letter word, but T, A, R and D are in the wrong place. You take the time to write out all 24 possibilities, noting only nine remaining ones are valid. And that's before you use the settler. You also remember some mumbo-jumbo about the inclusion-exclusion principle, and how a random configuration of N items in a set has about a 1-1/e chance of having none right.[paragraph break]You don't feel dumb after doing this, so there's no need to use that word again[or]You are just trolling now. No further clues for you[stopping].[end if]") when dart is touchable

understand "tars" as a mistake ("But you already took the tsar star FROM the tars. Plus, you'd get all sticky.") when player wears tsar star.

chapter Dirge Ridge

understand "asswhup" and "whupass" as a mistake ("[if Leo is eager and Rand is eager]They're on your side. They will fight when they need to.[else if Leo is washed up or Rand is washed up]It's time for something more cordial than whupass. Besides, you have no can to put said hypothetical whupass in, and you won't find one. Not even in the cretins['] cistern.[else]No chance.[end if]") when Leo is in location of player.

understand "elo" as a mistake ("Somehow, you doubt Leo has a chess rating. Or enjoys any music other than heavy metal.") when Leo is in location of player.

understand "eol" as a mistake ("Somehow, you doubt Leo is into computers.") when Leo is in location of player.

understand "evil" as a mistake ("No, you're trying to get RID of the evil, here. Plus, you don't need to encourage the veil to come after you[if leo is fightin or rand is fightin], or that guy chasing you. That'd be mean[end if].") when player is in Dirge Ridge.

understand "leonard" and "renaldo" and "leandro" and "rolande" as a mistake ("That'd be some crazy Voltron stuff beyond your magic powers. It would deny Leo and Rand their individuality, and also, the giant paradox might kick in, which would hurt them. You [if rand is fightin]just need to outsmart them[else if leo is washed up]need to find a way to cheer them up[else]wouldn't want that, now they're your friends[end if].") when Rand is in location of player.

understand "rondale" as a mistake ("Strength and NFL level speed is pretty awesome, but it'd revoke Leo and Rand's individuality.") when Rand is in location of player.

understand "whassup" as a mistake ("You probably want to TALK to people instead. Well, most of the time.") when wzup is not in location of player.

understand "whasup" and "whasups" as a mistake ("That feels almost right, but you remember that that word has 2 s's in a row.") when player is in Dirge Ridge and Leo is washed up.

chapter Austerer Treasure

understand "ooph" and "phoo" as a mistake ("That sounds almost like the sort of grunt that would help you reach the hoop, but it doesn't quite work.") when player is in Austerer Treasure and hoop is in Austerer Treasure.

understand "pheyoo" as a mistake ("But nothing really smells in here. Perhaps you need something more straightforward and universal.") when player is in Austerer Treasure and ye hoop is in Austerer Treasure.

understand "rangier" and "rearing" as a mistake ("The earring shakes a bit more than usual, but maybe you're not in an area where it can be itself, or what it needs to be, yet.") when angrier earring is touchable.

chapter Marines Seminar Remains

understand "nobig" and "no big" as a mistake ("[if boing is reflexed]Hey, now, that's just humblebragging[else]Overconfidence is sort of the way, here. But it needs to be backed up with an idea[end if].") when popgun is touchable.

understand "oppugn [text]" and "oppugn" as a mistake ("You question the popgun a bit, mentally, but it's all you've got. It really should come in handy somewhere. Every other weird thing you've found has.") when popgun is touchable.

understand "pilots" as a mistake ("You don't need to fly anywhere. Besides, it's a popgun, not a pistol.") when popgun is touchable.

understand "smearin" as a mistake ("That may've happened during the seminar, but you don't need that sort of violence here and now.") when player is in Marines Seminar Remains.

understand "strop" as a mistake ("That's not the kind of weapon you need. You see red, slightly, at the prospect of cutting yourself with a razor strop by mistake.") when player is in Marines Seminar Remains.

chapter Nowt Town

understand "glib" as a mistake ("You'll need to be glib with something like g-lib later. If you get through this maze. In fact, maybe being glib might be easier than walking through.") when player is in Nowt Town.

understand "lawls" and "lawl" as a mistake ("You try to laugh at the walls, but [if cur-score of presto is 0]such actions don't quite seem to work here[else]then that just might get rid of them and not the electricity restricting your journey through Nowt Town[end if].") when maze walls are in location of player.

chapter room 3 of maze

understand "bing" as a mistake ("[if boing is reflexed]You already did that, and with 25% more word power, too[else]You come to four-fifths of a revelation, but it's not about this maze, sadly[end if].") when player is in r00.

chapter room 7 of maze

understand "brig" as a mistake ("There, there. This maze is much less hard to get out of than a prison.") when player is in r22.

chapter Saps' Pass

[a reminder here that we rename Saps' Pass to Phat Path once the hogs are gone]

understand "asp" and "asps" as a mistake ("[Saps Pass] [if lawl wall is moot]was[else]is[end if] dangerous enough.") when player is in Saps Pass.

understand "delis" as a mistake ("You don't need food. And the food would probably be pretty evil, anyway.") when player is in Saps Pass.

understand "idles" as a mistake ("Deil's Slide can out-wait you. So you'll want to get on with things.") when player is in Saps Pass.

understand "psa" and "psas" as a mistake ("Getting rid of bullies will help you go north! Also, persistence will help you reach your goals. TMYK!") when player is in Saps Pass.

understand "sidle" as a mistake ("You don't need to sneak up Deil's Slide.") when player is in Saps Pass.

understand "spa" and "spas" as a mistake ("Maybe one day, [if lawl wall is moot]the Phat Path[else]Saps['] Pass[end if] will lure unsuspecting travelers to empty their wallets instead of to their doom. But not until you've gotten rid of Elvira.") when player is in Saps Pass.

chapter Phat Path

understand "alter" as a mistake ("Vandalism! For shame!") when harpings phrasing is in location of player.

understand "artel" as a mistake ("You, Rand and Leo have already engaged in a collective effort.") when harpings phrasing is in location of player.

understand "ptah" as a mistake ("No Egyptian deity comes to your rescue. Or needs to.") when player is in Saps Pass and lawl wall is moot.

understand "slog on" as a mistake ("You need Leo and Rand to go away, for now, before you can slog on.") when player is in Saps Pass and lawl wall is moot and Rand is touchable.

chapter Hacks' Shack

to decide whether cola-around:
	if ALocalCo cola is touchable, yes;
	if mug is touchable and ALocalCo cola is moot, yes;
	no;

to decide whether skid-disk-touch:
	if skid is touchable or disk is touchable, yes;
	no;

understand "alco" as a mistake ("Alcohol doesn't work as well as caffeine in this situation.") when coal is touchable or cola-around.

understand "bat" as a mistake ("You don't want to take a bat to anything, here. Or have a bat swoop and take it. Trust me.") when tba key is touchable.

understand "clock sap" and "cock slap" and "slap cock" as a mistake ("The locs aren't that gangsta, and neither are you. And that's a good thing.") when locs pack is touchable.

understand "diver" as a mistake ("It's you that'll need to dive into some code.") when player is in Hacks Shack.

understand "feal" as a mistake ("Nobody needs allegiance, here.") when leaf is touchable or flea is touchable.

understand "idks" as a mistake ("You'll need to figure stuff out with the [if disk is touchable]disk[else]skid[end if], but right now, yeah, you're all 'I don't know.'") when skid-disk-touch.

understand "kids" as a mistake ("Kids don't need to listen to the words you've used so far! They wouldn't help with [if disk is touchable]programming[else]pushing the skid[end if], anyway[one of].[paragraph break]However, you do take a second to reflect that nobody told you you're doing this for the kids, so that's a plus[or][stopping].") when skid-disk-touch.

understand "loca" as a mistake ("What you [if ALocalCo Cola is touchable]have helps[else]want needs to help[end if] programming more than water or French champagne or dancing in the rain.") when coal is in location of player or cola-around.

understand "pop" as a mistake ("It's certainly not pop. Which you couldn't do much with, except get down with OPP, and this isn't that sort of game.") when player has ALocalCo cola.

understand "redive" as a mistake ("[if drive e is reflexed]Deriving was tricky enough[else]But you've figured nothing about Drive E yet. Not that you strictly need to[end if].") when player is in Hacks Shack.

understand "repo" as a mistake ("Nobody else seems to own the oper rope or the skid.") when skid is in location of player.

understand "rived" as a mistake ("You don't need to do that sort of hacking.") when player is in Hacks Shack.

understand "soda" as a mistake ("It's cola. It has to be. Soda could make you into a sod, of course.") when player has ALocalCo cola.

understand "to be or" as a mistake ("The [robot] isn't interested in monologues.") when player is in Hacks Shack.

book oyster

chapter Posh Hops Shop

understand "insert" as a mistake ("Almost, with the stein, there.") when stein is in hops shop and player is in hops shop.

understand "inset [text]" as a mistake ("[if the number of words in the player's command > 3]You may want to INSERT x in Y instead[else]You may not be using an object in the game, and you may wish to inseRt, instead[end if].")

understand "nites" as a mistake ("Misspellings don't work, here.") when stein is in hops shop and player is in hops shop.

understand "pacers" as a mistake ("Casper's writing is multifaceted, but he wrote a story opposed to cars and car races and stuff.") when casper is in hops shop and player is in hops shop.

understand "parsec" as a mistake ("Casper doesn't take too kindly to sci-fi terminology. He writes rough and tumble nature-y stuff.") when casper is in hops shop and player is in hops shop.

understand "phos" as a mistake ("The bar fails to change into an ethnic restaurant.") when player is in Posh Hops Shop.

understand "spyte" as a mistake ("The pesty types probably spell it that way, but I'm not letting YOU do so.") when player is in Posh Hops Shop.

chapter Olde Lode

understand "bare" and "bares" as a mistake ("A jogger runs by, singing 'Drop-Kick Me, Jesus, Through the Goalposts of Life.' Before he leaves, you notice the name BOBBY on his sweatshirt.[paragraph break]Really, what did you expect?") when player is in Olde Lode.

understand "bear" and "bears" as a mistake ("You don't need any predators chasing you.") when player is in Olde Lode.

understand "dole" as a mistake ("Alas, no unemployment check, pineapple or former Republican presidential candidate arrives.") when player is in Olde Lode.

understand "el doodle" as a mistake ("That would be more in place in a game with palindromes. Someone should write one! Whoops, they already did and called it Ailihphilia. Um, I mean, I already did. If you haven't played it, you totally should. After you're done here, of course.") when player is in Olde Lode.

understand "saber" and "sabre" as a mistake ("A weapon won't do much good here. You need action!") when player is in Olde Lode.

understand "stroll [text]" and "stroll" as a mistake ("No, you can't just stroll back into the Posh Hops Shop, and you can just plain walk anywhere else.") when mrlp is oyster and player is not in Posh Hops Shop.

chapter Disease Seaside

understand "arrive" as a mistake ("Easier said than done. Perhaps a river craft could help you across. Like the raft. Or the boats.") when player is in Disease Seaside.

understand "boast" as a mistake ("Batso.") when player is not in Disease Seaside.

understand "fart" as a mistake ("[if buried raft is in location of player]This raft isn't as receptive as the one in Anger Range[else if mrlp is oyster and Anger Range is visited]Gag! Ass-gas[else]You feel slightly dafter, having farted to no good purpose[end if].") when player is not in Disease Seaside.

understand "ocean" as a mistake ("As you seek to change the canoe, you hear a rush of water[if canoe is unexamined], quickly examine the canoe,[end if] and realize that the red fish cutting the tree there is, in fact, a herring. The last thing you needed was more water! But it is too late to change the ocean back. You don't even see if Shoer Osher's statue was washed away as well.[paragraph break][uurrgg]") when location of player is Disease Seaside.

understand "rosa" as a mistake ("Alas, no Lady of the Lake appears to help you. Her name, if she exists, is probably too hard to guess for this game.") when oars are touchable.

chapter Fighter Freight

understand "peal" as a mistake ("The pale plea already sort of is. You need a stronger action than that.") when player is in Fighter Freight.

understand "refight" as a mistake ("That's not very good English, and you haven't gotten in a fight yet. Soon, though.") when player is in Fighter Freight.

chapter Anger Range / Hero's Shore

understand "craps" as a mistake ("You have no dice to tempt the carps with. Or large amounts of money. Perhaps you'll need to try something more violent.") when player is in Anger Range and carps are in Anger Range.

understand "horse" as a mistake ("A horse won't help you explore the Hedron.") when player is in Anger Range and sausage is moot.

understand "hoser" as a mistake ("It's sort of appropriate now that you're in the north, but it's disrespectful to Shoer Osher.") when player is in Anger Range and sausage is moot.

understand "kepis" as a mistake ("If only it were that easy, to have a basket to harvest fish! But this area is about ACTION. You need to take the fight to the pikes.") when pikes are in Anger Range and player is in Anger Range.

understand "renga" as a mistake ("Now is not the time for poetry.") when player is in Anger Range.

understand "scarp" as a mistake ("Don't flee! Help the poor trout.") when player is in Anger Range and carps are in Anger Range.

understand "unheart" as a mistake ("Silly Internet slang isn't active enough, here.") when player is in Anger Range or location of player is location of sausage.

chapter Hardest Trashed Dearths

understand "hatred" and "hatreds" as a mistake ("There's enough of that going around.") when player is in Hardest Trashed Dearths.

understand "thread" and "threads" as a mistake ("There are no clothing stores around, nor is there anything physical to lead you to where the trout is.") when player is in Hardest Trashed Dearths.

chapter Lean Lane

understand "aet" as a mistake ("Oh, this region won't go into extra time unless you want to do the side quest.") when tea at a tee is in location of player

understand "ate" as a mistake ("You're getting ahead of yourself here.") when tea at a tee is in location of player.

understand "elan" as a mistake ("Lean Lane will never be pretty, and it doesn't need to be.") when player is in Lean Lane.

understand "eta" as a mistake ("ETA's one move later now that you went fishing for this anagram.") when tea at a tee is in location of player.

understand "neal" as a mistake ("It would be nice if Tortu the Trout gained a friend named Neal. Or any friend.") when player is in Lean Lane.

understand "reangle" as a mistake ("You tilt the gleaner around to try to see it from a different point of view. [if general gleaner is reflexed]You see nothing new--enlarging it seemed to do enough[else]If there are any differences, they're too small for you to see[end if].") when player has general gleaner.

understand "redraw" as a mistake ("Graphics? In a text adventure? Sacrilege! You deserve no prize for that! Plus Aunt Tuna hates vandalism.") when player is in Lean Lane.

understand "wrap [text]" as a mistake ("The bubble wrap is already covering something.") when player has wrap.

chapter Lapsin' Plains

understand "brides" as a mistake ("No, no time to think about romance, now.") when crate is in location of player.

understand "caret" as a mistake ("You need[if crate is reflexed]ed[end if] to shift letters and not sixes, here.") when crate is in location of player or bogus-trace is in location of player.

understand "cater" as a mistake ("No use catering to an enemy you can't see. Besides, the crate is too smashed to cater something.") when crate is in location of player or bogus-trace is in location of player.

understand "lapins" as a mistake ("Cute bunnies can make any game better, but having to deal with French as well would drive me crazy.") when player is in Lapsin Plains.

understand "naps" as a mistake ("You need action, here! Maybe nothing too exhausting, but some action nonetheless.") when span pans are touchable.

understand "nepo" as a mistake ("No world chess champion challenger comes by to help you with your current problem. He has much more complex ones to worry about!") when span pans are touchable.

understand "nkob" as a mistake ("[if knob is moot]You already did what you needed with the knob, Step by Step[else]The knob remains Hangin['] Tough. Let's Try it Again, until You Got It[end if].") when player is in Lapsin Plains.

understand "palins" as a mistake ("Michael and Sarah are both funny enough on their own. I really couldn't do them justice in this game.") when player is in Lapsin Plains.

understand "pone" as a mistake ("The message [if span pans are moot]was[else]is[end if] corny, but the door[if span pans are moot] was[else]'s[end if] a piece of cake [if span pans are not moot]once you figure[else]since you figured[end if] what to do with the knob.") when player is in Lapsin Plains.

understand "saplin" as a mistake ("No tre begins to grow. Er, tree.") when player is in Lapsin Plains.

understand "slapin" and "slap in" as a mistake ("No vilence, err, violence, please.") when player is in Lapsin Plains.

understand "thus" as a mistake ("Your inactive word does nothing to the huts[if span pans are in Lapsin Plains]. Perhaps you can do something to the door[else]. But you don't need to do any more, since you can walk in[end if].") when player is in Lapsin Plains.

understand "troy" and "tory" as a mistake ("Apparently, the span pans don't have a name.") when player is in Lapsin Plains and span pans are in Lapsin Plains.

understand "tush" as a mistake ("Oh, behave.") when player is in Lapsin Plains.

chapter Shuttle Hutlets

understand "auth" as a mistake ("Sorry! I'm too busy to cameo in my own game at the moment.") when player is in Shuttle Hutlets.

understand "bury [text]" as a mistake ("Nothing worth burying.") when player has digger and ruby is off-stage.

understand "buts" as a mistake ("You talk yourself out of any idea there is something inside the tubs, and you discourage yourself from believing you have the strength anyway. You are not fooling yourself.") when tubs are in location of player.

understand "dig" and "dig [text]" as a mistake ("[dig-purpose]") when player has digger.

understand "stub" as a mistake ("You tap the tubs lightly with your toe. Then you tap them enough to hurt. Not even a thin crack appears, but your toe turns a bit red. Or feels like it did.") when tubs are in location of player.

understand "sweat [text]" as a mistake ("Don't sweat the extra words. Just sweat.") when waste is touchable.

understand "tawse" as a mistake ("You don't need that sort of weapon.") when waste is in location of player.

understand "utah" as a mistake ("The hut only looks like Utah. However, I bet Adenville is nice. Or it would be, if it existed. Man, I loved those Great Brain books.") when player is in Shuttle Hutlets.

chapter Sclerous Closures

understand "rasche" as a mistake ("Nobody jumps from the Achers['] Chaser Arches to say, trust me, I know what I'm doing.") when player is in Sclerous Closures.

chapter Horned Hedron

understand "part trap" and "part" as a mistake ("The ol['] trap is too wily, and stuck in the north wall, for that. You may want to look for a way to diffuse it.") when player is in Horned Hedron and ol trap is in Horned Hedron.

understand "tarp" as a mistake ("Nothing happens. You wonder if part of the ol['] trap is that an ol['] tarp will fall on you and suffocate you, if you walk in there.") when player is in Horned Hedron and ol trap is in Horned Hedron.

chapter End Den

understand "ned" as a mistake ("That was my pen name in Shuffling Around.") when player is in End Den.

chapter Plasm Lamps

understand "atn" as a mistake ("You've already got the ant's attention. You'll need to take care of it, now.") when player is in Plasm Lamps.

understand "nat" as a mistake ("You don't need to name the ant. It's not a pet.") when player is in Plasm Lamps.

understand "splam" as a mistake ("There's a simpler way to attack the ant.") when player is in Plasm Lamps.

chapter Tenfold Teflon'd Den Loft

understand "nips" as a mistake ("You see red at the thought of voluntarily pricking yourself with pins.") when pins are touchable.

understand "redial" as a mistake ("[if papery yapper is touchable]You can't even dial with the yapper around[else]You need use the dialer meaningfully first[end if].") when player is in Tenfold Teflond Den Loft and bogus-redial is off-stage.

understand "snip" and "snip pins" as a mistake ("You don't have anything with a small enough blade to cut the pins. But that has to be close.") when player is in Tenfold Teflond Den Loft and pins are in Tenfold Teflond Den Loft.

book towers

understand "xray" and "x ray" as a mistake ("You don't have x-ray vision right now.") when xrayvision is false.

understand "cleats" as a mistake ("The castle is run-down and unromantic enough. Changing it to cleats would be even worse.") when mrlp is towers and player is not in Loftier Trefoil.

understand "crust" as a mistake ("It probably needs less crust, not more. The whole curst palace.") when mrlp is towers and player is not in Loftier Trefoil.

chapter Loftier Trefoil

understand "clear it" as a mistake ("The recital article stays in place. You see red, upset the brute-force magic didn't work.") when recital article is touchable.

understand "enters" as a mistake ("You'll need a few exits, here, really.") when Ernest is in location of player.

understand "nerd yo" and "nerdy o" and "yo nerd" as a mistake ("Now, now. Maybe Rodney dishes out insults like that without a shred of self-awareness, but heroes need to do better.") when Rodney is touchable. [O NERDY doesn't work, as it becomes OOPS NERDY.]

understand "new id" as a mistake ("You need to make sure Edwin's new ID is something negative.") when Edwin is touchable.

understand "radly" as a mistake ("Boo! That's too subtle for here. Maybe you could make Daryl look different so he feels less radly about himself.") when Daryl is touchable.

understand "recalm" and "recalm marcel" as a mistake ("Right idea, but it might work better in [if cur-score of oyster > 0]the oyster[else]another area[end if].") when Marcel is touchable.

understand "resent" as a mistake ("But how could you make Ernest [i]feel[r] so he'd resent his position?") when Ernest is touchable.

understand "wander" as a mistake ("A glare from Rodney snaps Andrew back from gazing outside. Perhaps you'll have to change Andrew's beliefs, or something, instead[if cur-score of towers is 1], like you changed [random moot picaro][end if].") when Andrew is touchable.

understand "warden" as a mistake ("Andrew doesn't look like he has the leadership qualities necessary to become the main warden over Rodney.") when Andrew is touchable.

understand "wendi" and "widen" as a mistake ("Now that would be too embarrassing. Maybe you could embarrass him a little, though.") when Edwin is touchable.

chapter Topside Deposit

understand "dopiest" as a mistake ("You sense that the dreads adders [if dreads adders are in Topside Deposit]are[else]were[end if] one of the easier things to deal with, here, but you don't want to overstate it.") when player is in Topside Deposit.

understand "posited" as a mistake ("You formulate a proof that the place you are in does actually exist.") when player is in Topside Deposit.

understand "retoast" and "retoast [text]" as a mistake ("You can just TOAST or EAT a pastry once you have it.") when toaster is touchable.

understand "wist led" and "its lewd" as a mistake ("Editorializing about the Wildest Wilteds won't help.") when mrlp is towers and player is not in Loftier Trefoil.

chapter Scope Copse

understand "bustler" as a mistake ("The butlers are plural, and anyway, they're bustling plenty as-is.") when butlers are touchable.

understand "copes" as a mistake ("You find it easier to cope, here, with the Spec-O-Scope to guide you, but you need to move on.") when player is in Scope Copse.

understand "pecos" as a mistake ("This game ain't a dadgum Western.") when player is in Scope Copse.

understand "ursty" and "ur sty" as a mistake ("You're trying to destroy the yurts, not build them up.") when player is in Scope Copse and yurts are in Scope Copse.

understand "worse" as a mistake ("The brownies don't need to taste any worse.") when player has Brownies.

chapter Outer Route

understand "pairer" as a mistake ("[if gizmo is off-stage]You don't need duplicates of anything here. Besides, [the deviser] looks complex enough. It will probably reject or accept what it needs to[else]The diverse deviser is in no shape to do any more work[end if].") when player is in Outer Route and diverse deviser is reflexed.

chapter Baldest Blasted Saltbed

understand "fluters" as a mistake ("This game has no soundtrack, and if I made one, it wouldn't be very good.") when fluster self rut is in location of player.

chapter Leveraged Everglade

understand "organdies" as a mistake ("The ego-drains remain made of sturdy material.") when organised ego drains are touchable.

understand "retail" and "retails" as a mistake ("The realist tailers have plenty to say about retail shopping, but you don't want to hear it.") when realist tailers are in location of player.

chapter Anemic Cinema

understand "granites" and "granite" as a mistake ("They're already stonewalling you from going west. Whether or not you need to go west, you can't [']til they're gone.") when angriest ingrates are touchable.

understand "ice man" and "iceman" as a mistake ("The iceman cometh, and your life passeth.[paragraph break][uurrgg]") when player is in Anemic Cinema.

understand "inserted" as a mistake ("You see red realizing the resident trendies already inserted themselves here.") when resident trendies are touchable.

understand "tasering" as a mistake ("You don't want to make the ingrates even angrier.") when angriest ingrates are touchable.

chapter Fringe Finger

understand "refing" as a mistake ("You're not sure what sort of ref'ing would work best. Refinancing? Refocusing? Referencing? Refuting? Reformatting? Refrigerating? Refashioning? Whichever, there really doesn't seem to be much to do here.") when player is in Fringe Finger.

understand "rustle" and "rustle strudel" as a mistake ("Wrong type of word, and you're missing a d.") when strudel is reflexive and strudel is touchable.

chapter Unblest Sunbelt

chapter Treading Gradient

understand "dang rite" as a mistake ("Creative, but ineffective, positive colloquialism.") when player is in Treading Gradient.

understand "i mend" as a mistake ("You're more interested in doing the opposite--seeing what's behind.") when denim is in location of player.

understand "parley" as a mistake ("The raves saver/replay player [if saver is reflexive]can be[else]has already been[end if] parleyed into something shinier.") when raves saver is touchable.

understand "swede" as a mistake ("That might make the weeds FROM Scandinavia, but it wouldn't SEND them there.") when weeds are touchable.

chapter shoals aslosh (backdrop)

understand "kale" as a mistake ("'More kale, dear?' / 'Did I ASK for more kale, dear?'[paragraph break]Anyway, once you turned the whole lake into kale, the kale would have no water to survive and not-rot and avoid smelling worse.") when leak lake is touchable.

understand "sweat" and "waste" and "waste ire" as a mistake ("You waste sweat and ire thinking what to do.") when sweatier wait seer is touchable.

chapter Danger Garden

understand "ranged" as a mistake ("The garden does not get any bigger.") when player is in Danger Garden.

chapter Lost Lots

understand "prosties" as a mistake ("Not that sort of game. There's some suggestive stuff, but nothing like that.") when ripostes are in location of player.

understand "reposit" and "reposits" as a mistake ("You can't just push the ripostes aside. There must be a way to change them.") when ripostes are in location of player.

understand "slot" as a mistake ("If you made it, you might fall in the slot and never get out.") when player is in Lost Lots.

understand "tripose" and "triposes" as a mistake ("No organic chemistry, please.") when ripostes are in location of player.

chapter Obscurest Subsector

to say duck-clue:
	now duck-preef is true;
	preef luck node;

understand "clonk due" and "due clonk" and "conk duel" and "cold nuke" and "nuke cold" as a mistake("The luck node can and should be defeated nonviolently.") when luck node is touchable.

understand "delock" as a mistake ("[if Dr Yow is in prison ropins]No, this is the wrong area for pure action[else]Unlocked worked better, here[end if].") when player is in Obscurest Subsector.

understand "dowry" as a mistake ("Dr. Yow is an intellectual. [he-she-c] needs a [if duck is returned]willing pupil[else]breakout[end if], not material things or romance.") when Dr Yow is touchable.

understand "fires" as a mistake ("Fries, fires, it'll still hurt anyone who goes poking at it. Maybe there's a way to make it seem less of a trap?") when Fries Us Fissure is touchable.

understand "goal" as a mistake ("You fantasize briefly about being a sports star instead of a text adventurer[if Dr Yow is in ropins]. But it changes nothing. You look at the poor figure in the gaol[else]. You've done a good job rescuing Dr. Yow, but you still feel far from your main goal[end if].") when player is in Obscurest Subsector.

understand "locked" as a mistake ("[if Dr Yow is in prison ropins]No, the opposite...[else]You don't need to fiddle with the lock now.[end if]") when player is in Obscurest Subsector.

understand "olga" as a mistake ("Even if the goal could become a person, they'd be kind of wooden.") when player is in Obscurest Subsector.

understand "unlocked" as a mistake ("There's nothing here to unlock. [if prison ropins are moot]You did what you needed[else if Obscurest Subsector is visited]Though you've been to the subsector with the prison ropins[else]Maybe someone's imprisoned somewhere[end if][if duck is not midstage]. And besides, the duck doesn't seem cooperative, yet[end if][if duck is not prefigured and prison ropins are not moot]. Still, that's an idea[end if].[duck-clue]") when duck is in location of player and prison ropins is not in location of player.

chapter Salted Deltas

understand "lasted" as a mistake ("The Salted Deltas have already lasted since well before you were born, and that's a verb, anyway[vis-guar].") when player is in Salted Deltas.

understand "slated" as a mistake ("You're not sure why the Salted Deltas could be slated, or how. You're not here for geological research[vis-guar].") when player is in Salted Deltas.

chapter Actionless Coastlines

understand "coatings" as a mistake ("No, [Agnostic] doesn't need to change like THAT.") when Coasting Agnostic is in location of player.

understand "eoliths" as a mistake ("Whoah, this game's pretty retro, but nothing that ancient. Besides, you want a better way for [hostile-guardian] to be.") when lois is touchable or he lot is touchable.

understand "were rid" as a mistake ("No, you can't just yank the red wire out.") when weirder red wire is touchable.

chapter Rawest Waters

understand "earnest" as a mistake ("The shore wants to get physically closer to you now. You can feel it. But that doesn't do any good. You feel like you made progress, though.") when player is in Rawest Waters.

understand "prays" as a mistake ("Too late to be a prayers sprayer.") when player is in Rawest Waters.

chapter Mislit Limits

understand "its near" and "sit near" as a mistake ("The retinas care not for physical proximity. They will just stare.") when nastier stainer retinas are touchable.

understand "occurs" as a mistake ("You need to make something occur.") when succor crocus is touchable.

understand "purine" as a mistake ("You can change the ur-pine without getting too far into organic chemistry.") when ur pine is touchable.

understand "ranties" as a mistake ("Oh, no. Their icy gazes are quite enough.") when nastier stainer retinas are touchable.

understand "repents" as a mistake ("The serpent remains kinda chaotic evil looking, and not just because it can't understand English. You see red at using a verb and not an adjective.") when serpent is touchable.

understand "respent" as a mistake ("You're not sure if the serpent's ever been spent, so you can't quite make it re-spent. You feel you have to be close, though.") when serpent is touchable.

understand "restain" as a mistake ("The retinas haven't stained you yet. You don't want to be stained, much less re-stained. You see red at the thought.") when nastier stainer retinas are touchable.

understand "retain" and "retains" as a mistake ("You want them to STOP retaining you from getting behind them, here.") when nastier stainer retinas are touchable.

understand "stearin" as a mistake ("The retinas are probably full of all kinds of indescribable weird organic compounds. But there may be a practical way to describe them better.") when nastier stainer retinas are touchable.

understand "taserin" as a mistake ("The retinas are more likely to zap you.") when nastier stainer retinas are touchable.

chapter Mesprise Premises

understand "titres" and "titers" as a mistake ("No physical sciences are necessary here.") when player is in Mesprise Premises.

book otters

understand "dialect" as a mistake ("No, a particular accent or odd word won't destroy the Edictal Citadel. Elvira checked off on all that.") when location of player is ominous.

understand "deltaic" as a mistake ("Reorganizing the geography around the Edictal Citadel won't help.") when location of player is ominous.

chapter Minded Midden

understand "dim den" as a mistake ("You remain outside in (relative) light.") when player is in Minded Midden and bleary barley is in Minded Midden.

understand "dim end" and "end dim" as a mistake ("Okay, if you say so...[paragraph break][uurrgg]") when player is in Minded Midden and bleary barley is in Minded Midden.

understand "end u" as a mistake ("No, end *U*![paragraph break][uurrgg]") when player is in Minded Midden and nude dune is in Minded Midden.

understand "id mend" and "mend id" as a mistake ("It's not that easy. Find what to mend.") when player is in Minded Midden and bleary barley is in Minded Midden.

understand "idle" as a mistake ("Ed Riley looks pleased he's pressured you into laziness.") when player is in Minded Midden and Ed Riley is in Minded Midden.

understand "increds" as a mistake ("You marvel at the possible power of the cinders and even see red at the thought of giving them up.") when player has cinders or location of cinders is location of player

[def=deli-rye-otters]
understand "lied" as a mistake ("You can't think of anything to lie about that would sucker Ed Riley. You try to tell him the people who gave him this 'job' lied but realize he doesn't know who you are.") when player is in Minded Midden and Ed Riley is in Minded Midden.

understand "reedy" as a mistake ("No, the adverb.") when player is in Minded Midden and ed riley is in Minded Midden.

understand "yer" as a mistake ("Yup! It's Ed's!") when player is in Minded Midden and ed riley is in Minded Midden.

chapter Disowned Downside

understand "indiscretely" as a mistake ("Yes, yes, I am being pedantic here. But discreet and discrete are different enough.") when t-indiscreetly is touchable and t-indiscreetly is playable.

understand "parsley" as a mistake ("Despite your best efforts, they remain meatheads.") when parleys splayer players are touchable.

understand "slap em" as a mistake ("[if parleys splayer players are in Disowned Downside]Violence is not the answer! Be clever, here[else]The maples are harmless[end if].") when player is in Disowned Downside.

understand "slap me" as a mistake ("That's kind of a silly way to motivate yourself.") when player is in Disowned Downside.

chapter Loop Pool

understand "lees" as a mistake ("The eels would be insulted to be referred to as dregs.") when eels are touchable.

understand "polo" as a mistake ("No time for games! [if eels are moot]Even with the eels rescued/on your side[else if power-back is false]You don't have your powers back, anyway. It's what's IN the water you want to change[else]Even with your powers back[end if].") when player is in Loop Pool

understand "slee" as a mistake ("The eels aren't what needs to be reduced to rubble, here.") when eels are touchable..

chapter Bran Barn

understand "whoever" as a mistake ("You wonder whoever could be saying the vow here. You suspect you are very close and very far at once.") when vow here is in location of player.

chapter Shiner Shrine

understand "green lady" as a mistake ("You remember reading about the Green Lady in the Silver Chair, where she started nice and started acting furiously--no, that's not the word, not quite, it doesn't fit with Legendary. But it must be something like that.") when legendary is touchable.

understand "implys" as a mistake ("You will have to be subtle here, but you'll want to work on actions, instead.") when sly imp is touchable.

understand "rhines" as a mistake ("You don't need a river or two impeding your progress.") when player is in Shiner Shrine.

chapter Lamer Realm/Blest Belts

understand "ape lord" and "apelord" as a mistake ("You [if leopard is reflexed]already changed the leopard[else]can't change what the leopard is, but you need to release it from its captivity[end if].") when player is in Lamer Realm.

understand "b grade" and "bgrade" as a mistake ("The badger [if badger is reflexive]already[else]no longer[end if] feels second-rate, so [if badger is reflexive]you need another way to help it[else]it needs no more help[end if].") when player is in Lamer Realm.

understand "barged" as a mistake ("You don't want the badger to have barged into you. Clothed or not.") when player is in Lamer Realm.

understand "lows" as a mistake ("Actually, you'd like the owls NOT to reach lows like you are. Or not to get there before you can avoid them.") when owls are in location of player.

understand "preload" and "pre-load" and "pre load" as a mistake ("The leopard is plenty powerful as-is, [if leopard is reflexed]and it's already on your side[else]but you need to get it on your side[end if].") when player is in Lamer Realm.

understand "ratsy" as a mistake ("You don't want a rat on your side. Or someone who says rats too much.") when satyr is in location of player.

understand "stary" as a mistake ("What good would the satyr be, staring all the time?") when satyr is in location of player.

understand "trays" as a mistake ("You can't transform something living into something dead. Besides, you don't need something that be trays. (Sorry.)") when satyr is in location of player.

chapter Clarthead Cathedral

understand "sherwin" as a mistake ("No cryptozookeeper appears.") when shrewin whiners are touchable.

chapter Perverse Preserve

understand "penis" as a mistake ("[one of]Huh huh huh, Beavis. That was cool[or]Dammit, Beavis. You like have a game to solve[stopping].") when pines are in location of player or snipe is in location of player.

understand "shorten" as a mistake ("[if thrones are in location of player]Well--not shorten, but break it down...you see red from the effort[else]They're more likely to shorten you with a few stings[end if].") when thrones are in location of player or hornets are in location of player.

understand "slain" and "as nil" as a mistake ("[if nails are in location of player]The nails are already dead as a doornail[else]You're trying to SAVE the animals, actually[end if].") when player is in Perverse Preserve and raptor is moot.

understand "spine" as a mistake ("You don't need to grow a spine. You've gotten this far.") when player is in Perverse Preserve and raptor is moot.

chapter Reclusion Inclosure

understand "coins lure" as a mistake ("[if elmer is moot]You're not after loot right now[else]Elmer and Merle look around greedily for a second[end if].") when player is in Reclusion Inclosure.

understand "cornelius" as a mistake ("You don't know if someone named Cornelius would help or hurt you.") when player is in Reclusion Inclosure.

understand "drobe" as a mistake ("That's pretty much their whole drobe. You're not here to talk fashion, anyway.") when Merle is in location of player.

understand "edisa" and "sadie" as a mistake ("On the one hand, hooray for trying to fix a gender imbalance. On the other hand, do you really want THREE ideas aides annoying and blocking you?") when Elmer is touchable.

understand "nicer soul" as a mistake ("[if elmer is in Reclusion Inclosure]Elmer and Merle are beyond redemption[else]Yes, you are. But you need to be a braver soul and go west[end if].") when player is in Reclusion Inclosure.

understand "rule scion" as a mistake ("That's what you're trying to stop, here[if elmer is in Reclusion Inclosure]. Besides, Elmer and Merle wouldn't trust your word, anyway[end if].") when player is in Reclusion Inclosure.

chapter Rancho Archon Anchor

understand "aliver" as a mistake ("[if player is in Rancho Archon Anchor]For whatever reason, you decide to give Elvira even more power. This time, you don't have the time or guts to reject her phaser. [uurrgg][else]You don't want to risk anything that would make Elvira more powerful.[end if]")

understand "charon" as a mistake ("The Rancho won't change to the river of the dead just like that, but on the other hand, if you wait around, you'll get to see the river of the dead once Elvira takes action.") when player is in Rancho Archon Anchor.

understand "drop it" as a mistake ("For whatever reason, you just decide to give up. Elvira cackles. 'I knew you'd see it my way.' You wind up apologizing on national TV for getting too big for your anagramming britches and accepting a general brainwashing to boot. It's not that bad, only because, well, um, it just isn't. You're thrown in a jail, which can't be anagrammed, but it's for your own good. You're cool with that. [uurrgg]") when player is in Rancho Archon Anchor.

understand "prod it" as a mistake ("You prod curiously at the machinery, and soon, Elvira realizes you don't have anything up your sleeve, and you won't be able to retreat in time. The purple pulper and the rest of her army subdue you easily. [uurrgg]") when player is in Rancho Archon Anchor.

understand "sherpa" as a mistake ("You don't need someone to help you climb. You need help fighting Elvira.") when player is in Rancho Archon Anchor.

book others

chapter Rustic Citrus

understand "boarder" as a mistake ("Rustic Citrus doesn't make for great living quarters.") when player is in Rustic Citrus.

understand "broader" as a mistake ("Rustic Citrus is secluded enough.") when player is in Rustic Citrus.

understand "cruits" as a mistake ("Alas, no recruits named Ric or Stu arrive for you to delegate anything to.") when player is in Rustic Citrus.

understand "deign" and "deigns" as a mistake ("The singed design on the [coin-icon] should make you not just want to deign but DO.") when mrlp is others and curtis-level >= 2.

understand "gapers" as a mistake ("Really, you don't need people all [mami] over changing those pagers into anything else. That's not your style.") when player is in Rustic Citrus and pagers are in Rustic Citrus.

understand "gasper" as a mistake ("Not as healthy as fruit, to be sure!") when player is in Rustic Citrus and pagers are in Rustic Citrus.

understand "miles" as a mistake ("You don't want miles and miles of slime.") when player is in rustic and slime is in rustic.

understand "parse" as a mistake ("You've parsed the spelling of quite a few words so far. Just a bit more, now.") when spear is in location of player.

understand "rapes" and "rape" as a mistake ("[one of]Some things, you can't joke about. So please, don't try that again.[or][cutoff][stopping]") when spear is in location of player.

understand "reaps" as a mistake ("No, not verbs. Well, not here by Curtis.") when spear is in location of player.

understand "rust" as a mistake ("You're trying to make things MORE organic, not less.") when ruts circuits are touchable.

understand "sell" and "sell [text]" as a mistake ("You are paving the way for commerce, not interacting.") when player is in Rustic Citrus or player is in Clangier Clearing.

understand "slump" as a mistake ("Don't get exhausted! This area should be a bit of a break! I hope.") when player is in rustic and lumps are in rustic.

understand "smile" as a mistake ("[if limes are in location of player]You are thrilled to have gotten those limes, yes.[else if slime is in location of player]You smile at the slime. It can't be that hard to figure what to do.[otherwise][reject][run paragraph on][end if]") when player is in rustic and slime is in rustic.

understand "spare" as a mistake ("No, not adjectives. Well, not here by Curtis.") when spear is in location of player.

chapter Scape Space

understand "allo" as a mistake ("Lola says nothing back.") when player has dollar and player is female.

understand "lots" as a mistake ("You only need the one slot.") when player has So Great Storage and lost slot is part of So Great Storage.

understand "reeves" as a mistake ("You don't need to guess Dr. Severe's real last name or have any medieval bailiff escort [him-her] away.") when Dr Severe is touchable.

understand "scion" as a mistake ("Money, or something like it, should not be the guide of you.") when player has s-i or player has coins or player has s-c or player has icons.

understand "sonic" as a mistake ("Maybe if you had more than one [if player has coin]coin[else]icon[end if].") when player has coin or player has icon.

chapter Gates Stage

understand "poring" as a mistake ("You ponder the gropin['] roping for a bit. You decide it isn't as worth thinking about as the Valence Enclave to the north.") when player is in Gates Stage.

understand "saget" as a mistake ("You don't need to be part of Yorpwald's Funniest* Home Videos right now.") when player is in Gates Stage.

chapter Clangier Clearing

understand "an omg" as a mistake ("Lashing out that way leaves you feeling you must be close to the right way to get a mango.") when player is in Clangier Clearing and mango is off-stage.

understand "cigar" as a mistake ("That'd be out of place among fresh fruits. Plus, whether or not Len deserves a cigar, he doesn't deserve to be turned into one.") when player is in Clangier Clearing.

understand "go man" as a mistake ("That's the right idea but the wrong sorts of words.") when player is in Clangier Clearing and mango is off-stage.

understand "lameness" as a mistake ("No need to judge the nameless salesmen. We can't all be heroes.") when player is in Clangier Clearing.

understand "mango" as a mistake ("That's the fruit you need to find. You see red wondering where or how.") when player is in Clangier Clearing and mango is off-stage.

understand "nag mo" as a mistake ("[one of]You get all red faced asking people how to trade for a mango, and asking, and asking[or]That'd just get you red-faced again[stopping].") when player is in Clangier Clearing and mango is off-stage.

understand "spicer" as a mistake ("You don't need to summon someone who deals in spices, or (dated political joke) general falsehoods.") when player is in Clangier Clearing.

chapter Filed Field

understand "fidel" as a mistake ("A thin voice howls 'I fled!'") when player is in Filed Field.

chapter Scape Space

understand "darter" as a mistake ("Art Erd has nowhere to run[if So Great Storage is in Scape Space], and you don't know if you want him taking that So-Great Storage with him[end if].") when player is in Scape Space and greedy-person is Art Erd.

understand "gorean" as a mistake ("This game isn't about that sort of stuff. Not that there's anything wrong with that.") when orange is touchable.

understand "red rat" as a mistake ("Red? Dr. Tera Darter is nowhere NEAR that left-wing. Rat? Okay, she's probably big on government corruption, but--namecalling isn't the way to go, here.") when player is in Scape Space and greedy-person is Dr Tera Darter.

understand "retard" as a mistake ("You can picture people like [greedy-person] calling you, or people [he-she] 'provided financial services to,' that, but two wrongs don't make a right. Besides, if anything, [he-she] was being too clever.") when player is in Scape Space.

book demo dome

chapter Evoc-Cove

understand "neva" and "lol" as a mistake ("Yeah, the novel is pretty unbelievable, but it's not there to be profound.") when player is in Evoc Cove.

chapter Ned's Dens

understand "send" as a mistake ("Maybe in another game, you could do that, if you walked around right. But not this one.") when player is in Neds Dens.

chapter Peek Keep

understand "dali" as a mistake ("Not surreal enough for you?") when spy dial display is touchable.

understand "laid" as a mistake ("The spy dial is already laid out.") when spy dial display is touchable.

understand "singed" as a mistake ("You already saw a singed design when you helped Curtis. Plus, arson is bad.") when Design Deigns is touchable.

chapter Sparse Spares

understand "clasp" as a mistake ("If there were a puzzle for stealing stuff, that'd work. But there isn't.") when player is in Sparse Spares.

understand "spears" as a mistake ("There's nothing you need a weapon to fight against.") when player is in Sparse Spares.

Roiling Mistakes ends here.

---- DOCUMENTATION ----