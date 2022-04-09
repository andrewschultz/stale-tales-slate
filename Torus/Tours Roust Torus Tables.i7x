Version 1/220314 of Tours Roust Torus Tables by Andrew Schultz begins here.

"This contains tables that aren't nudges but seem better away from the main code."

volume times around

voice-listen is a truth state that varies.

table of times around
clue-group	clue-text
1	"[next-clue-set]You think you hear a small voice echoing throughout the torus. You sort of want to figure out what's going on on your own, but if you really want to, you might be able to [b]LISTEN[r]."
2	"[one of]You're a bit frustrated with your lack of progress, so you think back to former glories. You remember how you managed to [b]TAN ANT[r] in Store Y, many years ago. You know, in that place with the side quest you didn't have to do. What sort of ant was it? Maybe another run-around will help you recall ancient accomplishments. [or][next-clue-set]You've run around the torus again. You remember now! When you had to [b]TAN ANT[r]! It was a [b]NATANT[r] ant! Maybe that will help you here. [stopping][oh-voice]"
2	"[one of]Ugh. Tricky. You remember the coins Curtis gave you back at Rustic Citrus many years ago for finding those fruits, after you got rid of Elvira. You made them icons, then sonic as well. Or was it the other way around? But they inspired one more thing. A weird word. One that helped you be better not at anagramming, but putting words together snappily. What was it? [or][next-clue-set]Ah yes. That's what the sonic coins gave you. CONCISIONS! [stopping][oh-voice]"
3	"[next-clue-set]Tan ant, natant. Sonic coins, concisions. [oh-voice]"
4	"[next-clue-set]You feel hounded [one of][or]once again [stopping]by the laughs of many LOLs-tots. How many? Lots! Lots! It gives you a toss-toll, whatever that is."

to say next-clue-set: increment clue-row;

to say oh-voice:
	if voice-listen is false:
		say "Oh. You could always listen to that voice, too.";
	else:
		say "[line break]"

volume room combos

table of room combos
room1	room2	both	first	second
Ehs Ehs	Ehs Ehs	"[if score > 1]You feel a bit silly figuring this area at first, after you already got a few harder ones. But then you feel smart that you weren't scared of the potentially tougher errors. What else can you say to that but, sheesh?[else]You [room-visit-eh]. Everything else will probably be tougher. But sometimes a mild interjection can steel you for what's ahead.[end if]"	"(BUG)"	"(BUG)"
Prep Area	Meta Meat	"Now that you have a teammate and a reason to reappear, you have a plan to brainstorm separately and then together. You figure a lot of things that make the Torus a lot more alive. It glows significantly."	"You get some practice in reappearing. Maybe soon you will have someone to reappear for."	"You meet (hah) up with a teammate! It's good to have one on this forbidding torus. After some talk, they admit they're out of ideas. But maybe when you come back at the right time, you'll have something to think up. You can only hope."
Grain Grain	Latte Latte	"Aha! Now that you have summoned a tattletale and arraigning, the tattletale tattles, and you have somewhere to send the perpetrators, whoever they are, to justice."	"You have an area for arraigning someone bad, but you have nobody to tell you where to find said bad people."	"You have unleashed a tattletale who knows horrible stories of horrible people. And yet, there's no way to bring said horrible people to account."
Tines Inset	Pechan Pechan	"The Torus seems more alive now that the intestines are not just near the pechan/stomach but, by some, err, happenchance, they seem to connect and perform some vital organ function."	"Okay, so there are intestines next to a stomach. You probably need a bit of luck to get things working. But you've made a good start."	"You've made your own luck in this stomach-y room. But a stomach by itself can't do much."

to say room-visit-eh: say "[if number of visited rooms is 1]reckon this [i]had[r] to be the easiest area to figure[else]have seen [rest-of-tor] of the rest of the torus[end if]"

to say rest-of-tor:
	if number of visited rooms <= 4:
		say "some";
	else if number of unvisited rooms > 0:
		say "most";
	else:
		say "all"

volume the cylinder

table of cylinder descriptions
texty
"Man! It's blurry. You're really seeing double. Or is it actually wobbling?"
"Oh dear! The cylinder's not as wide as you thought, now it's started wobbling a bit. But you can't see any serious detail."
"The cylinder's not wobbling as badly as it did, but you don't see any way in."
"The cylinder's almost stopped wavering, but you still can't see anything more."
"Now that the cylinder's stopped wavering so much, you think you see the outline of a door."
"The door on the cylinder seems to have a handle. You're not sure."
"You can see almost half a path--the sort you'd fall through--leading to the cylinder at the center."
"The cylinder looks very solid. You have a path there. And it seems to have a door outline. The door seems to swing in and out randomly, so you can enter it. But you can't see what's inside until you get nearer [b]INSIDE[r]."

