Version 1/171011 of Shuffling Mistakes by Andrew Schultz begins here.

volume Shuffling Mistakes

definition: a thing (called t) is quickvis:
	if player carries t, yes;
	if t is in location of player, yes;
	no;

book general

understand "use [text]" as a mistake ("Use is a bit too general for this game's parser to understand. You can SWITCH something, or PUT something IN/ON something, or even ATTACH something to something. You can PUSH a button or OPEN something, as well. Specific items should clue you what to do if you EXAMINE them.")

understand "magnet" and "a magnet" as a mistake ("[blurby][line break]") when player wears nametag.

understand "get a man" as a mistake ("[get-a-man][run paragraph on]")

understand "scan" as a mistake ("[verb-cue].") when notices section is unvisited.

understand "scan [text]" as a mistake ("[verb-cue].") when notices section is unvisited.

understand "c" as a mistake ("[verb-cue].") when notices section is unvisited.

understand "c [text]" as a mistake ("[verb-cue].") when notices section is unvisited.

understand "r" as a mistake ("[verb-cue].") when notices section is unvisited.

understand "r [text]" as a mistake ("[verb-cue].") when notices section is unvisited.

understand "cr" as a mistake ("[verb-cue].") when notices section is unvisited.

understand "cr [text]" as a mistake ("[verb-cue].") when notices section is unvisited.

understand "rc" as a mistake ("[verb-cue].") when notices section is unvisited.

understand "rc [text]" as a mistake ("[verb-cue].") when notices section is unvisited.

understand "remove [something] from [something]" as a mistake("To keep things simple, I recommend TAKE as a synonym. REMOVE is also okay, but it defaults to carried or worn items, and I know no way around that.")

book intro

chapter busiest subsite

understand "salt mine" and "saltmine" as a mistake ("Oh, a new job wouldn't be THAT dreary. But what if there is something else?") when the player is in Busiest Subsite.

understand "no entry" as a mistake ("[if player is in subsite]Hm, interesting. You wonder if anything is REALLY stopping you from entering.[else]You solved that puzzle already. Onward![end if]")

understand "try" as a mistake ("[if player is in subsite]You're sure the lecture to the east will be about trying versus doing. Ugh[else]That's more sensible than the five alternatives, but it's not concrete enough[end if].")

to say if-sign-x:
	say "[if above-sign is not examined]. Maybe the sign means something different[end if]"

chapter dry yard

understand "dray" as a mistake ("You don't have enough possessions to need a cart. You probably need somewhere to go, instead.") when player is in Dry Yard.

[def=yard-door]
understand "rood" as a mistake ("[if yard-door is in dry yard]You already changed the odor, and t[else]T[end if]his game is religion-neutral or tries to be. Plus, a rood wouldn't lead anywhere.") when player is in dry yard.

chapter thickest thickets

understand "sandler" as a mistake ("I award you zero points for that anagramming try, and may God have mercy on your soul[if darn-slan is false]. Okay, actually, you're close to one point[else] for trying to sneak another point[end if].") when player is in Thickest Thickets.

understand "landers" as a mistake ("There will be better hints than a manners advice column once you move on[if darn-slan is false], though the darnels make you see red for a bit[end if].") when player is in Thickest Thickets.

understand "believe" as a mistake ("Yes, but what do you believe you can do or change?") when toga is quickvis.

understand "gato" as a mistake ("Nice try, but wrong language. Another animal would be more likely to eat through the thickets.") when player is in thickets.

chapter notices section

understand "almond" as a mistake ("'Don't try anything too nutty!' booms Nat Egam.") when player is in notices section and gateman is in notices section.

understand "mist" as a mistake ("No, those TMIs on the broad board are useful.") when player is in notices section.

understand "bactine" as a mistake ("The cabinet bit you, but there was no lasting damage.") when cabinet is quickvis and cabinet-bit-me is true.

understand "angel" as a mistake ("You've got enough practical help. You don't need anything supernatural.") when phial is visible.

understand "beatnic" as a mistake ("The cabinet deserves a better fate than THAT.") when cabinet is in location of player.

understand "gat" as a mistake("Hey! Guns are dangerous! It [if shotgun is not off-stage]wasn't[else]won't be[end if] that easy to get one. Besides, changing the tag will break the tagged gadget.") when show hows tag is visible.

understand "elastin" and "nailset" as a mistake ("That would make the saltine less edible.") when player has saltine.

book stores

chapter trips strip

