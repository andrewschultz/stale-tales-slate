Version 1/180729 of Shuffling Tables by Andrew Schultz begins here.

volume main anagram tables

book Ordeal Loader

[NOTE: PUT NON SCENERY FIRST]

table of Ordeal Loader anagrams
the-from	the-to	exact-text (topic)	text-back (topic)	pre-rule	post-rule	from-msg	force-take	hashkey	vanish	to-room
bulge	bugle	"bugle"	"bulge"	a rule	post-bulge-bugle rule	"The ovular shape on the door rumbles then falls off. You see that extra bit is a horn--yes, you've definitely found a bugle[if blot is touchable]. It's untainted by the blot which spread to the door--and is still there[else]. Maybe, if you can't figure the bolt, the bugle can do the trick[end if]."	true	337744362	--	nowhere
odor	OR DO door	"door"	"odor"	--	post-odor-door rule	"The odor becomes thick and choking, then a wood you've never smelled before but know it's wood. The odor swirls into a door, with a bolt sticking out into an unseen lock, and a bulge out front.[paragraph break]Wow! Neat! You didn't know you had it in you, and you're still not sure how or why. But you're pretty sure you need to get through that door."	false	255058046	[start Ordeal Loader anagrams]
bolt	blot	"blot"	"bolt"	--	post-bolt-blot rule	"The bolt retracts, and slowly a blot spreads over the door, which swings in and out[if bugle-played is true] just as when you played the bugle[else]. You can probably enter now[end if]."	false	249695339
reed	deer	"deer"	"reed"	--	post-reed-deer rule	"The reed shudders and slowly pulls down into the ground, making legs and so forth. And it becomes a deer. The deer sees the delicious thickets and brambles and walks over.[paragraph break][goat-deer-eat]."	false	361965110
toga	goat	"goat"	"toga"	--	post-toga-goat rule	"The dingy toga shudders. It seems to rip, make legs, and twist around, like one of those balloon animals you were never good at. And it becomes a goat. All this twisting has left the goat with an appetite, so it walks over to the delicious thickets and brambles.[paragraph break][goat-deer-eat]."	false	212250115
sent nets	nest	"nest"	"nets"	--	--	"The nets, seemingly stuck in the ground, pull up and fly around and compact themselves into a nice-sized nest. It looks a lot more in tune with the scenery. While you gained nothing practical other than the experience, you're glad you could use your powers to make things a bit nicer."	false	396097601
nametag	gateman	"gateman" or "gate man"	"nametag"	pre-nametag-gateman rule	post-nametag-gateman rule	"Whoah! The nametag pulses and pops in directions you didn't think something that flat could. You hear a gish, then a sigh. A tall, grouchy old man in sober robes so aged you almost say 'Egad' cries 'The eyes! They see!' He grumbles how he shoulda been a portal king in the parking lot, he's such a talking pro. 'Rote scan. Ancestor? No traces.' Then he notices you. 'You--well, you brought me back. Yorpwald's been shuffled. Almost f-flushed. I'm Nat Egam, Tan Mage. See, this isn't some RPG where you can ask everyone on the way for help. I'm pretty much it[if attics are not off-stage]. Oh, nice job fixing the static, too. There'll be worse noise later, but you'll deal with that whenever[end if].'[paragraph break]'Er, oh...or, eh...'[paragraph break]'Brilliant! You're a natural!'"	false	400874126	true
static	attics	"attics" or "attic"	--	--	--	"[check-plur]The static cuts off and seems to grow opaque. Then it forms into a small box with a cupola, pyramid, and other shapes. They fit with a click on top of the doll house[if gateman is touchable]. Nat Egam golf-claps. 'Good work, though there's worse noise later[what-about-gate].'[else]. Too bad nobody was around to see it![end if]"	false	368680251	true
attics	static	"static"	--	--	--	"You undo your artistic work for perhaps more practical considerations like learning how to use the new toys from the cabinet."	false	368680251	true
acne bit cabinet	tenibac	"bactine"	"bactine"	pre-cabinet-bactine rule	post-cabinet-bactine rule	"You hear bubbling. A small bottle of Bactine appears in the back of the acne-bit cabinet and then tips over on each place where the cabinet was scarred. Slowly, the cabinet smooths out. The cabinet almost seems to dance."	false	384428789	--	Trips Strip [end Trips Strip anagrams] [note that cratered bits and not cabinet are what is flipped. Since Shuffling doesn't use "reflexed" like roiling, this is the easiest way to do things.ere it's at.]

this is the post-bulge-bugle rule:
	if bolt is moot, min-up;

this is the post-odor-door rule:
	if min-alert is false, poss-display;

this is the post-bolt-blot rule:
	now blot is part of OR DO door;
	if bulge is moot, min-up;

this is the post-reed-deer rule:
	set the pronoun him to deer;
	set the pronoun her to deer;
	deer-goat-min;

to say goat-deer-eat:
	say "[one of]It finds a relatively weak spot in the thickets, one you'd never have seen, and chomps away. Enough branches make way so that you could make it through if you crouch. Exhausted, the goat turns around three times and falls asleep.[paragraph break]Man! You actually made something living, this time[or]The [if goat is touchable]goat[else]deer[end if] left enough for a full meal, which [if goat is touchable]the deer[else]the goat[end if] seems to enjoy, and the result is, it's even easier to go [b]IN[r] now[stopping].[paragraph break]";
	say "[one of]You can go [b]IN[r] now[or]There doesn't seem to be anything else critical to fix here[stopping]";
	if nets are touchable, say ", but you may want to see if you can do anything with the sent nets, if you're the completionist sort"

this is the post-toga-goat rule:
	if player has toga or player has goat:
		move toga to location of player;
		move goat to location of player;
	set the pronoun him to goat;
	set the pronoun her to goat;
	deer-goat-min;

this is the pre-nametag-gateman rule:
	if gateman is touchable, try examining the gateman instead;
	if the player's command matches the regular expression "gate ?man", case insensitively:
		do nothing;
	else:
		say "[reject]" instead;
	if Notices Section is unvisited:
		say "The nametag seems to try to rip itself from your clothes for a moment, but it settles back down. Maybe the time isn't right.";
		preef gateman;
		the rule succeeds;
	if location of player is not Notices Section and Notices Section is visited, say "Your nametag twitches. Very odd." instead;
	if player wears the nametag:
		say "If you really CAN change the nametag, you don't want a gateman in your face--so you chuck the nametag away. Not really believing...";
	move nametag to location of player;

this is the post-nametag-gateman rule:
	set the pronoun him to gateman;
	if mega ant is in Notices Section:
		say "The gateman looks over to the mega ant and does some weird hand-fu. The ant scampers off. 'There. Should be able to walk in now. I mean, after you ask me for all the help you want.'";
		moot mega ant;
	if the player has the bugle:
		say "The gateman [if ant is moot]pauses again, then [end if]looks at your bugle. 'Oh! Thanks for recovering that! You won't need it--but it's valuable, and stuff. Mind if I...?' You don't. It's already a bit tricky to carry around.";
		moot bugle;

to say check-plur:
	if player's command does not include "attics":
		say "(Okay, no need to be pedantic about plurals.) [run paragraph on]";

to say what-about-gate: say ". [if player has gadget]Not much left to do for you here[else]You got the attics, but other stuff'll be tougher. Have a look in that cabinet, maybe[end if]"

to deer-goat-min:
	if reed is moot and toga is moot, min-up;

book Stores

table of Stores anagrams
the-from	the-to	exact-text (topic)	text-back (topic)	pre-rule	post-rule	from-msg	force-take	hashkey	vanish	to-room
store b	sorbet	"sorbet"	--	--	post-storeb-sorbet rule	"The store collapses into a greyish sludge, under which you find a large cup of sorbet. It's surprisingly tasty. Once you've finished, it vanishes with a pop. You're not sure how all that worked, but it was a nice break."	false	505285378 [start trips anagrams]
store f	scented descent	"forest"	"store f"	--	--	"The greens and browns of Store F coagulate and pull apart into an actual forest."	false	513381369
store i	posted depots	"sortie"	"store i"	--	--	"The store rumbles, revealing shady posted depots you can enter to somewhere new."	false	531859319
store m	trade tread	"metros/metro"	"store m"	--	--	"The store rumbles, with the collections of small-scale cities disappearing. A trade tread appears. You can't see where it ends up, but you can [b]ENTER[r] or [b]FOLLOW[r] it."	false	550941626
store r	ogled lodge	"resort"	"store r"	pre-storer-resort rule	--	"Store R rumbles and reforms into something far posher. Not just a resort, but an ogled lodge! 'Congratulations, adventurer!' croons a syrupy voice. 'For defeating Red Bull Burdell, a wonderful place is now yours and yours alone!'[paragraph break]Hey! Wait a minute! But before you reply, the voice continues 'Go! Rest!'"	false	572190276
acne bit cabinet	tenibac	"bactine"	"bactine"	pre-cabinet-bactine rule	post-cabinet-bactine rule	"You hear bubbling. A small bottle of Bactine appears in the back of the acne-bit cabinet and then tips over on each place where the cabinet was scarrred. Slowly, the cabinet smooths out. The cabinet almost seems to dance."	false	384428789	--	Trips Strip [end Trips Strip anagrams] [note that cratered bits and not cabinet are what is flipped. Since Shuffling doesn't use "reflexed" like roiling, this is the easiest way to do things.ere it's at.]

this is the post-storeb-sorbet rule:
	moot sorbet;
	min-up;

this is the pre-storer-resort rule:
	if you-can-advance, continue the action;
	if store r is touchable:
		say "That seems like it should work, but you sense you have not done enough yet. But maybe, soon, you will.";
		preef ogled lodge instead;

this is the pre-cabinet-bactine rule: [ic]
	if Trips Strip is unvisited:
		say "[if gateman is off-stage]That might be a way to heal the cabinet's wounds once they aren't so fresh, but not now.[else]'Hey, that's a good idea,' says the gateman. 'The cabinet's still recovering from its wounds back when Red Bull Burdell almost destroyed it. But it'll be seeing you again. When it does, I think Bactine will work.' He pauses. 'Oh. There probably won't be many brand names like that to worry about, unless they're even more ubiquitous. Like, say, Xerox.'[end if]";
		preef tenibac;
		now cabinet-flip-try is true;
		the rule fails;

this is the post-cabinet-bactine rule: [ic]
	move cabinet to location of player;
	move cratered bits to location of player;
	moot cratered bits;

book Forest

