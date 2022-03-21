Version 1/171011 of Shuffling Mistakes by Andrew Schultz begins here.

[mist.py checks to make sure the unit tests are synced with this]
[malf.py alphabetizes by section]

volume Shuffling Mistakes

definition: a thing (called t) is quickvis:
	if player carries t, yes;
	if t is enclosed by location of player, yes;
	no;

section understand logic

understand "tap [something]" as taping.

understand the command "tap" as something new.

book general

understand "use [text]" as a mistake ("Use is a bit too general for this game's parser to understand. You can SWITCH something, or PUT something IN/ON something, or even ATTACH something to something. You can PUSH a button or OPEN something, as well. Specific items should clue you what to do if you EXAMINE them.")

understand "get a man" as a mistake ("[get-a-man][run paragraph on]")

understand "scan" as a mistake ("[verb-cue].") when Notices Section is unvisited.

understand "scan [text]" as a mistake ("[verb-cue].") when Notices Section is unvisited.

understand "c" as a mistake ("[verb-cue].") when Notices Section is unvisited.

understand "c [text]" as a mistake ("[verb-cue].") when Notices Section is unvisited.

understand "r" as a mistake ("[verb-cue].") when Notices Section is unvisited.

understand "r [text]" as a mistake ("[verb-cue].") when Notices Section is unvisited.

understand "cr" as a mistake ("[verb-cue].") when Notices Section is unvisited.

understand "cr [text]" as a mistake ("[verb-cue].") when Notices Section is unvisited.

understand "rc" as a mistake ("[verb-cue].") when Notices Section is unvisited.

understand "rc [text]" as a mistake ("[verb-cue].") when Notices Section is unvisited.

understand "remove [something] from [something]" as a mistake("To keep things simple for you (and, okay, for my coding efforts,) I recommend TAKE X instead of REMOVE/FROM. REMOVE defaults to carried or worn items, and I'm too lazy to tweak that.")

book Ordeal Loader

understand "laredo" as a mistake ("If you want a Western game situated on the US/Mexico border, this isn't for you.") when mrlp is Ordeal Loader.

chapter Busiest Subsite

to say if-sign-x: say "[if vacate caveat is not examined]. Maybe the sign means something different[end if]"

to say not-a-magnet:
	if player is in Notices Section:
		say "Nothing happens. It'd be better to have someone, not something, to help you[if broad board is examined], as the broad board says[else]--the broad board may have more information[end if]. You see red as you strain to think what or who the nametag should be. It's as if you got it all wrong, but then again, knowing you got it all wrong is a clue, too.[run paragraph on]";
		continue the action;
	else if player is in Rested Desert:
		say "A magnet [if goat is touchable]wouldn't have helped you[else]won't help you[end if] get past the (non-metallic) thickets[if goat is not touchable]. Right idea, though. Wrong item[end if].[run paragraph on]";
		continue the action;
	else if player is in Thickest Thickets:
		say "Magnets don't work on plants. Besides, you wonder if 'a' magnet is cheating a bit.[run paragraph on]";
	else if player is in Busiest Subsite:
		say "Your magenta nametag is on securely enough. Not that you actually like having it on, but you'd get scolded for not having it";
	else:
		say "[bug-report]. You shouldn't have the nametag, so the [b]MAGNET[r] mistake text shouldn't appear";
	if player is not in Busiest Subsite:
		say "[one of][or].[paragraph break]You also wonder if saying 'a magnet' instead of 'magnet' is cheating a bit. It probably is[stopping]"

understand "afos" as a mistake ("You hum 'And I Ran' to yourself, wishing you had somewhere to run, to get away.") when player is in Busiest Subsite.

understand "faso" as a mistake ("There are even further-away places to explore in this game than Burkina Faso.") when player is in Busiest Subsite.

understand "magnet" as a mistake ("[not-a-magnet].") when magenta nametag is touchable.

understand "salt mine" and "saltmine" as a mistake ("Oh, a new job wouldn't be THAT dreary. But what if there is something else?") when the player is in Busiest Subsite.

chapter Rested Desert

understand "deters" as a mistake ("No! You're trying to make progress here.") when player is in Rested Desert.

[def=OR DO door]
understand "rood" as a mistake ("[if OR DO door is in Rested Desert]You already changed the odor, and t[else]T[end if]his game is religion-neutral or tries to be. Plus, a rood wouldn't lead anywhere.") when player is in Rested Desert.

chapter Thickest Thickets

understand "believe" as a mistake ("Yes, but what do you believe you can do or change?") when toga is touchable.