understand "lost" as a mistake ("No, you need to find your way through individual stores.") when player is in strip.

understand "strobe" as a mistake ("You're briefly assaulted by the colors of every single colored Starburst and Skittles you remember chewing. You suspect Store B may have better refreshment to add.")

understand "presto" as a mistake ("Your magic is not advanced enough to change store p! Well, not this game![fake-clue of store p]") when player is in trips strip.

understand "routes" as a mistake ("Hm, that seems right, but it doesn't work this game![fake-clue of store u]") when player is in trips strip.

understand "troves" as a mistake ("Nice try, but that's next game! You do not need riches to beat Red Bull Burdell.[fake-clue of store v]") when player is in trips strip.

understand "towers" as a mistake ("That should work--but it doesn't! Maybe the towers would be too big to tackle in the game in a series, anyway.[fake-clue of store w]") when player is in trips strip.

understand "oyster" as a mistake ("Nice try, but that's next game![fake-clue of store y]") when player is in trips strip.

understand "destro" as a mistake ("It's going to get evil enough even without a high-ranking COBRA officer.") when player is in Trips Strip.

understand "doters" as a mistake ("You don't need people oohing and ahing at your skill.") when player is in Trips Strip.

understand "steam" as a mistake ("[if canister is broken]You've already done enough with the meats[else]Very good try. But you need to change the meats into something else entirely. Something you can handle and use. Plus, too cold for steam[end if].") when player is in Flesh Shelf.

book store f

understand "fire [something] at [something]" as a mistake ("You can either FIRE the gun, or you can SHOOT the whatever you want.") when player has shotgun

understand "shoot [something] with [something]" as a mistake ("You can either FIRE the gun, or you can SHOOT the whatever you want. No need for a second noun.") when player has shotgun

chapter random forests

understand "seat" as a mistake ("You need the opposite of a seat, here. But at the same time, you're also very close.") when teas is visible.

understand "sate" as a mistake ("There's nothing around you have to sate, thankfully.") when teas is visible.

chapter self-id fields

understand "nile" as a mistake ("Wrong river for the underworld.") when player is in self-id fields.

understand "file" as a mistake ("It looks like you can just cut in line. No need to stand.") when player is in self-id fields.

understand "olefin" as a mistake ("Organic chemistry involves shuffling things around a lot, too, but ... the line of no life is not organic.") when player is in self-id fields.

understand "lien" as a mistake ("If they owe something, that's their business. It's too late to change that now.") when player is in self-id fields.

chapter Flesh Shelf

understand "grin" as a mistake ("You [if canister is broken]smirk at the grinder you trashed[else]smile confidently. You'll figure how to use the grinder[end if].") when player is in Flesh Shelf.

understand "inks" as a mistake ("The skin sink bleeds no color.") when player is in flesh shelf.

understand "helf" and "helfs" as a mistake ("While you're sort of in a far side, nothing flies by to ignore you because you only said 'helf' and not 'help.'") when player is in Flesh Shelf.

understand "kin" and "kins" as a mistake ("Whether you're hoping to see a deceased relative or send a relative you really, really dislike down here, or maybe even show your family what you can do, that's not within your powers .") when player is in flesh shelf.

understand "bared" as a mistake ("It's kind of cold a lot of places here. Keep your clothes on.") when player has beard or bread is quickvis.

understand "amps" as a mistake ("You are trying to save a magic world, not start a garage band. Besides, there's too much noise [if store m is in trips strip]behind store M[else]in the Metros[end if] anyway.") when Spam is quickvis or maps are quickvis.

chapter Gnarliest Triangles

understand "integral" and "integrals" as a mistake ("I think this game is hard enough without bringing Calculus into it.") when player is in Gnarliest Triangles.

understand "reslating" as a mistake("While you have all the time in the world, there's no sense deliberately putting things off.") when player is in Gnarliest Triangles.

understand "relating" as a mistake("This isn't really a game about emotional connections.") when player is in Gnarliest Triangles.

understand "alerting" and "alertings" as a mistake ("There's nobody to alert here.") when player is in Gnarliest Triangles.

understand "altering" and "alterings" as a mistake ("No alterings or reslating of the scenery is necessary or even desirable here. It's organized so well.") when player is in Gnarliest Triangles.

understand "teraglin" and "teraglins" as a mistake ("But where would the fish go?") when player is in Gnarliest Triangles.

understand "tanglier" as a mistake ("Things are mixed up enough!") when player is in Gnarliest Triangles.