table of Forest anagrams [xxtfa]
the-from	the-to	exact-text (topic)	text-back (topic)	pre-rule	post-rule	from-msg	force-take	hashkey	vanish	to-room
slit	silt	"silt"	"slit"	a rule	post-slit-silt rule	"The slit crumbles away. Sily comes pouring out of it, and at the same time, Corses Crosse squeezes it shut. There's no trace of the slit now."	true	298190669
ones	nose	"nose"	"ones"	a rule	post-ones-nose rule	"The ones line up next to each other in a pair of not quite v-shaped semicircles. Then they melt into a nose. You take it."	true	367340160
dashes	shades	"shades"	"dashes"	--	post-dashes-shades rule	"Most of the dashes reform into a pair of eyeglass rims, and the remaining one fill in as lenses. They lighten a little, and you have fully functioning shades."	true	380853247
noughts	shotgun	"shotgun"	"noughts"	--	post-noughts-shotgun rule	"Bam! The noughts slink together to form a gun barrel, then a whole big powerful gun."	true	517631877
bread	beard	"beard"	"bread"	--	--	"[process-sandwich]The bread seems to grow a fuzzy dark mold, then narrows into a sickle. It's now a beard, though not a particularly beautiful one. As you pick it up, you shake it for crumbs, and the hairs don't crumble into mold."	true	254765724
sliver	silver	"silver"	"silver"	pre-sliver-silver rule	--	"The sliver changes and grows even more metallic. It becomes a row of six bullets, tied together like plastic twist-off toys, but obviously more lethal."	true	515375383
livers	sliver	"sliver"	"livers"	--	--	"The livers narrow a bit and become more pointy at the end. They are a nice long sliver now[if player does not have sliver], which you pick up[end if]."	true	515375383
liches	chisel	"chisel"	"liches"	--	post-liches-chisel rule	"'Dissolve, vile sods!' you cry for effect. You hear a spectral clapster![paragraph break]As the final shade heads to Hades--sad, eh?--a chisel clatters behind. The chisel doesn't seem to vibrate scarily or anything, so you take it. You're also less distracted now and notice a spread on the north wall--it seems to pulse a bit, as if it could change to something dangerous."	true	379174644
banshee	has been	"hasbeen" or "has been"	"banshee"	--	post-banshee-hasbeen rule	"The banshee quits moaning and starts screaming as it's sucked in by some dimensional gate opened by a spectral clapster. A gate to--not a better place, but a better suited place. Where the fates feast. As not just a has-been but a has-has-been, its moaning will be more appropriate punishment for the souls who have done much worse than it did."	false	478682714
red asp	drapes	"drapes"	"red asp"	--	--	"Shazam! The red asp crumbles into some far less evil looking drapes. They're still too thick to walk through."	false	414086744
spread	drapes	"drapes"	"spread"	--	--	"The spread briefly turns into a red asp that jumps at you before collapsing into thicker, but less wide, drapes. You won't be able to just walk through them."	false	414086744 [must be 2nd else you get a problem with 2 points]
Spam	maps	"maps"	"spam"	--	--	"[process-sandwich]With a sickening SCHLURP, the [spam] curdles and flattens to form several maps."	true	244002896
vowels	wolves	"wolves"	"vowels"	--	--	"Well, you've done it now. The imposing vowels become werewolves--but they notice your shotgun and stand back. The first forward gets shot--or so they imagine."	false	567346084

this is the post-slit-silt rule:
	moot silt;

this is the post-ones-nose rule:
	now bucket is realized;

this is the post-dashes-shades rule:
	now shell is realized;

this is the post-noughts-shotgun rule:
	now bubble is realized;

to say process-sandwich:
	if sandwich is touchable:
		say "[if player has sandwich]You juggle the bread and spam, but neither part falls[else]You decide to pick up the sandwich so the other part doesn't fall[end if] to the floor. ";
		moot sandwich;
		if the player's command matches the text "beard":
			now player has spam;
		if the player's command matches the text "maps":
			now player has bread;

this is the pre-sliver-silver rule:
	unless drapes are moot:
		say "The sliver wobbles but stays firm. Maybe it has a purpose before you turn it into silver.";
		preef silver;
		do nothing instead;

this is the post-liches-chisel rule:
	now spread is in Emptiness Sepiments;

this is the post-banshee-hasbeen rule:
	moot has been;

book Sortie

table of Sortie anagrams [xxtia]
the-from	the-to	exact-text (topic)	text-back (topic)	pre-rule	post-rule	from-msg	force-take	hashkey	vanish	to-room
t-n	teleporter	"kitchen"	"the nick"	--	post-thenick-kitchen rule	"That does it! The heck with that silly old grate. Your prison dissolves, and it becomes the place you meant to go all along[if straw is in the nick]--the straw remains intact, too[end if]."	false	454037543	--	kitchen
warts	straw	"straw"	"warts"	--	post-warts-straw rule	"The warts quickly peel off and lengthen into straw[drop-straw]."	false	394830378
skate	steak	"steak"	"skate"	--	--	"The skate turns reddish, and the blade cuts up the meaty bits before vanishing--how convenient!"	false	382311089
cult tee	lettuce	"lettuce"	"lettuce"	--	--	"The cult tee crumples and then shreds before turning into a light green head of lettuce."	false	639757485
spearman	Parmesan	"parmesan"	"spearman"	--	--	"The spearman transforms into something cheesier--Parmesan cheese! Unfortunately, it doesn't have one of those cute plastic spears sticking from it, but you can't have everything."	false	528228134
cathouse	HOTSAUCE	"hotsauce" or "hot sauce"	"cathouse" or "cat house"	--	--	"The [cathouse] turns into a packet of equally over-capitalized and under-spaced hot sauce."	false	565124179
tall trio	tortilla	"tortilla"	"tall trio"	--	--	"Poof! The doughy fellows maintain their breadiness, but they flatten out into a tortilla."	false	520704758
grist	grits	"grits"	"grist"	--	post-fridgey-flip rule	"With a squelch, the grist in the fridge [closed-note]refines itself into something more edible. Relatively."	false	362300335
cake pan	pancake	"pancake"	"cake pan" or "cakepan"	--	post-fridgey-flip rule	"You hear a clatter, and then you poke into the fridge [if fridge is closed]you didn't even open yet[end if] to see the cake pan is a pancake."	false	354493975
taco	coat	"coat"	"taco"	--	--	"Before changing the hot-to-your-tongue taco to a warm-to-your-body coat, you wisely take out a few small bites from the bottom (like adults always said not to) to form the arm-holes. Delicious! You ate just enough to feel fortified, and you've got something to wear, too."	false	198655998
cask	sack	"sack"	--	pre-cask-sack rule	--	"The cask retains its color but looks visibly frayed as its wood turns to burlap. The sack it has become collapses in a heap on the floor. You pick it up."	true	170400547
sack	cask	"cask"	--	pre-sack-cask rule	post-sack-cask rule	"The sack stiffens, rises and becomes less blobby. It's the cask again, nice and upright."	true	170400547
hoses	shoes	"shoes"	"hoses"	--	post-hoses-shoes rule	"The pair of rubber hoses bends and opens and become a comfortable pair of shoes that swallows your old shoes--you'd forgotten how ratty they were. A few steps show walking's much smoother. So smooth, you forget you're wearing them. And the price is right, too."	false	431988917
r2	teleporter	"moor"	--	pre-room-moor rule	post-room-moor rule	"[moor-jump]."	false	298104110	--	moor
m2	teleporter	"room"	--	--	--	"[if woeful pat is in moor][one of]As you pop back to the room, Woeful Pat looks visibly shocked. You have left him speechless, which is good news, but he is reaching for his pen, which is bad news for some poor soul in the future[or]Woeful Pat is less impressed this time, sniffing that it's been done[stopping].[else]'The room's smoother,' you muse..."	false	298104110	--	roomroom
anapest	peasant	"peasant"	"anapest"	--	post-anapest-peasant rule	"Nothing happens. You worry your magic powers have failed, until a peasant strides out from the edge of the moor, carrying a bale of hay and singing a cheery song about nothing in particular. Distracted, you look over and smile.[paragraph break]'Oh, does THAT resonate with your stone ear?' whines Woeful Pat.[paragraph break]You notice his papers have crumbled (but don't worry, he has PLENTY of written drafts.) He [exp-fli]storms off, claiming you will make a perfect arch-villain in his new socially significant blank-verse epic. Or another poor henchman who deserves but one line before a horrible fate--or a mega-rip of an epigram!"	false	481939196
roadblock	black door	"black door" or "blackdoor"	"roadblock" or "road block"	--	--	"Bam! The fissure in the roadblock covers up, and a black door appears where it was. It's light but bulky--you can probably put or push it where it needs to go[if pat is touchable]. Woeful Pat shows commendable concentration ignoring all this[else if peasant is touchable]. The Peasant cheers in appreciation, momentarily dropping his hay, which he's none too eager to pick up[end if]."	false	401417371
poem	panel	"panel"	--	pre-plane-panel rule	--	"Poof! The paper plane becomes a panel. It's light enough to carry, you suppose[if player has poem or player has panel]. Well, it doesn't cause an immediate hernia[end if]."	false	334181233
smilies	missile	"missile"	"smilies"	pre-smilies-missile rule	--	"The smilies on the poem seem to waver. But they sever from the verse, grow, and clump together to form a big yellow missile! You reread the poem. You didn't think it would change much without the smilies, but it's snappier now, pointed, warlike--a restrained, plain-language indictment of not just bad poetry but nastiness and elitism in general!"	false	528228725
scraped wall	hallway	"hallway"	"haywall"	pre-haywall-hallway rule	--	"Of course! The hay wall you made collapses into a hallway leading east. One you won't even have to duck through!"	false	379579638
oils	silo	"silo"	--	pre-oils-silo rule	post-oils-silo rule	"You empty the cask again. The oils seep into the moor, and you drop the cask as the silo appears much quicker than you imagined possible. The cask breaks and seeps into the ground."	false	269433228 [this is kludgey code, as this line must come first even though the silo flip comes second.]
oils	soil	"soil"	--	pre-oils-soil rule	post-oils-soil rule	"You empty the cask. The oils seep into the moor and make a large chunk less squishy and sandy. You could probably build something big on the moor now."	false	269433228
hoots button	shoot button	"shoot" or "shoot button"	"hoots" or "hoots button"	--	post-hoots-shoot rule	"The hoots button glows--you touch it (so hot,) and it changes to a shoot button as its letters shift."	false	385371437
trees button	steer button	"steer" or "steer button"	"trees" or "trees button"	--	post-trees-steer rule	"The smell of a chemical ester pervades the air as the trees button rewords to a steer button."	false	540320005

to say closed-note: if fridge is closed, say "you didn't even open yet "

this is the post-thenick-kitchen rule:
	if straw is in the nick, now straw is in kitchen;

this is the post-warts-straw rule:
	pad-del "warts";

to say drop-straw:
	say ", which [if player carries sack]you drop into the sack before it falls out of your arms[else]is too heavy to carry. You drop it[end if]";
	if "warts" is padded:
		say ". You run a big line through your entry on warts in your dope tan notepad";
		pad-del "warts";
		now straw is in sack;
	else:
		move straw to location of the player;

this is the post-fridgey-flip rule:
	if noun is pancake or noun is grits:
		now noun is in fridge;
		say "Bam! A[one of][or]nother[stopping] nice, plain dish. You [if taco is moot or taco is touchable]figure that's less tasty than the taco, but you're still pleased with your culinary skills[else if number of touchable ingredients > 1]feel a boost of confidence. Now, to those other ingredients, or things that can become ingredients[else]can't see what else the [noun] can become, so maybe you can make some other food or ingredients[end if].";
		if fridge is closed:
			say "[line break]You also note the [if noun is grits]cake pan[else]grist[end if] in there. ";
			now fridge is open;
		if fridge-score is 2, say "[line break]I suppose you could also say you fig'red the fridge, too, now.";

this is the pre-cask-sack rule:
	if cask is touchable and oils are in cask, say "That's inadvisable. The oils would leak out." instead;

this is the pre-sack-cask rule:
	if sack is touchable:
		if number of things in sack > 0:
			say "As the sack changes, [the list of things in sack] falls out.[line break]";
			repeat with Q running through things in sack:
				move Q to location of player;

this is the post-sack-cask rule:
	unless straw was in sack or hay was in sack, continue the action;
	say "Thankfully, the dispossessed [if straw was in sack]straw[else]hay[end if] fell into a pretty tidy heap, so it can be collected easily again."

this is the post-hoses-shoes rule:
	moot shoes;

this is the pre-room-moor rule: [(this is the sortie gadget checkpoint rule as well)]
	unless shoes are moot:
		say "You see a flash and get a glimpse of the moor, but your movement's gummed up quickly by the ooze below. Best to find something better to put on your feet.";
		preef r2 instead;
	if player carries coat and player is not wearing coat:
		say "(wearing the coat first)[line break]";
		now player wears the coat;
	if player is not wearing coat:
		say "You see a flash and get a glimpse of a moor, but it is just too cold. You blink and find yourself back in the room[if coat is off-stage]. You'll need to pierce the recipe to build something warm that can cover the rest of your body than just the shoes[else]. That coat you made would be handy[end if].";
		preef r2 instead;
	if moor is unvisited:
		if sortie-warn is false and button-locked is false and player has gadget and hows tag is part of gadget:
			now sortie-warn is true;
			say "[gadact] once you jump to the moor. Is this okay?";
			if the player yes-consents:
				do nothing;
			else:
				say "Okay. Next time, you won't see this warning." instead;
			now button-locked is true;