understand "ent" and "ents" as a mistake ("[if sent nets are touchable]While ents are definitely organic, they wouldn't feel quite natural here. Something else, though, maybe. Plus, that's a big thing to summon when you're still getting your powers[else]That's a bit too magical for here and now. The nest is nice enough[end if].") when player is in Thickest Thickets.

understand "erde" as a mistake ("There's enough earth around here, and this game's not in German.") when player is in Thickest Thickets.

understand "gato" as a mistake ("Nice try, but wrong language. [if goat is touchable]The goat already ate[else]Another animal would be more likely to eat[end if] through the thickets.") when player is in Thickest Thickets.

understand "rede" as a mistake ("You probably don't want medieval-style advice. You don't need it. HINT should work better.") when player is in Thickest Thickets.

chapter Notices Section

understand "almond" as a mistake ("'Don't try anything too nutty!' booms Nat Egam.") when player is in Notices Section and gateman is in Notices Section.

understand "angel" as a mistake ("You've got enough practical help. You don't need anything supernatural.") when phial is touchable.

understand "beatnic" as a mistake ("The cabinet deserves a better fate than THAT.") when cabinet is in location of player.

understand "elastin" and "nailset" as a mistake ("That would make the saltine less edible.") when player has saltine.

understand "gat" as a mistake("Hey! Guns are dangerous! It [if shotgun is not off-stage]wasn't[else]won't be[end if] that easy to get one. Besides, changing the tag will break the tagged gadget.") when show hows tag is touchable.

understand "mist" as a mistake ("No, those TMIs on the broad board are useful.") when player is in Notices Section.

understand "noetics" as a mistake ("There's enough information here.") when player is in Notices Section.

understand "stealin" as a mistake ("You're the good guy, here. You [if player has saltine]didn't[else]don't[end if] need to steal.") when salient saltine is touchable.

book stores

chapter Trips Strip

understand "dater" as a mistake ("This is not a romance game.") when player is in Trips Strip and trade tread is in Trips Strip.

understand "despot" as a mistake ("[one of]Summoning Red Bull Burdell would be unwise. Best not try it again.[or]Red Bull Burdell appears this time! It doesn't take long for him to defeat you, because he's ... [wfak]So [']dept.[stopping]") when player is in Trips Strip and posted depots are in Trips Strip.

understand "destro" as a mistake ("It's going to get evil enough even without a high-ranking COBRA officer.") when player is in Trips Strip.

understand "doters" as a mistake ("You don't need people oohing and ahing at your skill.") when player is in Trips Strip.

understand "lost" as a mistake ("No, you need to find your way through individual stores.") when player is in Trips Strip.

understand "oyster" as a mistake ("Nice try, but that's next game![mistake-clue of store y]") when player is in Trips Strip.

understand "presto" as a mistake ("Your magic is not advanced enough to change store p! Well, not this game![mistake-clue of store p]") when player is in Trips Strip.

understand "rated" as a mistake ("The trade tread isn't for commenting on, it's for passage to the metros.") when player is in Trips Strip and trade tread is in Trips Strip.

understand "routes" as a mistake ("Hm, that seems right, but it doesn't work this game![mistake-clue of store u]") when player is in Trips Strip.

understand "strobe" as a mistake ("You're briefly assaulted by the colors of every single colored Starburst and Skittles you remember chewing. [if store b is moot]They weren't as good as the sorbet you got from Store B[else]You suspect Store B may have better refreshment to add[end if].") when player is in Trips Strip.

understand "tories" as a mistake ("I don't think they would help Yorpwald. Maybe it would help our world fractionally if they left, but I don't want to get too far into politics, here.") when player is in Trips Strip.

understand "towers" as a mistake ("That should work--but it doesn't! Maybe the towers would be too big to tackle in the game in a series, anyway.[mistake-clue of store w]") when player is in Trips Strip.

understand "troves" as a mistake ("Nice try, but that's next game! You do not need riches to beat Red Bull Burdell.[mistake-clue of store v]") when player is in Trips Strip.

book store f

understand "fire [something] at [something]" as a mistake ("You can either FIRE the gun, or you can SHOOT the whatever you want.") when player has shotgun.

understand "shoot [something] with [something]" and "shoot [something] at [something]" as a mistake ("You can either FIRE the gun, or you can SHOOT the whatever you want. No need for a second noun.") when player has shotgun.

chapter random forests / Softer Forest / Rest of Forest

understand "sate" as a mistake ("There's nothing around you have to sate, thankfully.") when teas is touchable.

