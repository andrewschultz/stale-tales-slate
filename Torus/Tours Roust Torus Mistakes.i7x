Version 1/220314 of Tours Roust Torus Mistakes by Andrew Schultz begins here.

"A trivial list of mistake commands from reasonable guesses"

volume mistakes by room

to say besides: if location of player is solved, say ". Besides, you already did what you needed, here"

to say half-solved: if prep area is not solved, say ". In a weird way, you feel you're halfway there, though"

to say no-pron: say "You don't need to deal with pronouns"

to say end-game:
	stop the game abruptly;

to say extra-she:
	if word number 1 in the player's command is "she", say "[half-solved]"

book general

understand "testes" as a mistake ("Really! This isn't that sort of game.") when tsetse fly is not off-stage.

understand "hah" and "yah" and "ayy" as a mistake ("You were glad to have the smell of hay as a clue, but let's not overdo it!") when hay-smell-known is true.

understand "off" as a mistake ("You can't turn things off. Just try to dance around as you can.") when in-heptagon-puzzle is true.

understand "a0" and "0a" and "b0" and "0b" as a mistake ("You look around the torus, deciding where to go next, but you can't quite make a move.").

book Ehs Ehs

understand "he" and "hes" and "she" as a mistake ("[no-pron][if ehs ehs is not solved]. Maybe a different sort of word[extra-she][else][besides][end if].") when player is in Ehs Ehs.

book Grain Grain

understand "arranging" as a mistake ("Almost. Just one more I to arrange, there.") when player is in Grain Grain and Grain Grain is not solved.

understand "ragin" as a mistake ("Getting mad won't help[besides].") when player is in Grain Grain.

understand "raging rain" as a mistake ("You don't need to battle the weather as well[besides].") when player is in Grain Grain.

book Latte Latte

understand "let at" as a mistake ("You don't need permission to be let at anything[besides].") when player is in Latte Latte.

book Meta Meat

understand "tame" as a mistake ("There's nothing strictly to tame here. If there were, maybe you could use some help[besides].") when player is in Meta Meat.

understand "team" and "mate" as a mistake ("You sort of need a pal, and you sort of need a bit more.") when player is in Meta Meat and Meta Meat is unsolved.

book Pechan Pechan

understand "happen chance" as a mistake ("You are very, very, very close indeed. Everything is in the right order.") when player is in pechan pechan and pechan pechan is unsolved.

book Prep Area

understand "rapparee" as a mistake ("You don't need to consort with thieves[besides].") when player is in prep area.

understand "perp" as a mistake ("That doesn't take care of the whole area.") when player is in prep area and prep area is not solved.

understand "pear" as a mistake ("You already got fruits for Curtis in Rustic Citrus long ago[besides][half-solved].") when player is in prep area.

understand "reap" as a mistake ("Perhaps there is something to reap once you figure what to do here[besides][half-solved].") when player is in prep area.

understand "reap pear" as a mistake ("You think you've got it, but for some reason you feel a little ... spacy.[paragraph break]Besides, you already did this for Curtis after you defeated Elvira in [roi].") when player is in prep area and prep area is unsolved.

understand "rape" as a mistake ("[one of][this-game] is about light-hearted jokes, and there's nothing light-hearted about that. So, yeah, don't try it again.[or][end-game][stopping]") when player is in prep area.

understand "earp" as a mistake ("No daredevil gunman appears to help you out[besides][half-solved].") when player is in prep area.

book Scene Scene

understand "trainer" as a mistake ("You're on your own here. If almost three games aren't enough to whip you in shape, I don't know what is.") when player is in scene scene.

understand "retrain" and "retrains" as a mistake ("It's too late for that now, but you should be able to push through as needed.") when player is in scene scene.

understand "senescense" as a mistake ("Almost, but I'm going to play spelling cop, here.") when player is in Scene Scene.

understand "science sin" and "sin science" as a mistake ("Hey, now. You are the good guy, here. But you're actually very close.") when player is in scene scene and Since Since is in Scene Scene.

book Tines Inset

understand "sit intense" and "intense sit" as a mistake ("This is as good a place for rigorous thought as any other, I suppose.") when player is in Tines Inset.

understand "nineties st" as a mistake ("You don't want to think about your own nineties, but yeah, the nineties were a great time for text adventures, weren't they?") when player is in Tines Inset.

understand "nites" as a mistake ("You're too old for the nightlife. Or bad spelling[besides].") when player is in Tines Inset.

understand "stein" as a mistake ("You have nothing to drink, so you do not need a drink container[besides].") when player is in Tines Inset.

understand "tiens" as a mistake ("You mentally show off your anagramming skills in languages other than English[if tines inset is solved]. Not that you need to do anything more here[else]. Perhaps it's not the brain that needs attention here, though[end if].") when player is in Tines Inset.

Tours Roust Torus Mistakes ends here.

---- DOCUMENTATION ----