this is the post-room-moor rule:
	if room-flip is false:
		now coat is realized;
		now shoes are realized;
		say "[i][bracket]NOTE: you can now teleport back to the moor from any inside location.[close bracket][line break]";
		now room-flip is true;

to say moor-jump:
	if moor is visited:
		if location of player is cedars and caskfillings is 2:
			say "You hear a crash as you teleport. Maybe you'll find what it was about when you return";
			block-cedars;
		else:
			say "'The mire, I'm there,' you muse[one of][or] once[stopping] again[if r2 is prefigured and moor is unvisited]. Of course, you know what to expect this time, and you put your coat back on first[end if][if player has been in moor and woeful pat is in moor][one of]. Woeful Pat seems hurt that you did not return with a larger audience[or][stopping][end if][if player is in Sacred Cedars]. You step out of Sacred Cedars to perform your magic, out of respect for Lois[end if]";
		continue the action;
	say "You knew the moor would be cold, but it was a bit colder than you suspected. Fortunately, your coat keeps you warm[if player was not wearing coat], as you managed to slip it on as the scenery changed and the temperature dropped[end if]";

this is the post-anapest-peasant rule:
	moot pat;

to say exp-fli:
	if player has expo flier:
		say "snatches back the expo flier and ";
		moot expo flier;

this is the pre-plane-panel rule:
	if poem is not folded, say "You'd need to fold the poem into a plane, first." instead;

this is the pre-smilies-missile rule:
	if smilies are touchable:
		if player is not in moor:
			say "[one of]Good idea, but not in here. There'd be more room for that outside where you found the poem[or]Need to get outside to the moor[stopping].";
			preef missile;
			do nothing instead;

this is the pre-haywall-hallway rule:
	if scraped wall is not hayfilled:
		say "Hm, that's possible, but you can't make the hallway until you add something to the wall.";
		preef hallway;
		do nothing instead;

this is the pre-oils-silo rule:
	if oils are not in cask:
		if location of player is Sacred Cedars:
			say "[if silo is in moor]You've already built the silo, and bragging does not impress Lois[else]That would really clog up the tap, changing the oils in it to a silo. Maybe there's a better place to make a silo[end if].";
			preef-l silo;
			do nothing instead;
		if oils are touchable:
			say "You've found a bug, somehow. I'm sorry about this. It's not game-breaking, but it's a bug. Please type [b]UNDO[r] and send a transcript of what you did.";
		continue the action;
	if player is not in moor:
		say "This is not a good place to put a silo. Somewhere more wide open, where you can pour the oils, too?";
		preef silo;
		do nothing instead;
	if soil is not in moor:
		preef silo;
		say "The moor's ground, as is, is not stable enough. You need a foundation first." instead;

this is the post-oils-silo rule:
	now oils are in Sacred Cedars;
	moot cask;
	moot sack;

this is the pre-oils-soil rule:
	if oils are not in cask:
		if location of player is Sacred Cedars:
			say "[ilb-later][if soil is in moor]You've already poured the soil, and bragging does not impress Lois[else]That would really clog up the tap, changing the oils in it to a silo. Maybe there's a place that could use soil, though[end if].";
			preef-l soil;
			do nothing instead;
		if oils are touchable:
			say "You've found a bug, somehow. I'm sorry about this. It's not game-breaking, but it's a bug. Please type [b]UNDO[r] and send a transcript of what you did.";
	else if player is not in moor:
		say "This is not a good place to put soil. Somewhere more wide open, where you can pour the oils, too?";
		preef soil;
		do nothing instead;

this is the post-oils-soil rule:
	now oils are in Sacred Cedars;

this is the post-hoots-shoot rule:
	now shoot button is part of panel;

this is the post-trees-steer rule:
	now steer button is part of panel;

book Metros

table of Metros anagrams [xxtma]
the-from	the-to	exact-text (topic)	text-back (topic)	pre-rule	post-rule	from-msg	force-take	hashkey	vanish	to-room
drainage	gardenia	"gardenia"	"drainage"	--	post-drainage-gardenia rule	"In a fit of ecological, aesthetic magic-slinging, you transform the drainage and all the flotsam inside it into a much prettier gardenia. The whole underside is still pretty dingy, but hey, free flower. You take it."	true	385034693
clover	Velcro	"velcro"	"clover"	--	--	"Pop! The clover expands and grows scratchier and darker. It is now a long strip of Velcro. The leaves appear to have expanded into something resembling mittens[if player does not have Velcro]. You pick them up[end if]."	true	467466733
Motto	tomato	"tomato"	"motto" or "a motto"	--	--	"The motto--that is, both words and paper--curls up and bundles into a small sphere, and you almost [if motto is in Bile Libe]hesitate to pick it up[else]drop it[end if]. Amazingly, it's not icky-soft or anything, and it doesn't smell TOO bad."	true	421188161
lost corn	controls	"controls"	"lost corn"	pre-lostcorn-controls rule	--	"The different-colored kernels only flatten out as the lost corn collapses into a circuit board. The controls you possess--for whatever--seem powerful[if deadbeat is touchable]. 'Whoah! DUDE!' moans the deadbeat, half staggering to his feet before he collapses from the effort[end if]."	true	575139873
heaths	sheath	"sheath"	"heaths"	pre-heaths-sheath rule	post-heaths-sheath rule	"The heath grows, tangles around itself, and lumps into a sheath. It's too bulky to carry, so you wear it."	true	403942509
begonias	noise bag	"noise bag"	"begonias"	pre-begonias-noisebag rule	--	"The begonias twirl and create a bag. One with weird triangular spikes on the inside. You exclaim surprise at it--the bag whooshes every time you say something."	true	465539431
brocade	barcode	"barcode" or "bar code"	"brocade"	pre-brocade-barcode rule	--	"The brocade schlurps and reorganizes into something flatter, but with the same pattern[if player does not have brocade and player does not have barcode]. You pick it up. [end if]."	true	348123886
dry cake	keycard	"keycard" or "key card"	"dry cake"	pre-drycake-keycard rule	--	"The dry metallic cake turns into a dry metallic keycard[if player does not have dry cake and player does not have keycard], which you take for yourself. Hooray, technology[end if]."	true	430644834
antlers	rentals	"rentals" or "rental"	"antlers"	--	post-antlers-rentals rule	"Suddenly, a pair of workers walk in, point to their watches, takes the antlers down with a twist of a screwdriver, and walk off with them[if bastion-evac is true]. You smile and nod, but they have already left. Shame on the hosts, for pretending that ugly expensive thing was theirs[else]. People mumble but stay. The free food and alcohol overcome moral imperatives to shun the fake-rich, for now[end if]."	false	537423061
neon pig	gin nope opening	"opening"	"neon pig"	--	--	"[if player is on cafe face]Remembering basic electric safety rules and common sense, you move to the side before trying your magic. This saves your bacon. [run paragraph on][end if]The neon pig goes on the fritz, sparking first, then making a big POP. The neon is none! It appears you've created an opening. A warning written on it makes it a gin-nope opening. Anyone operating there will need to be sharp.[paragraph break]Now you're bakin[']. Uh, cookin[']. (Okay, no more hamming it up.)"	false	499032209
siren	resin	"resin"	"siren"	--	post-siren-resin rule	"The siren makes some even more spastic noises before grinding into resin powder. You scoop it up and put some on your hands, which feel sticky now. You feel your chances of defeating the [beast-beats] has risen, unless you rinse."	false	423304232
beats	beast	"beast"	"beats"	pre-beats-beast rule	--	"'Our beats! Saboteur!' you hear as a beast replaces the thumping with roaring, which stops when the thing needs to breathe. It's an improvement. For your chance to best a beast."	false	347796816
words	sword	"sword"	"words"	pre-words-sword rule	--	"[if player has sheath]The words go slippery, claiming they didn't mean themselves, giving passive-aggressive threats. But it is too late--they fade, and a sword appears materially.[paragraph break]You sensibly put the sword--as slippery as the final words--into your sheath[in-sheath][else]The words explode from the noise bag, which is blown away by the [which-roar]. In their place is a shining sword that [give-sword][end if]."	false	384914208

this is the post-drainage-gardenia rule:
	if A reading is in Undesired Underside, say "The/a reading blows away once the gardenias appear.";
	moot a reading;

this is the pre-lostcorn-controls rule:
	if bastion-evac is false and lost corn is touchable, say "The dead beat deadbeat might not beat you dead, but you'd get maligned ere legerdemain.[paragraph break]In other words, you probably need to gain the deadbeat's trust before taking any stuff." instead;

this is the pre-heaths-sheath rule:
	if player is in Fo Real Florae:
		if fairy-worthy is false, say "The heaths [no-stealing-flowers]." instead;
		if begonias are not in Fo Real Florae, say "You already got the begonias--don't mess with the merchandise." instead;
		if player does not have heaths:
			try taking heaths;
		say "[modest-around-faeries].[line break]";

this is the post-heaths-sheath rule:
	now player wears sheath;

this is the pre-begonias-noisebag rule:
	if the player's command does not include "noise", say "Yes, the begonias should become a bag, but you need to state what sort fully. Magic isn't THAT easy." instead;
	if player is in Fo Real Florae:
		if fairy-worthy is false, say "The begonias [no-stealing-flowers]." instead;
		if heaths are not in Fo Real Florae, say "You already got the heaths--don't mess with the merchandise." instead;
		if player does not have begonias:
			try taking begonias;
		say "[modest-around-faeries].[line break]";

this is the pre-brocade-barcode rule:
	if player does not have the brocade:
		say "You take the brocade first--you're a bit embarrassed your magic seems more, well, applied than theirs.";
		try taking brocade;
	if player is in Fo Real Florae:
		say "[modest-around-faeries].[line break]";

this is the pre-drycake-keycard rule:
	if bastion-evac is false and dry cake is touchable:
		say "[one of]The poses posse would have something to talk about at their next get-together. Like the weirdo who did something scary to that cake and got arrested.[paragraph break]So, though you never know when a keycard is handy, Ix-nay on the agic-may [']til they're gone[or]This would create quite a (negative) scene with people still in the bastion[stopping].";
		preef keycard;
		do nothing instead;

this is the post-antlers-rentals rule:
	moot rentals;

this is the post-siren-resin rule:
	if resin is touchable:
		moot resin;
		now stickyhanded is true;

to say beast-beats: say "[if beast is touchable]beats[else]beats".

this is the pre-beats-beast rule:
	if player is not in Bassy Abyss:
		if beats are touchable:
			say "That might unleash a beast on innocent citizens. If there is one, you must face it in its own lair.";
		else:
			say "Why bring the beats in here, where it's quiet?";
		preef beast;
		the rule fails;
	if siren is not moot or sword is not touchable:
		say "You don't feel prepared to face a beast yet.";
		preef beast;
		the rule fails;

this is the pre-words-sword rule:
	if player is in Bile Libe:
		if player does not have sheath:
			if player has noise bag:
				say "The words become nastier for a second, forming into a sword, which heads for the noise bag. You're worried the sword might tear the noise bag apart, but before that happens, the sword dematerializes back into words.[paragraph break]It was the wrong shape for the bag, anyway. Maybe the bag could hold the words if you just [b]OPEN[r] it, though, being a noise bag.";
				preef sword;
				the rule fails;
			say "The words become a sword, too large and terrifying to carry. The talk resumes as the sword disappears. You'll probably need something to put the sword, or the words, in.";
			preef sword;
			the rule fails;
		continue the action;
	if player is not in Bassy Abyss and player does not have sheath, say "The words are sharp enough, but you have nothing to hold a sword in." instead;
	if player is not in Bassy Abyss, say "[if player has noise bag]The time's not right, yet. There's no threat near you[else]You can't go carrying a sword about the city. You don't need to attract attention[end if]." instead;

to say in-sheath:
	now sword is contained in the sheath;

to say which-roar:
	moot noise bag;
	say "[if beats are touchable]loud beats[else]beast's roaring[end if]"

to say give-sword:
	if stickyhanded is true:
		say "leaps into your hand";
		now player has the sword;
	else:
		say "jumps and slides out of your hand";
		now sword is in Bassy Abyss;