understand "seat" as a mistake ("You need the opposite of a seat, here. But at the same time, you're also very close.") when teas is touchable.

understand "tase" as a mistake ("This game is nonviolent--well, except for a few puns.") when teas is touchable.

understand "wets" as a mistake ("Getting lost in a swamp would be even worse than getting lost in a forest.") when stew is touchable.

chapter Self-ID Fields

understand "file" as a mistake ("It looks like you can just cut in line. No need to stand.") when player is in Self ID Fields.

understand "leif" and "lief" as a mistake ("It is too late to help the line of no life by showing love.") when player is in Self ID Fields.

understand "lien" as a mistake ("If they owe something, that's their business. It's too late to change that now.") when player is in Self ID Fields.

understand "list" as a mistake ("There's a list inside the slit, so that's not what it could become.") when slit is touchable.

understand "nile" as a mistake ("Wrong river for the underworld.") when player is in Self ID Fields.

understand "olefin" as a mistake ("Organic chemistry involves shuffling things around a lot, too, but ... the line of no life is not organic.") when player is in Self ID Fields.

understand "scores" as a mistake ("Yes, there are scores and scores in the line of no life.") when player is in Self ID Fields.

understand "scorse" as a mistake ("You can't trade with the dead.") when player is in Self ID Fields.

chapter Flesh Shelf

to say preef-silv:
	preef silver;

understand "amps" as a mistake ("You are trying to save a magic world, not start a garage band. Besides, there's too much noise [if store m is in Trips Strip]behind store M[else]in the Metros[end if] anyway.") when Spam is touchable or maps are touchable.

understand "bared" as a mistake ("It's kind of cold a lot of places here. Keep your clothes on.") when player has beard or bread is touchable.

understand "debar" as a mistake ("If there are any lawyers here, they've already been debarred.") when player has beard or bread is touchable.

understand "grin" as a mistake ("You [if canister is broken]smirk at the grinder you trashed[else]smile confidently. You'll figure how to use the grinder[end if].") when player is in Flesh Shelf.

understand "helf" and "helfs" as a mistake ("While you're sort of in a far side, nothing flies by to ignore you because you only said 'helf' and not 'help.'") when player is in Flesh Shelf.

understand "inks" as a mistake ("The skin sink bleeds no color.") when player is in Flesh Shelf.

understand "kin" and "kins" as a mistake ("Whether you're hoping to see a deceased relative or send a relative you really, really dislike down here, or maybe even show your family what you can do, that's not within your powers .") when player is in Flesh Shelf.

understand "silver" as a mistake ("The livers pulse for a moment, but ... nothing happens. Perhaps they have another use, first.[paragraph break][preef-silv]") when livers are touchable.

understand "steam" as a mistake ("[if canister is broken]You've already done enough with the meats[else]Very good try. But you need to change the meats into something else entirely. Something you can handle and use. Plus, too cold for steam[end if].") when player is in Flesh Shelf.

chapter Gnarliest Triangles

understand "alerting" and "alertings" as a mistake ("There's nobody to alert here.") when player is in Gnarliest Triangles.

understand "altering" and "alterings" as a mistake ("No alterings or reslating of the scenery is necessary or even desirable here. It's organized so well.") when player is in Gnarliest Triangles.

understand "enos" as a mistake ("A certain deputy sheriff from Hazzard County would be more than willing to help, but he belongs somewhere much nicer than here.") when player has nose or ones are touchable.

understand "eon" and "eons" as a mistake ("No, you can't afford to wait that long.") when player has nose or ones are touchable.

understand "gnu" as a mistake ("Shotgun: gnu? Tosh!") when player has shotgun.

understand "gunshot" as a mistake ("[if noughts are touchable]You need something more tangible than that. Something that could make a gunshot, perhaps[else]You need to SHOOT the gun[end if][if shotgun is touchable and silver is off-stage], but you don't have a bullet yet[else if shotgun is touchable and player has silver], but you need to load it first[end if].") when noughts are touchable or shotgun is touchable.

understand "integral" and "integrals" as a mistake ("I think this game is hard enough without bringing Calculus into it.") when player is in Gnarliest Triangles.

understand "relating" as a mistake("This isn't really a game about emotional connections.") when player is in Gnarliest Triangles.

understand "reslating" as a mistake("While you have all the time in the world, there's no sense deliberately putting things off.") when player is in Gnarliest Triangles.

understand "tanglier" as a mistake ("Things are mixed up enough!") when player is in Gnarliest Triangles.