table of center statuses
cylinder-desc	cylinder-block
"Looking inward, you see a cylinder at the center of the torus. It's very poorly defined, though"	"There's nothing to go inside to, yet. Well, nothing enough. And no way to get there. Maybe figuring what to do elsewhere will help."
"The cylinder in the center seems less blurry and wobbly than when you started"	"There's something to maybe go inside but no way to get there."
"The cylinder at the center of the torus has almost completely stopped wobbling"	"The cylinder in the center of the torus probably has something in it, but you have no way to get there or get in."
"The cylinder at the center of the torus looks much more real now, but there's no entry"	"You still don't have a passage to the cylinder or a way in."
"The cylinder now has a fuzzy outline of a door in it."	"Even if you could make it to the cylinder, the door wouldn't seem to open."
"The door to the cylinder at the center of the torus is better defined now"	"You must be close to being able to get near the cylinder."
"The cylinder at the center of the torus now seems to have doors with handles. But there is no way to approach it"	"Maybe if the walkway were a bit more solid."
"You can see a door swinging in and out, which would allow you into the cylinder at the center of the torus. There doesn't seem to be much to do here, so maybe you'll just want to go [b]IN[r], or figure a way to"	"You walk to the center of the torus. The door nearby opens readily. You enter and fall down a slope..."

volume point progress table

table of progress
ruley	texty
bye-bye-tsetse rule	"The cylinder in the center of the torus contracts. No, it stops wobbling so much, so it only seems narrower. But that's good, too."
--	"The cylinder continues to straighten up. It's barely wobbling now."
--	"The cylinder -- well, it's almost still, but you can't make anything out there, yet."
--	"The cylinder stops wavering. You're pretty sure you can see a door in it."
--	"The cylinder clears up some more. Yes, that's definitely a door. And you can see a handle on it. You think!."
--	"Well now! A rainbow-like path appears to lead you to the center cylinder from here, as well as everywhere else you visited. But you don't trust it yet. You sense there's just a bit more to do here."
prep-traversal rule	"The path to the center of the torus grows firmer. You try to rush inward, but something invisible bounces you back. Perhaps there's one more thing to do. Strange. You seem to have figured out every area of the torus."
bye-dude rule	"That's all. You've found a new home, one where you don't have to do anything, but you'd like to. [if score is number of rooms]That stuff that wasn't [b]DEEDED[r], well, you can take care of it later[else if score < maximum score]You made a good start at changing things right here, right now, but there's no rush[else]You felt back to your old adventuring self, being able to anagram everything in sight that could be, no matter how obscure, eager for more[end if]. And yet the lessons you applied ruling Yorpwald will work here in [the strainer terrains], too. You wonder if you should give your successors a call, to see if the Torus would benefit from being a part of something bigger. You can make that decision later."

this is the bye-bye-tsetse rule:
	remove tsetse from play;

this is the prep-traversal rule:
	now solved-initials is true;

to decide whether maxed-it:
	if score is maximum score and deededed is true, yes;
	no;

this is the bye-dude rule:
	process the notify score changes rule;
	say "Soon after, you introduce yourself to people in [the strainer terrains]. They're glad to have met you, and they even organize a celebration! There are all sorts of foods to find and make. Yet there is one great delicacy. In the rivers float a sort of fish. You've never seen anything like it. Very exotic and tasty! But it's been impossible for anyone to catch.";
	wfak;
	if maxed-it:
		say "You get close, but you can't help thinking ... if you knew the fishes['] true name, just as you learned the true nature of other things through anagrams, you'd know what to do. You futz with 'terrains' and 'terrain' for a while, but no.";
		wfak;
		say "Then it hits you! Why, [the terrains] are inside the [this-game-noi]! That cuts things down! You ponder the double-letter anagrams, and aha, yes, that's it.";
		wfak;
		say "SOURTROUTS!";
		wfak;
		say "Armed with this reasoning, you're able to catch a few. They're wonderfully delicious, but you also know they're part of the delicate ecosystem and such, so they should only be reserved for special occasions. Like this one. And the sourtrouts make it very special indeed!";
		wfak;
		say "For many years, you are the only one to catch the sourtrouts at a special ceremony, but with your teaching, others get closer. One day an eager youth manages to catch one. You are happy for them, and proud. You are also glad people will not have to rely on you for any future anagram-related disasters. And yet you feel in no way obsolete. It seems once a week you find the true name of some curiosity of nature in [the strainer terrains]. It's nice to be able to, with no pressure.";
	else:
		say "You get closer than anyone else, but it's so tricky, trickier even than clearing the torus[if deededed is true] and figuring what to do with everything else here[end if]. Maybe you'll find how to do so some day. Still, the celebration goes well. You're comfortable here.";
	end the story finally saying "Feats! Fates-Feast! Taffetases!";
	if maxed-it and ever-voice is true:
		choose row with final response rule of the show what you missed rule in Table of Final Question Options;
		blank out the whole row;
	follow the shutdown rules;