to say modest-around-faeries: say "You turn your back and focus so the faeries can't see you mangle their gift. Or so they aren't jealous, or they don't laugh at how dumb your magic is"

to say no-stealing-flowers: say "are (still) merchandise. You don't want to find out what faeries do to vandals, or shoplifters, or combinations thereof"

book Resort

table of Resort anagrams [xxtra]
the-from	the-to	exact-text (topic)	text-back (topic)	pre-rule	post-rule	from-msg	force-take	hashkey	vanish	to-room
tiles	teleporter	"islet"	"tiles"	a rule	a rule	"The tiles crumble and shift around and spread across the floor of the altars! The stile blossoms into a tree. The ground turns softer under you"	false	425996778	false	Leis Isle
l2	lies	"lies"	"lies"	--	post-leis-lies rule	"'Lies! LIES! LIES!!!!' you cry. Who could've put those leis there to make you lazy and content? Lessie Li? Lee Silis? Les Iseli? Elise Lis? Lise Seil? Ilse Elis? Eli Siles? All of them? Whoever they are, the leis they made dissolve. You see the isle for what it is. Of course it was too good to be true. The final fight lies ahead!"	false	322886760 [bold-ok]
rock	cork	"cork"	"rock"	--	post-rock-cork rule	"The rock grows a few holes and immediately becomes lighter. You can probably pick it up easily now. You do."	true	231615143
swing	wings	"wings"	"swing"	--	post-swing-wings rule	"The old swing's ropes defray and the seat somehow transmogrifies. You see a pair of wings. They don't look like they'll last too long, but they're better than nothing. You take them."	true	350708795
sprig	grips	"grips/grip"	"sprig"	--	post-ropes-grips rule	"The fragile sprig pops into a pair of suction grips, which you take[tool-clue]."	true	340656276
spore	ropes	"ropes/rope"	"spore"	--	post-ropes-grips rule	"The spore grows more quickly than you could imagine, into a couple of long ropes tied together. You wind one around your waist[tool-clue]."	true	465222414
poles	slope	"slope"	"poles"	--	post-poles-slope rule	"The poles rumble and slide. You run away, fearing they come crashing down on you--but when they stop, you're a bit disappointed to see they're still at a forty-five degree angle."	false	433712450
tool shed	toeholds	"toeholds/toehold" or "toe holds/hold"	"toolshed" or "tool shed"	--	post-toolshed-toeholds rule	"That'll do it! The tool shed crumbles, leaving only the small outcroppings--which somehow fly into the [holds-1].They're plentiful and stable. You could probably climb up now[if poles are touchable] if the poles weren't so vertical[end if][ropes-grips-lying]."	false	588020474
riot	protest	"trio"	"riot"	--	post-riot-protest rule	"Your word seems to have no effect. But that's just because the least enthusiastic people in the back leave first. Others follow--one of them even drops some chain links. And soon, just three people remain. The most energetic and dedicated, of course, but altering that triangle can't be too hard. While it's still a protest, they don't seem fully into it."	false	307779244
protest	potters	"potters/potter"	"protest" or "riot"	--	post-protest-potters rule	"The trio grows even more lethargic. A fellow in a smock mocks the whole charade before throwing the smock in a corner. He talks with his two friends[if kilns are touchable]. Shortly, they see the kilns nearby. They go to work happily[else]. They still aren't happy, though. They'd sort of like something to do that'll help them forget their protesting phase[end if]."	false	671442450
chain links	china	"china"	"china"	pre-chain-china rule	post-chain-china rule	"The chain, or part of it, bursts into fine china, which rolls away from you. 'Hi, can...?' [if potters are touchable]The potters take it immediately--'Hm! Not our thing, but very nice! If only we had something to make pottery with!' [else if protest is touchable]The protesters pocket the china interestedly, saying they won't be bribed, but they did seem artsy enough to appreciate the design. [else if riot is touchable]The crowd immediately tramples the china, then blames you for causing them to. [end if]Maybe you can do something with the links as well."	false	172376056
chain links	kilns	"kilns/kiln"	"links"	--	post-links-kilns rule	"The links burst and swell into luxury kilns[if potters are touchable]. 'Ohmigod! I--hm, good!' yells one of the potters. 'This is the Mark 9000 brand with wheels underneath for easy mobility! Wow, I--I don't know why we ever protested you! We really must've had nothing better to do! Hm, the clay's scaly, but that's not your fault!'[else]. The yelling's loud as ever but increasingly directed at the kilns and not you. The protest seems distracted.[end if]"	false	316921337

this is the post-leis-lies rule:
	moot lies;
	now found-lies is true;

this is the post-rock-cork rule:
	if swing is not moot, now swing is LLPish;
	note-isle-left;

this is the post-swing-wings rule:
	if rock is not moot, now rock is LLPish;
	note-isle-left;

this is the post-ropes-grips rule:
	process the realize-rived-drive rule;

to say tool-clue:
	if grips are touchable and ropes are touchable:
		say ". The combination of grips and ropes is probably enough to make climbing gear[if tool shed is touchable]. You can probably try to mess with the tool shed, but it doesn't seem like you need to[end if]";

this is the post-poles-slope rule:
	if toeholds are part of the poles, now toeholds are part of the slope;
	process the realize-rived-drive rule;

this is the post-toolshed-toeholds rule:
	if sprig is not moot, now sprig is LLPish;
	if spore is not moot, now spore is LLPish;
	if sprig is moot, min-up;
	if spore is moot, min-up;

to say holds-1:
	reg-inc;
	if poles are touchable:
		say "poles";
		now toeholds are part of the poles;
	else:
		say "slope";
		now toeholds are part of the slope;

to say ropes-grips-lying:
	if ropes are touchable and grips are touchable:
		say ". You probably don't need those tools you made";
	else if ropes are touchable:
		say ". The ropes won't be necessary";
	else if grips are touchable:
		say ". The grips won't be necessary";

this is the post-riot-protest rule:
	now chain links are in Potshot Hotspot;

this is the post-protest-potters rule:
	if potters are in Potshot Hotspot and kilns are in Potshot Hotspot, hello-bull;

this is the pre-chain-china rule:
	if china is moot, say "You already shook that out of the links. You need to concentrate on the links, now." instead.

this is the post-chain-china rule:
	min-up;
	now links are in Potshot Hotspot;
	moot china;

this is the post-links-kilns rule:
	if china is not moot, poss-d;
	process the post-protest-potters rule;

this is the realize-rived-drive rule:
	if grips are in Rived Drive and ropes are in Rived Drive and slope is in Rived Drive:
		now slope is realized;
		now grips are realized;
		now ropes are realized;

book auxiliary text and rules

section ordeal loader auxiliary

section forest auxiliary

section sortie auxiliary

section metros auxiliary

section resort auxiliary

to note-isle-left:
	now exits-text of Leis Isle is "";
	unless swing is moot and rock is moot:
		say "The [noun] will get you out of here, but there's a bit more to clean up, if you want.";
		continue the action;
	if l2 is not moot:
		say "There's something weird about this isle you can't put your finger on. It's not critical, but maybe there's more to do, in addition to finding multiple ways of transport out."

book general auxiliary rules

volume specific help for things you need to flip

[We need a non-backdrop first here, or the compiler complains.]

table of ordeal loader spechelp
xtrhelp	helptxt
odor	"The odor doesn't seem too complex. You pause. You can figure what it should be."
bolt	"You think back to a combination lock you had with, well, forty cubed possibilities. Only, hmm--twenty-four, here."
bulge	"The bulge swells and makes a squeal, like it's trying to make music."
toga	"The toga blows in an unseen breeze, exposing what's written on it a bit more."
reed	"The reed blows in an unseen breeze."
sent nets	"The sent nets rustle slightly."
nametag	"The nametag peels infinitesimally."
static	"You [if attics are moot]don't think you can change it to anything but the attics[else]think a bit, and the static seems like a bad extension to the doll house[end if]."
attics	"Hm, you can't think of anything to do with the attics but change them back."
acne bit cabinet	"The cabinet wobbles a bit."

[note: the cabinet moves between regions, so it appears twice.]

table of stores spechelp
xtrhelp	helptxt
Store B	"You smell a variety of fruits and feel a cold blast, but nothing definitive happens--yet."
Store F	"That seemed right but not quite natural."
Store I	"Store I shakes a bit. 'RISE TO...' you think, as you see red. Rise to what?" [bold-ok]
Store M	"Store M shudders slightly. You wonder what sort of rapid transit is behind it."
Store R	"Store R remains impassive. 'Or rest?' you muse. You're sort of ready for vacation, and sort of not."
acne bit cabinet	"The cabinet wobbles a bit."

table of forest spechelp
xtrhelp	helptxt
slit	"The slit waxes and wanes a bit."
ones	"The ones rattle a bit. Maybe you can sense out what they should be."
dashes	"The dashes seemed to rattle a bit, but you feel slightly uncool."
noughts	"Hmm. The noughts rattled, but nothing. Perhaps the elegy will help you."
banshee	"The banshee whines, sure someone is trying to kill it! Or send it to a lower ring of the death-kingdom."
liches	"The liches whine, sure someone is trying to kill them! Or send it to a lower ring of the death-kingdom."
bread	"A few crumbs fall from the bread and leave a scuzzy growth before vanishing."
livers	"The livers seem to prick you for a moment, as if to say you're not quite right."
sliver	"The sliver seems to bend, but it snaps back[unless drapes are moot]. As if it's impatient to do or be more, but it hasn't served its purpose as-is, yet[end if]."
spread	"As you ponder the spread, it turns bright red and burst into something else--a red asp! You jump away[red-to]."
red asp	"The red asp strikes at something you can't see, unaware it's you that's trying to change it."
Spam	"Nothing happens, but you think you can make out odd shapes in the Spam for a moment."
vowels	"The vowels continue to howl in defiance. OU...AIE...like a wild animal." [bold-ok]

table of sortie spechelp
xtrhelp	helptxt
hoses	"Something leaks out of the hoses. Hm. What else can be rubber, now."
cask	"[if sack is moot]You doubt the sack/cask has a triple purpose[else]Nothing happens. Maybe you are trying to do too much to change the cask[end if]." [sortie]
sack	"You doubt the sack/cask has a triple purpose."
warts	"The warts itch slightly."
t-n	"The nick blurs a little but snaps back to normal."
poem	"[if poem is not folded]You need to fold the poem into a plane before you can try that[else]The plane can probably become something else, but not that[end if]."
CATHOUSE	"The [cathouse] suddenly smells a bit spicier."
roadblock	"The roadblock changes all the colors of the rainbow, but none seem appropriate."
grist	"The grist looks a bit less bland."
cake pan	"It's a cake pan, backwards and forwards."
skate	"You thought you smelled meat there, for a minute. Hm."
tall trio	"The tall trio seem to look interested for a minute."
spearman	"The spearman's smile seems to get a bit cheesier--you may or may not need to try a few other pre-names."
taco	"Weird. The taco almost seemed to grow arms, or even sleeves."
cult tee	"The cult tee seems to vegetate there. Change things around and it may become something."
r2	"[m-r-almost]."
m2	"[m-r-almost]."
scraped wall	"Hm, yes, a haywall might become something more passable, if you muddle it right."
anapest	"You think you had the right idea, but your execution was poor. Maybe be more workmanlike."
smilies	"The smilies momentarily grow eyebrows that point aggressively, then vanish."
hoots button	"You suppress a few minor swears as you realize that can't be right."
trees button	"Hmm, that doesn't work, but you bet you can bull your way through things."
oils	"[if player is not in moor]The oils need a purpose--to build something great. You don't want to waste them[else if soil is touchable]No, that wouldn't need the soil as a foundation[else]The oils could change the moor into something more fertile, but not that[end if]."