understand "teraglin" and "teraglins" as a mistake ("But where would the fish go?") when player is in Gnarliest Triangles.

understand "tone" and "tones" as a mistake ("You aren't sure you need a booming voice telling you what you can EXAMINE.") when player is in Gnarliest Triangles.

chapter Emptiness Sepiments

understand "cliesh" and "cleish" as a mistake ("You'd need exact spelling to turn the liches into salamanders. But really, you can make them something more useful, instead.") when liches are touchable.

understand "padres" as a mistake ("Bringing holy men down here would probably kill them.") when player is in Emptiness Sepiments and red asp is not moot.

understand "parsed" as a mistake ("You can just read the [if drapes are touchable]drapes[else]spread[end if] instead. The messages here aren't cryptic enough to be parsed.") when player is in Emptiness Sepiments and red asp is not moot.

understand "rasped" as a mistake ("The [d-s] a raspy noise, but you probably need to think up something more concrete. Not, like, cement concrete.") when player is in Emptiness Sepiments and red asp is not moot.

understand "spader" as a mistake ("James Spader is pretty cool, but he can't help with supernatural stuff. Okay, maybe he could, but I couldn't afford the appearance fee.") when player is in Emptiness Sepiments and red asp is not moot.

understand "spared" as a mistake ("That is too passive, to ask to be spared.") when player is in Emptiness Sepiments and red asp is not moot.

chapter Ghouls' Slough

understand "cluer" as a mistake ("[if player is in Ghouls Slough]This place is too stark to offer clues--well, maybe it'd offer WRONG clues[else]Hmm. Well, if you were able to throw something in the ulcer, maybe it would wedge in there. Something that would disagree with the thing[end if].") when cruel ulcer is touchable or player is in Ghouls Slough.

understand "gob" as a mistake("The bog expands into a big ol['] gob and sucks you down. Congratulations, there aren't many ways to die in this game, but you found one. At least you didn't have to suffer through any melodrama from the Bluth family as you died.[paragraph break]Oh, and you can undo this, too.[end-it]") when player is in Ghouls Slough.

understand "god" as a mistake ("You want to tempt the supernatural in somewhere this hellish? Phew.") when player is in Ghouls Slough.

understand "lough" and "loughs" as a mistake("That would make things less intimidating and ugly, but you still wouldn't know where to go, and you might end up in the middle of the lake or lakes you made, anyway.") when player is in Ghouls Slough.

understand "lucre" as a mistake ("[if player is in Ghouls Slough]If there were any treasure here, it'd probably do something terrible to you once you took it[else]Ugg. You're not sure what kind of lucre you need, but maybe something that hasn't been in the night thing. Even something the night thing was sitting on[end if].") when cruel ulcer is touchable or player is in Ghouls Slough.

understand "ulcer" as a mistake ("Giving yourself or the cruel ones an ulcer would be pointless.") when player is in Ghouls Slough.

chapter Frost Forts

understand "steel" as a mistake ("You'd be crushed if the sleet turned to steel.") when player is in Frost Forts

understand "unpile" as a mistake ("They'd be much less dangerous left in a pile. Maybe you have something that can do that!") when player is in Frost Forts and wolves are in Frost Forts.

book store i

understand "dumdum" and "dum" and "dum dum" as a mistake ("The mud is stuck that way. You don't need to change it[if moor is visited]. Besides, you already figured how to get out[end if].") when in-i-box.

chapter Trap Part

understand "a lid" as a mistake ("[if centrifuge-stopped is true]You don't need to deal with the dial, now[else]Changing the dial would leave you stuck[end if].") when player is in Trap Part.

understand "turn [text]" as a mistake ("[if player is in Trap Part and centrifuge-stopped is false]You can probably TURN the dial to a number, e.g. 99[else]You can probably just SWITCH something with two text settings[end if].").

chapter the nick

understand "thicken" as a mistake ("[if player is in kitchen]This would be the place, but you're not hungry for anything TOO fatty right now[else]You might rather thin-nen to slip through the bars, but you can't[end if].") when player is in nick or player is in kitchen.

chapter kitchen

understand "cato" as a mistake ("You don't need to know your classics, here.") when taco is enclosed by player or player carries coat.

understand "keats" as a mistake ("This is wordplay, not poetry. [if skate is touchable]But the skate does glow red[else]The steak is what it needs to be[end if].") when skate is touchable or steak is touchable.

understand "limes" as a mistake ("I think you have the wrong food group. Besides, it wouldn't be nice to wipe the spearman's smile off.") when spear is touchable.