understand "tone" and "tones" as a mistake ("You aren't sure you need a booming voice telling you what you can EXAMINE.") when player is in Gnarliest Triangles.

understand "gnu" as a mistake ("Shotgun: gnu? Tosh!") when player has shotgun.

understand "eon" and "eons" as a mistake ("No, you can't afford to wait that long.") when player has nose or ones are quickvis.

understand "gunshot" as a mistake ("[if noughts are visible]You need something more tangible than that. Something that could make a gunshot, perhaps[else]You need to SHOOT the gun[end if][if shotgun is visible and silver is off-stage], but you don't have a bullet yet[else if shotgun is visible and player has silver], but you need to load it first[end if].") when noughts are quickvis or shotgun is quickvis.

chapter cruel ones enclosure

understand "spared" as a mistake ("That is too passive, to ask to be spared.") when red asp is not in lalaland.

understand "padres" as a mistake ("Bringing holy men down here would probably kill them.") when player is in Enclosure and red asp is not in lalaland.

understand "rasped" as a mistake ("The [d-s] a raspy noise, but you probably need to think up something more concrete. Not, like, cement concrete.") when player is in Enclosure and red asp is not in lalaland.

understand "spader" as a mistake ("James Spader is pretty cool, but he can't help with supernatural stuff. Okay, maybe he could, but I couldn't afford the appearance fee.") when player is in Enclosure and red asp is not in lalaland.

understand "parsed" as a mistake ("You can just read the [if drapes are visible]drapes[else]spread[end if] instead. The messages here aren't cryptic enough to be parsed.") when player is in Enclosure and red asp is not in lalaland.

understand "lucre" as a mistake ("[if player is in Enclosure]If there were any treasure here, it'd probably do something terrible to you once you took it[else]Ugg. You're not sure what kind of lucre you need, but maybe something that hasn't been in the night thing. Even something the night thing was sitting on[end if].") when cruel ulcer is visible or player is in Enclosure.

understand "cluer" as a mistake ("[if player is in Enclosure]This place is too stark to offer clues--well, maybe it'd offer WRONG clues[else]Hmm. Well, if you were able to throw something in the ulcer, maybe it would wedge in there. Something that would disagree with the thing[end if].") when cruel ulcer is visible or player is in Enclosure.

chapter ghouls' slough

understand "god" as a mistake ("You want to tempt the supernatural in somewhere this hellish? Phew.") when player is in ghouls' slough.

understand "gob" as a mistake("The bog expands into a big ol['] gob and sucks you down. Congratulations, there aren't many ways to die in this game, but you found one. Fortunately, you can undo this.[end-it]") when player is in ghouls' slough.

chapter frost forts

understand "unpile" as a mistake ("They'd be much less dangerous left in a pile. Maybe you have something that can do that!") when player is in frost forts and wolves are in frost forts.

understand "steel" as a mistake ("You'd be crushed if the sleet turned to steel.") when player is in frost forts

book store i

chapter centrifuge

understand "a lid" as a mistake ("[if centrifuge-stopped is true]You don't need to deal with the dial, now[else]Changing the dial would leave you stuck[end if].") when player is in Centrifuge.

understand "turn [text]" as a mistake ("[if player is in centrifuge and centrifuge-stopped is false]You can probably TURN the dial to a number, e.g. 99[else]You can probably just SWITCH something with two text settings[end if].").

chapter the nick

understand "thicken" as a mistake ("[if player is in kitchen]This would be the place, but you're not hungry for fatty foods right now[else]You might rather thin-nen to slip through the bars, but you can't[end if].") when player is in nick or player is in kitchen.

chapter kitchen

understand "cato" as a mistake ("You don't need to know your classics, here.") when taco is enclosed by player or player carries coat.

understand "keats" as a mistake ("This is wordplay, not poetry. But the skate does glow red.") when skate is visible.

understand "littoral" as a mistake ("How frustrating! A shoreline doesn't appear. You're still stuck in here, but [if r2 is prefigured or moor is visited]you know[else]maybe[end if] there's another way out.") when player is in kitchen and tortilla is not in lalaland.

understand "stake" as a mistake ("A stake would have no use here. So that might be a miskate. Err...") when steak is visible or skate is visible.

understand "takes" as a mistake ("You do a take, then a double take, at how odd this all is.") when steak is visible or skate is visible.