table of metros spechelp
xtrhelp	helptxt
drainage	"The drainage bubbles a bit."
motto	"Hm, you maybe could bend the/a motto a bit differently."
brocade	"The brocade design seems simple, yet complex, and perhaps you don't have to change a lot."
lost corn	"You thought you heard electronic beeping from the corn."
heaths	"You stare at the heaths, picturing them in the circle and wondering which is the 'starter.'"
begonias	"The begonias seem quiet. Almost too quiet. But surely you can find something to do with them."
antlers	"You could've sworn you the thing grew eyelids! And the eyes moved, begging you for any excuse it doesn't belong here!"
dry cake	"You feel like you can almost identify what the cake can become."
clover	"The clover seems overcome with fuzz for a moment--but no, you missed a little something."
words	"The words [if words are in noise bag]slash at the bag a bit[else]seem to whizz around the air a bit[end if], but they aren't tempered into something that can really do damage."
beats	"The beats shift up for a second."
siren	"The siren continues to blind you--like it's throwing dust in your eyes."
neon pig	"The neon pig blinks as if in last-ditch defiance."

table of resort spechelp
xtrhelp	helptxt
tiles	"The tiles rattle as if to shift but settle down."
swing	"The swing goes slightly airborne."
l2	"You feel about to reveal an uncomfortable untruth, yet you also feel a bit of relief."
tool shed	"You hear an unseen hinge neigh as if in defiance. You may be getting somewhere, here."
rock	"Hmm, a rock, but only so much you can do with it."
sprig	"The sprig seems to grow less fragile for a moment."
poles	"The poles start to bend at an angle--or maybe that's the light."
spore	"You briefly wonder what the spore could grow into, given time. Time you don't have. Maye something circular, or something long and stringy."
protest	"The protesters mumble at you for trying to exert mind control. You've struck a nerve."
chain links	"The links rattle slightly. Perhaps they are chaining others['] creativity as well as your own[if china is moot], and maybe the links have artsy potential beyond the china you made[end if]."
riot	"The riot's still a crowd, and a big one, too."

to say m-r-almost:
	if moor is visited:
		say "The [if player is in moor]moor[else]room[end if] sways a bit. You do some brief mental calculation. There's no third place between the room and the moor";
	else:
		say "You almost feel something picking you up for a second. You must have been close"

to say red-to:
	now red asp is in Emptiness Sepiments;
	set the pronoun it to red asp;
	moot spread;

definition: a thing (called itm) is all-around:
	if itm is r2 or itm is t-n or itm is m2, yes;
	no;

to say where-pull of (itm - a thing): say "[if itm is all-around]all around[else][the itm]";

to say spec-help of (itm - a thing):
	if itm is begonias:
		if player has heaths or player has sheath:
			say "You made your choice.";
			continue the action;
	if itm is heaths:
		if player has begonias or player has noise bag:
			say "You made your choice.";
			continue the action;
	if itm is oils and oils are not in cask:
		say "You should possess the oils before doing anything with them[if player is in Sacred Cedars]. As for changing Lois, the provider of the oils? Very unlikely indeed[end if].";
		continue the action;
	let got-spec be false;
	repeat through spechelp of mrlp:
		if itm is xtrhelp entry:
			now got-spec is true;
			if point is true:
				say "[helptxt entry][line break]";
			if point is false or debug-state is true:
				say "[if point is true]DEBUG NOTE FOR WHAT IS SEEN IN RELEASE: [end if]You feel a slight psychic push-pull coming from [where-pull of itm]. Keep at it.";
			d "There is a spechelp entry for this.";
			break;
	if got-spec is false: [this should not happen, but it was useful weeding out clues.]
		d "Add something to the [spechelp of mrlp] for [the itm], maybe? Search for to[r]sh.";
		say "You feel a slight psychic push-pull coming from [where-pull of itm]. Keep at it.";
		say "[line break](NOTE: I forgot to provide a specific clue, here. Can you let me know about [the itm] at [email]?)";
	if pointcue is false:
		say "[i][bracket]NOTE: You can toggle detailed nudges when you're on the right track with [b]OPT IN[r][i] (to get them) and [b]NO TIP[r][i] (to hide them,) though they may give more hints than you want. You will always get this generic message, at least, in any case.[close bracket][roman type][line break]";
		pad-rec "opt in/no tip";
		now pointcue is true;

volume done rejects

table of ordeal loader done rejects
donething	donemsg
OR DO door	"The door is probably the way out. Best not change it into something else."
bugle	"The bugle emits a sad 'don't change me back' noise."
goat	"The goat is happy as-is. No need to go tag a ..."
deer	"The deer is very peaceful. You dere-n't disturb it."
nest	"The nest just looks right here, now that you summoned it."
gateman	"Don't scramble the gateman. He's here to help."

table of stores done rejects
donething	donemsg
scented descent	"The scented descent to the forest doesn't need to be changed. What's behind it, does."
posted depots	"The posted depots doen't need to be changed. What's behind them, does."
trade tread	"The trade tread doesn't need to be changed. What's behind it, does."
ogled lodge	"You already made passage to the ogled lodge. It's good enough. Why change it?"

table of forest done rejects
donething	donemsg
nose	"Don't get that nose bent out of shape."
shades	"Anything you do to bend the shades might break them."
shotgun	"Anything you do might violate firearm safety rules, or something."
beard	"For a beard, it's actually pretty cool."
maps	"The maps are probably right, you hope. No need to change them."
chisel	"It's a perfectly good tool. Trying to refine it might break it."
drapes	"They look forbidding, but you might turn them into something worse. Maybe you can just dispose of them physically."
silver	"Hard to beat silver. It's what it should be."
wolves	"You can't change them back. But maybe you can get rid of them. You do have a weapon."

table of sortie done rejects
donething	donemsg
HOTSAUCE	"[keep-food-simple]."
parmesan	"[keep-food-simple]."
steak	"[keep-food-simple]."
lettuce	"[keep-food-simple]."
tortilla	"[keep-food-simple]."
grits	"[keep-food-simple]."
pancake	"[keep-food-simple]."
coat	"No need for fashion tweaks."
straw	"The straw remains motionless."
peasant	"The peasant doesn't need to change himself. Just his possessions. Maybe you can trade."
black door	"The black door just sits there."
missile	"The missile emits an almost giggly sound but doesn't actually change."
panel	"The panel bleeps a 'stop that' sort of warning."
hallway	"You already have a passage east. Don't close it."
silo	"That silo was pretty big. You probably have little more to do with the oils."
soil	"The soil is right as-is, but maybe something can go on it."
steer button	"No, the steer button [b]HAS[r] to be right."
shoot button	"No, the shoot button [b]HAS[r] to be right."

table of metros done rejects
donething	donemsg
gardenia	"The flowers are fine as-is."
tomato	"It's pretty gross, but you can't really change it. Maybe it can gross someone, or something, else out."
Velcro	"The Velcro remains tangled."
controls	"The controls stay as they are."
barcode	"The barcode does not shift."
keycard	"The keycard remains stiff. Looks like it's as it should be."
gin nope opening	"You don't need to close up the opening. [if controls are not in gin nope opening]Maybe put something there[else]You don't need to close up the opening. The controls are in, and they fill it well enough[end if]."
sheath	"The sheath remains still."
noise bag	"The noise bag rumbles ominously. Best not change it into something worse."
sword	"Meddling with the sword right now, you're worried it might poke you."
resin	"You could use the resin's stickiness right now."
beast	"You've changed the beats to something tangible, physically beatable."

table of resort done rejects
donething	donemsg
cork	"Your head swims then sinks as you realize the cork can't become much else."
wings	"The wings should be able to propel you enough."
toeholds	"The toeholds could be handy for getting up and out of here."
slope	"You wouldn't want to make the slope crumble away."
ropes	"The ropes are useful for climbing, which you need to do to get east."
grips	"You can't get ahold of anything that would be more useful than the grips."
protest	"You can deal with three people. But you'll have to change their motivations."
potters	"You've changed the potters enough. Now you need to give them something interesting to do besides protest."

to say keep-food-simple: say "Best not to get too crazy with food preparation"

volume table of hints

table of general hintobjs
hint-entry	advice-entry	parallel-entry
yourself	"[if cur-score of Ordeal Loader is 0]Try hinting objects around you instead[else]You have the ability to anagram things[end if]."
redness	"Redness means all the letters in a word are wrong, compared to what something should become. E.g. [b]GNAT[r] <-> [b]TANG[r]."
dope tan notepad	"You will write procedural things in your notepad as you get them."
acne bit cabinet	"[if gateman is off-stage]You need someone who will let the cabinet trust you. Maybe your nametag can help.[else if Trips Strip is unvisited]You can take what you want from the cabinet with no penalty.[else][one of]The cabinet seems wounded. Maybe you can help it not be acne-bit.[plus][or]The acne-bit cabinet is a LLP and maybe a slightly tricky one, because it refers to a brand name that has become a word.[plus][or]A healing solution that has no letter slots in common with if you [b]READ[r] the cabinet will work. You could also scan the cabinet for clues, of course.[plus][or][b]BACTINE[r].[minus][cycling]"
cratered bits	"The cratered bits make the cabinet acne-bit and clue what it can become[if Trips Strip is unvisited] once you start your main quest[end if], since they are red, and red means no letters are right."

table of ordeal loader hintobjs
hint-entry	advice-entry	parallel-entry
name list	"The list hints what [this-game] is all about."
vacate caveat	"The vacate caveat has advice. Not very good advice, but it gives you an idea of where to go. It is a clue what [this-game] is all about."
odd side passage	"You can [b]ENTER[r] the odd side passage, or go [b]IN[r]."
odor	"[one of]What can the odor turn into? Your random thoughts are not so random.[plus][or]The clues and distractions collapse to anagrams.[plus][or]If you get to the end, you'll notice two rather forced ones. They both anagram odor. What else do they anagram?[plus][or]A door.[minus][cycling]"
musical chord	"The chord clues what to do [if bulge is moot]with the bugle[else]with the bulge[end if]."
bulge	"[one of]You don't have any key, but that bulge shouldn't be part of the door.[plus][or]The musical chord is a clue.[plus][or]You want to change the bulge into a [b]BUGLE[r].[minus][cycling]."
bolt	"[one of]You don't have any key, but that bolt is stopping the door from opening.[plus][or]You want to change the bolt into a [b]BLOT[r].[minus][cycling]"
blot	"The blot is there to clue [if bugle is touchable]making the bugle[else]what the bulge could become[end if] for a bonus point. It's not useful by itself, but it can't hinder you as the bolt did."
bugle	"You [if bolt is moot]can just walk through the door. If you hadn't gotten rid of the bolt, you'd need to[else]can[end if] [b]PLAY[r] the bugle to go through the door."
OR DO door	"You can just [b]ENTER[r] the door[if bugle-played is false and bolt is touchable] once you figure how to open it[end if]."
toga	"[one of]The toga can become something else, though it's a bit trickier than the blot to bolt, or bulge to bugle.[plus][or]What could the toga become that might eat through the thickets?[plus][or]The toga can become a [b]GOAT[r].[minus][cycling]"
reed	"[one of]The reed can become something else. Something that fits better with a less swampy area.[plus][or]What could the reed become that might eat through the thickets?[plus][or]The reed can become a [b]DEER[r].[minus][cycling]"
shrub	"The shrub and brush clue[unless goat is off-stage]d[end if] you to what you need[unless goat is off-stage]ed[end if] to do with the toga."
brush	--	shrub
sent nets	"[one of]The sent nets are a bit of an eyesore, though they're not ruining anything, and they don't trap you from getting out. Still, you may see what you can do with them.[plus][or]The sent nets don't really belong in a nature area, but something spelled similarly does.[plus][or]The sent nets can become a [b]NEST[r].[minus][cycling]"
nest	"You changed the nets to the nest, and that's enough."
goat	"The goat's done its job."
deer	"The deer's done its job."
magenta nametag	"[if notices section is unvisited]You don't need to do anything with the nametag yet, but it's an important introductory puzzle.[else][one of]The magenta nametag needs to become something. Something that can help with the gateway.[plus][or]The broad board, along with trying to enter the gateway, gives hints.[plus][or]Mt. Agena/Egana, a tan gem, and the mega-ant are clues due to their redness that say what you want is -A---A-. You can look up more or note you're dealing with a gate.[plus][or]Thus, you must summon a [b]GATE MAN[r]. With or without the space.[minus][cycling][end if]" [bold-ok]
gadget	"The gadget is kind of complex, so maybe you need to see parts of it."
Recent Center	"The Recent Center tracks the most recent thing you managed to [b]CERTIFY[r] or [b]RECTIFY[r]."
blurb	"Just a riff on what's going on with the gadget."
show hows tag	"The tag provides examples of [b]CERTIFY[r] and [b]RECTIFY[r]."
disclaimer	--	show hows
examples	"The examples show how both [b]CERTIFY[r] and [b]RECTIFY[r] work."
pit	"The tip in the pit controls whether the gadget will [b]CERTIFY[r] or [b]RECTIFY[r]."
tip	--	pit
PHAIL phial	"The blue lube in the phial helps you know what to work on."
blue lube	--	phial
handle	"You need some way to carry the gadget."
s-r	"The [b]SECURE[r]/[b]RECUSE[r] button decides whether you can secure the gadget's current status and recuse yourself from one area, or if you can leave the gadget more flexible and try for both."
arrow	"It's part of the gadget."
tight knot	"It helps the gadget remain tagged."
attics	"The attics can be flipped back to static, if you want."
static	"[one of]It's optional to fix the dollhouse and static. You can use the gadget in the cabinet to figure it out.[plus][or]The dollhouse appears to be missing a top bit.[plus][or][b]ATTICS[r].[minus][cycling]"
doll house	--	attics
gateman	"The tan mage will help you if you ask him about various things."
getaway gateway	"You can enter it[if gateman is off-stage] with assistance from someone else[else if player does not have gadget], but maybe get some stuff to help you first[else] when ready[end if]."
new land	"You can find out once you enter the gateway."
prep paper	"The prep paper gives hints you'll cross off as you finger things."
broad board	"The broad board's advice is very useful[if gateman is off-stage], especially to summon help[else], even now that you've summoned help[end if]."
mega ant	"The mega ant is blocking the gateway, but it's an odd shade of red. That's a hint, from the broad board, of what you need to do, or summon."
saltine	"Eating the saltine will give you one hint."