understand "littoral" as a mistake ("How frustrating! A shoreline doesn't appear. You're still stuck in here, but [if r2 is prefigured or moor is visited]you know[else]maybe[end if] there's another way out.") when player is in kitchen and tortilla is not moot.

understand "pears" as a mistake ("I think you have the wrong food group. The spearman is cheesy. Plus, he wouldn't be a spearman without his spear.") when spear is touchable.

understand "sauce" as a mistake ("Close, but you need the whole name of the sauce.") when cathouse is touchable.

understand "stake" as a mistake ("A stake would have no use here. So that might be a miskate. Err...") when steak is touchable or skate is touchable.

understand "takes" as a mistake ("You do a take, then a double take, at how odd this all is.") when steak is touchable or skate is touchable.

understand "teaks" as a mistake ("Hm. An indoor forest. [if Sacred Cedars is unvisited]That would be neat to see. But this is a kitchen[else]But you've already seen one[end if].") when steak is touchable or skate is touchable.

chapter ROOM

understand "hoes" as a mistake ("One, there's more than one [if hoses are touchable]hose[else]shoe[end if]. Two, this isn't that sort of game. Innuendo only, if you please!") when hoses are moot or hoses are touchable.

understand "shoe" as a mistake ("You need more than one shoe.") when hoses are touchable.

chapter Stiller Trellis

understand "tillers" as a mistake ("You aren't going to sea in this game.") when player is in Stiller Trellis and archings are not in Stiller Trellis.

chapter MOOR

[def=blackdoor]
understand "black rood" and "rood" and "blackrood" as a mistake ("Hm, no, keep religion out of it[if black door is touchable]--you have what you need[end if].") when roadblock is touchable or black door is touchable.

understand "emir" as a mistake ("You're not looking for a leader, and they wouldn't come somewhere this cheerless, anyway.") when player is in moor

understand "mope" as a mistake ("[if woeful pat is touchable]Woeful Pat can't decide if you're mocking him or trying to outdo him. But he is sure you're not listening carefully enough to his poem, so he coughs briefly to get your attention.[else if smilies are touchable]You try, but the smilies on the poem prevent you.[else if poem is touchable]You mope, but it doesn't change the poem. Or even give you an idea for one.[else]You mope, but you imagine no poem.[end if]") when woeful pat is touchable or woeful pat is moot.

understand "nepal" as a mistake ("Whoah! Teleporting there would be too cold even with that coat on. Plus, you have no mountain climbing gear.") when plane-or-panel

understand "otohs" as a mistake ("You start fruitlessly double- and triple- thinking whether you should change [if shoot button is touchable]back to [end if]the hoots button.") when shoot button is touchable or hoots button is touchable.

understand "peom" as a mistake ("Nigel Molesworth salutes your spelling technique, if not your tendency to play weedy wet text adventures.") when woeful pat is touchable or poem is touchable.

understand "reest" as a mistake ("You are noisily uncooperative for a minute. With what, I don't know. But you are.") when player is in moor and panel is part of silo.

understand "reset" and "reset button" as a mistake ("[reset-goof].") when player is in moor and panel is part of silo.

understand "rifle" as a mistake ("Shooting things up is not the answer.") when got-flier.

understand "similes" as a mistake ("[if smilies are touchable]Adding similes would mean the limerick wouldn't scan. They'd be more forced than the smilies. Though forced smilies can be a powerful weapon. Hmm.[else if missile is touchable]You can't create something abstract from something concrete. Or plutonium. Or whatever that missile's made of.[else][reject]") when smilies are touchable or missile is touchable.

understand "sooth" as a mistake ("Close...what you need to do will sooth, in a bit.") when shoot button is touchable or hoots button is touchable.

understand "stere" as a mistake ("Units of measurements are abstract. We need something concrete.") when player is in moor and panel is part of silo.

understand "tap" and "tap [text]" as a mistake ("'Ah! You are TAPping your feet to my anapest beat!'[paragraph break](TAP is not a standard verb. PUSH may work better, but Pat will be gone by then.)") when woeful pat is touchable.

understand "terse" as a mistake ("[if trees button is touchable]All five wrong[else]Already good[end if].") when player is in moor and panel is part of silo.

understand "trade" and "trade [text]" as a mistake ("Instead of trading, use GIVE X to Y.");

understand "yah" as a mistake ("[if peasant is touchable]It's not nice to make fun of the peasant for having hay he doesn't want[else]You're glad you've got the hay, but you're not excited, and you can't fake it[end if].") when hay is touchable.