Table of Final Question Options (continued)
final question wording	only if victorious	topic		final response rule		final response activity
"see [b](REJ)ECTS[r]/[b]REJECTED[r] words"	true	"reject/rejected/rejects"	the show rejected words rule	--
"see what you [b]MISSED[r]"	true	"miss/misses/missed"	the show what you missed rule

volume parser keyword tables

table of pre-brushoffs
my-room	my-topic	my-brushoff
Ehs Ehs	"(eh|ehs)"	"No, you can't lackadaisically go along with what's there. You need to invent, or reinvent, something new, some different way of emoting."
Prep Area	"(prep|area)"	"You're not sure what you are prepping--a thing or an action. But once you do, things will become clearer."
Meta Meat	"(meta|meat)"	"The meat -- well, it's hard to describe, but it's thankfully not physical meat. Because it's been here a while. But it's meaty enough to be something important, or to become something important. What?"
Grain Grain	"grain"	"Grain is grain, to you. There's not much to be done with it as-is."
Tines Inset	"(tines|inset)"	"The tines aren't budging. Not in their present form. But what could they become?"
Pechan Pechan	"pechan"	"If there's a stomach here, you don't want to burst it."
Latte Latte	"latte"	"Oh, man. You don't want to even think about caffeinated beverages. Even ones with milk in. These days you don't even go in for caffeinated pop. Perhaps the latte can become something less consumable?"

table of post-brushoffs
my-room	my-topic	my-brushoff
Meta Meat	"(team|mate)"	"Your teammate will be there when you need them."
Latte Latte	"(tattle|tale)"	"You probably don't want to encourage a tattletale in any way."

table of one time warnings
my-topic	warned-yet	should-i-print
"voice"	false	voice-note rule
"door"	false	door-appears rule
"non"	false	on-puzzle rule

this is the door-appears rule:
	if score < 4, the rule fails;
	ital-say "the door is just part of the torus. There's nothing special about it. You'll just walk through it when the time comes. Anything you try to do with the door goes to the torus.";
	the rule succeeds;

this is the on-puzzle rule:
	if score is not 7, the rule fails;
	ital-say "you [if ever-heptagon-puzzle is true]did the right thing with [b]ON[i]. No need to read further into the 'Noon' message[else]have the right idea, simplifying 'Noon,' but no need for a foreign language[end if].";
	reject the player's command;
	the rule succeeds;

this is the voice-note rule:
	ital-say "if there's a voice in the room description, you just need to [b]LISTEN[i].";
	the rule succeeds;

volume presentness hash tables

table of presentness hashes
Letter (indexed text)	Code
"a"	1
"b"	2
"c"	4
"d"	8
"e"	16
"f"	32
"g"	64
"h"	128
"i"	256
"j"	512
"k"	1024
"l"	2048
"m"	4096
"n"	8192
"o"	16384
"p"	32768
"q"	65536
"r"	131072
"s"	262144
"t"	524288
"u"	1048576
"v"	2097152
"w"	4194304
"x"	8388608
"y"	16777216
"z"	33554432

to decide what number is the hash of (t - a value of kind K):
	let s be the filtered name of t;
	let hash be 0;
	repeat with c running from 1 to the number of characters in s:
		increase hash by the Code corresponding to a Letter of character number c in s in the Table of Hashcodes;
	decide on hash;

to decide which number is the rough-hash of (t - a value of kind K):
	let s be indexed text;
	now s is the filtered name of t;
	let hash be 0;
	repeat through table of presentness hashes:
		if S matches the text "[Letter entry]":
			increase hash by Code entry;
	decide on hash;

Tours Roust Torus Tables ends here.

---- DOCUMENTATION ----