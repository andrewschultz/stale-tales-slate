Version 1/220314 of Tours Roust Torus Tables by Andrew Schultz begins here.

"This contains tables that aren't nudges but seem better away from the main code."

volume room combos

table of room combos
room1	room2	both	first	second
Ehs Ehs	Ehs Ehs	"[if score > 1]You feel a bit silly figuring this area at first, after you already got a few harder ones. But then you feel smart that you weren't scared of the potentially tougher errors. What else can you say to that but, sheesh?[else]You [room-visit-eh]. Everything else will probably be tougher. But sometimes a mild interjection can steel you for what's ahead.[end if]"	"(BUG)"	"(BUG)"
Prep Area	Meta Meat	"Now that you have a teammate and a reason to reappear, you have a plan to brainstorm separately and then together. You figure a lot of things that make the Torus a lot more alive. It glows significantly."	"You get some practice in reappearing. Maybe soon you will have someone to reappear for."	"You meet (hah) up with a teammate! It's good to have one on this forbidding torus. After some talk, they admit they're out of ideas. But maybe when you come back at the right time, you'll have something to think up. You can only hope."
Grain Grain	Latte Latte	"Aha! Now that you have summoned a tattletale and arraigning, the tattletale tattles, and you have somewhere to send the perpetrators, whoever they are, to justice."	"You have an area for arraigning someone bad, but you have nobody to tell you where to find said bad people."	"You have unleashed a tattletale who knows horrible stories of horrible people. And yet, there's no way to bring said horrible people to account."
Tines Inset	Pechan Pechan	"The Torus seems more alive now that the intestines are not just near the pechan/stomach but, by some, err, happenchance, they seem to connect and perform some vital organ function."	"Okay, so there are intestines next to a stomach. You probably need a bit of luck to get things working. But you've made a good start."	"You've made your own luck in this stomach-y room. But a stomach by itself can't do much."

to say room-visit-eh: say "[if number of visited rooms is 1]reckon this [i]has[r] to be the easiest area to figure[else]have seen [rest-of-tor] of the rest of the torus[end if]"

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
a rule	"You think you see something vague in the center of the torus."
--	"lorem ipsum"
--	"lorem ipsum"
--	"lorem ipsum"
--	"lorem ipsum"
--	"lorem ipsum"
prep-traversal rule	"Yes, there is something at the center of the torus. But it's blocked off. You have a feeling you need to do some sort of odd dance before entering."
bye-dude rule	"lorem ipsum"

this is the prep-traversal rule:
	now solved-initials is true;
	process the clue ON rule;

this is the bye-dude rule:
	process the notify score changes rule;
	end the story saying "Feats! Fates-Feast! Taffetases!";
	follow the shutdown rules;

Tours Roust Torus Tables ends here.

---- DOCUMENTATION ----