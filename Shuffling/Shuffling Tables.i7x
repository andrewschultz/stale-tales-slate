Version 1/180729 of Shuffling Tables by Andrew Schultz begins here.

volume main anagram tables

book Ordeal Loader

[NOTE: PUT NON SCENERY FIRST]

table of Ordeal Loader anagrams
the-from	the-to	exact-text (topic)	text-back (topic)	pre-rule	post-rule	from-msg	force-take	fullhash	binhash	vanish	to-room
bulge	bugle	"bugle"	"bulge"	a rule	post-bugle-or-bolt rule	"The ovular shape on the door rumbles then falls off. You see that extra bit is a horn--yes, you've definitely found a bugle[if blot is in Rested Desert]. It's untainted by the blot which spread to the door--and is still there[else]. Maybe, if you can't figure the bolt, the bugle can do the trick[end if]."	true	337744362	1050706	--	nowhere
odor	OR DO door	"door"	"odor"	--	post-odor-door rule	"The odor becomes thick and choking, then a wood you've never smelled before but know it's wood. The odor swirls into a door, with a bolt sticking out into an unseen lock, and a bulge out front.[paragraph break]Wow! Neat! You didn't know you had it in you, and you're still not sure how or why. But you're pretty sure you need to get through that door."	false	255058046	147464
bolt	blot	"blot"	"bolt"	--	post-bugle-or-bolt rule	"The bolt retracts, and slowly a blot spreads over the door, which swings in and out[if bugle-played is true] just as when you played the bugle[else]. You can probably enter now[end if]."	false	249695339	542722
reed	deer	"deer"	"reed"	--	post-reed-deer rule	"The reed shudders and slowly pulls down into the ground, making legs and so forth. And it becomes a deer. The deer sees the delicious thickets and brambles and walks over.[paragraph break][goat-deer-eat]."	false	361965110	131096
toga	goat	"goat"	"toga"	--	post-toga-goat rule	"The dingy toga shudders. It seems to rip, make legs, and twist around, like one of those balloon animals you were never good at. And it becomes a goat. All this twisting has left the goat with an appetite, so it walks over to the delicious thickets and brambles.[paragraph break][goat-deer-eat]."	false	212250115	540737
sent nets	nest	"nest"	"nets"	--	--	"The nets, seemingly stuck in the ground, pull up and fly around and compact themselves into a nice-sized nest. It looks a lot more in tune with the scenery. While this untangling didn't create a way to where you need to go, you're glad you could use your powers to make things a bit nicer, and you're that much more confident you're one of the good guys."	false	396097601	794640
nametag	gateman	"gateman" or "gate man"	"nametag"	pre-nametag-gateman rule	post-nametag-gateman rule	"Whoah! The nametag pulses and pops in directions you didn't think something that flat could. You hear a gish, then a sigh. A tall, grouchy old man in sober robes so aged you almost say 'Egad' cries 'The eyes! They see!' He grumbles how he shoulda been a portal king in the parking lot, he's such a talking pro. 'Rote scan. Ancestor? No traces.' Then he notices you. 'You--well, you brought me back. Yorpwald's been shuffled. Almost f-flushed. I'm Nat Egam, Tan Mage. See, this isn't some RPG where you can ask everyone on the way for help. I'm pretty much it[if attics are not off-stage]. Oh, nice job fixing the static, too. There'll be worse noise later, but you'll deal with that whenever[end if].'[paragraph break]'Er, oh...or, eh...'[paragraph break]'Brilliant! You're a natural!'"	false	400874126	536657	true
static	attics	"attics" or "attic"	--	--	--	"[check-plur]The static cuts off and seems to grow opaque. Then it forms into a small box with a cupola, pyramid, and other shapes. They fit with a click on top of the doll house[if gateman is fungible]. Nat Egam golf-claps. 'Good work, though there's worse noise later[what-about-gate].'[else]. Too bad nobody was around to see it![end if]"	false	368680251	786693	true
attics	static	"static"	--	--	--	"You undo your artistic work for perhaps more practical considerations like learning how to use the new toys from the cabinet."	false	368680251	786693	true
acne bit cabinet	tenibac	"bactine"	"bactine"	pre-cabinet-bactine rule	--	"You hear bubbling. A small bottle of Bactine appears in the back of the acne-bit cabinet and then tips over on each place where the cabinet was scarred. Slowly, the cabinet smooths out. The cabinet almost seems to dance."	false	384428789	532759	--	Trips Strip [end Trips Strip anagrams] [note that cratered bits and not cabinet are what is flipped. Since Shuffling doesn't use "reflexed" like roiling, this is the easiest way to do things.]

this is the post-bugle-or-bolt rule:
	if bolt is moot and bulge is moot, min-up;

this is the post-odor-door rule:
	if min-alert is false, poss-display;
	move bulge to location of player;
	move bolt to location of player;

this is the post-reed-deer rule:
	deer-goat-min;

to say goat-deer-eat:
	say "[one of]It finds a relatively weak spot in the thickets, one you'd never have seen, and chomps away. Enough branches make way so that you could make it through if you crouch. Exhausted, the goat turns around three times and falls asleep.[paragraph break]Man! You actually made something living, this time[or]The [if goat is fungible]goat[else]deer[end if] left enough for a full meal, which [if goat is fungible]the deer[else]the goat[end if] seems to enjoy, and the result is, it's even easier to go [b]IN[r] now[stopping].[paragraph break]";
	say "[one of]You can go [b]IN[r] now[or]There doesn't seem to be anything else critical to fix here[stopping]";
	if nets are fungible, say ", but you may want to see if you can do anything with the sent nets, if you're the completionist sort"

this is the post-toga-goat rule:
	if player has toga or player has goat:
		move toga to location of player;
		move goat to location of player;
	deer-goat-min;

this is the pre-nametag-gateman rule:
	if gateman is fungible, try examining the gateman instead;
	if the player's command matches the regular expression "gate ?man", case insensitively:
		do nothing;
	else:
		say "[reject]" instead;
	if Notices Section is unvisited:
		say "The nametag seems to try to rip itself from your clothes for a moment, but it settles back down. Maybe the time isn't right.";
		preef-l gateman;
		the rule fails;
	if location of player is not Notices Section and Notices Section is visited, say "Your nametag twitches. Very odd." instead;
	if player wears the nametag:
		say "If you really CAN change the nametag, you don't want a gateman in your face--so you chuck the nametag away. Not really believing...";
	move nametag to location of player;

this is the post-nametag-gateman rule:
	set the pronoun him to gateman;
	if mega ant is in Notices Section:
		say "The gateman looks over to the mega ant and does some weird hand-fu. The ant scampers off. 'There. Should be able to walk in now. I mean, after you ask me for all the help you want.'";
		moot mega ant;
	follow the bugle-moot rule;

to say check-plur:
	if player's command does not include "attics":
		say "(Okay, no need to be pedantic about plurals.) [run paragraph on]";

to say what-about-gate: say ". [if player has gadget]Not much left to do for you here[else]You got the attics, but other stuff'll be tougher. Have a look in that cabinet, maybe[end if]"

to deer-goat-min:
	if reed is moot and toga is moot, min-up;
	set the pronoun him to noun;
	set the pronoun her to noun;

book Stores

table of Stores anagrams
the-from	the-to	exact-text (topic)	text-back (topic)	pre-rule	post-rule	from-msg	force-take	fullhash	binhash	vanish	to-room
store b	sorbet	"sorbet"	--	--	post-storeb-sorbet rule	"The store collapses into a greyish sludge, under which you find a large cup of sorbet. It's surprisingly tasty. Once you've finished, it vanishes with a pop. You're not sure how all that worked, but it was a nice break."	false	505285378	933906
store f	scented descent	"forest"	"store f"	--	--	"The greens and browns of Store F coagulate and pull apart into an actual forest."	false	513381369	933936
store i	posted depots	"sortie"	"store i"	--	--	"The store rumbles, revealing shady posted depots you can enter to somewhere new."	false	531859319	934160
store m	trade tread	"metros/metro"	"store m"	--	--	"The store rumbles, with the collections of small-scale cities disappearing. A trade tread appears. You can't see where it ends up, but you can [b]ENTER[r] or [b]FOLLOW[r] it."	false	550941626	938000
store r	ogled lodge	"resort"	"store r"	pre-storer-resort rule	--	"Store R rumbles and reforms into something far posher. Not just a resort, but an ogled lodge! 'Congratulations, adventurer!' croons a syrupy voice. 'For defeating Red Bull Burdell, a wonderful place is now yours and yours alone!'[paragraph break]Hey! Wait a minute! But before you reply, the voice continues 'Go! Rest!'"	false	572190276	933904
acne bit cabinet	tenibac	"bactine"	"bactine"	pre-cabinet-bactine rule	post-cabinet-bactine rule	"You hear bubbling. A small bottle of Bactine appears in the back of the acne-bit cabinet and then tips over on each place where the cabinet was scarred. Slowly, the cabinet smooths out. The cabinet almost seems to dance."	false	384428789	532759	--	Trips Strip [end Trips Strip anagrams] [note that cratered bits and not cabinet are what is flipped. Since Shuffling doesn't use "reflexed" like roiling, this is the easiest way to do things.ere it's at.]

this is the post-storeb-sorbet rule:
	moot sorbet;

this is the pre-storer-resort rule:
	if you-can-advance, continue the action;
	if store r is fungible:
		say "That seems like it should work, but you sense you have not done enough yet. But maybe, soon, you will.";
		preef-l ogled lodge instead;

this is the pre-cabinet-bactine rule: [ic]
	if Trips Strip is unvisited:
		say "[if gateman is off-stage]That might be a way to heal the cabinet's wounds once they aren't so fresh, but not now.[else]'Hey, that's a good idea,' says the gateman. 'The cabinet's still recovering from its wounds back when Red Bull Burdell almost destroyed it. But it'll be seeing you again. When it does, I think Bactine will work.' He pauses. 'Oh. There probably won't be many brand names like that to worry about, unless they're even more ubiquitous. Like, say, Xerox.'[end if]";
		preef-l tenibac;
		now cabinet-flip-try is true;
		the rule fails;

this is the post-cabinet-bactine rule: [ic]
	move cabinet to location of player;
	move cratered bits to location of player;
	moot cratered bits;
	now cabinet is inflexible;

book Forest

table of Forest anagrams [xxtfa]
the-from	the-to	exact-text (topic)	text-back (topic)	pre-rule	post-rule	from-msg	force-take	fullhash	binhash	vanish	to-room
slit	silt	"silt"	"slit"	a rule	post-slit-silt rule	"The slit crumbles away. Silt comes pouring out of it, and at the same time, Corses Crosse squeezes it shut. There's no trace of the slit now."	true	298190669	788736
ones	nose	"nose"	"ones"	a rule	post-ones-nose rule	"The ones line up next to each other in a pair of not quite v-shaped semicircles. Then they melt into a nose. You take it."	true	367340160	286736
dashes	shades	"shades"	"dashes"	--	post-dashes-shades rule	"Most of the dashes reform into a pair of eyeglass rims, and the remaining one fill in as lenses. They lighten a little, and you have fully functioning shades."	true	380853247	262297
noughts	shotgun	"shotgun"	"noughts"	--	post-noughts-shotgun rule	"Bam! The noughts slink together to form a gun barrel, then a whole big powerful gun."	true	517631877	1859776
bread	beard	"beard"	"bread"	--	--	"[process-sandwich]The bread seems to grow a fuzzy dark mold, then narrows into a sickle. It's now a beard, though not a particularly beautiful one. As you pick it up, you shake it for crumbs, and the hairs don't crumble into mold."	true	254765724	131099
sliver	silver	"silver"	"silver"	pre-sliver-silver rule	--	"The sliver changes and grows even more metallic. It becomes a row of six bullets, tied together like plastic twist-off toys, but obviously more lethal."	true	515375383	2492688
livers	sliver	"sliver"	"livers"	--	--	"The livers narrow a bit and become more pointy at the end. They are a nice long sliver now[if player does not have sliver], which you pick up[end if]."	true	515375383	2492688
liches	chisel	"chisel"	"liches"	--	post-liches-chisel rule	"'Dissolve, vile sods!' you cry for effect. You hear a spectral clapster![paragraph break]As the final shade heads to Hades--sad, eh?--a chisel clatters behind. The chisel doesn't seem to vibrate scarily or anything, so you take it. You're also less distracted now and notice a spread on the north wall--it seems to pulse a bit, as if it could change to something dangerous."	true	379174644	264596
banshee	has been	"hasbeen" or "has been"	"banshee"	--	post-banshee-hasbeen rule	"The banshee quits moaning and starts screaming as it's sucked in by some dimensional gate opened by a spectral clapster. A gate to--not a better place, but a better suited place. Where the fates feast. As not just a has-been but a has-has-been, its moaning will be more appropriate punishment for the souls who have done much worse than it did."	false	478682714	270483
red asp	drapes	"drapes"	"red asp"	--	--	"Shazam! The red asp crumbles into some far less evil looking drapes. They're still too thick to walk through."	false	414086744	426009
spread	drapes	"drapes"	"spread"	--	--	"The spread briefly turns into a red asp that jumps at you before collapsing into thicker, but less wide, drapes. You won't be able to just walk through them."	false	414086744	426009 [must be 2nd else you get a problem with 2 points]
Spam	maps	"maps"	"spam"	--	--	"[process-sandwich]With a sickening SCHLURP, the [spam] curdles and flattens to form several maps."	true	244002896	299009
vowels	wolves	"wolves"	"vowels"	--	--	"Well, you've done it now. The imposing vowels become werewolves--but they notice your shotgun and stand back. The first forward gets shot--or so they imagine."	false	567346084	6572048

this is the post-slit-silt rule:
	moot silt;

this is the post-ones-nose rule:
	now bucket is realized;

this is the post-dashes-shades rule:
	now shell is realized;

this is the post-noughts-shotgun rule:
	now bubble is realized;

to say process-sandwich:
	if sandwich is fungible:
		say "[if player has sandwich]You juggle the bread and spam, but neither part falls[else]You decide to pick up the sandwich so the other part doesn't fall[end if] to the floor. ";
		moot sandwich;
		if noun is beard, now player has spam;
		if noun is spam, now player has bread;

this is the pre-sliver-silver rule:
	unless drapes are moot:
		say "The sliver wobbles but stays firm. Maybe it has a purpose before you turn it into silver.";
		preef-l silver;
		the rule fails;

this is the post-liches-chisel rule:
	now spread is in Emptiness Sepiments;

this is the post-banshee-hasbeen rule:
	moot has been;

book Sortie

table of Sortie anagrams [xxtia]
the-from	the-to	exact-text (topic)	text-back (topic)	pre-rule	post-rule	from-msg	force-take	fullhash	binhash	vanish	to-room
t-n	teleporter	"kitchen"	"the nick"	--	post-kitchen-nick rule	"That does it! The heck with that silly old grate. Your prison dissolves, and it becomes the place you meant to go all along[if straw is in the nick]--the straw remains intact, too[end if]."	false	454037543	533908	--	kitchen
warts	straw	"straw"	"warts"	--	post-warts-straw rule	"The warts quickly peel off and lengthen into straw."	false	394830378	5111809
skate	steak	"steak"	"skate"	--	--	"The skate turns reddish, and the blade cuts up the meaty bits before vanishing--how convenient!"	false	382311089	787473
cult tee	lettuce	"lettuce"	"lettuce"	--	--	"The cult tee crumples and then shreds before turning into a light green head of lettuce."	false	639757485	1574932
spearman	Parmesan	"parmesan"	"spearman"	--	--	"The spearman transforms into something cheesier--Parmesan cheese! Unfortunately, it doesn't have one of those cute plastic spears sticking from it, but you can't have everything."	false	528228134	438289
cathouse	HOTSAUCE	"hotsauce" or "hot sauce"	"cathouse" or "cat house"	--	--	"The [cathouse] turns into a packet of equally over-capitalized and under-spaced hot sauce."	false	565124179	1851541
tall trio	tortilla	"tortilla"	"tall trio"	--	--	"Poof! The doughy fellows maintain their breadiness, but they flatten out into a tortilla."	false	520704758	674049
grist	grits	"grits"	"grist"	--	post-fridgey-flip rule	"With a squelch, the grist in the fridge [closed-note]refines itself into something more edible. Relatively."	false	362300335	917824
cake pan	pancake	"pancake"	"cake pan" or "cakepan"	--	post-fridgey-flip rule	"You hear a clatter, and then you poke into the fridge [if fridge is closed]you didn't even open yet[end if] to see the cake pan is a pancake."	false	354493975	42005
taco	coat	"coat"	"taco"	--	--	"Before changing the hot-to-your-tongue taco to a warm-to-your-body coat, you wisely take out a few small bites from the bottom (like adults always said not to) to form the arm-holes. Delicious! You ate just enough to feel fortified, and you've got something to wear, too."	false	198655998	540677
cask	sack	"sack"	--	pre-cask-sack rule	--	"The cask retains its color but looks visibly frayed as its wood turns to burlap. The sack it has become collapses in a heap on the floor. You pick it up."	true	170400547	263173
sack	cask	"cask"	--	pre-sack-cask rule	post-sack-cask rule	"The sack stiffens, rises and becomes less blobby. It's the cask again, nice and upright."	true	170400547	263173
hoses	shoes	"shoes"	"hoses"	--	post-hoses-shoes rule	"The pair of rubber hoses bends and opens and become a comfortable pair of shoes that swallows your old shoes--you'd forgotten how ratty they were. A few steps show walking's much smoother. So smooth, you forget you're wearing them. And the price is right, too."	false	431988917	278672
r2	teleporter	"moor"	--	pre-room-moor rule	post-room-moor rule	"[moor-jump]."	false	298104110	151552	--	moor
m2	teleporter	"room"	--	--	--	"[if woeful pat is in moor][one of]As you pop back to the room, Woeful Pat looks visibly shocked. You have left him speechless, which is good news, but he is reaching for his pen, which is bad news for some poor soul in the future[or]Woeful Pat is less impressed this time, sniffing that it's been done[stopping].[else]'The room's smoother,' you muse..."	false	298104110	151552	--	roomroom
anapest	peasant	"peasant"	"anapest"	--	post-anapest-peasant rule	"Nothing happens. You worry your magic powers have failed, until a peasant strides out from the edge of the moor, carrying a bale of hay and singing a cheery song about nothing in particular. Distracted, you look over and smile.[paragraph break]'Oh, does THAT resonate with your stone ear?' whines Woeful Pat.[paragraph break]You notice his papers have crumbled (but don't worry, he has PLENTY of written drafts.) He [exp-fli]storms off, claiming you will make a perfect arch-villain in his new socially significant blank-verse epic. Or another poor henchman who deserves but one line before a horrible fate--or a mega-rip of an epigram!"	false	481939196	827409
roadblock	black door	"black door" or "blackdoor"	"roadblock" or "road block"	--	--	"Bam! The fissure in the roadblock covers up, and a black door appears where it was. It's light but bulky--you can probably put or push it where it needs to go[if pat is fungible]. Woeful Pat shows commendable concentration ignoring all this[else if peasant is fungible]. The Peasant cheers in appreciation, momentarily dropping his hay, which he's none too eager to pick up[end if]."	false	401417371	150543
poem	panel	"panel"	--	pre-plane-panel rule	--	"Poof! The paper plane becomes a panel. It's light enough to carry, you suppose[if player has poem or player has panel]. Well, it doesn't cause an immediate hernia[end if]."	false	334181233	43025
smilies	missile	"missile"	"smilies"	pre-smilies-missile rule	--	"The smilies on the poem seem to waver. But they sever from the verse, grow, and clump together to form a big yellow missile! You reread the poem. You didn't think it would change much without the smilies, but it's snappier now, pointed, warlike--a restrained, plain-language indictment of not just bad poetry but nastiness and elitism in general!"	false	528228725	268560
scraped wall	hallway	"hallway"	"haywall"	pre-haywall-hallway rule	--	"Of course! The hay wall you made collapses into a hallway leading east. One you won't even have to duck through!"	false	379579638	20973697
oils2	soil	"soil"	--	pre-oils-soil rule	post-oils-soil rule	"You empty the cask. The oils seep into the moor and make a large chunk less squishy and sandy. You could probably build something big on the moor now."	false	269433228	280832
oils	silo	"silo"	--	pre-oils-silo rule	post-oils-silo rule	"You empty the cask again. The oils seep into the moor, and you drop the cask as the silo appears much quicker than you imagined possible. The cask breaks and seeps into the ground."	false	269433228	280832 [this is kludgey code, as this line must come first even though the silo flip comes second.]
hoots button	shoot button	"shoot" or "shoot button"	"hoots" or "hoots button"	--	post-hoots-shoot rule	"The hoots button glows--you touch it (so hot,) and it changes to a shoot button as its letters shift."	false	385371437	802944
trees button	steer button	"steer" or "steer button"	"trees" or "trees button"	--	post-trees-steer rule	"The smell of a chemical ester pervades the air as the trees button rewords to a steer button."	false	540320005	917520

to say closed-note: if fridge is closed, say "you didn't even open yet "

this is the post-kitchen-nick rule:
	say "You notice some warts on your face. Stress causes them, you know, and between the centrifuge and the nick, you've had a bit lately.";
	now warts are part of the player;
	now startmod5 is the remainder after dividing (turn count + 4) by 5;
	continue the action;

this is the post-warts-straw rule:
	pad-del "warts";
	if player carries sack:
		say "You drop the straw into the sack before it falls out of your arms.";
		now straw is in sack;
	else:
		say "The straw is too heavy to carry. You drop it.";

to say drop-straw:
	if "warts" is padded:
		say ". You run a big line through your entry on warts in your dope tan notepad";
		pad-del "warts";
		now straw is in sack;
	else:
		move straw to location of the player;

this is the post-fridgey-flip rule:
	say "Bam! A[one of][or]nother[stopping] nice, plain dish. You [if taco is moot or taco is fungible]figure that's less tasty than the taco, but you're still pleased with your culinary skills[else if number of fungible ingredients > 1]feel a boost of confidence. Now, to those other ingredients, or things that can become ingredients[else]can't see what else the [noun] can become, so maybe you can make some other food or ingredients[end if].";
	if fridge-score is 2, say "[line break]I suppose you could also say you fig'red the fridge, too, now.";

this is the pre-cask-sack rule:
	if cask is fungible and oils are in cask, say "That's inadvisable. The oils would leak out." instead;

this is the pre-sack-cask rule:
	if sack is fungible:
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
		skip upcoming rulebook break;
		preef-l r2 instead;
	if player carries coat and player is not wearing coat:
		say "(wearing the coat first)[line break]";
		now player wears the coat;
	if player is not wearing coat:
		say "You see a flash and get a glimpse of a moor, but it is just too cold. You blink and find yourself back in the room[if coat is off-stage]. You'll need to pierce the recipe to build something warm that can cover the rest of your body than just the shoes[else]. That coat you made would be handy[end if].";
		skip upcoming rulebook break;
		preef-l r2 instead;
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
	if smilies are fungible:
		if player is not in moor:
			say "[one of]Good idea, but not in here. There'd be more room for that outside where you found the poem[or]Need to get outside to the moor[stopping].";
			preef-l missile;
			the rule fails;

this is the pre-haywall-hallway rule:
	if scraped wall is not hayfilled:
		say "Hm, that's possible, but you can't make the hallway until you add something to the wall.";
		preef-l hallway;
		the rule fails;

this is the pre-oils-silo rule:
	if oils are not in cask:
		if location of player is Sacred Cedars:
			say "[if silo is in moor]You've already built the silo, and bragging does not impress Lois[else]That would really clog up the tap, changing the oils in it to a silo. Maybe there's a better place to make a silo[oils-flip-clue][end if].";
			preef-l silo;
			the rule fails;
		if oils are fungible:
			say "You've found a bug, somehow. I'm sorry about this. It's not game-breaking, but it's a bug. Please type [b]UNDO[r] and send a transcript of what you did.";
		continue the action;
	if player is not in moor:
		say "This is not a good place to put a silo. Somewhere more wide open, where you can pour the oils, too?";
		preef-l silo;
		the rule fails;
	if soil is not in moor:
		say "The moor's ground is not stable enough as-is. You need a foundation first.";
		preef-l silo;
		the rule fails;

this is the post-oils-silo rule:
	now oils are in Sacred Cedars;
	moot cask;
	moot sack;

this is the pre-oils-soil rule:
	if oils are not in cask:
		if location of player is Sacred Cedars:
			say "[ilb-later][if soil is in moor]You've already poured the soil, and bragging does not impress Lois[else]That would really clog up the tap, changing the oils in it to a silo. Maybe there's a place that could use soil, though[oils-flip-clue][end if].[no line break]";
			preef-l soil;
			the rule fails;
		if oils are fungible:
			say "You've found a bug, somehow. I'm sorry about this. It's not game-breaking, but it's a bug. Please type [b]UNDO[r] and send a transcript of what you did.";
	else if player is not in moor:
		say "This is not a good place to put soil. Somewhere more wide open, where you can pour the oils, too?";
		preef-l soil;
		the rule fails;
	skip upcoming rulebook break;

this is the post-oils-soil rule:
	skip upcoming rulebook break;
	now soil is in moor;
	now oils are in Sacred Cedars;

this is the post-hoots-shoot rule:
	now shoot button is part of panel;

this is the post-trees-steer rule:
	now steer button is part of panel;

section auxiliary

to say oils-flip-clue:
	if player does not have cask:
		say ", and you'd need a vessel to transport them with";
	else if oils are not in cask:
		say ", once they're safely contained for transport";
	else:
		say ", and you could change the oils there"

book Metros

table of Metros anagrams [xxtma]
the-from	the-to	exact-text (topic)	text-back (topic)	pre-rule	post-rule	from-msg	force-take	fullhash	binhash	vanish	to-room
drainage	gardenia	"gardenia"	"drainage"	--	post-drainage-gardenia rule	"In a fit of ecological, aesthetic magic-slinging, you transform the drainage and all the flotsam inside it into a much prettier gardenia. The whole underside is still pretty dingy, but hey, free flower. You take it."	true	385034693	139609
clover	Velcro	"velcro"	"clover"	--	--	"Pop! The clover expands and grows scratchier and darker. It is now a long strip of Velcro. The leaves appear to have expanded into something resembling mittens[if player does not have Velcro]. You pick them up[end if]."	true	467466733	2246676
Motto	tomato	"tomato"	"motto" or "a motto"	--	--	"The motto--that is, both words and paper--curls up and bundles into a small sphere, and you almost [if motto is in Bile Libe]hesitate to pick it up[else]drop it[end if]. Amazingly, it's not icky-soft or anything, and it doesn't smell TOO bad."	true	421188161	544769
lost corn	controls	"controls"	"lost corn"	pre-lostcorn-controls rule	--	"The different-colored kernels only flatten out as the lost corn collapses into a circuit board. The controls you possess--for whatever--seem powerful[if deadbeat is fungible]. 'Whoah! DUDE!' moans the deadbeat, half staggering to his feet before he collapses from the effort[end if]."	true	575139873	944132
heaths	sheath	"sheath"	"heaths"	pre-heaths-sheath rule	post-heaths-sheath rule	"The heath grows, tangles around itself, and lumps into a sheath. It's too bulky to carry, so you wear it."	true	403942509	786577
begonias	noise bag	"noise bag"	"begonias"	pre-begonias-noisebag rule	--	"The begonias twirl and create a bag. One with weird triangular spikes on the inside. You exclaim surprise at it--the bag whooshes every time you say something."	true	465539431	287059
brocade	barcode	"barcode" or "bar code"	"brocade"	pre-brocade-barcode rule	--	"The brocade schlurps and reorganizes into something flatter, but with the same pattern[if player does not have brocade and player does not have barcode]. You pick it up. [end if]."	true	348123886	147487
dry cake	keycard	"keycard" or "key card"	"dry cake"	pre-drycake-keycard rule	--	"The dry metallic cake turns into a dry metallic keycard[if player does not have dry cake and player does not have keycard], which you take for yourself. Hooray, technology[end if]."	true	430644834	16909341
antlers	rentals	"rentals" or "rental"	"antlers"	--	post-antlers-rentals rule	"Suddenly, a pair of workers walk in, point to their watches, takes the antlers down with a twist of a screwdriver, and walk off with them[if bastion-evac is true]. You smile and nod, but they have already left. Shame on the hosts, for pretending that ugly expensive thing was theirs[else]. People mumble but stay. The free food and alcohol overcome moral imperatives to shun the fake-rich, for now[end if]."	false	537423061	927761
neon pig	gin nope opening	"opening"	"neon pig"	--	--	"[if player is on cafe face]Remembering basic electric safety rules and common sense, you move to the side before trying your magic. This saves your bacon. [run paragraph on][end if]The neon pig goes on the fritz, sparking first, then making a big POP. The neon is none! It appears you've created an opening. A warning written on it makes it a gin-nope opening. Anyone operating there will need to be sharp.[paragraph break]Now you're bakin[']. Uh, cookin[']. (Okay, no more hamming it up.)"	false	499032209	57680
siren	resin	"resin"	"siren"	--	post-siren-resin rule	"The siren makes some even more spastic noises before grinding into resin powder. You scoop it up and put some on your hands, which feel sticky now. You feel your chances of defeating the [beast-beats] has risen, unless you rinse."	false	423304232	401680
beats	beast	"beast"	"beats"	pre-beats-beast rule	--	"'Our beats! Saboteur!' you hear as a beast replaces the thumping with roaring, which stops when the thing needs to breathe. It's an improvement. For your chance to best a beast."	false	347796816	786451
words	sword	"sword"	"words"	pre-words-sword rule	--	"[if player has sheath]The words go slippery, claiming they didn't mean themselves, giving passive-aggressive threats. But it is too late--they fade, and a sword appears materially.[paragraph break]You sensibly put the sword--as slippery as the final words--into your sheath[in-sheath][else]The words explode from the noise bag, which is blown away by the [which-roar]. In their place is a shining sword that [give-sword][end if]."	false	384914208	4603912

this is the post-drainage-gardenia rule:
	if A reading is in Undesired Underside, say "The/a reading blows away once the gardenias appear.";
	moot a reading;

this is the pre-lostcorn-controls rule:
	if bastion-evac is false and lost corn is fungible, say "The dead beat deadbeat might not beat you dead, but you'd get maligned ere legerdemain.[paragraph break]In other words, you probably need to gain the deadbeat's trust before taking any stuff." instead;

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
	if bastion-evac is false and dry cake is in location of player:
		say "[one of]The poses posse would have something to talk about at their next get-together. Like the weirdo who did something scary to that cake and got arrested.[paragraph break]So, though you never know when a keycard is handy, Ix-nay on the agic-may [']til they're gone[or]This would create quite a (negative) scene with people still in the bastion[stopping].";
		preef-l keycard;
		the rule fails;

this is the post-antlers-rentals rule:
	moot rentals;

this is the post-siren-resin rule:
	if resin is in location of player:
		moot resin;
		now stickyhanded is true;

to say beast-beats: say "[if beast is fungible]beats[else]beats".

this is the pre-beats-beast rule:
	if player is not in Bassy Abyss:
		if beats are fungible:
			say "That might unleash a beast on innocent citizens. If there is one, you must face it in its own lair.";
		else:
			say "Why bring the beats in here, where it's quiet?";
		preef-l beast;
		the rule fails;
	if siren is not moot or sword is not fungible:
		say "You don't feel prepared to face a beast yet.";
		preef-l beast;
		the rule fails;

this is the pre-words-sword rule:
	if player is in Bile Libe:
		if player does not have sheath:
			if player has noise bag:
				say "The words become nastier for a second, forming into a sword, which heads for the noise bag. You're worried the sword might tear the noise bag apart, but before that happens, the sword dematerializes back into words.[paragraph break]It was the wrong shape for the bag, anyway. Maybe the bag could hold the words if you just [b]OPEN[r] it, though, being a noise bag.";
				preef-l sword;
				the rule fails;
			say "The words become a sword, too large and terrifying to carry. The talk resumes as the sword disappears. You'll probably need something to put the sword, or the words, in.";
			preef-l sword;
			the rule fails;
		continue the action;
	if player is not in Bassy Abyss and player does not have sheath, say "The words are sharp enough, but you have nothing to hold a sword in." instead;
	if player is not in Bassy Abyss, say "[if player has noise bag]The time's not right, yet. There's no threat near you[else]You can't go carrying a sword about the city. You don't need to attract attention[end if]." instead;

to say in-sheath:
	now sword is contained in the sheath;

to say which-roar:
	moot noise bag;
	say "[if beats are fungible]loud beats[else]beast's roaring[end if]"

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
the-from	the-to	exact-text (topic)	text-back (topic)	pre-rule	post-rule	from-msg	force-take	fullhash	binhash	vanish	to-room
tiles	teleporter	"islet"	"tiles"	a rule	a rule	"The tiles crumble and shift around and spread across the floor of the altars! The stile blossoms into a tree. The ground turns softer under you."	false	425996778	788752	false	Leis Isle
l2	lies	"lies"	"lies"	--	post-leis-lies rule	"'Lies! LIES! LIES!!!!' you cry. Who could've put those leis there to make you lazy and content? Lessie Li? Lee Silis? Les Iseli? Elise Lis? Lise Seil? Ilse Elis? Eli Siles? All of them? Whoever they are, the leis they made dissolve. You see the isle for what it is. Of course it was too good to be true. The final fight lies ahead!"	false	322886760	264464 [bold-ok]
rock	cork	"cork"	"rock"	--	post-rock-cork rule	"The rock grows a few holes and immediately becomes lighter. You can probably pick it up easily now. You do."	true	231615143	148484
swing	wings	"wings"	"swing"	--	post-swing-wings rule	"The old swing's ropes defray and the seat somehow transmogrifies. You see a pair of wings. They don't look like they'll last too long, but they're better than nothing. You take them."	true	350708795	4464960
sprig	grips	"grips/grip"	"sprig"	--	post-ropes-grips rule	"The fragile sprig pops into a pair of suction grips, which you take[tool-clue]."	true	340656276	426304
spore	ropes	"ropes/rope"	"spore"	--	post-ropes-grips rule	"The spore grows more quickly than you could imagine, into a couple of long ropes tied together. You wind one around your waist[tool-clue]."	true	465222414	442384
poles	slope	"slope"	"poles"	--	post-poles-slope rule	"The poles rumble and slide. You run away, fearing they come crashing down on you--but when they stop, you're a bit disappointed to see they're still at a forty-five degree angle."	false	433712450	313360
tool shed	toeholds	"toeholds/toehold" or "toe holds/hold"	"toolshed" or "tool shed"	--	post-toolshed-toeholds rule	"That'll do it! The tool shed crumbles, leaving only the small outcroppings--which somehow fly into the [holds-1].They're plentiful and stable. You could probably climb up now[if poles are fungible] if the poles weren't so vertical[end if][ropes-grips-lying]."	false	588020474	805016
riot	protest	"trio"	"riot"	--	post-riot-protest rule	"Your word seems to have no effect. 'Dah, dah, dah, dah,' you mumble to yourself. You don't love them, they don't love you.[paragraph break]Then you realize something: you didn't notice the least enthusiastic people in the back leaving first! Others follow--one of them even drops some chain links. And soon, just three people remain. The most energetic and dedicated, of course, but altering that triangle can't be too hard. While it's still a protest, they don't seem fully into it."	false	307779244	672000
protest	potters	"potters/potter"	"protest" or "riot"	--	post-protest-potters rule	"The trio grows even more lethargic. A fellow in a smock mocks the whole charade before throwing the smock in a corner. He talks with his two friends[if kilns are fungible]. Shortly, they see the kilns nearby. They go to work happily[else]. They still aren't happy, though. They'd sort of like something to do that'll help them forget their protesting phase[end if]."	false	671442450	966672
chain links	china	"china"	"china"	pre-chain-china rule	post-chain-china rule	"The chain, or part of it, bursts into fine china, which rolls away from you. 'Hi, can...?' [if potters are fungible]The potters take it immediately--'Hm! Not our thing, but very nice! If only we had something to make pottery with!' [else if protest is fungible]The protesters pocket the china interestedly, saying they won't be bribed, but they did seem artsy enough to appreciate the design. [else if riot is fungible]The crowd immediately tramples the china, then blames you for causing them to. [end if]Maybe you can do something with the links as well."	false	172376056	8581
chain links	kilns	"kilns/kiln"	"links"	--	post-links-kilns rule	"The links burst and swell into luxury kilns[if potters are fungible]. 'Ohmigod! I--hm, good!' yells one of the potters. 'This is the Mark 9000 brand with wheels underneath for easy mobility! Wow, I--I don't know why we ever protested you! We really must've had nothing better to do! Hm, the clay's scaly, but that's not your fault!'[else]. The yelling's loud as ever but increasingly directed at the kilns and not you. The protest seems distracted.[end if]"	false	316921337	273664

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
	if grips are fungible and ropes are fungible:
		say ". The combination of grips and ropes is probably enough to make climbing gear[if tool shed is fungible]. You can probably try to mess with the tool shed, but it doesn't seem like you need to[end if]";

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
	if poles are fungible:
		say "poles";
		now toeholds are part of the poles;
	else:
		say "slope";
		now toeholds are part of the slope;

to say ropes-grips-lying:
	if ropes are fungible and grips are fungible:
		say ". You probably don't need those tools you made";
	else if ropes are fungible:
		say ". The ropes won't be necessary";
	else if grips are fungible:
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
	if player carries grips and player carries ropes and slope is in Rived Drive:
		now slope is realized;
		now grips are realized;
		now ropes are realized;

book auxiliary text and rules

section ordeal loader auxiliary

this is the bugle-moot rule:
	if bugle is moot:
		say "The gateman [if ant is moot]pauses again, then [end if]asks if you had that bugle. It's something he'd been meaning to take up, but he wanted to give you more than one way to get here. You explain you lost it rolling down a hill to get here.[paragraph break]'No worries. I'll get it when you're gone. You probably won't want to be around when I start practising, anyway. This time, I will. Being a nametag for a bit--or just replaced by one--gives a fellow motivation to do those things he's put off.'";
		moot bugle;

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
		say "There's still something weird about this isle you can't put your finger on. It's not critical, but maybe there's more to do, in addition to finding multiple ways of transport out."

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
smilies	"The smilies momentarily grow eyebrows that point aggressively, then vanish[smilies-plural-nag]."
hoots button	"You suppress a few minor swears as you realize that can't be right."
trees button	"Hmm, that doesn't work, but you bet you can bull your way through things."
oils2	"[if player is not in moor][oils-need-purpose][else]The oils could change the moor into something more fertile, but not that[end if]."
oils	"[if player is not in moor][oils-need-purpose][else]The soil is there to support something, but not quite that[end if]." [ this is for the edge case where someone types SSOIL or something. ]

to say oils-need-purpose: say "The oils need a purpose--to build something great. Nobody would see your handiwork in this enclosed space"

to say smilies-plural-nag:
	if i6cmdhash is 431954759 or i6fwhash is 431954759:
		say ". Looks like it's not just one smilie[seed-plural-nag]";

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
			if add-plural-nag of itm, say "[seed-plural-nag]";
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

to decide whether add-plural-nag of (itm - a thing):
	if itm is smilies and i6cmdhash is 431954759, yes;
	no;

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
soil	"[if silo is in location of player]The silo is quite an accomplishment. You wouldn't want to ruin it[else]The soil is there to support something, but not quite that[end if]."
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

table of ordeal loader hintobjs
hint-entry	advice-entry	parallel-entry
name list	"The list hints what [this-game] is all about."
vacate caveat	"The vacate caveat has advice. Not very good advice, but it gives you an idea of where to go. It is a clue what [this-game] is all about."
odd side passage	"You can [b]ENTER[r] the odd side passage, or go [b]IN[r]."
odor	"[one of]What can the odor turn into? Your random thoughts are not so random.[plus][or]The clues and distractions collapse to anagrams.[plus][or]If you get to the end, you'll notice two rather forced ones. They both anagram odor. What else do they anagram?[plus][or]A door.[minus][cycling]"
musical chord	"The chord clues what to do [if bulge is moot]with the bugle[else]with the bulge[end if]."
bulge	"[one of]You don't have any key, but that bulge shouldn't be part of the door.[plus][or]The musical chord is a clue.[plus][or]You want to change the bulge into a [b]BUGLE[r].[minus][cycling]"
bolt	"[one of]You don't have any key, but that bolt is stopping the door from opening.[plus][or]You want to change the bolt into a [b]BLOT[r].[minus][cycling]"
blot	"The blot is there to clue [if player has bugle]making the bugle[else]what the bulge could become[end if] for a bonus point. It's not useful by itself, but it can't hinder you as the bolt did."
bugle	"You [if bolt is moot]can just walk through the door. If you hadn't gotten rid of the bolt, you'd need to[else]can[end if] [b]PLAY[r] the bugle to go through the door."
OR DO door	"You can just [b]ENTER[r] the door[if bugle-played is false and bolt is in rested desert] once you figure how to open it[end if]."
toga	"[one of]The toga can become something else, though it's a bit trickier than the blot to bolt, or bulge to bugle.[plus][or]What could the toga become that might eat through the thickets?[plus][or]The toga can become a [b]GOAT[r].[minus][cycling]"
reed	"[one of]The reed can become something else. Something that fits better with a less swampy area.[plus][or]What could the reed become that might eat through the thickets?[plus][or]The reed can become a [b]DEER[r].[minus][cycling]"
shrub	"The shrub and brush clue[unless goat is off-stage]d[end if] you to what you need[unless goat is off-stage]ed[end if] to do with the toga."
brush	--	shrub
sent nets	"[one of]The sent nets are a bit of an eyesore, though they're not ruining anything, and they don't trap you from getting out. Still, you may see what you can do with them.[plus][or]The sent nets don't really belong in a nature area, but something spelled similarly does.[plus][or]The sent nets can become a [b]NEST[r].[minus][cycling]"
nest	"You changed the nets to the nest, and that's enough."
goat	"The goat's done its job."
deer	"The deer's done its job."
magenta nametag	"[if notices section is unvisited]You don't need to do anything with the nametag yet, but it's an important introductory puzzle.[else][one of]The magenta nametag needs to become something. Something that can help with the gateway.[plus][or]The broad board, along with trying to enter the gateway, gives hints.[plus][or]Mt. Agena/Egana, a tan gem, and the mega-ant are clues due to their redness that say what you want is -A---A-. You can look up more or note you're dealing with a gate.[plus][or]Thus, you must summon a [b]GATE MAN[r]. With or without the space.[minus][cycling][end if]" [bold-ok]
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
store m	"[one of]Examining the map, it is of Mt. Rose. Which is an anagram for Store M. It looks like you need to get to a subway station or something.[plus][or][if gadget is cert]The gadget tells you M----- if you scan both the store and the map of Mt. Rose[else if gadget is rect]M----S is only so helpful here, but remember a city and its transport system are being portrayed[else]A city and its transport system are being portrayed[end if].[plus][or]You need to discover the [b]METROS[r].[minus][cycling]"[bold-ok]
subway map	"The subway map gives a hint as to what Store M can be."
store r	"[if you-can-advance][one of]You need to get into store R.[plus][or]The roster provides a hint. Where's a place you can rest?[plus][or]Certifying or Rectifying tells the first letter, R, and the next is very likely a vowel, or you get a garbage word.[plus][or]You want to go to a [b]RESORT[r].[minus][cycling][else]You won't need to get into store R until you've solved another area, at least. But you [got-r].[end if]"
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
shotgun	"[if player has silver and silver is not in shotgun]Put the silver in the shotgun.[else if silver is off-stage]You need to create a bullet for the shotgun.[else if wolves are fungible][b]SHOOT[r] the wolves.[else]You need to find a target, one vulnerable to silver, maybe.[end if]"
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
trel-priv	"[if scraped wall is fungible]It's the haywall below you need to worry about[else]The trellis isn't important--it just provides scenery[end if]."
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
peasant	"[one of]The peasant has a bunch of hay he doesn't want. Mean Old Mondale-Doleman said it was 'almost the same thing.' [if warts are not off-stage]What could become almost the same thing? The answer's right under your nose.[else]What've you seen that's almost the same thing?[end if][plus][or]The straw[if straw is not fungible] back in [location of straw][end if]. [if sack is off-stage]It won't fit into a cask, but maybe it'll fit into a similar, or similarly-spelled, container[else]It can fit in the sack[end if].[plus][or]GIVE STRAW TO PEASANT[if straw is not in sack], once you can transport the straw[end if].[minus][cycling]"
black door	"[if silo is not fungible]You probably need to build a structure to attach the black door to[else if black door is not part of the silo]Just PUT BLACK DOOR ON SILO[else]The black door's okay where it is[end if]."
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
friend finder	"[if permission-impression is true]You already figured how to swipe the keycard[else]You will need to swipe ID to get past the friend finder and the signers['] ingress[end if]."
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
sword	"[if beast is fungible and siren is not fungible]Attack the beast[else if beast is fungible]You need a better grip on the sword[else if sheath contains sword]You should draw the sword around the source of the noise[else]The sword can't be used, yet. You can't go waving it in the city[end if]."
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
slope	"You can climb up the slope [if toeholds are fungible]now the toeholds are part of it[else if grips are fungible and ropes are fungible]with the grips and ropes[else]but don't have enough traction, yet[end if]."
tool shed	"[one of]You need a way up the slope. It's too smooth and steep.[plus][or]There are two ways through--flip the tool shed, or flip the ropes and spore.[plus][or]The tool shed isn't very useful, but maybe it can be.[plus][or]It's got some odd protrusions, which are a hint.[plus][or]They can hold the edge of your feet, e.g. your toes.[plus][or]They're [b]TOEHOLDS[r].[minus][cycling]"
toeholds	"With the toeholds around, you only need to [if poles are fungible]do something with the poles[else]go up the slope, though [toho][end if]."
outcroppings	"These clue what the toolshed can become."
u lock	"Just there to keep you out of the toolshed. Which you can change."
protest	"[one of]Three people are still a protest. How can you cut them down?[plus][or]They have REAL jobs. They make something, they say![plus][or]Apparently they use clay and say 'It's kiln me!'[plus][or]The people in the [b]PROTEST[r] are really [b]POTTERS[r].[minus][cycling]"
riot	"[one of]It's a riot! Way more than three people![plus][or]How would you cut it down to three?[plus][or]Make them a [b]TRIO[r].[minus][cycling]"
links	"[one of]The potters need something to do with their hands.[plus][or]The chain links have been dropped. Perhaps you could use them for less violent purposes.[plus][or]They can become something fragile, for a bonus point you can guess.[plus][or]They can become [b]KILNS[r].[minus][cycling]"
potters	"[if kilns are off-stage]The potters need something to work with--those chain links aren't doing much right now[else]The potters are happy with their kilns[end if]."
kilns	"[if potters are off-stage]They need people to operate them--perhaps the ones around you can be changed[else]Just fine as they are now[end if]."
Red Bull Burdell	"[one of]Red Bull Burdell does like yelling GET OUT.[plus][or]And changing stuff won't help you here.[plus][or]So maybe you need to change what he says?[plus][or]The gadget [if player has gadget]would be[else]was[end if] marginal help with six reds.[plus][or]He has but one weakness, blah blah blah...[plus][or][b]TUG TOE[r].[minus][cycling]"
toe	--	Red Bull Burdell
X ITES exits	"[one of]The exits remind you of something to do. Or not do. You don't have to. There is more than one solution to win. The other two deal with the Means Manse itself.[plus][or]You want to do something that completely ignores the [b]EXITS[r].[plus][or]You need to do something that doesn't match X [b]ITES[r] anywhere.[plus][or]Your work's done. Time to [b]EXIST[r].[minus][cycling]"

to say toho: say "[if grips are fungible and ropes are fungible]you did a bit more[else]you can also meddle with the sprig and spore[end if]".

to say no-sto: say "Nothing is hidden in [noun]".

to say nxt-g: say "Maybe next game".

to say snb:
	let ostage be the number of off-stage disguise-pieces;
	say "[if ostage is 0]can be combined with the other two pieces. PUT X ON Y[else if ostage is 1]can be combined with that other piece you have and one you don't have[else]needs a couple other things[i-gt] to become something[end if]"

to say put-can: say "[one of]Examining the livers indicates they need to be processed.[plus][or]You need to put both livers in the canister.[plus][or][unless River Ville liver is moot][b]PUT RIVER VILLE IN CANISTER[r]. [end if][unless viler liver is moot][b]PUT VILER LIVER IN CANISTER[r]. [end if][minus][cycling][no line break]"

to say i-fle: say "[if player is not in Flesh Shelf] in Flesh Shelf[end if]".

to say i-gt: say "[if player is in Gnarliest Triangles][else] in Gnarliest Triangles[end if]".

volume general tables

[alphabetical order]

book general

table of kibitzes
kib	helpy
whiff of stew	"Four entries. Whiff and smell are five letters. The reading must rely on what the smell is."
aroma of teas	"Four entries. Aroma and smell are five letters. The reading must rely on what the smell is."
attics	"Hmm. You thought the attics would be more appropriate for the doll house, but maybe the gadget detects you can change back, too."
motto	"Since Motto is only five letters, you wonder what's up, but it's labeled [b]A MOTTO[r]."
tall trio	"You scanned each of the tall trio, and the readout didn't change."
reading	"[read-drain] the drainage."
drainage	"[read-drain] a reading."
cabinet	"Odd, though--when you scanned the bumpy bits, you saw the gadget change readings[if current action is cring or gadget is cert]. The second entry, in particular, from red to green[end if][if current action is cring]. That was for certifying, but you saw changes when rectifying, too[end if][if current action is cring or gadget is rect]. The green entry, from the third slot to the fifth[end if]."

table of nowheres
theloc	thereject
Rested Desert	"The size of the desert, um, deters you. You're steer'd back to the [if OR DO door is off-stage]odor[else]door[end if][if bugle-played is true or blot is not off-stage]. The one you can probably go through[end if]."
Thickest Thickets	"[one of]You hit a snag, and the [if toga is in Thickest Thickets]toga[else]hole in the thickets[end if] nags you. Or seems to[or]You see a snipe among some pines and lose your spine[or]You're feeling negative to vegetation, so you can't see a way through[or]A stick crawling with ticks gives you pause[or]I won't let snag-tangles get at you that way[cycling][if goat is in Thickest Thickets] (you can go [b]IN[r]--there are no specific directions here)[end if][one of]. Plus, if you could go anywhere unseen, you might regret winding up in the Tuffest Tuffets[or][stopping]."
Notices Section	"You hear tectonic noises, then an evil voice whispering 'Once it's...' You sense running away wouldn't work. You should probably explicitly [b]ENTER[r] the gateway[if gateman is in Notices Section][else], though it'd be nice to have some help first[end if]."
Flesh Shelf	"It's too steep down every way except back east."
Gnarliest Triangles	"You don't need an alert sign to know running into the walls any direction but west would cause a real sting."
Emptiness Sepiments	"The scoffer coffers and scoffin['] coffins are impenetrable. But even if they weren't, there are probably slayer layers, or worse, behind."
Ghouls Slough	"Without any sort of guide to look at you'd be (ugh) SOL--or it'd be a pointless, uh, slog[if player has maps]. Hey, those maps might be useful to look at, though[end if]."
Frost Forts	"[if vowels are in Frost Forts]The gnash hangs would, err, shnag you[else]The werewolves will catch you easily[end if]."
Trap Part	"[dmb]You can only go north to the kitchen or east[or-room]." [see before going in trap part for the other text]
The Nick	"You're trapped. If only the nick could be changed to something more to your taste."
Kitchen	"[dmb]You can only go [can-go of south] or [can-go of east]."
roomroom	"[dmb]You can only go [can-go of west] or [can-go of north]."
Stiller Trellis	"[dmb]You can only go [can-go of west] or [can-go of south][if the room east of Trellis is Sacred Cedars and scraped wall is not in Stiller Trellis and trel-priv is not moot] or, since you opened the hallway, east[end if]."
moor	"The rime-mire all round is too dangerous, but nothing's stopping you from leaving (opposite) the way you came, back to the [b]ROOM[r]."
Sacred Cedars	"There is no other way except back west. Anyway, you might find scared cadres you aren't equipped to deal with, or scarce dreads."
Undesired Underside	"A hotel is west, a camp is north, [the ingress] leads east, and some sort of terminal is south. But there are no special exits[inside-ambig]."
Roarings Garrison	"There's a residence north, a library west, a flower shop east, and a seedier area south. But there are no special exits[inside-ambig]."
Bile Libe	"Perhaps there is a I-Be-Libel Lie Bible somewhere in the recesses here, but it and those beats would be too much at once. You probably just want to go back east."
Fo Real Florae	"The faeries wouldn't take kindly to snooping. The only safe way out is back west."
The Ol Hotel	"You don't want to find that L'Hôte Helot is The Hell, Too. Better to find a way to fix it, or the city."
Esoteric Coteries	"The Earliest Ateliers are not for you to visit. You're more an adventurer than a researcher."
Elm Train Terminal	"The tracks lead down east, and the city is back north."
Bassy Abyss	"You try to flee, but there's no way back to Elm Train Terminal. You feel a sharp headache. It's [one of]an aligns signal, and it must be encompassing the whole abyss[or]that aligns signal, again[stopping]. It turns you back to face the [b-b]."
Astral Altars	"[one of][flare-to]As you step away from the altars, a weird barrier blocks you. It's very tarsal. Then a voice in your head booms 'THE FERAL FLARE MUST PROTECT ONE LIKE YOU FROM INFIDELS!'[paragraph break]Unfortunately, it's also protecting you from leaving, so you'll probably need a bit more magic.[or]No, the feral flare is pretty much any which way. Looks like you'll need to do something with the tiles and stile, instead.[stopping]"
Leis Isle	"[if woodland-revealed is true]No, you already saw the woodland was faked[else][woodrev]You step into the woodland and somehow bang your head! You see the word DOWNLOAD blinking in front of you. Odd, very odd[lei-down][end if]."
Rived Drive	"You'd probably get lost that way. Besides, the vague commotion to the east, past the rising [p-s], seems worth seeing."
Potshot Hotspot	"The only way you'll want to [if red bull burdell is not moot]try to [end if]go is east."
Means Manse	"[one of]You suddenly have ye taxin['] any-exit anxiety. Like you're in the middle of an exitstential crisis.[or]I best sit, be, you think.[or]Sit, ex-adventurer.[or]Where would you go? Texis, perhaps.[or]Seeing exits just makes you want to...[or]Aww, c'mon, this one's just switching TWO WHOLE LETTERS. You had other tougher ones to MAKE it here! There are alternate solutions based on Means Manse, but ... maybe you're overthinking.[stopping]"

table of ranks
show-at-end-rule	rank-name	to-achieve
a rule	"(ow,) me, a nervy every(wo)man"	"only in Busiest Subsite"
--	"reduced deducer"	"in Rested Desert or Thickest Thickets"
--	"stunted student"	"in Notices Section"
--	"benigner beginner"	"Trips Strip visited, [sol-by of 0]"
--	"solider soldier"	"[sol-by of 1]"
--	"a mature amateur"	"[sol-by of 2]"
--	"new hero now here"	"[sol-by of 3]"
--	"a smart gamin['] anagrammist"	"win the game"

to say sol-by of (nu - a number): say "[nu in words] of Stores F/I/M solved yet"

to say decide-rank:
	choose row player-rank in table of ranks;
	say "[rank-name entry]";

table of readables
to-read	the-red
toga	"[first custom style]A GOT-TA GO[r] ... hmm, not the very best ever." [ordeal loader] [bold-ok]
gateway	"'E. g., man, TA!' is written in red, beneath the WARMUP/UM, WARP text. [if board is examined]The red text is just like [first custom style]A TAN GEM[r] and such on the broad board[else]Maybe it's significant that the writing's red, and that can help you[end if][if mega ant is off-stage and gateman is off-stage]. There's also a helpful ENTERING TOO SOON WILL NOT KILL YOU message, which is nice[end if]." [bold-ok]
acne bit cabinet	"Here is one of several writings in red in the cabinet: [one of][first custom style]I C BEATN[r].[or][first custom style]IN, BE, ACT!!![or][first custom style]C N-E BAIT??[or][first custom style]CIT-E BAN!!![or]Numbers for a [first custom style]NITECAB.[or][first custom style]ABE [']N TIC![or][first custom style]TEN ABC, I!!![in random order][r]" [bold-ok]
store i	"Red writing:[paragraph break][first custom style]RISE TO RITES, O! OR TIES.[line break]RISE TO TIES OR RITES, O![r]" [stores] [bold-ok]
roadsign	"The sign appears to say, in all red, [one of][first custom style]E FORTS/OSTFER[or][first custom style]TRESFO/S EFTRO[cycling][r] before a gust of wind picks it up and flips it around." [bold-ok]
great grate	"The grate seems to be made by [hktn]. It's not steel, but it's still too thick. The redness of [hktn] surprises you a bit." [sortie]
tall trio	"The names are Al, Tri, and Lot. [one of]If you [b]READ[r] again, maybe one of the six combinations will make you see red[or][first custom style]AL/LOT/TRI[r] makes you see red, for whatever reason[stopping]." [bold-ok]
spearman	"The spearman's name, in red, is [first custom style]MR. SANE PA[r]. [one of]There are three additional bits of writing that may help you, too[or]You also read, in red, one of three lines: [first custom style][one of]MEAN RAPS[r][or]MS. P. ARENA[r]--crossed out, but red[or]AMEN, RASP[r][in random order][stopping]." [bold-ok]
scraped wall	"[if scraped wall is hayfilled]You can no longer see where it says [end if]HALLWAY UNDER (UN-)UN-CONSTRUCTION." [bold-ok]
a reading	"On one of several pages, you see: [one of][first custom style]AID ANGER[r] is written[or]conspiracy theories from [first custom style]EDGAR IAN[r][or]silly musings on being [first custom style]IN A GRADE[r][or]a horror story: [first custom style]DINER, AAG[r][or]conspiracy theories from [first custom style]NIA EDGAR[r][or]an exhortation to [first custom style]RIDE AGAN[r] (sic) on the next-to-last page[or]an order that this all should be [b]RED AGAIN[r] (sic) on the last page[stopping]. The nonsense makes you see red." [metros] [bold-ok]
neon pig	"Apparently the neon pig is a creation of one [first custom style]INPENGO[r]."
controls	"You [if controls are in gin nope opening]remember[else]notice[end if] that it's underwritten (in red) by [first custom style]ORTON LSC[r], whoever they are."
tiles	"The tiles blur a bit as you (de)-focus just right. You see subtleties in the blues and brown that seem to spell out [first custom style]LEST I[r]. But with the effort, your eyes water, and you see red a bit." [resort]
u lock	"Red writing shows the U-Lock brand is [first custom style]OLD THOSE[r]." [bold-ok]

to say hktn: say "[first custom style]HECK TIN[r]"

table of warpcmds
warp-cmd (indexed text)	mystore	myport	myreg	warp-result
"logoi"	store f	scented descent	forest	"You convince the powers that be that you remember all the words from Store F and the forest."
"sooth"	store i	posted depots	sortie	"You convince the powers that be that, in sooth, you really did run through Store I and the sortie earlier."
"say bs"	store m	trade tread	metros	"You convince the powers that be that the idea you didn't solve Store M and the Metros is nonsense."

book the notepad

table of notepad entries
short	known	verify	topic (topic)	blurb
"access"	true	false	"access"	"[b]ACCESS[r] toggles screen reader accessibility."
"advice"	false	--	"advice"	"--Nothing over eight words. Maybe one two-word deal.[line break]--Red Bull Burdell is much bigger and stronger than you. Traditional fighting won't work."
"angle"	false	--	"angle"	"Lets you see what can be changed."
"board"	false	--	"broad/board"	"[if location of player is Notices Section]It's got notes on needing two simple 7-letter portmanteaux[how-many-notices][else]You're past the bit about the introductory puzzles[end if]."
"certify"	false	--	"c/cer/cert/certify"	"1 beep = 1 word, buzz = already changed, silence = nothing.[line break]red/green = right/wrong letters."
"flips"	false	--	"flips"	"[what-can-flip]"
"glean"	false	--	"glean"	"Lets you glimpse what you need to do."
"lecture"	true	--	"lecture"	"An hour-long pre-lunch lecture by some fellow named Curt Lee netted you three pages of doodles. You remember him saying how [b]ONE WORD[r] could open a [b]NEW DOOR[r] in this age of technological innovation if you picked the right one, and that's more magic than real magic, if real magic existed, which it doesn't.[paragraph break]But hey, at least lunch was nice."
"lube"	false	--	"phial" or "lube"	"Worth looking into. Though you probably just want to [b]ANGLE[r] and [b]GLEAN[r]."
"macros"	false	--	"macros"	"[tell-macros][run paragraph on]"
"notepad"	true	false	"notepad/pad/note" or "note pad"	"You keep the date you started using your notebooks on the inner front cover. This one's from three years ago."
"opt in/no tip"	false	false	"opt in" or "opt/notip/optin/tip" or "no tip"	"[b]OPT IN[r] gives you more detail when you are on the right track. [b]NO TIP[r] gives you less detail but lets you know you have the right anagram."
"options"	true	false	"options/option" or "post opts" or "ops"	"[opts-list]"
"poss"	false	--	"poss"	"[b]POSS[r] toggles if you see the possible minimum and maximum scores on solving a region. It's a small spoiler/clue for last lousy points."
"random dialogue"	false	true	"random/dialogue" or "random dialogue" or "uhhs/hush"	"[b]UHHS[r] turns on random dialogue, [b]HUSH[r] turns it off."
"rectify"	false	--	"r/rec/rect/rectify"	"green dot = 1st letter. Red dot = last letter. Blue = the rest."
"recuse"	false	--	"recuse"	"If you secured, [b]RECUSE[r] will come in handy once you've solved two quests, to skip a third."
"Red Bull Burdell"	false	--	"red bull burdell" or "red bull" or "red/bull burdell" or "red/bull/burdell" 	"The nemesis to be defeated here in Yorpwald. He is too physically strong. Perhaps anagramming magic can help."
"red"	false	--	"red/reds/redness"	"Any words that are red, or make you see red, or make people turn red, are all wrong, just like Red Bull Burdell. This is handy to know--what do you need to mess with? And how shouldn't it be messed with?" [note: this comes second, because otherwise it trumps "red bull burdell"]
"retry"	false	--	"terry" or "retry"	"[b]RETRY[r] gets Terry to send you [if Trips Strip is visited]back [end if]to the Trips Strip[if Trips Strip is unvisited], wherever that is[end if]."
"secure"	false	--	"secure"	"Having [b]SECURE[r] activated will make the gadget less useful on any one puzzle but will let you skip a chunk of your quest later. [b]SECURE[r] will be locked once you visit certain places. The button will flash when you need to choose."
"spaces"	false	false	"space/spaces"	"[b]SPACES[r] toggles whether you have an extra space in raw gadget results. [b]SPACE[r](S) [b]ON[r]/[b]SON[r] forces it on, while [b]NO SPACE[r](S)/[b]NOS[r] forces it off."
"stores"	false	--	"store/stores/malls/shop/shops/lots/mall"	"--[if scented descent is fungible]Forest[found-status of forest][else]Store F[end if][line break]--[if posted depots are fungible]Sortie[found-status of sortie][else]Store I[end if][line break]--[if trade tread is fungible]Metros[found-status of metros][else]Store M[end if][line break]--[if resort is fungible]Resort[found-status of resort][else]Store R[reso-maybe][end if]"
"talking"	true	--	"talking"	"[b]ASK[r] for other people, or just say the word/s otherwise. Specific topics or in-game things are suggested, but default dialogues may give hints."
"the goat"	false	--	"goat/toga"	"Certify = [rcn][gc][rc][rc] and Rectify = [rcn][bc][gc][bc]."
"to do"	false	--	"todo" or "to do"	"What's on tap right now: [if number of padded flippable not flipped-yet things is 0]nothing[else][list of padded not inflexible not flipped-yet things][end if]."
"verbs"	true	false	"verbs/verb"	"[verb-list]"
"warts"	false	--	"warts"	"'No, too stupid a fad. I put soot on warts.' But what is it that's too stupid?"
"writing"	false	--	"writing"	"If something has writing on it, you need to [b]READ[r] or [b]EXAMINE[r] something instead of [b]X WRITING[r]."
"xx"	false	true	"xx"	"You can [b]XX[r] after you eat the saltine in order to see what an item should be. This has one use, and benign items do not waste it."

pf-warn is a truth state that varies.

to preef-l (flipper - a thing):
	if flipper is unfigured:
		say "[line break][i](That's worth noting in your notepad for later, so you do[one of][or], once again[stopping], under [b]FLIPS[r].)[r][if ignore-line-break is true][run paragraph on][end if]";
		now ignore-line-break is false;
	now flipper is prefigured;
	choose row with short of "flips" in table of notepad entries;
	now known entry is true;

to preef (flipper - a thing):
	if flipper is unfigured:
		say "[i](That's worth noting in your notepad for later, so you do[one of][or], once again[stopping], under [b]FLIPS[r].)[r][if ignore-line-break is true][run paragraph on][else][line break][end if]";
		now ignore-line-break is false;
	now flipper is prefigured;
	choose row with short of "flips" in table of notepad entries;
	now known entry is true;

table of preflip clues [this must have a regular item first due to a small bug in 6g]
preflip	pretodo
gateman	"nametag -> gateman" [Ordeal Loader]
tenibac	"cabinet -> Bactine" [stores]
ogled lodge	"Store R -> Resort"
silver	"[if livers are not moot]livers[else]sliver[end if] -> [b]SILVER[r]" [forest]
drapes	"spread -> [if red asp is in Emptiness Sepiments][b]RED ASP[r] -> [end if]drapes"
r2	"room -> moor" [sortie]
hallway	"[if hay is part of scraped wall]wall -> [b]HAYWALL[r][else][b]WALL[r] -> haywall[end if] -> hallway"
missile	"smilies -> missile"
soil	"oils -> soil"
silo	"oils -> silo"
sword	"words -> sword" [metros]
keycard	"dry cake -> keycard"
beast	"beats -> beast"
store p	"Store P -> [b]PRESTO[r] in [aro]"
store u	"Store U -> [b]ROUTES[r] in [aro]"
store v	"Store V -> [b]TROVES[r] in [aro]"
store w	"Store W -> [b]TOWERS[r] in [aro]"
store y	"Store Y -> [b]OYSTER[r] in [aro]"

to say what-can-flip:
	if pf-warn is false:
		if word number 1 in the player's command is not "pf":
			say "[i][bracket]Note: you can abbreviate this with [b]PF[r] in the future.[close bracket][r][line break]";
			now pf-warn is true;
	if number of prefigured things is 0:
		say "You have nothing else you figured in advance.[no line break]";
		continue the action;
	say "Stuff you figured, but you couldn't use it right away: ";
	repeat with pft running through prefigured things:
		let got-one be false;
		repeat through table of preflip clues:
			if pft is preflip entry:
				say "[line break][pretodo entry].";
				now got-one is true;
				break;
		if got-one is false:
			d "We need an entry in table of preflip clues for [pft].";
			say "[line break]You remember you need to think [pft] at some time.";

to say tell-macros:
	if marcos-trumped is true:
		say "[b]CR[r]/[b]RC[r] (something) = C (something) + R(something).";
	if h-short-told is true:
		say "[b]ANGLE[r]=[b]AN[r] to see changeable items, [b]GLEAN[r]=[b]GL[r] to see the story ahead."

to say how-many-notices:
	if gateman is in Notices Section:
		if getaway is in Notices Section:
			say ", both of which you got";
		else:
			say ", of which you've got one--the nametag/gateman";
	else:
		say ", which you need to figure out. The nametag seems to change to someone who can help you with whatever the gateway should become";

[how to include a topic IN WORDS]

book dialogue

table of matched thing responses [tsb]
asked-person	subject-thing	npc-text
gateman	redness	"[one of]'Red writing, like Red Bull Burdell, is totally wrong in many ways. So many, it can be a help.'[paragraph break]He shows you some calculations that any such writing can be expected to eliminate 60% of your possible choices, because 1 minus 1/x to the x is 1/e, more if there's a duplicate letter--the Inclusion-Exclusion Principle applies here, and you nod as he mentions the exact numbers aren't important, but every clue helps.[ask-red][or]'Hm. To keep it simple, red is wrong. And that helps you eliminate wrong guesses.'[stopping]"
gateman	board	"'Good idea to take notes on it. But I can tell you about other stuff. Like [if player has gadget]your gadget[else]the gadget in the cabinet[end if]. Or even how it works.'"
gateman	doll house	"[if attics are off-stage]'A nice warm-up puzzle, but if you're in a hurry, I'll respect that too. Not the doll house that needs changing.'[else]'You don't need to take it with or anything. Nice job with it, though.'[end if]"
gateman	static	"'[if attics are off-stage]If it's kind of annoying, you can get rid of it. Or you should be able to. But you don't have to.[else if attics are fungible]Good job getting rid of it.[else]Err...I know you're in a hurry, but can if you could change it back to the attics before you get going, my ears would thank you.[end if]'"
gateman	attics	"'[if attics are off-stage]Yes. Do--whatever it is--to make them appear. I hope you haven't lost your powers.[else if attics are fungible]They're more appropriate to the doll house, definitely.[else]I kind of prefer [']em to the static. You wouldn't mind switching them back?[end if]'"
gateman	blue lube	"[about-lube]"
gateman	phail phial	"[about-lube]"
gateman	prep paper	"'No, I'm not sure how we all know this. There's a lot of high-level magic theory. And if we knew the details and had your powers, maybe one of us could try. But--well, it's a start.'"
gateman	Red Bull Burdell	"[one of]'Like he was thought up by a demonic comedian. Made a desireable age disagreeable. Seemed a poseur when he uprose from abuser to saboteur. He'd make a poignant nag point, acting like a rowdy pal. Heard his cleats in the castle as he did something called 'Leveling up.' Maximizing stuff called hit points and magic points. Things went awry before we were wary.' You sense there's more, if you can bear it.[or]'Rum toil became turmoil. We let the ploy draw us in...then Prowl Day made the world pay. Against Raw Rori, a warrior, the devil lived. We ignored eroding. He humbled Bud Helm. We have lost LOTS because of him. Mega-sad damages. He beat us all. Rooftops of troops on Fort Oops. Profs too. Auctioned Education. I cautioned...' His eyes grow mistened. 'Ten dimes say it's end times. We've waited for an upturn to turn up...'[or]'The time for talk is over.'[stopping][one of][line break][rbb][or][stopping]" [desireable is that way to make a corny anagram, so keep it]
gateman	tip	"[tip-dialogue]"
gateman	pit	"[tip-dialogue]"
gateman	tin foil info lit	"'Sane Sean. Hmph. Either he's dumb enough to believe Red Bull Burdell's a good guy, or he's a deep undercover double agent.'"
gateman	Bud Helm	"'Yeah, we were surprised the bum held Bud Helm.  Bud Helm bled, hum? He's a broken man, now.'"
gateman	Raw Rori	"'Pure strength. That won't get the job done here.'"
gateman	pen	"[one of]'How thoughtful! Nobody's asked me for my autograph for a long time! Wait, we don't have time for that nonsense.'[or]You probably know more about the pen than he does.[stopping]"
gateman	dope tan notepad	"'Good choice, taking notes.'"
gateman	new land	"'I can't tell you everything about it. But you'll see for yourself.'"
gateman	nametag	"'Oh, did you have problems with it? Sorry. I'd have helped, but I was--I mean, I wasn't [i]at all[r].' He rolls his eyes."
gateman	yourself	"[your-job][run paragraph on]"
gateman	gateman	"'Once I solved one of those hero mills with more hills...' he blinks. 'I'm not important. You are. And what you can do.'"
gateman	arrow	"'That's just to show [b]SECURE[r]/[b]RECUSE[r] is linked to whether you can change between [b]RECTIFY[r] and [b]CERTIFY[r].'"
gateman	knot	"'It's good and tight. Case it gets joggled while you adventure. If the gadget isn't tagged, it loses its magic because, well...'"
gateman	examples	"'Hm, [b]LEMON[r] and [b]MELON[r] have three letters in common, and they're all green. The two that switch are red. So that's not bad. [b]PASTE[r] and [b]TAPES[r], on the other hand...the green T and red S on the left map to the first last letters on the right, and the P and E are green and red and map to the first and last letters on the left.'"
gateman	disclaimer	"'Necessary legalese. But really, use the gadget as often or little as you want or need. Nobody will judge.'"
gateman	Recent Center	"'The Recent Center is a fancy name for a screen. It will light up when you scan something relevant, and that data will stay.'"
gateman	handle	"You can't imagine anything tricky about the handle, so you decide not to ask."
gateman	goat	"[goat-toga]"
gateman	toga	"[goat-toga]"
gateman	reed	"[reed-deer]"
gateman	deer	"[reed-deer]"
gateman	getaway	"[oma-gate]"
gateman	gadget	"'[one of]Powerful. Not as a weapon. Won't be many fights. But you can [b]SCAN[r] an object with it, and it won't break down from over-use. Use it as much or as little as you want. There's concrete problems, then there's how many hints make your quest most fun, and that's up to you[or]It can [b]SCAN[r] other things[stopping]. Ask about a specific button if you're interested. Not your only source of clues, either. There's also the color red.'"
gateman	s-r	"'Could make things tougher at first, but then easier, maybe. Switch it, and you can only [b]CERTIFY[r] or [b]RECTIFY[r], but not both. Later, though, you can [b]RECUSE[r] yourself later from one of the three areas to conquer. It'll warn you, too, by flashing before it locks. Magic fields might do that, midway through an adventure or so.'[pad-sec]"
gateman	noise bag	"'Cities gotta have noise but there's one just constantly has it. Burdell's behind it, too, claiming he couldn't have leveled up without that techno-piffle and people get used to it if they try. Actually calls it music. He's got a lieutenant to enforce it.'" [!! HACK ... NOISE BAG comes before NOISE]
gateman	saltine	"'Miniscule, but more than mini-clues. The next item that baffles you, eat that and [b]XX[r] ... not just [b]X[r] or [b]EXAMINE[r], and it'll make sense. Oh, apologies in advance: good flavors and good magic don't mix.'"
gateman	cabinet	"'[if lube-asked is false][lubeit]It's kind of picky and defensive. Might not give you everything [']til I tell it.' He goes over to the cabinet, pats it on its top, and returns. 'Now you should be able to get everything from there.[else]Everything in there's yours.[end if]'"
peasant	hay	"'Not very useful for building something unless you want it to be destroyed quickly. Can't think of any reason I'd need that. Straw, on the other hand...'"
peasant	poem	"'I try my best at it.'"
peasant	straw	"'Good, sturdy stuff. I could use some to repair my hut. Can't imagine anyone would want what I have, though.'"
peasant	Woeful Pat	"'He's better than I am at poetry, I'm sure. I'm not educated enough to know why. Frustrates me sometimes.'"
peasant	Mean Old	"'Used to be much nicer, I'd say!'"
woeful pat	woeful pat	"[flatter-pat]'Of course it would be absorbing to learn about my life and struggles and views,' he drones airily. 'Suffice it to say I deserve also to be known as [b]SANE PAT[r], for all the accusations leveled against me. But you will find right now my poetry is even more profound! It has an [b]ANAPEST[r] beat.'"
woeful pat	Mean Old	"'He does not censor my art. He cannot be that bad!'"
woeful pat	peasant	"'There is one who tries his best. But he is too...obvious.'"
woeful pat	anapest	"[if anapest-clued is false][anapest-clue][run paragraph on][else][one of]'A mere creative writing teacher could educate you as to the pedantic details of writing doggerel that mimics my epic's flow!'[or]You didn't REALLY want the anapest explanation again, did you?[ana-true][stopping][end if]"
deadbeat	beats	"'They're nice and all for being an excuse not to work but they're lame and all because it's hard to concentrate for maximized angst. I'm tired of them, [if bastion-evac is true]dude[else]you square, yo[end if].'"
deadbeat	nerds	"The deadbeat starts shaking as he rattles off how the nerds east of the Underside have forgotten their roots."
deadbeat	faeries	"The deadbeat doesn't believe in magic, now. But he did as a kid."
deadbeat	red bull burdell	"'He is oppressive, man, but he is just a symptom of disparity and malaise.'"
deadbeat	poses posse	"[if poses posse are moot]'You showed them, dude!'[else]The deadbeat starts up some nonsense pseudo-sociological mumblings.[end if]"
deadbeat	lost corn	"[if bastion-evac is false]'Hey, Man, like, how do we know you don't, like, like the Man, man? Hey? Hey?'[else if lost corn is fungible]'Oh, yeah, it's yours, man, I guess. It's real corn, not that genetically modified stuff from,' he sees red for a sentence, '[first custom style]SLORNTCO[r] or that nasty dried stuff from [first custom style]ST ROLCNO[r].'[else]'Whoah. You must've like did something with that corn. Biosustainibility, man.'"
deadbeat	termite emitter	"[if player does not have emitter]'What? Do you know something?' he looks furtively around, more convinced than ever you're with The Man, man.[else if bastion-evac is false]'Whoah. No fingerprints, no proof it's mine.' He clearly doesn't trust you, yet.[else][try-flies][no line break][end if]"
faeries	drainage	"'Perhaps you can turn something in this city into a flower. We are out of ideas. How can drainage become a flower?'"
faeries	gardenia	"[if drainage is in Undesired Underside]You don't have a gardenia, yet. But you can find or make one.[else][faery-flower][end if]"
faeries	heaths	"[if player has begonias or player has noise bag]The faeries have been generous enough.[else][faery-flower][end if]"
faeries	begonias	"[if player has sheath or player has heaths]The faeries have been generous enough.[else][faery-flower][end if]"
faeries	sheath	"[if player has sheath]'It is up to you to use it. We cannot help further.'[else]The faeries wonder aloud what sort of magic could conjure a sheath.[end if]"
faeries	noise bag	"[if player has noise bag]'It is up to you to use it. We cannot help further.'[else]The faeries wonder aloud what sort of magic could conjure a noise bag.[end if]"
faeries	merchandise	"[faery-flower]"
faeries	beats	"'It is terrible! Our hearing is even more delicate than a clumsy human's. We can do no decent long-term magic with it around.'"
faeries	brocade	"[if player has brocade]'Do with it what you need.'[else if brocade is moot]'You have disposed of it! We hope it was useful.'[else]'It is free. But useless to us.'[end if]"
faeries	clover	"'Just weeds! Not useful for our sophisticated magic. Maybe useful for mere human magic, though.'"
faeries	tomato	"'[if player has tomato]Such a putrid plant! Keep it away from us[else]Even humans and monsters must find it revolting[end if]!'"
faeries	tulip	"'For human flower magic, not bad at all! We guess.'"
faeries	deadbeat	"The fairies buzz and give superior sniffs."
faeries	nerds	"The fairies buzz and give superior sniffs."
nerds	beats	"'Anyone can be smart enough to build noise canceling homes to get rid of the beats!'"
nerds	controls	"[if player does not have controls]The nerds might be experts on technical stuff, but they'd be over your head.[else]'Oh! These are simple controls! You don't even need to know about induction and charges and anything. Just slap them in where there's something missing. Pf, barely worth the time to [b]ASK NERDS[r] about.'[end if]"
nerds	deadbeat	"The nerds aren't big on social stuff. They're more about the technical stuff, about showing answers to questions you have. And questions you don't know you have yet."
nerds	faeries	"The nerds assure you science is better than magic."
nerds	red bull burdell	"'Sometimes Yorpwald is so dumb it deserves a thousand years of his rule. Not that he deserves to rule for a thousand years. We need someone smart enough to [b]ASK NERDS[r] the right thing to help dethrone him!'"
nerds	tracks	"'We wouldn't touch it, that's for sure. I mean, even if we could see where it went.'"
nerds	Tulip	"[if player has tulip]'It's not going to burn out for a long time.'[else]'We've got plenty of light here. You can have it, if you know what to ask us about. And if the tulip would help.'[end if]"
poses posse	dry cake	"Someone puts their hand to their lips. Someone else shakes their head. You don't DESERVE that cake, according to them."
protest	kilns	"'If we were artsy, we'd use [']em. But we're not. Take some magic to MAKE us artsy.'"

to say tip-dialogue:
	say "'Well, one of rectify or certify is overall better than the other. Would you like to know which[one of][or], again[stopping]?'";
	if the player dir-consents:
		say "[line break]'Without getting too mathy, you can expect one of the letters to [b]CERTIFY[r] correctly if there are no repeats, but a bit more with repeats--one and a half, in an eight-letter word with a repeat. [b]RECTIFY[r], you're always guaranteed the first and last right. So it's a bit more help if you [b]SECURE[r] later. But how much challenge you want is up to you. Either can work with any red writing you might see.'";
		pad-rec-lump "certify";
		pad-rec "rectify";
	else:
		say "'There's no wrong setting, really.'[no line break]"

to say pad-sec:
	pad-rec-q "secure";
	pad-rec "recuse";

to say rbb: pad-rec "Red Bull Burdell".

to say lubeit: now lube-asked is true.

to say ana-true: now anapest-clued is true.

to say rose-sore: if player does not have gardenia, say "[one of]. It will probably be tougher than getting a sore and changing it to a rose[or][stopping]"

table of unmatched topic responses
default-talker	gen-blah
Red Bull Burdell	"'Ego? Tut!' you mumble, but it has nothing on action."
banshee	"'I strip spirit!' it wails, then, 'Rather be breather!'"
beast	"It cares not for conversation, only noise."
beats	"Dude! They're clearly busy bringing sexy back. You text adventurers don't know how to act."
deadbeat	"He mumbles something about [if bastion-evac is false]chillin['] with his ill chin and how you're probably down with the man's anthems and aligned with those yuppies to the north, glancing furtively at the lost corn[else if corn is fungible]how you haven't put that lost corn to good use yet[else]whatever you did with that corn better work[end if], and he also complains about [if Esoteric Coteries are visited]those nerds you saw[else]nerds down southish, for some reason[end if]."
faeries	"[if fairy-worthy is false]'You must bring a powerful flower up! For our magic garden-and-a-third! There must be one in the garbage in this city! All we can make with the beats pounding are freesias, and we are getting sick of those!' they exclaim[rose-sore].[else]'We are grateful! You are an exceptional human! Thank you so much! [sure-you]! Now go and save the city.'[paragraph break]Hm, they didn't really seem to be listening to you, but fair enough, that's something."
gateman	"[one of]'Eh?! There's all sorts of things to ask me about! That goat back there! Your quest! Your purpose! The [if getaway is fungible]getaway[else]gateway[end if]! General advice! No time to scold clods asking about--whatever you just mumbled about.'[or]Nat Egam pauses. 'There's so much in the world we all want to understand. But unfortunately, we only have time for the questy stuff. So ask me about that goat, your quest, your purpose, general advice. Or--well, just go through the getaway gateway[unless player has tagged gadget] once you have the tagged gadget[end if]. Oh, about the gadget: you'll learn by doing.'[stopping]"
gy	"The men passing through seem too in a hurry to talk, but you doubt they know much."
line of no life	"You could never get everyone's attention at once."
liches	"They are too busy moaning to each other."
nerds	"[one of]'Hm, should we even talk to an outsider about that?'[paragraph break]'Well, if they found their way in, they can't be THAT dumb!'[paragraph break]'Well, they'll have to find the right thing to [b]ASK NERDS[r] like us about if they want us to stop talking about them like they're not here.'[paragraph break]'Maybe they're a lateral thinker. Who knows several ways to get through things.'[paragraph break]'GROAN! Nice Ignorance.'[paragraph break][one of]They don't seem to want to tell you what to ask them, out of principle, but if you keep nagging them, they may let some cryptic knowledge slip[or]They seem to be having fun feeling smarter than you, which is actually kind of good, as maybe the discussions will make more sense this time around[stopping].[paragraph break]'If they don't know what to ask nerds about, they deserve ED'S SNARK!' Ed, indistinguishable otherwise from the rest, leaps, pleased with what elapsed.[or]More annoying banter. Perhaps you could disperse them with the right item. They'd deserve it.[or]Laugh-tons onslaught as you haven't figured what to ask nerds.[or]They form a grin ring, but you close your eyes a bit and girn! They compare your response to K. Sanders.[or]A hundred-nerd DUH follow your latest ask-nerds attempt.[or]'Maroon! A moron! You might as well ask dorks like Karkdoss about something that inconsequential!'[or]An argument on the virtues of code versus Frisbee golf follows, and how nobody would ask geeks like Kaergess for help getting better at either.[or]The nerds jokingly offer to send Sark in your place, maybe to find a left-handed veeblefitzer. You see red at the backhanded insult.[or]Apparently you haven't seen the light for what to ask nerds about. 'We can wait here a thousand years!' one laughs. They debate on what's worse, dumb people in power or out.[or]One nerd tells you you should be sent to the red planet of [first custom style]SKASDREN[r] for asking so many nagging questions.[or]One nerd calculates eight factorial over two factorial, that's 20160, and eventually you'll see the light.[or]A few nerds wonder if anyone has been as snerk'd as you in their presence. You see red, slightly.[or]One nerd jokingly refers you to DR. KASSEN.[or]'[']K, Ren's sad,' one nerd remarks, red-faced.[or]One nerd dumps out his shoe. 'Erks! Sand!' He looks red-faced at such a public display.[or]Duhs won't shut down. Still, the nerds seem to be having fun, so they won't mind if you start over asking about stuff.[cycling]" [bold-ok]
night thing	"'NYURGH! HUNGRY!' Easier to argue a grue away."
peasant	"'I don't know much about that, that's sure. But I know from hay, being an abler baler.'"
riot	"[riot-trio-blather]"
protest	"[riot-trio-blather]"
poses posse	"You get a few pinched, strained smiles, but no actual words. What would they say? 'TALKERS STALKER?!'"
woeful pat	"[pat-wants-quiet]."
wolves	"Now is not the time for a heroic lecture, or even a heroic attempt at peace. Now is a time for violence and gore. You have the equipment."
yourself	"'Self, what should I do now?' 'Self, don't start talking in the third person.' 'Self will make a point of it, self.'"

table of unmatched thing responses
asked-person	npc-text
deadbeat	"He mumbles 'Mt. Rose Rots Me Moster' and giggles stupidly. You probably won't learn much from him except about instruments of subversion."
faeries	"They possess wisdom humans never will, but they don't much want to help you with the physical realm, beyond flowers."
gateman	"'Can't say anything about that. You'll have to find out for yourself later.'"
nerds	"The nerds look at each other, wondering why you would ask about that, really. They are sure you have something important to ask them. Maybe somewhere you can't get to or through. They could figure it out if in your shoes.[paragraph break]Hmm. Apparently, when you [b]ASK NERDS[r], you need to come correct[one of]. All the same, you're a bit annoyed, and you wonder if you can maybe play a mean trick on them to get that tulip, instead[or][cycling]."
yourself	"You start a small mental conversation to take stock of your surroundings and what you might like to do."

to say riot-trio-blather: say "You're not going to reason with them. Maybe reason about them, though.[no line break]"

does the player mean objasking generically the deadbeat: it is unlikely.
does the player mean objasking about the deadbeat: it is unlikely.

to say roo: pad-rec "advice".

to say ask-red: pad-rec "red"

Check talking to (this is the can only talk to talkables rule):
	if noun is not a person, say "For the most part, whn you [b]TALK TO[r], only people can respond. And it's best to [b]ASK[r] them [b]ABOUT[r] something specific. But you really don't have to talk much at all." instead;
	say "You ask about any old thing ([b]ASK X ABOUT Y[r] is the preferred syntax...)[paragraph break]";
	try asking noun about "small talk" instead;

table of matched topic responses
asked-person	topic	npc-text
gateman	"next guy"	"'Optimistic, aren't we?'"
gateman	"gato"	"[goat-toga]"
gateman	"sane/sean" or "sane sean"	"The gateman shakes his head slowly and shrugs. Sane Sean would probably be a lot funnier if Yorpwald weren't in trouble."
gateman	"general advice" or "advice" or "general"	"'Well, you figured a few things out. Probably want to focus more on changing stuff than weird actions. One thing, though. The things you need to change? Nothing too complex. Nothing over eight letters. Okay, maybe one two-word thing with nine. Red Bull Burdell often babbled about getting eighteen intelligence and wisdom from all that leveling up, but he never got a decent vocabulary. The philistine. Also, there will be clues--clues that seem all wrong, deliberately wrong, but their wrongness will stand out and help you.'[roo]"
gateman	"scold/clods"	"'Like I said, no time for that. Time to fix things!'"
gateman	"xyzzy"	"'Fool! That magic word has no place alongside your magic abilities.'"
gateman	"world"	"'Well, it wasn't a very SPECIAL world. In fact it was one of those hero mills. I remember more hills than anything else. Figure it had to break down for the next guy to save it.'"
gateman	"yorpwald"	"'It's been shuffled, nearly f-flushed! You can rescue it from physical, economic and moral malaise. You will need to travel through Old Warpy to get there. The stuff [if number of things in cabinet > 0]in[else]from[end if] the cabinet should help. Ask me about it. I'm a hero emeritus, and stuff.'"
gateman	"old warpy" or "old/warpy"	"'Once you step in, it'll take you somewhere far away. But it's perfectly harmless and not too bumpy. Like beyond that gateway getaway. Terry's in there, too, and he flips the switch so you can [b]RETRY[r] if you get stuck somewhere.'"
gateman	"terry"	"'He's reliable.'"
gateman	"lupine/lineup" or "lupine lineup"	"'Distant rumblings from somewhere beyond a very quiet place. Sadly, violence may be necessary.'"
gateman	"noble" or "ol' ben" or "noble ol' ben" or "ben"	"'He used to be fair and just. But he saw Red Bull Burdell [']leveling up,['] whatever that is. Red Bull bragged about how he'd multiplied his gold and achieved eighteen charisma, or something, before changing Noble Ol['] Ben.'"
gateman	"quest" or "purpose/goal" or "my purpose/goal"	"[one of]'Three major problems past the gateway. Noise is one. A lupine lineup. Noble Ol['] Ben: gone. Lorn. No longer.'[paragraph break]'And I think I know who's behind it: RED BULL BURDELL!'[or]He mentions 'Noise is one, lupine lineup, Noble Ol['] Ben gone, lorn, no longer.' Then he motions to the gateway. 'You'll see when you get there, I think.'[stopping]"
gateman	"certify" or "certifying"	"'Tells you what letters are right for what something should be. Red is wrong, green is right. Probably not as powerful as rectifying, but gets you some stuff right away. Also--there's some clues out there that're just plain red. They're all wrong.'[prcer]"
gateman	"rectify" or "rectifying"	"'Gives you the first and last letters of what something should be.'[prrec]"
woeful pat	"beat/rhythm/meter"	"[flatter-pat][anapest-clue][run paragraph on]"
woeful pat	"st paean" or "paean"	"[flatter-pat]'It will be my best reading yet. Even better than this[if player does not have flier]. Here you go. Have this flier, just to make sure[give-flier][end if].'"
deadbeat	"slorntco"	"'Organized capital is so repressive, dude.'"
nerds	"darkness"	"[nerd-dark]"
nerds	"dorks"	"They snicker knowingly. They assure you Karkdoss is the worst, if you want to ask dorks for any help."
nerds	"karkdoss"	"They snicker knowingly. You wonder if there is a Karkdoss, and if so, if they really think you should ask dorks."

to say prcer: pad-rec "certify".

to say prrec: pad-rec "rectify".

to say give-flier: now player has expo flier.

to say try-flies:
	if flies-in-emitter is false:
		say "'Dude! So you got it back from the night thing!' He takes the emitter, stuffs it in one of the more grungy-looking tents, and gives it back. 'Sorry there aren't any termites. But now these angst gnats inside may be handy later. We probably like infected them with social discontent when they bit us.'[no line break]";
		now flies-in-emitter is true;
		now termite emitter is angstgnatted;
	else:
		say "'Man, I've done enough work today. I don't want to catch any more angst gnats. Even for you.'[no line break]";

book ordeal loader

table of busiest subsite rejects
cue-passage
"For all the lectures about new and exciting possibilities everyone should know about, you'd like one for your own."
"Your eye catches the side passage, which looks more interesting than the standard ways out. Maybe you could give it [if vacate caveat is examined or odd side passage is examined]another [else]a [end if]look."
"You feel sort of cornered by all the main passages. Sneaking off anywhere would be kind of fun."
"The standard, usual directions don't seem to cut it. But there has to be somewhere else."

book trips strip

table of iconmaps
icon-rule	icon-text
forest-unsolved rule	"Near Store F, you see yourself walking past innumerable trees, wearing a disguise through a sort of archway, and finally creating some sort of explosion somewhere very cold"
sortie-unsolved rule	"Near Store I, you see yourself making food, entering a sacred area behind a secret passage, and creating some sort of fireworks that seem to land on a castle without harming it"
metros-unsolved rule	"Near Store M, you see yourself picking up several hours and taking a light source into a very deep place underground. You seem to have a hand over one ear in each picture"
resort-ready rule	"Near Store R, you see yourself hopping from one island to another, climbing a plateau, dispersing an angry crowd before quaking in fear, and finally, enjoying doing nothing"

this is the forest-unsolved rule:
	if forest is unsolved, the rule succeeds;
	the rule fails;

this is the sortie-unsolved rule:
	if sortie is unsolved, the rule succeeds;
	the rule fails;

this is the metros-unsolved rule:
	if metros is unsolved, the rule succeeds;
	the rule fails;

this is the resort-ready rule:
	if metros is unsolved or sortie is unsolved or forest is unsolved, the rule fails;
	the rule succeeds;

book metros / store m

table of tulip acquisition methods
chosen	sol
false	"[b]ASK NERDS ABOUT DARKNESS[r]"
false	"[b]OPEN NOISE BAG[r] in the Esoteric Coteries after getting the begonias"
false	"[b]SHOW EMITTER TO DEADBEAT[r] after using it in [bastion], then using it again in the Esoteric Coteries"

volume buffer at end for whatever

Shuffling Tables ends here.

---- DOCUMENTATION ----