chapter Sacred Cedars

understand "cadres" as a mistake ("You must do this on your own.") when player is in Sacred Cedars.

understand "ecards" as a mistake ("Even if those were physical things, they'd be--well, less than religious. You don't need to change the cedars.") when player is in Sacred Cedars.

understand "lois" as a mistake ("[what-to-ask-lois].") when cedars is visited

understand "potus" as a mistake ("This is hopefully an apolitical game, and I don't even want to get into whether the current POTUS would help or hurt in this situation, or whether they even belong in such a holy place.") when player is in Sacred Cedars.

understand "pray" as a mistake ("[if player is in sacred cedars]It's been so long, you only mouth a 'Yarp!'[else]Things aren't THAT bad.[end if]")

understand "serve" as a mistake ("You must serve by going forth on your mission of warlikeness and love.") when player is in Sacred Cedars.

understand "sever" as a mistake ("Violence or vandalism in such a holy place? For shame.") when player is in Sacred Cedars.

book store m

understand "bates" as a mistake ("You don't need to deal with a knife-wielding psycho [if player is in Bassy Abyss]along with the beats[else if player is in The Ol Hotel or player is in Undesired Underside]so near a hotel, which is close enough to a motel[else]on top of all this[end if].") when location of player is noisy or location of player is abyss.

understand "baste" and "baste beats" and "baste beast" as a mistake ("I'm sorry, Mario (or Moira,) but the kitchen is in another castle. I mean, store.") when beats are touchable or beast is touchable.

chapter Undesired Underside

understand "grained" as a mistake ("Good try, but we're looking for a noun. With an extra A.") when player is in Undesired Underside and a reading is in Undesired Underside.

[def=nerd door w]
understand "odor" and "rood" as a mistake ("That door's reinforced. [if Esoteric Coteries is visited]The nerds[else]Whoever's behind there[end if] made sure it was protected against all sorts of crazy things.") when player is in Undesired Underside.

understand "refind" as a mistake ("Whether you're trying to act refinEd or to find something again, the friend finder remains unmoved.") when player is in Undesired Underside.

understand "resign" and "resigns" as a mistake ("[if esoteric coteries are visited]The ingress already did. You got by[else]Reverse psychology won't work on the ingress, here[end if].") when player is in Undesired Underside.

understand "senors" and "senor" as a mistake ("The senors you [want-wanted] are behind the door.") when player is in Undesired Underside.

understand "singers" as a mistake ("The beats would drown the singers out.") when player is in Undesired Underside.

understand "snores" and "snore" as a mistake ("[if esoteric coteries is visited]No need to put the sensor to sleep now you got what you want[else]Any noise would be better than the beats, but without the sensor, you're probably not getting by the door[end if].") when player is in Undesired Underside.

chapter Roarings Garrison

understand "isonome" as a mistake ("The noisome Moonies pretend to be all about nature, but as for actually understanding science? Pfft.") when player is in Roarings Garrison.

understand "smitten" as a mistake ("No matter how hard you try to convince yourself they are lovely, you're not smitten with them. They're just ugly. But they [if cafe-climbed is true]stuck really well on the cafe face[else]could stick really well on the right surface[end if].") when player has Velcro.

understand "stent" as a mistake ("Medical procedures aren't necessary here. The noise is too distracting anyway.") when player is in Roarings Garrison.

understand "tang" and "tangs" as a mistake ("How the angst gnats taste doesn't matter.") when emitter is angstgnatted.

chapter Obtains Boastin' Bastion

understand "opes" as a mistake ("You feel no [']ope, and nothing opens up.") when poses posse is touchable.

understand "peso" and "pesos" as a mistake ("The poses posse doesn't need or want a handout.") when poses posse is touchable.

understand "spose" as a mistake ("Trying to s'pose might irk the poses posse, but not enough for them to leave. You need a more serious annoyance.") when poses posse is touchable.

chapter Fo' Real Florae

understand "eosin" as a mistake ("You need the bag, not a dying powder.") when player has noise bag.

understand "gab" as a mistake ("That's not a powerful enough noise to fight the beats.") when player has noise bag.

understand "loafer" as a mistake ("You're un-magically being a loafer, with ideas like that.") when player is in Fo Real Florae.

understand "recount" as a mistake ("The faeries aren't interested in what you've done so far, only what you can do.") when player is in Fo Real Florae.

understand "trounce" and "trounce counter" as a mistake ("The faeries have very magic and very demoralizing anti-vandalism spells.") when player is in Fo Real Florae.

