Version 1/220314 of Tours Roust Torus Tables by Andrew Schultz begins here.

"This contains tables that aren't nudges but seem better away from the main code."

volume center passage status

table of center statuses
cylinder-desc	cylinder-block
"Looking inward, the center of the torus seems slightly blurry, as if something should be there"	"There's nothing to go inside to, yet. Well, nothing enough. And no way to get there. Maybe figuring what to do elsewhere will help."
"It looks like there's a hologram in the center of the torus: a cylindrical silo, or something. But you have no way to enter"	"There's something to maybe go inside but no way to get there."
"The cylinder at the center of the torus looks much more real now. But it is too solid to enter even if you had a passage"	"The cylinder in the center of the torus probably has something in it, but you have no way to get there or get in."
"You think you can see a crack here or there in the cylinder at the center of the torus. No way to get there, though"	"You still don't have a passage to the cylinder or a way in."
"You're pretty sure you see the faint outline of a door--wait, more than one outline--leading into the cylinder at the center of the torus. One for each area of the torus, you'd guess"	"Even if you could make it to the cylinder, the door wouldn't seem to open."
"The cylinder now seems to have doors with handles. But there is no way to approach it"	"You must be close to being able to get near the cylinder."
"There seems to almost be a walkway to the cylinder at the center from each area of the torus. But it doesn't quite look solid enough. Yet"	"Maybe if the walkway were a bit more solid."
"The walkways to the cylinder at the center seem solid. There doesn't seem to be much to do here, so maybe you'll just want to go [b]IN[r]"	"You walk to the center of the torus. The door nearby opens readily. You enter and fall down a slope..."

volume times around

voice-listen is a truth state that varies.

table of times around
clue-text
"You think you hear a small voice echoing throughout the torus. You sort of want to figure out what's going on on your own, but if you really want to, you might be able to listen. [oh-voice]"
"You're a bit frustrated with your lack of progress, so you think back to former glories. You remember how you had to TAN ANT behind Store Y. You know, in that place with the side quest you didn't have to do. What sort of ant was it? Maybe another run-around will make you recall. [oh-voice]"
"You've run around the torus again. You remember now! When you had to TAN the ANT! It was a NATANT ant! Maybe that will help you here. [oh-voice]"
"Ugh. Tricky. You remember the coins Curtis gave you back at Rustic Citrus for finding those fruits, after you got rid of Elvira. You made them icons, then sonic as well. Or was it the other way around? But they inspired one more thing. A weird word. One that helped you be better not at anagramming, but putting words together snappily What was it? [oh-voice]"
"Ah yes. That's what the sonic coins gave you. CONCISIONS! [oh-voice]"
"Tan ant, natant. Sonic coins, concisions. [oh-voice]"
"You feel hounded [one of][or]once again [stopping]by the laughs of many LOLs-tots. How many? Lots! Lots! It gives you a toss-toll, whatever that is."

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

volume point progress table

table of progress
ruley	texty
bye-bye-tsetse rule	"A sort of cylindrical hologram appears in the center of the torus. More progress!"
--	"The cylindrical hologram grows firmer. But there's no way to get there! Yet."
--	"The cylinder in the center of the torus rumbles some more. It's no longer a solid block. But you can't see a door outline yet."
--	"Yes. You're sure you see a door in the cylinder now."
--	"Yes. The doors now have handles. They seem to open briefly, as if to beckon you, but ... not yet."
--	"Well now! A rainbow-like path appears to lead you to the center from here or, well, the other places you visited, to the center. But you don't trust it yet. You have a bit more."
prep-traversal rule	"The path to the center of the torus grows firmer. You try to rush inward, but something invisible bounces you back. Perhaps there's one more thing to do. Strange. You seem to have anagrammed everything."
bye-dude rule	"That's all. You've found a new home, one where you don't have to do anything, but you'd like to. [if score is number of rooms]That stuff you put off here, well, you can take care of it later[else if score < maximum score]You made a good start at changing things right here, right now, but there's no rush[else]You felt back to your old adventuring self, being able to anagram everything in sight that could be, no matter how obscure, eager for more[end if]. And yet the lessons you applied ruling Yorpwald will work here, too. You wonder if you should give your successors a call, to see if the Torus would benefit from being a part of something bigger. You can make that decision later."

this is the bye-bye-tsetse rule:
	remove tsetse from play;

this is the prep-traversal rule:
	now solved-initials is true;
	process the clue ON rule;

this is the bye-dude rule:
	process the notify score changes rule;
	end the story finally saying "Feats! Fates-Feast! Taffetases!";
	if score is maximum score:
		choose row with final response rule of the show what you missed rule in Table of Final Question Options;
		blank out the whole row;
	follow the shutdown rules;

Table of Final Question Options (continued)
final question wording	only if victorious	topic		final response rule		final response activity
"see [b](REJ)ECTS[r]/[b]REJECTED[r] words"	true	"reject/rejected/rejects"	the show rejected words rule	--
"see what you [b]MISSED[r]"	true	"miss/misses/missed"	the show what you missed rule

Tours Roust Torus Tables ends here.

---- DOCUMENTATION ----