table of stores hintobjs
hint-entry	advice-entry	parallel-entry
tepid icon depiction	"The tepid icon depiction will give you some hints what to do in the remaining area(s)."
begad badge	"Just a semantic note to try [b]STOREA[r] and not [b]SHOPA[r]."
go rest flier	"Just general encouragement. Store G isn't relevant to the game."
storeall	"Try hinting a single store instead."
disamb-store	"Try hinting a single store instead."
store b	"[one of]Store B offers some sort of food that will boost your spirits.[plus][or]It's a last lousy point, but maybe you can use the gadget to guess it.[plus][or][b]SORBET[r].[minus][cycling]"
marquee	--	store b
store f	"[one of]Store F has some real earth tones.[plus][or]Trees, leaves, mud.[plus][or]There's a [b]FOREST[r] behind it.[minus][cycling]"
roadsign	"The road sign gives a clue as to the nature of Store F."
store i	"[one of]The outline of a trap door is what you need to get to. what word is a synonym for exit and missile launch?[plus][or]The small poem has red writing which will clear which letters don't fit where.[plus][or]You can also use both settings of the gadget to get four letter placements.[plus][or]You need to create a [b]SORTIE[r].[minus][cycling]"
store m	"[one of]Examining the map, it is of Mt. Rose. Which is an anagram for Store M. It looks like you need to get to a subway station or something.[plus][or][if gadget is cert]The gadget tells you M----- if you scan both the store and the map of Mt. Rose[else if gadget is rect]M----S is only so helpful here, but remember a city and its transport system are being portrayed[else]A city and its transport system are being portrayed[end if].[plus][or]You need to discover the [b]METROS[r].[minus][cycling]."[bold-ok]
subway map	"The subway map gives a hint as to what Store M can be."
store r	"[if you-can-advance][one of]You need to get into store R.[plus][or]The roster provides a hint. Where's a place you can rest?[plus][or]Certifying or Rectifying tells the first letter, R, and the next is very likely a vowel, or you get a garbage word.[plus][or]You want to go to a [b]RESORT[r].[minus][cycling][else]You won't need to get into store R until you've solved another area, at least. But you [got-r][end if]."
roster	"The roster is a bit more of a clue for Store R. If you [b]CERTIFY[r] it, it will make things a bit clearer."
scented descent	"Just enter [the noun]."
posted depots	"Just enter [the noun]."
trade tread	"Just enter [the noun]."
ogled lodge	"Just enter [the noun]."
store a	"[no-sto]."
store d	"[no-sto]."
store e	"[no-sto]."
store g	"[no-sto]."
store h	"[nxt-g]."
store j	"[no-sto]."
store k	"[no-sto]."
store l	"[no-sto]."
store n	"[no-sto]."
store o	"[no-sto]."
store p	"[nxt-g]."
store q	"[no-sto]."
store s	"[no-sto]."
store t	"[nxt-g]."
store u	"[nxt-g]."
store v	"[nxt-g]."
store w	"[nxt-g]."
store x	"[no-sto]."
store y	"[nxt-g]."
store z	"[no-sto]."

table of forest hintobjs
hint-entry	advice-entry	parallel-entry
whiff of stew	"[one of]The stew is a clue which way to go.[plus][or]You should go [b]WEST[r].[minus][cycling]" [START FOREST]
thorn	"[one of]The thorn is a clue which way to go.[plus][or]You should go [b]NORTH[r].[minus][cycling]"
rambling shout	"[one of]The shout is a clue which way to go.[plus][or]You should go [b]SOUTH[r].[minus][cycling]"
aroma of teas	"[one of]The aroma of teas is a clue which way to go.[plus][or]You should go [b]EAST[r].[minus][cycling]"
Corses Crosse	"[if Emptiness Sepiments is visited]You can come and go as you need[else]You need a way through Corses Crosse--perhaps you should learn to fit in[end if]."
bread	"[one of]The bread can be changed.[plus][or]It becomes a [b]BEARD[r].[minus][cycling]"
sandwich	"[one of]The sandwich[i-fle] is useful for two puzzles. It has 'the usual two parts.'[plus][or]Take [b]BREAD[r] to separate the sandwich from the Flesh Shelf into bread and Spam.[minus][cycling]"
chisel	"[one of]That chisel might be handy for some items [if player is in Emptiness Sepiments]you'll need to pass the drapes[else]stuck to a wall, or something[end if].[plus][or]What could it [b]PEEL[r]?[plus][or]Either of the livers[i-fle].[minus][cycling]"
liches	"[one of]The liches are a tool of some greater evil, and their descriptions suggest another word.[plus][or]Make them into a [b]CHISEL[r].[minus][cycling]"
River Ville liver	"[put-can]"
viler liver	"[put-can]"
canister	"You can put meat in the canister."
livers	"[one of]Transforming the livers is necessary. The gadget shows all reds, but actually, that's because it's 'easy' another way.[plus][or]If you shift all the letters over one, [b]LIVERS[r] become [b]SLIVER[r].[minus][cycling]"
dashes	"[one of]The dashes[i-gt] can be changed to a disguise piece.[plus][or]You have the beard and nose, so you need something for your eyes.[plus][or]Impractical, but... [b]SHADES[r].[minus][cycling]"
pattern	"The pattern clues what the shades can become."
noughts	"[one of]The zeroes[i-gt] aren't quite zeroes. They're noughts.[plus][or]The zeroes aren't quite zeroes. They're [b]NOUGHTS[r].[minus][cycling]"
ones	"[one of]The ones are pretty yes-or-no.[plus][or]Flip a few bits and you have something else.[plus][or]The ones become a [b]NOSE[r].[minus][cycling]"
bubble	--	noughts
bucket	--	ones
shell	--	dashes
notes stone	"[if nose is off-stage or shades are off-stage or shotgun is off-stage]It's what's beneath the notes stone you need to work with[else]Everything under the notes stone is taken care of[end if]."
shades	"The shades [snb]."
nose	"The nose [snb]."
beard	"The beard [snb]."
skin sink	"The skin sink is just there to hold a few items you need."
grinder	"[if livers are off-stage]You need to put meats in the grinder[else]You're done with the grinder, and it's done, too[end if]."
red ring	--	grinder
blades	--	grinder
elegy	"[if shotgun is off-stage]The elegy, if read correctly, can give you an idea of what the noughts can become[else]The elegy was a hint for the shotgun[end if]."
gy	--	line of no life
line of no life	"[if Emptiness Sepiments is unvisited]The figures going through have certain things in common. If you can imitate them, you can get through, too[else]You don't need anything more from the line of no life[end if]."
slit	"[one of]The slit is optional but not particularly difficult.[plus][or]How could it disintegrate?[plus][or]The slit could become [b]SILT[r].[minus][cycling]"
banshee	"[one of]You don't need to get rid of the banshee to solve the forest, but you can put it even more in the past.[plus][or]What's a name for something that was?[plus][or][b]HAS[r]-[b]BEEN[r]. With dash, space or no space.[minus][cycling]"
spread	"[one of]The [b]SPREAD[r] can become something. Well, by magic. If you fiddle with it, it becomes something else.[plus][or]You can't quite cut the spread as-is, but maybe you could transform it into something less intimidating?[plus][or]You can figure out what the word is from there.[plus][or]The [b]SPREAD[r] becomes [b]DRAPES[r].[minus][cycling]"
red asp	"[one of]The red asp is too dangerous to fight, but remember, it started as a [b]SPREAD[r], also red.[plus][or]Attacking the asp gives another clue, since you turn all red.[plus][or] The asp doesn't leave you feeling very homey.[plus][or]The red asp can become [b]DRAPES[r].[minus][cycling]"
drapes	"[if player does not have sliver]You need something that can cut the drapes[else][b]CUT[r] the drapes with the sliver[end if]."
sliver	"[if drapes are not moot]The sliver can be used to cut something.[else][one of]The sliver is still useful.[plus][or]It can become [b]SILVER[r].[minus][cycling]"
spam	"[one of]The Spam isn't particularly edible.[plus][or]It's more useful as [b]MAPS[r].[minus][cycling]"
silver	"[if silver is part of shotgun]It's ready to fire when needed[else if shotgun is off-stage]It'd be nice to have something to put the silver in[else]Put the silver in the shotgun[end if]."
shotgun	"[if player has silver and silver is not in shotgun]Put the silver in the shotgun.[else if silver is off-stage]You need to create a bullet for the shotgun.[else if wolves are touchable][b]SHOOT[r] the wolves.[else]You need to find a target, one vulnerable to silver, maybe.[end if]"
muzzle	"It's the shotgun you need to worry about."
mis send dimness	"The dimness is treacherous. You'll want to be prepared with a guide and possibly self-defense. Things will only get tougher than the liches."
maps	"[if player is in Ghouls Slough]You need to [b]READ[r] the [b]MAPS[r][else]The maps will be useful to read when you get somewhere unknown[end if]."
vowels	"[one of]The vowels seem to be hiding a great evil, a Halloweeny menace. They seem to be saying 'We're Vowels.'[plus][or]Two solutions: [b]WEREWOLVES[r] or [b]WOLVES[r].[minus][cycling]"
wolves	"They're due for a violent end."
bumps	"The bumps clue what the vowels can become."