chapter tramline terminal

to say pig-or-opening: say "[if neon pig is touchable]stupid pig[else]opening you made[end if]"

understand "asp" and "asps" as a mistake ("That's just what you need, a snake chasing you with everything else going on.") when player is in Elm Train Terminal.

understand "gip" as a mistake ("Yeah, whoever bought it probably did get gipped, but that doesn't help get rid of it.") when player is in Elm Train Terminal and neon pig is in Elm Train Terminal.

understand "lair" and "lairs" as a mistake ("That might work, if the rail did not lead to a lair already.") when player is enclosed by terminal.

understand "liar" and "liars" as a mistake ("The number of liars the rails would create would be shocking.") when player is enclosed by terminal.

understand "lira" as a mistake ("But you're nowhere near Turkey or Lebanon or Syria. Or Italy or Israel, which don't use lira any more anyway. Plus, you don't need money.") when player is enclosed by terminal.

understand "none" as a mistake ("Bummer! You'd think that worked to get rid of the pig, but that's probably too abstract a noun. Probably have to deal with the whole neon pig.") when player is in Elm Train Terminal and neon pig is in Elm Train Terminal.

understand "pass" as a mistake ("You take a pass on etiquette advice. You need results right now!") when player is in Elm Train Terminal.

understand "rat" as a mistake ("No, you don't need a rat chasing you around.") when player is enclosed by Elm Train Terminal.

understand "sap" and "saps" as a mistake ("The PSA is sappy, but it's not literally sappy. And sticky stuff won't get you up the wall.") when player is in Elm Train Terminal.

understand "spa" and "spas" as a mistake ("You haven't earned a break yet.") when player is in Elm Train Terminal.

understand "tar" as a mistake ("[if cafe-climbed is false]That'd be neat, make the wall sticky so you could climb and deal with that [pig-or-opening]...but you might get stuck to it, too. Need something clingy but less gooey[else]No need. You made it above the cafe face with the velcro[end if].") when cafe face is touchable.

chapter Esoteric Coteries

[def=nerd door e]
understand "odor" and "rood" as a mistake ("It would stink to be you if you did that. The nerds outnumber you and would crucify you.") when player is in Esoteric Coteries.

understand "up til" and "uptil" as a mistake ("The [tulip] is useful for providing light for all-night sessions of playing great text adventure games or whatever, but it can't give you the energy to stay awake.") when lit up tulip is touchable.

chapter Bassy Abyss

understand "reins" as a mistake ("Horsing around like that won't hold back the [if beast is touchable]beast[else]beats[end if]. You need to get a grip another way, but you're on the right track.") when player is in Bassy Abyss.

understand "rinse" as a mistake ("[if siren is touchable]No water source. You can do better than short-circuiting the siren with water, though[else]Time for that after you get your hands dirty and slay the final enemy, here[end if].") when player is in Bassy Abyss.

understand "risen" as a mistake ("You don't need [if siren is touchable]the siren's volume or [end if][if beast is touchable]the beast's power [else]the beats['] volume [end if]to have risen. Oh, no.") when player is in Bassy Abyss.

book store r

chapter astral altars

understand "lites" as a mistake ("Light isn't the problem here. It's not having anywhere to go.") when player is in Astral Altars

understand "slite" as a mistake ("That's bad spelling, and it won't shrink your problems.") when player is in Astral Altars.

chapter Leis Isle

understand "download" as a mistake ("[if woodland-revealed is false]The woodland appears to glitch in and out like a loaded JPEG. It doesn't seem fully real[woodrev][else]You wait for the woodland to download fully, but it doesn't. Well, maybe that's what you get for playing a text adventure[end if][if l2 are not in Leis Isle]. But then, since the leis were fake, you shouldn't be surprised the woodland is, too[end if].") when player is in Leis Isle.

understand "lies" and "lie" as a mistake ("You reflect on how insidious it was to stick you here in a false paradise.") when player is in Leis Isle and l2 are moot.

chapter Rived Drive

understand "diver" as a mistake ("But you just got by a lot of water. No need to go back in.") when player is in Rived Drive.

understand "loot" as a mistake ("You don't have time for treasure with Red Bull Burdell waiting.") when player is in Rived Drive and tool shed is in Rived Drive.

understand "pores" as a mistake ("[if ropes are touchable]No, you had it[else]Almost. But you don't need to create holes[end if].") when player is in Rived Drive.