understand "teaks" as a mistake ("Hm. An indoor forest. [if cedars is unvisited]That would be neat to see. But this is a kitchen[else]But you've already seen one[end if].") when steak is visible or skate is visible.

understand "pears" as a mistake ("I think you have the wrong food group. The spearman is cheesy. Plus, he wouldn't be a spearman without his spear.") when spear is visible.

understand "limes" as a mistake ("I think you have the wrong food group. Besides, it wouldn't be nice to wipe the spearman's smile off.") when spear is visible.

chapter ROOM

understand "shoe" as a mistake ("You need more than one shoe.") when player is in roomroom and hoses are in roomroom.

chapter Stiller Trellis

understand "tillers" as a mistake ("You aren't going to sea in this game.") when player is in Trellis and archings are not in Trellis.

chapter MOOR

understand "rifle" as a mistake ("Shooting things up is not the answer.") when got-flier.

understand "tap" and "tap [text]" as a mistake ("'Ah! You are TAPping your feet to my anapest beat!'[paragraph break](You may want to PUSH something instead.)") when woeful pat is visible.

understand "emir" as a mistake ("You're not looking for a leader, and they wouldn't come somewhere this cheerless, anyway.") when player is in moor

understand "reset" and "reset button" as a mistake ("[reset-goof].") when player is in moor and panel is part of silo.

understand "terse" as a mistake ("[if trees button is visible]All five wrong[else]Already good[end if].") when player is in moor and panel is part of silo.

understand "yah" as a mistake ("[if peasant is visible]It's not nice to make fun of the peasant for having hay he doesn't want[else]You're glad you've got the hay, but you're not excited, and you can't fake it[end if].") when hay is visible.

understand "trade" and "trade [text]" as a mistake ("Instead of trading, use GIVE X to Y.");

understand "sooth" as a mistake ("Close...what you need to do will sooth, in a bit.") when shoot button is visible or hoots button is visible.

understand "otohs" as a mistake ("You start fruitlessly double- and triple- thinking whether you should change [if shoot button is visible]back to [end if]the hoots button.") when shoot button is visible or hoots button is visible.

understand "black rood" and "rood" and "blackrood" as a mistake ("Hm, no, keep religion out of it[if black door is visible]--you have what you need[end if].") when roadblock is visible or black door is visible.

understand "similes" as a mistake ("[if smilies are visible]Adding similes would mean the limerick wouldn't scan. They'd be more forced than the smilies. Though forced smilies can be a powerful weapon. Hmm.[else if missile is visible]You can't create something abstract from something concrete. Or plutonium. Or whatever that missile's made of.[else][reject]")

understand "mope" as a mistake ("[if woeful pat is visible]Woeful Pat can't decide if you're mocking him or trying to outdo him. But he is sure you're not listening carefully enough to his poem, so he coughs briefly to get your attention.[else if smilies are visible]You try, but the smilies on the poem prevent you.[else if poem is visible]You mope, but it doesn't change the poem. Or even give you an idea for one.[else]You mope, but you imagine no poem.[end if]");

understand "nepal" as a mistake ("Whoah! Teleporting there would be too cold even with that coat on. Plus, you have no mountain climbing gear.") when plane-or-panel

chapter Sacred Cedars

understand "ecards" and "e-cards" as a mistake ("Even if those were physical things, they'd be--well, less than religious. You don't need to change the cedars.") when player is in cedars.

understand "cadres" as a mistake ("You must do this on your own.") when player is in cedars.

understand "lois" as a mistake ("[what-to-ask-lois].") when cedars is visited

understand "potus" as a mistake ("This is hopefully an apolitical game, and I don't even want to get into whether the current POTUS would help or hurt in this situation, or whether they even belong in such a holy place.") when player is in cedars.

understand "pray" as a mistake ("[if player is in sacred cedars]It's been so long, you only mouth a 'Yarp!'[else]Things aren't THAT bad.[end if]")

understand "sever" as a mistake ("Violence or vandalism in such a holy place? For shame.") when player is in cedars.

understand "serve" as a mistake ("You must serve by going forth on your mission of warlikeness and love.") when player is in cedars.

book store m

understand "bates" as a mistake ("You don't need to deal with a knife-wielding psycho [if player is in abyss]along with the beats[else if player is in Hotel or player is in underside]so near a hotel, which is close enough to a motel[else]on top of all this[end if].") when location of player is noisy or location of player is abyss.

understand "baste" and "baste beats" and "baste beast" as a mistake ("I'm sorry, Mario (or Moira,) but the kitchen is in another castle. I mean, store.") when beats are visible or beast is visible.