table of sortie hintobjs
hint-entry	advice-entry	parallel-entry
dial	"[if centrifuge-stopped is true]You've dealt with the dial.[else][one of]You'll get hints for turning the dial wrong, but the [b]EXITS[r] at right angles are a clue.[plus][or]You need to figure what the right directions are.[plus][or]If you've tried going diagonally, that doesn't work, leaving four possibilities.[plus][or]You can also just think of a number with X in it, with seven letters.[plus][or]Binary search works, too, but the next clue shows how you can get things in one move.[plus][or]The right number is [b]SIXTEEN[r].[minus][cycling][end if]"
trap exits	--	dial
Mean Old Mondale Doleman	"You don't need to do anything directly to Mondale Doleman to get through the sortie."
lid	"The (a) lid is just there to keep the dial from turning."
great grate	"[one of]There's no gateman to help with the grate. But it is made of HECK TIN.[plus][or]You're feeling very hungry. You wish you could go somewhere to eat, or even make something to eat.[plus][or]The tagged gadget gives a reading without you examining anything.[plus][or]This room becomes a [b]KITCHEN[r].[minus][cycling]" [bold-ok]
cell graffiti	"Its redness will help with how to leave the nick."
red inn	"The red inn itself is useless, but the items on it can be manipulated."
skate	"The skate can become steak."
cult tee	"The cult tee can become lettuce."
cathouse	"The [cathouse] can become hot sauce."
spearman	"The spearman can become Parmesan."
tall trio	"The tall trio can become a tortilla."
HOTSAUCE	"Part of a meal."
Parmesan	--	HOTSAUCE
steak	--	HOTSAUCE
lettuce	--	HOTSAUCE
tortilla	--	HOTSAUCE
fridge	"There's stuff in the fridge if you want to be thorough."
cake pan	"[one of]Well, it should be easy to flip the cake pan to something.[plus][or]Namely, a [b]PANCAKE[r].[minus][cycling]"
grits	"That's someone else's food, now. Food left out is a different matter."
pancake	--	grits
trel-priv	"[if scraped wall is touchable]It's the haywall below you need to worry about[else]The trellis isn't important--it just provides scenery[end if]."
hallway	"You changed the haywall to make the hallway. You can just go east."
hay	"[if hay is part of scraped wall]You've used the hay properly[else]You need to stuff the hay somewhere--there's only one hole besides the sack[end if]."
poem	"[if smilies are part of the poem]It's the smilies you need to worry about[else if poem is folded]You changed the poem successfully[else]The poem has no value without the smilies, but the paper it is on can be FOLDed[end if]."
cask	"[if sack is moot]You can change the cask back to a sack, depending on what you need to schlep around.[else][one of]The cask can become something else.[plus][or]Something else that contains things.[plus][or]It can become a [b]SACK[r].[minus][cycling][end if]"
sack	"The sack can contain bulky things, or it can be changed back to a [b]CASK[r]."
hole	"Nothing special, just--it can't be enlarged to fit bulky stuff in."
grist	"[one of]The grist is close to actual food.[plus][or]Namely, some [b]GRITS[r].[minus][cycling]"
warts	"[one of]After a few turns, the warts will bother you.[plus][or] What does the writing on the manila animal say?[plus][or]'No, too stupid a fad. I put soot on...'[plus][or]It's most of a famous palindrome.[plus][or]It begins with [b]STRAW[r].[minus][cycling]"
straw	"You can't use the straw, but maybe you can trade it to someone who can."
hoses	"[one of]Your current footwear isn't cutting it.[plus][or]You need something to keep the wet out. Rubber would work well.[plus][or]The pair of hoses can become...[plus][or]...a pair of shoes.[minus][cycling]"
shoes	"The shoes will help you walk in squishy places[if moor is visited] like the moor[end if]."
taco	"[one of]The taco can become something more substantial for adventuring.[plus][or]You need lasting warmth in [if moor is visited]the moor[else]a location you'll visit[end if].[plus][or]The [b]TACO[r] can become a [b]COAT[r].[minus][cycling]"
coat	"The coat will keep you warm as-is. No need to do much."
anapest	"[one of]The poem you hear is an [b]ANAPEST[r].[plus][or]It's so snotty and elitist, you'd like to change it.[plus][or]Change it to a [b]PEASANT[r].[minus][cycling]"
expo flier	"The flier helps you figure what to change the anapest into."
sc	"The serve verse on the cedar walls gives a rough idea what to do."
serve verse	--	sc
oils	"[if soil is moot][one of]The [b]OILS[r] can be a couple things, but you may want to make a foundation first.[plus][or]The moor's ground won't support anything...[plus][or]...until it becomes more stable [b]SOIL[r].[minus][cycling][else][one of]The [b]SOIL[r] can now support a structure.[plus][or]A structure that could hold farm stuff, or maybe feed.[plus][or]That'd be a [b]SILO[r].[minus][cycling]"
lois	"Lois is the provider of oils."
crashing archings	"Lois caused that, to help you not look backwards."
roadblock	"[one of]The roadblock seems misplaced, almost inviting you to enter.[plus][or]It's also cut 5/9 of the way down.[plus][or]What's an entryway? A [b]DOOR[r].[plus][or]That leaves the word [b]BLACK[r].[plus][or]It's a [b]BLACK DOOR[r]![minus][cycling]"
bright red graffiti	"The graffiti helps you figure what the roadblock is."
hoots button	"[one of]The hoots button isn't up to much.[plus][or]You don't hoot with a missile...[plus][or]...you [b]SHOOT[r].[minus][cycling]"
trees button	"[one of]The trees button isn't much help launching a missile.[plus][or]You don't want that missile going just anywhere.[plus][or][b]STEER BUTTON[r].[minus][cycling]"
steer button	"You should just need to push the [b]STEER[r] button now."
shoot button	"[if missile-steered is true]You should just need to [b]PUSH[r] the [b]SHOOT[r] button now[else]You may want guidance before you [b]PUSH[r] the [b]SHOOT[r] button[end if]."
scraped wall	"[if straw is off-stage]You don't have anything to stuff in the wall. Maybe you can find something. It may be right under your nose. [else if player has the straw or straw is in sack]Hm, the straw is too bulky to fit in the wall. Something like it, perhaps. [else if scraped wall is hayfilled][one of]You stuffed the hay in the wall. What does the gadget offer?[plus][or]The hay wall can become a [b]HALLWAY[r]![minus][cycling][else][one of]The hay might fit in well with the wall.[plus][or]PUT HAY IN WALL.[minus][cycling][end if]"
missile	"[if silo is off-stage]You have nowhere to put the missile, yet[else if black door is not moot]You need a way to open up the silo[else]You should be able to put the missile in the silo now[end if]."
spout	"[if caskfillings is 2]You've gotten all the oil you need[else if caskfillings is 1]You may be able to get more oils[else]you can [b]POUR OILS[r] into the cask from the spout[end if]."
soil	"[if silo is off-stage]The soil is a good foundation for a structure[else]You've built a structure on the  soil[end if]."
Woeful Pat	"Pat's poetry is useless, but its beat isn't."
peasant	"[one of]The peasant has a bunch of hay he doesn't want. Mean Old Mondale-Doleman said it was 'almost the same thing.' [if warts are not off-stage]What could become almost the same thing? The answer's right under your nose.[else]What've you seen that's almost the same thing?[end if][plus][or]The straw[if straw is not touchable] back in [location of straw][end if]. [if sack is off-stage]It won't fit into a cask, but maybe it'll fit into a similar, or similary-spelled, container[else]It can fit in the sack[end if].[plus][or]GIVE STRAW TO PEASANT[if straw is not in sack], once you can transport the straw[end if].[minus][cycling]"
black door	"[if silo is not touchable]You probably need to build a structure to attach the black door to[else if black door is not part of the silo]Just PUT BLACK DOOR ON SILO[else]The black door's okay where it is[end if]."
dashed boundary	"You need to put some sort of door on it[if black door is off-stage], but there are no doors in the moor, yet[else], and maybe that black door will work[end if]."
dotted rectangle	"You need to put something in the rectangle[if panel is off-stage], but nothing is the right size[else], and the panel is the right size[end if]."
silo	"There's a lot to do with the silo--maybe you should hint other items you have, instead."
creases	"The creases indicate the paper has been folded before."
smilies	"[one of]The smilies seem like they don't belong on the page.[plus][or]What'd you hear about weapons that weren't harmful? Killing with love?[plus][or]They can become a [b]MISSILE[r].[minus][cycling]"
panel	"[if panel is not part of silo]How to get the silo working? PUT PANEL ON SILO.[else]The panel is in place.[end if]"
wires	"The wires aren't important. The panel is."