understand "poser" as a mistake ("[if ropes are touchable]You mutter a small epithet at where Red Bull Burdell could be. No, he's not around, but he must be near[else]You wonder if YOU are the poser, for not being able to figure what to do[end if].") when player is in Rived Drive.

understand "prigs" as a mistake ("Grumbling about prigs, or showing those prigs, won't help now. You should probably [if grips are touchable]use the grips to climb[else]make the sprig into something useful[end if] instead.") when grips are touchable or sprig is touchable.

understand "prose" as a mistake ("There's not much of that left in this game, and more of it won't help you up the [p-s][if ropes are touchable]. The ropes will[else]. The spore can be something sturdier. You see red wondering what[end if].") when player is in Rived Drive.

understand "repos" as a mistake ("You resolve to organize your programming code better once this adventure is over.") when player is in Rived Drive.

understand "verdi" as a mistake ("You don't need a musical score for this adventure.") when player is in Rived Drive.

chapter Potshot Hotspot

understand "achin" as a mistake ("You don't have the ability to dish out an achin['][if china is not moot], but you see red from wanting to do so[end if].") when player is in Potshot Hotspot and chain links are in Potshot Hotspot.

understand "brb" as a mistake ("You don't know him that well. No riffing on his initials!") when player is in Potshot Hotspot and red bull burdell is in Potshot Hotspot.

understand "ether" as a mistake ("They're not bad people. But even bad people don't deserve to vanish like that! [if kilns are touchable]Maybe they can get a purpose or become able to use those kilns[else]Give them something constructive to do[end if].") when player is in Potshot Hotspot and protest is in Potshot Hotspot.

understand "i rot" as a mistake ("Don't give up! Perhaps there are only four or fewer rioters with their heart really in it.") when player is in Potshot Hotspot and riot is in Potshot Hotspot.

understand "lacy" as a mistake ("No, the clay is a clue to what the protest really wants to do.") when player is in Potshot Hotspot and protest is in Potshot Hotspot.

understand "morans" and "moran" as a mistake ("A long-haired fellow wearing a St. Louis Cardinals t-shirt and an American flag bandana appears, holds up a sign saying GET A BRAIN, and vanishes. Whoah! That was random!") when player is in Potshot Hotspot and ransom manors are in Potshot Hotspot.

understand "retest" as a mistake ("Oh, wow! Do you really want to play through again? I'm flattered!") when player is in Potshot Hotspot and Red Bull Burdell is moot.

understand "roister" as a mistake ("That's what's causing the riot, and it's up to you to quiet the rioters--well, the riot.") when protest is touchable.

understand "romans" as a mistake ("It's a pretty ritzy area. It doesn't need sanitation, medicine, education, wine, public order, irrigation, roads, a fresh water system, or public health.") when player is in Potshot Hotspot and ransom manors are in Potshot Hotspot.

understand "slink" as a mistake ("[if red bull burdell is touchable]You couldn't slink behind the kilns even if they were here[else if red bull burdell is moot]Why slink? No one is blocking or watching you any more[else]Too many people are watching for you to slink away[end if].") when player is in Potshot Hotspot and links are not off-stage.

understand "spotter" as a mistake ("No, you see [']em, you just need a better way to disperse [']em.") when player is in Potshot Hotspot and potters are not moot.

understand "tester" as a mistake ("Your tester, Red Bull Burdell, is vanquished. Let's keep it that way.[paragraph break]On the other hand, if you're volunteering to test my other games, I could always use the help.") when player is in Potshot Hotspot and Red Bull Burdell is moot.

chapter Means Manse

understand "amen" and "name" as a mistake ("I'm going to be pedantic here and force you to use the plural, but yeah, you've got the right idea.") when player is in Means Manse.

understand "blamer" as a mistake ("No, we know who's to blame. He's done with. Time to move on.") when player is in Means Manse.

understand "mensa" as a mistake ("No, you couldn't put up with a MENSA meeting just now. Perhaps they would explain how they would've done things quicker, or how your journey was not particularly relevant or character-developing or literary enough. Sheesh.[paragraph break]Even if they wouldn't, well, the Means Manse is for you and you alone. You earned it.") when player is in Means Manse.

understand "sex it" as a mistake ("[if player is not in means manse]Quit screwing around and focus on yourself. NO, not like THAT. Geez[else]You're not even up for THAT, now. You just want to BE[end if].")

volume unsorted

to say mistake-clue of (my-sto - a sto):
	say "[paragraph break]";
	preef my-sto;
	say "[run paragraph on]";

Shuffling Mistakes ends here.

---- DOCUMENTATION ----