chapter undesired underside

understand "snores" as a mistake ("Any noise would be better than the beats, but without the sensor, you're probably not getting by the door.") when player is in underside.

understand "senors" as a mistake ("The senors you [want-wanted] are behind the door.") when player is in underside.

[def=nerd door w]
understand "odor" and "rood" as a mistake ("That door's reinforced. [if Anti-Cool Location is visited]The nerds[else]Whoever's behind there[end if] made sure it was protected against all sorts of crazy things.") when player is in underside.

chapter cramped red camp

understand "stent" as a mistake ("Medical procedures aren't necessary here. The noise is too distracting anyway.") when player is in cramped red camp

understand "smitten" as a mistake ("No matter how hard you try to convince yourself they[are-were] useful, you're not smitten with them. They're just ugly. But they could stick really good on the right surface.") when player has Velcro.

understand "tang" and "tangs" as a mistake ("How the angst gnats taste doesn't matter.") when emitter is angstgnatted.

chapter cordoned red condo

understand "stalker" as a mistake ("Hm. If the talkers became a stalker, the only person to stalk would be you. You can't change who they are inside, but maybe you can give them a fright.") when player is in condo and talkers are in condo.

chapter elf row's flowers

understand "gab" as a mistake ("That's not a powerful enough noise to fight the beats.") when player has noise bag.

understand "trounce" and "trounce counter" as a mistake ("The faeries have very magic and very demoralizing anti-vandalism spells.") when location of  player is elf row's flowers.

chapter tramline terminal

understand "gip" as a mistake ("Yeah, whoever bought it probably did get gipped, but that doesn't help get rid of it.") when player is in terminal and neon pig is in terminal.

understand "none" as a mistake ("Bummer! You'd think that worked to get rid of the pig, but that's probably too abstract a noun. Probably have to deal with the whole neon pig.") when player is in terminal and neon pig is in terminal.

understand "sap" and "saps" as a mistake ("The PSA is sappy, but it's not literally sappy. And sticky stuff won't get you up the wall.") when player is in Terminal.

understand "asp" and "asps" as a mistake ("That's just what you need, a snake chasing you with everything else going on.") when player is in Terminal.

understand "spa" and "spas" as a mistake ("You haven't earned a break yet.") when player is in Terminal.

understand "pass" as a mistake ("You take a pass on etiquette advice. You need results right now!") when player is in Terminal.

understand "tar" as a mistake ("That'd be neat, make the wall sticky so you could climb and deal with that [if neon pig is visible]stupid pig[else]opening you made[end if]...but you might get stuck to it, too. Need something clingy but less gooey.") when player is in Elm Train Terminal.

understand "rat" as a mistake ("No, you don't need a rat chasing you around.") when player is enclosed by Elm Train Terminal.

understand "lair" and "lairs" as a mistake ("That might work, if the rail did not lead to a lair already.") when player is enclosed by terminal.

understand "liar" and "liars" as a mistake ("The number of liars the rails would create would be shocking.") when player is enclosed by terminal.

understand "lira" as a mistake ("But you're nowhere near Turkey or Lebanon or Syria. Or Italy or Israel, which don't use lira any more anyway. Plus, you don't need money.") when player is enclosed by terminal.

chapter anti-cool location

[def=nerd door e]
understand "odor" and "rood" as a mistake ("It would stink to be you if you did that. The nerds outnumber you and would crucify you.") when player is in Anti-Cool Location.

chapter bassy abyss

understand "reins" as a mistake ("Horsing around like that won't hold back the [if beast is visible]beast[else]beats[end if]. You need to get a grip another way, but you're on the right track.") when player is in Bassy Abyss.

understand "risen" as a mistake ("You don't need the [if siren is visible]siren's volume or [end if][if beast is visible]the beast's power [else]the beats['] volume [end if]to have risen. Oh, no.") when player is in Bassy Abyss.

understand "rinse" as a mistake ("[if siren is visible]No water source. You can do better than short-circuiting the siren with water, though[else]Time for that after you sure-handedly slay the final enemy, here[end if].") when player is in Bassy Abyss.

book store r

chapter astral altars

understand "lites" as a mistake ("Light isn't the problem here. It's not having anywhere to go.") when player is in Astral Altars

understand "slite" as a mistake ("That's bad spelling, and it won't shrink your problems.") when player is in Astral Altars.