table of metros hintobjs
hint-entry	advice-entry	parallel-entry
drainage	"[one of]The drainage [if flowers is visited]changes into something the faeries want[else]can be cleaned up[end if].[plus][or]Anything would be more beautiful than drainage, especially a flower.[plus][or]You could [if flowers is visited]give the faeries[else]make[end if] a [b]GARDENIA[r].[minus][cycling]"
a reading	"A reading anagrams the drainage, so it gives you a few more clues where letters should be."
gardenia	"[if player is in Fo Real Florae]Try GIVEing the gardenia to the faeries. Either flower you get in return gives a solution.[else]There's a place in this area where you can trade flowers.[end if]"
signers ingress	"[if nerds-unwelcome is true]You got through the [ingress], but you're not welcome back. Still, you got something useful[else if Esoteric Coteries is visited]You can go in and out as you please[else]You'll need the right sort of technology ID[end if]."
tilting titling	"The tilting titling is just there for ambience."
building	"The building has a clue for the drainage, but otherwise, you can just go west to enter it."
friend finder	"[if keycard-put is true]You already figured how to swipe the keycard[else]You will need to swipe ID to get past the friend finder and the signers['] ingress[end if]."
optical beam	--	friend finder
night thing	"You can't kill the night thing on your own. Maybe something equally awful would take care of it?"
smartest mattress	"[if night thing is in The Ol Hotel]You need to get rid of the night thing[else if emitter is off-stage][b]EXAMINE[r] the mattress[else]Nothing left in the mattress[end if]."
cruel ulcer	"That cruel ulcer looks like a weak link. If you could throw something in there..."
ketchup bottle	"The ketchup bottle clues what the night thing likes."
bump	"[b]SEARCH[r] the mattress to find what's in the bump."
clover	"[one of]The clover seems a bit sticky.[plus][or]Maybe you could change it into something even stickier, like...[plus][or][b]VELCRO[r].[minus][cycling]"
leaves	"The leaves['] clinginess clues what the clover should become."
Velcro	"The Velcro, with its hooks, is useful for sticking to something."
string	"The string is probably what the clover's stem was. It keeps the Velcro mittens hooked together."
hooks	--	Velcro
lost corn	"[one of]You haven't done anything with the lost corn yet.[plus][or]The kernels look like buttons.[plus][or]The 'lost' adjective is important.[plus][or]The lost corn can become [b]CONTROLS[r].[minus][cycling]"
discolored buttons	--	kernels
yellow kernels	"The different colored kernels may clue what the lost corn should be."
cordoned red condo	"The cordoned red condo is an area [if cake is not in Obtains Boastin Bastion]where you're not welcome[else]with an item you need[end if]."
library	"[if words are in Bile Libe]You need to capture the words in Bile Libe[else if tomato is in Bile Libe]There's something worth taking in the Bile Libe[else]You've done all you need to in the Bile Libe[end if]."
deadbeat	"[if dry cake is in Obtains Boastin Bastion]The deadbeat would like you to take a stand against the Bastion to the north before you earn anything of value. So you should go north.[else if emitter is ungnatted]You can give the emitter to the deadbeat for a refill.[else]The deadbeat is useless to you now."
controls	"The controls need to fit into a recess[if neon pig is moot], maybe like the one behind the pig[else], but you haven't seen or created any yet[end if]."
emitter	"[if poses posse is in Obtains Boastin Bastion][one of]The emitter is useful to disperse a group of people.[plus][or]Some people are guarding something you want.[plus][or][b]SWITCH EMITTER[r] in [here-there of Bastion], and you can take the dry cake.[minus][cycling][else if player has tulip]The emitter could have been used to get the tulip, as well.[else if emitter is not angstgnatted]You can show the emitter to the deadbeat. The angst gnats are another way through a puzzle.[else]The angst gnats in the emitter can clear out another area for an alternate solution.[end if]"
dry cake	"[one of]The dry cake isn't useful as-is, but it's part of something that will be.[plus][or]The cake becomes a [b]KEYCARD[r].[minus][cycling]"
antlers	"[one of]The antlers are gaudy, and it'd be nice to get rid of them, but you don't have to.[plus][or]The antlers seem like a centerpiece to the Bastion. Maybe you could fix that.[plus][or]Make the antlers [b]RENTALS[r].[minus][cycling]"
keycard	"[if brocade is in Fo Real Florae]You need to change the brocade to put it on the keycard.[else][one of]The keycard's a bit bare as is. But the brocade you have could liven it up.[plus][or]What's white with lots of black lines and a few numbers below?[plus][or]That'd be a [b]BARCODE[r].[plus][or]You'll need to [b]PUT BARCODE ON KEYCARD[r].[minus][cycling][end if]"
poses posse	"[one of]The poses posse guards the dry cake. Until the posse is gone, you can't take it.[plus][or][if player has emitter][b]SWITCH EMITTER[r] to disperse the poses posse[else]You don't have what you need to get rid of the poses posse, yet. Check The Ol['] Hotel[end if].[minus][cycling]"
lease easel	"The lease easel just [if motto is in Bile Libe]held[else]holds[end if] the (a) motto."
motto	"[one of]The, I mean, a motto probably belongs in the trash in the long term. But it's helpful to you.[plus][or]Who's it by? Too-Apt Pa Otto. How does the song go?[plus][or]Potato, ...[plus][or][b]TOMATO[r].[minus][cycling]"
tomato	"The tomato is rotten enough that throwing it at something may send them off-stage."
words	"[if player is in Bassy Abyss]This is the place to change the words[else if begonias are in Fo Real Florae and heaths are in Fo Real Florae]What you do with the words depends on what reward you get from the fairies[else if heaths are in Fo Real Florae]Since you got the heaths, you can change the words right away[else]With the begonias, you can't change the words until the end of your adventure[end if]."
sword	"[if beast is touchable and siren is not touchable]Attack the beast[else if beast is touchable]You need a better grip on the sword[else if sheath contains sword]You should draw the sword around the source of the noise[else]The sword can't be used, yet. You can't go waving it in the city[end if]."
brocade	"[one of]The brocade isn't really magic, but it can become technological magic.[plus][or]What else is white and black?[plus][or]You can make a [b]BAR CODE[r], no space necessary.[minus][cycling]"
adhesive backing	"Useful once you find something to attach the barcode to."
barcode	"[if barcode is part of the keycard]The barcode is now fully scannable[else if player does not have keycard]You need to find something that will hold the barcode[else]PUT BARCODE ON KEYCARD[end if]."
merchandise	"You only need the heaths or begonias."
heaths	"[one of]You can change the heaths into something that can hold something you can change the words into[if player has tagged gadget]. The tagged gadget turns up all reds, but it can't detect letter shifts[end if].[plus][or]Make a [b]SHEATH[r].[minus][cycling]"
stems	"The stems clue what the heaths can be."
begonias	"[one of]Two words on the gadget. Something that holds something.[plus][or]Also, one word is related to sound.[plus][or]Create a [b]NOISE BAG[r].[minus][cycling]"
noise bag	"[if player is in Bile Libe and words are in Bile Libe][b]OPEN[r] the noise bag to get the words.[else if words are in Bile Libe]The noise bag, if opened, can contain sounds.[else if player is in Bassy Abyss and beast is in Bassy Abyss]You can [b]OPEN[r] the noise bag to defeat the beast.[else if player is in Bassy Abyss]The words in the noise bag can't match up to the beats, but they could, to something physical.[else]You don't need to open the noise bag yet.[end if]"
faeries	"The faeries want a flower. [if player has gardenia]You have one in your inventory[else]Maybe you can clean up some place in the city to get one[end if]."
torn cue	"It indicates the brocade [if brocade is in Fo Real Florae]is[else]was[end if] free."
sheath	"[if player is in Bile Libe and words are in Bile Libe][one of]What fits in a sheath?[plus][or]Make a [b]SWORD[r].[minus][cycling][else if words are in Bile Libe]You need to find something to put in the sheath. Try the Bile Libe.[else if player is not in Bassy Abyss]You've got no good place to use the sword.[else]You can [b]TAKE SWORD[r] once you're ready.[end if]"
Memo Tote Tome	"Examining, if not reading, the Memo Tote Tome gives clues what to ask the nerds about."
lit up tulip	"The lit-up tulip [if player is in Bassy Abyss]is providing light[else]can provide light[end if]."
nerds	"[one of]There are alternate ways through, but the most straightforward is to [b]ASK NERDS[r] the right question.[plus][or]The nerds won't let you have the lit-up tulip, until you prove you're smart enough to ask about the right thing.[plus][or]The lit-up tulip gives light, and east of Elm Train Terminal is...[plus][or][b]DARKNESS[r].[plus][or]ASK NERDS ABOUT DARKNESS.[minus][cycling]"
neon pig	"[one of]That neon pig needs to go. For aesthetic and technical reasons.[plus][or]You can scan it, and that gives you some information.[plus][or]You'd rather have nothing there than the pig, too.[plus][or]It can become an [b]OPENING[r].[minus][cycling]"
cafe face	"You can climb up the cafe face with [if player has Velcro]your Velcro[else]something sticky or clingy[end if]."
instructions	"Just a little something to make it plausible to muddle with the controls."
tracks	"[if power-shut is true]You can go east on the tracks now[else]You'll need to find how to make the tracks stop fizzing[end if]."
gin nope opening	"[if controls are part of gin nope opening]You've fixed the power.[else][one of]The opening at the top of the cafe face is interesting.[plus][or]It appears to have a bunch of circuit-ends, etc.[plus][or]The controls can override the power surge to the east.[plus][or]PUT CONTROLS IN OPENING.[minus][cycling][end if]"
siren	"[one of]The siren is irritating.[plus][or]You can disable it and make something you need.[plus][or]It becomes [b]RESIN[r].[minus][cycling]"
resin	"With the resin on your hands, you can get a better grip on things. You don't need to do anything."
hilt	"[if siren is in Bassy Abyss]The hilt is too slippery to grab[else]Now that you got the resin, you can grab the hilt--and the sword[end if]."
beats	"[if player is not in Bassy Abyss]Nothing to do about the beats until you get to the source.[else]The beats can be changed into a [b]BEAST[r].[end if]"
beast	"You need to attack the beast with a weapon! You [if sword is off-stage]don't have one[else]can use your sword[end if]."

table of resort hintobjs
hint-entry	advice-entry	parallel-entry
tiles	"[one of]Hm, weird colored tiles. Blue all around. Brown. Sort of like store F and Forest.[plus][or]The [b]TILES[r] become an [b]ISLET[r].[minus][cycling]"
stile	"[one of]The tiles provide a visual clue, but the stile is just to reinforce things.[plus][or]It's reddish tinged, so you know all the letters are wrong.[plus][or]The [b]TILES[r]/[b]STILE[r] become an [b]ISLET[r].[minus][cycling]"
l2	"They're not ultimately what you want to be after. You may or may not notice an anagram here for a bonus point, though."
lies	"The lies are the result of exposing the Leis Isle. You can't do anything with them."
odd low woodland	"Just there as a hat tip to what Rived Drive was."
swing	"[one of]The swing can get you up in the air, but maybe you can go even higher.[plus][or]The swing can become [b]WINGS[r], too.[minus][cycling]"
wings	"The wings will let you go up or east over the water."
cork	"The cork will let you go east over the water."
rock	"[one of]The rock would just sink in the water.[plus][or]But not if the rock became a [b]CORK[r].[minus][cycling]"
poles	"[one of]The poles are just too vertical. What's something spelled like them that isn't?[plus][or]They're not ski poles, for going down a ski whatchamajigger...[plus][or]They can be a [b]SLOPE[r].[minus][cycling]"
ropes	"[one of]The ropes provide safety but no traction.[plus][or]The sprig can change into something providing traction.[plus][or]It seems suctioned to the ground.[plus][or]It becomes [b]GRIPS[r].[minus][cycling]"
grips	"[one of]The grips provide traction but no safety. They're not 100% reliable.[plus][or]The spore can change into something providing safety.[plus][or]What do people use to climb up rock walls?[plus][or][b]ROPES[r].[minus][cycling]"
sprig	"[one of]The sprig can change into something providing traction.[plus][or]It seems suctioned to the ground.[plus][or]It becomes [b]GRIPS[r].[minus][cycling]"
spore	"[one of]The spore can change into something providing safety.[plus][or]What do people use to climb up rock walls?[plus][or][b]ROPES[r].[minus][cycling]"
slope	"You can climb up the slope [if toeholds are touchable]now the toeholds are part of it[else if grips are touchable and ropes are touchable]with the grips and ropes[else]but don't have enough traction, yet[end if]."
tool shed	"[one of]You need a way up the slope. It's too smooth and steep.[plus][or]There are two ways through--flip the tool shed, or flip the ropes and spore.[plus][or]The tool shed isn't very useful, but maybe it can be.[plus][or]It's got some odd protrusions, which are a hint.[plus][or]They can hold the edge of your feet, e.g. your toes.[plus][or]They're [b]TOEHOLDS[r].[minus][cycling]"
toeholds	"With the toeholds around, you only need to [if poles are touchable]do something with the poles[else]go up the slope, though [toho][end if]."
outcroppings	"These clue what the toolshed can become."
u lock	"Just there to keep you out of the toolshed. Which you can change."
protest	"[one of]Three people are still a protest. How can you cut them down?[plus][or]They have REAL jobs. They make something, they say![plus][or]Apparently they use clay and say 'It's kiln me!'[plus][or]The people in the [b]PROTEST[r] are really [b]POTTERS[r].[minus][cycling]"
riot	"[one of]It's a riot! Way more than three people![plus][or]How would you cut it down to three?[plus][or]Make them a [b]TRIO[r].[minus][cycling]"
links	"[one of]The potters need something to do with their hands.[plus][or]The chain links have been dropped. Perhaps you could use them for less violent purposes.[plus][or]They can become something fragile, for a bonus point you can guess..[plus][or]They can become [b]KILNS[r].[minus][cycling]"
potters	"[if kilns are off-stage]The potters need something to work with--those chain links aren't doing much right now[else]The potters are happy with their kilns[end if]."
kilns	"[if potters are off-stage]They need people to operate them--perhaps the ones around you can be changed[else]Just fine as they are now[end if]."
Red Bull Burdell	"[one of]Red Bull Burdell does like yelling GET OUT.[plus][or]And changing stuff won't help you here.[plus][or]So maybe you need to change what he says?[plus][or]The gadget [if player has gadget]would be[else]was[end if] marginal help with six reds.[plus][or]He has but one weakness, blah blah blah...[plus][or][b]TUG TOE[r].[minus][cycling]"
toe	--	Red Bull Burdell
X ITES exits	"[one of]The exits remind you of something to do. Or not do. You don't have to. There is more than one solution to win. The other two deal with the Means Manse itself.[plus][or]You want to do something that completely ignores the [b]EXITS[r].[plus][or]You need to do something that doesn't match X [b]ITES[r] anywhere.[plus][or]Your work's done. Time to [b]EXIST[r].[minus][cycling]"

to say toho: say "[if grips are touchable and ropes are touchable]you did a bit more[else]you can also meddle with the sprig and spore[end if]".

to say no-sto: say "Nothing is hidden in [noun]".

to say nxt-g: say "Maybe next game".

to say snb:
	let ostage be the number of off-stage disguise-pieces;
	say "[if ostage is 0]can be combined with the other two pieces. PUT X ON Y[else if ostage is 1]can be combined with that other piece you have and one you don't have[else]needs a couple other things[i-gt] to become something[end if]"

to say put-can: say "[one of]Examining the livers indicates they need to be processed.[plus][or]You need to put both livers in the canister.[plus][or][unless River Ville liver is moot][b]PUT RIVER VILLE IN CANISTER[r]. [end if][unless viler liver is moot][b]PUT VILER LIVER IN CANISTER[r]. [end if][minus][cycling][no line break]"

to say i-fle: say "[if player is not in Flesh Shelf] in Flesh Shelf[end if]".

to say i-gt: say "[if player is in Gnarliest Triangles][else] in Gnarliest Triangles[end if]".

volume buffer at end for whatever

Shuffling Tables ends here.

---- DOCUMENTATION ----