chapter Leis Isle

understand "lies" and "lie" as a mistake ("'Lies! LIES! LIES!!!!' you cry. Who could've put those leis there to make you lazy and content? Lessie Li? Lee Silis? Les Iseli? Elise Lis? Lise Seil? Ilse Elis? Eli Siles? All of them? Whoever they are, the leis they made [if leis are in lalaland]have dissolved[else]dissolve[end if]. You see the isle for what it is[lei-lala].") when player is in isle and leis are in isle.

chapter rived drive

understand "verdi" as a mistake ("You don't need a musical score for this adventure.") when player is in Rived Drive.

understand "loot" as a mistake ("You don't have time for treasure with Red Bull Burdell waiting.") when player is in Rived Drive and tool shed is in Rived Drive.

understand "prigs" as a mistake ("Grumbling about prigs, or showing those prigs, won't help now. You should probably [if grips are visible]use the grips to climb[else]make the sprig into something useful[end if] instead.") when grips are visible or sprig is visible.

understand "prose" as a mistake ("There's not much of that left in this game, and talking won't help you up the [p-s][if ropes are visible]. The ropes will[else]. The spore can be something sturdier. You see red at the thought of having to read[end if].") when player is in Rived Drive.

understand "pores" as a mistake ("[if ropes are visible]No, you had it[else]Almost. But you don't need to create holes[end if].") when player is in Rived Drive.

understand "poser" as a mistake ("[if ropes are visible]You mutter a small epithet at where Red Bull Burdell could be. No, he's not around, but he must be near[else]You wonder if YOU are the poser, for not being able to figure what to do[end if].") when player is in Rived Drive.

chapter potshot hotspot

understand "spotter" as a mistake ("No, you see [']em, you just need a better way to disperse [']em.") when player is in hotspot and potters are not in lalaland.

understand "brb" as a mistake ("You don't know him that well. No riffing on his initials!") when player is in hotspot and red bull burdell is in hotspot.

understand "slink" as a mistake ("[if red bull burdell is visible]You couldn't slink behind the kilns even if they were here[else if red bull burdell is in lalaland]Why slink? No one is blocking or watching you any more[else]Too many people are watching for you to slink away[end if].") when player is in hotspot

understand "i rot" as a mistake ("Don't give up! Perhaps there are only four or fewer rioters with their heart really in it.") when player is in hotspot and riot is in hotspot.

understand "ether" as a mistake ("They're not bad people. But even bad people don't deserve to vanish like that! [if kilns are visible]Maybe they can get a purpose, able to use those kilns[else]Give them something constructive to do[end if].") when player is in hotspot and protest is in hotspot.

understand "lacy" as a mistake ("No, the clay is a clue to what the protest really wants to do.") when player is in hotspot and protest is in hotspot.

understand "roister" as a mistake ("That's what's causing the riot, and it's up to you to quiet the rioters--well, the riot.") when protest is visible.

understand "achin" as a mistake ("You don't have the ability to dish out an achin['][if china is not in lalaland], but you see red from wanting to do so[end if].") when player is in hotspot and chain links are in hotspot.

understand "romans" as a mistake ("It's a pretty ritzy area. It doesn't need sanitation, medicine, education, wine, public order, irrigation, roads, a fresh water system, or public health.") when player is in hotspot and ransom manors are in hotspot.

understand "morans" and "moran" as a mistake ("A long-haired fellow wearing a St. Louis Cardinals t-shirt and an American flag bandana appears, holds up a sign saying GET A BRAIN, and vanishes. Whoah! That was random!") when player is in hotspot and ransom manors are in hotspot.

chapter means manse

understand "blamer" as a mistake ("No, we know who's to blame. He's done with. Time to move on.") when player is in Means Manse.

understand "amen" and "name" as a mistake ("I'm going to be pedantic here and force you to use the plural, but yeah, you've got the right idea.") when player is in Means Manse.

understand "mensa" as a mistake ("No, you couldn't put up with a MENSA meeting just now. Perhaps they would explain how they would've done things quicker, or how your journey was not particularly relevant.[paragraph break]Even if they wouldn't, well, the Means Manse is for you and you alone.") when player is in Means Manse.

understand "sex it" as a mistake ("[if player is not in means manse]Quit screwing around and focus on yourself. NO, not like THAT. Geez[else]You're not even up for THAT, now. You just want to BE[end if].")

volume unsorted

Shuffling Mistakes ends here.

---- DOCUMENTATION ----