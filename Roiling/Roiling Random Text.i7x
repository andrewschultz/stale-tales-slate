Version 1/151216 of Roiling Random Text by Andrew Schultz begins here.

volume megachatter table

table of megachatter [tmc] [may not be alphabetized since some rules must come before others]
mytab	eturn	curidx	maxidx	go-ahead	whichreg	descr	prefix	suffix	lasties	maxbeforepause	done-once	init-order	table-size	reps
table of undo rejects	false	0	30	undo-rej rule	lll	"Undo rejects"	--	""	"'Do-over overdo.'"
table of undo allows	false	0	30	undo-ok rule	lll	"Successful undo responses"	--	""	"'Do? Er, re-do.' (Last one. Stale? NO.)"
table of random books	false	0	30	read-books rule	manor	"All the books in your bookshelf"	"[i]"	"[r]"	"your own aborted autobiography. You're embarrassed by what's there and how little is there. It was buried at the back.[paragraph break]Whew, that's everything. The only thing less exciting than re-reading all the titles would be to stare at a computer screen for a few hours."	--	--	--	--	1
table of ad slogans	true	0	30	blurby rule	manor	"All the ads in the Dope Op-Ed"	--	""	"HANKER! HARKEN! you read. With that general ad, it's back to the start."
table of mob chants	false	0	30	mob-chanting rule	manor	"Mob chants (LISTEN post-Gunter in manor)"	"[one of]Shouty youths. Long-[a-word] slogans. [or]Bam-o! A mob! [stopping]"	"[pre-lb]"	"They finish fishin[']."
table of idiotic lecture points	true	0	15	lecture-point rule	stores	"Cruelest Lectures advice[if tokers are off-stage or nestor is off-stage] (STORE N/STORE K mini-puzzle)[else if lectures is unvisited] (way high highway in Strip of Profits)[end if]"	"The lecturer "	" [ted-die]"	"The lecturer flips back to the start of his keystone keynotes, resuming his ol['] mongo monolog.[pre-brk]"	20
table of overdone movies	true	0	15	name-movie rule	stores	"Cruelest Lectures movies[if tokers are off-stage or nestor is off-stage] (STORE N/STORE K mini-puzzle)[else if lectures is unvisited] (way high highway in Strip of Profits)[end if]"	"The lecturer "	""	"The lecturer reminds the crowd [i]Dosing Doings[r] remains the universal classic.[pre-brk]"	20
table of sicko movies	false	0	50	movie-over-ad rule	stores	"Store C videos (parental advisory)"	"You peruse the movies: "	""	--	--	false	0	0	5
table of store c competitors	false	0	10	compet-over-ad rule	stores	"Store C competitors"	"You're promised better prices and service than "	"."	"Finally, there's a put-down of Twisted Twit Ed's."
table of store c ads	false	0	10	read-c rule	stores	"Store C advertisements (parental advisory)"	--	""	"'Wanker? Ew, rank!' someone hisses at you. Yup, you've been reading a while."
table of tokers nonsense	true	0	30	ohai-tokers rule	stores	"The tokers['] chat[if tokers are off-stage and nestor is off-stage] (flip STORE K and STORE N in Strip of Profits)[end if]"	--	""	"'No weed? We done!' but they find some more, ready to repeat. You may wish to HUSH them to zone them out as they zone out.[pre-brk]"
table of moralizers	false	0	30	read-pious-1 rule	routes	"Moralizers[c-c-u]"	--	""	--
table of mantle laments	false	0	30	read-pious-2 rule	routes	"Rev. Ali's hot takes[c-c-u]"	--	"[randexc]"	"wait, no, an epilogue hand-written in: [i]sad, rash [if censor-minor is true](mean name)[else]hardass[end if][r], which is refreshing."
table of horbert musings	true	0	30	horby rule	routes	"Brother Horbert's musings[c-c-u]"	"Brother Horbert mumbles something to himself... [i]"	"[r]"	"Brother Horbert mumbles [i]Ah, even heaven...[r] A pause. His thoughts may loop again--like people's wanderings in the mesa.[pre-brk]"	40
table of horbert farewells	false	0	20	horb-bye rule	routes	"Brother Horbert's blessings[c-c-u]"	"Brother Horbert speaks as you leave: [i]"	"[r][pre-brk]"	"Brother Horbert's face shows neat, epic patience as you leave, again.[pre-brk]"	40
table of missing deli foods	false	0	20	ask-deli rule	routes	"Non-foods at the Idle Deli[indic of routes]"	--	""	"'Not even spoiled old pies...'"
table of checklist items	false	0	20	read-tec rule	troves	"SlickTech Checklist to-dos[indic of troves]"	--	""	"Wow! That's a lot to do. You need to sit and think and build up to believing you can do it all. And quickly."
table of DIVORCES articles	false	0	30	read-divorces rule	troves	"'Fascinating' DIVORCES articles[indic of troves]"	--	""	"an interview with an influential mayor who knows what's what: Ah, Mr. Harm![paragraph break]Well, they saved the worst for last. You could reread if you want."
table of ethics advice	false	0	20	read-eths rule	troves	"Advice from Pa, Egg, Pea[eisiping]"	"[one of]There is some blurb about how REAL CHANGE COMES FROM WITHIN and how you shouldn't look to change a clover into Velcro or any such nonsense. Also how this book is better than [i][twiddle of table of self-help bestsellers and 3][r][paragraph break][or][stopping]You pore over a random  'thought-improving' passage of Peg A. Page: "	""	"You've reached the end, filled with [crap]piest tips recap. Rereading may or may not be less painful the second time through."
table of gritty dialogue	true	0	20	say-gritty rule	troves	"Gritty Spoiloplis dialogue[indic of troves]"	"Gritty sounds come, then go, from [one of]your testers, the tersest[or]the[stopping] streets: "	""	"Tense silence replaces the gritty sounds, which will probably return and cycle. People making the same mistakes they did before. But you are bound for better things--or, with that book, you'd better be.[pre-brk]"
table of non-checklists	false	0	20	desk-look rule	troves	"Slick-Tech Checklist alternatives[if fiefco is unvisited] (Troves)[end if]"	--	""
table of posh dialogue	true	0	20	say-posh rule	troves	"Posh Spoiloplis dialogue[indic of troves]"	"Upper-class concerns: "	""	"A low, snide 'Old is new, wild ones.' Cue repetition.[pre-brk]"
table of posse bosses	false	0	20	in-lot-or-ruin rule	troves	"Loudest Used Lot bad guys[indic of troves]"	"maybe "	""	"not Mean Roy Maroney, anymore--he's the last of them"
table of prestigious bums	false	0	20	read-deal rule	troves	"'Inspirational' Yorpwaldians in [i]DEAL[r][indic of troves]"	--	""	"Aliver Elvira, in case anyone forgot"
table of real estate ads	false	0	20	read-brochure rule	troves	"Rotunda brochure locations[indic of troves]"	"It's for real estate by Sir Dee. One page header blares [i]Home's so Meh? "	"[r]"	"Secretcester! OWN NOW! is the final entry."
table of Leo-Rand chitchat	true	0	15	chitchat-over-idols rule	presto	"Leo and Rand's chatter[if rand is fightin] (STORE P)[end if]"	--	""	"'Heya.' / 'Yeah?' An awkward silence follows.[paragraph break]They've run out of conversation, but fortunately (for them,) they forgot it all, so they can just restart."
table of Leo-Rand idols	true	0	15	Leo-Rand-cry rule	presto	"Leo and Rand's idols[if rand is fightin] (STORE P)[end if]"	"[one of]Leo and Rand[or]Rand and Leo[at random] sadly admit they're no "	"."
table of catechism pages	false	0	10	catechism-over-research rule	presto	"Hacks['] shack catechism entries[indic of presto]"	--	""	"After the final 'Ok, worn? Work on or know,' only a nixed-pap Appendix is left. You could flip through for more research topics or brainy types, but you've done enough. I appoint you a rarest raster starer. Have an, er, star."
table of research topics	false	0	10	research-over-doctors rule	presto	"[one of]Some[or]More[stopping] explanation of research by Arch Rees:[indic of presto]"	"Arch Rees[one of][or] further[stopping] explaining research on "	"."
table of smartypants	false	0	10	read-docs rule	presto	"Ph. D. researchers"	"The highly technical yet useful research of "	"."
table of bedding brands	false	0	20	read-futon rule	presto	"Sleep aide brands"	--	""	"Smartest Mattress, hopefully cleaner than the one you remember from The Ol['] Hotel in the Metros behind Store M."
table of bar dialogue	true	0	15	bar-over-comp rule	oyster	"Posh Hops Shop action[indic of oyster]"	"[one of]Whew. Rough talk and action here. [or]More rough talk and action. [or][stopping]" 	""	"You've seen it all. Time to take decisive action(s) of your own.[pre-brk]"
table of competing bars	true	0	15	in-bar rule	oyster	"Posh Hops Shop competitors[indic of oyster]"	"Someone says the Posh Hops Shop [one of]has nothing on[or]sure beats[at random] "	"."	"Everyone agrees Soph Pho's is a total rip-off of, well, here. You can't imagine any more bars being discussed.[pre-brk]"
table of Casper mumbles	false	0	20	casper-talk rule	oyster	"Casper's mumblings[indic of oyster]"	""	""	"'[if player is male]Rhett Weir[else]Teri Werth[end if], the writer? Eh, err...TWIT!' Casper suddenly flips back to the start of his notes. Perhaps he feels you are not good enough to hear any more of his original thoughts."
table of fish fries	true	0	15	insult-over-girls rule	oyster	"Carps/pikes trout-bullying [if anger range is visited]in anger range[else](STORE Y)[end if]"	--	""	"The bullies call him 'A soft fatso so fat.' They're out of ideas and claim it's the trout's fault for not being interesting enough. The ratters restart samer smear-reams.[pre-brk]"
table of unpopular girls	true	0	15	ohai-bullies rule	oyster	"Unpopular girls carps/pikes mention[indic of oyster]"	"The bullies insinuate the trout [one of]likes[or]isn't good enough for[cycling] "	"."	"Zina is the last, and utterly wrongest, girl they accuse the trout of liking (she's actually pretty nice, but...innuendo.) When you sink that low, you've obviously run out of ideas.[pre-brk]"
table of tuna gossip	true	0	15	gossip-over-chatter rule	oyster	"Aunt Tuna's gossip[indic of oyster]"	"Aunt Tuna gossips: "	""	"'Edda Dade. Dead. Cleo's Close. Dorithy--Thyroid. Halle's a shell. All she... Heather's Heart. She... diabetes, die, beast!' Aunt Tuna pauses, head in hands. That was the final thing she'd been repressing.[pre-brk]"
table of aunt tuna chatter	true	0	15	ohai-tuna rule	oyster	"Aunt Tuna's complaints[indic of oyster]"	"[one of]'Oh, dear! Do hear!' / 'D'oh...are...' Aunt Tuna cuts you off and[or]Aunt Tuna[stopping] "	""	"Aunt Tuna, as her nags snag, restarts her prattle platter of how she is BEYOND done-by...[pre-brk]"
table of theses	false	0	30	screed-read rule	oyster	"Theses Sheets notes[indic of oyster]"	""	""	"Life Conks Nice Folks![paragraph break]Well, that's probably enough proof you're dealing with bad guys, here."
table of rodney bluster	true	0	20	rodney-here rule	towers	"Rodney's bluster[indic of towers]"	"Rodney [if number of visible warriors is 7]informs his gang[else if number of visible warriors > 3]yells at his remaining troops[else if number of visible warriors is 2]yells to his remaining companion[else]mutters to himself[end if] about "	"."	"Rodney warns about repeating, then inept rage and a petering.[pre-lb]"
table of gizmo parts	false	0	20	examining-gizmo rule	towers	"Parts of the I ZOMG GIZMO[indic of towers]"	--	""	"Ulti-Util, the most powerful, confusing and hidden of all the gizmo parts"
table of Elmer and Merle squabbles	true	0	20	alcove-talk rule	otters	"Elmer and Merle's chat"	--	""	"Since they're kinda evil, or at least serving someone evil, they give a greedy look as they restart their complaint routines.[pre-lb]"
table of Elvira battle cries	false	0	20	last-battle rule	otters	"Elvira's battle cries"	--	""	""
table of Elvira machines	false	0	20	bzzt rule	otters	"Elvira's machines"	--	""	""
table of Elvira taunts	false	0	20	Elvira-taunt rule	otters	"Elvira's taunts"	--	""	"'Stellar staller!' Dang, the simplest ones hurt the most.[pre-lb]"
table of animal friends	false	0	60	bzzt rule	otters	"Your animal friends"	--	""
table of political slogans	false	0	20	sloganing rule	others	"Political slogans"	--	""
table of selly yells	false	0	30	clearing-listen rule	others	"Selly Yells[indic of others]"	""	""	"A big errant inert brag pauses the bartering for a minute."
table of noage	false	0	20	am-noing rule	lll	"Rejects for saying no"	--	""	"You're so down, yow. Sour. DONE."
table of yessage	false	0	20	am-yessing rule	lll	"Rejects for saying yes"	--	""	"A rote ego too eager!"
table of singing rejects	false	0	20	is-singing rule	lll	"Rejects for singing"	--	""	"Sing-ings! Sing-ings!"
table of empty command rejects	false	0	20	you-said-nothing rule	lll	"Responses to an empty command"	--	""	"Go for it or I GTFO! (this is the last blank response and an empty threat to boot.)"	--	false	0	0	1
table of wait responses	false	0	20	you-waited rule	lll	"Wait/Z messages"	--	""	"A gag? La, la. A lag gala.[no line break]"
table of cussing rejects	false	0	20	you-cussed rule	lll	"How the game blocks profanity, mild or obscene"	--	""	"Screed on, [bracket]CENSORED[close bracket].[no line break]"
table of nonviolence messages	false	0	20	you-attacked rule	lll	"How the game blocks ATTACK"	--	""	"Ill touch? Chill out till...ouch!"
table of death messages	false	0	0	bzzt rule	lll	"Death notices"	--	""
table of help companies	false	0	30	bzzt rule	lll	"Hint guy t-shirt writing[if have-objhinted is false] (occurs first time you request hints)[end if]"	--	""
table of elmo emo	false	0	30	bzzt rule	manor	"Elmo's romantic complaints[if girls-quip is not mowered] (off-topic Elmo chat)[end if]"	""	""
table of sports chatter	false	0	30	bzzt rule	manor	"Elmo's sports banter[if sports-quip is not mowered] (off-topic Elmo chat)[end if]"	""	""
table of biopics	false	0	30	bzzt rule	manor	"Biopics, good and bad[if media-quip-2 is not mowered] (off-topic Elmo chat)[end if]"	""	""
table of bad rappers	false	0	60	bzzt rule	manor	"Bad rap music[elv-art]"	--	""
table of lame computer games	false	0	30	bzzt rule	manor	"Computer games[elv-art]"	--	""
table of comedians	false	0	30	bzzt rule	manor	"Comedians of Yorpwald[elv-art]"	""	""
table of laughhouses	false	0	30	bzzt rule	manor	"Comedy joints[unless pun-quip is mowered] (with Gunter, lighten the mood with a joke)[end if]"	""	""
table of lame talk shows	false	0	30	bzzt rule	manor	"Bad talk shows[unless media-quip-2 is mowered] (complain about the media some more to Elmo)[end if]"	--	""
table of lame movies	false	0	30	bzzt rule	manor	"Bad movies[elv-art]"	""	""
table of lame tv shows	false	0	30	bzzt rule	manor	"Bad TV shows[elv-art]"	""	""
table of oldies singers	false	0	30	bzzt rule	manor	"Initial oldies singers[elv-art]"	""	""
table of lousy hit songs	false	0	30	bzzt rule	manor	"Bad songs[elv-art]"	--	""
table of self-help bestsellers	false	0	30	bzzt rule	troves	"Self-help bestsellers[eisiping]"	--	""
table of songs you could write	false	0	30	bzzt rule	troves	"Songs you write on solving Troves"	--	""
table of sleep rejects	false	0	30	am-sleeping rule	lll	"Sleeping rejects"	--	"[pre-lb]"
[tmc]

volume random text blurb tables [vrt]

[Note that brackets or (p) mean to let automated checkers to pass on this. Empty brackets = anagram done before, but not duplicated. P = avoid automated punctuation check fail. Eh, what's another 300 bytes if I already got 2mil+?]

book general

table of cussing rejects [xxg1]
blurb
"[if player is male]Mr. Taunt-Tantrum[else]Mrs. Taunt-Tantrums[end if]!"
"A-ah! Not an oath!"
"Absolutely lousy bleat!"
"Ach, a venal avalanche!"
"Acrimony! I moan, cry!"
"Ah, rote oather, to hear or hate!"
"Annoyance? Anyone can..."
"Another hater? No!" []
"Arise, thy hysteria! Yeah, stir!"
"Aversion varies on, so, vainer."
"Bah, ye [t-w]. Be that way!"
"Base ur-abuser!"
"Be caring. Gab nicer!"
"Bedlam apex: bad example."
"Bemoan? No, beam!"
"Big yap...by a PIG!"
"Bile, fry briefly!"
"Bud...seem bemused!"
"Cancerate reactance!"
"Cheap-shot ethos, chap."
"Cheapo? Ah, cope."
"Cold, raw old craw!"
"Crazy rude? Dreary, cuz."
"A crude rue, cad!"
"Crude's Cursed."
"A cry: racy."
"Curses? Cusser."
"Defrost, frets! Do!"
"The dins! End this!"
"Dish a dis? Ah!"
"Do thwart that word."
"Don't swear. Neat words!"
"Dourness resounds!"
"Dung-Dip Pudding!"
"Eeg! Gee!"
"Egregious! Ire gouges!"
"Eh, spout a hate-opus? Phase out!"
"Er, exact excreta."
"Er, so sore?"
"[']Ere's venom! Some nerve!"
"Err, tact? Retract!"
"Errant ranter!"
"Ew! Foul! Woeful!"
"Feistier! Fieriest!"
"Flame up! Fume, pal!"
"Flow, dour foul word!"
"A flow out, too awful."
"Fractious fiasco? Rut!"
"Frenzied? Fried? Zen!"
"Froth forth!"
"A furor's far sour!"
"Gah! Agh!"
"Go share rages, oh!"
"Goin['] red? Ignored!"
"Gosh! Into hootings?"
"Groan is Soaring!"
"Grow nervy? Very wrong!"
"A grumble? Lame grub."
"Hearin['] hernia!"
"Hi, curse? Uh, cries? Such ire!"
"Hm, sour humors?"
"Hot bile! The boil!"
"A hot oath!"
"Hot rage? Oh, great. Go, hater!"
"Hot words? D'oh, worst! Worth sod."
"I bleat at bile!"
"I can opt to panic!"
"I cuss. [']Scusi!"
"I drone on, dire."
"I hear ire. Ah!"
"I paste a spite."
"I Speak: a Spike!"
"I spy yips!"
"I veto each hate voice."
"I'm great at grime!"
"If sense, finesse!"
"Ilth-fay: thy fail."
"Impiety-yip time."
"Inst-snit?!"
"Intend woe? I [b]WON'T[r] need..."
"The ire! I...there."
"Ire's lousy. Seriously."
"Ireful bits. Filibuster?"
"Irrupted putrider? Ripe."
"Let's moan: so mental? No, lamest."
"Lewd din, dwindle!"
"Lo, bawdy! Way bold!"
"Loathing tha lingo."
"Loud sin? Un-solid!"
"Mad-spew swamped!"
"Main user is MANURE!"
"Maledict? Climated."
"Mean bilge? Being lame."
"Mean spurt? Smarten up."
"Melt down? Mewl? Don't!"
"Mo['] sweary? Ow, my ears!"
"Moany, man? Oy!"
"Much ado! Ouch! Mad!"
"'My TAILS, I'm salty!'" [p]
"Nag ruder? Darn urge."
"Nasty, kid. Stay kind."
"Near fog of anger?"
"Next move, vex me not."
"No arts? So, rant: a snort."
"Nose-virus souvenirs!"
"Not playing poignantly."
"Notes: crud, don't curse!"
"O, brash abhors!"
"O, sip on poison!"
"O, Spiter Riposte!"
"O, yammer more! May mar [']em, yo!"
"Oafy of ya!"
"Obtrusive vibe-roust."
"Oft lame to flame."
"Oh, tart throat!"
"One retch, coherent not-cheer!"
"One snit. Tension."
"One's ire? No Siree!"
"Ooh, galled? Hella good."
"Oral grime. Rigmarole."
"Out of line, lout? Fie! No!"
"Oy, brash brays! Oh!"
"Oy, curt outcry!"
"Oy, flatus so faulty!"
"Oy! Nut! Rogue! Your tongue!"
"Oy, slurs so surly! Sly! Sour!"
"Oy, words so rowdy."
"A panic, gee? Gain peace!"
"Poop? OPPO!"
"Pout? Eek! Keep out!"
"Profanity: any profit?"
"Prurient, err, input."
"Pure rot, eruptor."
"Purer ears? Super rare."
"Rant? Do dart on! And rot! NOT RAD!"
"Rash hoot! Too harsh!"
"Rawness Answers!"
"Relax. Swig grawlixes."
"Repulsing lingers up!"
"Resenting it? Interesting."
"Rude or Dourer? Ordure!"
"Salty be beastly."
"Savoring raving so?"
"Say nice? Yes, I can!"
"Say snot so nasty? Nay, toss!"
"Say tuff stuff, ya!"
"Scorned? Ire? Reconsider."
"Screed? No! CENSORED!"
"Seagulls['] sullages!"
"Searing rage-sin!"
"Serving ace grievances!"
"A silly say-ill."
"Sin-oaths astonish!"
"Sink peace? Seek panic? Speak NICE!"
"Slob, Rave So Verbal."
"Snit? Off! No tiffs to sniff."
"So edgy! Dog, yes!"
"So icky! Yoicks!"
"So profane, oaf-person!"
"Soilure? Lousier."
"Some racy scream, oy!"
"Sour hate? Rue oaths!"
"Sow epic cow pies!"
"Sow hard, raw-shod words? Ha."
"Spicy talk? Splat. Icky."
"Stay Clean! Act sanely!"
"A stew? Waste."
"Such noise! Uh, cession!"
"Swearin[']? I answer: ar, swine!"
"Tangible bleating."
"Tanginess-assenting?"
"Tedium. I'd mute."
"That noise's nastiest, ho!"
"Throw away a wrath, yow!"
"Throw shade? Wrath: hosed!"
"To anger! Grate on!"
"To cuss cuts so!"
"To hiss is tosh."
"Torchier Rhetoric!"
"Twinges stewing?"
"Typing fire? Petrifying!"
"Uh, screwy. Why curse?"
"Universal, naive slur."
"Unpolitic punctilio!"
"Urg! Salvo so vulgar!"
"Utter profane often? Rapture!"
"Voila, stir, as vitriol so trivial?"
"Worthless howls, rest!"
"Wow. LORD, low word."
"Yikes! Net stink-eye!"
"Yo['] wrath's trashy. Ow!"

table of death messages [xxg2]
blurb
"[d-word-u]! (You MAY Undo.)"
"Aground? Arg. Undo!"
"Ah, dim! I'm had!"
"Ahh, dirt hit HARD!"
"Annihilated, Laid in [']Neath."
"Apt nadir: a dirt nap!"
"'Arh, died! / 'Ha, redid!'" [p]
"Arrowed? Raw! Redo!"
"Big Plans Slip. BANG!"
"Blah, fainter...final breath!"
"Blunder, Blur, END."
"Burned? O, rebound!"
"Closure So Cruel! Lo, curse!"
"Croaked? Ack! Redo!"
"Curatins, cats! Ruin!"
"D'oh! Fate of Death!"
"Da Boot. Too bad."
"The Dead Add Thee!"
"Dear! Night! Death-ring!"
"Death grip! Gah, trepid!"
"Death Net at the End!"
"Death! No! Ah, to end..."
"Death's Hasted."
"Departed deep. Drat."
"Diagnosis: sing adios!"
"Die-End? Indeed!"
"Diverge, Grieved!"
"Done! O, End!"
"Earth-Free, Hereafter: Ether Fare!"
"Ehh, took the hook!"
"Endurance's Sunderance!"
"Erg! No! Goner!"
"Eternal rest enters? Alter!"
"Extinguish, uh, existing."
"Fate's Wile: Life Waste!"
"Fated One, Defeat? NO!"
"Fatigue, I, ug... FATE!" []
"Fell, and It Flatlined!"
"Fie! I Fell! Life...LIFE!"
"Fie, Solver! Life's Over!"
"Final hours rush on: FAIL!"
"Final opus! So painful!"
"Final Word: Fail, Drown, Flow...Nadir."
"Finale's Yields: Elysian Fields."
"Flatlines! Fine stall! It's fallen!"
"Game's Over? Move Sager."
"The gap gapeth!"
"Get up? Sigh. The gig's up."
"Goodbye, Body, Ego!"
"Grayest Leap Eagerly Past Pearly Gates. Stage Replay?"
"Health-Halt, Eh?"
"Hearse Time, Me Hearties!"
"Heart, head: hear death!"
"Hola, Halo!"
"How it Ends: Not Wished."
"Hurt ... THRU!"
"I Bolt Mo['] To Limbo!"
"I Fall. Net: Flatline."
"I nap on, no pain!"
"I redo...or DIE!"
"I... Yo, Dude, You Died."
"I'm down...now...dim!"
"I've lost to evils!"
"I...HALP! Phail!"
"Inert yet: eternity."
"Inter, or...In Retro?"
"A Jam, Guest? Just a Game."
"Jeopardy! Joy pared!"
"Last breath rattles. Bah!"
"Last Dance. Scant deal!"
"Last Word: Drat, Slow!"
"Lie off of life."
"Life's Gone: Fleeing So!"
"LOL, went not well!"
"Long Life Fill? Gone!"
"A Mistake Takes Aim!"
"Mm, uber-bummer!"
"Narrow Bed. Barrow-Den."
"Nuts, I go sign out!"
"O fleeing life, gone!"
"Obitual Bail-Out."
"Offed? Deffo!"
"Oh, stigma! I'm a ghost!"
"Oh, tragedy! Gory death!"
"One Try: All? Not Really."
"One Wrong... Goner, Now!"
"Ooh, Splat. Lo, pathos!"
"Our Take: Yup, You're Kaput!"
"Pal! Use a Pulse?"
"Palings...lapsing...gasp? Nil."
"Penalty Aplenty..."
"Perdition riptide! NO!"
"Person dies. Depression!"
"Playin['] Harps Snappily, Rah!"
"Rancho Charon."
"Repo-Man's Open Arms!"
"Sad Obit: O, [']Tis Bad!"
"The Self: [if player is male]He's[else]She[end if] Left!"
"Shut-down thuds NOW!"
"Six Feet Under? Needs Fixture."
"Slim Obit: Boil-Mist. It's Limbo."
"Snuffed it. I End Stuff!"
"So futile. Life's out!"
"Super numb...number's up!"
"Terminated: a Detriment."
"Terminus! Must...Rein..."
"Thy Base's The Abyss!"
"Time Explodes! Motel Deep Six!"
"Time to Undo to, um, Not Die."
"To die? O, edit!"
"To flag...go flat..."
"To my bane? Maybe not."
"Top Update: TAPPED OUT!"
"Um, right-ho, I'm through!"
"Undo the end, thou!"
"Undone right in the ground!"
"Unfortunate Run Unto Fate."
"Virulent, Vile Turn!"
"Watch out! ... Uh, act two?"
"Went RIP. New trip?"
"The Win Went, Hi!"
"With Angels, Light as New!"
"Wow, Do Things with Gods Now!"
"Yo, Nix the Bag-Oxygen Habit!"
"Yon Bed Beyond!"
"You're Mortal to Your Realm."
"Your End's Round, Yes?"
"Your Fate: a Fey Rout."
"Your Slip: RIP. Lousy!"
"Your time's out. Misery!"

table of empty command rejects [xxg3]
blurb
"'[one of]On, ho[or]Ho, on[in random order]?' Oh, no!"
"'Actions? Coastin['].'"
"Ah, lots o['] halts."
"Ah, sore? Hoarse?"
"Ai, nag again?"
"Arid flows. Words fail."
"Asonic? I so can!"
"At thoughts? That's tough."
"Basically asyllabic?"
"Be louder. Redouble!"
"Bland emote? Don't be lame."
"Blank lines? Blink, a lens."
"Blank stare! Ban talkers!"
"A blink, balkin[']. I blank."
"Blunt memo: mumble not!"
"The brave verb-hate!"
"Brevity-try vibe."
"Coy Lip Policy."
"Curtness encrusts."
"'Drop the derp, tho['].'"
"Drowsy, pet? Type words!"
"Dunno, so: no sound."
"Echoic choice."
"Eek! Let's try letter keys."
"Eh, inert in there?"
"Eh? Info? Oh, FINE."
"Emit grunt-muttering..."
"An empty type, man."
"Err...DO order."
"Forth? Aw, for what?"
"Gosh, nice echoings."
"Great, I get air."
"Habla? ...blaah."
"Halting, thin lag."
"Hey, no silence license, honey."
"Hmm...mmh...m-hm."
"A hush to hash out."
"I dread a dead air."
"I.e. man, I mean..."
"In stone. Tension." []
"'Input? I punt!'"
"A light lag hit?"
"Lips slip?"
"A long think: no talk nigh."
"Lorn? Yep. No reply."
"Lurked a lot? Talk louder!"
"Me, I tout time out."
"Me, I'm ... mime!"
"'Me, typing? Emptying!'"
"Mimeness? [']S Immense."
"'A moment to ME, man!'"
"Mopy vales? Play moves!"
"Most neigh SOMETHING."
"Mulling: a Mulligan."
"Mute? Coo! Come out!"
"Nary text? A try, next."
"'No chars, no crash.' Ah, scorn!"
"No claims. Laconism."
"No letters? Enter lots!"
"No tries? So inert."
"A nod at no data."
"A null vibe? Unlivable!"
"O, gag, agog!"
"O gosh, I'd not DO things."
"O, tut! Up! Output!"
"An object? No. Abject."
"Ohh. Um. Ho, hum."
"Oi, evac a voice."
"Ooh, drat. Too hard."
"Ooh, its...I...shoot."
"Panic-stare! I can't parse..."
"Paralysis spiral, say?"
"Parser sparer?"
"Passing gaspins[']."
"Plan? Oy, play on."
"Put out output." []
"Re-speak, speaker!"
"Redactional declaration."
"Respirator parrotries?"
"Say what? Aw, hasty."
"Seized-up, dupe-size!"
"Self censor? Confer less."
"Short pause: out, phrases!"
"Silent ops? Pointless."
"So, any say? No."
"Still? Nag: STALLING!"
"Stonewall tolls anew!"
"Sub-oral labours."
"Taciturn actin['] rut."
"Talk about? Balk out at..."
"There's a stare, eh?"
"Tut! Ever on to venture?"
"'Type a word, dopey wart!'"
"Type-ins yet? Spin..."
"Type more! Emote, pry!"
"'Uh, inept input, eh.'"
"Uh, speak! Shake up!"
"Uhh...huh?"
"Um. Ah. A hum."
"Um, garble a grumble?" []
"Umm...mum?"
"Un-speaking sneaking up."
"Very idle delivery!"
"Very stoic. Try voices."
"White noise is thine. Woe!"
"Without a silence license? Whoa, I tut."
"Yep, halt the play."
"Yes, inert serenity."
"Yo! Apt to yap!"
"You mouth out 'Hm.'"
"You re-er."

table of help companies [xxg4]
blurb
"Acing-the-Cheating Hint Cage."
"Ah, DON'T I Do a Hint."
"Aleph-A Help!"
"All-Hint Anthill."
"Alpha-A HALP!"
"Answering-[']Em Game Winners."
"Authentic-Cheat Unit."
"Blue Coast Clue Boats."
"Bona Fides Based Info."
"Chad's Tip Dispatch."
"Cheaters['] Hectares."
"Clear-Cut Clue-Trac."
"Clue a Ton, Clean Out!"
"Cued-Gain Guidance."
"Cynthia's Hints Cay."
"D'Onofrio Info Door."
"Did-a-Lot Told-Aid."
"Do-Things Hint-Gods."
"Don't-Shirk Dork Hints."
"End-Clueing Indulgence."
"Euclid's Sluiced ID Clues."
"Figure-Out Fugue Trio."
"Gain the Hintage!"
"Game-Aid Vet: Give Me Data!"
"Garlic the Lethargic Cheat Girl."
"The Giant Get-a-Hint!"
"Gold Hope Good Help."
"Got Hint Tonight?"
"GRATITUDES Strat-Guide."
"Hecate's E-Cheats."
"A Help Pal, Eh?" []
"Help-Solve-Level Shop."
"Hep Lot: eh, plot to help!"
"Hint-Figs Shifting."
"Hint is in This."
"Hint-Loom Monolith."
"Hint-Me Hitmen."
"Hint-Seer In There's [if player is male]Seth Neri[else]Erin Tesh[end if]."
"Hint-U-Co: In Touch!"
"Hole? Yup. Help You."
"Hopefully Helpful, Yo!"
"'I Could've' Clue-Void."
"I, Help-Phile!"
"I-Stomp-Mo['] Tips!"
"Ida's Aids."
"If-Stuck [f-w]-Its."
"In-the-Moment Hint Memento."
"Is-on-Quest Questions."
"Kewl-Klew!"
"The King Hint Keg."
"Lakeside Sleek Aid"
"Le Focus of Clues."
"Le Herp Helper."
"Le Hints-Hit Lens."
"Le Ship is Help!"
"Lead-Tip Deal Pit."
"Leibniz Biz-Line."
"Let-up, ho? Hole-put? Ult-Hope Help Out!"
"Let's Hop to Helps!"
"Light-Speed Help Digest." []
"Lights-On Hint Logs."
"Luce's Clues"
"Ma's Prep-Mappers."
"Making-it Gamin['] Kit."
"Map-So-Nice Companies."
"Merciful Clue Firm!"
"Mr. Yates: Ye Smart Mastery!"
"My Clue Lyceum."
"My Thing: Hint Gym!"
"Near-Tips Pantries."
"Neat-Help Elephant!"
"Nice Guys['] Yes-Cuing."
"O-It's-Bad Aid-Bots."
"Of Hints I Fish Into: This Info."
"Ole Hint Hotline."
"One Fluid Un-Foiled Duel Info."
"Overleaf of Reveal!"
"Overnight Hint Grove!"
"The Pal At Help!"
"The Panics-Hint Space."
"Patrick's Tips Rack."
"Peculiar Clue Pair."
"Piersol's Spoilers."
"Plot-Educer Cluer Depot."
"Poem-Sleuth Helps-Em-Out."
"Queries Esquire!"
"Query Us to Your Quest!"
"Rec Info In Force!"
"Right-On Hint Org."
"The Risen Hint-Seer."
"Saner Tip Pantries."
"Should've Solved, Uh?"
"Silverado Aid Lovers."
"So Not Fair? Info, Sorta."
"Sol's Ripe Spoilers!" []
"Solution Solo Unit!"
"Technical Hint-Accel!"
"A Thing-Do Hint-Goad."
"This-Turn-Rut Hints."
"Thrive-Tons Hint Troves."
"Top-Tips Pit Stop."
"Tut! Rely Utterly?"
"Ugh, a Worthy Way Through."
"Ugh, Tiny Hint Guy!"
"Un-doltish Loud Hints."
"Unlock-Em Clue Monk."
"Us-A-Cheat Chateaus."
"Violet's Solve-It."
"We Phone New Hope!"
"Well-Said Swell Aid"
"What-Lurks Walkthrus."
"Why a Rut? Way Thru!"
"Ye Cuing Nice Guy!"
"You Stuck? Yuck! To Us!"

table of noage [xxg5]
blurb
"Another rote 'Nah.'"
"Arguing? Gag! Ruin!"
"Bien Sur be RUINS!"
"Blase? Edgy? Be glad! Yes!"
"A cry, torn, contrary."
"Denial, earn adrenaline!"
"Despair is a derp."
"Dig banes? Being sad?"
"Disagree is geared."
"Don't care? Do recant!"
"Enemy's yes-men!"
"Firm deny, my friend!"
"Got up in pouting?"
"Grimace: magic-er? Erg, mac, I..."
"Grouchy? Uh, go cry!"
"Hey, wow...why woe?"
"Howdys, now. Why so down?"
"I'm less smiles!"
"It is not so, too! Insist!"
"Moan. Yawn. No way, man!"
"Mope, rube? Be more up!"
"Naw! Yo, no WAY!"
"Neg-gen?"
"Nope, I opine."
"Oh, BS! Bosh!"
"Oh, pouts shoot up!"
"Rues? Sure!"
"A skeptic? Epic task!"
"A smile's aimless!"
"A snub's odd. Sounds bad."
"Too grumpy? Go, mopy rut!"
"Wilcos? I scowl."
"Yo, tip: visit positivity!"

table of nonviolence messages [xxg6]
blurb
"Aflutter? Feral? Tut!"
"Aggression? Go! Reassign!"
"Ah, these hates, eh? Sheathe!"
"Aha, testy? STAY, HATE! That easy."
"Aw, lob a blow?"
"Ay, belts! Ay, be salty!" []
"Bait! I bat a bit."
"Batteries? Be artiest!"
"Battering? Bitter nag."
"Beating-up's abusing, pet."
"Box? No, obnox.!"
"Brawling? Glib warn!"
"Brutality? Truly, a bit."
"Conk, eh? Heck no!"
"Conk-fu? [f-w] no!"
"Do war? A word."
"Eh, I swoop...whoopsie!"
"Equip pique?!"
"Ferocious? I, of course, coo 'Furies!'"
"Fist? No: oft, sin."
"Flay-outs? So faulty, lusty oaf." []
"Get mean? Neg, mate."
"Go postal? Log a stop!"
"Gonna hit? No hating!"
"Gyrate on? Negatory!"
"Hackles? SHACKLE."
"Handbags? Gnash! Bad!" []
"Harshest thrashes!"
"Hating--a thing? Nah, git."
"A hint: hatin[']? Nah, it..."
"Hit [']um? No! Mouthin[']!"
"How stupid is THUD-POW."
"Huh, intent: in the hunt?"
"Hurty, uh, try."
"'I slap' is, pal, a slip." [p]
"I sour to riotous."
"'I swat?' Aw, SIT."
"Indulge in eluding, not dueling."
"It's rot to stir..."
"Jerk acts? Rest, jack."
"Lashing out? Hating soul."
"Lay off of flay."
"Lay waste? Stale way."
"Leapt into potential peltation? Lo, patient!"
"Less anger: largeness."
"Lie down idle now, wild one."
"Lunge! Try urgently!"
"Main goal: Go animal?"
"Melee fail! I feel lame!"
"Murdering?! Demurring!"
"No belts = noblest."
"None of your items emits smite."
"O, smite it some!"
"Oh, turn no hurt!"
"Oho, swipe? Whoopsie." []
"Oo, fury for you!"
"Ooh! Fist fits! Oho!"
"Ooh, guts! So tough!"
"Ouch! No way! How CAN you?"
"Out-of-line fool, i.e. nut!" []
"Oy, sport! Too spry!"
"Phat now: whap not."
"Physical? Achy slip."
"A point to pain? A tip: NO!"
"Punch-outs? Un-posh! Cut!"
"Rage move? Game over!"
"Rah, enmity in my heart! Irate hymn!"
"Real hit? Halt ire."
"Rearing, angrier!"
"Ripe-Fist Spitfire!"
"Row? Dear! A re-word!" []
"Salty, mac. Stay calm."
"Say, don't do nasty!"
"Shift a fist? Ha."
"Sip guilt, pugilist!"
"Slugfest guts SELF."
"Smackin[']? Sick, man."
"Snuffliest fitfulness!"
"So, have a shove? Oh, SAVE."
"So wild? I'd slow..."
"Sword? Words."
"Take a swing? A weak sting."
"Tangle? Go! Get along!"
"Terminate? Mean! Trite!"
"Thuds now? Shut down!"
"To brawl? Raw blot. Low, brat."
"To clash? Ha, clots."
"To scowl: low-cost."
"To shred? D'oh! Rest!"
"To slay? Ay, lost."
"To spring on...sporting? No!"
"Trounce? No! Truce!" []
"Truculent? Un-clutter. Cut. Let run."
"A twitch? Watch it!" []
"Type A? Rec: try peace."
"Um, meanest amusement."
"Un-rec: to trounce."
"Violence?! Love! Nice!"
"Violent, so: I solve not!"
"Warpath? Haw, trap!"
"Weakest swat. Eek!"
"Whaps? Pshaw!"
"You're... 'this' at hits."
"Zen! Fray a frenzy!"
"Zone of zen? Oof!"

table of singing rejects [xxg7]
blurb
"Bad voice vibe, o cad."
"Be tonal? Not able."
"Blottier libretto."
"Cacophony? No. Coy, Chap."
"The chorus echos hurt!"
"Eh, wail a while."
"Engrossing, er, sing-song. No sniggers!"
"Go to bed? Do be got."
"Gonna sow a song NOW?"
"Harmony, yon? HARM."
"An itch: I chant!"
"The music, um, itches."
"Neat, bud! Bad tune!"
"No melody! My noodle!"
"The notes? Not these."
"The result is n.g.: no good." [x]
"Sing here? Eh, resign."
"Sing out in gusto!"
"So atonal. Nasal, too!"
"So chanty? Yo, STANCH!"
"A sore arose! O, ears!"
"Talent of...flat note!"
"Tenuously lousy tune you lent us."
"Trololo? Oo, troll!"
"You sang us agony. Go, un-say!"
"You, sing? Oy, suing!"

table of sleep rejects [xxg8]
blurb
"[if player is male]Senor Snore[else]Senora, a snore[end if]!"
"'Asleep? Please?' / 'See, pal...'"
"Conk out: OK? No! Cut!"
"Cop out? Up, coot!"
"Eh, napping happening?"
"Fond of nod off?"
"Go to bed? Beg: to DO." []
"Let astray? Stay alert!"
"Loafing? I flag? No."
"Nap Time? Am inept!"
"Nix large relaxing."
"No naps. On! Snap!"
"Oh, sleep's hopeless."
"Penalties at sleepin[']."
"Plot needs: don't sleep."
"Rest now? We snort!"
"Rest pad? Departs!"
"Select nap? Can't sleep."
"Some rest seems rot."
"To nap: apt? No."
"To nap is a top sin!"
"To nap now: wanton op!"
"To naps? No! Past!"
"To zen, cad? Can't doze!"
"Yo! Want to yawn? Aw, t/y, no."
"You fear a super-long gulp-snore."

table of undo allows [xxg9]
blurb
"'Action over? Revocation!'"
"'Adjourn? Jar! Undo!'"
"'Anyhow, it's -- this way? No.'"
"'Anyhow, tear another way.'"
"'Construe recounts.'"
"'Cor! Veer! Recover!'"
"'Dire act? I redact!'"
"'Do a run-around.'"
"'Do. Certain? Redaction.'"
"'Do it, man, and omit...'"
"'Easy, tidy. Yay, edits!'"
"'Echos: CHOSE!'"
"'Eliminate a timeline!'"
"'Er, cautions. Recusation.'"
"'Erase tons! So earnest!'"
"'Flounderer! Err, Undo Elf!'"
"'A fresh re-fash.'"
"'Gad! Reset!' / 'Restaged.'"
"'Go, erase so eager!'"
"'Go-over groove!'"
"'Greener Reneger!'"
"'Hark! Redos?' / 'Rad. Kosher, dark horse.'"
"'I--return! Re-run it!'"
"'I create a re-cite.'"
"'I rode. O, dire! I redo!'" []
"'I wander. A rewind!'"
"Loth sound: 'Should not undo, sloth! Thud!' Loons." [p]
"'A mess-up? Um, passe.'"
"A modern redo, man. Ram. DONE."
"'More to re-moot!'"
"'Much done. Ouch, mend, undo-mech!'"
"'No! A slip so plain!'"
"'No gain, Ace? Once Again!'"
"'O, unrest! Not sure!'"
"'Odd! I've...voided.'"
"'Oh, dear!' / 'Ah, redo!'"
"'On, bud, to undo-bot!' / 'No doubt.'"
"'Or the other...'"
"'Ordeal reload!'"
"'Play around, parlay, undo.'"
"'Pout. Darn. Trap. Undo.'"
"'Prevailer reprieval.'"
"'Re-gluing...grueling!'"
"'Reader, at a retread.'"
"'Redacting? Can get rid.'"
"'Redaction? I don't care.'" []
"Redo-so rodeos!"
"'Redoin['].' / 'Ride on.'" []
"'Rein in, er...'"
"'Rent-up? Re-punt.'"
"Reportedly redo pertly. Lord, retype! Orderly, pet."
"'Retrace, fox, for exacter extra force!'"
"'Retractin[']? Err, INTACT!'"
"'A retry artery.'"
"'Rets-ster?!'"
"'Rid new. Rewind.'"
"'Roger. Reorg.'"
"'Romp so, [if player is male]Mr. Oops[else]Ms. Or-Op[end if]!'"
"'Rote. Void. Do it over.'"
"'So, undo. Uno, dos...'"
"'Strife? Re-fits.'"
"Terse old 'Let's redo!'"
"'Trip? See respite!'"
"'Tweak! To take two!'"
"'Un-hack a chunk.'"
"'Undo, trow?' / 'Round two.'"
"The undo: uh, noted."
"'Undoers, resound sounder!'"
"'Was void! Disavow!'"
"'Went awry? Aw, new try.'"
"'Word one: redo NOW!'"
"'Wrong foot. I now go for it.'"
"'Yo, retro, men! One more try!'"

table of undo rejects [xxg0]
blurb
"Beat? A knock? No take back"
"Bouts of undo: out of bounds"
"Bud, to tiny bitty undo? Don't buy it"
"Can't redo! Don't care" []
"Can't undo. Dunno--ACT"
"CHOSEN! Nag no changes"
"Dire to redo it"
"Double dip, dupe? I...bold"
"Double dips despoil, Bud"
"An edit? DETAIN"
"Hark! Redo?' / 'Dark, Hero"
"If redos, so fired"
"Inverts, ace? Can't revise antics ever"
"Last slip? It'll pass"
"No, rude undoer"
"No tube to un-be"
"Not again! A giant NO"
"Oo, rend no re-do"
"Redo? AVERT! Overrated!"
"Redo? Riven! Overriden!"
"Redoin[']? NO! Dire"
"Redoing ignored" []
"Rehash, eh? Rash"
"Reorients? No retries"
"A reset? Ee, rats! Teaser"
"A reset? NO! Erase not"
"Retracing act: erring"
"Retreads? ARRESTED"
"Second try? Descry not"
"Time travel? Vile matter"
"To rewind? Dire! Won't"
"Too far back! A fact, bro[sic]. OK"
"Too tired to redo it"
"Undo this? No. Duh. Sit"
"Undoin[']? I dunno"
"Undoing? I'd gun on"
"Undos? What? A shutdown!"
"Word, NOTE: won't redo"

table of wait responses [xxg10]
blurb
"Act, cat!"
"'Actin[']? I can't!'"
"Ah, so: net no haste."
"Ahh, paused? Push ahead!"
"Any gelid delaying: yield nag."
"Apathy: phat, ay!"
"Atrophy? Oh, party!"
"Aw, actin['] can wait."
"Aw, yer weary."
"Be patient? Tip: beaten."
"Bore-fest so bereft!"
"Camp it? IMPACT!"
"Cast acts."
"'Come along? Congeal mo[']!'"
"Contain no actin[']."
"A dally: all day?"
"Deferment fermented."
"Delayings yield nags."
"Dog, a hint: do a thing!" []
"Dust off! DO stuff!"
"'Effort? I forfeit!'"
"Effort is forfeits!"
"Eh, I try on...in THEORY."
"Elapsing: Pleasing?"
"Ennui-abled? Undeniable."
"Erg, sponsor no progress?"
"Estimable Blase Time."
"Fatigue? Ague fit? Fie, a tug!"
"Feet of toffee."
"Game rut? Um, great."
"Gee, don't get done."
"...Gets all 'Let's lag!'"
"A glum, um, lag."
"Gosh, di'n't DO things." [p] []
"Gotta STEP to get past!"
"Haste? Meh! The shame!"
"Haw, lie a while." []
"Hold sweat? Slow death."
"Howdy! Why do?"
"Hurry on? No hurry."
"I contain inaction."
"I lag. Fun? Gainful?"
"'I loaf?' O, fail!"
"I stew. We sit."
"'I wanna win...naa.'"
"I'd lessen idleness."
"'I'll best be still.'"
"'I'm so not motions!'"
"Idle, goof? Good life!"
"Idyll? Dilly, dilly."
"Idyll so: solidly."
"Inertest interest, it enters."
"Init's sin, it. Sit in!"
"Know more work? Me? No."
"Lag-hit? Alight!"
"Lag, lag, all gag."
"Lag oft? Go flat." []
"Lassitude is saluted!"
"Latence's cleanest."
"Leady delay dealy..."
"Let time pass? Simplest taste. I step lamest!"
"Loitering? Toil, Reign!"
"Long pause plagues on."
"Me: torpor promoter."
"'Momentum? Umm, not me.'"
"Mope? Put up tempo! Um, to pep!"
"More action! Motion! Race!"
"Motionless. Not lissome?"
"Nay, tot. Do not today."
"Neg to 'Get on!'"
"No vim? Movin[']! Movin[']!"
"Not pro-pronto?"
"The now went, oh!"
"O, bring boring!"
"O, loaf, aloof!"
"O, rush, hours!"
"O, slog! Go slo!"
"Oh, told to hold."
"Oy, Lotza Too-Lazy."
"Pacin['] beats panic, but you still feel samely and measly."
"Paroles? Reposal."
"Pass time? A misstep!"
"Passivity pays visit."
"Pausing gains up."
"Petrous posture!"
"'Please elapse,' you think, and time does."
"Practise paretics?"
"Reclination's nonrealistic."
"Rest off efforts."
"Restin['] is Sinister!"
"Runt! Evade adventure?"
"Sit-around durations."
"Sit? Lo, TOILS!"
"Sit there? Stir thee!"
"A slick 'I slack.'"
"Slowing up? Lo, upswing!"
"So, don't do tons."
"Sod do's."
"'Sorties? I rest, so.'"
"Stasis? Assist."
"Stay, Mr[if player is female]s? My stars!"
"A stew on? No sweat."
"Stuff-op? Puts off!"
"Tarrying? Grit: nary."
"This wait. What is it?"
"Thy large lethargy? Lag? Eh, TRY!"
"To dog Godot!"
"To park: OK? TRAP!"
"To spin in spot? No. Pits."
"To tarry? Rot, a try!"
"Torpor? Pro-rot!"
"Trek slow? Let's work!"
"'Tries? It's, er...I rest.'"
"Uh, stir! Rush it!"
"Uhh, mo['] ho-hum?" []
"Unmotivated? Vim! Do attune!"
"Veg out, eh? The vogue."
"Waste time?! Emit sweat!"
"A watch? Haw, act."
"Way in, I yawn."
"When? Not now, then?"
"Won't dare to wander."
"Yea, told to delay."
"'A yield. I delay.'"
"You pass, so? Say, UP!"

table of yessage [xxg11]
blurb
"Agree, Eager."
"Agreed? Gee, rad!"
"Agreement's sent? Meagre."
"Attuning nutating?"
"Bound to doubt? NO!" []
"Doggone, life! Feeling good!"
"Enthusiasm tsunamis, eh?"
"Flattery? Fly treat!"
"Fling treats, flatterings!"
"A frown? Far, now!"
"Gee, says yessage."
"Ha, cute! Boy, you betcha!"
"Hey, wow! Whew! Yo!"
"Languid lauding!"
"Lo, serve resolve!"
"Nod. Truth don't hurt."
"'O, quite,' quote I."
"On doubts: bud, not so!"
"Reaction's so certain."
"Right on, I throng!" []
"Say ays?"
"Simpers impress no-one."
"So cheery! Or...cheesy?"
"So fond of nods!"
"Sure, user! Sure!" []
"Yes, eh? Yeesh!"

book manor

table of ad slogans [xxm1]
blurb	blare	[random sad ads: the blare field designates whether you have an exclamation point at the end]
"[d-t] Saffo Fast Food"
"[if player is male]Aaron Colt[else]Lora Acton[end if]'s Root Canals" [p]
"[if player is male]Alec Pino[else]Loni Cape[end if]'s Special on Pecan Oils!"	true [p]
"[if player is male]Arie Voss[else]Eva Rossi[end if] Savories"
"[if player is male]Ced Minton's[else]Dot McInnes[end if] Condiments"
"[if player is male]Curt Aish[else]Traci Hsu[end if] Haircuts"
"[if player is male]Dave Heiss[else]Vida Hesse[end if] Adhesives"
"[if player is male]Derek Weill[else]Elke Wilder[end if] Weed Killer"
"[if player is male]Eli Nolan[else]Nell Inoa[end if] All-in-One Loan Line"
"[if player is male]Hal Moet[else]Mae Holt[end if]'s Hot Meals Most Hale" [p]
"[if player is male]Ivan Coats[else]Staci Avon[end if] Vacations"
"[if player is male]Leif Donat[else]Ida Felton[end if] Deflation Defoliant"
"[if player is male]Leo Starr[else]Rosa Ertl[end if] Realtors"
"[if player is male]Marc Lea's[else]Marcela's[end if] Caramels"
"[if player is male]Ned Segura[else]Agnes Duer[end if] Ungreased Dungarees"
"[if player is male]Omar Warfel[else]Mara Fowler[end if] Formal Wear"
"[if player is male]Ray Lund[else]Lady-Run[end if] Laundry"
"[if player is male]Rex Patil's[else]Lex Raptis[end if] Pixel Arts"
"[if player is male]Sandi Doucet's[else]Count Addie's[end if] Dance Studio"
"[if player is male]Saul Fern[else]Fran Lue's[end if] Funerals"
"[if player is male]Ted Reining's[else]Enid Ginter's[end if] Tenderising Ingredients"
"[if player is male]Wes Prieto[else]Teri Swope[end if] Power Ties"
"[one of]Cool[or]Loco[in random order] Hal's Alcohols" [x]
"A-Lister Retails"
"A-Maze-Ing Magazine"
"A-Sled Deals"
"Abe Bruce Barbecue"
"Abelson's Bonselas"
"Able Acres, a Cerebral Cereal Bar"
"Abrante's Ratsbane"
"Abs by Babsy"
"Absurdist Drab Suits"
"Accept CapTec!"	true
"Ace-Diet Iced Tea"
"Ace Finn Finance"
"Ace Finn's Finances"
"Ace Reed's Decrease-Care Seed"
"Acne irks? Skin care!"	true
"Adeline's Sane Deli"
"Adless Slade's"
"Aethers-Heaters" []
"Agnello Galleon"
"Agramonte Matronage"
"Akridge Kid Gear"
"Al Agan's Lasagna"
"Al Rocco's Cool Cars"
"Al Tower's Low Rates Wares Lot"
"Al's IV Vials"
"Alba's Rad Salad Bar"
"Albertsen Rentables"
"Alda's Salad" []
"AleCo's Solace!"	true
"Alemoat Oatmeal"
"Alemonde Lemonade"
"Alex's Axles"
"All-Ads Lad Sal Dallas"
"All-soy Alloys"
"All-Sweet Swell Tea"
"Aloisi Aiolis"
"Alpert's Plaster"
"Alph Pierre Peripheral Repair Help"
"Alrite Retail"
"Alterman Maternal"
"Altidor's Dilators"
"Altoids: Lots Aid Sad Toil!"	true
"Alvin's Anvils: We Stay Sweaty!"	true
"Amaro's Aromas"
"Amortised Mediators"
"Amos Mao's Moas"
"Amy's Yams"
"Ana Peck's Pancakes"
"Angela's Lasagne"
"Angelica's Analgesic"
"Angelis Leasing"
"Annetta's Tannates"
"Annoyed? Nay, done? Anodyne!"	true
"Anti-Modern Ordainment"
"Antony's Tannoys"
"Anyone's-Aim Mayonnaise"
"Ape-Musk Makeups: Um, Speak!"	true
"Apothecary [if player is male]Paco Thayer[else]Chaya Perot[end if]"
"Apperson Propanes"
"Aquino Quinoa"
"Ar, Avast! Ava's Art Avatars"	true
"Aragon's Angoras"
"Ardolino's Doornails"
"Arista Tiaras" []
"Ark O['] Okra"
"Arlinda's Laniards"
"Armorer Marrero"
"Arrow Slope Solar Power"
"Art Cho's Hot Cars" []
"Art Reed's Serrated Treaders" []
"Artsy Logo Astrology"
"ASAP St. Pastas"
"Asherin Hernias Shearin[']"
"Asich Chais"
"Ask-Best Baskets"
"Ask-Bob Kabobs"
"Ask-Kay Kayaks"
"Asphodel Deal Shop"
"Aspinwall Law-Splain"
"Associated Coast Ideas"
"Astle's Tassle Slates"
"Astor's Assort-Roasts"
"At-Cost Cotta's"
"Atari's Tiaras"
"Atchinson's Stanchions"
"Atchley's Slay-Tech"
"Atherton's Northeast"
"Attebery's Terabytes"
"Atwell's Wallets"
"Auberge Gebauer"
"Auntie Q's Antiques"
"Aviles's Valises"
"Avon Nova Nav-O"
"AwnedCo: We Can Do a New Doc!"	true
"Axel's Vita-Laxatives"
"B-Dry by Dr. Byrd"
"Babel E-Blab: B-Able!"	true
"Back pain? Nab a pick!"	true
"Bad Anna's Bandanas"
"Bagels['] Gables"
"Bags by Gabby's"
"Ball State Table Salt"
"The Balm, Bleah (TM)"
"Bang! Ira's Bargains!"	true
"Baquero Baroque"
"Barclay's Lacy Bras"
"Bardot Bod-Art"
"Barkey-Kearby Bakery"
"Barlow's Law Bros"
"Barnaby Bay Bran"
"Barros Arbors"
"Bart's Fake Breakfast" []
"Bartolini's Librations"
"Bartolo's Toolbars"
"Bartolome's Motorables"
"Bartolucci's Subcortical Caloric Bust"
"Battershell Tetherballs"
"Batterson Betatrons"
"Bauder Dauber-Earbud"
"Bawdy-Era Waybread"
"Bea Kraft's Breakfast"
"Bearded Dad Beer"
"Beat-Slop Potables"
"Beaudry Daubery"
"Beavins Ave. Bins"
"Beilfuss Sub-Files"
"Bella's Labels"
"Ben Liszt Blintzes"
"Ben Moral's Lemon Bars"
"Ben Way's News Bay"
"Benton's Bonnets"
"Berdahl's Halberds"
"Berhorst Brothers"
"Bert Snow Brownest Snot-Brew"
"Best Bets"
"Best Buy Yet: Bub's!"	true
"Bettina's Tabinets"
"Bettinger Bettering"
"Betton's Bot-Nets"
"Bevis Vibes"
"Bhandari's Hairbands"
"Bhat's Baths"
"Bhutto's Hot Tubs"
"Biel's Libes"
"Big and Bad Gin"
"Big Chalk St. Backlights"
"Big Max's Mix Bags"
"Big Nat's Basting"
"Big Rana's Bargains"
"Big Tank's Knit Bags"
"Big Tent Betting"
"Billinger Rebilling"
"Bin-Grown Brown Gin"
"Blacksmith Thick Balms"
"Blair's Bold Billboards"
"Bleak Cat Black Tea"
"Blest Belts"
"Blockbuster Bulb Restock!"	true
"Blotchy? BlythCo!"	true
"Bo Dean's: Based on No Beans an['] Bones!"	true
"Bo Lett's: Belts to Bottles!"	true
"Bo Novak's Book Vans"
"Bo Stamp's Spambots"
"Bo's OK Books"
"Boar's Head Rehab Soda"
"Bob's Grain: Absorbing!"	true
"Bobo's Urn Bourbons"
"Boehner's Neo-Herbs"
"Boettcher's Brochettes"
"Bogle's Globes"
"Bojan's Banjos"
"Boldest DebtSol"
"Bonet's Bentos"
"Boniness Benisons"
"Booby-Fad Baby Food"
"Boorts-Stroob Boostr-Robots"
"Boost-Gang Toboggans"
"Borelli's Brollies"
"Bortles's Lobsters"
"Bostic Bits Co"
"Boswell Bellows"
"Boutilier's Boiler Suit"
"Bowdoin's Wood Bins"
"Bowen's OK New Books"
"Boxer Yang's Oxygen Bars"
"Br'er Wes Brewers"
"Brad Canton Contraband"
"Brainer Berrian"
"Brandey's Dry Beans"
"Brandi's Ribands"
"Brandley's Benadryls"
"Brave-Win Vain Brew"
"Break down? Know Dr. [a-b]!"	true
"Break-Sweat-Wear Basket"
"Bree Eber Beer"
"Brenna's Banners"
"Bri's Ribs"
"Briceno's Bicornes"
"Brigandi Braiding"
"Brisance Carbines"
"Brisbon-Robbins Ribbons"
"Bristol Ribs Lot"
"Bro Green's Born Serge Rosenberg."
"Broch St. Borscht"
"Brookdon's Doorknobs"
"Brunetto's Obstruent Buttoners"
"Bub Lea's Baubles"
"Buckingham's Hick Guns. BAM!"	true
"Burchette's Trebuchets"
"Burp-Ade's Super Bad!"	true
"Burrage Garbure"
"Burstein Turbines"
"Burt Straw Bratwurst"
"Butty by Tut"
"A Buzz: ZUBAZ!"	true
"Cafe Do-Shop-Cheap Foods"
"Cafe Fine Caffeine"
"Caggiano's Anagogics"
"Cagney Agency"
"Cahill's Challis"
"Caisson Casinos"
"Cal Berg's Crab Legs"
"Cal Crown's Clown Cars"
"Calder's Cradles"
"Caleb's Cables"
"Calo-Cola: All Cocoa!"	true
"Calumet's Muscatel"
"Camara's Mascara"
"Camden's Med-Cans"
"Camenish Machines"[]
"Camille's Micellas"
"Canker-is-a-Snicker Skin Care"
"Capell's Scalpel"
"Capelli's All-Spice"
"Capozzoli Cool Pizza"
"Capps-Baker Paperbacks"
"Captain-A and Cap'n It Catnip"
"Caravan Nav-a-Car"
"Cardozo's Zoo Cards"
"Cargil Garlic"
"Carin's Scarin['] Cairns"
"Carlee's Cereals"
"Carleen's Cleaners"
"Carlo's Ol['] Cars"
"Carly's Lycras"
"Carolee's Escarole"
"Caroline's Real Coins"
"Carquest Racquets"
"Carson Acorns"
"Carstarphen Sharp Nectar"
"Casoni Asonic Casino" []
"Cassel Scales"
"Castile's Scaliest Elastics"
"Castillo Ill Tacos/Cola List"
"Cat's Ill? St. Lilac!"	true
"Catapano Caponata"
"Catarino's Raincoats"
"Catt Reich, Architect"
"Cave Wine: a New Vice!"	true
"Ceci Van's Vaccines"
"Celona's Seconal"
"Cestaro's Coarsest Coasters"
"Chad's Wines/Sandwiches"
"Chandra's Handcars"
"Chapin's Chips an['] Spinach"
"Charest's Starches"
"Charette's Catheters"
"Charlie's Heli-Cars"
"Charlie's Rich Ales"[]
"Chat is at Chi's. Cash it!"	true
"Cheesed-off? Coffee Shed!"	true
"Chen-Lu's Lunches"
"Chet's Techs Chest"
"Chez Una's Szechuan"
"Chipotle PoliTech"
"Choose ShoeCo!"	true
"Chopin's Phonics Shop, Inc"
"Chopra's Car Shop"
"Chrestman Merchants"
"Cigars? No. Organics!"	true
"Cilla's Lilacs"
"Citator Ricotta"
"Citizens, Nice Zits? Zinc-Site!"	true
"Cittadino Dictation"
"CJ Poster Projects"
"Clapper's Scrapple"
"Clarkston's Corn Stalks"
"Clemente's Selectmen"
"Clepski Pickles"
"Cline Elms Smell Nice"
"Closer Relocs"
"Coatless? Lacoste's"	true
"Cobain's is Bacon!"	true
"Cobra-X's Boxcars"
"Cohan's Nachos"
"Coif fail official? Up, see to toupees!"	true
"Colgin's: CLOSING!"	true
"Colty's Costly Octyls"
"Comic Sans Moccasins"
"Compton's Compost'n"
"Consider Doc Reins!"	true
"Consider SniderCo"
"Consoled? Don Close Condoles!"	true
"Consume Us: MenCo!"	true
"Contact No-Tat-Co!"	true
"Cook-OK Co"
"Cool Story Color Toys"
"Coons & Son Co"
"Cooper Rope Co"
"Coppola Alco-Pop"
"Coppola's Loco Apps"
"Corces Soccer Co-Recs"
"Cordia D'Arico Cardio"
"Cordova's Vac-Doors"
"Corelli's Colliers"
"CoreOp RepoCo." []
"Coretta's Tots-Care"
"Corzine's Zinc Ores"
"Cosell Cellos"
"Costa Tacos"
"Costean Octanes"
"Costumer Curt Mose"
"Cosy Fork Fry Cooks"
"Cotner's Cornets"
"Count on NoNutCo!"	true
"Courington Contouring"
"Couth-Hut Co"
"Covet Eco-TV!"	true
"Cowherd's Chowders"
"Craig's Cigars"
"Cred-Tips Predicts"
"Creeps['] Crepes. Respec[']!"	true
"Cremins Mincers"
"Crisp Alt Clip-Arts"
"Cristobo Robotics"
"Cropham's Camphors"
"Crowe's Escrow"
"Cruiser Curries"
"Crusoe's Sucrose Sources"
"Cuneo's Ounces"
"Cuper's Spruce Up Cure"
"Curatory Carry-Out"
"Curt Uden's Undercuts"
"Customiser Costumiers"
"CuteLab's Blue Cats"
"Dale's Deals"
"Dalton's Sandlot"
"Damage Bros. Board Games"
"Dario's Radios"
"Darner's Errands"
"Darrel's Larders"
"Data Reps Adapters"
"Dav's OK Vodkas"
"Dawn Krom's Markdowns"
"Deb Hooks Book Shed"
"Deb Saxon's Sandboxes"
"Deb's Beds"
"Debarros's Adsorbers"
"Decent-Tec Den"
"Decide on IndeedCo"	true
"Decorations['] Co-ordinates"
"Def Pyre Deep-Fry"
"Deforrest's Fortressed Defrosters"
"DefWear: Few Dare!"	true
"DeGrasse Dressage"
"Degreasant Tea Gardens"
"DeHoios Hoodies"
"Deion's is Done! So, dine!"	true
"DeLancey's Clean Dyes"
"Delgiorno's Gondoliers"
"Della's Ladles"
"Delmore's Modelers"
"DeLoise's Oilseeds"
"Delrossi Soldiers"
"Deluca's Caudles"
"Demarais Madeiras"
"DeMarino Radio Men"
"Demaris's Misreads"
"Demersal Emeralds"
"Denault's Unsalted Nuts Deal"
"Denniston Nintendos"
"Dense Strainer Needs Trainers!"	true
"Dentinger's Tenderings"
"Depend on Ned Epdon!"	true
"Deponte's Pentodes"
"DermaDream = Rad Me!"	true
"Deryl can dry clean!"	true
"Di Best Bidets"
"Di Malanta's Dalmatians"
"DiCarlo's Cordials"
"Diebel's Edibles"
"Dig-Crafts Gift Cards"
"Digestional Gelatinoids"
"Dinkel's Kindles"
"Diploma Mail-Pod"
"Discarded Dad's Cider"
"Discount Conduits"
"DISCOUNTER REDUCTIONS!!!!!"	true
"Discover VidScore!"	true
"DiveNet: Evident!"	true []
"Doane's Anodes"
"Doc Hume's Does-Much Ouch-Meds"
"Doc Tom Dot Com"
"Doc's Cult Cold Cuts"
"DocTime's Medics To Domestic"
"Dodie's Diodes"
"Dolinger-Reingold Older Gin"
"Dolinger's Soldering"
"Domestic Dime-Cost Doc-Items" []
"Don Leitner's Tenderloins"
"Don't Berate the Rebate Beater!"	true
"Done-Lame Lemonade" []
"Donuts by Bud Tony's"
"Dood Luc's Cool Duds"
"Door Dr. Rod Ord"
"Dorado's Odd Oars"
"Dori's Roids"
"DorstCo Doctors"
"Doss Sods"
"Doug Roush Sourdough"
"Downing, Wingdon [']N Godwin"
"Dr. Core's Records"
"Dr. Estes Dessert"
"Dr. Oven Vendor"
"Dr. Rose Orders Doser-R"	true
"Dr. Singer Grinders"
"Dr. Tice Credit"
"Drab is Bad, Sir. Baird's Braids!"	true
"Dredwic's Cwidders"
"Drees's Seders"
"Dry Alan's Lanyards"
"Duarte's True Ads"
"Dubinsky Kind Buys"
"DuCharme Cured Ham"
"Duds By Buddy's"
"Duerst's Trussed Dusters"
"Dufner's Refunds"
"DuFrein's: Friend Us, Find Sure Fun Rides!"	true
"Duggar's Drug-Gas"
"Dunegan Dunnage"
"Duo-Lab Lo-Baud"
"Dusenbury Underbuys"
"DuShane's Sunshade"
"Dust'd Off Odd Stuff"
"Duty Free Feed Yurt: True, Defy!"	true
"E-Sci-Dev Devices"
"Eagle U League"
"Eagleson Gasolene"
"Earl Blum's Uber-Small Umbrellas"
"Earl Hoke's Lake Shore Kosher Ale"
"Earl's Fake Leaf Rakes"
"Earl's Laser"
"EarnSol Loaners"
"Easler Leaser Resale"
"Eat Rod's Roasted!"	true
"Ebert's BESTER Berets"
"Eckart's Rackets"
"Ed Cain's Sad Nice Candies and Ices"
"Ed Lieb's Edibles" []
"Ed Short Red Hots" []
"Ed Stagg Gadgets"
"Ed Stone Denotes Needs to Set Done!"	true
"Ed West Tweeds"
"Ed Wye: Ye Wed, We Dye"
"Ed's Twig Widgets"
"Edgiest Tees. Dig!"	true
"Edmonds Oddsmen"
"Edsall Ladles" []
"Edwards Wadders"
"Eel-Hat, the Ale: ah, Leet!"	true
"Ego-Farm Fromage"
"Egoists['] Stogies"
"Egwin's Sewing"
"Eh, Debtor-Bothered? Bet-Horde!"	true
"Ehinger's Greenish Sheering" []
"Ehler St. Shelter"
"Elan-Shot Ethanols"
"Eleas Easel-Lease"
"Elf Wine: Feel Win, New Life!"	true
"Eli Ott's Toilets"
"Elidia's Dailies"
"Ella Cheng's Challenges"
"Elrod's Solder"
"Elsa's Sales"
"Elva's Salve"
"Em Heick Kimchee"
"Emert's Meters"
"An Empty Payment" []
"Enger Green Regen, tomorrow's power source!"	true
"Engram's Mangers"
"Enos's Senso-Noses"
"Enstrom Mentors"
"Entsminger Resignment"
"Erdahl's Heralds"
"Eric Gant Catering"
"Eric's Fun Nice Furs"
"Ericson Coiners"
"Ernest Tian Entertains Tenantries"	true
"Ernestina Tanneries"
"Err, beg Gerber/Berger Law Firm!"	true
"Esau Eaus"
"Esberth Sherbet"
"Estala's Atlases"
"Estrich Richest Cithers"
"Etc.-Tec"
"Etland Dental"
"Ettina's Tea Tins: In Taste It's Neat!"	true
"Ettinger's Resetting/Retesting"
"Eubanks's Sunbakes"
"Euro-Medal Remoulade"
"Eustis Tissue"
"Eutsler's Streusel"
"Evangelist Elevatings"
"Evanston Nav-Notes"
"Evaristo's Assortive Savoriest"
"Eve's Gig Veggies"
"Evelina's Vaseline"
"Everhart's Harvester"
"Evon's Ovens"
"Evrice's Ecrives Service"
"Ewart Water"
"Exasp-a-Spex"
"Excalibur: I be a luxcar!"	true
"Excalubur: I be a LUX car!"	true
"Experiment Re-Exemptin[']"
"Fab Ron's Brans of no Barfs"
"Faberge's Free Bags"
"Fae Ott's: To Feast of Taste: Eats Oft!"	true
"Faintest Fine Tats"
"Fake Rustic Fruitcakes"
"Fake-Vite: Take Five!"	true
"False-Obit Lifeboats"
"Fan Moods? Man's Food!"	true
"Fancy Do of Candy"
"FartsCo Factors Far Cost! O, Crafts!"	true
"Fast Life Stiff Ale"
"Fast Paced Pat's Decaf"
"Fastbaker Breakfast" []
"Fat Frodo Afford-to-Fart Food"
"Fat Jai's Fajitas"
"Fat-O-Meal Meat Loaf"
"Faunists['] Fustians" []
"Faustin's Fustians"
"Fear Plot, Mr[fs]? Platformer[fs]!"	true
"Fechter's Fetchers"
"Feddersen Defenders"
"Feebler Elf Beer"
"Feel Wan? New Leaf!"	true
"Fehringer's: Refreshing!"	true
"Felecia's Calefies!"	true
"Fermat's RAM Fest"
"Ferrington Refronting"
"Fiesta-Race Cafeterias: Easier, Fact!"	true
"Fillmore's Lore Films"
"FineOrg: No Grief!"	true
"Finer Cash Franchise"
"Fines St. Fitness INFESTS!"	true
"Finewood's Food & Wines"
"Finster's Snifters"
"Fischler Filchers"
"Fisher's is Fresh!"	true
"Flattering Gift Rental"
"Fletson Teflons"
"Flo Goede Feel-Good Glee Food"
"Floranti's Flatirons"
"Florencia's Falconries"
"Fogel's Gels of Self-Go"
"The Food of Hot Ed"
"A Fool's Loofas"
"Footpads['] Apt Foods"
"Forbis Rosbif"
"Forensic Info-Recs"
"A Forge of Gear"
"Fouts So-Tuf Tofus"
"Fowler's Flowers"
"Fox Lake Fake Lox"
"Fran Tait's Fast-Train"
"Freelance Fencer Ale"
"Freiling Refiling"
"Fresh at Father's"
"Freund's Refunds" []
"Friere's Ferries"
"Frostwood Worst Food"
"Frugal Gal Fur"
"Frutansky Funky Arts"
"Fun Bart's Burns Fat (Barf TUNS!)"	true
"Fun-Fort Turnoff"
"Fungal-Unflag"
"Funk Dojo Junk Food"
"Furlham Rum: HALF harmful!"	true
"G. Crosby Cyborgs"
"G. Frei Grief-Refig"
"Gaal's Galas"
"Gabe Sand Bandages"
"Gail Thon's Thingolas"
"Gaiman's is MANGA!"	true
"Gamble! Be GLAM!"	true
"Garish Grisha Hi-Rags"
"Garlic-Soil Cigarillos"
"Garmenture Reargument"
"Garone's Oranges"
"Garoutte Tutorage"
"Gasometer Megastore"
"Gassert Stagers"
"Gasvale Salvage: LA, Vegas"
"Gatepost Pottages"
"Gaubert's Guest Bar"
"Gavin's Saving"
"Gawjiss Jigsaws"
"Gay Pools Pay Logos"
"Gayton's Nag Toys"
"Gearhead Headgear"
"Gecko Keg Co"
"Gencarelli's Allergenics"
"Gendreau's Dungarees" []
"Gennie's Engines"
"A gentle, elegant, neat gel"
"Gerlach's Schlager"
"Germain's Smearing"
"Gerri's Re-Rigs"
"Gerrity's Registry"
"GerryCo Grocery"
"Gervais Gravies"
"Gervase Greaves"
"Gervasi Gravies" []
"Gesualdi's Gladiuses"
"Get KASS Gaskets"
"Get on GoNet!"	true
"Get Oscar's Escargots"
"Get SAKS Gaskets!"	true
"Get Taube's Baguettes"
"Geyserite Tiger-Eyes"
"Gia Vent Vintage: Get Vain!"	true
"Giannotti's Stationing"
"Gibson/Bogins Bingos"
"Gijer's Rejigs"
"Gil Matsko Goat's Milk"
"Gil's Nice Ceilings"
"Gilgath's Gaslight"
"GimpNest Pigments"
"Gingold Lodging"
"Giselle Gellies"
"Glamour-Goal Rum"
"Glass Pen Spangles"
"Gleaton's Tangelos"
"Glinco's, now CLOSING!"	true
"Glintier Retiling"
"Glum-Labs Gumballs"
"Go-Sprint Sporting"
"Go to Duff's: Good Stuff"
"Goblin St. Biltongs"
"God's-Lab Ad Blogs"
"Godinho Hood Gin"
"Godwin's Dowsing"
"Gold Cola? Good Call!"	true
"Golding's Lodgings"
"Goob's BOGOs"
"Goodwill's Wild Logos"
"Gordon C.'s Corndogs"
"Gordon Facio Organic Food"
"Gorin's O-Rings"
"Gorsline-Olinger's Resoling"
"Gosman Mangos"
"Got new? Get now!!!!"	true
"Got-Plus Lug-Pots"
"Goths['] Inn: [']S Nothing!"	true
"Gotta love to ogle a TV!"	true
"Gowan's No-Swag Wagons"
"Grab Ian's Bargains!"	true
"Gracia's Agarics"
"Gracie's E-Cigars"
"Graefe's Serfage"
"Grandison Adornings"
"Granier's Earrings"
"Granieri's Reraising"
"Grannis Snaring"
"Grapevine Vegan Pier"
"Graydon Organdy"
"Greatest Rates-Get! Gee, Start!"	true
"GreenSci Generics"
"Greenwood's newer goods"
"Greg Mota's Mortgages"
"Grierson Ignorers"
"Grimaldo's Marigolds"
"Grin-Wit Writing"
"Groomsman Monograms"
"GrowTek: Get Work!"	true
"Grub Harems Hamburgers"
"Gruber's Burgers"
"Gruden's Rug Dens"
"Grundy's Dry Guns"
"Gueremin Meringue"
"Guiton's Go-Units" []
"Gus Elem Legumes"
"Gus McNiff's McGuffins"
"Guthounds['] Doughnuts"
"Guy Bass Buys Gas!"	true
"Gyro-Orgy"
"Haberland's Handlebars"
"Haggins Gashing"
"Halpern's Shrapnel"
"Hamlyn's Hymnals"
"Handy Wm Wyndham"
"Hansen Hennas"
"Hardesty Hydrates!"	true
"Haring's Garnish"
"Harrison Air Horns"
"Harwick's Rickshaw"
"Harwood's Road Show"
"Haselton Ethanols" []
"Hassinger Garnishes/Shearings"
"Hastert Hatters"
"Hastings Stashing"
"Hauk's Hakus"
"HeapsCo: So Cheap!"	true
"Hebrew Mo's Homebrews"
"Hector's Torches & Troches"
"Heinous Uni-Hose"
"Heisler's Heirless Relishes"
"Helsing's Shingles"
"Hempiest Epithems"
"Henderson Nosher Den"
"Henry Gloop Nephrology/Phrenology"
"Hep Cats['] Patches"
"Hep? No? PHENO-PHONE!"	true
"Her Best Sherbet" []
"Herbalist Hair-Belts" []
"Heuring's Ushering"
"Hi-Copes Hospice"
"Hi-Glare Hair Gel"
"Higton's Thingos"
"Hilgdon's: Holdings Sold Nigh!"	true
"Hilgert's Slighter Lighters"
"Hip Cons Shop, Inc." []
"A hipper happier paper. Hi!"	true
"Hiroads Hairdos"
"Hislop Polish"
"HIT NOW! WIN! HOT!!!"	true
"HoboMart (now with bathroom)"
"Holgerson's Long Horses"
"Holistic Chits Oil"
"Honig's Hosing"
"HoochCo, Ooh!"	true
"Hopkins Ink Shop"
"Hosman's Hansoms"
"Hot Duds Odd Huts"
"Hot? Jet in the Joint!"	true
"Hot-Presses Prostheses"
"Hsiu's Sushi"
"Huckstep Ketchups"
"Hula-Haul"
"I-Be-Foul Biofuel"
"I-Bouquet Boutique"
"I-Look-OK Oil"
"I Stake at Ike's!"	true
"I-Steal-It Sale!"	true
"I trust Titus R.!"	true
"I Use Mr. I'm Sure!"	true
"I'm-Mo[']-Super Emporiums"
"Iannello Lanoline" []
"Ice-So-OK Cookies"
"Iced-Spite Pesticide"
"Icer Dome: Mediocre? Dire? Come! More Dice!"	true
"IdleCo's EcoLids"
"If Acne in Face: ECAFIN!"	true
"If ALE, a life!"	true
"If-Stout Outfits"
"Ilich's Chilis"
"Imbrogno Brooming"
"Inane Curs Insurance"
"IndustCo Conduits" []
"IndustCo Discount" []
"Ink by Binky"
"Instanter Transient Intranets"
"Insured UI Nerds!"	true
"Intellectual Null-Ice Latte"
"Inter-Local Citronella"
"Intriago Rigatoni"
"Ionic Prints Inscription"
"Irate-Face Cafeteria"
"Isaac Acais"
"Isenhart Hairnets"
"Isenhour's Nourishes"
"It's at Tait's!"	true
"Ittner's Retints"
"Ivie Garnett Integrative Vinaigrette"
"Jane's Jeans"
"Janey Bell's Jelly Beans"
"Jay Ross Soy Jars"
"JebstCo Objects"
"Jen Booth: on the Job!"	true
"Jillee's Jellies"
"Jim Gluk's Milk Jugs"
"Joe Bond's Jobs DONE!"	true
"JoinStar Janitors"
"Jon's Web New Jobs"
"Joshi's Shojis"
"Joubert's True Jobs"
"Julio's Oil-Jus"
"Juniot's U-Joints"
"Kagmin's Masking Makings"
"Kalis Lasik"
"Kate's Steak"
"Katy Cash's Haystacks"
"Kay Chen's Hackneys"
"Keitha's Shitake"
"Keniston's Inkstones"
"Kershaw Hawkers: We Shark!"	true
"Ketterman's Tentmakers"
"Kevin's Knives"
"Kick-Start Track-Kits"
"KidScape is PACKED!"	true
"Kiesel's Selkies"
"Kiko's Kiosk"
"Kilbane's Sinkable Blankies"
"Kim Loy's Soy Milk"
"Kimball's Silk Balm"
"Kimura's Rumakis"
"Kindfort's Soft Drink"
"King Fear-Freak Gin"
"Kishka Khakis"
"Kissler's: Risk Less!"	true
"Kit Sews Weskits!"	true
"Kittner's Trinkets"
"Klepac's Spackle"
"Klossner Snorkels"
"Koch's Shock Hocks"
"KonigCo Cooking"
"Korhonen's Nonkosher"
"KorTech: THE ROCK!"	true
"Kosar Okras"
"Krewson Knowers"
"Kris Best Brishets"
"Kubik's Bikkus"
"Kumari Rumaki"
"La Niche Chilean"
"Laciest Elastic"
"Lacivita's Viaticals"
"Lacourse's Carousels"
"Lads['] [crap-u] Placards"
"Laffer's Raffles"
"Laforce's Alfresco Flares Co"
"Lame Host Mae Holt's Hot Meals"
"Lammert's Trammel"
"Lankest Anklets"
"Lannister Internals"
"Lapser Pearls"
"Larber's Barrels"
"Lasco Colas"
"Lasseigne ensilages: agileness!"	true
"Lassiter Realists"
"Last Boy Toy Labs"
"Last Cue! Cut-Sale!"	true
"LastOnCo Coolants"
"Latham's Has Malt!"	true
"Laurice Wolf Cauliflower"
"Lauryn's Uranyls"
"Lavages Salvage" []
"LaVonda's Load-Vans"
"Le Apt Plate"
"Le Cap Place"
"Le Seven-Elevens"
"Le Vest Svelte"
"Lea's Ales Sale"
"Leaphart's Asphalter"
"Leavitt's 'A' Vittles"
"Leavitt's Vile Tats" []
"Leaworthy Holy Water"
"LeDoux Delux-O"
"Legato's Gelatos"
"Legba's Bagels" []
"Lego-Bot Bootleg"
"Leibman's Bailsmen"
"Leighton's Hosteling"
"Leisinger Lingeries"
"LeMay's Measly Yealms"
"Len's Pic Pencils"
"Lenin's Linens"
"LensCare Cleanser" []
"Lequire's Reliques"
"Les Gray Argyles" []
"Les Vries-Elsevier RELIEVES!"	true
"Lesmeister Smelteries"
"Lesniak Alkines"
"Lesniak's Sealskin"
"LeSport Petrols"
"LetMeCo Telecom"
"Letta's Latest Lattes"
"Levitan's Ventails"
"Levon's Novels"
"Lew's Lens Wellness"
"Lewey Jr. Jewelry"
"Ley's Lyes"
"Leyton's Soylent"
"Li'l Reg's Grilles"
"Li'l Stan's Installs"
"Li'l Stew's: It's Swell!"	true
"Lide's Delis: Sidle, Slide!"	true
"Life Coach/Cliche Oaf [if player is male]Leif Chaco[else]Felica Cho[end if]"
"Life Stinks? Niki Felts's Finest Silk"	true
"Lignum Vitae Time-Valuing Vitamin-Glue"
"Like-Fads Fake Lids"
"Limbert's Timbrels"
"Limbs-B-Slim"
"Linares Nailers"
"Lindauer's Laundries"
"Lindenberg Reblending"
"LinkPress Sprinkles"
"Lipman's Samplin[']"
"Little Girl's Ill Glitters"
"Lo-Bust U-Bolts Sub-Lot"
"Lo-Caste Eco-Salt"
"Lo, cat! AltCo!"	true
"Lo-Fi Foil"
"Lo, Get a Gelato!"	true
"Loaded Odd Ale"
"Loafers For Sale"
"Local Bros['] Robo-Calls"
"LoCastro Locators"
"Lockheed's Helo-Decks"
"Loco Men's Monocles"
"Lodestar Leotards"
"Lombardi's Drab Limos"
"Lon Ito No-Toil Lotion"
"Long Street Lorgnettes"
"Longfoot's Font Logos"
"Lonny's Nylons"
"Loo's PROVEN Provolones"
"Loose Oleos"
"Lori Hass Hair Loss/Rash Oils"
"Lost? Rely: Ye Trolls['] Trolleys"
"Lotspeich Chipotles"
"Lottie's Toilets" []
"Louetta's Toluates"
"Lowbrow Bowl Row"
"Lu Regan's Lean Rugs"
"Luanna's Annuals"
"Lubeck's Buckles"
"Luca Omega Guacamole"
"Lunchtimes Munch Islet"
"Lusty Ranch Lunch Trays"
"Lyla Phipps Happy Pills"
"Lyman H.'s Hymnals" []
"Ma Blink's Lambskin"
"Ma Lucci's Accu-Slim"
"Ma's Queer Marquees"
"Mac Bly's Cymbals"
"Mac's Scam-Cams"
"Macrae's Cameras"
"Maddie's Diadems"
"Maier's Armies"
"Malbrough Rough Balm"
"Malia's Salami"
"Malisa's Salamis"
"Malvina's Mail Vans"
"Mama's Den Manmades"
"Man-I-Dare Marinade"
"MAN SPOT Tampons"
"Mangino's Masoning"
"Manliest Ailments? Salt-Mine Meal-Tins!"	true
"Marchese's Cashmeres"
"Marg Steel Telegrams"
"Margie's Imagers"
"Margolis Milagros"
"Marla's Alarms"
"Marsicano Macaronis"
"Mart Law's Raw Malts"
"Marv's VRAMs"
"Masoner Ransome"
"Massimo Mimosas"
"Massingale Magnesials"
"Mastroianni Marinations"
"Match-Up Chum Pat"
"Mathiesen Hematines"
"Matt's Jar Jam Tarts"
"Mattoon's Ottomans"
"Maurer's Armures"
"Max Eick Cake Mix"
"McAlister Cartelism"
"McCauli Calcium"
"McDaniel's Medcinals"
"McHeinus Nice Mush Munchies"
"Mclean's Encalms!"	true
"McNealy Clay Men"
"McPoot's Compost"
"Me-Bod: Be Mod, Bed Mo[']!"	true
"Meals at Almeta's Tamales"
"Meat-Flip Flame Pit"
"Meatiest Teatimes"
"Medeiros Remedios"
"Meg Graf's Egg Farms"
"Meg's Gems"
"Meisner Ermines"
"Mel, Cal McLeal: Call [']Em!"	true
"Mel's Duo-Model-Us Modules"
"Mel's Faint Filaments"
"Melius Muesli"
"Meloni Moline Lo Mein"
"Melting Mint Gel"
"Meltser's Smelters"
"Mentioner's Minsetrone"
"Mercantile-Mint Cereal"
"Mesko's Smokes"
"Messiah Mashies"
"Meyerson Moneyers"
"Millage's Legalism"
"Milliken's Lime Kilns"
"MiltonCo Cool Mint"
"Minced Med'Cin"
"Minde's Denims"
"Minden Indemn-Mendin[']"
"Mine Camp Pemmican"
"Ming Acuff's Macguffins"
"Minty-Ade: Dynamite!"	true
"MiscCo Cosmic Comics"
"Mister C Metrics"
"Mitchell's Tech Mills"
"MixCo Comix"
"Modglin Molding"
"Moebius BioMuse"
"Moilanen's Minneolas"
"Mom Roush's Mushrooms"
"Mom's MMOs"
"Monstrous Sun Motors" [p]
"Moody's: Be Somebody!"	true
"More-Gut Gourmet"
"Moreira's Armoires"
"Morissette Meteorists"
"Morse's Smores"
"Moser Bros.['] Sombreros"
"Moss Cute Costumes"
"Mount St. Muttons"
"Mouse's Mousse"
"Mr. Cha's Charms"
"Mr. Cub's Crumbs"
"Mr. Fatso's Fast Roms"
"Mr. Hume's Hummers"
"Mr. O's ROMs"
"Mr. Pave-Revamp"
"Mr. SoftCo Comforts"
"Mr. Up-Fee Perfume"
"Mr. US Rums"
"Mr. Vose, Ms. Rove, Movers"
"Mrs. Elli, Mr. Lisle: Millers"
"Ms. Peal's Samples"
"Ms. Rowe Mowers"
"Muir Poem Emporium"
"Mum's Gear Rummages"
"Mum's Ripe Premiums"
"MunchLate Lunchmeat"
"Munster's Sternums"
"Murton's Nostrum"
"MushCo: So Much!"	true
"Mushrooms So Sour, Hmm" []
"Musil's Simuls"
"Muston Mounts"
"Mute Al's Amulets"
"My Abs By Sam"
"My Car: Camry!"	true
"My Gift: Fit-Gym!"	true
"My Suit It's YUM"
"My Thing's Smyth Gin!"	true
"Mysterious Emory Suits"
"Naggies Signage"
"Nakata's Katanas"
"Nashtier Hairnets" []
"Nat's Limp Implants"
"Natale's Sealant"
"Near-Miss Seminars"
"NeatCo: Octane at Once!"	true
"Neil's Liens"
"Nelson's Data Stands Alone!"	true
"Neurogenic Encoignure"
"Neustadt Dust-Neat"
"Nevski Knives" []
"New Age Awe-Gen"
"New-Eyes Sweeney"
"Ngoma's Mangos" []
"Niagra's Sangria"
"Nic Cave's Vaccines" []
"Nic Fay's is Fancy!"	true
"Nicastro's Croissant"
"Nice-Thing Ethnic Gin"
"Nice Zits, Citizens? Zinc-Ites!"	true
"Niceham's Machines"[]
"Nichelle's Chenilles"
"Nicola's Oilcans"
"Nik Grey's Key Rings"
"Nik, Wes: We Sink Skewin[']"
"Nik's Skin Inks"
"Nilsen-Enslin Linens" []
"Nip's Spin & Snip"
"Nitschke Kitchens"
"Nitzsche Chintzes"
"No date? Note ad! Do neat! Donate to Dean!"	true
"No-Daze Ad Zone"
"No-Glitch Clothing"
"No-Logic Cool Gin"
"No-Sight Hosting" []
"No Thaws? Hawton's Snow Hat!"	true
"No-Wit Towin['] WON IT!"	true
"No zip? PONZI!!!"	true
"Noguchi's Hocusing"
"Nokes Kenos"
"Nola's Salon"[]
"The Nook Hot Keno"
"Nora's Sonar"
"Nu-Place CleanUp"
"Nuisancer Insurance" []
"NWOT Town" []
"O-Grade Do-Gear"
"O. Russert Trousers"
"O'Cain's Casino" []
"O'Leary's Real Soy"
"O'Riley Oilery"
"Odd-Goof Dog Food"
"Ogden's Sod-Gen"
"Oh, stop to shop!"	true
"Ohh, Pets: the Shop"
"OK-Kiss Kiosks"
"Ol['] Bo's Slob-O Bolos"
"Ol['] Chet's Clothes"
"Ol['] Ethan's Ethanols" []
"Ol['] Ian: a Lion, I Loan!"	true
"Ol['] Ruf's Flours"
"Old Dog's Odd Logs"
"Old Fool's LOL Foods"
"Old Omega's Good Meals"
"Oldmere's Remodels" []
"Ole Gina's Gasoline"
"Ole Japan's Jalapenos"
"Oleg's LEGOs"
"Olga Hu's Goulash"
"Olga Mohr's Holograms"
"Olympus Slop, Yum: Plum, Soy!"	true
"One-Swap Weapons"[]
"Oompah's Shampoo"
"Ooz-Rich Chorizo"
"Opal-Jane's Jalapenos" []
"Ophi's: I Shop So Hip!"	true
"Optimum Opium (TM)"
"Opus Up-So Soup"
"Or Need Redone? Don Ree."	true
"Organic Grain Co"
"Orleans-Salerno Loaners" []
"Orrienti's Interiors"
"Ortega's Storage"
"Osaki is A-OK!"	true
"Oscoli Silo Co is Cool!"	true
"Osseter Stereos"
"Osterkamp Top Makers"
"Osterman-Sarmento MAN STORE"
"Ostermann-Martenson Ornaments"
"Ostermeier Eriometers"
"Ostertag Garottes"
"Ouida Audio"
"Ouida's Audios"
"Our Cute Cut-Euro Couture"
"Our Lad's Dour Sal!"	true
"Ovide's Videos"
"P Sawyer: We Spray/Swap yer Spyware!"	true
"Pa Krum's Markups"
"Pa Otto's Potatoes--you guess what Ma Otto sells, too"
"Pa Phelps Help Apps"
"Pa Reg's Grapes"
"Pa's Spa"
"Pacer St. Carpets"
"Paid Loss Disposal"
"Painter's Pantries" []
"Palmerton Patrolmen"
"Pam Tell's Pet Malls"
"Pamila's Impalas"
"Panic St. Catnips"
"Paniccia's Capsaicin"
"Pappy's Spy App"
"Parrent's Partners"
"Parriott's Portraits"
"Parrots['] Art Spot"
"PartyCo's Crap Toys"
"Passero Soapers"
"Pasternak Partakens"
"Pat Fair's Parfaits"
"Pat Kelp's Pep Talks"
"Pat's Hot Top Hats"
"Pati's Pitas"
"Patterson Patentors"
"Paw/Mum's Wampums"
"Peaceful Cape Fuel"
"Pecina's Inscape"
"Pedlar Lepard"
"Peete's Tepees"
"Peg Hiatt's Past-Eight Spaghetti"
"Peltzer's Pretzels"
"Penfold Flop Den"
"Peon Tim's Nepotism Pimentos"
"Pepi's Pipes"
"Pepito's Top Pies"
"Perdue Pureed"
"Perkins's Skin-Resp"
"Perlin's Pilsner"
"Perreira's Repairers"
"Perretta's Pre-Treats"
"Perrin Street Interpreters"
"Persico Copiers"
"Persing Pingers"
"PertDais: Spread it Rapidest!"	true
"Pescador's Scorepads"
"Peshram Hampers"
"Pessard Spreads"
"Petrisa's Raspiest Pastries"
"Pettey's Typeset"
"Pettinger's Pre-Testing"
"Pfister's Pre-Sifts"
"Phat Rey P. Thayer Therapy"
"Phil Cote Chipotle" []
"Photos: Oh, Stop to Shop!"	true
"Pia's IPAs: A Sip?"	true
"Picard's Rad Pics"
"Pick Nat's Knit Caps!"	true
"A Pickled DeliPack @ KidPlace!"	true
"Pie/Salad Palisade"
"Pig-Heart Graphite"
"Piles-Ups Supplies is Supple!"	true
"Pinegar Reaping"
"Pining Pig Inn"
"Pinot's: Stop in to Spin!"	true
"Pip Ferry Frippery"
"Pip Hong's Shopping"
"Pip Wang's Swapping"
"Pirani's Aspirin"
"Pisces Spices"
"Pithel's: it Helps the Lips!"	true
"Pitman's Stampin[']"
"A Pizza Piazza: no stopping on toppings!"	true
"Plain-Blots Ballpoints"
"Planets St. Test Plans"
"Plato's Postal"
"Playsome Maypoles"
"Please Do Dale Poe's Dope Sale!"	true
"A Plebe Cot: Place to Be!"	true
"Pluck-O Lockup"
"Po['] Caleb's Placebos"
"Po['] Will's Pillows"
"Poe's Def Feed-Ops of Speed"
"Polaris RailOps"
"Polite Ole Pit Pie Lot"
"Pollinger Repolling"
"Pontiac's Captions"
"Poop-o-Pop Cola is Social!"	true
"Pop Erik's Pork Pies"
"Pop Hull's Push Poll Pull Shop"
"Pop's Alt Laptops"
"Pop's Opps"
"Pop's Rave-Approves"
"Pops Hull's Push Polls"
"Portia's Air Stop"
"Posies I S'Pose"
"Posture-Up Store" []
"PR Pa Rapp"
"Pram-Loft Platform"
"President's Driest Pens"
"Pricy Goth Copyright"
"Priestley's Peristyles"
"Prig Fanny's Frying Pans"
"Prim Sot Imports Is Top, Mr.!"	true
"ProTec's Copters"
"Protect-Tec Port"
"Proust's Sprouts"
"PSI ISP"
"Ptacek's Packets"
"Pulliam's Palliums"
"Pup-Ick Pick-Up"
"PureFem Perfume"[]
"Pursell Pullers"
"Quentin's Quinnets"
"Quero's Roques"
"Quito's Quoits"
"RaceSoft's Forecasts"
"Rackham's Chakrams"
"Racquel's Lacquers"
"RaderCo: Record a Rare Doc!"	true
"Raimondo's Main Doors"
"Rain-Mist Martinis"
"Rainwater's Warranties"
"Rally-Rite Rarely-Lit Artillery"
"Ramaker's Earmarks"
"Rambini's Minibars"
"Rampley's Lampreys Samplery"
"Ramstad Mad Arts"
"Rapport's Art Props"
"Rapson Aprons"
"Rare-Lit Trailer"
"Rare-Rib Barrier"
"Raschke Hackers"
"Rasnic Cairns" []
"Rattiness, Tartiness"
"Ratto's Tats or Tarots"
"Raw-Spite Wiretaps" [**promote to regular idea?]
"Rawlings's Wrassling"
"Ray Blend Benadryl"
"Ray Lew, Lawyer"
"Ray Pew's Spyware"
"Raymon's Masonry"
"RealTec's Clearest Treacles"
"Reb Heet, the Beer: Be There!"	true
"Rebier's Berries"
"Rebuildy Bud Riley"
"Recursions Co-Insurers"
"Red Bay Bad Rye"
"Red Inn Dinner Rendin[']"
"Red Oafs['] Fedoras"
"Redleaf Federal"
"Reebok OK Beer"
"Reeknose Kerosene"
"Reiber's Berries" []
"Reid's Rides"
"Reingold's Soldering" []
"Reisz's Sizers"
"Reitman's Raiments"
"Reliable Lee Blair"
"Rema Rios Armoires" []
"Remington Mentoring"
"Renetta's Entreats"
"Rep. Gross: PROGRESS!"	true
"Resiny Sin-Rye"
"Resmoothed Hodometers"
"ReSnubCo Bouncers"
"Retta's Taters"
"Rev. Erv"
"Rex's RXes"
"Rey's Rug Surgery"
"Rhett Inge Tightener Tethering"
"Rhoda's Hoards"
"Rhodus's Shrouds"
"Rhoney's Noshery"
"Richeson Chorines"
"Rierson Ironers"
"Rifkin's Firkins"
"Ringstad Tradings"
"Rioch's So-Rich Choirs"
"Ritson Nitros"
"Rob Lew's Bowlers"
"Robotham's Bathrooms"
"Robur's Burros"
"Rod Gump's Gumdrops"
"Roddis Droids"
"Roden's Drones"
"Roger's Reorgs"
"Rolling-On Grill"
"Rome Clan Corn Meal"
"Ron Copp Popcorn Op-N-Proc"
"Roper St. Porters"
"Rose Gupta Great Soup"
"Ross Belt Lobsters"
"Ross Tye Oysters"
"Rosy-Set Oysters"
"Rote Fun Fortune"
"Roussette's Tutoresses"
"Rousting Tourings"
"Rullo/Ruoff Flour"
"Rummager Margerum"
"Rumstad Mustard"
"Russ Fulop Surplus of Plus Fours"
"Russet's Trusses"
"Rust-o-Roust Tours"
"Ruthie's New Wiener Huts"
"Rutner's Returns"
"Sabic's Basics"
"Sabino Bonsai"
"Saeger's Greases"
"Safe-Cut Faucets"
"Sager Gears"
"Saggare Garages"
"Sal Cort Car Lots"
"Sal Grey Argyles"
"Sal Hess Has Less Hassles!"	true
"Sal Inge Gasline Sealing" []
"Salveig Glaives"
"Sam Funke Makes Fun Fake Nums!"	true
"Samaroo's Amorosas"
"Samson Masons"
"Sandoval Vanloads O'Vandals" []
"Santa Fe Fan Eats"
"Santa Fe's Safe Tans"
"Santillo Stallion Allotins"
"Santillo's Stallions"
"Saputo's: Pass OUT!"	true
"Sara Long Granolas"
"Saracino Ocarinas"
"Sato Oats"
"Saunders Danseurs"
"Savaric Caviars"
"Savile's Valises" []
"Saw-Vine Weavins"
"Say, Bud, Sad? BUY!"	true
"Scag Peak Packages"
"Scalisi Silicas"
"Scanter Nectars"
"Scarantino Carnations"
"Scaturro Curators"
"Scavenger Reg Vance's"
"Scavenger Van Creeg's" []
"Scheirer-Riechers Cherries"
"Schiavone Anchovies"
"Schomer Chromes"
"Schubert Butchers"
"Sci-Vault Victuals"
"Scofield Doc-Files"
"Scooter Store Co"
"Scorpion PrisonCo"
"Scout-Pile Poultices"
"Screen-Free References"
"Scudder's Duds Recs"
"Sea-Bulb Baubles" []
"Seabird Darbies"
"Seagull Ale-Slug"
"Seagull-Slug Ale"
"Seattle Lattees: Le Taste!" 	true
"Seaward Adwares"
"Sedgwick Wigs Deck"
"Seed-Mart Red Meats"
"Seedmen Demesne"
"Seegerd Degrees"
"Segel Food Feels Good!"	true
"Seifried's Firesides"
"Seitz: It's E-Z!"	true
"Seligman Mealings"
"Selkind Kindles" []
"Selkirk Likkers"
"Selvio-Voiles Olives"
"Seneca's Seances"
"The Senor Seth Reno: There's No Honester!"	true
"Serif Fries"
"Serpentries Enterprises"
"Serpico Copiers" []
"Sewer Br. Brewers"[]
"Shagband Handbags"
"Shamon's Hansoms" []
"Shamrock OK Charms"
"Shapiro Airshop"
"Sharee's Hearses"
"Sharpest Hat Press"
"Shawnda's Handsaws"
"Shay's Art Ashtrays"
"Shem Kalski Milkshakes"
"Shenita's Anthesis Shanties"
"Sheridan Ad Shrine: Yer Ad Ready!"	true
"Sherman Dice Merchandise"
"Shilling Hill Gins"
"Shoes So She"
"Shop at Potash: Ah, Tops! So Phat!"	true
"Shop-O-Hoops"
"Shoreman Menorahs"
"ShortCo Cohorts"
"Show-M-Beer Homebrews" []
"Shui's Sushi" []
"Shula Hauls"
"Shy Moe's: My Shoes!"	true
"Si Cubit's Biscuits"
"Sick Goon Cookings"
"Sicko Hater Artichokes"
"Sign Up! Ed's Dispunges Pudginess!"	true
"Signature Great Unis"
"Signeur Guerin's Reusing"
"Signor Ringo's"
"Silbernagel Relabelings"
"Silken-April Painkillers"
"Simcox's Comix"
"Siminski Miniskis"
"Simona Amnios"
"Sin-Bred Binders"
"Sin-Cut Tunics"
"Sincere Seer, Inc"
"Sinegal's Gainless Leasings"
"Singler's Ringless Slingers"
"Sink Doc Dickson-Dockins"
"Sir Beef's Frisbees"
"Sir Hawk's Rikshaws"
"Sir Ian's Raisins"
"Sir Manic Mini-Cars"
"Sir-or-Mr. Mirrors"
"Sir Thunder's Undershirts"
"Sir Turbo Burritos Ur-Bistro"
"Sistare's Assister"
"Sitek Tikes['] Kites"
"Sivertsen: Nerviest? Reinvest!"	true
"Six-Lire Elixirs"
"Skeeter's Keesters"
"Skeptics pick TESS!"	true
"Skin Doc Dickson" []
"Skipper Kippers"
"Skit Kits"
"Skrbic Bricks"
"Slates's Tassels"
"Slaymaker Malarkeys"
"Sleeman Enamels"
"Sleep City: Epic Style!"	true
"Slick-Taco Cocktails"
"Slick Thom, Locksmith"
"Slick-Tips Lipsticks"
"Sloan Loans Salon"
"SlopArt Plastro-Portals"
"Sly Pup Pulpy's Supply"
"Smart Marts"
"Smedley Medleys"
"Smolenski Moleskins"
"Smoothback Matchbooks"
"SniffCo Coffins"
"Snowberger Wrong Beers"
"Snowpea Weapons"
"So-Local Cool Al's"
"So-Low Wools"
"So Unfed? No-Feuds Fondues!"	true
"So-Urgent Gun Store"
"Soapy Spa, Yo--So Pay!"	true
"SoCal Colas" []
"Socko Cooks"
"Socrates Coasters" []
"Soft Sal Salts of Fat Loss"
"Softo Fotos"
"Solis Silos"
"Some-Pains Noise Amps"
"Somers-Morse's S'Mores" [p]
"Sontag Tangos"
"Sorghum-Gro Mush"
"Sot Herb Borseth BOTHERS!"	true
"SotCo Scoot-O-Cots"
"Sourvine's Souvenirs" []
"The Space: Cheapest Tech Apse"
"SpamCo: So Camp!"	true
"Spangler Grapnels"
"Sparty Pastry"
"Spas O['] Soaps"
"Spazzi Pizzas"
"Speiser's Pressies"
"Spetzler Pretzels" []
"Spice-Tides Pesticides/Septicides"
"Spite St. Pie"
"Spitzer's Spritzes"
"Sportman Portman's"
"Sprier Priers"
"Springsteen Presentings"
"Sprint-Prints"
"Spruce-It Pictures"
"Spud Loco Cold Soup"
"Square-Deal Resale Quad"
"Ssh-Ware Washers"
"St. Egan Agents"
"St. James Jetsams"
"St. Nico Not-Sci Scinto-Tonics"
"St. Pam's Stamps"
"St. Pierre Prep Ties"
"St. Roj or J.T.'s Jorts"
"Staap Tapas/Pasta"
"Stagle Aglets"
"Stale-Munch Lunch Meats"
"Stampney Payments"
"Stanfield Inflateds"
"Stanhope Phaetons"
"Stapleton Talent Ops"
"StarrCo Carrots"
"Steadham's Mastheads"
"Stedwig Widgets" []
"Steeley Eyelets"
"Stef Hamer Fresh Meat"
"Stef's Fests"
"Stefan's Fastens Fatness"
"Steinbecher's Nice Sherbets"
"Steinert's Insetters"
"Stella's Sallets"
"Stelzer-Setzler Seltzer"
"Stelzer's Seltzers"
"Stenger Regents"
"Stepter's Pretests"
"Stevo's Stoves"
"Stew Tree Tweeters"
"Stewed Tweeds" []
"Stillinger Trellising"
"Stillwagon Tallowings"
"Stiverson Investors"
"Sto['] G Gots Togs!"	true
"Stockinger Rocketings"
"Stohler's Hostlers"
"Stony Cedar/Nerdy Coast Candy Store"
"Storable Bloaters"
"Stoudemire Udometries"
"Strachan's Trash Cans"
"Streed's Desert"
"Streperous Superstore"
"Stressed? Desserts!"	true
"Striating Attirings"
"Studio B OUTBIDS!"	true
"Sturgeon Rust-Gone" []
"Su-prise! Priuses is Super!"	true
"Su's Prep-Suppers"
"Suarez Azures"
"Sue and Duane's Sundae"
"Sue Lipps Supplies"
"Sue Profitt Top Fustier Petit Fours"
"Sulaiman Aluminas"
"Sum-Lab Albums"
"Sumlin's Muslins"
"Sun Co-Op Coupons"
"SunPro Prunos"
"Super Big Grub/Pies"
"Super-Chow: Such Power!"	true
"Super-E Purees: Peruse!"	true
"Super-Vid Drive-Ups"
"Superstar User Parts"
"SureCity Security"[]
"Surf Furs"
"Surname Manures"
"Susana Saunas"
"Suze Chan Szechuan" []
"Svet's Vests"
"Swarts Straws"
"Swensen Newness"
"Swenson: NOWNESS!"	true
"Swine Sinew Wines"
"Swoboda's Basswood"
"Syed Edy's Dyes"
"Synthetic Itchy Nets"
"Tabitha's Habitats"
"Tacos Inn: Contains No Actins!"	true
"Talley's LA Style"
"Tanaka's Katanas" []
"Tapani's Pinatas"
"TarverCo Cover Art"
"Tas-T-Tats"
"Taste by Beatty's"
"Tastier Artiste Attires--with the iratest person you've seen in an ad"
"Tat by Byatt"
"Tats by Batty's"
"Tawnier Tinware"
"TaxesCo: So Exact!"	true
"Tayler-Artley Realty"
"Tea Park: Partake!"	true
"Tea Scribe Beatrice's"
"Tea's Up in Petunia's!"	true
"Tech-Sol Clothes" []
"Ted Blan Belt and Dent Lab"
"Ted's Gag Gadgets"
"TeensyNet: Yes!"	true
"Telma's Metals"
"Temporal Metal Pro [if player is male]Tom Pearl[else]Pam Toler[end if]"
"TendsUmCo Documents"
"Tenisha's Shanties" []
"Teschner Trenches"
"Tesla's Steals" []
"Tessman Stamens"
"ThemesCo: Some Tech to Scheme"
"Thielbar's Herbalist"
"ThingCo's Hint Cogs"
"Thirsty? Try this!"	true
"Thoop's: Oh, Stop to Shop!"	true
"Tiger-Man's Mean Grits"
"Time/Place Elite Camp"
"Tingly's Styling"
"TiredCo's Cot Rides"
"Titfer Fitter"
"To Fix it: FOX!"	true
"To Score: Cooter's StoreCo!"	true
"Tobie's So-Be-It Boites"
"Tofu's so TUF!"	true
"ToilCo: Loci to Cool It!"	true
"Tom Lee's Omelets."
"Tom's Gag Maggots"
"Tomkin's OK mints"
"Tonita's Station"
"Too Happy Pay Photo"
"Tootles's Toolsets"
"Top-Cert-Protect" []
"Top-Loan Platoon"
"Top opt: Pop Ott!"	true
"Top Secure Pet Source"
"TopNet: Potent!"	true
"Tops Car Parts Co"
"Torre Retro"
"Torres's Resorts"
"Tortorelli's Rototillers"
"Tosca Coats"
"Tot-Gro Grotto"
"Totem Inn Ointment"
"Trades at Red's"
"TransCo Cartons"
"Traverse-Averters"
"Treater Retreat"
"Treatin['] Nattier"
"TreeGen's Greenest!"	true
"Trey's Tyres"
"Tricia's Iatrics"
"Trig's Grits/Grist"
"TriMax MixArt Matrix"
"Trino's No-Stir Storin[']"
"Trish's Shirts"
"A Trite Attire: I Treat!"	true
"Tropic Trip Co"
"TroveCo: To Cover or Covet!"	true
"TruBet Butter"
"TrueCo: Rec Out Our Tec to Cure!"	true
"TrueCom's: More Cuts, Customer!!!"	true
"TruGo Grout"
"Trupiano's Rainspout" []
"Trust-O Tutors"
"Try Pat's Party St.!"	true
"Try Rif's Stir-Fry!"	true
"Tsao/Sato Oats" []
"Tuckahoe's Tack House"
"Tucker Tek-Cru"
"Twin Peaks Weak Pints"
"Twin Pigs Wing Tips"
"Ty Rose's Oysters"
"Ty Sato's: Tots Say So Tasty!"	true
"Ty Tao's: O, Tasty to Stay!"	true
"Ty's Good Dog Toys"
"Typographic Pictography"
"U-Go-Try Yogurt. Or is it U-Got-Yr Yogurt? You hope it's not grouty."
"U. Sanchez Szechuan" []
"Uby's: Busy Buys BY US!!!!"	true
"Ug's Rad Guards"
"UltCo = CLOUT!"	true
"UltCorps Plus ROTC Sculptor"
"Ultimate Multi-Tea"
"Un-Brite Tribune"
"Un-Deffest? Need STUFF!"	true
"Un-thin Nuthin[']? No-Lard Roland Ladron Edits Diets. Obesity bites, yo!"	true
"UnitCo: I Count!"	true
"Upcast Pa Cust Catsup"
"Upcaste Teacups"
"Upsner Prunes"
"Urpy's Syrup"
"Us-Angry Ray Guns"
"Us, Preach? Purchase Reach-Ups!"	true
"Us-Turbo TourBus"
"Us-Vape: Save Up!"	true
"Use Gin, Genius!"	true
"UsMenCo: CONSUME!"	true
"Utech's Chutes"
"Utter Schlock Clothes Truck"
"VanOrden's Drone Navs"
"Vasser Savers"
"Ventura TrueNav"
"Vesta's Staves"
"Vibrant Vit-Bran"
"Victoria TriviaCo"
"Vidmaster Trev Midas"
"Villacorta's Vacillators"
"Vin Mani's Minivans"
"VineGen Nine-Veg Evening!"	true
"Vito's Tivos"
"Voeller's Oversell"
"Vogel's Gloves"
"Voorhees's Overshoes"
"Vote Art to Avert!"	true
"Vote For Rev Foot!"	true
"Vote Sol to Solve!"	true
"Vy's Sure Surveys"
"Wal-Mart Raw Malt"
"Wallaby Ballway"
"Walsh's Shawls"
"Wang's Gnaws"
"Warm-Voices Microwaves"
"Warnecke Neckwear"
"Wary-Peon Weaponry: REPAY NOW!"	true
"Way-Wiser Wireways"
"We trust Stu Wert!"	true
"Wechsler Welchers"
"Weidner Red Wine"
"Weigand Windage"
"Weird Tom's Worm Diets"
"Wendi's New IDs"
"Weninger Renewing"
"Wes Roof Woofers"
"Wesserman Menswears"
"Westering's Tree Swings"
"Westgate's Sweet Tags"
"Westin Twines: it's New"
"What's-On-Now Hats"
"Wignall Walling"
"Winberg Brewing"
"Winnings in Gwinn's."
"Wm. Flair Law Firm"
"Wogan's Wagons" []
"Wollam's Mallows"
"Wolters Low-Rest Trowels"
"Wong's Gowns"
"Wood Farm's Warm Foods"
"Woodland's Downloads"
"Wormscribe Microbrews"
"Worst Gin: It's WRONG!"	true
"Wreathing Nightwear"
"Wronski Workins[']"
"X. Brasco Boxcars" []
"Yaeko's Kayoes"
"Yahnke's Hankeys"
"Yarwood's Doorways"
"Yawpers['] Spyware" []
"Ye Fast Safety"
"Ye Rustic Security"
"Yeats Yeast"
"Yenter's Styrene"
"Yeo's Gum: Some Guy Goes Yum!"	true
"Yesterday's Dessert: Yay!"	true
"Yo['] Ma's Mayos"
"Yong Gyno"
"Yost Toys"
"You're Stuck? Sky Couture!"	true
"Your Pets['] Super Toy"
"Yr. Avg Gravy"
"Yucatan Cay Tuna"
"Yukster Turkeys"
"Zambino's Zambonis"
"Zanghi Hazing"

table of bad rappers [xxm2]
blurb
"[d-word-u] Crews Mcandrews"
"[d-word-u] Earl Alderman"
"[d-word-u] Ed Madden"
"[d-word-u] Erick Dickerman"
"[d-word-u] Esta Steadman"
"[d-word-u] Gia Madigan"
"[d-word-u] Hellen Mendenhall"
"[d-word-u] Ira Miranda"
"[d-word-u] Karl Markland"
"[d-word-u] Lea Adelman"
"[d-word-u] Leah Haldeman"
"[d-word-u] Lee Edelman"
"[d-word-u] Lita Maitland"
"[d-word-u] Lore Moreland"
"[d-word-u] Man Dammann"
"[d-word-u] Neil Lindeman"
"[d-word-u] Rae Dearman"
"[d-word-u] Ray Maynard"
"[d-word-u] Rhea Hardeman"
"[d-word-u] Roe Medrano-Dameron"
"[d-word-u] Ron Normand-Nordman"
"[d-word-u] Ronni Normandin"
"[d-word-u] Roy Raymond"
"[d-word-u] Zoe Mendoza"
"All Time Ill Mate Tim Leal"
"Art Sopp, Rap's Top Pop Star"
"Artsome Maestro Moe Rast"
"Autotuned Tout Duane"
"Be-Crunk Buckner"
"Be-Down Bowden"
"Beatboxin['] Benito Bax"
"Big-Chains Inga Bisch"
"Big-Nuts Stu Bing"
"Blind Hater Hildebrant"
"Bongo-B-Goon"
"Bragging Brig Gang"
"Brilliant Illin['] Bart"
"Busta Staub"
"Calm MC Al"
"Chill Arie Chiarelli"
"Chill Em Michell"
"Chill Mei Michelli"
"Chill Rupe Cullipher"
"Chill Shane Chisenhall"
"Chill Singer Schillinger"
"Chilla Cahill"
"Chiller Li'l Cher"
"Chillun['] Nic Hull"
"Clans So No-Class"
"Club Ripe Republic"
"Cold Loc'd Clod Doc L"
"Comped Dope MC"
"Cra-Z-Czar Zac R"
"Criswell Ills Crew"
"Darin['] Alec Cardinale"
"Darin['] Cal Cardinal"
"Darin['] Ceola Candelario"
"Darin['] Elsa Saldierna"
"Darin['] Geri Gardinier"
"Darin['] Guy Guinyard"
"Darin['] Laci Cardinali"
"Darin['] Leo Andreoli"
"Darin['] Les Sindelar"
"Darin['] Li Rinaldi"
"Darin['] Lue Lindauer"
"Darin['] Ma Miranda"
"Darin['] Mona Mandarino"
"Darin['] Noe Orendain"
"Darin['] Song Grandison"
"Darin['] Ted Trindade"
"Darin['] Telma Martindale"
"Darin['] Tomi DiMartino"
"Darin['] Velvet Vandervliet"
"Darin['] Zelma Almendariz"
"Darin['] Zoe Darienzo"
"Def Agnus Fagundes"
"Def Arlen Freeland"
"Def Blain Banfield"
"Def Blair Barfield"
"Def Brock Beckford"
"Def Callie Lacefield"
"Def Caron Defranco"
"Def Corie Federico"
"Def Cory Fordyce"
"Def Dry Freddy"
"Def Fishel Sheffield"
"Def Grisel Selfridge"
"Def Hilda Hadfield"
"Def Lon Folden"
"Def Lord Ledford"
"Def Lorri Reliford"
"Def Lucia Caufield"
"Def Maren Freedman"
"Def Mirna Friedman-Manfredi"
"Def Nasir Sandifer"
"Def Neil Fielden"
"Def Norah Forehand"
"Def Nurse Dufresne"
"Def Oglin['] Feingold"
"Def Ogre DeForge"
"Def Olin Delfino"
"Def Reginald Dangerfield"
"Def Rod Deford"
"Def Ronna Fernando"
"Def Sanner Fernandes"
"Def Seaton Destefano"
"Def Terisa Defreitas"
"Def Wilborn Brownfield"
"Dis-Well Sidwell"
"Disowned Odd Swine"
"DJ [n-t] Tjaden"
"DJ Amee Majeed"
"DJ Aron Jordan"
"DJ Astor Jorstad"
"DJ Cesena Cendejas"
"DJ Erminia Demirjian"
"DJ Eva Javed"
"DJ Geno DeJong"
"DJ Iva Javid"
"DJ Lorah Jordahl"
"DJ Louie DeJulio"
"DJ Mae Madej"
"DJ Rae Jared"
"DJ Ree Jerde"
"DJ Reina Jardine"
"DJ Renetta DeJarnett"
"DJ Rina Jardin-Jindra"
"DJ Shona Dosanjh"
"DJ Stan Bro Bjornstad"
"Dogs So G'd"
"Dope Al Depalo"
"Dope Arn Peardon"
"Dope Bay Peabody"
"Dope Cari Preciado-Decaprio"
"Dope Ian Peinado"
"Dope Lavern Vanderpoel"
"Dope Lin Delpino"
"Dope Lina DeNapoli"
"Dope Lisa DePaolis"
"Dope Lon Polendo"
"Dope Lori Polidore"
"Dope Mark Komperda"
"Dope Mars Sampedro"
"Dope Merri Pridemore"
"Dope Nat Patnode-Daponte"
"Dope Nilsa Espindola"
"Dope Ros Pedroso"
"Dope Skiver Doverspike"
"Dope Slavin Valdespino"
"Dope Teri Depietro"
"Dope Ula DePaulo"
"Dopeness Den Posse"
"Down Al Waldon"
"Down Aldo Woodland"
"Down Ed Dowden"
"Down Gil Dowling"
"Down Hal Howland"
"Down Rik Dworkin"
"Dr. Yo It's So Dirty"
"drug enthusiasts EPMH" [p]
"Dub's Buds"
"Dukes of KO Feuds"
"Eliot Hogg the Gigolo"
"Festive Set Five"
"Finally-Fly Lani"
"Flashy Fly Ash"
"Fly Arie Frailey"
"Fly Debi Byfield"
"Fly Delia Layfield"
"Fly Dina Findlay"
"Fly Eden Fendley"
"Fly Enid Findley"
"Fly Fae Laffey"
"Fly Hater Flaherty"
"Fly Ian Finlay"
"Fly Madie Mayfield"
"Fly Peer Pelfrey"
"Fly Rae Farley"
"Fly Rana Flanary"
"Fly Reid Fridley"
"Fly Rena Flanery"
"Fly Renna Flannery"
"Fly Ware Frawley"
"Frankly Fly Rank"
"Freakin['] Frankie"
"Fresh Eli Fleisher"
"Fresh Eric Schriefer"
"Fresh Hilda Harshfield"
"Fresh Tilda Hartsfield"
"Gala Lord Gallardo"
"Gangster G-Strange"
"Gankee Keegan"
"Grim Rebel Milberger"
"Grinder Derrin G"
"Grounded Drug-O Ned"
"Gyrant Gantry"
"Hard Bub Hubbard"
"Hater Chum Hutmacher"
"Hater Clem McElreath"
"Hater Cris Carithers"
"Hater Denis Eisenhardt"
"Hater Elwood Leatherwood"
"Hater Floy O'Flaherty"
"Hater Gil Iglehart"
"Hater Glen Engelhart"
"Hater Ines Eisenhart"
"Hater Kacy Thackeray"
"Hater Lin Lanthier"
"Hater Lon Leonhart"
"Hater Lu Rheault"
"Hater Luca Archuleta"
"Hater Min Meinhart"
"Hater Monica Chiaramonte"
"Hater Old Aderholt"
"Hater Rand Earnhardt"
"Hater Rena Earnheart"
"Hater Ty Hattery"
"Hater Weimer Meriweather"
"Hater Wes Weathers"
"Hood Gay Haygood"
"Hood Greta Goodheart"
"Hood Lang Hoogland"
"Hood Noe Donohoe"
"Hood Rena Nearhood"
"Hood Si Odisho"
"Hood Trey O'Doherty"
"Hood Una Dunahoo"
"Hood Wade Woodhead"
"Hot-Rap Porath"
"I-Ill-Hard Hilliard"
"I-Roll-[']Em Morelli"
"Ice Don Condie"
"Ice Kam Mackie"
"Ice Kym Mickey"
"Ice Leah Aichele"
"Ice Lyn Nicely"
"Ice Matt Mattice"
"Ice Randal Cardinale"
"Ice Regan Carnegie"
"Ice Rolanda Candelario"
"Ice Sean Necaise"
"Ice Sha Chiesa"
"Ice Shavon Schiavone"
"Ice Son Enciso"
"Ice Sona Asencio"
"Ice Tona Atencio"
"Ice Trish Christie"
"Ill Abe Laible"
"Ill Al Lalli"
"Ill Alvera Villareal"
"Ill Amy Millay"
"Ill Andre Nardelli"
"Ill Angel Langille"
"Ill Annie Iannelli"
"Ill Archie Chiarelli" []
"Ill Ash Sillah"
"Ill Bee Liebel"
"Ill Ben Bellin"
"Ill Brad Billard"
"Ill Bree Liebler"
"Ill Brent Britnell"
"Ill Cameron Marcellino"
"Ill Cara Laclair"
"Ill Cesar Carlisle"
"Ill Chana Callihan"
"Ill Chas Challis" []
"Ill Chase Achilles"
"Ill Cora Carillo"
"Ill Corie Ciriello"
"Ill Cyr Crilly"
"Ill Dave DeVilla"
"Ill Dean Daniell"
"Ill Debra Belliard"
"Ill Dee Liedel"
"Ill Derick Licklider"
"Ill Don Dillon"
"Ill Dora Radillo"
"Ill Earl Lallier"
"Ill Ed Dille"
"Ill Elmo Melillo"
"Ill Elvin Linville"
"Ill Enos Ellison"
"Ill Eric Cirelli"
"Ill Erica Caillier"
"Ill Eva Vallie"
"Ill Evan Villena"
"Ill Evans Sanville"
"Ill Ewan Allwein"
"Ill Genna Nelligan"
"Ill German Mallinger"
"Ill Gina Gillian"
"Ill Glenda Gilleland"
"Ill Glinda Gilliland"
"Ill Goth Gil Holt"
"Ill Grady Gillyard"
"Ill Gwen Welling"
"Ill Hanna Hallinan"
"Ill Hans Shinall"
"Ill Hardy Hillyard"
"Ill Hayes Hallisey"
"Ill Horace Chiarello"
"Ill Huong Loughlin"
"Ill Ivan Villani"
"Ill Joe Jollie"
"Ill Lavon Villalon"
"Ill Mack Mallick"
"Ill Mara Mallari"
"Ill Marcie Camilleri"
"Ill Marva Villamar"
"Ill Mate Maillet" []
"Ill Nathan Tannahill"
"Ill Nevada Villaneda"
"Ill-Nice Cellini"
"Ill Noe O'Neill"
"Ill Nordine Rondinelli"
"Ill Omer Morelli" []
"Ill One Lionel" []
"Ill Paolo Paolillo"
"Ill Peter Petrelli"
"Ill Regan Allinger"
"Ill Regena Langelier"
"Ill Remona Marinello"
"Ill Retta Litteral"
"Ill Rey Reilly"
"Ill Rico Cirillo"
"Ill Rose Ellisor"
"Ill Ruben Brunelli"
"Ill Sabra Barillas"
"Ill Sam Mallis"
"Ill Samara Amarillas"
"Ill Shon Hollins-Hillson"
"Ill Sol Lollis"
"Ill Stew Willets"
"Ill Stone Elliston"
"Ill Swami Williams"
"Ill Terresa Serritella"
"Ill Trey Tillery"
"Ill Ty Tilly"
"Ill Vera Averill"
"Ill Verda Darville"
"Ill Vernia Rainville"
"Ill Vilma Villamil"
"Ill Ward Willard"
"Ill Yacoub Coulibaly"
"Illest Li'l Set"
"Illest Si Tell" []
"In-Camp MC Pain"
"In-Crowd-Down Ric"
"Jennski Jenkins"
"Judy Yu, DJ"
"The Kid Keith D"
"Killa [if player is male]Kalil[else]Kalli[end if]"
"Killing Li'l King"
"L. A. Al"
"L-Dog Gold"
"Lawless Wassell"
"Le Doc Dolce"
"Loud Ludo"
"M-Watt Matt W"
"Mac the Hate MC"
"Macking King Cam"
"Macking Nag Mick" []
"Manic MC Ian"
"MC Aaron Carmona-Marcano" [amusing note: I got a lot of MC Andrew McAndrew etc from this generator]
"MC Alex Exclam"
"MC Aline Macneil"
"MC Allyn Mcnally"
"MC Asia Macias"
"MC Bowen Newcomb"
"MC Celina Mcclaine"
"MC Dario Dimarco"
"MC Elana Maclean"
"MC Elisha Michaels"
"MC Elvina Mcelvain"
"MC English Schmeling"
"MC Fleta Metcalf"
"MC Garth Mcgrath"
"MC Ike Mckie"
"MC Ira Macri"
"Mc Kandi Dickman"
"MC Karena Ackerman"
"MC Karin Rickman"
"Mc Kathe Ketcham"
"MC Kena Eckman"
"MC Kerri Merrick"
"MC Kia Amick"
"MC KO-Mock"
"MC Larisa Mariscal"
"MC Layne Mcnealy"
"MC Leona Coleman"
"MC Leonore Colmenero"
"MC Lulu Cullum"
"MC Niki Minick"
"MC Push-Chumps"
"MC Rena Carmen-Mcnear"
"MC Reyna Mcraney"
"MC Rheba Chamber"
"MC Rina Mcnair"
"MC Rosa Marcos"
"MC Rush Schrum"
"MC Ryan Mcnary"
"MC Seaborn Branscome"
"MC Serena Cremeans"
"MC Shana Cashman"
"MC Shaun Cushman"
"MC Sherri Schirmer"
"MC Shiloh Chisholm"
"MC Shona Hanscom"
"MC Stanko Stockman"
"MC Su Scum"
"MC Tish Schmit"
"MC Visit-Victims"
"Miracle MC Ariel"
"Molten Montel"
"Mosh Man Hammons"
"Mr. Hear-Harmer"
"Ms. Play-My-Pals Sly Pam"
"Neo Al Oneal"
"Neo Amy Yeoman"
"Neo Bart Boatner"
"Neo Bill Bellino-Bonelli"
"Neo Bo Boone"
"Neo Britt Robinett"
"Neo Chas Acheson"
"Neo Chris Richeson"
"Neo Coy Cooney"
"Neo Cris Ericson-Recinos"
"Neo Curt Cureton"
"Neo Del Deleon"
"Neo Dorla Leonardo"
"Neo Emil Lemoine"
"Neo Gala Galeano"
"Neo Gay Gonyea"
"Neo Irma Romaine"
"Neo Kris Erikson"
"Neo Lan Nealon"
"Neo Laura Laureano"
"Neo Les Leeson-Olesen"
"Neo Lew Loewen"
"Neo Lida Odaniel"
"Neo Lisa Eliason"
"Neo Marc Cameron-Marenco"
"Neo Mary Maroney"
"Neo Ming Mignone"
"Neo Pat Aponte"
"Neo Rand Nardone"
"Neo Rhett Etherton"
"Neo Rich Eichorn"
"Neo Rosy Reynoso"
"Neo Roy Rooney"
"Neo Sal Sloane-Leanos"
"Neo Sam Seamon"
"Neo Sid Edison-Eidson"
"Neo Sol Oleson"
"Neo Tad Deaton"
"Neo Tina Antoine"
"Neo Tori Tenorio"
"Neo Ty Toney"
"Neo Vanda Avendano"
"Neo Wm Mowen"
"New Berry Newberry"
"New Bill Newbill"
"New Bo Bowen-Bowne"
"New Bob Benbow"
"New Carlee Lawerence"
"New Carlo Lowrance"
"New Clare Lawrence"
"New Dee Weeden"
"New G Gwen"
"New Gerald Greenwald"
"New Gita Wingate"
"New Hal Whalen-Whelan"
"New Irma Wireman"
"New Kirk Newkirk"
"New Leo Loewen"
"New Lida Weiland"
"New Lon Newlon"
"New Mac Mcewan"
"New Madie Wiedeman"
"New Marta Waterman"
"New Mina Weinman"
"New Minna Weinmann"
"New Reid Weidner-Widener-Redwine"
"New Rick Renwick"
"New Rob Browne"
"New Robin Winborne"
"New Robt Brewton"
"New Rod Worden-Rowden-Downer"
"New Ruby Newbury"
"New Sarah Earnshaw"
"New Son Newson"
"New Thomas Mathewson"
"New Thor Worthen"
"New Trisha Swinehart"
"Nik 'Ego' Koenig"
"No-Cred Ed Corn"
"No Cute Tune Co"
"No-Flaws [if player is male]Alf Snow[else]Flo Swan[end if]"
"No-Rhyme Mo Henry"
"No-Rhymes Shon Emry"
"Noble L-Bone"
"Not-Swell Townsell"
"Nuclear Cur Neal"
"Null-Rep Purnell"
"On-Beats Bastone"
"Our Rap Uproar"
"Pamperin['] Pimp Rena"
"Pepe's Peeps"
"Perpin['] Nipper Ren Pip"
"Pimp Keenan Kemppainen"
"Pimp Leah Pamphile"
"Pimp Verna Vipperman"
"Playa Al Yap"
"Playful Fly Paul"
"Poet Carn Caperton"
"Poet Clem Lecompte"
"Poet Dan Patnode" []
"Poet Ernst Petterson"
"Poet Hans Stanhope" []
"Poet Lina Lapointe"
"Pop Diva Ida Vopp"
"Pop Lee's Peoples"
"Pope O['] Pep"
"Poses Posse"
"Posing Gipson"
"Postered Dopester Poser Ted"
"Prim Past Art Pimps"
"Rad Les Sadler"
"Raggae Garage (their grammar's hopeless, too)"
"Raw Ern Warren"
"Real Butch Culbreath"
"Real Earl Lear"
"Real MC Marcel McLear"
"Red Hot Ed Hort"
"Reggae Tart Greta Gater"
"Rockin[']-on Rick"
"Rollin['] Ill Ron"
"Schooling Lois Chong"
"Scowl'n Clowns"
"Scummier Crummies"
"Sellout Lout Les"
"Slowfast Flowstas"
"Sly Abe Beasly"
"Smoking Hot King Smooth"
"Smooth Host Mo"
"Smoother Moe Short"
"So-Money Mo Noyes"
"Sold-Out Lost Duo"
"Sound Man Amundson"
"Stink-It Kittins"
"Stoner Mo Montrose"
"Street Mix Extremist Mister Tex"
"Streetwise [if player is male]Stew Steier[else]Tessie Wert[end if]"
"Swell Bo Bellows" []
"Swell Harton Allensworth"
"Swell Roth Ellsworth"
"Tennis Hater Hartenstein"
"Thrill-Ed The Ill Dr"
"Tim Hepp the Pimp"
"Tin-Ear Renita"
"Tone-Deaf [if player is male]Nat DeFoe[else]Dee Afton[end if]" []
"Too-Def Ted Foo"
"Too-Swell [if player is male]Sol Towle[else]Lolo West[end if]"
"Top Wack Two-Pack"
"A Troop Poor at Rap Too"
"Uber-Hater Brethauer"
"Ult-O-Lout"
"Un-Lame Manuel"
"Us Dodgy Odd Guys"
"Vice Lord [if player is male]Cid Lover[else]Di Colver[end if]"
"Wack Butler Buckwalter"
"Wack Flop Wolfpack"
"Wack Min Wickman"
"Wack Mo Womack"
"Wack Roby Brockway"
"Wack Ron Warnock"
"Wack Roni Nawrocki"
"War-Tech Hat Crew" []
"Way Chill Willy Cha"
"West Arch Hats Crew" []
"Wild Free Life Drew"
"Wino Dog Goodwin"
"Words-Poet Prestwood"
"Yo['] Bust Boy Stu"

table of biopics [xxm3]
blurb	fave
"[if player is female]One Man, No Name[else]I, Hereon, Heroine[end if][r], by [if player is male]Ann Moe[else]Irene Ho[end if][an-other]"	true
"All Those Words: Shallow Doters, Worthless Load[r], by Stowell Rhoads"	false
"Another Try, Hero-Tyrant[r], by Roy Harnett & [if player is male]Tony Erhart[else]Thora Tyner[end if]"	false
"A Curse Causer[r], by Cara-Sue Cruse"	false
"Da Lingo Be No Big Deal[r], by Deb Alongi"	false
"Dim-Worths Wordsmith[r], by Dr. Tim Show & Dr. Tom Wish"	false
"Drab Howl, Blah-Word Blowhard[r], by W. Harbold"
"A Fly Debut...BY DEFAULT[r], by Fleta Duby"	false
"Gawd, S'More Word Games[r], by [if player is male]Drew Gamos[else]Margo Dews[end if]"	false
"A Genius in Usage[r], by Gina-Sue Seguain"	true
"Go, O. G., Go[r], by Og G. Goo"	true
"Good [if player is male]M[else]Wom[end if]an? Mad Goon[r], by [if player is male]Dan[else]Wonda[end if] Moog"	false
"Here Trots the Sorter[r], by Ester Hort"	true
"Hero Tasks? Ask Others[r], by [if player is male]Theo Krass[else]Kathe Ross[end if]"	false
"Home Again: Oh, I Manage[r], by [if player is male]Noah Megia[else]Naomi Hage[end if]"	true
"I Ran Out on Our Nation[r], by [toti] Ruano"	false
"In Steady: a Destiny[r], by [if player is male]Ty Daines & Ted Yasin[else]Nita Syed & Sade Tiny[end if]"	true
"Influential? I, Fallen Unit[r], by Tuan Finelli"	false
"Letter Swap? Stale Twerp[r], by [if player is male]Stew Alpert[else]Pearl Swett[end if]"	false
"Lion Heart? No, the Liar[r], by [if player is male]Ali Theron[else]Lori Ethan[end if]"	false
"Nostalgi-Gloatins[r], by [if player is male]Otis Lang[else]Lois Gant[end if]"	true
"Notoriety to Inert, Yo[r], by [if player is male]Otto Eryin[else]Tori Toney[end if]"	false
"OK, Words, Do Works[r], by Rod Skow"	true
"Older and wiser, I Learned Words[r], by Delores Darwin"	true
"Permutations? Imposter, a Nut[r], by [if player is male]Tatum Pierson[else]Maurine Potts[end if]"	false
"Permuting, Urgent Imp[r], by Meg Turpin"	false
"Rogue at our gate: Outrage[r], by U. Ortega"	false
"Sainted? Stained instead[r], by Sid Etna"	false
"St. Be-Best[r], by Bess Bett"	true
"There Rots the Sorter[r], by Ros Threet"	false
"Titan's Taints[r], by Si Tant"	false
"To Bull: Easy, Absolutely, by a Sellout[r], by [if player is male]Solly Taube[else]Tula Boyles[end if]"	false
"Upstream Into Permutations Use: Important[r], by [if player is male]Rupe Mattison[else]Simona Pruett[end if]"	true
"We Call a, Well, Ace[r], by Alec Law"	true
"Whoa, Heart, What a Hero[r], by Tarah Howe"	true
"A Wit, Hedged: Dead Weight[r], by Dwight Eade"	false
"Word Game: Go Ward [']Em[r], by [if player is male]Drew Goma[else]Marge Dow[end if]"	true

table of comedians [xxm4]
blurb
"Absurdist Trudi Bass" []
"Acerbic Ric Cabe"
"Adrenalin-Riled Erlinda Ladnier-Ireland"
"Adult Kid Ida Kludt"
"Alf of Offal"
"Alive Elvia Leiva"
"Am-I-Nuts Mustain"
"Amuser Mauser"
"Amuser Semrau" []
"Amusing Smug Ian"
"Anarchic Cara Chin"
"Any-Barb Barnaby"
"Any-Jerk [if player is male]Jay Kern[else]Jen Kray[end if]"
"Aper Earp"
"Apin['] Dr. Pinard"
"Appalling Al Appling"
"At-Pranks Nat Parks"
"Attentioneer [if player is male]Etienne Ratto[else]Anette Tierno[end if]"
"Atypical Pati Lacy"
"Bad Word Bawd Rod"
"Baiter I.E. Brat Artie B"
"Banned Deb-Ann"
"Batty Byatt"
"Bawdier [if player is male]Brad Wei[else]Ewa Bird[end if]"
"Bellicose Ilse Coble"
"Berater Bret Rea"
"Best-Ever Reb Steve" []
"Big-LOLs Glib Sol"
"Big-Time Gibe Tim"
"Blase Norm Lamberson" []
"Blotto Bo Lott"
"Blowhard Brad Wohl"
"Bombshell Mell Hobbs"
"Bonkers Berkson"
"Boob Bobo"
"Boor Atkins Stainbrook"
"Boor Cami Ambrocio"
"Boor Daron Bordonaro"
"Boor Del Robledo" []
"Boor Delta Debartolo"
"Boor Em Broome"
"Boor Fred Oberdorf"
"Boor Glinda Longobardi"
"Boor Lemons Rosenbloom"
"Boor Mel Bloomer"
"Boor Melita Bartolomei"
"Boor Ming Imbrogno" []
"Boor Mose Roseboom"
"Boor Omer Borromeo"
"Boor Ray Borrayo"
"Boor Sean Soberano"
"Boor Sima Ambrosio"
"Boor Stan Boonstra"
"Boor Susi Brosious"
"Boor Tami Morabito"
"Boor Telma Bartolome"
"Boor Tilda Dibartolo"
"Bro Al Albro"
"Bro Alden Bolander"
"Bro Andre Dearborn"
"Bro Dale Laborde"
"Bro Dan Bodnar"
"Bro Dee DeBoer"
"Bro Dong Brogdon"
"Bro Drew Browder"
"Bro Ed Brode"
"Bro Efren Freeborn"
"Bro Eldon Bordelon"
"Bro Elmo Bloomer" []
"Bro Ethan Rathbone"
"Bro Gus Burgos"
"Bro Ian Obrian"
"Bro Lee Oberle"
"Bro Len Lebron"
"Bro Les Robles"
"Bro Nat Barton"
"Bro Neal Lebaron"
"Bro Ned Borden-Bodner"
"Bro Neil Oberlin"
"Bro Nestor Robertson"
"Bro Nic Corbin"
"Bro Nigel Bolinger"
"Bro Ray Yarbro"
"Bro Rene Boerner"
"Bro Rey O'Berry"
"Bro Ryan Rayborn"
"Bro Sean Seaborn"
"Bro Wes Bowers"
"Brony Byron"
"Bud 'Razz' Buzzard"
"Buffoon Bo Onuff"
"Bunch-O-JK John Buck"
"Card Alan Calandra"
"Card Ali Clarida"
"Card Aline Cardinale"
"Card Allen Callander"
"Card Angelo Darcangelo"
"Card Anh Chandra"
"Card Bee Breceda"
"Card Eli Decarli"
"Card Elia Caldeira"
"Card Ella Cardella"
"Card Elois Decarolis"
"Card Elwood Calderwood"
"Card Evan Vandecar"
"Card Hellen Challender"
"Card Ike Radecki"
"Card Ileana Candelaria"
"Card Kip Pickard"
"Card Kris Rickards"
"Card Lea Caldera"
"Card Lee Recalde"
"Card Len Crandle"
"Card Leo Decarlo"
"Card Leon Calderon"
"Card Leona Colandrea"
"Card Lin Clinard"
"Card Lina Cardinal"
"Card Lon Caldron"
"Card Mel Mcardle"
"Card Neil Calderin"
"Card Nell Crandell"
"Card Neoma Cardamone"
"Card Noelia Candelario"
"Card Nola Calandro"
"Card Olin Alcindor"
"Card Oren Dorrance"
"Card Reina Carradine"
"Card Rhea Hardacre"
"Card Roy Cordray"
"Card Sean Cardenas"
"Card Sina Sciandra"
"Cardy Darcy Crady"
"Careless Crass Lee"
"Cartoonish [if player is male]Otis Achorn[else]Staci Honor[end if]"
"Cartoony [if player is male]Tony Cora[else]Toya Corn[end if]"
"Cheap [tt] Piechota"
"Cheap Art Capehart"
"Cheap Daniel Chapdelaine"
"Cheap Lu Plauche"
"Cheap Patti Chiappetta"
"Cheap Pearl Chappelear"
"Cheap-Shot Hope Tasch" []
"Chet Karn the Crank"
"Clown Rae Lowrance"
"Cockamamie [if player is male]Kam Macioce[else]Emiko McCaa[end if]"
"Colorful Luc Floro"
"Comical Mac Olic"
"Compelling Peon McGill"
"Contrary Corny Art" []
"Cora 'Razz' Carrozza"
"Corn-Free Enforcer Fern Core"
"Cornball Cal Blorn"
"Cornier Corrine"
"Cranky KC Ryan"
"Crass Agee Escarsega"
"Crass Ella Scarsella"
"Crass Ely Casserly"
"Crass Iona Cassarino"
"Crass Leo Lacrosse"
"Crass Lon Carlsson"
"Crass Min Crissman"
"Crass Noren Rosencrans"
"Crass Oren Rosecrans"
"Crass Rao Socarras"
"Crass Toi Cossairt"
"Crass Toni Croissant" []
"Crass Yue Syracuse"
"Cray-Cray Aryc Cary"
"Crude Al Caulder"
"Crude Sam DeMarcus"
"Crude Seth Deutscher"
"Cuss Trio So Rustic"
"Cutesy Su Tyce"
"Cynic Niccy"
"Daemonic Moni Cade"
"Dang-Fool Gandolfo"
"Demagogue Doug Magee"
"Derider Red Reid"
"Dirtiest Trite Sid"
"Disparager [if player is male]Edgar[else]Gerda[end if] Paris"
"Disparager [if player is male]Reid Gaspar[else]Geri Prasad[end if]" []
"Diss Man Dan Sims"
"Disturbing Birgit Sund"
"Dona 'Razz' Randazzo"
"Doodler [if player is male]Rod Dole[else]Loo Redd[end if]"
"Driest Sir Ted"
"Drippy Dry Pip"
"Drolest Oldster Lost Red"
"Droll Ace Del Carlo"
"Droller Dorrell"
"Drunkest Ken Durst"
"Dry Ace Darcey Redcay"
"Dry Ed Reddy"
"Dry Fat Tad Fry"
"Duffer Fred Fu"
"Dung-y Gundy"
"Elton Ho the Loon"
"Eve 'Zest' Estevez"
"The Famous [if player is male]Mose Hauft[else]Sue Fathom[end if]"
"Fool Argo Garofolo"
"Fool Denis Ildefonso"
"Fool Diemer Moorefield"
"Fool Eril Fiorello"
"Fool Fred Loffredo"
"Fool Inge Fenoglio"
"Fool Lan O'Fallon"
"Fool Ma Maloof"
"Fool Tinner Florentino"
"Foul Bee Leboeuf"
"Foul Bee Leboeuf-Lebouef"
"Foul Gast Falgoust"
"Foul Kerns Fulkerson"
"Foul Tianna Lafountain"
"Foul Trena Lafortune"
"Foul Wold Fullwood"
"Frenzied Ned Fizer" []
"Fresh Boy Hy Forbes"
"Fresh Girl Shirl Ferg"
"Freudian [if player is male]Ned Rufai[else]Adrien Fu[end if]"
"Fun Carole Faulconer"
"Fun Dee Dunfee"
"Fun Doreen Neuendorf"
"Fun Fred Duffner"
"Fun Gay Fanguy"
"Fun Helga Hufnagel"
"Fun Hiram Fuhriman"
"Fun Latonia Lafountain"
"Fun Loreta Lafortune"
"Fun Marc Curfman"
"Fun Mark Frankum"
"Fun Omar Fourman"
"Fun Rae Fernau"
"Fun Red Dufner-Freund"
"Fun Reda Dufrane"
"Fun Reed DuFrene"
"Fun Rey Furney"
"Fun Tessie Sifuentes"
"Fun Tisa Faustin"
"Fun Tonia Fountain"
"Fun Tora Fortuna"
"Galling Gil Lang"
"Godwin-y Gwydion"
"Goof Erin Forgione"
"Goof Fred Goffredo"
"Goof Lora Garofolo" []
"Goof Neil Fenoglio" []
"Goof Rana Garofano"
"Goofball Flo Balgo"
"Grounded Nerd Doug" []
"Ham [n-t] Mathena"
"Ham Alden Haldeman"
"Ham Andre Hardeman"
"Ham Anna Manahan"
"Ham Barb Brabham"
"Ham Berna Haberman"
"Ham Cecil Michalec"
"Ham Clare Lamarche"
"Ham Clarice Carmichael"
"Ham Darin Hardiman"
"Ham Ed Ahmed"
"Ham Eden Needham"
"Ham Erinn Hinerman"
"Ham Esta Eastham"
"Ham Evan Haveman"
"Ham Gena Hageman"
"Ham Genna Hagemann"
"Ham Inge Meighan"
"Ham Lance Leachman"
"Ham Len Lehman-Helman"
"Ham Leon Holeman"
"Ham Lise Ishmael"
"Ham Lon Holman-Lohman"
"Ham Lucy Mulcahy"
"Ham Lyla Mayhall"
"Ham Ned Denham"
"Ham Neil Heilman"
"Ham Nell Hellman"
"Ham Nick Hickman"
"Ham Noe Mahone"
"Ham Nona Monahan"
"Ham Olin Holiman"
"Ham Pearl Lamphear"
"Ham Regan Hagerman"
"Ham Ron 'No Harm' Harmon-Mahorn" [p]
"Ham Ron Harmon"
"Ham Rose Ashmore"
"Ham Sabra Abrahams"
"Ham Sal Haslam"
"Ham Tisa Mathias"
"Ham Tran Hartman"
"Ham Tyler Matherly"
"Ham Weston Mathewson"
"Hard-Luck Card Hulk"
"Hardly-Dry Hal"
"Herr Mac, Charmer"
"Hi-Lafs Al Fish"
"Hi-Snark Krishna Rashkin-Harkins"
"Hilarious Isaih Rulo"
"Hilarious Luis O'Hair" []
"Huck Taft" [x]
"Hysterical [if player is male]Rich Staley[else]Alyce Hirst[end if]"
"I-For-Fun Ruffino"
"Idle Raw Wired Al"
"Ill Joky Killjoy Jilly Ko"
"Imitator Mariotti"
"Immature Tim Mauer"
"Immodest Tim DeMos"
"Immoral Omar Lim"
"Impish Hip Sim"
"In-Jokey [if player is male]Ken Yoji[else]Joni Key[end if]"
"In-Your-Face [if player is male]Royce Finau[else]Francie You[end if]"
"Inebriated [if player is male]Deren Taibi[else]Nia Deibert[end if]"
"Inexcusable Alexis Bunce"
"Infamous Musin['] Oaf Mia Fuson"
"Insane Sienna"
"Insolent Lon Stein"
"Insult Lustin['] Stu Lin"
"Insulter Ernst Liu"
"Irate Artie"
"Jape Errien Jeanpierre"
"Jape Luna Jeanpaul"
"Jape Ren Prejean"
"Jasper Japers"
"Jaunty Nut Jay"
"Javier Jarvie, a Jiver"
"Jeer-Mo['] Jerome"
"Jester JT Rees"
"Joking King OJ"
"Jovial Ol['] Javi"
"Juvenile Vile June"
"Kidder Bloom Middlebrook"
"King Rebel Kleinberg"
"Kitschier Shtickier [if player is male]Seth Irick[else]Cris Keith[end if]"
"Kitschy Shticky Ty Hicks"
"La Corny Carolyn"
"Larky Karly-Karyl"
"Laughy Guy Hal"
"Launch-a-Lunch [if player is male]Al Chun[else]Lu Chan[end if]"
"Lawly Wally"
"Le Shiv Elvish"
"Leet-Rip Peltier"
"Lew Notch the Clown"
"Limner Merlin"
"LMFAO-Mo['] Alf"
"Lo-Key Yokel Kooky Lyele"
"Logician Icon Gail"
"LOLster Stoller"
"Loopy Alec Claypoole"
"Loopy Cal Claypool"
"Lout Alice Caillouet"
"Lout Amos Tomasulo"
"Lout Behring Lightbourne"
"Lout Belen Buentello"
"Lout Chae Latouche"
"Lout Cora Curatolo"
"Lout Dan Daulton"
"Lout Dashner Southerland"
"Lout Eric Cloutier"
"Lout Erich Clouthier"
"Lout Erma Realmuto"
"Lout Gil Guillot"
"Lout Hicks Tucholski"
"Lout Lee Ouellet"
"Lout Manie Manuelito"
"Lout Maren Morneault"
"Lout Meri Moultrie"
"Lout Shah Holthaus"
"Lout Shea Althouse"
"Lout Welsh Southwell"
"Low-Gibe Bigelow"
"Loyal Wag Galloway"
"Lulsy Sully"
"Lush Co-Slouch Sol Chu"
"Madcap Cad Pam"
"Majestic-TIC James"
"Manly Lyman Lynam"
"The Max Ham Tex"
"Melange-Glee Man Lem Egan"
"Mia 'Razz' Maziarz"
"Mire Emir Meri Reim"
"Miscreant Marc Stein"
"Mo['] Ribald Lombardi"
"More-Acid Mordecai"
"Mr. Acid-Mad Ric"
"Mr. It's-OK-To-Smirk Tom Risk"
"Natural-Rant Ula"
"Neat Guy Yue Gant"
"Nerd-Fool Florendo"
"Nervy Ida Vineyard"
"No-Clue Luc Eno"
"No-Corn Connor"
"No-Duh Hound Duhon"
"No-Limits [if player is male]Tim Oslin[else]Lis Minto[end if]"
"No-Taste Sean Ott"
"Normal Guy Yul Morgan"
"Nostalgia Analogist Stagliano"
"Not-Deep DePonte"
"Not-Deep Peon Ted" []
"Not-Lame Al Moten"
"Not-Lame Tom Lane" []
"Noticer Ron Tice"
"Nutcase Stu Cena"
"Nuts Al Sultan"
"Nuts Ariel Lauritsen"
"Nuts Belia Blaustein"
"Nuts Bo Butson"
"Nuts Chet Chesnutt"
"Nuts Dan Dunstan"
"Nuts Don Dunston"
"Nuts Echo Schouten"
"Nuts Elrod Osterlund"
"Nuts Erick Steinruck"
"Nuts Gia Agustin"
"Nuts Ken Knutsen"
"Nuts Kris Sistrunk"
"Nuts Larae Arsenault"
"Nuts Leo Uselton"
"Nuts Lora Raulston"
"Nuts Mae Musante"
"Nuts Page Sengupta"
"Nuts Paine Estupinan"
"Nuts Pio Pontius"
"Nuts Reba Eastburn"
"Nuts Rita Tuinstra"
"Nuts Rob Burston"
"Nuts Ted Student"
"Nuts Thor Thurston"
"Nuts Zach Anschutz"
"Nutty Ol['] Ty Luton"
"Oaf Ali Faiola"
"Oaf Andra Afanador"
"Oaf Berto Barefoot"
"Oaf Burl Balfour"
"Oaf Ed Dafoe"
"Oaf Eric Cafiero"
"Oaf Erick Kiracofe"
"Oaf Geri Figeroa"
"Oaf Gil Foglia"
"Oaf Lan Alfano"
"Oaf Lis Filosa"
"Oaf Lorrie Ferraiolo"
"Oaf Luc Coufal"
"Oaf Mort Formato"
"Oaf Orval Favaloro"
"Oaf Prasad Spadafora"
"Oaf Ren Farone"
"Oaf Rena Faraone"
"Oaf Renzi Fiorenza"
"Oaf Robt Barfoot"
"Oaf Rockwell Rockafellow"
"Oaf Rust Frausto"
"Oaf Sol Lofaso"
"Obscene Ben Esco"
"Observant Bart Ovens"
"Observer Rob Evers"
"Observy Bry Vose"
"Offensive Sven O'Fife"
"Oft-Lame Tom Leaf" []
"Ol['] Bigot Gil Boot" []
"Ola 'Razz' Lazzaro"
"On-a-Roll Ol['] Lorna"
"On-Stage Stan Goe"
"One-Liner Oren Neil"
"One-Man Show Noah Newsom"
"Orig. Igor Gori"
"Outraged Rod Tague"
"Overdone Devon Roe"
"Overdone Eve Doorn" []
"Pal Antonio Napolitano"
"Pal Bo Pablo"
"Pal Chas Paschal"
"Pal Danilo Palladino"
"Pal Deena De La Pena"
"Pal Don Poland"
"Pal Drew Waldrep"
"Pal Dustin DuPlantis"
"Pal Eli Paille"
"Pal Erasmo Palomares"
"Pal Ines Espinal"
"Pal Lane Panella"
"Pal Lena Panella"
"Pal Maclean Campanella"
"Pal Maren Pearlman"
"Pal Merna Pearlman"
"Pal Neal Panella"
"Pal Niles Spillane"
"Pal Olinda Palladino"
"Pal Omer Palermo"
"Pal Remy Parmley"
"Pal Rey Player"
"Pal Rhea Raphael"
"Pal Roy Paylor"
"Pal Silas Pasillas"
"Pal Simona Palmisano"
"Pal Sol Allsop"
"Pal Tera Peralta"
"Pal Thor Lathrop"
"Pal Toni Lapoint"
"Pal Tonie Lapointe"
"Pal Trey Tarpley"
"PC Ara Capra"
"PC Oreo Cooper" []
"Pert Wit Prewitt"
"Phallic Li'l Chap Cap Hill"
"Pithy Hip Ty"
"Play-Act Pat Clay"
"Play-Dumb Bump Daly"
"Portray-Parroty Apt Rory"
"Potrzebie Tobi Perez"
"Preposterous Petro Sprouse"
"Prime Time Mimi Peter"
"Profane Fran Poe"
"PUA Apu"
"Raconteur [if player is male]Curt Roane[else]Una Rector[end if]"
"Racy Cary Cray" []
"Rad Bo Bardo"
"Rad Chet the Card"
"Rad Gent Ed Grant"
"Rad Hot Dortha Hotard"
"Rad Jon Jordan" []
"Rad Man Armand Manard"
"Rad New Raw Ned"
"Rad Nut Durant"
"Rad Ol['] Lardo Al-Rod Doral"
"Rad Rad Dr. Dara Ard"
"Radical Clarida" []
"Rake Kera Aker"
"Random Jerk Jarred Monk"
"Random Mad Ron"
"Random Man Rod" []
"Ranting Trina Ng"
"Rantly Tarlyn Rylant"
"Rash [tt] Tashiro"
"Rash Abe Beshara"
"Rash Allan Nasrallah"
"Rash Bud Bushard"
"Rash Byrne Hansberry"
"Rash Clem Chalmers"
"Rash Dan Hansard"
"Rash Dee Rasheed" []
"Rash Dina Sardinha"
"Rash Dion Hardison"
"Rash Ed Sheard"
"Rash Eldon Rosendahl"
"Rash Elton Rosenthal"
"Rash Enid Sheridan"
"Rash Ewan Earnshaw"
"Rash Gena Sanghera"
"Rash Gus Shugars"
"Rash Hobert Haberstroh"
"Rash Inez Zahniser"
"Rash Ken Shanker"
"Rash Les Hassler"
"Rash Lew Wahlers"
"Rash Loren Harrelson"
"Rash Lu Shular"
"Rash Marti Arrasmith"
"Rash Mcneese Essenmacher"
"Rash Moe Ashmore" []
"Rash Moffet Hoffmaster"
"Rash Monte Hosterman-Matherson"
"Rash Nat Strahan"
"Rash Ned Dashner"
"Rash Neil Linhares"
"Rash Noe Shearon"
"Rash Nola Haralson"
"Rash Rector Carrothers"
"Rash Red Sherard"
"Rash Robt Barhorst"
"Rash Ron Sharron"
"Rash Signe Hassinger" []
"Rash Sobeck Hassebrock"
"Rash Su Hussar"
"Rash Tad Harstad"
"Rash Tanna Stranahan"
"Rash Theron Hartshorne"
"Rash Thuy Hayhurst"
"Rash Toni Hairston"
"Rash Tyron Strayhorn"
"Rash Wit Swihart"
"Rash Woznick Chrzanowski"
"Raunchy [if player is male]Ryan Chu[else]Caryn Hu[end if]"
"Raw Don Rowand"
"Raw Eve Weaver"
"Raw Gene Wagener"
"Raw Lance Lawrance"
"Raw Ren Warner" []
"Raw Shane Earnshaw" []
"Rebellious [if player is male]Ollie Suber[else]Rosie Buell[end if]"
"Red Nose Don Rees"
"Refined Ned Frei"
"Repartee Repeater Peter Rea"
"Revolting Nevil Gort"
"Ribald Al Bird"
"Riffing Griffin"
"Rimshot Tom Rish"
"Rioter Torrie"
"Rioter Torrie Terrio" []
"Ripe Cat Patrice"
"Roaster Art Rose"
"Rob tha Hat-Bro Hobart"
"Rough-Edge Greg Houde"
"Rude Adella Lauderdale"
"Rude Al Lauder"
"Rude Alan Landauer"
"Rude Ash DeRusha"
"Rude Bao Bordeau"
"Rude Ben Bendure"
"Rude Boy Bud Oyer"
"Rude Cal Caulder"
"Rude Dale DeLauder"
"Rude Galvin Vanguilder"
"Rude Gena Gendreau"
"Rude Geri Ruediger"
"Rude Gia Guidera"
"Rude Gina Guderian"
"Rude Gino Gourdine"
"Rude Girl Lu Grider"
"Rude Ines Redenius"
"Rude Jana Jandreau"
"Rude Leanna Landreneau"
"Rude Les Lueders-Duesler"
"Rude Leta Delauter"
"Rude Lina Lindauer"
"Rude Lisa Urdiales"
"Rude Marg Magruder"
"Rude Min Dunmire"
"Rude Nat Durante"
"Rude Nilsa Lauridsen" []
"Rude Noe Derouen"
"Rude Oma DeMauro"
"Rude Ona Rondeau"
"Rude Pa Pardue"
"Rude Rob Brodeur"
"Rude Ron Rednour"
"Rude Roni Ridenour"
"Rude Sal Lusader"
"Rude Sam DeRamus"
"Rude Sap Persaud"
"Rude Son Duerson" []
"Rude Sot Stouder"
"Rude Tana Urdaneta"
"Rude Teri Deruiter"
"Rude Trey Deruyter"
"Rude Verla Laverdure"
"Rude Yan Reynaud"
"Sailor Lorisa Larios-Solari"
"Sardonic Rico Sand"
"Sauced Su Cade"
"Shallow-LOL Shaw"
"She-Lout Sue Holt"
"Shlocker Sherlock"
"Shockin['] Hickson"
"Sick Arie Sieracki"
"Sick Asa Isaacks"
"Sick Benet Steinbeck"
"Sick Blue Cebulski"
"Sick Bran Brackins"
"Sick Cher Schicker"
"Sick Don Dickson-Dockins" []
"Sick Dona Dickason"
"Sick Earle Kilcrease"
"Sick Eli Cieslik"
"Sick Eva Vasicek"
"Sick Hilma Michalski"
"Sick-in-Head [if player is male]Dice Haskin[else]Cindi Hakes[end if]"
"Sick-in-Head [if player is male]Hans Dickie[else]Niki Schade[end if]" []
"Sick Kyla Skalicky"
"Sick Lea Cieslak-Lasecki"
"Sick Lech Schickel"
"Sick Leo Solecki"
"Sick Les Sickles"
"Sick Leta Kastelic-Eastlick"
"Sick Lew Elswick"
"Sick Lon Nickols"
"Sick Luna Nicklaus"
"Sick Marg Grasmick"
"Sick Mel Mickles"
"Sick Miko Kosmicki"
"Sick Nola Nickolas"
"Sick Omar Mocarski"
"Sick Oren Erickson"
"Sick Reba Raisbeck"
"Sick Ren 'Snicker' Resnick"
"Sick Rene Ericksen"
"Sick Rob Bosrick"
"Sick Ron Corkins-Rickson"
"Sick Thoman Mackintosh"
"Sick Val Slavick"
"Sickhead Dick Ashe"
"Sicko Bent Bienstock"
"Sicko Dan Dickason" []
"Sicko Hank Kochanski"
"Sicko Kim Kosmicki" []
"Sicko Lan Nickolas" []
"Sicko Mey Comiskey"
"Sicko Ned Dickeson"
"Sicko Nerd Dickerson"
"Sicko Osick Cokis"
"Sicko Ren Erickson" []
"Sicko Wilham Michalowski"
"Silly Big Len Billingsley"
"Simplifier Filip Miers"
"Sin Guy Gus Yin"
"Sin-Laced Snide Cal"
"Sir Des, Disser"
"Slammer [if player is male]Mr. Salem[else]Ms. LeMar[end if]"
"Slangier Signaler [if player is male]Al Grines[else]Ilse Garn[end if]"
"Slo-No-Mo['] Solomon"
"Smarmy [if player is male]Mr. Mays[else]Ms. Mary[end if]"
"Smarmy-Hit Mary Smith"
"Snappier [if player is male]Pip Arens[else]Erin Sapp[end if]"
"Snickering Rick Ensign"
"Snide-Elf" [x]
"Snot Al Slaton"
"Snot Albert Rosenblatt"
"Snot Amie Maisonet"
"Snot Angela Santangelo"
"Snot Bo Boston"
"Snot Butcher Cuthbertson"
"Snot Caleb Constable"
"Snot Cherri Chronister"
"Snot Erick Ricketson"
"Snot Erma Osterman"
"Snot Ernie Orenstein"
"Snot-Hammer Smotherman"
"Snot Hanna Nathanson"
"Snot Harry Strayhorn"
"Snot Ian Nations"
"Snot Ida DiSanto"
"Snot Irma Stromain"
"Snot Kia Atkison"
"Snot Lehi Holstein"
"Snot Lew Townsel"
"Snot Lila Santillo"
"Snot Mack Stockman"
"Snot Marie Sarmiento"
"Snot Mirna Martinson"
"Snot Nigel Singleton"
"Snot Petra Patterson"
"Snot Rager Garretson"
"Snot Roger Torgerson"
"Snot Ruth Thurston"
"Snot Tami Mattison"
"So-Basic [if player is male]Bo Issac[else]Abi Coss[end if]"
"So-Crude Doc Reus"
"So-Drunk Don Rusk" []
"So-Frank-of-Snark Ron Fask"
"So-Funny Sonny Fu"
"So-Normal Moron Sal"
"So-Nutty Tony Tsu"
"So-Nutty Ty Uston"
"So Random Rod Mason"
"So-Trite Rosetti"
"So Vulgar Gus Orval"
"So-Well-LOL Wes"
"Stupefier Rupe Feist"
"Sturdy Dry Stu"
"Sweary Ray-Wes Sawyer"
"Tactless Cass Lett"
"Tasteless Tess Astle"
"Tawdry Ty Ward"
"Tawdry Wry Tad" []
"Teasing Angie St. Gaitens"
"Teasy Yates" []
"Terrible Bret Iler"
"Too-Dark Tad Rook"
"Too-Dry [d-t] Roy"
"Too-Early Ray Toole"
"Too-Glib Gio Bolt"
"Too-Rowdy Troy Wood"
"Too-Silly [if player is male]Solly Ito[else]Lily Soto[end if]"
"Trashy Rash Ty" [r]
"Trashy Sy Hart" []
"Trendoid [if player is male]Erin Todd[else]Ted Rodin[end if]"
"Trey Cohn the Corny"
"Trite Hawk Whittaker"
"Trite King Kittinger"
"Trite Rollo Tortorelli"
"Triteness-Resistent Tess Tiner" []
"Triter Ritter"
"Un-Rad Darun Duran"
"Un-Stale Les Tuan"
"Uncensored Corene Sund"
"Unhinged Inge Hund"
"Universal Sin Valuer [if player is male]Raul Nevis[else]Luna Revis[end if]" []
"Unlikely Yul Klein"
"Unrated Rude Nat"
"Updated Dude Pat"
"Verbose Bev Rose"
"Very Rude Eve Drury"
"Visceral [if player is male]Carl Ives[else]Cris Vela[end if]"
"Vulgar Enid VanGuilder"
"Wag Annis Swanigan"
"Wag Anya Ganaway"
"Wag Bell Bagwell"
"Wag Brinton Warbington"
"Wag Enid Wiegand" []
"Wag Erin Winegar"
"Wag Erinn Wangerin"
"Wag Ernie Wierenga"
"Wag Genaro Gongaware"
"Wag Hilde Wadleigh"
"Wag Katia Kitagawa"
"Wag Lara Agarwal"
"Wag Layla Gallaway"
"Wag Letner Greenwalt"
"Wag Lin Lawing"
"Wag Lina Liwanag"
"Wag Macon MacGowan"
"Wag Mena Wageman"
"Wag Mensch Schwegman"
"Wag Mona Magowan"
"Wag Ranae Wagenaar"
"Wag Red DeGraw"
"Wag Rob Grabow"
"Wag Rodin Winograd"
"Wag Sorkin Gawronski"
"Wag Tien Wingate"
"Wag Tyner Gwartney"
"Wag Zorn Granzow"
"Way-Drunk Rudy Kwan"
"Whitmans, Ham Twins"
"Wild Anne Wineland"
"Wild Edgar Waldridge"
"Wild Fine Winfield"
"Wild Gran Ringwald"
"Wild Hedstrom Middlesworth"
"Wild Larson Willardson"
"Wild Len Dwinell"
"Wild Lira Williard"
"Wild Maren Wilderman"
"Wild Merlin Windmiller"
"Wild Noakes Lewandoski"
"Wild Ren Windler"
"Wild Rena Reinwald"
"Wild Rolf Willford"
"Wilder Drew Li"
"Wit Anne Antwine"
"Wit Caston Wainscott"
"Wit Cher Wichert"
"Wit Chere Wiechert-Weichert"
"Wit-Clad Wildcat Walt Cid"
"Wit Dell Tidwell"
"Wit Elfreda Waterfield"
"Wit Elsy Wiltsey"
"Wit Ender Dewinter"
"Wit Ethyl Whittley"
"Wit Gena Wingate" []
"Wit Glen Wiltgen"
"Wit Glenn Wentling"
"Wit Greenan Weingarten"
"Wit Heller Witherell-Wetherill"
"Wit Hollie Willhoite"
"Wit Homer Whitmore"
"Wit Inge Wieting"
"Wit Ira Tiwari"
"Wit Karson Tarnowski"
"Wit Langdon Wadlington"
"Wit Len Wintle"
"Wit Lin Litwin"
"Wit Lise Wiltsie"
"Wit Lon Wilton"
"Wit Lyle Twilley"
"Wit Mana Waitman"
"Wit Meghan Weightman"
"Wit Oren Ortwein"
"Wit Rae Wiater"
"Wit Rathke Whittaker" []
"Wit Rees Siewert-Seiwert"
"Wit Regan Weingart"
"Wit Ren Winter"
"Wit Rene Weinert"
"Wit Renna Wirtanen"
"Wit Ros Ristow"
"Wit Roskos Ostrowski"
"Wit Savannah Viswanathan"
"Wit Sen Westin"
"Wit Sera Waiters"
"Wit Shanon Washinton-Whisonant"
"Wit Sharon Ainsworth"
"Wit Sheena Nesheiwat"
"Wit Shenna Whisenant"
"Wit Shera Wisehart"
"Wit Shon Whiston"
"Wit Slater Stirewalt"
"Wit Tesha Thwaites"
"Wonderful Fun Low Red"
"Word Fool Woolford"
"Word-Shout Hurstwood"
"Wordless Lewd Ross"
"Wrapped-Up Warped Pup Peppard Wu"
"Wry Abel Brawley"
"Wry Adah Hayward"
"Wry Alda Aylward"
"Wry Alec Crawley"
"Wry Amie Waymire"
"Wry Ben Berwyn"
"Wry Cole Crowley"
"Wry Ed Dwyer"
"Wry Elmo Wormley"
"Wry Lea Rawley" []
"Wry Leo Worley"
"Wry Moe Mowery-Wymore"
"Wry Ole Rowley Lowery" []
"Wry Red Drewry"
"Wry Theo Worthey"
"Wry Thorson Norsworthy"
"Yob Al Laboy"
"Yob Leo O'Boyle"
"Yob Les Boyles-Bosley"
"Yob Lew Bowley"
"Yob Mel Mobley"
"Yob Ned Boyden"
"Yob Shakia Kobayashi"
"Yob Tran O'Bryant-Brayton"
"Yob Vera Overbay"
"Yuck-Bleh Huckleby"
"Zanier [if player is male]Ezra Ni[else]Inez Ra[end if]"
"Zingier Ziering"

table of elmo emo [xxm5]
blurb
"Abi's bias"
"Amelia's malaise"
"Barb's abbrs"
"Beau's abuse"
"Bob's Lie-Lobbies"
"Cathy's yachts"
"Celine's silence"
"Charlie's arch lies"
"Dreamin['] Merinda"
"Eli's Lies"
"Elly's yells"
"Eve's wrath: whatevers"
"Fancier Francie"
"Hurt Ruth" []
"Inane Annie: her pics, ciphers, her slow howlers"
"Kim's grins, smirkings"
"Libeler Brielle" []
"Luann's annuls"
"Margie's mirages" []
"Melinda's [d-word] lies"
"No-Telling Ellington"
"Pam's spam"
"Rene's sneer"
"Richer Cherri"
"Shanice's achiness"
"Stinker Kristen"
"Susie's issues"
"Taky Katy"
"Taxin['] Xtina"
"Tessa's assets"
"Wantier Terwina" []
"a weekend, weakened"

table of lame computer games [xxm6]
blurb
"Ace For a Force"
"Ace vs. Caves"
"Adrenaline-Lined Arena" []
"Ah, Gut a Thug"
"Airmen Remain"
"Alien Orbit Liberation"
"Alien Sports: It's Personal"
"All the Lethal at Hell"
"Alpine Leapin"
"Ant-Folk to Flank"
"APB: Bap"
"Arfy Fray"
"Armada Boss Ambassador"
"Art Show Host War"
"Assert Tasers"
"Awe, Havoc, Have a Cow"
"Awestriking Waterskiing"
"Ax of a Fox"
"Ax Them the Max" []
"Ay, Fists Satisfy"
"Bad Cop Pod-Cab"
"Bad Game XI: a Mixed Bag"
"Bad Tin Bandit"
"Bag More, Mega-Bro"
"Balder Al, Bred Blader"
"Bang, Out, Gunboat"
"Bang, Tilts, Battlings"
"Bantam Batman"
"Barbarian Brian Raab"
"Base Itch: Cab Heist"
"Basest Beasts"
"Battles of Left Boats"
"BBL, O Blob"
"Be-Dry Derby"
"Be Grown, New Borg"
"Beating Big [n-t]"
"Beer-Clash Bleachers"
"Behold a Bad Hole"
"BLAM! The Meth Lab" []
"Blings O['] Goblins"
"Bold Moves Mobs Loved"
"Bomber Mobber"
"Bonk Castle Blackstone"
"Bonus Bo'Sun"
"Bops to Po['] Bots"
"A Bounce on a Cube"
"Box the HexBot"
"Break Into Oteri Bank"
"Breakout Outbreak"
"A Bridge Brigade"
"Bronze Zen Orb"
"Bruiser Gal Burglaries" []
"Bum-Wrath Thumb War"
"Burst-Sea Brutes as Abstruse"
"Bust-O-Bouts"
"A Byte Thug: Be That Guy"
"Cads Bop Cops Bad"
"Cage Fight: Fetch a Gig"
"Call the Hellcat"
"Canniest Ancients Instance"
"Canvased Sandcave Advances"
"Captive Cave Pit"
"Captives['] Cave Pits"
"Car Hits: Crash It"
"Car Wash Cash War"
"Carl, Mini-Criminal"
"Cash-Riot Chariots"
"Casted Cadets"
"Cave-In Ave., Inc"
"Caves and Advances" []
"A Celt's Castle"
"Cheops Epochs"
"Chore Gang Org Change"
"Clash for Half-Orcs"
"The Cliffs: Filch Fest"
"Clout a Couatl"
"Colgate Cage Lot"
"Colonize Coil Zone"
"Commander Mac Redmon"
"Commodore's Cosmodrome"
"Console O['] Clones"
"Consume One Scum"
"Cop Ode, DopeCo Cooped"
"Cop Raid Picador"
"Cop-Riven Province"
"Corner a Rare Con"
"Counter-Spies['] Persecutions"
"Crash-Fine Franchise"
"Craterlet Clatterer"
"Cream Mr. Ace McRae"
"Create My Cemetary"
"A Cricket's Ice-Tracks['] Ace Tricks"
"Crime-Org Grim Core"
"Crop-Meet Competer"
"Cry Duel Crudely"
"A Cyanotic Action Cay"
"D'oh, Get the Dog"
"Dang Our Gun Road: No Guard Aground" []
"Dare-Port Predator"
"Daring Test: It's Granted"
"Dawn's Wands"
"Dean's Andes Sedan"
"Death Rink in the Dark"
"DeathCo: the Coda-Cathode"
"Defilin['] Infidel"
"Delish Delish Shield is Held--Eh, Slid"
"Demolish His Model"
"Demon Monde"
"Destruction-Inducer Tots"
"Dice-Roll Collider"
"Dime Hunt in the Mud"
"Discover Irv's Code"
"Divas: Sad Vi Davis vs. Ida"
"The Dive, Thieved"
"Do for Frodo"
"Doglegs Slogged"
"Don't Have a Death Nova"
"Doorstep Torpedos"
"Dopest Despot Depots"
"Dr. Dale's Addlers-Ladders"
"Dread Holt, Death Lord"
"Dub Rivers, Bus Driver"
"Dungeoner Gone Under"
"Dungnose Dungeons"
"Dyad D-Day"
"Dynamicer Dry Ice Man"
"Earth Two: Hot Water"
"Earthdune Deathrune"
"Eek, Trap a Parakeet"
"Egerton's Ogre Nest"
"Electorship Helicopters"
"Elf Crone Florence"
"Elf Folk Hit: the Kill-Off"
"Elfling Felling"
"Elim-Mile"
"Embargo: Bag More"
"Ent Net Ten"
"Ents Sent: Tens"
"Epic Rash Parchesi"
"Erase, Kill, Laser Like"
"Err, Nag Ranger Garner"
"Espionage: a Genie's Op"
"Explo-o-Plex"
"Fabled Bad Elf"
"Far Totem of Matter"
"Farce-Hit Car Thief"
"Faria's Safari Is Afar"
"Fast-Clone Felon Acts"
"Faster Strafe-Afters"
"FBI Gun Big Fun"
"Fembots Mob-Fest"
"Filch [']N Flinch"
"Find Thee the Fiend"
"Fire-Torn Frontier"
"First-Place Fist Placer"
"Fit-Core Ice Fort: Force It"
"Five-Star Fit-Raves"
"Flee Crypt Perfectly"
"Flick the Thick Elf"
"Flo's Elf Sell-Off"
"Foil Dr. Ilford"
"Forceful Cruel-Off"
"Franchsied Arch-Fiends"
"Freakworm Framework"
"Free Capt. Fatcreep"
"Frightened Freed Thing"
"FUBAR, Ur-Fab"
"Fun Zone of Un-Zen"
"Games O['] Omegas"
"Gas [']em Games"
"Gerardo's Rad Ogres"
"Get Half the Flag"
"Get Him: Ban the Big Man"
"GI Fort of Grit"
"Gillmore Ogre Mill"
"Go-Lame-a-Golem Ol['] Game"
"Go Snipe Pigeons"
"Go, Wrath Warthog: a Growth"
"Gogar's Aggros"
"Gold Pot: Plot, Dog"
"Gold-Tiara Gladiator Triad Gaol"
"Gore Cave Coverage"
"Gory Orgy" []
"Got a Row, Go to War"
"Grim Mr. GI"
"Gringo Goring"
"Groin-gorin['] rig: ON"
"Gross, Inc. Crossing"
"Grotesque Ogre Quest"
"Grues['] Urges Surge"
"Guam's Magus"
"A Gun By Any Bug"
"Gun Down Dung Now"
"A Gun Raid Guardian"
"Gunner Idly Lying Under Enduringly"
"Half-Pipe Flip Heap"
"Halt, Briny Labyrinth"
"Happier's Sapphire"
"Hate Shotgun, Hostage Hunt, the Hangouts: That's Enough"
"Hater-Slug Slaughter"
"Hector the Orc"
"Heel-Post Pest-Hole"
"Heist Done on the Side"
"Heist-Op: It Hopes to Spite"
"Helidromes Demolisher"
"Hell-Dirt: The Drill Thrilled" []
"Help Gut the Plug"
"Help Us U Shlep"
"Hero Nat: No Heart, Nor Hate" []
"Hero Rohe-Oher"
"Heroes Rose, Eh"
"Hew Past the Wasp"
"Hidings Dishing Shindig"
"Hip Bistro Orbit Ship Prohibits"
"Hire One Heroine"
"His Car I Crash II"
"Hit and Run Darin['] Hunt"
"Holy Fiord Hydrofoil"
"Hoodlums['] Slum Hood"
"Horridest Horde, Stir"
"Hot Dare or Death"
"Hot Gas: a Ghost to Gash at, Gosh"
"Housefly: Uh, Sly Foe"
"Hovercars Crash Over"
"How-Snug Gun Show"
"I Debut But Die"
"I Fry a Fairy"
"I Maim Miami"
"I, Norman, Iron Man"
"I Prevent ViperNet"
"I Push Up His U-Ship"
"I Shaft at Fish" []
"I Spoon Poison"[]
"I Thud it, Duh"
"I, Trojan Janitor"
"I'll Skunk Skull Kin"
"I'm My-T-Timmy"
"I'm Tough: Go Hum It"
"Ian Chung's Chain Guns"
"Ice World: Wild Core"
"If Den Fiend Find, I Fend: Endif"
"Imhotep's Time Hops"
"Imperialist Primalities"
"Imps W/Wimps"
"Infidel Fieldin[']" []
"Insatiable Alien Baits" []
"Intense Nine-Set Tennies"
"Ion Rig Origin"
"Iron-Clad Clorinda Alcindor" []
"It's Near, Antsier, Nastier: Snare It"
"Ivana, a Vain Avian"
"Jostler-Jolters"
"Jungles or Jongleurs"
"Junta Jaunt"
"Kill-Back Kickball"
"Kill Him, Kim Hill"
"King is Skiing"
"A KO Brute Outbreak" []
"Lane of a Felon"
"Lard-Dork, Dark Lord"
"Lasered Leaders"
"Lasers['] Rassle"
"The Last Stealth"
"Latescent Tentacles"
"Le Scum Muscle"
"Le Turbo-Trouble"
"Leap on One Alp"
"Let's Find Des Flint"
"Lich-Nerd Children"
"A Lie Clan Alliance"
"Lo, Dwarves, Save World: Loved Wars"
"Log a Hit, Goliath"
"Loki's Kilos"
"Loogy-Ology"
"Loose-Scum Colosseum"
"Lord W.'s Worlds"
"Lost City Coy Tilts"
"Lost Pig Pit Slog"
"Lotion Lootin[']" []
"Lou, Swat Outlaws"
"Lyssa Slays Alyss"
"Mac Reest Creamtes Meercats"
"Macabre Beam Car Race, BAM"
"Machines, Ani-Mechs"
"Mad Slime Dilemmas"
"Mad Strike Master Kid" []
"Magic GI Mac"
"Magus Net Mutagens"
"Maint-a-Mint at Min"
"Majestic Cami-Jets" []
"Malibu's Bums Ail"
"Manic, I Gas Magicians"
"Manor's Ransom"
"Manticore Cremation"
"Marry Mr. Ray Rymar"
"Mars Arms"
"Martians A-Smartin[']"
"Marv's Tin Varmints"
"Mastering Emigrants" []
"Mean Ex-Axemen"
"Mega GI Maggie"
"Minotaur-Roam Unit"
"Mm Yeah Mayhem"
"Mob-Cast Combats"
"Mock a Whale, Whack a Mole"
"Mom's Rune Summoner"
"Mope South, Shoot [']Em Up"
"Mort's Storm"
"Mr. Ice's Crimes"
"Mr. Rope-Romper"
"Mr. Rude Murder"
"Mr. Stone's Monsters"
"Mr. Vine Vermin"
"Mt. Akers/Maker St. Markets"
"Mug Cabs, Scumbag"
"Mug the Gem Hut"
"Mum Dan and, umm, Mud Man"
"Mutilation Unto a Limit"
"Myth Court: Much to Try"
"Nail-Ops So Plain"
"Narc Pad and [crap-u]"
"Nasty Foe, No Safety"
"NatureNauter"
"Neanderthal Earthen Land"
"Neutronic Continuer Centurion"
"Nifty Fytin[']"
"Night Foe in the Fog"
"No magic? Go manic"
"No-Nudge Dungeon"
"No-Warez War-Zone: Raze Now"
"Non-Sacred Ordnances"
"Now-Proud Pro-Wound Downpour"
"Oarless Lassoer"
"Oddric's Discord"
"Ogre Ergo Gore"
"Ogre Hut: Tougher"
"Oh, Madder Hard Mode"
"Old Guard Drug Load"
"Omega God: Agog Demo"
"Omerta: a Metro To Ream"
"OMG Rue Morgue"
"One Foot Onto Foe"
"Orbits Bistro"
"Orcy Cryo-Cory"
"Outslay You Last"
"Ovals Salvo"
"Paint a Pinata"
"Palace Spy Playspace"
"Panic-Mosh Champions"
"Parking Lot Patrol King"
"Pas-Mal Plasma"
"Pasted Adepts"
"Pelt Em Temple"
"Pesterous Proteuses"
"Petrel Pelter"
"Physical Yip-Clash"[]
"Picross So Crisp"
"Piranha [']N Pariah"
"Pistol Pilots"
"Pit Four: Up for It"
"Pivotal Vital Op"
"Planet Ten, Pal"
"Planetarium Manipulater"
"Pods [']N Ponds"
"Porkshow Workshop"
"Ports-O-Troops"
"PPV PVP"
"Pro Style Prey Lots"
"P.S. Tom, Stomp Ms. Top." [p]
"Puke-Race Up a Creek"
"Punk-Car Crank-Up"
"Push Out Up South"
"Put a Horde Up the Road" []
"Quell This: Hill Quest"
"Quest O['] Quotes So Qute"
"Quieter Requite"
"Quonset Quest: On"
"Raiders Dare, Sir"
"Raiders of Fire Roads"
"Raids On Inroads"
"RamTek Market"
"Rapidest Pest Raid"
"Re-tool, Looter"
"Reach Thy Hatchery"
"Reamings, Smearing" []
"Recessed Seceders"
"Red Air Raider"
"Reds [']N Nerds"
"Redshirting Night Riders"
"Refine Op, Open Fire"
"Regentship Spree-Thing"
"Reichs['] Riches"
"Ribs Gone? Sobering"
"Rid a Raid"
"A Rider-Raider" []
"Rifle Op Profile of Peril"
"Ring of Forgin[']"
"Risk, Set, Strikes"
"A Risky Sky Air"
"Roach-Post Crapshoot"
"Roads So Rad"
"Robo-Boro"
"Robustly Lost Ruby"
"Rod W. Bass, Ward Boss"
"Rodent Tendor"
"The ROM-Mother"
"Rooftops of Troops"
"Rouge Rogue"
"Rube's Rebus"
"Rush Ten Shunter-Hunters"
"Sabotage a Beast! Go"
"Saint Al, Lanista"
"Save Eva's Vase"
"Scalper Parcels"
"Scry Up Cyprus"
"Scum Path Matchups"
"Sea Trip Pirates"
"Sedentary Try-and-See"
"Seeing Genies"
"Seek Tony Keystone"
"Senshi Shines"
"Set Elf Fleets"
"A Setup Up East"
"Shoot Down Hood Towns"
"Simoni's Mini-SOS Mission"
"Sing Loud, Solid Gun"
"Six-Gun Heat: Exhausting"
"Skylord, KO Dr. Sly"
"Slap-[']Em Sample"
"Slathering Earthlings"
"Slay-Um Asylum"
"Slayer Relays/Slayer Layers"
"Slice On In Close"
"Slimy Cop Olympics"
"Slippery Peril Spy"
"Slobb-Blobs Lob BS"
"Slopy Ploys, Po['] Sly Ol['] Spy" []
"Slur the Hustler"
"Smack [']Em Down, Scammed Wonk"
"Smokin['] Hot Mosh-Tokin[']"
"Sniper En Pris"
"Snipers or Prisoners"
"So Draw a Sword"
"So, Fright or Fights"
"So Ply, Ol['] Spy"
"So-Retro Rooster" []
"Soho Bay Booyahs"
"Some Fair of Armies"
"Sonar Arson"
"Sorcerer Rescorer"
"Sought-After Hostage Turf"
"Soul Fight: Foil Thugs"
"Southland Duathlons"
"Sparest Pasters"
"Speed Pedes"
"Splay-Plays"
"Splot Plots"
"Spook KO Ops"
"Sporadic Picadors"
"Spot Clue Couplets/Octuples"
"Sprint [']N Trips" []
"Spyplane Playpens"
"St. Thief the Fist"
"Stage One: Gone East"
"Stagin['] a Sting"
"Stampier Primates"
"Stem venom movements"
"Stilt Tilts"
"Stimulation Mutilations"
"Stop Elk Kleptos"
"Stop the Hot Pest"
"Storming Mr. Stingo: I'm Strong"
"Strangle Les Grant"
"Strateg-Targets: Get, Star"
"Strateg-Targets: Test Rag" []
"Streak-Skater"
"Street Setter"
"Streetcar Scatterer"
"Stun Gun, Nun Guts"
"Superstar Pasturers" []
"Swat it: a Twist"
"Swervyn['] Wyverns"
"Swordman, Sandworm"
"Tactile Lattice Ace Tilt"
"Tame Meat, Mate"
"Tank Raid: in at Dark"
"Tar [']em, Tamer"
"A Target Regatta"
"Tastes Like Elite Tasks"
"Team Drill Treadmill"
"Test Pod Spotted"
"Testin['] Ettins"
"Theif of Hot Fief"
"Theobald Bothdale, Hot Blade"
"Thingies Heisting"
"Threat Epoch: Reach the Top"
"Thugster Gets Hurt"
"Thy Pro Trophy"
"Thy Seek: the Keys"
"Tia Quern, Quainter Antiquer"
"Tiny Axe Anxiety"
"To Break Beak Rot, TAKE ORB"
"To Crash Hot Cars"
"To Kill Till OK"
"To Progress: Gore Sports"
"To Ship Hit-Ops"
"To Swarm at Worms"
"Toastin['] Station" []
"Too-Hard Hot Road" []
"Top Cars to Scrap: Captors or Pacts" []
"Top Games: Most Gape"
"Traffic Car Tiff"
"Trained Foe Federation"
"Trash Coop Crapshoot"
"Tree Plot Teleport"
"Trikes Strike"
"Troop'n Proton" []
"Trucks Struck"
"Truster Turrets"
"Try Fo['] Forty to Fry"
"Tuf-Range: Gun After Great Fun"
"Turn One Neutron"
"A Twig: Wag It"
"Ug, Funk Kung Fu"
"Ugh, Test the Guts"
"Uh, Cult, Cthulu"
"Uh, Tag a Thug" []
"Ultmut Tumult"
"Um an Nth Manhunt"
"Un-Reserve Revenuers"
"Unearthly Hunt Relay"
"Unnatural Lunarnaut"
"Unresting Insurgent"
"The Urn Hunter"
"Us, Bloody Body, Soul: Doubly So"
"Virtual Ritual V"
"Wall it at Will"
"War of Dr. Forward"
"The War W/Earth"
"Ward Off Dwarf of Fafword"
"We Found Feud Now"
"Weapons ops anew: Snap Woe" []
"Weavers Aswerve"
"Whelp Bout: The Blow-Up"
"Where Did Drew Hide"
"Wisdom Crag Magic Sword"
"Wood, Barns, Snowboard"
"Worldsong Longsword"
"Ye Thug Huge Ty: Hey, Gut the Guy"
"Yes to Dr. Destroy"
"Yon Ops Snoopy"
"Yon True Tourney"
"Yow, a Thug Way Tough"
"Zero-Harm Remorhaz"
"Zombie: a Bio-Maze"

table of lame movies [xxm7]
blurb
"[if player is male]Burt Oakes[else]Tresa Kubo[end if] Breaks Out"
"[n-t]'s Pets: Past Tense"
"Abdul's Bud Sal"
"Abysmal Amy's Lab"
"Admiral Dalarmi"
"Aforementioned Foe, Renominated"
"Alias Alisa"
"Alien Trove Revelation"
"Android Dorinda"
"Annoying Nanny, I Go"
"Ape, Colt, Capt. Leo, Ace Plot"
"Arriba, Ibarra"
"Arsenic Carnies"
"Art Reid Tarried Tardier"
"Ayoub Bayou"
"A B-Day by Ada"
"Bad Run, Dunbar"
"Band, Slime Mandibles" []
"Basement Beast Men"
"Be Calm, McBeal"
"Be Sick, Si Beck"
"Be Wed, Dweeb"
"Beetle Le Bete"
"Belly up, PE Bully"
"Betrayal-Later Bay"
"Black Spot Plots Back"
"Bland Hero Bohlander"
"The Blob Lobbeth"
"Blumsted Stumbled"
"Bo's Pluck Blocks Up"
"Bods Can Abscond"
"The Borg Got Herb"
"Broodiest Robots Die"
"The Buck Huck Bet"
"Burrrito Tub Riot"
"Bus Day: Dubya's Sad Buy"
"Caress-Scares"
"Carnivorous Coronavirus"
"Cash in, Mr. Chrisman"
"Castle Den: Let's Dance and Select"
"Cesium Miscue"
"Chad Bogue, Douchebag" []
"Chamber Pot Camp Bothers"
"Chet's Ma Matches the Scam"
"Chicken-Pot Kitchen-Top Checkpoint"
"Chum in Munich"
"Cis-Male Scam Lie"
"A Clip: I Clap"
"Clochard Dr. Cal Cho"
"Clone is In Close"
"Colin Is Silicon"
"Con Pete, Teen Cop"
"Constarn Scranton"
"Corpse Scoper Crespo"
"Coward War Doc"
"Creep St. Specter"
"Creepier Creperie"
"Cults O['] Clouts"
"Dad, Ann and Dan"
"Danseur Asunder"
"Dark Side Adds Erik"
"Darker Red Ark"
"Darn Big Brigand Barding"
"Death is His Date"
"Death Toll at the Doll"
"Deathless, These Lads"
"Deja Jade"
"Delicate Cadet Eli"
"DeRossi Rides So"
"Derp, Dr. Epperd"
"DethsCo: The Docs"
"Dinesh Shined"
"Dis Qua? Quaid's a Squid"
"Discarnate Eradicants"
"Dishes Hissed Ssh, Die"
"A Ditz's Sad Zit"
"Do Fall, Old Alf"
"Doc Ade's Odd Case"
"Doc's Err-Records"
"Done-For Roof-Den"
"Dr. Egan's Dangers"
"Dr. Geist Gets Rid"
"Dr. I Play Rapidly"
"Dr. Idle-Riddle"
"Dr. Neo's Drones" []
"Dr. Roach-Orchard"
"A Driver's Rare Vids"
"Duffers Suffer'd"
"Dugger's Grudges"
"Dullard Dr. Udall"
"East to O-State"
"Ecker Creek"
"Eclosion Colonies"
"Effigy Giffey"
"Eh, Boring Neighbor Hoinberg"
"Elf T Felt Left"
"Endurers Sunderer Nurse Red"
"Engquist's Questings"
"Enquist's Inquests"
"Espana Paeans"
"Etheredge: The Degree"
"Ethereous Treehouse"
"Evie's Sieve"
"Evil Lag Village"
"Favorites for Evita's"
"Fearing Fangier Fergina"
"Felix's Elf Six"
"Felix's Elf Six"
"Fiddler Dr. Field"
"Figure Out: I Go Future"
"Filler: Re-Fill"
"Final Girl: Grain-Fill Lair Fling"
"Flavor For Val"
"Flawless Wes's Fall"
"Fly Me My Elf"
"Formulated Artful Demo"
"Foul Sour Soul Four"
"Foundlings['] Unfoldings: Gold, Fun, Sin"
"Frau Rauf"
"Frayed Dr. Faye"
"Free Pop For Pepe"
"Freedom From Dee"
"Fretting Gent Rift"
"Frosh Lick Rich Folks"
"Furnaces-Scare Fun"
"Garbled Lad Berg"
"Gee, Sal's Ageless"
"Genuine Ingenue Un-Genie"
"Glean His Healings, Hang Lies"
"Glow-Fang Wolfgang"
"Gnomish Moshing"
"The God-Goth, Ed the Dog" []
"Good Night, Doting Hog"
"Goon Ted Got Done"
"Gory Ygor" []
"Grade-A Dreg"
"Green Miss Messinger"
"Grim Old Lord Mig"
"Grow Up to Group Two"
"Gutman's Mustang Stung Ma"
"Guts Lie Ugliest"
"A Hack, Mr. Rackham"
"Hades Has Ed: Eh, Sad"
"He's Murphy Humphreys"
"Heel Quest: the Sequel"
"Hep Rolf: Help for Her Flop"
"Hero Dr. Herrod"
"Hot/Cold Doc Holt"
"Hugo St. Toughs"
"A Hunted Haunted Un-Death"
"Hurr, Ooze Zero Hour"
"Hut, Fear the Frau"
"Hutless Lushest Hustles"
"Hypocentral Lycanthrope"
"I Drove Over Di"
"I Wear a Wire"
"I'm Part Armpit"
"Id-Cures: Scuderi Cruised"
"If Afar, Affair"
"Inceptions Inspection"
"The IRS Riseth"
"It Opts to Spit"
"Jem or Mr. Joe"
"Jim's Boy is My Job"
"Joe Bay's Easy Job"
"Kid of OK Dif"
"Lab Tot Talbot"
"Lamia Malia"
"Lanyard Lad Ryan"
"Last-Fog Gas Loft"
"Last King Talkings"
"Last Time Mist Tale"
"Latte St. Tattles"
"Law Firm Raw Film" []
"Le Con-Clone"
"Le Fief Eiffel"
"Le Star Staler"
"Le Wolf-Fellow"
"Lech Wes Welches"
"Li'l Pip's Lip Slip"
"Lion Gang's Sing-a-Long"
"Loss-Cite Solstice"
"Lupe Can Clean Up" []
"Luther Ruleth: Le Hurt"
"Macky's Sky-Cam"
"Magical Gal Cami"
"Maimed Maid Em"
"Maniacs in a Scam"
"Mars MRSA/SRAM" []
"Masoning Moanings" []
"Max's XMas Xams"
"Melt-So Motels"
"Merriest Triremes"
"Mesmerist Mimesters"
"Milo Lin's Millions"
"Misha Has [']Im"
"Mo['] So Cute Outcomes"
"Moanins Mansion"
"Mob Boss Bob Moss Bombs So"
"Mod Man and Mom"
"Mom Ices Commies"
"A Mongo Goo-Man"
"Moonlet Toolmen"
"Morphia's Aphorism"
"Most Care to Scream"
"Mr. Bulgy-Grumbly"
"Mr. Cartoon Cormorant"
"Mr. D & Dr. M"
"Mr. Demise-Immersed"
"Mr. Eno's Sermon"
"Mr. Psi-Prism"
"Mr. Thief Herm Fit the Firm"
"Ms Murder-Drummers"
"My Calf's Fly Scam"
"My Depth is Dim: the Spy"
"My Li'l Milly"
"My Sis Missy"
"Ned Chute, the Dunce"
"Neighbors Be Horsing"
"Neolith Hotline" []
"Newlywed Wendy Lew"
"News Rally, Yell Warns, Swell Yarn"
"The Next Tent Hex"
"No, Dr. Nord-Dorn"
"Non-Insect Innocents"
"Nope, Dr. Penrod"
"Nuts St. Stunts"
"Of Fans So Naff"
"Of Stu Foust" []
"Ol['] Bart's Borstal"
"Old Seer Delores"
"Old Theo's Toolshed"
"Olin's Losin['] Lions"
"Olsen's Lesson"
"One Jury Journey"
"Our Jr.  Juror"
"Outsider Suitor Ed"
"Palmetto Meta-Plot"
"Paltrier Pre-Trial"
"Parkin[']: I Prank"
"Path Set: the Past"
"Payphone Hypopnea"
"Pediatric Patricide"
"Pepe Wu's Wee-Pups Sweep-Up"
"Perraut's Raptures"
"Persevere, Rep. Reeves"
"Pink Miss Simpkins"
"Pip's Gig: Gip Pigs"
"Plan Eight: Night Plea"
"Plan Nine: Linen Nap"
"Pockets, Sock Pet"
"Poshie Sophie"
"Potent Top Ten"
"Powell's Swell Op"
"Prat-Trap Part-Tarp"
"Precursor Procurers"
"Predictable Debacle Trip"
"Prepski Skipper" []
"A Pro Cynic's Conspiracy"
"Prophecy-Cypher Op"
"Quinn's Mean Mannequins"
"Raffia Affair" []
"Ram Out a Tumor, Mr. Auto"
"Ramires Marries"
"Raw Clinks Skin-Crawl"
"Reed's Seder"
"Remedies Seem Dire"
"Renege, Greene"
"Retains Nastier Retinas" []
"Reviser Reivers"
"Riley's Sly Ire"
"The Rink Thinker"
"Riptide Die-Trip"
"Risen-Field Friendlies"
"Rockin['] on: Rick or Nick" []
"Rubbery Rube Bry"
"Sad Lev Valdes Slaved"
"Same Blind Semi-Bland Mandibles"
"Say, Rude Duryea's Rues Day"
"A Scion's Casinos"
"Scoffin['] Coffins" []
"Scumball Cam's Bull"
"Seed-Pod, Deposed"
"Seine's Sensei is Seen"
"Senor Norse" []
"Sensing Ensigns"
"Shafter-Fathers" []
"She Leads, Headless"
"Sheikh's Shikseh"
"Sherice's Richesse"
"Shriek, Hikers"
"Shrivelled Hell-Divers"
"Shy Pet the Spy"
"Six Pie Pixies"
"Six Ref Fixers"
"Sky Ace Caskey"
"Sleepy Spy Lee"
"Sloppy Plopsy-Polyps"
"Sly as Lyssa"
"So-Pretty Pet Story"
"So-Pudgy Pod Guys"
"Soldier Deloris"
"Sombrest Mobsters"
"Some Iced Comedies"
"Spooks KO Sops"
"Springhouse Surgeonship"
"Sputnik Stink-Up"
"Spy Pig, Spy Gil"
"Squeak-Rat Aqua Treks"
"Squick-O So Quick"
"St. Lucian Lunatics"
"Starriest Sister-Rat Traitress"
"Starship Harpists"
"STD & TDs"
"Stickball Blacklist"
"Stone Cold Oldest Con"
"Stown Towns"
"Stu-Not-Stout [']N Sutton"
"Styrofoam Toys From a Soft Mayor"
"Switching Witchings"
"Ta, Mrs. Smart" []
"Tall Lt. Al"
"TARDIS Triads"
"Teen Mom Memento"
"Ten Pals['] Planets"
"Ten Tons Not Sent"
"Terrapins Transpire"
"Terrify-It Ferry"
"Tess Brom, Bert Moss: Mobsters" []
"Tex: the Hextet"
"Theda's Deaths" []
"Threaten'n Theater"
"Tim's Ten Mittens"
"Tip Top Tot Pip"
"A Title-It Tale"
"To Ape a Poet"
"To Bro Robot"
"To Mr. Mort"
"To Prowl Plot Row"
"Top Ace Pat Coe"
"Tot Spy Ty Post"
"Toupees Seep Out"
"Trailer Retrial"
"Traitor Rat Trio"
"Twin-Gun Wingnut"
"Twistin['] Nitwits"
"Unmotivated Mutant Video" []
"Us of UFOs"
"Vast as TV"
"Vestral Varlets"
"Vigorous Goo-Virus"
"The VIP's Hip Vest"
"Wan Tot at Town"
"We the Bland Bend the Law"
"Wendigo Widgeon"
"Wes: His Wishes"
"Westin's Witness"
"Wild Cards Did Scrawl"
"Wild Del Did Well"
"Wimpy Art's Swim Party"
"Wong is Sowing Owings"
"Wood of Mr. Worm Food"
"Yet Quiver Very Quiet"
"Yet Them, They Met My Teeth"
"Yup, Bell-Pull, Bye" []
"Yup, Dr. Purdy, Dry Up"
"Zombies: Some Biz"
"The Zoo Oozeth"

table of lame talk shows [xxm8]
blurb
"[if player is male]Elmo Stark[else]Selma Tork[end if] Talks More"
"[if player is male]Gene Vest[else]Eve Tseng[end if] Gets Even"
"[if player is male]Mr. Easy-Smeary[else]Smeary Ms. Raye[end if]"
"[if player is male]Mr. Tso's[else]Mrs. Tso[end if] Storms"
"Abi Gide's Big Ideas"
"Ace Nutter's Utterances"
"Adie's Ideas"
"Adulatory, Laudatory [if player is male]Aldo Autry[else]Laura Doty[end if]"
"Again W/Gawain Wigana-Agwani"
"Aha, Dire Airhead"
"Al Berg's Garbles"
"Alterer Relater Art Leer"
"Answer to Art Owens"
"Apprise, Sappier"
"Apt Pat"
"Arendt Ranted Ardent"
"The Arg Rageth"
"Arnett's Natters"
"Arnott's Rants to Start On"
"Artie's Satire"
"As Brent Banters"
"As Trent Natters" []
"Ask-[']Im Sikma"
"Ask Lupi Pulaski"
"Ask Mr. Marks"
"Ask Rep. Kasper-Parkes"
"Ask Ye Kasey"
"Asker Akers"
"Asky Kay's Yaks"
"Aspirant Partisan Nat Paris"
"Avid Al Davila"
"Avid Allen Villaneda" []
"Avid Cris Viscardi"
"Avid Dina Davidian"
"Avid Earl Delariva"
"Avid Ervin Vandivier"
"Avid Eryn Vineyard" []
"Avid Gia Gavidia"
"Avid Lea Deavila"
"Avid Len Ledvina"
"Avid Les DeSilva"
"Avid Olin Vindiola"
"Avid Otto Dottavio"
"Avid Sal DaSilva"
"Avid Sol DiSalvo"
"Avid Son Davison"
"Avid Vern Vandiver"
"Aw, I've a View"
"Bad Dog's Odd Gabs"
"Banter at Bren: Rant, Be"
"Bantery Art Byer"
"Bantery Nat Byer"
"Barthel's Blathers"
"Beau's Din, Unbiased"
"Being Nosy Begins Yon"
"Bess Rove Observes"
"Beth Gil the Glib"
"Bettina's Neat Bits" []
"Big E's Gibes"
"Big Herb is Gibberish"
"Big Loud Glib Duo"
"Big-Slant Blasting"
"Bleat Mo['] Blame to Tom Bale"
"Bleat St. Battles"
"Blount's So Blunt"
"Blowing Glib Now"
"Bo Raves So Brave"
"Bother [']Em More, Beth"
"Bouncing Buncoing"
"Brilliant [if player is male]Bill Train[else]Lili Brant[end if]" []
"Caffee Carr, Farce Facer"
"Candra's Canards"
"The Cart: Rec That Chatter"
"Charismatic [if player is male]Mitch Sciara[else]Marti Chicas[end if]"
"Charlotte's Ol['] Chatters"
"Chastity is Chatty"
"A Chat At['] Cha"
"Check Out Chuck Te'o"
"Chester: The Recs/Retches"
"Chet Ros Hectors Ochre St" []
"Chortle at Charlotte"
"Chum Abe Beachum"
"Chum Akers Schumaker"
"Chum Annese Schueneman"
"Chum Baba Baumbach"
"Chum Barb Brumbach"
"Chum Enid Duchemin"
"Chum Gillan Mclaughlin"
"Chum Ida Michaud"
"Chum Irons Murchison"
"Chum Kabir Krichbaum"
"Chum Lita Matulich"
"Chum Loreta Crouthamel"
"Chum Mae Meachum"
"Chum Omer Muchmore"
"Chum Reda Ducharme" []
"Chum Rod Murdoch"
"Chum Serena Scheuerman"
"Chum Tarra Macarthur"
"Chum Tim Mitchum"
"Chum Xia Michaux"
"Chum Yael Mulcahey"
"Cluey Mr. Crumley"
"Complain-Moan Clip"
"Complainer Icon Marple"
"Conrad's Candors"
"Consulting Gus Clinton"
"Costillo's Cool Lists"
"Cry at Tracy"
"Current Curtner"
"Curt Ain't Taciturn" []
"Curt Yin's Scrutiny"
"Curtest Cutters: Tut's Rec"
"Daily Lydia"
"Day-Maker May Drake"
"Daytime [if player is male]Tim Eady[else]Mia Dyte[end if]"
"Dibbler's Dribbles"
"Diety Deity Ted Yi"
"Dinner of Nerd Info"
"Doc's Fine Confides"
"Dr. Cat is DRASTIC"
"Dr. Fine Friend"
"Dynamicer Mandy Rice" []
"Ears-Sear Ares"
"Egotheism Eightsome"
"Eh, Nag Hagen"
"Emme's Memes"
"Emote to MEE"
"Empathic Emphatic [if player is male]Tim Paech[else]Pam Teich[end if]"
"Enquire, Enrique"
"Eric [']N Nicer Recin[']"
"Essie Fitt Testifies Feistiest"
"Factoids: Tad's Foci"
"The Facts: Chat Fest"
"Fave List Festival"
"Figueras Argufies"
"Flip Stu Uplifts"
"Futsal Faults"
"FYI IYF"
"Gee! Vent! Get even"
"Get Asa a Stage"
"Gibe Man Gabe Min"
"Gilman's Maligns"
"Glavine's Leavings"
"Gossiper Peg Rossi"
"Goucher's Grouches"
"Grable's Garbles" []
"Gravest TV Rages"
"The Grills Get Shrill"
"Grumpy Guy Mr. P"
"Gushing Huggins"
"Hey, Ms. Hymes"
"Hey, Rate the Year"
"Hoist Yr History"
"Homies['] IMHOes"
"Hone Wit to Whine With Noe"
"Hot-News-Now Seth"
"How-Stale Late Show"
"Howard's Rad Show" []
"I Ask Isak Saki"
"I Bug U Big"
"I Hatch Chat! Hi"
"I React at Eric"
"I Watch [']N Win Chat"
"I'd Rant Darnit"
"I'm Carlton Clairmont" [too many of these so I just threw in a few]
"I'm Darrell Remillard"
"I'm Drew Widmer"
"I'm Elton Montiel"
"I'm Fonder Informed"
"I'm Goldie Dimeglio"
"I'm Hope Opheim"
"I'm Irate Amirite Airtime"
"I'm Karin Minarik"
"I'm Laurel Aumiller"
"I'm Lisa Ismail"
"I'm Lorna Molinar"
"I'm Pablo Palombi"
"I'm Paul Lipuma"
"I'm Reed Diemer"
"I'm Regina Mangieri"
"I'm Rhonda Hardimon"
"I'm Ron Minor"
"I'm Sean Maines"
"I'm Selena Milanese"
"I'm Seth Smithe"
"I'm Tasha Mathias"
"In-Touch [toti] Chu" []
"Industrial Diurrnalist [if player is male]Dustin Rail[else]Trudi Nails[end if]"
"It's Clear Articles"
"It's EZ: Seitz Sez It"
"It's Len: Listen"
"Jed, Gus: Judges"
"Jigsawn Jawings"
"Just-Bec's Subjects"
"Karn's Ranks"
"Keen Ray Kearney"
"Keira's Askier"
"Kit Snow Knows It"
"Late Hours Shouter Al"
"Laufer's Earfuls"
"Layla's Say-All"
"Le Chat Chalet"
"Le Tart Tatler"
"Le Yack-Lackey"
"Lemburg's Grumbles"
"Lens on Nelson"
"Les Barth Blathers" []
"Let Mel Tell [']Em"
"Li'l Argue Guerilla"
"Lieb's Biles" []
"Lusk's Sulks"
"Mandatory Dynamo Art"
"Manolo's Ol['] Moans"
"Marm's Smarm"
"Mart's Smart" []
"Misc-Mics"
"Miss Sims-Isms"
"Moi, IMO"
"Mordant Rantdom"
"Moreno: On More"
"Mr. I-Nag Ingram"
"Mr. Mass-Smarms"
"Mr. Taste-Matters"
"Ms. Ram-Smarm" []
"Muse, Mr. Summer, Ms. Reum." [p]
"My Bit by Tim"
"Nag [']Em, Megan"
"Nag Dr. Grand"
"Nasty Quick Quackin['] Sty"
"Nat's Glib Blasting" []
"Neil's Lines" []
"No-Bias Sabina Bisono" []
"No-Rot Orton"
"Normative Movie-Rant [if player is male]Ervin Mota[else]Vi Armento[end if]"
"The Nosy Honesty"
"Not Fair: For, Anti"
"Now That Whatnot"
"Nut Marge's Arguments"
"O, Express Exposers"
"Ohh, Tact to Catch Hot Chat"
"On So Soon"
"Ooh, Pal, Hoopla"
"Our Prof Den, Profounder"
"Pa Seter Repeats a Pester"
"Pal-Lord Pollard"
"Parking Lot Talking Pro"
"Parroting-Rating Pro Torri Pang"
"Pass Out a Toss-Up"
"Patterer Perretta"
"Pattie's Eat Tips"
"Pedant Pentad"
"Pep Pro Popper"
"Personable [if player is male]Bren Pesola[else]Opal Berens[end if]"
"Pert Cid's Scripted Predicts" []
"Petra's Prates"
"Piers Pries"
"Pingley's Yelpings"
"Plainest Panelist [if player is male]Les Patin[else]Pat Niles[end if]"
"Po['] Stu Pouts"
"Pointmaker [if player is male]Kip Morante[else]Kim Paterno[end if]"
"Popinjay Joni Yapp"
"Prattle Platter"
"Prentice's Prescient"
"Pressnik Perkins's" []
"Pretty Loud [if player is male]Loyd Pruett[else]Dotty Luper[end if]"
"Pryer Perry"
"Pseud-Dupes"
"PTI Pit"
"Pundits [']N Stupid"
"Ragy Gary 'Yarg' Gray"
"Rah, it's Trisha"
"Raising Airings"
"Rapp's Parps"
"Rate the Theater"
"Raving Ingvar Garvin"
"Raw Rant Warrant"
"Raw Tech Watcher Art Chew" []
"Rec What, Watcher"
"Replicant Clint Earp"
"Rhee Here"
"Ring Pam Ramping"
"Riper Prier Perri"
"Rod's New Wonders"
"Rolf's ROFLs"
"Rooney's One Rosy Noser, Yo"
"Ruffino's Ruin-Offs"
"Sadie's Asides"
"Sal Pape Appeals"
"Salov's Salvos"
"Sane Irv Van Ries Raves In"
"Sasses Assess"
"Scorner Corners"
"Scour Ideas: a Discourse"
"Scratchy Cry-Chats"
"Secret-Rec Set"
"See Arron Reasoner"
"See Art Easter-Trease" []
"See Bert Steeber"
"See Bill Belisle"
"See Birch Scheiber"
"See Bub Busbee"
"See Burt Steuber"
"See Caron Escareno"
"See Cary Creasey"
"See Clint Celestin"
"See Colt Telesco"
"See Dirk Dierkes"
"See Don Sedeno"
"See Dorris Desrosier"
"See Garth Geathers"
"See Gil Siegel"
"See Glinda DeAngelis"
"See Grant Sergeant"
"See Houston Stonehouse"
"See Irvin Severini"
"See Karl Keasler"
"See Karyl Kearsley"
"See Kurt Kuester"
"See Linford Rosenfield"
"See Ling Inglese"
"See Link Kneisel"
"See Linn Nielsen"
"See Logan Eagleson" []
"See Lon Olesen"
"See Lyn Ensley"
"See Mina Eiseman"
"See Minna Eisenman"
"See Myron Meyerson" []
"See Raul Leasure"
"See Rich Scheier"
"See Rod DeRose"
"See Rog Goeser"
"See Ron Sereno-Rosene"
"See Ronald Rosendale"
"See Scott Cossette"
"See Simon Messineo"
"See Storm Somerset" []
"See Tim Estime"
"See Toney Eyestone"
"See Trev Everest"
"See Us Hit the Issue"
"See Wilkins Lesniewski"
"Self-Vote Love-Fest" []
"Sensei Sinese" []
"Septimus Spumes It"
"Shearer Re-Hears"
"Sheerest Seethers"
"Shiller Sherill"
"Shout-So Hut"
"Shout'n Huston"
"Sindi's Dissin[']"
"Sir Hank Krishna, a Shrink" []
"Sirs, Pure Surprise"
"A SJW Jaws"
"Smeariest Masteries"
"So, Cop: Coop[']s Scoop"
"So, Ms. Moss"
"So-Railing Originals"
"So Vent to Sven"
"Sociable [if player is male]Basil Coe[else]Casi Loeb[end if]"
"Speak: the Hep Takes"
"Spiel Piles"
"Stand in and Snit"
"Star-Like Talk, Rise"
"Steamiest Estimates"
"Step In [']N Spite"
"Stew is Wisest"
"Stipe's Spites"
"Strom's Storms" []
"Swank Doc M's Smackdowns"
"Swerdon Wonders" []
"Talk to Kat Olt"
"Talkative Vital Kate"
"Talking Gil Kant"
"Tell [']Er, Terell"
"Tell Ya Lately"[]
"Tessie Sees It"
"That's-Nice Chat Nites"
"Thea's Hates"[]
"Theresa Reheats the Ears" []
"This Do: to Dish"
"TMI Tim"
"Told You Too Duly"
"Topher Pother, the Pro"
"Tracy's Scry-At"
"Trite-Matters Streitmatter"
"A True Go to Argue"
"True to Re-Tout"
"Uncensored Denouncers" []
"Up-Late Pat Lue"
"Updater Rude Pat"
"Urban Lit Tribunal"
"Urging Gugnir"
"Ventess Stevens"
"Vespertine Presentive"
"Vibrant Brat Vin" []
"The View With Eve"
"Visitant Nativist Tat Ivins"
"Watch a Chat, Aw" []
"Watch Me, We Match"
"Way-Cool Lacy Woo"
"We Dig Edwig"
"We Nag Agnew"
"We Think With Ken"
"Weeniest Tweenies"
"Wes Iver Reviews"
"Who's Rad: Rod Shaw" []
"Winchester Wrenches It"
"Word Up W/Proud Po['] Dr. Wu"
"Worser Rowers"
"Wry Eve is Very Wise"
"Yacking Nick Gay"
"Yang is Saying"
"Ye Kewl Weekly"
"Yeller Ellery"
"Yenta Teyna Taney"
"Yo, Out to You"
"Yo, Rant to Ryan, Not Ray"
"Yo, Rat to Ray"
"Yo, Topics Too Spicy"

table of lame tv shows [xxm9]
blurb
"[if player is male]Mr. Simes[else]Ms. Rimes[end if] Simmers"
"Add Dad"
"Agent Tegan"
"Ah, Mrs. Marsh"
"All Cheer Rachelle"
"Angi Li's Ailings"
"Anthoney Annoyeth"
"Apt Chum Match Up" []
"Arbiter Rarebit"
"Aw, Dr. Ward"
"Aw, Li'l Willa"
"Ay, Mr. Army"
"Bad-Odor Boor Dad"
"Bad Velour Boulevard"
"Baking Chum Buckingham"
"Beilman's Minables" []
"Being Dr. Big Nerd"
"Besty Betsy"
"Big Ken Be King"
"Black Ops Slob Pack"
"Booker's So Broke"
"Boy, Mr. Byrom"
"Brain-Bairn Brian"
"Bub Chun's Bus Bunch"
"Cake Boss Beck Sosa"
"Can't Hate Etta Chan"
"Castor's StarsCo"
"Cats Like Kastelic" []
"Cesar Arce's Acres"
"Chef King Keg Finch"
"Chief Chef, I"
"Common Con Mom"
"Conway Can, Yow"
"Cool HS School"
"Cops O['] PCs"
"Corey, He's So Cheery" []
"Counseling Cousin Glen"
"Cue Mr. Crume"
"Damphier's Dream Ship"
"Dan'l's Lands" [p]
"Daring By Big Randy"
"Dater Trade/Tread"
"Days Off So Daffy"
"Deft Rod's Odd Frets"
"Det. Ted"
"Detective Evette Cid"
"Dixon's So Nix'd"
"Dolts of Flood St."
"Don't Miss Don Smits"
"Doods So Odd"
"Dr. Nessa Sanders"
"Dr. Seidl Riddles"
"Dr. Spino Drops In"
"Dr. Viledrivel"
"The Drama-Dream Hat"
"Dud Spy Spuddy"
"Dude, Bring Brundidge"
"Dufe-Feud"
"The Durn Nerd Hut Thunder"
"Dyson Synod"
"East Howl Late Show" []
"Ed Nurses Rudeness"
"Ed's Rec Screed"
"Erwin HS Whiners"
"Everdaunt's Undersea TV Adventures"
"Everyday Davey Ray"
"Exciter Tex Rice"
"Faboo Oaf Bo"
"Flossie's SOS Files"
"For-Peril Profiler"
"A Fortune of Nature"
"Garbled Dr. Gable" []
"Gasp, Mr. Gramps"
"Gee, So Go See"
"Gentler Lt. Green"
"GI Coach, Chicago"
"The Gods of Goods-Heft"
"Goob [']N Bongo" []
"Grampa Pagram"
"Greasiest Stageries"
"Gus Reno, Surgeon"
"Gwyn Luis Wins Ugly"
"Hal Gets the Gals"
"Hearst Hearts Sather"
"Herb at the Bar: Be Thar"
"Hev-Gut the Guv"
"Hey Dr. Hyder"
"Horrid Dr. Hiro"
"Horse Dr. Sherrod"
"Hot News Show Net" []
"I Bet on Benito"
"I Know Dr. Dworkin"
"I-Swerve Reviews" []
"I'm Joe Emoji"
"Initiated Dietitian Nidia Teti"
"Ira and Adrian"
"Join Sam Jamison"
"Karim's Mark is a Smirk"
"Keen Dr. Denker"
"Know Eric's Nice Works"
"Lafs With Half-Wits"
"Lawyer Rawley" []
"Le Kid, Liked"
"Lea's BFF Baffles"
"Learned Lad Rene"
"Leavitt's Vital Set" []
"Let's Be Mr. Trembles"
"Let's Ring Sterling"
"Li'l Ms. Mills"
"LOL My Molly"
"Loni-Lu's So Illun[']"
"Look at a Lot, OK"
"Lu's the Sleuth"
"Ma's Row So Warm"
"Maggie's Same Gig"
"Mailman Ian Lamm"
"Majority: Tim or Jay"
"Make Fun, Ma Funke"
"Mathew is the Swami"
"Me: the Theme"
"Mean Dr. Cho, Macho Nerd"
"Mediocre Doc Meier"
"Meet Rex Extreme"
"Men Dig MD Inge Deming"
"Merchant Mart Chen"
"Mishta Mathis"
"Mo Cuts Scum to Custom"
"Mo['] Cats to Scam"
"Molly is Mo['] Silly"
"Mr. Casa's Sarcasm"
"Mr I-Stop-Imports"
"Mr Sosa & Ms Rosa"
"Much-Apt Matchup" []
"My Bro Mr. Yob" []
"New Kid Ed Wink"
"Newsgirl Swingler-Wersling"
"Nick, Beam it Back in Time"
"No-Lie Leoni"
"Non-Stud Dunston" []
"Not-So Toons"
"Nurse Unser"
"Oh Noes Mr. Hormones"
"Oh, Saw a Show"
"Ol['] Pat is a Pistol"
"Olof Dover, Food Lover"
"Or Be OK, Booker"
"Phear Her Pa"
"Pip Carlin, Principal"
"Pip Loves Evil Opps"
"Police of Co-Op Life"
"Pop's Fear of Papers"
"Prepost-Popster"
"The Prick's Hep Tricks"
"Prior Pirro"
"Rasheed: He Dares" []
"Rathbone The Baron"
"Real Spy Players"
"Real Wives, Wee Rivals"
"Real World or, Well, Rad"
"Realistic Ice Trials"
"Reg and Danger"
"Reluct-Cutler"
"Reset, Tour Our Street"
"Resident Red Stein"
"Rhoads Hoards So Hard" []
"Rifts First"
"Risk It, Kristi"
"Road to Too Rad"
"Robert or Bret be Retro"
"Roche's Chores"
"Rod Be Bored" []
"Romantic Mr. Action"
"Rosena's Reasons"
"Rotten Tot Ren Retton"
"Roy Can Crayon"
"Rucci's Circus"
"Sam's Epic Escapism"
"Sanders['] Radness" []
"Sandy and Sy"
"The Sarge: He's Great" []
"Science and a Scenic Den"
"Scrumptions Sitcom-Usurp"
"See Al Lease" []
"Seek With Stew: Hike This Week"
"Seppala Appeals" []
"Shamus Sam Hsu"
"Sheriff Shiffer"
"Skit Row Works It"
"Slapstick Tasks Clip"
"Smug Edina, Mad Genius"
"Snore at One Star? No, Stare"
"Snyder's Dryness"
"So Ed Does"
"Sod, Bum, Mo['] Buds So Dumb"
"Sokol Looks"
"The Sop's Poshest Spots, Eh"
"Sue Dern Endures, Ensured"
"Sun Kid in Dusk"
"Supa-PUAs"
"Tastin['] Titans"
"Tate Had the Data"
"Ted's Van Advents"
"Tepper's Prep Set"
"To Plan an['] Plot Not, Pal"
"Toby Keough, the Book Guy"
"Tons-O-Toons" []
"Toshiko is HOT, OK"
"Tot-Can-Act-Not Octant"
"Tots Lyin['] Snottily"
"Train [']Em, Martine"
"Trek Show: the Works"
"Trooper Portero"
"Trounce-Counter" []
"Trouper Ruperto" []
"Turner's Returns" []
"U of UFO"
"Ugly-Side Idle Guys"
"Uh, Let's Sleuth" []
"Ulf at Fault"
"Um, Don't, DuMont"
"Un-Tribal Lunar Bit" []
"Up-Gro Group"
"Vallero All Over"
"Voisin-Vision"
"Wallace's Case Wall"
"Weak-Bosh Bo Hawke's Bake Show"
"Weatherly The Lawyer"
"Weird Wired Dr. Wei"
"Whittle With Tel"
"Whoa, Dr. Howard, How Rad"
"Wilder Dr. Liew" []
"With a Wit, Ah"
"Wizardly Liz Wydra"
"Xia's Axis"
"Ye Chap Peachy: Ach, Yep"
"Yo, Dares So Ready"
"Yr. Odd, Roddy"
"Zandor and Roz Zordan"

table of laughhouses [xxm0]
blurb
"Ace LOL Locale"
"Ahh, Met the Ham"
"Alf's Lafs"
"All Yo['] LOL, Ya"
"Amusing Mungia's" []
"Anti-Jokes Sake Joint"
"Assorted Roasteds"
"Ballsy Al Bly's"
"Bang-Up Pun Bag"
"Big-Snark Barkings"
"Bringin[']-Grin Bin"
"Busting-Guts Bin" []
"Cheap-Shots Sachet Shop"
"The Crass Scathers" []
"A Dis Dais" []
"Dis-Out Studio"
"Dope Ira's Parodies"
"Drek-Show Workshed"
"Floors So ROFL"
"Forge Yo['] Goofery (Or Go Fey)"
"Fun Bros of Burns"
"Gribbins Ribbings"
"Grin Ring"
"Her Famous Safe Humor Farmhouse"
"Impersonate-Permeations"
"Innuendo-Union Den"
"Ire/Wit: I-Write-It Wire"
"JestCorp Projects" []
"Josh'n John's"
"Karl's Larks"
"Laughs-Gush Al"
"Like, Grin Kinglier"
"Live Swear Reviewals" []
"A Log Hut to Laugh"
"Lon Lew's New LOLs" []
"Mandel's Slam Den"
"Mass Glib Big Slams"
"No-Strings Snortings"
"Noisier Ironies"
"Offend-Off Den"
"Pa's Cut-Up Acts" []
"Pat Buck's Bust Pack"
"Pat Sund Stand-Up"
"Pat's Slick Slapstick" []
"Play-Dumb-Madly Pub" []
"Pullman Pun Mall"
"Pun Meet Umpteen"
"Ralf's Larfs"
"Raw Bro Barrow"
"Rending-Grin Den"
"Ribaldest Listed Bar"
"Rip-All Pillar"
"Russell Lulsers"
"Sardonic Corinda's"
"Satiric Tricia's" []
"Satirical Racialist Latricia's"
"Slam of LMFAOs"
"Smirkin['] Mr. Niki's"
"Snark Ranks" []
"Snarkier Karrine's"
"Snarky Karyn's"
"Sneerin['] Ol['] One-Liners"
"So-Fresh Shofer's"
"So full of LULS"
"So-So MC Cosmo's"
"So-Trendy Story Den"
"Stall of Fast LOL"
"Stop-Gap Gag Post"
"Supr-LOL Rollups"
"Swearin['] Warnie's" []
"Tritest Titters"
"Tusslin['] Insults"
"Ungodly Rap Playground"
"UpFront Funport"
"Wildest-Led Wits: It's Lewd"
"Wit as it Was" []
"Wry Folks['] Fly Works"
"Ye Luls Be Bullseye"

table of lousy hit songs [xxm01]
blurb
"[d-word-u], Be Bad Men"
"A-OK We Awoke"
"Abby, Baby"
"About Me: Mo['] Beaut"
"Above Must Bust a Move"
"Ace Hit the CIA"
"Adores So Dear"
"Ah, Cap a Chap"
"Ah, Gutsy Hat Guys"
"Ah, I'd of Got Good Faith"
"Ah, Knots To Hank's Stank Ho"
"Ah, Sow a Show" []
"AKA Mr. Karma"
"Al Gots Gloats to Gals"
"All Chix Chillax"
"All In an['] Ill"
"All Rod's Dollars"
"Anarchy Ranch, Ya"
"And I Hymn In My Hand"
"And I'm Mad in a Mind"
"Anti-Rhyme in My Heart" []
"Any Cuter Racy Tune"
"Arousal So Aural"
"Autoing to a Gun, I Outgain"
"Aw, Lilt at Will" []
"Aw, Rec a Crew"
"Aw, Ye Diss Sideways"
"Aw, Yup, Way Up"
"Bad Kids Did Bask"
"Baggiest Beats Gig"
"Ball Very Verbally"
"Barmy in My Brain"
"The Bass Has Best"
"Be Down: We Bond" []
"Be Punk or Broken Up"
"Be Via a Vibe"
"Beastly Sly Beat" []
"Beatdowns Won't Be Sad"
"Beef Not, Bent Foe"
"Bet Guys Get Busy"
"Biggest Gig Best"
"Bilkin['], I Blink"
"Bill's Ill BS"
"Bit of Fib to Fob It"
"Bite, Bite, I Bet it Be"
"Blood is So Boil'd"
"Blood's So Bold"
"Bod Hit Low with Blood"
"A Body: Bad, Yo"
"Bold Cutie Could be It"
"Bold Hours['] Blood Rush"
"Bomb Mobb"
"Boo, Damn, Bad No Mo[']"
"The Boon Be on, Tho[']"
"Boy, Mr., My Bro"
"Bozo MC Comboz"
"Brawling Warbling"
"Broads So Drab"
"The Bros Brothers Be Short"
"Budapest: a Dubstep"
"Butterier Re-Tribute"
"Call Out a Cut, LOL"
"Called Da Cell"
"Cap the Hep Cat"
"Cat, Kite a Ticket"
"Charisma is a Charm"
"Christen Snitcher Retchins[']"
"City Is Our Curiosity"
"Close to Coolest"
"Cloy to Yo['] Colt"
"Co-Fend, Def Con"
"Combos So BMOC"
"Come On Once Mo[']"
"Come Work [']Em, Ow! Rock"
"Comfy? Yo, CFM"
"Command MC Damon"
"Compiled Clip Demo"
"Consoli-Coolins"
"Cool Down Now O Clod"
"Cool Loc'd Doc L (clod)"
"Cool Rap Carpool"
"Cop Push Chops Up Such, Pop"
"Copies So Epic"
"The Cops Scopeth"
"Crack Pipe Price Pack"
"Crazy Cryaz"
"Crib Here be Richer"
"Crisp Scrip, Crips"
"Crowns or Cornrows"
"A Crunk Pit: Crank it Up"
"Curfew FU Crew"
"Cus I'm Music"
"Da Bass Badass"
"Da Biz Iz Bad"
"Da Bones, Bad Ones"
"Da SOB So Bad" []
"The Daily Dealy Hit"
"Dam U a Dum Muda. U Mad"
"Dame, Thy Death? My, They Mad"
"Dang! I R Daring"[]
"Dank Slum Slam Dunk"
"Darn, Mo['] Rad, Mon" []
"Dat's New, We Stand"
"Days of Fads, Yo"
"Dear Ma: a Dream"
"Death Tub Bath Duet"
"A Def Fade"
"Demerit Merited"
"Devour-Zens Rendez-Vous"
"Dim Sky, My Kids"
"Dimetown Downtime"
"Do Ghettos To the Dogs"
"Do Seep So Deep"
"Do The Hot Ed"
"Do This Hot Dis" []
"DOA Ado"
"Doc Got a Good Act"
"Dog, Ride Dodgier"
"Dog Went GET DOWN"
"Don't Play, Nod Aptly"
"Dopeness Speeds On" []
"Dork U Not Too Drunk"
"Dorkiest Skirt-Ode"
"Down at Da Town"
"Dr. Cho's Chords"
"Dr. Cooke's Rock Odes"
"Drastic-Distrac[']"
"Drawl of Rad Flow"
"Drums of Surfdom"
"Drunkest Dunkster" []
"Dump the Thumped"
"DuraGold Drug Load"
"Dust, Pain: I Stand Up"
"Earn Soul: Our Elan's So Unreal"
"Earworm, Arrow Me"
"Ee Squirm Requiems"
"Egoism Art: I'm So Great"
"Eh, So [d-word-u] Handsome"
"EKG Keg"
"El Via Alive" []
"Elwood's Low Odes"
"Emend Bliss: Be Mindless"
"Eminem's Immense"
"Emit Lethal All the Time"
"Empty Jug? Get Jumpy"
"End of Def? No"
"Entirety, Eternity"
"Enviable Elan Vibe"
"Equine Queen, I"
"Even More Emo Nerve"
"Excitation, Intoxicate"
"Fakin['], a Fink"
"Far Punk Rap Funk Fun Park"
"Fat Chance Chant Cafe"
"Fat Duck" [x]
"Fear Me, Framee"
"Feel a Cup, Peaceful"
"Feel, Hit: the Life"
"Feelins O['] Felonies"
"Feels Like Sleek Life"
"Fills Like Life Skill"
"Filthy Fly Hit"
"Finest Festin[']"
"Fit? Uck, ick, tuf"
"Floor Seven: Loons Fever"
"Fly Shirt, Shy Flirt"
"Flyest Flytes"
"Fo['] a Oaf"
"Fo['] Erin, Fine or on Fire"
"Fob Any Fanboy"
"A Fob of Bass So Fab"
"FOOM, mofo"
"For Pa: Rap of a Prof"
"For She's So Fresh" []
"Foxiest, I Sex Oft"
"Free Fond Offender"
"From Mo, For Mom"
"Funk Row Fun Work"
"FunkCo" [x]
"Funkiest Tikes['] Fun"
"Fur Aline, Fraulein"
"The Fury Turf, Hey"
"Gaijin in a Jig"
"Gal, Hit a Light" []
"Game to Go at [']Em"
"The Gang is [']Neath Gigs"
"Gash Boom Goombahs"
"Get Shaw the Swag"
"Ghetto? LOL, Got to Hell"
"Go, Bump, Bop, Mug"
"Go Eff Geoff"
"Go Forward, Dog, Row Far"
"Go Hit It, Hog"
"The Gold Got Held"
"Good [']N Goon'd"
"The Good Goth Ode"
"Good Try, Tyro Dog"
"Goonin['] Goin['] On"
"Gosh, Nuts, Gunshots"
"Got Lies So Legit"
"Got Sin to Sing"
"Got Soul, Lo, Gusto"
"Got The Ghetto"
"Got Thin, On Tight Tonight" []
"Got Weed, Get Owed"
"Gots Rap to Grasp"
"Granpa's Nag-Raps"
"Grief's Rife, G's"
"The Group's Pusher Got Purge-Shot"
"Groupies, It's Prestigious"
"Guns, Ho: No Hugs"
"Ha, I Rap, Pariah"
"Halls O['] Hollas (Ah, LOLs)"
"Hands Up And Push"
"Hard As Rashad"
"A Hat Hata[']"
"Hat Men Anthem: Meh, Tan the Man"
"Hate-Word Wrath-Ode"
"Haters in Hairnets"
"Haters Met the Master"
"The Hats That She Hath Set"
"He Tags the Gas"
"He Yells Hell Yes"[]
"He'd Got the Dog" []
"He'd Net the End"
"Heather, Hear the Heart, Eh"
"Heh, to Do the Hood"
"Heinous In-House, Uh, NOISE" []
"Hey, Men, to the Money"
"Hey Mr. Rhyme"
"Hey, USA, Us, Yeah"
"Hi, Low, I Howl"
"Hi, Stout? Shout It"
"His Take: Shake It" []
"Hit Some Semi-Hot Times, Ho"
"Hit Song Thingos" []
"A Hit-Us Hiatus"[]
"Hm, Yo, Oh, My"
"Hm, You? Oh, Yum"
"Hola Mo['] Moolah"
"Hole to the Loo"
"Holla, LOL, Ha"
"Honest, Wham, Who's the Man"
"A Hook, Ho! A-OK"
"Hoopla Loop, Ah"
"Hot Into Too Thin"
"Hot Rex Rox the Exhort"
"How Long I Go Howlin[']"
"H/T for Th'Froth"
"Hysteria is Hearty This Year" []
"I Accent Nice, Cat"
"I Alter a Liter"[]
"I Break a Biker"
"I, Cat Ever Creative"
"I Chafe a Chief"
"I Cream a Crime"
"I Cred Dr. Ice"
"I Dis and Disdain"
"I Dis To Idiots"
"I, Down to Do it Now"
"I, Er, Max a Remix"
"I, Flaunter Ultra-Fine"
"I Fold, Foil'd, if Old"
"I Found Fun I Do"
"I Gank a King"
"I Go Scam So Magic"
"I Go Wut, Wig Out"
"I Got Net Get-It-On"
"I Grab a Airbag"
"I Hack a Hick"
"I Had To Do It, Ah"
"I Leak Like a Alkie"
"I, Liver, Virile"
"I Melt [']Em [']Til I'm Let"
"I Neva Naive"
"I, Null-Illun"
"I Opt a Patio"
"I Prank Rap Kin" []
"I Prosper. Is Proper"
"I Pull Up Ill"
"I Pump U, Pimp"
"I, Punk, Pukin['] Up Ink"
"I Rap Oft: A Profit"
"I Re-Tag a Tiger" []
"I Shatter a ... geez" [x]
"I Smack Down Wacko Minds"
"I Snatch a Snitch"
"I-So-Deep Episode"
"I So Pwn Win-Ops"
"I Stop to Sip"
"I Tag a Git"
"I Track a Trick"
"I Trust It's Tru"
"I Went it New"
"I'd Beat a Bidet"
"I'll Ask Killas A Skill"
"I'll Try Trilly"
"I'm Blues, Sublime"
"I'm Boo--I Boom Mo['] Bio"
"I'm Happy, Pimp, Yah"
"I'm Lost to Slim"
"I'm Shot: Mo['] Hits"
"I'm Young, in Yo['] Mug"
"Ice Has His Ace"
"Ill a Moron: I'm on a Roll"
"Ill AKA a Killa"
"Ill Dr.'s Drills"
"Ill, or I Roll"
"Ill Pun Pullin[']"
"In Rout to Ruin"
"In the Now With Neon"
"In Your Ruin, Yo"
"Is We Wise"
"It Rocks So, Trick"
"It's BAD, Bastid"
"It's Good to go Dis"
"It's Po['] to Sip" []
"July Be a Bluejay"
"Junkier Re-Jukin[']"
"Kapow, Wap, KO"
"Keep it Real, Like, Repeat"
"King Hit In, I Thinking"
"La Palace A Capella"
"La Vie Alive" []
"Lackeys Be Black-Eyes"
"Lads Can Scandal"
"Lash Out Tha Soul"
"Laws So Low-[a-word-u]"
"Le Rock Locker"
"Lead Pipes Paid Sleep"
"Less Lout Sellouts"
"Let Go, Get Lo"
"Life'z Feliz"
"Limos Be Mobiles So--BLIME"
"Littlewood's Wild Tootles"
"Loads-o-Lads Sad, Lo"
"LOL, Dice Collide"
"LOL, Rave All Over"
"Long Ago Goon Gal"
"Lose Chops, Close Shop"
"Lost Rap Portals" []
"Lots of Soft Ol['] Fool St"
"Loud Enough, Ooh, Unglued"
"Loud Mosh Hoodlums" []
"Loud Snap Sound, Pal"
"Loudest Lust Ode"
"Love Dat I Violated"
"Love is So Vile"
"Lucrative Ultra-Vice"
"Lust, Pain, Nuptials"
"Luv Moe Volume"
"M, Sexier Remixes"
"Mad Jef's Def Jams"
"The Main Aim Then: Mean Hit"
"A Manic Maniac"
"Mate, She Heats Me the Same"
"Maxine's Sane Mix"
"Mb. If U, Um, Fib, by Fifi Bumbum"
"MC Boast Combats" []
"MC Boo's Combos" []
"Me [']Til I Melt" []
"Me and Ed, Man, Damned Mean"
"Mean Dog Gone Mad: Damn Ego"
"Melt Ice, Elite MC"
"Menu For More Fun"
"A Method Made Hot: tha Demo"
"Mine of Mo['] Fine"
"Mis-Doer, Dis More"
"A Misstep Pastes [']Im" []
"Mista G's Stigmas"
"Mixed Bag Maxed Big"
"Mm Boi Mob [']Im"
"Mo['] Arson: Arm Soon, Maroons"
"Mo['] Honesty: Money's Hot"
"Mo['] Hos? Oo, SMH"
"Mo['] New Women"
"A Modern Redo, Man"[]
"Moet to Me"
"A Mofo O['] Foma"
"Monied, in Mode, I'm Done"
"Mopy Loon Monopoly on My Pool"
"More Fine, I'm on Fire"
"More Phat Metaphor"
"Mr. Foe for Me"
"Music Noted Undomestic"
"Must-Love-Volume St"
"My Dour Drum, Yo"
"My Fortune: Money Turf"
"My Noise is Money"
"My Passion: Noisy Amps"
"My Shoes Mosh, Yes"
"Nah, Got to Hang"
"Nashty Shanty"
"New Ego Now, Gee"
"New Gibe We Begin"
"New, Youngish, When You Sing"
"A Night Be in the Bag: Bang it, Eh"
"Nil-Gloom Long-Limo Goon Mill"
"Nippers['] Perpins"
"Nite Joy: Enjoy it, Tiny Joe"
"No-[crap] Rap-Con"
"No Be Icy Nice Boy"
"No Crap Con Rap" []
"No Deffer Offender" []
"No Face of Acne"
"No Hermits is the Norm"
"No Hoes Oh Noes"
"No Luster? Lose, Runt"
"Not Quiet Quotient"
"Not Right Nor Tight"
"Not Yet Tonyte"
"Now Turn, Worn Nut"
"Now Wish Who Wins"
"Number Six Burn Mixes"
"O It's the Hotties"
"O Town to Own"
"Oaths by Hats Boy"
"Odd [a-word-u] Saddos"
"Oh, All Holla" []
"Oh, Li'l Holli, Ill Ho"
"Oh, Local Alcohol"
"Oh Mega Homage"
"Oh My My Ho" []
"Oh, Smite This Emo"
"Oh, Super Rue Posh"
"Oh, Tim! I'm Hot to Him"
"Oh, Top to Hop"
"Oh, Us Got So Tough" []
"OK, Am Amok"
"OK Crew We Rock"
"Omigod I'm Good"
"One Fly Felony"
"One Good Goon Ode"
"One Kiss Skies On"
"One Slick Close Kin"
"One So I'd Die Soon"
"Only Big Bling, Yo"
"Oo Thugs Go Shout So Tough" []
"Ooh If I Hoof"
"Ops to Stoop to, Sop"
"Or I Thug it Rough"
"Or Speed Up, Super Dope Dour Peeps"
"Oral Hypes Horseplay"
"Otto's Toots"
"Our Blast So Brutal"
"Our Game: A Morgue" []
"Our Posse Uprose So"
"Pace is a Spice"
"Pardon Me Doper Man"
"Parpin['] Rappin[']"
"Parping Rapping"
"Payback by a Pack"
"PDA Pad"
"Peace? Silly, Especially" []
"Pesos Posse"[]
"Phat Nites in the Past"
"Phatman's Phantasm"
"Pimp Row? Pro-Wimp"
"Pimp Soul Populism"
"Pimped [']Um, I'm Pumped"
"Poised is Dope"
"Pop the Hot Pep"
"Pose On So Open"
"Posh Yard Rhapsody"
"Pow! Hurt! Throw Up"
"Powdery, Dope, Wry"
"Prep, Coy Cop Prey"
"A Prince's Nice Raps"
"Prod [']Em, Mr. Dope Poem Dr"
"Pump Iron or Un-Pimp"
"Pushin['] is Phun"[]
"Pushing Hip Guns"
"Queer as E-Square"
"Rad Pink Kind Rap"
"Rakeem's Remakes"
"Rap Magnet Pentagram" []
"Rap's True Raptures"
"Real City Literacy"
"Regrown Wronger"
"Remainy in My Ear"
"Rep and Pander"
"Ribald Gs['] Bad Girls"
"Rock a Car, OK"
"Rock Can Crack On"
"Rock on or Conk"
"Rock Out, Ruck Too"
"Rock Solid Crook Slid"
"Rouse Euros"
"Sad Lu Lauds U Lads"
"Scan, Hit a Snitch" []
"Scum-Aid Ad Music"
"The Scum Chum Set"
"See What We Hates"
"Seek, Plow, Keep Slow"
"Senorita, I Stare On"
"Sharp Cad Crash Pad"
"She Beat the Base"
"A Sheer Hearse"
"Shook Up Hook Ups"
"A Shot at Hos"
"Should Mo['] Hoodlums Slum-Do, Ho" []
"Shove in One Shiv"
"Shove Me, He Moves"
"Shove Ya So Heavy"
"Sic um cus i'm scum, I"[]
"Sight Me on Some Night" []
"Silent Tinsel"[]
"Simply My Lips"
"Sing on in Song"
"Sing or Be Sobering" []
"Sit, Brag, Big Star"
"Slam U a Slum"
"Slammin['] Man Slim"
"Slew a Cop Slow-Pace"
"A Sly Slay Says Y'All"
"Sly, We Net New Style"
"SMH a Sham"
"Smoove Mooves"
"Snap, So, Pass On"
"Snog Song"
"So [d-word-u] Mad, Son"
"So Gank Nags, OK"
"So Glad as Gold"
"So-Hot Hos to Shoot"
"So Pissed Posse Dis"
"So Tell Us, Sellouts"[]
"So Timid? Dis it Mo[']"
"So Witty Twist, Yo"
"Some Dog Goes Mod"
"Some Lithe Homeliest Elite Mosh"
"Some Spy My Posse"
"The Song Goes Nth"
"Song O['] Goons"
"Soothing This Goon" []
"SOS-Berg Be Gross"
"Soul Ever Revelous"
"Soul Funk Sunk Foul"
"Spar-Raps"
"Stab Mo['] at Mobs"
"Stalking til GANKS"
"Stank Ho to Shank"
"Stay[']n Nasty"
"Stayin['] in Insanity"
"Step That Phattest"
"Stephan's Phatness"
"Stupefy-Fest, Yup"
"Styled Mo['] Modestly"
"Stylish Sly This"
"Sub-Trite Tributes"
"Sumpyn['] Unsymp, Puny Ms"
"Sunniest Sin-Tunes"
"Surely Fo['] Yourself"[]
"Surly Chant, Runty Clash" []
"Surreal Big Burglaries"
"Swiftie if I Stew"
"A Swigger, I Swagger"
"A Swing in Swag"
"T-Money: My Tone"
"Take Mo['] to Make"
"Tally Yo['] Loyalty"
"Tasha's [a-word-u]hat"
"Teenage? Gee, neat"
"Tha Hat: a H/T"
"That Good at Hot, Dog"
"That is at This"
"That Song: Hot Angst"
"A Thing O['] Hot Gain"
"This Cat, His Tact"
"This Fellow's Fliest Howls"
"This Goon Goin['] Host" []
"This Got So Tight"
"This Keg By the Big Sky"
"This Love Lives Hot"
"This Man Has Mint"
"This One So Thine"
"This Punk Thinks Up"
"Throwing Right Now"
"A Thump, Um, Phat"
"A Time I Mate"
"Tiny Harem in My Heart" []
"To Enjoy on Yo['] Jet"
"To Flay Yo['] Flat"
"To Hit it, Tho[']"
"To Hos So Hot"
"To I the Hottie"
"To Make OK, Mate, Take Mo[']" []
"To Sift Fo['] Tits"
"To Slug Ol['] Guts"
"To Swing Wit['] Song Gots Win"
"Toast of Too Fast"
"Tonight's Hot Sting"
"Tons On St"
"Too-Low Ol['] Woot"
"Trade Mo['] to Dream"
"Trapped Dat Perp"
"Trick, We Wreck It"
"Trim Shy Rhymist"
"Trop Fun Up Front"
"U GOTS GUSTO"
"U No Be Bueno"
"Uh, A Lover Overhaul"
"Uh, Gots to Gush So, Thug: Ho, Guts" []
"Uh, Tip, Hit Up it, Hup"
"Um, Be Stout, Bust [']Em Out"
"Um, Bla Album"
"Um, Love Volume" []
"Um, This, it Hums"
"Umm, Mix a Maximum"
"Un-Dorks So Drunk" []
"Undergoing Guerdoning"
"Us Got Gusto" []
"USA Be Top, So Upbeat"
"Very Suave Verve, Us? Ay"
"A Vibe Hour Behaviour"
"VIP Seen Pensive"
"A Vision: I So Vain"
"Volunteers Unto Revels"
"Way Up Aw Yup" []
"Ways to Swat, Yo"
"We All Love a Low Level"
"We Band to Beat Down"
"We is Wise"
"We Mark Mr. Weak"
"We Pros['] Powers"
"We Say Aw Yes"
"We Sear a Sewer Raw, See"
"We Storm [']Em Worst"
"We Style Sweetly"
"We're Back. Er, Be Wack"
"Wham, Note the Woman"
"What No Hat Now"
"Where Can I Care, Whine"
"Where I Hew Ire"
"Where is His Ewer"
"Who Felt the Flow"
"Who Gets It? We Got This"
"Why Not Be By the Now"
"The Wild Lewd Hit"
"Wino Hither, Inherit How"
"Wins Got to Swing" []
"A Wise Memo: I'm Awesome"
"With Mean White Man"
"The Wolf Who Left Floweth" []
"Woof, Pull, Follow Up"
"WootKru Workout: OK or Wut"
"Wrek-Krew"
"Y'Start a Tryst"
"Ya Best Stay Be Beasty"
"Yah, Live Heavily"
"Yawl as Always"
"Yer Ma is a Misery"
"Yes, Boom Some Yob"
"Yes, Flow, We So Fly"
"Yes, Porous Your Posse: Yo, Poseurs"
"Yes to Yo['] Set Yet, So"
"Yo All Loyal Lay Lo" []
"Yo, Bam, Ya Mob"
"Yo, Be With White Boy"
"Yo, Bop, Po['] Boy"
"Yo, Cap a Copy-Cop, Ya"
"Yo Czars So Crazy"
"Yo Dames Someday Say Do Me"
"Yo Fueling Young Life"
"Yo Girl I Glory"
"Yo, Hater, a Theory"
"Yo, He's So Hey-Oh-Yes"
"Yo, Hikes is Hokey"
"Yo, Hurl Hourly"
"Yo, Jet In, Enjoy It" []
"Yo, Luke, I Like You"
"Yo, Mesh, Homeys"
"Yo, My Sign: Noisy Gym Misogyny"
"Yo, Pals, Play So"
"Yo, Thirst's This Story"
"Yo, When? Now, Hey"
"Yolo'n Loony"
"Yon Ol['] Loony" []
"You Ain't in, Ya Out"
"Your Voice, I Cover You"
"Yum Lick I'm Lucky"
"Zip as I Spaz"
"Zone-Out Zoo Tune"
"Zucchini Iz Un-Chic"

table of mob chants [xxm02]
blurb
"'And shout thousand daunts, ho!'"
"'BS! Low blows!'"
"The chants pause. 'Accursed cue-cards!'"
"'Ehh, still the shill!'"
"'Evil-gripe pig, revile privilege!'"
"Furores for sure."
"'Graded now: Dead wrong! Downgrade!'"
"Hear out our hate!"
"'In your shell? Sly, unholier!'"
"'Leading? Dang lie!'"
"'Lecherous Recluse, oh!'"
"'Let's war, wastrel!'"
"'LIAR LAIR!'"
"Marchers. Charmers!"
"Mo['] pupils['] populism." []
"Mobile lie mob."
"Mobs['] cries. 'Some cribs, crime boss!'"
"'More spew EMPOWERS!'"
"'Neutrals run stale!'"
"No saint: sin a ton!"
"'Not happy, phony? Apt!'"
"'One-ups us? Nope!'"
"'Pour ires or rise up, superior!'"
"A protest, pro-state."
"'Push in! PUNISH!'"
"'RADICAL! CAD! LIAR!'" []
"'Rep, tots! Protest!'"
"'Roguery now! You're wrong!'"
"Saint? A snit!"
"'Solitude's dissolute!'"
"Surging Urgings."
"'TYRANT'S RANT STY!'"
"'Venerable? Never able!'"
"'We throng the wrong!'"
"'Wordsmith? Worth's dim!'"
"'Yesterday's strayed, yes?'"

table of oldies singers [xxm03]
blurb
"Abject Cat Jeb"
"Absurd Bard Su"
"Alto Ben Labonte" []
"Alto Bo Lobato"
"Alto Cyr Claytor"
"Alto Hilburn Halliburton"
"Alto Minh Hamilton"
"Alto Nevin Valentino"
"Alto Toal"
"Angsty Ty Gans"
"Any-Clot Clayton"
"Avid Diva Vida"
"Avowedly Way-Loved Davy Lowe"
"Bad-Shape-Bashed Pa"
"Banjo Rae Bejarano"
"Bass Ely Bayless"
"Bass Haugen Sensabaugh"
"Bearded Bard Dee" []
"Bent Ol['] Belton-Noblet"
"Big-Song Boggins"
"Bleak Ry Barkley"
"Bleary Al Byer"
"Blue Al Uballe"
"Blue Art Breault"
"Blue Ava Labauve"
"Blue Bert Luebbert"
"Blue Boy Bub Oyle"
"Blue Chara Laubacher"
"Blue Cher Buechler"
"Blue Daron Abdelnour"
"Blue Don Boulden"
"Blue Eloisa Beausoleil"
"Blue Elton Buentello" []
"Blue Elvia Belliveau"
"Blue Evia Beliveau"
"Blue Farah Faulhaber"
"Blue Gita Gibeault"
"Blue Grant Altenburg"
"Blue Lea Belleau"
"Blue Ma Elbaum"
"Blue Mattie Teitelbaum"
"Blue Norme Melbourne"
"Blue Rae Bauerle"
"Blue Sona Banuelos"
"Blue Tam Bultema"
"Boomer Rob-Moe Broome" []
"Boy Del Bodley"
"Boy Ed Dobey"
"Boy Gil Gilboy"
"Boy Len Boylen"
"Boy Leo Oboyle"
"Boy Mel Mobley"
"Boy Ned Boyden" []
"Boy Son Boyson"
"Breathy Beth Ray Bayther"
"Broody Boy Rod"
"Bulbous Bob Sulu"
"Bulbous Soul Bub" []
"California [if player is male]Olin Faraci[else]Fiona Clair[end if]"
"Careworn [if player is male]Owen Carr[else]Cora Wren[end if]"
"Cheated Cath Dee"
"Chiptune Ute Pinch"
"Chronic-Chic Ron"
"Coherent [if player is male]Chet Oren[else]Cher Eton[end if]" []
"Common Sal Malcomson"
"Cool Amend Delmonaco"
"Cool Angel Colangelo"
"Cool Ann Colonna"
"Cool Brasky Claybrooks"
"Cool Darcel Dellarocco"
"Cool Dora Colorado"
"Cool Dowling Collingwood"
"Cool Edward Calderwood" []
"Cool Eric Locicero"
"Cool Erin Cornelio"
"Cool Finer Florencio"
"Cool Gina Cogliano"
"Cool Han Calhoon"
"Cool Iona Loiacono"
"Cool Kevin Kolenovic"
"Cool Kid Doolick"
"Cool Lev Covello"
"Cool Levi Coviello"
"Cool Lyn Conolly"
"Cool Lynn Connolly"
"Cool Man McAloon"
"Cool Merk Morelock"
"Cool Meryl Collymore"
"Cool Mona Lomonaco"
"Cool-Name [if player is male]Alec Moon[else]Loo Mance[end if]"
"Cool Paley Claypoole" []
"Cool Sam Mascolo"
"Cool Si Colosi"
"Cool Sinner Cornelison"
"Cool Star Locastro" []
"Cool Vita Colavito"
"Croonings Consignor Ron Scogin"
"Croony Conroy"
"Cry-Sob Crosby"
"Cute Ard Decatur"
"Cute Arlena Laracuente"
"Cute Barton Betancourt"
"Cute Breton Bonecutter"
"Cute Corina Tucciarone"
"Cute Dora Courtade"
"Cute Dori Coudriet"
"Cute Fae Fecteau"
"Cute Ham Cheatum"
"Cute Hoston Touchstone"
"Cute Iona Aceituno"
"Cute Isa Escutia"
"Cute Kerr Rueckert"
"Cute Len Lucente"
"Cute Loghry Clougherty"
"Cute Lon LeCount"
"Cute Lora Lucatero"
"Cute Lori Cloutier" []
"Cute Loura Lacouture"
"Cute Misha Schuitema"
"Cute Nanci Antenucci"
"Cute Norman Counterman"
"Cute Orr Courter"
"Cute Rash Tauscher"
"Cute Robnett Bettencourt"
"Cute Ron Cureton" []
"Cute Ryon Courtney"
"Cute Sala Lacuesta"
"Cute Seth Schuette"
"Cute Shea Eustache"
"Cute Sher Teuscher"
"Cute Shon Schouten" []
"Cute Sky Stuckey"
"Cute Tora Crotteau"
"Cute Ula Cuautle"
"Cyril's Lyrics"
"Darling Lingard"
"Darn Fly Fryland"
"Darn Glib Girl Band"
"Dashing Dan Gish"
"Debonair [if player is male]Rob Daine[else]Andi Boer[end if]"
"Deep Alan De La Pena"
"Deep Ara Paradee"
"Deep Ira Pereida"
"Deep Josh DeJoseph"
"Deep Lis Speidel"
"Deep Lorri Delpriore"
"Deep Ly Pedley"
"Deep Lyn Pendley"
"Deep Ray Pereyda"
"Deep Tori DePietro" []
"Derelict Del Trice"
"Desperate [if player is male]Ted Pearse[else]Tera Speed[end if]"
"Destroyed [if player is male]Teddy Rose[else]Dede Story[end if]"
"Dire Bo Brodie"
"Dire Euna Riendeau"
"Dire Hans Sheridan" []
"Dire Jan Jardine" []
"Dire Lew Weidler"
"Dire Luna Lindauer" []
"Dire Minta DeMartini"
"Dire Mose Medeiros" []
"Dire Pam Dampier"
"Dire-Rock Roderick"
"Dire Rolf Reliford" []
"Dire Tom DeMitro"
"Dire Wen Weidner" []
"Dire Wm Widmer"
"Dirge-Led Eldridge"
"Disheartened Deidre Athens"
"Diva Eryn Vineyard" []
"Doom Mood Odom"
"Doyle's Yodels"
"Drab Bard Brad"
"Drawlin['] Lin Ward"
"Drawling Ward Ling" []
"Drawly Ly Ward"
"Dreamlike Mike Adler"
"Dreamy May Erd"
"Dreary Red Ray Ardrey"
"Dulce Ced Lu"
"Emo Boy Bo Moye"
"Emo Moe"
"Enormo-Mooner Ron Moe" []
"Failed Luc Caulfield"
"Familiar Fair Liam"
"Five Sorta Favorites" []
"Flowery Rolf Wye"
"Foreigner Rene Frigo"
"Freer Old Doerfler-Releford"
"Friendly Fly Derin"
"Funk Loser Fulkerson"
"Gamed Madge"
"Glittery Ly Rettig"
"Good Time Diego Tom"
"Gramophonist-Monographist Gari Thompson"
"Green-Rid Ned Grier-Derringer"
"Griefy Ferg Yi"
"Grim Alda, Madrigal"
"Grim-Luck Glum Rick"
"Hades Heads" []
"Hangdog Dan Hogg"
"Hard-Luck Chad Krul"
"Hard Rockin['] [if player is male]Darrin Koch[else]Darci Krohn[end if]"
"Harmonic Choirman Mica Horn"
"Harmonistic Harmonicist [if player is male]Mo Christian[else]Simona Richt[end if]"
"Haunted Tan-Hued [if player is male]Ned Auth[else]Eda Hunt[end if]" []
"Hearty Ty Hare"
"Hick Alma Michalak"
"Hick Bart Bickhart"
"Hick Bowles Chlebowski"
"Hick Burma Krichbaum" []
"Hick Elma Michalek"
"Hick Elva Havlicek"
"Hick Ernst Schnitker"
"Hick Ian Chaikin"
"Hick Joan Hojnacki"
"Hick Jovan Jankovich"
"Hick Kraus Kucharski"
"Hick Leone Kincheloe"
"Hick Les Schilke"
"Hick Lon Kinloch"
"Hick Lyne Hinckley"
"Hick Mila Michalik"
"Hick Neil Kichline"
"Hick Red Hedrick"
"Hick Reid Heidrick"
"Hick Ron Hornick"
"Hick Salim Michalski" []
"Hick Stan Stachnik"
"Hick Sun Huckins"
"Hick Ward Hardwick"
"Hip Alton Oliphant"
"Hip Arlen Halperin-Lanphier"
"Hip Cat Pat Chi"
"Hip Cora Porchia"
"Hip Crothers Christopher"
"Hip Dora Prihoda"
"Hip Duane Dauphine"
"Hip Elsa Heaslip"
"Hip Elsy Shipley"
"Hip Elza Hazelip"
"Hip Erma Ephraim"
"Hip Esta Hietpas"
"Hip Gent Thigpen"
"Hip Lan Alphin"
"Hip Lecy Chipley"
"Hip Lee Heiple"
"Hip Lisa Haislip"
"Hip Long Golphin"
"Hip Lyle Philley"
"Hip Macon Champion"
"Hip Maple Pamphile" []
"Hip Moe Opheim"
"Hip Oscar Schapiro"
"Hip Rosa Shapiro" []
"Hip Sal Haslip"
"Hip Sol Hislop" []
"Hip Sung Shuping" []
"Hip Taubert Breithaupt"
"Hot Adler Aderholt" []
"Hot Akers Hoekstra"
"Hot Berna Rathbone" []
"Hot Bo Booth"
"Hot Clark Lockhart"
"Hot Cleo the Cool"
"Hot Dan Donath"
"Hot Dyer Doherty"
"Hot Elbert Berthelot"
"Hot Elma Lamothe"
"Hot Gale Holgate"
"Hot Glennis Shingleton"
"Hot Gus Stough" []
"Hot Huang Haughton"
"Hot Huong Houghton"
"Hot Jenson Johnstone"
"Hot Larsen Rosenthal" []
"Hot Len Helton"
"Hot Lester Hostetler"
"Hot Lon Holton"
"Hot Lyn Hylton"
"Hot Man Thoman"
"Hot Mason Thomason"
"Hot Milan Hamilton" []
"Hot Nasir Hairston" []
"Hot Nat Hatton" []
"Hot Nigel Leighton"
"Hot Niles Holstein"
"Hot Noe Hooten"
"Hot Norbert Brotherton"
"Hot Plain Oliphant" []
"Hot Ray Yorath"
"Hot Rey Yother" []
"Hot Samson Thomasson"
"Hot Satan Thanatos"
"Hot Soren Thoreson"
"Hot Su South" []
"Hot Trena Atherton"
"Hot Twin Whitton"
"Hot Warm Ma Worth"
"Hot Wells Shotwell"
"Hot Wren Worthen"
"Howler Wohler"
"Idol Ann Landino"
"Idol Anna Andolina"
"Idol Arlen Nardiello"
"Idol Aron Ardolino"
"Idol Art Altidor"
"Idol Beau Bilodeau"
"Idol Bren Reinbold"
"Idol Cain DiNicola"
"Idol Carl Cardillo"
"Idol Cesar Decarolis"
"Idol Damon Lindamood"
"Idol Deb Diebold"
"Idol Ezra Elizardo"
"Idol Gena Diangelo"
"Idol Hess O'Shields"
"Idol Ivan Vindiola"
"Idol Les Sedillo"
"Idol Lin Dillion"
"Idol Mae Damelio"
"Idol Marg Grimaldo"
"Idol Mei Demilio"
"Idol Neal Daniello"
"Idol Olga Alligood"
"Idol Rae Deloria"
"Idol Rena Leonardi"
"Idol Sana Saladino"
"Idol Serna Leonardis"
"Isolated [if player is male]Otis Dale[else]Leda Tsoi[end if]"
"Jinxed Jed Nix"
"Jumbled Jed Blum"
"Kewl Welk" []
"Kind Alber Birkeland"
"Kind Amos Domanski"
"Kind Azhar Zahradnik"
"Kind Bo Bodkin-Dobkin"
"Kind Cai Kincaid"
"Kind Cher Hendrick"
"Kind Elias Danielski"
"Kind Erwin Drinkwine"
"Kind Geri Dierking"
"Kind-Heart [if player is male]Dirk Thane[else]Kit Harden[end if]" []
"Kind Hog Hodgkin"
"Kind Isabel Niedbalski"
"Kind Karl Kirkland"
"Kind Kia Kinkaid"
"Kind Lois Dolinski"
"Kind Ma Kidman"
"Kind Mac Dickman"
"Kind Mace Dieckman"
"Kind Mae Diekman"
"Kind Maren Kinderman"
"Kind Ochsner Hendrickson"
"Kind Reba Bednarik"
"Kind Rex Kendrix"
"Kind Rina Kinnaird"
"Kind Sam Madkins"
"Kind Si Diskin"
"Kind Sona Adkinson"
"Kind Su Duskin" []
"Klif's Filks"
"Lachrymose [if player is male]Myles Roach[else]Cary Holmes[end if]"
"Lad Nash Ashland"
"Li'l Bess Bissell"
"Li'l Kip Killip"
"Lively Vi Lyle"
"Lone Wolf Flo Enlow"
"Loner April Parrinello"
"Loner Bast Albertson"
"Loner Cal Colleran"
"Loner Cami Marcelino"
"Loner Dacia Candelario" []
"Loner Dahl Hollander"
"Loner Deb Bolender"
"Loner Debra Oberlander"
"Loner Ed Olender"
"Loner Estes Rosensteel"
"Loner Geist Oesterling"
"Loner Gil Ollinger"
"Loner Hal Holleran"
"Loner Hustad Southerland" []
"Loner Ida Leonardi-Andreoli"
"Loner Ira Lorraine"
"Loner Jada Alejandro"
"Loner Keva Vanroekel"
"Loner Lara Arrellano"
"Loner Les Ellerson"
"Loner Lida Nardiello"
"Loner Mack Lockerman"
"Loner Mila Romanelli" []
"Loner Ola Orellano"
"Loner Patil Pontarelli"
"Loner Sade Rosendale" []
"Loner Sal Ornellas"
"Loner Shad Rosendahl" []
"Loner Silva Villasenor"
"Loner Sura Raulerson"
"Loner Tad Alderton"
"Loner Thad Leonhardt"
"Loner Tim Tomerlin"
"Loner Tobi Bertolino"
"Loner Zana Lorenzana"
"Lonesome Mo Olesen"
"Lorn Abe Lebaron"
"Lorn Ahmed Holderman"
"Lorn Asha Haralson"
"Lorn Caleb Carbonell"
"Lorn Codi Coldiron"
"Lorn Debera Oberlander"
"Lorn Eda Olander"
"Lorn Elsa Ornellas"
"Lorn Etta Tarleton"
"Lorn Gail Granillo"
"Lorn Gena Lonergan"
"Lorn Gil Rolling"
"Lorn Ida Orlandi"
"Lorn Larae Arrellano"
"Lorn Leah Holleran"
"Lorn Leigh Hollinger"
"Lorn Lois Rollison"
"Lorn Mae Monreal"
"Lorn Meda Moreland"
"Lorn Mei Merlino"
"Lorn Mia Molinar"
"Lorn Oda Orlando"
"Lorn Risa Larrison"
"Lorn-Sack Clarkson"
"Lorn Shera Harrelson"
"Lorn Tesha Rosenthal"
"Lorn Theda Leonhardt"
"Lorn Zoe Lorenzo"
"Loser Ada Delarosa"
"Loser Alvin Villasenor" []
"Loser Ava Arevalos"
"Loser Bee Ebersole"
"Loser Dan Roseland"
"Loser Dario Delrosario"
"Loser Dawn Rosenwald"
"Loser Dean Rosendale" []
"Loser Dina Leonardis"
"Loser Dunn Rosenlund"
"Loser Em Melrose"
"Loser Hy Horsley"
"Loser Iva Oliveras"
"Loser Kin Sloniker"
"Loser King Gilkerson"
"Loser Kyle Roskelley"
"Loser Laci Caroselli"
"Loser Latin Santorelli"
"Loser Len Ellerson" []
"Loser Lev Servello" []
"Loser Ling Ingersoll"
"Loser Lis Rosselli"
"Loser Mo Morelos"
"Loser Odis De Los Rios"
"Loser Pat Portales"
"Loser Sanda Alessandro"
"Loser Sid DelRossi" []
"Loser Sina Israelson"
"Loser Su Roussel"
"Loser Van Alverson"
"Loser Wink Wilkerson"
"Lost Abe Seabolt"
"Lost Alec Castello-Costella"
"Lost Amee Altemose"
"Lost Arline Santorelli"
"Lost Arn Ralston"
"Lost Ava Salvato-Stavola"
"Lost Bree Stroebel"
"Lost Brenda Balderston"
"Lost Carri Trosclair"
"Lost Clair Castrillo"
"Lost Cole Costello"
"Lost Cora Locastro"
"Lost Crank Clarkston"
"Lost Dana Dalsanto"
"Lost Elmer Mosteller"
"Lost Gena Stangelo"
"Lost Gene Egleston-Egelston"
"Lost Ian Soltani-Santoli"
"Lost Karmen Klosterman"
"Lost Ken Skelton"
"Lost Laci Castillo"
"Lost Lance Castellon-Castellon-Collantes"
"Lost Leo Sotello"
"Lost Leon Tolleson"
"Lost Leta Stellato"
"Lost Lin Tillson"
"Lost Lina Santillo"
"Lost Linnea Antonellis"
"Lost Lorie Torsiello"
"Lost Ludie Estudillo"
"Lost Nat Slatton"
"Lost Neal Stallone"
"Lost Neil Elliston"
"Lost Nick Slotnick"
"Lost Ogden Goldstone"
"Lost Olin Tollison"
"Lost Regine Oesterling"
"Lost Ron Rolston"
"Lost Rose Rosselot"
"Lost Si Soltis"
"Lost Val Stovall"
"Loudest Soul Ted" []
"Love-Drunk Don Kluver"
"Loving Gil Von Volgin"
"Low Sad Oswald"
"Lyricist Cristy Li"
"Milksop Sim Polk"
"Miserable Reba Miles"
"Mod Len LeMond"
"Moldiest Most-Idle Melodist [d-t] Miles"
"Mondegreen [if player is male]Gene Redmon[else]Doreen Meng[end if]"
"Moonster Montrose"
"Motley Tom Ely"
"Mr. Oh-Any-Harmony" []
"Mug Alan Mangual"
"Mug Ana Guaman"
"Mug Arie Maugeri"
"Mug Barb Bamburg"
"Mug Bernard Bumgardner"
"Mug Bert Gumbert"
"Mug Chana Caughman"
"Mug Dara Madruga"
"Mug Denis Siegmund"
"Mug Dion Guimond"
"Mug Dione Domingue"
"Mug Dona Gaumond"
"Mug Ed Mudge"
"Mug Edison Domingues"
"Mug Eli Miguel"
"Mug Eric Mcguire"
"Mug Erma Rummage"
"Mug Hal Mughal"
"Mug Hana Maughan"
"Mug Ian Mungia-Gumina"
"Mug Ione Minogue"
"Mug Ira Murgia"
"Mug Israel Margulies"
"Mug Jann Jungman"
"Mug Lacey Mcgauley"
"Mug Lanita Manigault"
"Mug Lettie Guilmette"
"Mug Linda Maulding"
"Mug Lori Gilmour"
"Mug Nat Gutman"
"Mug Nat Tugman"
"Mug Oren Mounger"
"Mug Rae Gaumer"
"Mug Rana Grauman"
"Mug Rick Mcguirk"
"Mug Ronni Mourning"
"Mug Tana Tanguma"
"Mug Toni Guimont"
"Muse Roy Seymour" []
"Musical Ms. Lucia"
"Mutual Umlaut"
"Natch-Loser Charleston"
"Nervy Ervyn Vyner"
"Next-Door [d-t] Oxner"
"No-Girl Loring Gorlin"
"Nomad Damon Monda"
"Nomady Dynamo Don May"
"Nostalgic Gnostical [if player is male]Clint Gosa[else]Staci Long[end if]"
"Ol['] Carny Carolyn" []
"Ol['] Max Lomax"
"Ol['] Tray Taylor"
"Old Abel Bedolla"
"Old Amanda Maldanado"
"Old Anisa Saladino"
"Old Ann Noland-Landon"
"Old Aron Orlando"
"Old Asa Losada"
"Old Avis DiSalvo" []
"Old Ben Bolden"
"Old Berna Bolander" []
"Old Bo Blood"
"Old Caren Calderon" []
"Old Cari Dicarlo"
"Old Carl Collard"
"Old Case Salcedo"
"Old Chae Deloach"
"Old Clair Cardillo"
"Old Clare Cardello" []
"Old Dan Donald"
"Old Debi Diebold"
"Old Elza Dolezal"
"Old Fran Lanford"
"Old Frank Lankford"
"Old Fred Ledford" []
"Old Gary Gaylord"
"Old Gena Dangelo"
"Old Gina Galindo"
"Old Hack Hadlock"
"Old Hagan Hoagland"
"Old Herman Holderman"
"Old Irma Milardo"
"Old Lenny Donnelly"
"Old Levan Loveland"
"Old Lin Dillon" []
"Old Lise Sedillo"
"Old Lottie Doolittle"
"Old Lowe Woodell"
"Old Lucia Caudillo"
"Old Ly Lloyd"
"Old Mae Olmeda"
"Old Manie Mendiola"
"Old Maren Moreland"
"Old Meagan Magdaleno"
"Old-Name Mondale"
"Old Nat Dalton"
"Old Neal Lalonde"
"Old Oleg Goodell"
"Old Olga Goodall"
"Old Rambo Lombardo"
"Old Reba Laborde" []
"Old Rena Leonard"
"Old Rina Orlandi"
"Old Sean Adelson"
"Old Sharen Rosendahl" []
"Old Sinner [if player is male]Red Nilson[else]Linn Erdos[end if]"
"Old-Song Logsdon"
"Old Tuan Outland-Daulton" []
"Old Wonda Woodland"
"On-Meter Emerton"
"Operatic Pia Ector"
"Organist Rita Song"
"Outcast Stu Cato"
"Plain Ace Palencia"
"Plain Aldo Palladino"
"Plain Amos Palmisano"
"Plain Cole Pellicano"
"Plain Errol Parrinello" []
"Plain Ester Pearlstein"
"Plain Gale Paganelli"
"Plain Genna Pangelinan"
"Plain Les Spinella"
"Plain Sal Aspinall"
"Plain Sky Lapinsky"
"Plain Teo Lapointe" []
"Po['] Bo Boop"
"Po['] Daniel Denapoli"
"Po['] Diane Peinado"
"Po['] Ernest Peterson"
"Po['] Ruth Thorup"
"Poor [n-t] Tropeano"
"Poor Mance Cooperman"
"Poor Mey Pomeroy"
"Poor Stein Petrosino"
"Poor Tisa Saporito"
"Poor Vince Provencio"
"Posh [n-t] Stanhope" []
"Posh Al Opsahl"
"Posh Andres Shepardson"
"Posh Cari Schapiro" []
"Posh Carmen Macpherson"
"Posh Ewan Openshaw"
"Posh Geri Grieshop"
"Posh Ira Shapiro" []
"Posh Itcher Christophe"
"Posh Kara Prohaska"
"Posh Lin Philson"
"Posh Man Hampson"
"Posh Mona Shoopman"
"Posh Nola Alphonso"
"Posh Sherri Shropshire"
"Ray-the-Earthy Thayer" []
"Recreator Carretero"
"Red Hot Ed Roth"
"Rejected Jed Crete"
"Resonant [if player is male]Stan Nero[else]Ann Oster[end if]"
"Retread Art Reed"
"Riven Ervin Viner"
"Rob-Ray Yarbro" []
"Rolling Ron Gill" []
"Romantic Carin['] Tom" []
"Rude Tenor Roundtree"
"Sad Alan Saldana"
"Sad Alderson D'Alessandro"
"Sad Avril Saldivar"
"Sad Beryl Bardsley"
"Sad Caren Cardenas" []
"Sad Cole Salcedo" []
"Sad Curt Custard"
"Sad Dino Addison"
"Sad Drew Edwards" []
"Sad Ector Decastro"
"Sad Elois Dalessio"
"Sad Emert Demarest" []
"Sad Gertie Eastridge"
"Sad Guy Gus Day"
"Sad Ilona Saladino" []
"Sad Ivan Vadnais"
"Sad Kami Adamski"
"Sad Laverna Van Arsdale"
"Sad Lavon Sandoval" []
"Sad Len Landes"
"Sad Leon Adelson" []
"Sad Leora Delarosa" []
"Sad Letha Halstead"
"Sad Levi Desilva-Vidales" []
"Sad Lin Landis"
"Sad Lina Saladin"
"Sad London Donaldson"
"Sad Lonnie Danielson"
"Sad Loren Landeros" []
"Sad Mei Demasi"
"Sad Minh Dishman"
"Sad Mona Adamson"
"Sad Moni Madison"
"Sad Neil Daniels"
"Sad Nell Sandell"
"Sad Noe Deason" []
"Sad Nurse Saunders" []
"Sad Olga Salgado"
"Sad Orval Salvador"
"Sad Otto Tostado"
"Sad Reece Decesare" []
"Sad Rena Andreas"
"Sad Rhee Rasheed" []
"Sad Rina Sardina"
"Sad Tera Estrada"
"Sad Toni Disanto"
"Sad Tyler Stradley"
"Sad Wren Andrews"
"Savory Ray Vos"
"Schmo Aline Michaelson"
"Schmo Anne Schoneman"
"Schmo Atkin Mackintosh" []
"Schmo Ella Moschella"
"Schmo Ellery Schollmeyer"
"Schmo Ian Maschino"
"Schmo Neil Michelson"
"Schmo Perna Macpherson" []
"Schmo Prieto Coopersmith"
"Schmo Rae Cashmore"
"Schmo Ree Chesmore"
"Schmo Tina Macintosh"
"Seductive Stevie Duc"
"Shmoe DeHart Mothershead"
"Shmoe Kera Shoemaker"
"Shmoe Lord Soderholm"
"Shmoe Luc Suchomel"
"Shmoe Nance Schoeneman"
"Shmoe Nat Matheson-Stoneham"
"Shmoe O'Brien Boomershine"
"Shmoe Stan Thomassen"
"Shmoe Terri Strohmeier"
"Shmoe Terry Strohmeyer"
"Shmoe Tina Mathieson"
"Shmoe Twan Mathewson" []
"Shmoe Una Houseman"
"Silk-Banjo  Jablonski"
"Simple Ann Spielmann"
"Simple Erick Picklesimer"
"Simple Gena Spiegelman"
"Sloshed Old Hess"
"Slow Andre Rosenwald" []
"Slow Cather Schowalter"
"Slow Dann Lansdown"
"Slow Deakin Lewandoski" []
"Slow Deann Lansdowne"
"Slow Del Doswell"
"Slow Determan Westmoreland"
"Slow Etienne Loewenstein"
"Slow Evan Vanselow"
"Slow Hal Shallow" []
"Slow Kandi Landowski"
"Slow Kathern Walkenhorst"
"Slow Ken Knowles"
"Slow Kina Wolanski"
"Slow Kori Orlowski"
"Slow Len Wellons"
"Slow Les Sowells"
"Slow Lin Willson"
"Slow Marth Wahlstrom"
"Slow Mikki Milkowski"
"Slow Miska Maslowski"
"Slow Nat Walston"
"Slow Ned Denslow-Lowndes"
"Slow Niki Wilkison-Wolinski"
"Slow Pattie Postlewait"
"Slow Rand Rowlands"
"Slow Retha Showalter"
"Slow Rey Worsley"
"Slow Tad Ostwald"
"Slow Tennie Lowenstein"
"Slow Thayer Aylesworth"
"Slow Vaden Swoveland"
"Smooth Linn Thomlinson"
"Smooth Mia Shimamoto"
"Smooth Nat Thomaston"
"Smooth Price Coopersmith" []
"Snakebit Skint [a-b]"
"So-Alive [if player is male]Leo Avis[else]Eva Lois[end if]"
"So-Alone Neal Soo"
"So-Emo Moose"
"So-Gritty Troy Gist"
"So-Tender Ted Rosen"
"Soft Guy Gus Foyt"
"Solid Gold Dodo Gills"
"Somber Ol['] Mel Boros"
"Sot-Ode DeSoto"
"Spry Kathe, the Sparky Perky Star"
"Still-Young Tyson Ullig"
"Straining Artis Ginn"
"Sugary Gus Ray"
"Sulking Sunk Gil"
"Sulky Lu Sky"
"Swayer Sawyer" []
"Sweet Aldrich Walterscheid"
"Sweet Lonnie Loewenstein" []
"Sweet Nolin Lowenstein" []
"Sweet Richman Schwieterman"
"Swell Amy Walmsley"
"Swell Arch Schwaller"
"Swell Dina Willadsen"
"Swell Nenita Wallenstein"
"Swell-Note Wellstone"
"Swell Tea Sawtelle"
"Tenor Chris Chronister"
"Tenor Dahl Leonhardt" []
"Tenor Dan Anderton"
"Tenor Gus Sturgeon" []
"Tenor Lash Rosenthal" []
"Tenor Levy Yelverton"
"Tenor Mo Montero"
"Tenor Sam Osterman" []
"Tenor Whiting Witherington"
"Tiemless Lee Smits"
"To-Filk-It Folk"
"Toasting Tangoist [i-n] Gotts"
"Too-Dire Ode Trio"
"Top Loser Lopresto"
"Top-Ode Ed Toop"
"Tortured [d-t] Ruter"
"Tramp Chet McPhatter"
"Tramp Eli Palmiter"
"Tramp Ernie Parmentier"
"Tramp Ken Trenkamp"
"Tramp Leia Palmatier"
"Tramp Leon Palmerton" []
"Tramp Rene Parmenter"
"Tres Beau Bret Esau"
"Twangy Wygant"
"Underdog Geno Rudd" []
"Unsocial Icon Saul"
"Using-Gin Su"
"Versatile [if player is male]Travis Lee[else]Val Steier[end if]"
"Virtuoso Su Rovito"
"Vulnerable [if player is male]Ruben Valle[else]Eva Brunell[end if]"
"Wan Lady Wayland"
"Wan Max Waxman"
"Warble-Bawler Reb Law"
"Way-Lost Twyla So"
"Weathered [if player is male]Reed Wheat[else]Thea Wrede[end if]"
"Welcomer Clem Rowe"
"Wistful Lu Swift"
"Worn Alec Lowrance" []
"Worn Bell Brownell"
"Worn Ben Newborn"
"Worn Ed Rowden-Downer"
"Worn Gage Waggoner"
"Worn Hal Lawhorn"
"Worn Heath Hawthorne"
"Worn Kaci Nawrocki" []
"Worn Kam Workman"
"Worn Kelsi Wilkerson" []
"Worn Nilsa Rawlinson"
"Worn Sid Windsor"
"Worn Theo Howerton"
"Worn Tisha Ainsworth" []
"Yodeler Rey Odle"
"Yodeling Lyn Diego"
"Yon Old Noodly Don Loy"
"Yowler Rowley" []

this-book is a number that varies. this-book is usually 0.

table of random books [xxm4] [tob]
blurb	prio
"[a-b], Russ: ABUSERS[r], by Bess Rau"	0
"[a-word-u] Zit Zen: Snazziest[r], by Issa Zentz"
"[d-t] Shed the Odds[r], by Ted Dosh"
"[d-t], Snub Not Buds[r], by Stu Bond"
"[d-word-u], Girl, Grim Land[r], by [if player is male]Dr. Gilman[else]Marg Lind[end if]"
"[if player is male]He Eats[else]She Ate[end if] the Sea[r], by Teesha Athees"
"[if player is male]He Resents[else]She Enters[end if] Thereness[r], by Tess Neher"
"[mle], a Lame Male[r], by Elma Elam" [x]
"[sturd], [sturd], [sturd]!!![r] by Dr. Stu Durst"
"[tt] Favre, Favorite to Vie Far[r], by Iva Forte"
"A-Listed: Details[r], by Adelaide Stilts"
"A'Ight, Git? Ha[r], by Gita Haight"
"A'Rite, I Tear a Tire[r], by Artie Etria" []
"Abbey Cho's Sobby Ache[r], by [if player is male]Cobey Bash[else]Sheya Cobb[end if]"
"Abbie's Babies[r], by Seb Iba"
"ABC is Basic![r] by Cassi Babic"
"ABCDEFGHI Chafed Big[r], by Fidge Bach"
"Abhorrent, Earth-Born[r], by [if player is male]Robert Han[else]Berna Roth[end if]" []
"Abide Inert, Inebriated[r], by Benita Reid" []
"Able Arty Betrayal[r], by [if player is male]Bart Ealy[else]Tara Blye[end if]" []
"Ably, Alby[r], by Baby Lyla"
"About KC: a Buck to Back Out[r], by Cat Kubo"
"The Abyss Hastes By[r], by Shay Best" []
"Academy Day Came[r], by Mac Eady"
"Ace Gods So Caged[r], by Ced Gosa"
"Ace Rest Creates a Secret[r], by Cat Rees"
"Ace Yard Race Day[r], by Cary Ade"
"Ace's Case[r], by CeCe & Sasa"
"Ach, Get on to Change[r], by Chet Goan"
"Ach, Sir: Chairs I Crash[r], by Charis Sarich-Raisch"
"Achy Lull[r], by [if player is male]Clay Hull[else]Lucy Hall[end if]"
"Achy Odes: Days Echo[r], by Doc Hayes"
"AcidSoft Factoids[r], by Tad Scifo" []
"Acronyms? Mas Corny![r] by Ros McNay"
"Act, Feed a Defect[r], by Ted Face"
"Acting Naif's Fascinating[r], by Cats Finigan"
"Acton's Cantos to Scan[r], by Costas Canton"
"Actually Lay a Cult[r], by Lucy Lata"
"Acuity Calls Caustically[r], by Stacy Ciulla"
"Ad-Men Rig Dreaming[r], by Reid Mang"
"The Ad or Her Toad[r], by Ed Troha" []
"Adam, He's Ashamed[r], by [if player is male]Ed Hamsa[else]Mae Shad[end if]"
"Add Iron, Android[r], by Ida Dorn" []
"Add Love, Old Dave[r], by Lev Doda"
"Add Neon and Done[r], by Don Dean"
"Adding Up a Pudding[r], by Ping Duda"
"Adieu, Rude Air[r], by Audrie Rideau"
"Adios, North on This Road[r], by [if player is male]Ash Rotondi[else]Rhonda Otis[end if]"
"Adjacent Cadet Jan[r], by Jed Canta"
"Ado By a Body[r], by Bo Day" []
"Adolf, Lad of Fad, Lo![r] by Ada Dolloff"
"Adonis Said No[r], by Sonia Addison"
"Adorbs Sad Bro[r], by Bossard Bardo"
"Adores: DeRosa Soared[r], by Sara Roos-Dede"
"Adroit Clean Declaration: Radical Note[r], by [if player is male]Tad Naclerio[else]Tracie Dolan[end if]" []
"African Francia[r], by Cara Fin"
"Afterlife Felt Afire[r], by Effie Tarl"
"Aged Crib, Bird Cage[r], by Deb Craig"
"Ageism Images[r], by Maggie Massie"
"Ageless Sage Les[r], by Lee Gass" []
"Ages and Agendas[r], by Dan Gase-Sandage"
"Agony, Sin: Saying No[r], by Sina Yong"
"Ah, And Try a Hydrant[r], by Nat Hardy"
"Ah, Battlers: Blathers at Last Breath[r], by [if player is male]Ash Talbert[else]Shelba Tart[end if]" []
"Ah, Blest the Slab[r], by Hal Best"
"Ah, Claim Malachi[r], by Hal Maci"
"Ah, Crazy Zachary[r], by Chaz Ray"
"Ah, Cry, Chary Archy[r], by Harry Chyca"
"Ah, Debtor, Both Read the Board[r], by Ed Hobart"
"Ah, Doter O['] Hatred[r], by Rod Athe" []
"Ah, Her Paper[r], by Pepe Harrah" []
"Ah, Old Men Hold Mean Homeland[r], by Del Homan & Mel Honda"
"Ah, Poor Harp[r], by Orpha Pharo"
"Ah, Serf, Afresh[r], by Shafer Sharef" []
"Ah, Share a Rehash, Ehh, Sara[r], by Rhea Ash"
"Ah, Sot: Oaths to Ash[r], by Tasha Hoots" []
"Ah, Swell, We Shall[r], by Wes Hall"
"Ah, to pry a Trophy: Oh, Party![r] by Phat Roy" []
"Ah, Tune Un-Hate[r], by Hue Tan"
"Ah, Weirdo, How I Dare[r], by Rhoda Wei"
"Ah, WOW is how I was[r], by Wai Show"
"Aha! Sunk, Kahunas[r], by Asa Kuhn"
"Ahead Long? Aha, Golden[r], by Leda Hogan"
"Ahh, Diets: Hate Dish![r] by Sid Heath"
"Ahh, Tell the Hall[r], by Hal Leth"
"Ahh, Tourist at This Hour[r], by Ruth Oshita"
"Ahh, Twisty That-is-Why[r], by Whitt Hays"
"Ahoy, Sir So Hairy[r], by Rio Hays"
"Ail Earlier[r], by Ariel Reali"
"Aimless Plot, Lamest Spoil[r], by Salome Spilt"
"Air-Lust Rituals Trail Us[r], by Lurista St. Lauri"
"Air Mass, Mrs. Asia[r], by Marissa Samaris-Massari"
"Air Plenty Interplay[r], by [if player is male]Nat Ripley[else]Trina Pyle[end if]"
"Air Promise, Impresario[r], by [if player is male]Mario Piers[else]Marie Spiro[end if]"
"Airy Tar: a Rarity, Array It[r], by Rita Ray"
"Aisles['] Liases, Lassie[r], by Elissa Alessi"
"Al Capone: a Clean Op, No Palace[r], by [if player is male]Neal Copa[else]Lona Pace[end if]"
"Al Has a Lash[r], by Shala Halas"
"Al, OK to Look At[r], by Ola Kot" []
"Al Rose: a Loser So Real[r], by Sal Ore"
"Al Sings Signals in Glass Sans Gil[r], by Sis Lang"
"Al Wove a Vowel[r], by Eva Low"
"Al's Bucolic Social Club[r], by Luci Blasco"
"Al's Grunt-Slang Rut[r], by Lu Strang"
"Alarmed? Go, Ogle Drama[r], by [if player is male]Leo Dagmar[else]Margo Dale[end if]" []
"Alarmists['] Mass Trial[r], by Lara Smits"
"Alas, Empty Lame Pasty Playmates[r], by Alma Stype"
"Alas, Lovin['] So Vanilla[r], by Alvi Sloan"
"Alchemist, Lacesmith[r], by Milt Chase"
"Aldo Wu's Wouldas[r], by Saul Dow"
"Ale, Latte: Let a Late Tale[r], by Ella Tate"
"Alert Us: a Result-Lust Era[r], by Lea Rust"
"Alerting to Retotaling Tolerating[r], by [if player is male][else]Regina Lott[end if]"
"Aleuts Salute Alt-Use[r], by Sue Tal"
"Alfie's Life as Falsie[r], by Isaias Leffel"
"Alfredo, Deal For Dr. LaFoe[r], by [if player is male]Ed Flora[else]Flo Ader, Lea Dorf & Fae Lord[end if]"
"Alfredo's Old Fears[r], by Flor Sade"
"Ali's Ex Alexis[r], by Eli Sax & Sal Xie"
"Alien Middleman Annelid Dilemma[r], by Melinda Idleman"
"Alienator Rationale[r], by Tari O'Neal"
"Alight Me, Megalith[r], by [if player is male]Tim Hagel[else]Gita Helm[end if]"
"Alight, My Almighty[r], by Ty Gilham"
"All-Bums Slum Lab[r], by Sal Blum"
"All-Days-Sad Lyla[r], by [if player is male]Sal Daly[else]Alda Sly[end if]"
"All-Gone Galleon[r], by Leo Lang" []
"All-Joy Lyla Jo[r], by Jay Oll"
"All Ma's Llamas[r], by Sal Lam"
"All Right Li'l Garth[r], by Trig Hall"
"All Sew as Well[r], by Les Law"
"All This: It Shall[r], by Sal Hilt"
"All Time Low: a Mellow Lit[r], by [if player is male]Milo Atwell[else]Wilma Tolle[end if]"
"All Twins Want Ills[r], by [if player is male]Will Nast[else]Lin Walst[end if]"
"All Types Ply Tales[r], by Sly Patel"
"Allegorist Legislator Tiger Laslo[r], by [if player is male]Otis Grella[else]Lita LeGros[end if]"
"Allowing Law Lingo[r], by Will Noga"
"Alma Maters Alarm Teams[r], by Martel Maas"
"Almighty? Myth: I Lag[r], by Mathy Gil" []
"The Alms Hamlets[r], by Mel Tash"
"Along the Hot Angle[r], by Theo Lang"
"Alp Nation Planation[r], by [if player is male]Nolan Pait[else]Tana Polin[end if]"
"Also Giant Nostalgia Lost Again[r], by Sonia Galt" []
"Also No Saloon[r], by Sal Ono"
"Also Try Taylor's[r], by [if player is male]Sal Troy[else]Rosy Alt[end if]"
"Alternative Tea Interval[r], by [if player is male]Arnette Vail[else]LaVerne Tait[end if]"
"Altruism Must Rail[r], by [if player is male]Lui Smart[else]Lura Smit[end if]"
"Altruist, Ultraist[r],  by Stuart Li"
"Always, Aw, a Sly Law, Say[r], by Sal Way" []
"Am Whole? How Lame, Ahem, Low[r], by Elmo Haw"
"Amen, Sing Meanings[r], by Genni-Sam Mangines"
"Amen, Tidy Dynamite[r], by Tim Dayne"
"American Man: I Care[r], by Ren Amaci"
"Americans are Manics[r], by Carin Ames"
"Amnesia: Am I Sane[r], by [if player is male]Asa Mein[else]Nia Ames[end if]"
"Amphetamines: Mean Shipmate[r], by Emma Stephani & Pam Mathiesen"
"Ample Test Templates[r], by [if player is male]Matt Sleep[else]Pam Settle[end if]"
"Amplify My Pilaf[r], by Flip May"
"Anaglyptic Playacting[r], by Patil Cygan"
"Ancestor, Care Tons[r], by [if player is male]Star Cone[else]Ernst Cao[end if]"
"Ancestries['] Resistance[r], by [if player is male]Cesar Stein[else]Tressa Ince[end if]"
"And Do an Odd Add-on[r], by Donda Dando"
"And Fighters Fret and Sigh[r], by Fred Hasting"
"And Flag, Glad Fan[r], by Fang Lad Gandalf"
"And Flop, Fond Pal[r], by Alf Pond"
"And Fresh Fan Herds[r], by Fred Nash"
"And Gee, an Edge[r], by [if player is male]Ed Egan[else]Dee Ang[end if]"
"And Gore Raged On Near God[r], by Rod Egan"
"And Hence, Enhanced![r] by Dean Chen"
"And His Dashin['] Had Sin[r], by Shandi Danish"
"And I Help Delphina[r], by [if player is male]Phil Dean & Ned Phail[else]Daphne Li[end if]"
"And Lee Leaned, Leaden[r], by Ed Lane"
"And Lo, No Lad[r], by Nola Donald"
"And Lost Lands to Sandlot[r], by Old Stan" []
"And Moan, Madonna[r], by Mo Anand"
"And Nice in Dance Can Dine[r], by Nic Dean"
"And No Wait Into a Dawn[r], by Ada Winton"
"And Now No Wand[r], by Ann Dow"
"And Ode Dead On[r], by Ed Doan"
"And Row Onward[r], by Rann Woodward" []
"And See a Dense Sea-Den[r], by DeSean Esande"
"And Show Wan D'ohs, Don Shaw[r], by Shwonda Ashdown"
"And So, No Ads[r], by Saddo Anson Donas"
"And So On, Sad[r], by Sana Dotson"
"And Sure Asunder[r], by Sue Rand" []
"And to Nod at a Don't[r], by [if player is male]Donta[else]Tonda[end if] Donat"
"And Toys Don't Say Stand, Yo[r], by Tad Sony" []
"Andre Nader, A Nerd[r], by Daren Raden"
"Androids So Drain'd[r], by Sid Doran"
"Anger-Haus Harangues[r], by Rush Eagan"
"Anger I Regain[r], by Regina Aigner"
"Angola's Analogs[r], by Asa Long"
"Angry Mime Yammering[r], by Emmy Garin"
"Angst Eats, Stagnates[r], by Stan Gates"
"Anna sees sane Sean[r], by Asa Senne"
"Anneal, Lessee[r], by [if player is male]LeSean[else]Selena[end if] Lanese-Anslee"
"Annoying Agony Inn[r], by Nino Nagy" []
"Anoint No Anti-Nation[r], by Antoni Tanino"
"Anon Has Hosanna[r], by A. Hanson"
"Anon Toasts: Not Sonatas[r], by Santo Aston" []
"Another Do on the Road[r], by [if player is male]Theo Ardon[else]Eda Horton[end if]"
"Another Near-Hot Tan Hero[r], by Art Hoen" []
"Ante Oddly: Not Deadly[r], by Toddy Lane" []
"Anti-Cruel, Ultra-Nice Alien Curt[r], by Lucie Tran"
"Anti Drugs Rants I Dug[r], by Darin Gust"
"Anti-Erotic Recitation[r], by Torian Tice"
"Anti-Facts? Fantastic![r], by Staci F. Tan"
"Anti-Muon Mountain[r], by Nina Muto"
"Anti-Rancor Contrarian[r], by [if player is male]Antoni Carr[else]Tara Rincon[end if]"
"Anti-SOB Bastion, Ban Otis[r], by Ian Bost & Bo Tanis"
"Antioch to China[r], by [if player is male]Nat Choi[else]Nita Cho[end if]"
"Ants Die Instead[r], by Ed Astin"
"Antsy Hop: a Python's Nosy Path[r], by Pat Hyson"
"Any Darn Yarn and Ayn Rand[r], by Dan Ryan"
"Any Dot And Toy to Andy[r], by Dontay Dayton"
"Any Drab Bad Yarn[r], by Rand Bay"
"Any Goal Analogy[r], by Aya Long"
"Any Nit is Insanity[r], by Nini Tsay"
"Any Pen a Penny[r], by Nann Pye"
"Any Pick Panicky[r], by Nick Yap"
"Any Plight, Plaything? Ply a Night[r], by Hilty Pang"
"Any Rad Day Ran[r], by Andray-Daryan Darnay"
"Any Temp Payment Type, Man[r], by [n-t] Pym" []
"Apes['] Apse[r], by Essa Pape"
"Apex Roads Paradoxes[r], by [if player is male]Rex Posada[else]Rox Espada[end if]"
"Aphrodite Atrophied[r], by [if player is male]Theo Pradi[else]Ardith Poe[end if]"
"Apollo's Solo Pal[r], by Al Sloop"
"Apropos, Poor Sap[r], by Pa Spoor"
"Apt, Brute: Batter Up[r], by Bert Tupa"
"Arc I Curl, Circular[r], by [if player is male]Arric Luc[else]Luci Carr[end if]"
"Arcane Commoner Romance[r], by Ace Norm Cameron"
"Arch Woes, Raw Echos: Who Cares[r], by [if player is male]Chas Rowe[else]Shea Crow[end if]"
"Archivee Achiever[r], by Vera Eich"
"The Arctic Architect: Her Tactic[r], by Chet Traci"
"The Arctic Architect[r], by Chet Traci"
"Ardor Roar'd[r], by Dorra Arrod"
"Are Tots to Stare[r], by [if player is male]Ares Ott[else]Ros Tate[end if]"
"The Area: a Reheat[r], by Tea Rahe"
"Arid Pool Polaroid[r], by Opal Dior"
"Arid Port Road Trip[r], by Tad Prior"
"Ariel's Serial Ailers[r], by Al Reis"
"Aries, Aries[r], by Saira Reise"
"Arise, Raise a Sire![r] by Siara Riese" []
"Aristotle's Totalisers[r], by [if player is male]Otis Slater[else]Tess Rialto[end if]"
"Arlo's Solar Orals[r], by Ross Allaro"
"Armories['] Semi-Roar[r], by [if player is male]Omar Reis[else]Rosa Meir[end if]" []
"Armoring Rigor Man[r], by [if player is male]Gino Marr[else]Roni Gram[end if]"
"Arms on Ransom[r], by Ms. Rona Rosman" []
"Arnie's Arisen[r], by Serina Raines"
"Arrange No Ego, O Anger[r], by Genaro O'Regan-Garone"
"Arrogant Tarragon[r], by Art Garno"
"The Arrow, a Thrower: Hot, Rawer[r], by Hart Rowe" []
"The Arrow Heart Row[r], by Thor Ware"
"Arsenic's Raciness[r], by [if player is male]Eric Sans[else]Erin Cass[end if]"
"Art I Love To Elvira[r], by [if player is male]Avi Toler[else]Lita Vore[end if]"
"Art Set at Rest[r], by Teressa Tratt" []
"Art, Sun, Runs at Saturn[r], by Su Tran"
"Artemis, a Smiter[r], by Tim Ares"
"Arthroscope Crapshooter[r], by [if player is male]Oscar Thorpe[else]Tora Porsche[end if]"
"Artisan Sinatra[r], by [if player is male]Ira Nast[else]Nia Star[end if]"
"Artsman Mantras[r], by Nat Mars"
"Artsy-Eyed Yesterday[r], by Syed Tyrea"
"Arty Nat, a Tyrant[r], by Ray Tant"
"As for Afros So Far[r], by Sara Rosoff"
"As I Beg, Big Sea[r], by Ab Gies"
"As I Grew Earwigs[r], by Wes Riga"
"As Pundit I Stand Up[r], by Pati Sund" []
"As Soil Ails So[r], by Isa Sol"
"As the Heats Haste[r] , by Hesta Athes & Tessa Heath"
"As Tho['] a Shot[r], by Tosha Athos"
"As Unto a Snout[r], by Taunton Sousa"
"Ash Tree: Here Sat Theresa[r], by Seth Rea" []
"The Ashen Heathens[r], by Seth E. Han"
"Ask It, Yo, It's Okay[r], by Ty Osaki"
"Ask Them: I Make This[r], by [if player is male]Sam Keith[else]Kim Haste[end if]"
"Ask Them, the Mask[r], by [if player is male]Kam Tesh[else]Kat Mesh[end if]"
"Ask Theo to Shake the Oaks[r], by Kat Shoe"
"Ask Yon Yak, Son[r], by Sy Kano"
"Asterisk[r], by [if player is male]Art Sikes[else]Kris East[end if]"
"Asteroids So Satired[r], by Sid Setora"
"Astral Altars[r], by Starla St. Lara"
"Asylum of Foul Yams, Famously So Fumy, Al[r], by Ulf S. Mayo"
"Asynergia Gainsayer[r], by [if player is male]Gary Anise[else]Inga Rasey[end if]"
"At [']Em, Team-Mate[r], by Emma Tate"[]
"At a Blue Tableau[r], by Beau Alt"
"At a Creek, Take Care[r], by Kate Cera"
"At a Rum Trauma[r], by Mat Rau"
"At Bison Bastion[r], by Boston Sabatini"
"At Lowly Lyla Two[r], by Walt Loy"
"At No Addition[r], by Donita Donati"
"At the Theta[r], by Hetta H. Tate"
"At Voices So Active[r], by [if player is male]Vito Case[else]Vi Coates[end if]"
"At-Worst Tot Wars Start, Ow[r], by Ros Watt"
"Atlantis Ain't Last[r], by Lita Nast"
"Atlas of Alas, Oft So Fatal[r], by Flo Asta"
"Atom Bombs, a Mob's Tomb[r], by Bobo Stamm"
"The Atoms Most Hate[r], by Shea Mott"
"Atoners, Senator Orantes[r], by Stan Roe" []
"Auctions['] Cautions[r], by Nia Couts"
"Authoress Rathouses[r], by [if player is male]Hosea Rust[else]Rosa Shute[end if]"
"Avalons So Naval[r], by [if player is male]Sal Avon[else]Lana Vos[end if]"
"Avenir Ravine[r], by Verena Virani & Vernie Varian"
"Avoid Men, Oven Maid[r], by Mia Devon"
"Avon is So Vain[r], by [if player is male]Ian Vos[else]Vi Naso[end if]"
"Aw, All Shy Hallways[r], by Lyla Wash"
"Aw, Flo: Law of a Wolf[r], by Alf Faw-Wool"
"Aw, Nerd, Ew--Darn[r], by Andrew Ardwen" []
"Aw, Urged, We Guard[r], by Gerda Wu"
"Awareness Earns Awes[r], by Wes Arenas"
"Awe-Smit, It was Me[r], by Mia West"
"Awesome Mesa Woe[r], by Wee Amos"
"Awesomely Measly Woe[r], by [if player is male]Wesley Mao[else]Salome Yew[end if]"
"Axe Sully Sexually[r], by Elsy Laux"
"Axioms: So, a Mix[r], by Amos Xi"
"Ay, Funds: Fun Days[r], by Sandy Fu"
"Ay, Sir Ray Is[r], by Sriya Irsay"
"Ay, Tots, To Stay Toasty[r], by Ty Sato"
"Ay, Warn Us, Runaways[r], by Ruy Aswan"
"Aye, I Trust Austerity[r], by [if player is male]Titus Raye[else]Sari Yuett[end if]"
"Aye, Net a Teeny Tan Eye[r], by Nat Yee"
"Aye, Sinner: Ye Insaner Nine Years[r], by Serina Ney & Nina Reyes"
"B-Movies: Mobs Vie[r], by Mo Bevis"
"Back Under Crude-Bank Cad Bunker[r], by Buck Arden"
"Bad Grades[r], by Brad Degas"
"Bad Men or [d-word-u] Bore[r], by Don Amber"
"Bad, Rote, Aborted[r], by Art Bode, Tad Boer & [d-t] Bare"
"Bad Vibes: Diva's Ebb[r], by Babs Devi"
"Bah, Rent the Barn[r], by Ben Hart"
"Bah, Rosy Rash Boy[r], by Ash Roby"
"Bah, Son! Bash On! Ah, Snob[r], by Bo Nash"
"Bail Came, Amicable[r], by Mica Abel"
"Bail Won, I Bawl On[r], by Lina Bow"
"Bait Your Obituary[r], by Ryu Tobia" []
"Baiter of To Be Fair[r], by Fae Brito"
"Ballyard Balladry[r], by Lyra Bald"
"Balmier, I Ramble[r], by Amber Li"
"Bamboo's a Bomb, So[r], by Bob Amos"
"Ban a New Wannabe[r], by Anna Web"
"Ban Ego? No, Gabe[r], by Bo Egan"
"BAN MILK[r], by Bilk-Man Lambkin Milbank"
"Ban No Elm, Nobleman[r], by Ben Lamon"
"Ban Sin or Brains? NO[r], by Ann Boris"
"Bane or a Boner Near Bo[r], by Eb Roan"
"A Baneful Moth, Unfathomable[r], by Afton Ambuehl"
"Bar Me a Berm[r], by Mr. Abe Embar"
"The Bard Bret Had Breadth[r], by Rad Beth DeBarth"
"The Bard of Far Hotbed[r], by Beth Foard"
"The Bard's Breadths[r], by Bert Dash"
"Barefoot Oaf Berto: Boor Fate[r], by Bao Forte"
"Barmy Mr. Bay[r], by Byram Mabry"
"Barnet's Banters[r], by Stan Erb" []
"Baroquest Squat Bore[r], by Art Bosque"
"Barren Bane, Bare Banner[r], by Abner Berna"
"Barrenest Banterers[r], by [if player is male]Bret Serna[else]Reba Ernst[end if]"
"Basic Lone Balconies[r], by [if player is male]Les Bocian[else]Ilse Bacon[end if]"
"The Basic Tech Bias: Cite, Bash[r], by [a-b] Tisch" []
"Bat Null, Nutball![r] by Blunt Al"
"Baths o['] Bathos[r], by Bo Tash"
"Batless Labs-Set Stables[r], by Bess Alt"
"Bauer's Abuser, Bear Us[r], by Su Baer" []
"Bauerle's Reusable Blues Era[r], by [if player is male]Saul Bree[else]Lea Suber[end if]"
"Baum, a Bum[r], by Babu Muma"
"Bayern Nearby[r], by [if player is male]Barnaby Neyer[else]Bryanne Beyer[end if]"
"Bayonets be a Stony Bane's Toy[r], by Toby Sean"
"Be Afraid: a Bad Fire[r], by Deb Faria"
"Be Apart: Bar a Pet[r], by Pat Baer"
"Be Cool, Ole Cob[r], by Bo Cole"
"Be Cut on But Once[r], by Ben Cuto"
"Be Drony, Nerd Boy Ed Byron[r], by Rey Bond"
"Be-Far Faber[r], by [if player is male]Raffa Beber[else]Barbee Raff[end if]"
"Be Loved, Bold Eve[r], by [if player is male]Del Bevo[else]Bev Odle[end if]"
"Be Merry, Mr. Beyer[r], by Bry Meer"
"Be Moany Mean Boy[r], by [if player is male]Ben Mayo[else]May Bone[end if]"
"Be Proud, Prude Bo[r], by Bud Poer"
"Be Sat! St. [a-b] Abets Betas[r], by Abbess Etta"
"Be Trim, Timber[r], by Betti Brimmer"
"Beach [']N a Bench[r], by Bec Han"
"Beam Dry, My Bread[r], by Em Brady"
"Bear no Bane or one Bar[r], by Robena Barone" []
"Bear to Eat, Bro[r], by [if player is male]Roberto Abate[else]Barbee Totaro[end if]"
"Bearcat Cabaret[r], by Ace Brat Art Cabe"
"Beardy Dry [a-b][r], by Deb Ray" []
"Bearing a Binger[r], by Ian Berg & Gabe Nir"
"The Bears Eat Herbs[r], by Hera Best"
"Beastly Labs, Yet[r], by Aly Best" []
"Beasts or Boasters[r], by Bert Sosa"
"Beat, Bold Bob Dealt to Dabble[r], by [a-b] Boldt"
"Beat Poetry by a Treetop[r], by [if player is male]Rob Payette[else]Petra Tobey[end if]"
"Beating Up a Bug, Inept[r], by Paige Bunt"
"Bechdel Belched[r], by Ced Hleb"
"Bedlam Ambled[r], by Bad Mel Dembla"
"Bedlam: Bad Lem Blamed Bald Em[r], by Ed Lamb" []
"Bedtime: I'd be Met[r], by Tim Bede"
"Been-Dark Reedbank[r], by Ned Baker"
"Beer Cans Scare Ben[r], by Bren Case"
"BeerInc: Be Rec'in![r], by Ben Rice & Nic Eber" [p]
"Bein['] Less Sensible[r], by Ben Siles"
"Bein['] Sly: Bylines[r], by Lyn Seib-Lisenby"
"Being Right: Hint Bigger[r], by Inge Bright & Britni Hegg"
"A Belief's Feasible, Base Life[r], by Basil Fee"
"Belmont Blotmen[r], by Len Tomb"
"Belser Rebels[r], by Les Erb"
"Bely So, Ye Slob[r], by Les-Boy Bosley-Boyles"
"Bemused Seed-Bum[r], by Bud Mees"
"Ben, a Bean[r], by Anne Abbe"
"Ben Sat Absent[r], by Beans Basnett & Bennett Sabas"
"Bend, Stray Bystander[r], by Bret Sandy & Andy Brest"
"Benevolent Noble Event[r], by Neve Belton"
"Benoit's Boniest Bio-Nest[r], by Bo Stein"
"Bent Hay[r], by Bethany Neathby"
"Beriberi Bier[r], by Bri Beier"	60
"Bermuda: a Dumber Mad Rube[r], by Red Baum"
"A Bermuda to Dream About[r], by [if player is male]Mateo Burda[else]Maude Tabor[end if]"
"Bermuda's Dear Bums[r], by Bud Maser"
"Bernoulli: No Ill Rube[r], by [if player is male]Burl O'Neil[else]Elli Bruno[end if]"
"Bertie Be-Rite[r], by Bit Ree"
"Besties is Beset[r], by Tess Ibe"
"Bestrew, Webster[r], by Wes Bert"
"Bet, Star Taber St. Batters[r], by Art Best"
"Betray Yet, Abe?[r] by Bettye Ybarra"
"Betty Lou's Subtle Toy[r], by Utley Bost"
"Beyond Done-by, Ye Bond[r], by Don Bey" []
"Bias in an Ibis[r], by Sibina Banisi"
"Bias-Moved Bad Movies: A Mob's Dive[r], by Mavis Bode"
"Bid Ken be Kind, Kid Ben[r], by Ed Bink"
"Bid Long, Glib Nod, Go Blind[r], by Gil Bond"
"Big Banks: Baking BS[r], by Babs King"
"Big Crank Crab King[r], by Nick Barg"
"Big East, Get Bias[r], by Gia Best"
"Big, Lame, I Gamble[r], by Gabe Lim"
"Big Land Balding[r], by Al D. Bing"
"A Big Nerd Barged In[r], by [if player is male]Brad Egin[else]Dina Berg[end if]"
"Big Note to Begin: I Go Bent[r], by Tobie Ng"
"Big Red Bridge[r], by Brigid Edberg & Di Berg"
"Big Throne, Both Reign[r], by [if player is male]Bo Enright[else]Beth Gorin[end if]"
"Bile Libe[r], by Billi-Bee Lieb" []
"Bile, Wit: I Blew It[r], by Tib Weil"
"Biled, I Bled[r], by Bill Dedbie"
"Bilious, I Boil Us[r], by Lois Bui"
"The Bill: Hell Bit[r], by Bet Hill"
"Bill the Bell-Hit[r], by Li'l Beth" []
"Bill's Hut: Stub Hill[r], by Lis Bluth"
"Bin a Gig, Big Gain[r], by Gia Bing"
"The Bind: Hid Bent Hint Bed[r], by Ted Binh" []
"Bind the Thin Bed, then Bid[r], by Beth Din"
"The Bird be Third[r], by Di Berth"
"Bird of Forbid[r], by Bibi Ford-Dorf"
"Birdbrain and Brinda[r], by Brandi Briand"
"The Birds Bred This[r], by [if player is male]Sid Breth[else]Deb Hirst[end if]"
"A Bit Shy, Thy Bias[r], by Tish Bay"
"Bite, Mr. Be-Trim[r], by Betti Brimmer"
"Bite, Nag, Neg, Bait[r], by [if player is male]Ben Taig[else]Gia Bent[end if]"
"Biter Tribe[r], by Berti Tiber"
"The Black Belt Hack Tech-Balk[r], by Kat Belch, Chet Balk & Beth Lack"
"Black Fire, Leaf Brick[r], by Flick Baer"
"Blackmail Claim-Balk[r], by [if player is male]Mack Bilal[else]Alma Blick[end if]" []
"Blamable Me[r], by Mabel Lambe"
"Blame Mabel[r] by Mel LeBamba" []
"Blame to Me: A Blot[r], by Tom Beal & [a-b] Molt" []
"Blamer Mr. Bale[r], by Al Berm"
"Bland Curs['] Scrubland[r], by Luc Brands"
"A Bland DNA Lab[r], by Al Band"
"Bland Ire? Drab Line? A Blinder[r], by Ben Laird"
"A Blander Bare Land[r], by Brad Lane"
"Blando Boland[r], by Al Bond"
"Blast Once, Constable Boncastle[r], by Stan Coble"
"Blather On, Then Labor[r], by Noel Barth"
"Bleach, Lye, Bellyache[r], by Lyle Beach"
"Blearily, Reliably[r], by Bill Raye"
"Bleat at a Battle[r], by Lea Batt"
"Bleat, Mr. Lambert[r], by Tal Brem"
"Blemished Limbs, Heed[r], by Debi Helms"
"Blighter Girl Beth Hiltberg[r], by Helg-Brit Gilbreth"
"Blocked Old Beck[r], by Ced Kolb"
"Blog Friend, Blind Gofer[r], by Ford Ebling"
"Blog Loud, Dull Goob[r], by Doug Boll"
"Blood Bay, Ol['] Bad Boy[r], by Lady Bobo"
"Blow One Low Bone[r], by Ben Wool"
"A Blowgun Bungalow[r], by [if player is male]Blu Wogan[else]Ang Bulow[end if]"
"Blue Words, Rude Blows[r], by Bud Rowles"
"A Blur of Our Flab[r], by [if player is male]Rob Lauf[else]Flo Baur[end if]-Balfour"
"Blush Ripe, Publisher![r] by Herb Pulis"
"Bo's Life-Foibles[r], by [if player is male]Leif Bos[else]Flo Seib[end if]"
"The Board's Drab Ethos[r], by [if player is male]Shad Berto[else]Rhoda Best[end if]"
"Boater to Bear or Beat[r], by Tre Abo & [a-b] Ort" []
"Bob Lew's Wobbles[r], by Sol Webb"
"Bob's Gig: Big Bogs[r], by Og Gibbs"
"The Bogus, Besought[r], by Hugo Best"
"Boguser Rubes, Go[r], by Sue Borg"
"Boil Sly Li'l Boys[r], by Lily Bos"
"Boing Boing[r], by Gino Gibbon"
"Bold Euro Blue Door[r], by Lou Brode"
"Bold Greg Goldberg[r], by Blogger D"
"Bold Hate, Bad Hotel[r], by Theobald Bhat-Dole"
"Bold Heat, Theobald[r], by [if player is male]Thad Loeb[else]Beth Aldo[end if]" []
"Bold Sin So Blind[r], by Lis Bond"
"Bold Web: Lewd Bob Wobbled[r], by Deb Wold" []
"Bolder Bro Del Led Rob[r], by Deb Lor"
"A Bolder Labored Old Bear: Bad Lore[r], by [a-b] Lord" []
"Boldest Slob Ted Lost Deb[r], by Del Bost" []
"The Bone He Bet On[r], by Benet Ho"
"Bones Bit, I Ebb Tons[r], by Bob Stein"
"Bones in Benoni's Benison[r], by Bo Ennis"
"Bonsoir, Orbison[r], by  [if player is male]Bo Irons[else]Robin So[end if]"
"Boogers! Goobers![r], by Geo Bors"
"Boone's One SOB[r], by Ben Soo"
"Boorhug Borough[r], by Rob Hugo"
"Boors['] Sty Sob Story[r], by Toby Ross"
"Booting No Bigot[r], by [toti] Bong"
"Bore Until in Trouble[r], by Eli Bruton & [toti] Bruel"
"Born a Baron[r], by Barbra Noon"
"Bosh Diets: Both Sides[r], by Edith Boss"
"Boss Eats Asbestos[r], by Tess Sabo"
"Boss Lady Says Bold[r], by Loyd Bass"
"A Bot-Boat[r], by Toto Baab & Bobo Tata"
"Both Dye the Body[r], by Deb Hoyt"
"Both Employ Phlebotomy[r], by Ethyl Pombo"
"Both End the Bond[r], by [d-t] Behn"
"Both Met the Tomb[r], by Beth Tom"
"A Bother to Rehab[r], by [a-b] Hort"
"A Bottle to Bleat[r], by [a-b] Lott"
"Bottled Up Debut Plot[r], by Bud Pottle"
"Boundless Soul Bends[r], by Eldon Buss"
"A Bounty, Buoyant[r], by Una Toby"
"Bourbon Run[r], by Bruno Bourn"
"Bowden's Snow Bed[r], by Wes Bond"
"The Bowl Blew Hot[r], by Beth Low"
"Boy, Barf for Baby[r], by Bob Fray"
"The Boy: Ye Both[r], by Ty Boeh" []
"Boyo Dan, a Nobody: Boon Day[r], by Yao Bond"
"Boystown By Now, Sot[r], by Toby Snow"
"Brad Sikes, Bad Kisser[r], by Sadi Krebs"
"Brag Thus, Brash-Gut Bar Thugs[r], by Gus Barth"
"Bragsome Embargos[r], by Amos Berg"
"Brain-Sim Mini-Bars[r], by Si Barmin"
"Brainless Near-Bliss[r], by [if player is male]Sal Brines[else]Erin Blass[end if]"
"Brainwaves: I Save Brawn[r], by Vernia Swab"
"Brand Names, Bad Manners[r], by [if player is male]Sam Brendan[else]Debra Manns[end if]"
"Brandy: a Bad Yarn[r], by [if player is male]Rand Bay[else]Ana Byrd[end if]"
"The Brave Have Bert[r], by Bev Harte" []
"Brave Nun Van Buren[r], by Evan Burn"
"Bravest Star Bev[r], by Rav Best"
"Brawl On, Barn Owl[r], by Al Brown"
"Bray Oft, Frat Boy[r], by Fab Troy Bayfort"
"Brazen Guile, Gaberlunzie[r], by [if player is male]Bazil Gurnee[else]Zenia Bulger & Eliza Gruben[end if]"
"Break Down, Woken Bard[r], by [if player is male]Andrew Bok[else]Kendra Bow[end if]"
"Breaking King Bear[r], by [if player is male]Ben Kigra[else]Inge Bark & Angi Berk[end if]"
"Brew On, New Bro[r], by Bowen Browner"
"Brick Safe Backfires[r], by [if player is male]Abe Fricks[else]Beck Faris[end if]"
"Brides['] Debris, Biders['] Rebids[r], by Sid Erb"
"A Bridge, Rage-Bid[r], by Ida Berg" []
"A Bright Brag Hit[r], by Garth Raith-Gibb"
"Bring Hot, Big North[r], by Brit Hong"
"Bring Me Mr. Being[r], by Ben Grim"
"Bring Un-Burning[r], by Bri Gunn-Ninburg"
"A Brittle Trite Lab[r], by Brett Ali"
"Bro-Code: Bore, Doc? Be Crood[r], by Ced Boor"
"Bro Didd, Odd Bird[r], by Bri Dodd"
"Bro-Duel Boulder[r], by Old Rube Rod Blue"
"Bro Time Bit More[r], by Tim Boer"
"A Broker or Baker[r], by [a-b] Rork"
"Bronte's Ten Bros[r], by Ron Best"
"Broody Boy Rod[r], by Boyd Ro" []
"Brooms or Mobs[r], by Mo Bors"
"The Bros Be Short[r], by Rob Tesh"
"A Brown Bar Now[r], by Bo Warn"
"Brownest Torn Webs[r], by Bret Snow"
"Bub's Gig: Big Bugs[r], by Gus Gibb"
"Bud, Earn a Burden, Unbared[r], by Branden Budreau"
"Bud for Buford[r], by Bo Ruff-DuBord"
"Bud's Tin Dustbin[r], by Sid Bunt"
"Buddies I Subbed[r], by Sid Dube"
"The Bugs Beg Thus[r], by Gus Beth"
"Bugs['] Rent: Grub Nest[r], by Gus Brent"
"Bum Hans, Bushman[r], by BS Human Shubman"
"Bum Rey, My Rube[r], by Mumby Bruyere"
"Bump Each Cheap Bum[r], by [if player is male]Cuba Hemp[else]Pam Buche[end if]"
"The Burbs: Herb Bust[r], by Bret Bush"
"Burgeon, One Grub[r], by Bo Unger"
"Burgle, Bugler[r], by Lu Berg"
"Burned Burden[r], by Bub-Ned Rudner"
"Buses Like Blue Skies[r], by Sue Belkis & Bessi Luke"
"Busted Debuts[r], by Bud Tse"
"But Dr. Joe's Just Bored[r], by Jude Borst"
"But Hey, Buy The...[r], by Beth Yu"
"But No, He's the Bo'Sun[r], by Ben South"
"But Polish to Publish[r], by Tulip Bosh"
"But Rally Brutally, Bully-Rat[r], by Lyla Burt"
"But Tire, Tribute[r], by Bert Tiu"
"But yeah, bye, Utah[r], by [a-b] Huyt"
"Butler Ulbert[r], by Bret Lu"
"A Butler's Baluster[r], by [if player is male]Bert Saul[else]Rea Blust[end if]"
"Buy Ann a Bunny[r], by Nun Bay Bunyan"
"By a Third Birthday[r], by Thad Irby"
"By Best BBS Yet[r], by Ty Ebbs"
"By Dear, a Derby[r], by [if player is male]Ray Bey-Bedard[else]Deb Ray[end if]" []
"By Lingo Ignobly[r], by [if player is male]Gino Bly[else]Glyn Obi[end if]" []
"By Luck, Eh, Huckleby[r], by [if player is male]Kyle Chub[else]Becky Luh[end if]"
"By Sod, a Sad Boy[r], by Bo Days"
"Bye, Bath: the Baby[r], by Beth Bay"
"Bye Now, New Boy[r], by Ben Yow"
"Bye, Souls: Bless You[r], by [if player is male]Loy Busse[else]Su Bosley[end if]"
"Cab-Only Balcony, Boy Clan[r], by Lyn Coba"
"Cabin Fever: France Vibe[r], by Vince Faber"
"Cadger-Graced Dr. Cage[r], by Edgar C. DeCrag"
"The Cads Scathed[r], by Ted Cash"
"Cagier Gracie[r], by Erica G. Geraci"
"Cagley Legacy[r], by Ace Gly"
"Cake: Try, Take, Cry[r], by Rey Tack"
"Calcium Accumil[r], by Ma Lucci" []
"Call Thou Local Hut: Touch All[r], by Lou Latch"
"Call Up Pal Luc[r], by Al Culp"
"Calumnies['] Main Clues[r], by [if player is male]Sam Lucien[else]Sue Maclin[end if]"
"Came for Cream of Mo['] Farce[r], by Mac Fero"
"Camouflague: a Face Mogul[r], by Gema Coufal"
"A Camp Elf Facepalm[r], by Alec Famp"
"The Camp's Math Spec[r], by Pam Tesch"
"Can-Do and Co[r], by A. Condon, Cad"
"Can His Chains Cash In[r], by Nic Ash"
"Can Louts Consult a Cult As No Soul Can't[r], by Scot Luna"
"Can-May-a-Mancy[r], by [if player is male]Mac Yan[else]Ayanna McCamy[end if]"
"Can Yetis Stay Nice[r], by Staci Ney"
"Can't-Lose Con Tales[r], by Len Coats & Sal Conte"
"Cancel Out a Cult Once[r], by [if player is male]Cole Cantu[else]Luce Caton[end if]"
"Candider Riddance[r], by [if player is male]Ned Darci[else]Cinda Erd[end if]"
"The Candor: Don't Reach[r], by Chet Doran"
"Cannibal-Cabal Inn[r], by Ian Blanc"
"Canonists['] Sanctions[r], by Cassi Tonn"
"The Cape's Cheapest[r], by Pete Cash" []
"Capello's Collapse[r], by Sol Place"
"Captain Pa-I-Can't[r], by Tip Caan"[]
"Caputo's Up-Coast Opus Act[r], by Pa Scout"
"Car Tour Curator[r], by Curt Roa"
"Carabineers['] Aberrancies[r], by Sara Bernice & Narcisa Bree"
"Carcinogen: Cancer, Go In[r], by Nanci Groce"
"The Cards Herd Cats[r], by Dre Tasch"
"Care? Groan, Arrogance or Carnage[r], by [if player is male]Reg Carano[else]Cora Agner[end if]"
"Carl W is Sir Claw, I Scrawl[r], by Ric Laws"
"Carlsen Left Crestfallen[r], by Frances Tell"
"Carmelo's Scam-Role Clamores[r], by Sam LeRoc"
"Carnage Can Rage[r], by Ace Garn"
"Carnal Clone Offer[r], by Florance Falconer"
"Carry On, Ray Corn[r], by Ron Cray"
"Cartoons, to Carson: no actors can roost[r], by Nora Scot"
"The Case: Ace Seth Teaches SeaTech E-Cheats, Each Set[r], by Tee Cash"[]
"Cast Iron Can Roist[r], by Arin-Scot Crisanto"
"Cat Lady: a Dactyl[r], by Tad Clay"
"Catbird, Yelp Predictably[r], by Cadet Pribyl"
"Catch Phrase Scratch Heap[r], by [if player is male]Casper Hatch[else]Chara Petsch[end if]"
"Cater So to Cares[r], by Scot Rea"
"Cathy's Shy Cat[r], by Ty Cash" []
"Cations['] Actions[r], by Nic Sato" []
"Causally, Casually[r], by [if player is male]Saul Clay[else]Lucy Sala[end if]"
"The Cause: He's Acute[r], by Ace Theus" []
"Caustic Rare Caricatures: Accurate, Sir![r], by Traci Crause"
"Cave Dirt: It Craved A Verdict[r], by Tad Cervi"
"Cavendish and Chives[r], by [if player is male]Chad Vines[else]Devin Cash[end if]"
"The Caves Save Tech[r], by [if player is male]Steve Cha[else]Eva Tesch[end if]"
"A Cedar Arcade[r], by Ace Ard"
"Cedary Red Cay[r], by [if player is male]Ed Cary[else]Darcey DeCray[end if]" []
"A Ceded Decade[r], by [if player is male]Ed Deac[else]Cad Dee[end if]"
"Cedwin Winced[r], by Cid New & Nic Dew"
"A Celebrant Tabernacle[r], by Lance Beart"
"Cell: I Yap Epically[r], by [if player is male]Lyle Pica[else]Lily Pace[end if]"
"Cellar Race[r], by Clare Carle-Lacer"
"A Century, Runty Ace[r], by [if player is male]Nat Cruey[else]Tyra Cuen[end if]" []
"Cerasoli Calories[r], by [if player is male]Eli Oscar[else]Laci Rose[end if]"
"Chaim's Smicha[r], by Mischa Masich"
"Chan is in Cash[r], by Nic Ash" []
"Chandler's Ranch Sled[r], by Cher Lands"
"Chap, Yer Preachy[r], by Pa Ryche"
"Chaplin's Clan Ship[r], by [if player is male]Sal Pinch[else]Lin Pasch[end if]"
"Charlie LaRiche: Ah, Relic[r], by Hal Rice"
"Charm-Spent Parchments[r], by Nat Schremp"
"Charming Mr. Chiang[r], by Marc Nigh"
"Charon's Anchors[r], by Ron Cash" []
"Cheat On, Ache Not[r], by [if player is male]Nat Echo[else]Tena Cho[end if]"
"Cheatum's Mustache, Such Meat[r], by Sam Chute"
"A Chef's Chafes[r], by E. F. Cash, Chaffee Sachs & F. C. Shea"
"Cher's Kid: His Dreck[r], by Ed Kirsch"
"Cheri's Riches[r], by Sir Che Schier" []
"Chess Bait: the Basics[r], by Cassi-Beth Estis-Bach"
"A Chess Game: Scheme Saga[r], by Sasha McGee"
"Chet Rios Shot Eric[r], by Chris Teo"
"Chic Loner Chronicle[r], by Olric Chen"
"Chicer Heresies, Cheesier Riches[r], by Cherise Scheier" []
"Chicest Thrillers, Stretchier Chills[r], by Christel Tichsler"
"A Chicken: Nice Hack[r], by Ceci Khan"
"Chider Dr. Eich[r], by Ed Rich"
"Chimeras Scare Him[r], by [if player is male]Rich Ames[else]Sam Reich[end if]"
"A Chit-Chat I Act, Hi[r], by Cathi Chait"
"Chokes at Hotcakes[r], by [if player is male]Chet Soak[else]Kath Esco[end if]"
"Cholesterol: Tolls Cohere[r], by Rochelle Tso"
"Chorale Cholera[r], by Carole H. LaRoche"
"A chore, Horace: oh, Care or Ache![r] by Rao Che"
"Chosen Boy: One Shy Cob[r], by [if player is male]Shon Boyce[else]Ebony Ochs[end if]"
"A Chosen Has Once[r], by [if player is male]Sean Cho[else]Noe Cash[end if]"
"Christoper's Rectorships[r], by Horst Crespi & Itch Prosser"
"A Chum's Scum, Ha[r], by Mac Shu"
"Chunks to Shuck Not[r], by Scot Kuhn"
"Churn Lithe in the Lurch[r], by Luther Chin & Ulrich Neth"
"Ciambi's Iambics[r], by Ibis Mac"
"Cicero's Co-Cries: Soccer, I?[r], by Ceci Ros"
"Cinema Fit to Naif Totemic Metafiction[r], by Camie Fitton"
"Cinnamon Icon Mann[r], by Mina Conn"
"Circles of Serf Colic[r], by Cecil Fors"
"Citatory Atrocity[r], by Cory Tait"
"Cite Thy Itch, Yet: the City, Ye Titch[r], by Ty Teich"
"Cito's Tic So Stoic[r], by Coco Tsitis"
"City Hall: Achy Till All Itchy[r], by Ty Cahill"
"City Life Felicity[r], by Ty Filice"
"Civil Man's Calvinism[r], by Vic Silman"
"Civilians, I Cavil Sin[r], by Cali Ivins & Lisa Vinci"
"Claims to Mac's Toil[r], by Mica Solt"
"Clam Up Ma Culp[r], by Lu Camp"
"Clan Dour Cauldron[r], by [if player is male]Conrad Lu[else]Luna Cord[end if]"
"Clap at a Catalpa[r], by Pat Cala"
"Clark, Be Blacker[r], by Al Breck"
"Clarke: a Clerk[r], by Clara Keckler"
"Clashed Sad Lech[r], by Les Chad"
"Classify Cy's Fails[r], by Cay Fliss"
"Claw Forth, Flowchart[r], by Craft Wohl"
"Clay-Net Latency[r], by Nate Cly & Ty Lance"
"Clay Nor Corn Lay[r], by [if player is male]Lon Cary[else]Nora Cly[end if]" []
"Clean Sharp Plane Crash[r], by [if player is male]Charles Pan[else]Chanel Rasp[end if]"
"Clear New Were-Clan[r], by Carl-Ewen Lawrence"
"Clearly, Carlyle[r], by Ella Cyr"
"Clematis Climates[r], by [if player is male]Alec Smit[else]Laci Smet[end if]"
"A Cleric Pro-Reciprocal[r], by [if player is male]Rico Parcel[else]Carol Price[end if]"
"Clings to a Nostalgic Antic Slog[t], by Gil Cantos"
"Clio's Coils[r], by Colli Sisco"
"Cloak a Lock[r], by Kao Allcock"
"Clochards, Arch-Clods[r], by Cal Dorsch"
"Clod Ed's Scolded Coddles[r], by Ced Olds"
"A Close Solace[r], by Sal Coe & Cal Ose"
"Closeted Doc Steel[r], by Ted Coles"
"Cloud the Old Chute[r], by Ludo Echt"
"Cloyings So Clingy[r], by Syg Colin"
"Clueless Cell Uses[r], by Luc Essel"
"Cluing, I Clung[r], by Luci Ng"
"Co-Ed Deco[r], by Dede & Coco"
"Co-Insured Decurions Cruised On[r], by Rico Sunde"
"Co-Slime? I'm Close[r], by Sim Cole"
"Co-Whine? How Nice[r], by Owen Chi"
"Coalitionist Solicitation[r], by Alison Ciotti"
"Coarsen It: on Raciest Reactions to Arsenic[r], by [if player is male]Eric Santo[else]Nita Crose[end if]" []
"A Cobalt Lab Coat[r], by Al Cabot"
"Coca, Yayo: a Coy CYOA[r], by Cacy O. Yao"	60
"Code-Fork Roofdeck[r], by Fred Cook"
"Coded-to-Dote Doc[r], by Todd Coe"
"Coifer of Rice[r], by Ric Foe"
"Coiners['] Cronies[r], by Enrico S. Ericson" []
"Col Nemo's Monocles[r], by Mel Coons" []
"The Cold Old Tech[r], by Ced Holt"
"Cold Water, Late Crowd[r], by [if player is male]Del Cowart[else]Delta Crow[end if]"
"Cold Wet Dew Clot[r], by Ted Cowl"
"Coleman, One Calm Lame Con[r], by O. McLane"
"Colonialists['] Oscillations[r], by Sion Castillo & Staci Ollison"
"Color is Cool, Sir[r], by [if player is male]Sol Rico[else]Cris Loo[end if]"
"Come agian, Egomaniac[r], by Meg Iacona"
"Come On, Men Coo[r], by Mo Cone"
"Come to Me, Coot[r], by Tom Coe"
"Commenter Rec-Moment[r], by Tom McNeer & Mort Nemec"
"A Common Ammo Con[r], by Mac Moon"
"A Complex Calm Expo[r], by Max Cople"
"Compromise: Micro Poems[r], by Cooper Mims"
"Computersd['] Cute Romps[r], by Tom Spruce"
"Comrades['] Co-Dreams[r], by Ed Marcos"
"Conceal Rarely Yon Cry Alone[r], by Carolyne Roylance"
"Concertos, Not Soccer[r], by [if player is male]Scot Crone[else]Coco Ernst[end if]"
"Confession Confines So[r], by [if player is male]Ennis Fosco[else]Connie Foss[end if]"
"Confide, Def Icon[r], by Doc Fine"
"Congruity Outcrying[r], by [if player is male]Guy Citron & Cyr Guiton[else]Ying Turco[end if]"
"A Conquest: Quotes Can Squat Once[r], by Coste Quan"
"Conservationalist Conversationalist[r], by Svetlana Sciortino"
"Consider Corn Dies[r], by Ned Corsi"[]
"Considerate Care is Noted[r], by Darci Osteen"
"Considerate Desecration: Anecdote, Sir[r], by [if player is male]Dante Serico[else]Doreen Staci[end if]" []
"Consul to CLOUT, Son? Cult Soon[r], by Su Colton"
"Contemporary Contrary Poem[r], by Payton Cromer & Marco Poynter"
"Contessa Doli Consolidates, Disconsolate[r], by DeLois Caston"
"Coo Spite So Poetic[r], by Otis Cope"
"Cook Quit Too Quick[r], by K. C. O'Quoit"
"Cool Duped Odd Couple[r], by Luc DePodo"
"The Cool Echo Lot[r], by Chet Loo" []
"A Cool Rant Too Carnal[r], by [if player is male]Ara Colton[else]Caron Toal[end if]"
"Cool Shades Schools Ed A[r] by Chas DeLoos"
"Cooling On Logic[r], by Gil Coon" []
"A Copywriter Wrote Piracy[r], by Capri Towery"
"Cordless Scolders[r], by Del Cross"
"Core-op Eco-Pro Cooper[r], by Roc Poe" []
"Corn-Fed [']N Forced[r], by Don Cerf"
"Corniest Noticers Censor It[r], by Cris Eton"
"Corniness Censorins['][r], by [if player is male]Nino Cress[else]Cris Sonne[end if]"
"Coronating Tragic Noon[r], by Cartooning Anton Corgi"
"Coroner-Crooner[r], by Ron C. Roe"
"Corruption Count Prior[r], by Curt Pirono"
"The Cost To Techs[r], by Chet Tso"
"Cottage: I Cogitate[r], by Tito Cage"
"County Finds Dysfunction[r], by Cyndi Founts"
"Courtesy or Cutesy?[r] by Rusty Coe & Stu Corey"
"Cowardly Wary Clod Wordy Cal[r], by [if player is male]Cary Wold[else]Darcy Low[end if]"
"Cowherd Chowder[r], by Drew Cho"
"Craig [']N Caring Nag Ric[r], by Carin G. Cragin"
"Cram Only Normalcy[r], by Lon Marcy"
"Crapulous, Opuscular[r], by Paulo Crus"
"Crayon Pics Conspiracy[r], by Pansy Ricco" []
"Crayoned Deaconry[r], by [if player is male]Don Carey[else]Candy Roe[end if]"
"Creak to a Rocket[r], by Art Coke"
"Creationist Recitations[r], by [if player is male]Scottie Arin[else]Tricia Stone[end if]"
"Creative Rite Cave[r], by [if player is male]Avi Crete[else]Traci Vee[end if]" []
"Cred? A Ton? Don't Care[r], by Dean Cort" []
"Credo: Irk Doc Riker[r], by Cid Roker" []
"A Creep E-Caper[r], by Cap Ree-Pearce"
"Creepy Mitt: Petty Crime, Temper City[r], by Mercy Petit"
"Crenelation Intolerance[r], by [if player is male]Lonnie Carte[else]Trina Conlee[end if]"
"Cretinous Neurotics['] Countries[r], by [toti] Cruse"
"Crime and Mind Care[r], by Ned Maric"
"Crime Goons['] Ergonomics[r], by [if player is male]Roscoe Ming[else]Meg Corsino[end if]"
"Crime? Merci[r], by Eric M"
"Cringe, Hot Ice Throng[r], by Teri Chong-Creighton"
"Criselda's Laser Disc[r], by Reid Class"
"Cristobal Lost a Crib[r], by Bo St. Clair"
"Crooked or Coked?[r] by Eco-Dork/OK Coder Red Cook"
"Croplike Rock Pile[r], by [if player is male]Eric Polk[else]Lori Peck[end if]"
"Crossly, Sly Orcs[r], by Ross Cly"
"The Crow's Hot Crews[r], by Wes Torch"
"The Crowd Threw Doc[r], by Ced Worth"
"Crowded Odd Crew[r], by Doc Drew"
"Crush the Tech Rush[r], by Che Hurst"
"Crushin['] Sun-Rich Urchins[r], by Nic Rush"
"Crustily, Rusticly[r], by Lucy Rist"
"Cry Eep, Creepy Percey[r], by Rep. Cey"
"Cry. Fail. Clarify[r], by Laci Fry"
"Cry Last, Crystal[r], by Ty Carls"
"Cry, Simon: Icy Norm's Cronyism[r], by Ros Mincy"
"Cub, Lady, Club Day[r], by Bud Clay"
"Cue, Sir: I Curse[r], by Su Rice"
"A Cue's Cause[r], by Esau Cuscea"
"Culls to Ol['] Cults[r], by Luc Olst"
"Cult Den[r], by Luc Dent & Ced Lunt"
"Cumberland's Calm Burdens[r], by Del Branscum"
"Cupid, Jeer Prejudice[r], by Jude Price"
"Curb [']Em, Mr. Cube[r], by Rube McCumber"
"Cure Also Carousel[r], by [if player is male]Lucas Roe[else]Cora Luse[end if]"
"Curse-Paw Swap Cure[r], by A Screw-Up"
"A Curse Saucer[r], by Su Cera"
"A Cursed crusade[r], by Sue Card"
"Cushing Chugs In[r], by Gus Inch"
"Cuss Fear Fuss Care: Surfaces[r], by Russ Face"
"Cussier Cruises[r], by Russ Ice"
"Cut Grain, Giant Cur[r], by Cari Tung"
"Cutlers['] Cluster[r], by Les Curt"
"Cynic, Hear Chicanery[r], by Carey Chin"
"Cynical Caci-Lyn[r], by Nic Lacy"
"Cynical, Icy Clan[r], by I. Clancy" []
"Da Life, Failed[r], by Lalida Diffee"
"Dabbler Drabble[r], by Del Barb"
"Dad, I'm No Diamond[r], by Mad Dino"
"Dad Loy's Old Days[r], by Sly Doda"
"Dad's Bile Disabled[r], by Sid Blade"
"Dad's Brow, Bad Words[r], by Brad Dows"
"The Damp PM Death[r], by Ted Pham"
"Damping Mind Gap[r], by Pam Ding"
"Dan and DNA: Add Ann?[r], by Nann Addad" []
"Dan Ho Had No Honda[r], by Noah Haddon"
"Dan Yu's Sunday[r], by Su Nady"
"Dan'l Gee, a Legend[r], by Egeland DeLange"
"The Dance-Teach Den[r], by Chet Dean"
"Dang Lips, Spin Glad[r], by Dan'l 'Pigs' Spalding"
"Dang Mimes['] Mind Games[r], by Sam Deming"
"Danger, Aid My Daydreaming[r], by [if player is male]Damien Grady[else]Madie Nygard[end if]"
"The Danger Raged Then[r], by [if player is male]Thad Green[else]Eden Garth[end if]"
"Danglin['] Landing[r], by Gil Dann"
"Dante's Chum Deutschman[r], by Ted Schuman"
"Dapper Dr. Pape Rapped[r], by Pepard Da Perp"
"Dapperer, Prepared[r], by Reed Rapp"
"Dare By Red Bay: Yer Bad[r], by Bry Ade" []
"Dare On, Rad One[r], by Dan Roe"
"Darer Mutiny: Rudimentary Unity Marred[r], by Terri Munday"
"Dares-Arsed Radar Seeds[r], by Drea Saders"
"Daring a Grind[r], by Girard Dannig"
"Dark Shadow: How Sad, Dork[r], by Dash Dworak"
"Dark Son Drank So[r], by Don Sark"
"The Dark Trek Had Hard Tek[r], by Kat Dreh"
"Dark Winter? Darker Twin, Drink Water[r], by [if player is male]Ward Tinker[else]Karri Wendt[end if]"
"Darken Danker, Kendra[r], by Ken Ard"
"Darling Ring, Lad Gardlin[r], by Gil Rand" []
"Darn, a DNR[r], by Dann Darr"
"Darn Choirs Dish Rancor[r], by [if player is male]Chad Norris[else]Cinda Shorr[end if]-Richardson"
"Darn, I go Adoring Roading[r], by Ingador Gironda"
"Darn Plot, Portland[r], by Rod Plant"
"Darn Sin Innards[r], by Sid Rann"
"Darn, to Dart On[r], by Rod Tan & Nat Ord" []
"Data Hill Had it All[r], by Thad Lail"
"Date More Moderate[r], by Tor Meade"
"Dauntless Adultness[r], by Tessa Lund"
"Dawdle, Dew Lad[r], by DeWald Waddle"
"Dawkins Wadkins Was Kind[r], by Sid Kwan" []
"The Dawn Had Went: What End?[r] by Ted Hawn"
"Day-Bother: Breathy Do By the Road[r], by Debra Hoyt"
"Day Ten: And Yet Tend, Ay[r], by Ty Dean"
"Daydream-Made Yard May Dread[r], by [if player is male]Adam Dyer[else]Mara Eddy[end if]"
"Daymares? Yes, Drama[r], by Ada Myers & Myra Sade"
"De Facto Taco-Fed, Co-Fated to Decaf[r], by [d-t] Face"
"Dead Anne[r], by [if player is male]Aden Dane[else]Edna Dean[end if]"
"Dead Mary's Daydreams[r], by Eddy Armas"
"Dead Men Amended Mad Need[r], by Ned Mead"
"Dead-Newsy Wednesday Dawned, Yes[r], by [if player is male]Wayne Edds[else]Wendy Sade[end if]"
"Dead Omens: So Amended Desdemona[r], by [if player is male]Damon Seed[else]Dede Mason[end if]"
"The Deal Hate Led[r], by [if player is male]Thad Lee[else]Dee Halt[end if]"
"The Deal With Hilda Hewett[r], by Letha Whited"
"Dear Brent: Enter, Drab Bartender[r], by Rand Ebert"
"Dear Damon, Andromeda Manor: Dead![r], by Dara Moden"
"Dear Ghost: Goatherds['] Hardest Go[r], by Art Hodges"
"Dear, if I Fared[r], by Frieda Fareid"
"Dear, it's Satired Staider[r], by Dre Tsai"
"Dear Jo or Jade: J'Adore[r], by Joe Ard"
"Dear Old Dad Lore: Lo, Dread[r], by Ed Doral"
"Dear Pa's Parades[r], by Ed Paras"
"Dear Sol, Sore Lad, Reloads[r], by Del Rosa"
"Dear Sot: Roasted or Sated?[r] by Ed Astor"
"Dear Voter (Overrated,)[r] by Art DeVore"
"Death Metal Healed Matt[r], by Mattee Dahl"
"Death? My, They Mad[r], by Mat Hyde" []
"Death? Not Done That[r], by Ed Hatton & Tad Thoen"
"Death Wish Hides What With Shade[r], by Shad White"
"A Deathly Hate, Lady[r], by Tad Healy"
"Deathsome Homestead[r], by Dee Thomas"
"Deb's Too Boosted[r], by Odo Best"
"DeBarth, The Bard[r], by Deb Hart" []
"Decal Once Concealed[r], by Alec Conde"
"The Decay Ached Yet[r], by [if player is male]Chet Eady[else]Cathy Dee[end if]"
"Deceits Sect, Die[r], by Sed Tice" []
"Decent's Descent[r], by Ned Stec & Ced Enst"
"Decrepit Creed Pit[r], by Ted Price"
"Deem For Freedom, Me: Do, Ref[r], by Fred Moe"
"Deem Shot the Domes[r], by Ted Moshe"
"Deep Diss, Despised[r], by Sid Speed"
"Deep Piers, Reed Pipes[r], by Pepe Dries"
"Deering Reigned[r], by Ned Iger"
"Defer Until Unfiltered[r], by Elden Fruit"
"Defer Ye Yer Feed[r], by Fred Yee"
"Deferral Re-Flared, Drear Elf[r], by Fred Lear"
"Deferring Nerd Grief[r], by [if player is male]Fred Negri[else]Fern Ridge[end if]"
"DeFord's Fodders[r], by Fred Sod"
"Defrayed Feedyard[r], by Edda Frey & Dedra Fey"
"Deftly Infer Differently[r], by [if player is male]Ferdie Flynt[else]Firefly Dent[end if]"
"Deistic Edict is Diciest[r], by Ced Isti"
"DeKalb Balked[r], by Del Bak"
"Delaune's unleased Used Lane[r], by Luna Dees & Adele Sun"
"DeLaurentis Adulterines, Neutralised[r], by [if player is male]Dustin Earle[else]Adriene Lust[end if]"
"Delete Leet Ed[r], by Ted Lee"
"Delila, Allied[r], by [if player is male]Ed Lail[else]Ida Ell[end if]"
"Della's Dalles[r], by Lad Les Edsall" []
"Delora's Ordeals[r], by Al DeRos & Rod Sale"
"Delude Le Dude[r], by Lu Dede"
"Demand a Man Dead[r], by Ned Adam"
"Demarinis's Misandries[r], by Iris Madsen & Mindi Sears"
"Demetri's Demerits[r], by Mister Ed & Si Detmer"
"Deming's Smidgen[r], by Sid Meng"
"DeMint's Mindset: Mis-Tend[r], by Sim Dent & Ned Mist"
"Demolish, Idle Shmo[r], by Mel Doshi"
"A Demon Moaned[r], by Dan Moe"
"Demons on Meds[r], by Desmon Sedmon"
"Demons['] Odd Mends[r], by Desmond Edmonds" []
"Demotion Into Demo[r], by [d-t] Monie"
"Dengel's Legends[r], by Les Deng & Des Glen"
"Denials, Lead-ins: Laden is Eli Sand[r], by Selinda Insdale-Daniels" []
"DeNiro Rode in, Ironed[r], by [if player is male]Didier Nooner[else]Dorie Nordine[end if]" []
"Dennis Yu's Sunny Side[r], by Sindy Suen"
"Dense Rut, Unrested Dentures[r], by Ted Usner"
"Denser Icy Residency[r], by Cindy Rees"
"Deplore, Old Peer[r], by Rod Peel"
"Deported Odd Peter[r], by Dede Port"
"Depraving Pervading[r], by Pig Vander"
"The Derby: Thy Breed[r], by Beth Dyer"
"Derogating Doing Great[r], by [if player is male]Diego Grant[else]Gidget Roan[end if]"
"DeRossi Dossier[r], by Sid Rose" []
"Desiccant Accidents[r], by Enid Cacts"
"Desire Re-Dies[r], by Sir Dee Seider"
"Desk Owner Needs Work[r], by Ken Dowers"
"A Despair Paradise[r], by Ada Piers"
"Despair's Dire Pass[r], by Sed Paris"
"Destination: No Daintiest Sin Antidote, It's Anointed[r], by [if player is male]Tino DeSanti[else]Nitta Edison[end if]"
"Destination: Tan Sedition Instead Into Inane Dittos[r], by Sandi Titone" []
"Destroying Stony Ridge[r], by Syed Girton"
"Detach Ad-Tech[r], by Ted Cha the Cad"
"Detaches as Etched[r], by [if player is male]Ted Chase[else]Cath Dees[end if]"
"Details Die Last[r], by Al Deist"
"Detain My Dynamite, Man-Deity[r], by Ty Damien" []
"Devil Sim Mislived[r], by Mel Divis"
"Dew-Born, Bred Now[r], by Ed Brown"
"Dew Point Tepid Now[r], by Wind Poet Edwin Top"
"Dew Sat[r], by Wade St. Tawdes"[]
"Diagnose San Diego? Agonised[r], by [if player is male]Dino Sage[else]Isa Ogden[end if]"
"Diagnosis: God is a Sin[r], by India Goss" []
"Dial Tone, To Denial Not Ideal[r], by Donte Ali & Ida Elton"
"Diastole, Isolated[r], by [if player is male]Del Saito[else]Lois Date[end if]"
"The Dice He Cited[r], by Ted Eich"
"Dicer Deric Cried[r], by Cedric Reid" []
"Dictatorship, Ditch a Ripost[r], by Picardi Shott"
"Die Anew, New Idea[r], by Dee Wain"
"Die Calm, Mild Ace[r], by Cam Idle"
"Die, Laggard Cleric[r], by Gricelda Claridge"
"Die Slow, Wise Old Sid Lowe[r], by Lois Dew"
"Diebel, Belied[r], by Ed Lieb"
"Dieringer's Grinderies[r], by [if player is male]Sig Ridener[else]Rene Sigrid[end if]"
"Dies Needy? Yes Indeed[r], by [if player is male]Eddy Niese[else]Dee Sidney[end if]"
"Dilemmas I Slammed[r], by Dale Mims" []
"Dilly's Idylls[r], by Ly Dils"
"Diluted Dude-Lit[r], by Luddite Eli Tudd"
"Dim Grace Grimaced[r], by [if player is male]Mac Ridge[else]Meg Darci[end if]"
"Dim? Yes. My Side[r], by Sy Deim"
"The Diner in the Red[r], by [if player is male]Ted Rhine[else]Enid Hert & Dee Trinh[end if]"
"A Diner: Readin['] and Ire[r], by Darien & Nerida Adrien"
"Dingier Cons Considering Nicer Doings[r], by Cindi Gerson"
"Dinsdale's Side Lands[r], by Silas Nedd"
"Dipietro's Tripodies[r], by Otis Pride"
"A Dipole, Oedipal[r], by [if player is male]Lida Poe[else]Ed Paoli[end if]"
"The Dire Deer-Hit Hid Tree[r], by Ed Reith"
"Dire Fop of Pride[r], by Fred Pio"
"Dire Howls, Wild Horse[r], by [if player is male]Lewis Hord[else]Dori Welsh[end if]"
"A Dire Id Era Aired[r], by Aida Reider"
"Dire Rap Parried Rapider[r], by Pa Rider"
"Dire Scene Residence[r], by Sincere Ed"
"Dire Wolf's Life Words[r], by Lewis Ford"
"Dire Zeal Realized[r], by [if player is male]Ezra Idle[else]Liza Reed[end if]"
"A Direct Car Diet[r], by Tad Rice"
"Directions: Discretion So Indirect[r], by Don Cristie"
"Dirt Serf Drifters[r], by Fred Rist"
"A Dirt Triad[r], by Art DiTardi"
"The Dirt's Third Set[r], by Sid Rhett"
"Dirty Room Dormitory[r], by Roy Ditmor"
"Disaster Dares Sit[r], by Tad Siers"
"Discourses Cruised So[r], by Susie Cord"
"Discriminators['] Doctrinairisms[r], by Smart Di Corsini"
"Disgrace Acre Digs[r], by Cid Sager"
"Dismalest Medalists[r], by Tad Smiles"
"Dismallest Medallists[r], by Della Smits"
"Disowned: Downside, So Winded[r], by [if player is male]Denis Dow[else]Dion Dews[end if]"
"Disruptive Prude Visit[r], by Vi DuPriest"
"Dissenter Tiredness, Residents[r], by Sid Sterne"
"Dithering Thin-Dirge Night Ride[r], by Hedi Grint"
"Diverse Derives, Revised[r], by Dr. Sieve"
"Diverse Drivees I Served[r], by Deviser Irv Dees"[]
"Do Ill? Ew, I Do Well[r], by Leo Wild"
"Do Lean on Dale[r], by Lon Ade"
"Do Let's Sled To[r], by Les Tod"
"Do Meet to Deem Emoted[r], by Ted Moe & Tom Dee"
"Do New, We Nod[r], by Wende O'Down"
"Do Nobly, Yon Bold Bony Old Blond, Yo[r], by Lon Boyd"
"Do Not Sleep, Olden Poets[r], by [if player is male]Donte Lopes[else]Dee Polston[end if]"
"Do Rust or Dust[r], by Otto-Russ Rudd"
"Do So, O Sod[r], by Dodo Soos"
"Do Swim, Wisdom[r], by Sim Dow"
"Do Well, Low-Led Old Lew[r], by Ed Woll"
"Do Worry, Rory Dow[r], by Roy Word"
"Doc Beth Botched BodTech[r], by Ted Boch"
"Doc Tries So Direct[r], by Edric Tso"
"Documents I Miscounted[r], by Donte Music" []
"Dodging Ammonia in Dogma[r], by Dominga Mandigo"
"A Dog is Sad: I Go[r], by Sid Gao"
"Dogs are So Raged[r], by Rod Sage"
"Doin['], I Nod[r], by Noni Dido"
"Doing Well: I Lend Glow[r], by Lew Goldin"
"Doleful Loud Elf[r], by O'Dell Fu"
"Dollars to Toll Roads[r], by [if player is male]Lord Salto[else]Lola Drost[end if]"
"Dolls Yet Old-Style[r], by Dell Yost"
"A Doltish Oath Slid[r], by Ida Holst"
"Don't Ape Pat Oden[r], by [d-t] Pena" []
"Don't Be a Neat Bod[r], by Bo Dante"
"Don't Be No-Debt[r], by Bo Dent"
"Don't-Care Coed Rant[r], by [d-t] Crane" []
"Don't Fear a Red Font[r], by Dean Fort"
"Don't Move, Vent Doom[r], by Tom Devon"
"Don't See No Steed[r], by Ted Enos & Ed Stone" []
"Don't See to Needs[r], by Ed Stone"
"Donatistic Dictations[r], by India Scott"
"Donetta, Notated[r], by Don Tate"
"Donors So Redone or Sodden Sooner[r], by Rosendo Ordones"
"The Door to Herod[r], by [d-t] Rohe"
"Dopier Period! O Pride![r] by Rod Pei"
"Dopy [a-b] Peabody[r], by Pebo Day" []
"Dopy Hal's Posh Lady Holds Pay[r], by Loyd Hasp"
"Dork Play? Dark Ploy[r], by Loyd Park"
"A Dork's So Dark[r], by Rod Sak-Kardos"
"A Dork's Zen: Dark Zones[r], by Zander Kos"
"The Dorms Herd Most[r], by Ed Strohm"
"Dorset Doters[r], by Rod DeRossett"
"Dorx of Oxford[r], by Rod Fox"
"Dosage, Sea Dog[r], by Dad-E-O Gossage"
"Dote and Add Note: Not Dead[r], by [d-t] Dean"
"Double Pro Pure Blood[r], by [if player is male]Bud Looper[else]Lupe Bordo[end if]"
"Doubles Do Blues[r], by Sue Bold"
"Doug the Huge Dot[r], by Ted Hugo"
"Dour Glad Old Guard[r], by Olga Rudd" []
"Dovetail, Violated Old Evita[r], by Teo Vidal" []
"Down Gin Now, DING[r], by Don Wing" []
"Downfall of Lladwn[r], by Dan'l Wolf"
"Downtime's Wisdom Net[r], by Owen Smidt"
"A Doyen One Day[r], by Ned Yao & Dan Yeo"[]
"Doyen Sim on My Side[r], by Sid Money & Denis Moy"
"Doyens Nod Yes[r], by Syd Eno"
"Dr. Choi's Orchids[r], by Sid Croh"
"Dr. Deon Droned[r], by Ned Ord"
"Dr. Egan's Gardens[r], by Reg Sand" []
"Dr. Fok is For Kids[r], by Rod Fisk"
"Dr. Joan Jordan[r], by [if player is male]Jon Ard[else]Jo Rand[end if]" []
"Dr. Kothe, the Dork[r], by Ted Kroh"
"Dr. Lane's Rad Lens[r], by Les Rand-Sandler"
"Dr. Lange, Gnarled Nerd-Gal[r], by Rad Glen LeGrand"
"Dr. LeDuc, Curdled Cuddler[r], by D. D. Clure"
"Dr. Lee: A Dealer[r], by Lee Ard"
"Dr. No-Lab Ran Bold[r], by Bald Ron Borland"
"Dr. Oden Droned[r], by Ned Ord"
"Dr. Pogyi, Prodigy: I'd Go Pry[r], by Gord Yip"
"Dr. Rocha's Orchards[r], by Rod Rasch"
"Dr. Same-Dreams[r], by [if player is male]Ed Mars[else]Red Sam Semrad[end if]"
"Dr. Spano Pardons Rod's Nap[r], by Don Rasp"
"Dr. Vogue, Rev. Doug[r], by Rog Duve"
"Drab Angie Bargained Gabardine[r], by Gena Baird & Ada Bering"
"Drab Lit, Brit Lad[r], by Al T. Bird"
"Drab-Lit Libtard Lad Brit[r], by Tal Bird"
"Drab Mutes Muster Bad Drumbeats[r], by Bert Dumas"
"Drab Stu Bustard[r], by Bud Rast"
"Draft One Tea Frond[r], by Red Afton" []
"Dragons So Grand[r], by Rod Gans"
"Dramatise, Armistead[r], by [if player is male]Sid Matera[else]Mae Astrid[end if]"
"Drastic St. Darci[r], by [if player is male]Sid Cart[else]Cris Tad[end if]" []
"Drawn Olden Wonderland[r], by [if player is male]Ned Waldron[else][end if]"
"Dread Adder Dared[r], by Dedra Edard"
"Dream County Documentary[r], by Myrna Doucet"
"Dream Logic: Old Grimace, Miracle-God[r], by [if player is male]Gil Mercado & Ced Milagro[else]Carol Midge & Marcie Gold[end if]"
"Dream on and More, Mad Nero[r], by Dan Rome"
"Dream Time: Readmit Me[r], by [if player is male]Tim Maeder[else]Tammi Reed[end if]"
"Dream World: Mold, Redraw[r], by Redd Marlow"
"DreamCo Comrade Mo Cared More, Cad![r], by DeMarco Mercado"
"Dreams of More Fads[r], by Ford Ames"
"DrearCo: a Record[r], by Rod Race"
"Dreem of Freedom[r], by Mo Feder" []
"A Dreg Raged[r], by Edgar Radge" []
"Dressing Up Purged Sins[r], by Gund Priess"
"Drew and Red Dawn[r], by Ned Ward"
"Drink Tea, Darn Tike[r], by [if player is male]Nate Dirk[else]Kira Dent[end if]"
"A Drive, Varied[r], by Deadra Vivier"
"A Driver Arrived[r], by Vi Rader"
"Drole Ol['] Red, Older Lorde[r], by Dr. Leo Elrod-DeLor"
"Drone by a Boneyard Brayed On[r], by [if player is male]Arne Boyd[else]Robyn Ade[end if]"
"Drone On, Dr. Noone[r], by Ron Oden"
"A Drone-On Read[r], by Dorena Ardone-DeNaro" [r]
"Drop All, Alp Lord[r], by Droll Pa Pollard" []
"Drop, Pin! Pop, Rind! Rip, Pond[r], by Pip Dorn"
"Drowned Oath Down the Road Trodden, Whoa[r], by [if player is male]Donte Howard & Edwardo Noth[else]Dedra Howton[end if]"
"A Drudge, Guarded[r], by Edd Gaur"
"Drugs of Fur Gods[r], by Gus Ford"
"Drunk Jay's Junkyards[r], by Judy Karns"
"Dry Abe, Ye Bard Beardy: a Derby[r], by Deb Ray" []
"Dry AI Diary[r], by Yadir Riady" []
"Dry Bo, Boy Dr.[r], by Brody O'Byrd"
"Dry Haler Heraldry[r], by Hal Ryder"
"Dry Mouth, Dour Myth[r], by Ruth Mody & Trudy Ohm"
"Dry Mouths['] Dour Myths[r], by [if player is male]Dusty Mohr[else]Trudy Ohms[end if]"
"Dry Omens: My So-Nerd Syndrome[r], by Sy Redmon"
"Dry Salon: Old Yarns[r], by Lyn Rodas"
"Dryable Bradley[r], by [if player is male]Al Derby[else]Deb Rayl[end if]"
"Drygate Tragedy[r], by Ted Gray & Gert Day"
"Dubliner, I Blunder[r], by [if player is male]Enid Burl[else]Del Rubin[end if]"
"Dubliners['] Ruins Bled: Sure, Blind Idle Burns[r], by Les Durbin & Sid LeBrun"
"Duc Love Could've[r], by Luc Devo"
"Duck! Real Luck, Dear, Due Clark[r], by Luc Drake"
"Duck This Sick Thud[r], by [if player is male]Dick Hust[else]Kit Dusch[end if]"
"Dud Sap Adds Up[r], by A. Spudd"
"Dude, Lap a Puddle[r], by Edd Paul"
"Duh, Tell the Dull[r], by Ted Hull"
"Dull Maw, Mud Wall[r], by Wm. Udall"
"Dumb as Sad Bum Bud Sam[r], by Bub Massa-Mudd"
"Dumber Ones Numbered So Burdensome[r], by Ruben Demos & Bud Emerson"
"Dunbar's Sad Burn[r], by Brad Sun"
"Dunce Tom's Documents[r], by Comus Dent" []
"Duper-Oath Up the Road: Proud Hate[r], by [if player is male]Pedro Haut[else]Hope Dutra[end if]"
"A Duty? Ay, Tut, Ya Dud[r], by Tad Yu"
"Duty: Solve, Study, Love[r], by Stuey Vold"
"E-Czar Craze[r], by Z. C. Rea"
"E-Divas I Saved[r], by Sad Evi Davies"
"E-Z In Zine[r], by Inez Enzi"
"Each Cashes as he Caches[r], by Chase Aesch"
"Each Inert Nice Heart[r], by Teri Hance"[]
"Each Red Charade[r], by Arch Dee"
"Each Vet the Cave[r], by Eve Tach"
"Each Wry Why-Care[r], by [if player is male]Ray Chew[else]Cher Way[end if]"
"Eagerly Past a Spry Eaglet[r], by Gayla Peters" []
"An Eagle's Gala Seen[r], by Sean Gale"
"Earbuds? Bad, Sure[r], by Sue Bard"
"Earl Hit the Lair[r], by Art Ihle" []
"Earliest Ateliers/Realties[r], by [if player is male]Eli Satre[else]Rae Stile[end if]"
"Earliness, Leariness[r], by [if player is male]Neal Reiss[else]Erin Seals[end if]"
"Early Relay Layer[r], by Leyla Rayer"
"Earn Trust? Rare Stunt[r], by Ren Stuart"
"Earringed Grenadier Dearinger[r], by [if player is male]Dan Reiger[else]Erin Edgar[end if]"
"Ears, Sear[r], by Sara Rees"
"Earth-Clad Cathedral[r], by Tad Lacher"
"Earth is Astir, eh? Share it[r], by Tia Sher"
"Earth Nite: Hearten it, Henrietta![r] by Rene Hiatt"
"Earwig, Rig Awe[r], by Ewa Weir-Graig"
"Ease, Thrill, Satire, Hell: All There Is[r], by Leslie Hart & Hera Tellis"
"Easier Aeries[r], by Ira See"
"East Wood: Toad's Woe[r], by Wade Soto"
"Eastbed Debates[r], by Tab Dees"
"Eat, Drink, Darn Tike[r], by Kent Adri" []
"Eat, Love: To Leave[r], by Eve Toal"
"Eat. Run. A Nut Re: Nature[r], by Ren Tua"[]
"Eat Slop to Lapse[r], by Sal Peto"
"Eberling's Inselberg[r], by Ben Sigler"
"Ebola: O, Bale[r], by Bo Lea"
"Echo Ire? Cheerio, I Cohere[r], by [if player is male]Reo Eich[else]Cori Hee[end if]"
"Echo Mr. Chrome[r], by Mo Cher"
"Eco-Dust: Due Cost Scouted[r], by Ted Usco"
"Eco-Ship Hospice[r], by Chip Ose" []
"Ed Has a Shed[r], by De Ash" []
"Ed Ictis, Diciest Deicist[r], by Sid Tice" []
"Ed Napoli's Palinodes[r], by [if player is male]Dale Spino[else]Opal Denis[end if]" []
"Ed Pyle Yelped Deeply[r], by Del Pye"	100
"Ed Wood's Odd Woes[r], by Wes Dodo"
"Ed Writes Weirdest[r], by Stew Reid"
"Ed's Cable Debacles[r], by Seb Cadel"
"Edgar, a Dreg[r], by Gerda Garde"[]
"Edrington's Grindstone[r], by [if player is male]Goren Stind[else]Enid Strong[end if]"
"Educations: Ideas Count[r], by [if player is male]Tad Ionescu[else]Candie Tsou[end if]"
"Educing a Guidance[r], by [if player is male]Ice Dugan[else]Inga Duce[end if]" []
"Eel Inn[r], by Lennie Leinen"
"Eel Jaw: a Jewel[r], by Jae Lew"
"Eelskins['] Likeness[r], by Len Sikes"
"Eeriest Sisters[r], by Tressie Tessier"
"Eeyore's Eyesore[r], by Rose Yee"
"E.G. Think the King[r], by Keith Ng & Ken Gith" []
"E.g. With Weight, the Wig[r], by Gig Thew-White"
"Ego, Crave Coverage[r], by Eva Greco"
"Ego-Trip Got Ripe[r], by [if player is male]Rog Piet[else]Peg Orti[end if]"
"Egoist-o-Geist: it Goes[r], by Sig Te'o"
"Eh, Al, Heal[r], by Leah Hale"
"Eh, Blast the Slab[r], by Hal Best"
"Eh, Go Down When Good[r], by [if player is male]Ogden How[else]Gwen Hood[end if]"
"Eh, Pass, Shapes[r], by Pa Hess"
"Eh, Spout the Soup Up Those[r], by Hue Post"
"Eh, Toby, the Boy[r], by Eb Hoyt"
"Eh, Toning: Gone Thin[r], by Theo Ginn"
"Eichmann-Men Chain[r], by Mae Chinn"
"Eight Bit? I Be Tight[r], by Gib Hiett"
"Eight Born, One Bright: The Boring[r], by [if player is male]Bert Honig[else]Toni Bergh[end if]" []
"Eight Years a Geyser Hit[r], by Gertie Hays & Tisha Geery"
"Eisenbarth Hibernates, Breathes In[r], by [if player is male]Ethan Biers[else]Tisha Breen[end if]"
"Either-So Theories[r], by Otis Rhee"
"El Dope Eloped[r], by Del Poe"
"Elaborate Oblate Era[r], by [if player is male]Lee Tabora[else]Tora Albee[end if]"
"Elder, I re-Idle[r], by Deriel Ridlee-Riedle"
"An Elder Learned a Lender[r], by Rand Lee" []
"Electro-Tec Lore[r], by Tre Cole"
"Elegies? Gee, Lies[r], by Giesele E. Seigel"
"Elf Coast Coal Fest[r], by Flo Cates"
"Elf Inge, Fleeing Feeling[r], by Eli Feng"
"Elf Lover Fell Over[r], by Flo Lever"
"Elf Ross, Flosser for Less[r], by Ros Self"
"Elf Valor: Fall over[r], by Flo Ravel"
"Elfy, Elfy[r], by Lyle Fyfe"
"Eli's Leis Isle[r], by Isis, Elle & Si Leslie" [x]
"Elite Hank in the Lake[r], by Nat Heikel"
"Elk I Like[r], by Kelli Ike"
"Elk, Nene, an Ankle, a Kennel[r], by [if player is male]Ken Lane[else]Nan Leek & Ann Klee[end if]"
"Ella May Lay Lame[r], by Alma Ely"
"Elliot's Lost Lie: So, I Tell[r], by [if player is male]Leo List[else]Lis Leto[end if]"
"Elmdale, Male-Led[r], by Al Medel"
"Else Opt to Sleep[r], by Lee Post"
"Elton's Lonest Stolen Ol['] Nest[r], by St. Leon Elston"
"Elysium Isle, Yum![r] by Miles Yu"
"Em Sagna Manages[r], by Sam Egan"
"Em Smells Mel's Elms[r], by Les Melms"
"Em's Vim Vies[r], by Ms. Evi Vimes"
"Emigre Regime[r], by Meg Eir"
"Emmi Ard, a Dimmer Mermaid[r], by Dr. Mamie DeMarim"
"Emot-Tome[r], by Moe Motte" []
"Empires['] Premise[r], by Pieper Messimer"
"Enabled-Bed Lane[r], by Lee Band"
"Enact or Care Not[r], by Art Cone"
"Encase A Scene: Can See?[r], by Seneca Ceesan"
"Enclosed Old Scene[r], by Ned Coles"
"End With the Wind[r], by Ned Whit"
"End Word, Drowned Odd Wren[r], by Don Drew"
"End's Ark, Snarked, Darkens[r], by Ned Rask"
"Endure Ur-Need, Rue End[r], by Dee Run"
"Enduring Drug Nine[r], by [if player is male]Reid Gunn & Ned Rungi[else]Erin Gund & Geri Dunn[end if]"
"Engrave, Avenger[r], by Gran Eve Van Geer"
"Engrossed Nerds['] Egos[r], by Deren Goss & Don Segers"
"Enhancer Ran Hence[r], by Rene Chan"
"Enigma, I Imagine[r], by Gia Mein"
"Enliven, Reviler[r], by [if player is male]Evil Ren[else]Verline[end if] Leviner"
"Ennuis[r], by Sunnie U. Ennis"
"Enoch's Chosen Noches[r], by Sen-Cho Schoen"
"Enos, Try Tyrone's Tyres On[r], by Rey Snot"
"Enrich: a Reach In[r], by Ira Chen"
"Ensue, Toxic Executions[r], by Tex Cousine"
"Entitled Idle Tent[r], by [if player is male]Ed Litten[else]Enid Lett[end if]"
"Entrails, Latrines[r], by [if player is male]Neil Rast[else]Ali Stern[end if]"
"Entropies Interpose[r], by [if player is male]Nito Peers[else]Irene Post[end if]"
"Envy Dirk, Very Kind Nervy Kid[r], by Kevin Dry"
"Envy Erases Seven Years[r], by Venessa Rey"
"Epic Rut Picture[r], by Curt Pei"
"Epidemic: Dim Piece[r], by Cimi Deep"
"Epigram Primage[r], by Pam Iger & Meg Ripa"
"Equated as Adequates[r], by Tesa Quade"
"Er, Yes, Reesy[r], by Syree Reyes"
"Era Eight Heritage[r], by Gita Rhee"
"Era End Neared[r], by Randee Deaner"
"Era Ended, Endeared Deadener[r], by [if player is male]Andre Dee[else]Edra Eden[end if]"
"Era from More Far[r], by Raf Rome"
"Erase, Start: Art Teasers[r], by Tresa Tesar"
"Erasing Searing Gainers[r], by Agnes Ri" []
"Erdman's Remands[r], by Ned Mars"
"Ere a Razz, Raze[r], by Ezra Azer"
"Ere Hearty Year Three[r], by Tyree Hare"
"Ere Shaw Was Here[r], by Wash Ree & Ash Ewer"
"Ere Venom, Even More[r], by Mo Vereen" []
"Erect Crete[r], by CeCe Retter"
"An Erect Cretean[r], by Art Ence"
"Eric Rust, Stu Crier: Crustier Recruits[r], by Curt Ries"
"Eric's Cries[r], by Ricci Esser"
"Eric's Pet Receipts[r], by Cris Peet"
"Erin's J/K Jerkins[r], by Jen Risk"
"Erm, Shy Hermy's Rhymes[r], by Em Rhys"
"Erotic Nudism: Dim Neurotics['] Reductionism[r], by [if player is male]Dominic Suter[else]Cristine Odum[end if]"
"Erotic Rant Retraction[r], by [if player is male]Rico Arnett[else]Nita Rector[end if]"
"Err, Dog, Order Red Grog[r], by Rodger Gorder"
"Errant Nate, Rear Tenant[r], by Trena Arent"
"Errs Get Sterger[r], by Reg Rest"
"Erstwhile Wilts Here[r], by [if player is male]Stew Riehl[else]Teri Welsh[end if]"
"Erupt, Animal Plantearium[r], by Paul Armenti" []
"Erv, I Got Vote-Rig Vertigo[r], by Reg Voit"
"Eskimos: Some Ski[r], by Ike Moss"
"Esotropic Porticoes[r], by [if player is male]Otis Coper[else]Corie Post[end if]"
"Especially Epic Alleys[r], by [if player is male]Ice Lapsley[else]Celia Pyles[end if]"
"Essric Scries Crises[r], by Crisse Iscser"
"Estimated Dematteis Meditates Admittees[r], by Tami Deets"
"Estrange Grantees, Sergeant[r], by Stan Eger" []
"Et Voilà, Violate a Violet[r], by Avi Leto" [x]
"Eternise, Teensier[r], by Teri Nees"
"Ethically, I Yell-Chat[r], by Tacey Hill"
"Ethics Itches[r], by Chessie Titch"	60
"Eton's Onset[r], by Enos Teston"
"Eunuchs['] Shun-Cue[r], by Sue Chun"
"Evaders Ever Sad, Re-Saved[r], by Dav Rees"
"Eve Ruins Universe[r], by Sue Ervin"
"Eve's Sandy Seven Days[r], by Syed Evans & Evan Dyess"
"Eve's Silly Ivy[r], by Sylvie Sivley"
"Even Grief Given Free[r], by Vern Feige"
"Even Sty Seventy[r], by Ty Neves"
"Ever-Daunt Adventure[r], by Dave Utner" []
"Everlasting Resting Vale[r], by Lester Gavin"
"Every Birth by the River[r], by Ivy Herbert"
"Every Bit Be Verity[r], by [if player is male]Ty Biever[else]Ivy Ebert[end if]"
"Everything Vying There[r], by Ivy Genther"
"Evident, I Vented[r], by Ted Vine"
"The Evil Hivelet[r], by [if player is male]Lev Heit[else]Eve Hilt[end if]"
"Evil Laws Will Save[r], by [if player is male]Val Lewis[else]Liv Wales[end if]"
"Evil Lord Dolliver[r], by Reid Voll"
"Evil Twins Wilt Vines[r], by Wes Litvin"
"Evildoers So Reviled[r], by [if player is male]Elrod Ives[else]Ilse Dover[end if]"
"The Evils Hit Elves[r], by Les Veith"
"Evita's Vitaes[r], by Ev Tsai"
"Ew, Dorky Keyword[r], by Drew Koy"
"Ew, Reason: Erase Now Saner Woe[r], by [if player is male]Wes Roane[else]Rea Owens[end if]"
"Ew, There's the Sewer: Wet, Sheer[r], by Wes Ereth"
"Eww, Tests[r], by Stew West"
"Exactly[r], by Tex Clay"
"Excluded dud, excel![r], by Dex LeDuc"
"Exiles: Lexie's Sex Lie[r], by Lee Six"
"Exponential-Polite Annex[r], by Ileen Paxton"
"Expulsed Duplexes[r], by Lex DePus"
"Eying Foul, Young Life?[r] by Flo Guiney"
"Fab foes['] Safe Fob-Off Base[r], by Bo Fefsa"
"Fab Foul Buffalo[r], by Bo Lauff"
"Face North: Each Front, Notch Fear[r], by Nora Fecht"
"Factories['] Cafe Riots[r], by Cora Feist"
"Factoring Caring Oft[r], by Gino Craft & Traci Fong"
"Facts is Fascist[r], by Tif Cass"
"Fad-Like, I Flaked[r], by Kia Feld"
"Fail, Done: Final Ode of Denial[r], by [if player is male]Aldo Fine[else]Fae Dolin[end if]"
"Fail-Man Fan Mail[r], by Alf Mina"
"Failures Use Flair? Fie, a Slur[r], by Israel Fu"
"Faint, if Naif Fit, Tiffani[r], by Fifi Tan"
"Fainter Fine Art[r], by Tia Fern"
"The Fair Fear Hit[r], by Tai Fehr"
"Fall Down, Wolf Land[r], by Fawn Doll"
"Fallacy? Flay Cal[r], by Alf Clay"
"False Hick Has Fickle Life Hacks[r], by [if player is male]Leach Fisk[else]Shea Flick[end if]"
"Falsely Inside Elysian Fields[r], by [if player is male]Fidel Sainsley[else]Felisa Lindsey & Delfina Sisley[end if]" []
"Fame, Sin, Famines[r], by Sam Fine"
"Familiar Frail Aim[r], by Alf Amiri"
"Fanciest Snitface[r], by Stef Cain"
"Fanfic's Naff (Sic)[r], by Nic Saff"
"The Far Father[r], by Teffa Ehrhart"
"Far Iciest Artifices[r], by [if player is male]Eric Faist[else]Staci Frei[end if]"
"Far-Led Alfred[r], by Fredda Farell"
"Far Moths, Hats From Shamfort Hot Farms[r], by Sam Forth"
"Far North Front, Rah[r], by Fran Hort"
"Farm So: of Arms for Sam[r], by Mo Sarf"
"Farmhouse Four Shame[r], by Amos Rhufe"
"Farmy Ma Fry[r], by Mr. Fay Afrym"
"Fast Firm Stiffarm[r], by Tim Sarff"
"Fasties['] Fiestas: [']Tis Safe, Sis. Fate[r], by Tia Fess"
"Fat Fence: an Effect[r], by Cate Neff"
"Fat-i-vores['] Favorites[r], by Avi Foster" []
"Fat Lord, Old Fart[r], by Flo Dart-Talford"
"Fat Red's Sad Fret[r], by Stef Ard"
"A Fat Sum, Ma Faust[r], by Atsumfa Mustafa"
"Fated for Trade-Off[r], by Ted Raffo"
"Fated Here The Feared Feathered Draftee, Eh?[r] by Thea Feder"
"A Father's Hat Fears[r], by Rea Shaft"
"Fathom of Math[r], by Mo Haft"
"Fatigued, Due a Gift[r], by [ta] Fudge."
"Fatigued, I Dug Fate[r], by [ta] Fudge"
"Faulkner's Real Funks[r], by Fran Lukes"
"A Favor for Ava[r], by Raf Avo"
"Favorable Brave Olaf, Verbal Oaf[r], by [if player is male]Rob LaFave[else]Bev Alfaro[end if]"
"Fear-Taken Neat Freak? Aren't Fake[r], by Kate Fearn"
"Fearing a Finger[r], by Geri Fan" []
"Feast, or Fares to a Forest of Tears[r], by Tre Faso"
"Fed Rumors of Murders[r], by Ford Remus"
"Federal Are Fled[r], by Alfred E. Redleaf" []
"Federals? Dare, Self[r], by Sal Freed"
"Feel, Burn, Fun Rebel[r], by Fern Blue"
"Feel-Rants: A Stern Elf, Left Saner[r], by [if player is male]Lester Fan[else]Fran Steel[end if]"
"Feel That Late Heft[r], by Fat Ethel"
"Feet, sir? I Fester[r], by Treefis Seifert"
"Feigh, Shirk, Fisher King[r], by Rifek Singh"
"Felinity, Finitely[r], by Tiny Leif"
"A Felony's Only Safe[r], by Fay Slone"
"A Feminist, I: Manifest[r], by Mistie Fan"
"Feud Logs of Sludge[r], by Doug Self"
"Few LOLs, Fellows[r], by Les Wolf"
"Fey Sol Foley's Sly Foe[r], by Les Foy"
"Fie, Dr. Fried[r], by Deidre Riff"
"Fie, Sam, I'm Safe[r], by Effima Massie"
"Fie, Self! Eff Lies[r], by Les Fife"
"Filch a Sword, Cold Raw Fish[r], by [if player is male]Wilford Cash[else]Wilda Frosch[end if]"
"Files of Lie-Offs[r], by Sol Fife"
"Filter No Torn Life[r], by Roe Flint"
"A Filthy Haylift: Thy Fail[r], by Fay Hilt" []
"Find [']er, Red-fin![r] by Nidiffer Dern & Fred Ni" []
"Fine Lad Elf and I[r], by Alf Dein"
"Fine Light Nightlife[r], by Tif Ehling"
"Fine or on Fire[r], by Ron Fei" []
"Fine Worth For the Win[r], by Owen Firth"
"Finer Fog Offering[r], by Erin Goff"
"Fir Slope Profiles[r], by Flip Rose"
"Firmest Me-First[r], by Mr. Feist"
"Firmly to a Formality[r], by Troy Flaim"
"Firrefly Life, Fry[r], by Riff Ely"
"First-Ever Riverfest[r], by Trev Fries"
"First Hand Trash Find[r], by Hans Drift"
"First Lady Flays Dirt[r], by Sly Tardif"
"Fitfulness Stifles Fun[r], by Sen Sutliff" []
"Five Days: Ivy Fades[r], by Davy Seif"
"Five-Null, Funville[r], by Vi Fullen"
"Flag Ride: Garfield, Fred, Gail[r], by Alf Ridge"
"A Flaky AFK-Lay[r], by Alf Kay"
"Flared Rad Elf[r], by Alfred Fardle" []
"Flashiest Fish Tales[r], by Elsa Shift"
"A Flavor of Larva[r], by Ava Rolf"
"Flee Corn, Florence[r], by Fern Cole" []
"Flee, Win New Life[r], by Lew Fine"
"Flesh Out Soul Heft[r], by Flo Shute"
"The Flicks Hicks Left[r], by Stef Hickl"
"Flier at a Trifle[r], by Art Leif"
"A Flight-Hit Flag[r], by Gil Haft"
"Floating to a Fling[r], by Gil Afton"
"A Flood, Old Oaf[r], by Alf Odo"
"Floor Nine, One Florin[r], by Lin Onofre"
"Flop Up, Pup Flo[r], by Ulf, Pop of Pulp"
"The Flops: Top Shelf[r], by Flo Speth"
"Flora for Al or Alf[r], by Raffa Rollo"
"Flouters of Luster Left Sour[r], by [if player is male]Leo Furst[else]Lu Foster[end if]"
"Flow Lone, Low Felon[r], by Len Woolf" []
"Flow, My Fan, Off My Lawn[r], by Myna Wolff"
"Flow, Sea of Wales[r], by Sol Efaw"
"Flower Kid Field Work[r], by Wilfred Ko & Ford Wilke"
"Flowery, or We Fly[r], by Rey Wolf" []
"Flukin['], I Flunk[r], by Lu Fink"
"Fly on Ere Only Free[r], by Ren Foyle"
"Fly, Rouse Yourself[r], by Rolf Suey"
"Folk-Bodies['] Field Books: Fools Biked[r], by Fidel Bosko"
"A Folksy Sky-Foal So Flaky[r], by Fay Klos"
"Follow Me Mo['], Fellow of Mellow[r], by Elmo Wolf"
"Fond Cay Fancy Do[r], by Cody Fan" []
"Food/Rest Dose Fort[r], by Ted Roofs & Fred Soto"
"Fool, Cut of Clout[r], by Luc Foot"
"The Fool Left, Oho![r] by Leo Hoft"
"Fool-Spun Spoonful[r], by Flo Ponus"
"Fooling Gilfono-Fogolin[r], by Gino Lof"
"Foot-Long Goon Loft[r], by Fog Olton"
"Footballs['] Lobs Float[r], by Flo Oblast"
"For Codes So Forced[r], by Red Fosco"
"For Smart Art Forms[r], by Mr. A. Frost"
"Forays of Syra Fray So[r], by Ros Fay"
"Forbear, Far Bore[r], by Reo Farb"
"Forbidden Fib, Droned[r], by Fred Dobin" []
"Forbidden Fond Bride[r], by Deb Inford"
"A Force or Face of Care[r], by Ara Coe-Coffer"
"Forecasted Defecators[r], by [if player is male]Fred Coates[else]Stacee Ford[end if]"
"Foreign Reign of No Grief[r], by Goferin['] Rio Feng"[]
"The Form for Them[r], by Em Forth"
"A Form of RAM for Ma[r], by Momar Raffo"
"Formal Mr. Olaf[r], by Al From"
"A Fort of Art[r], by Tara Troffo"
"Fortunes of Unrest[r], by Ren Fouts"
"Forwardest Afterwords[r], by Ward Foster"
"A Fossil Fails So[r], by [if player is male]Sol Asif[else]Flo Issa[end if]"
"Foul Bind of Dublin[r], by Blondi Fu"
"Foul Dire Fluoride[r], by Lou Fried"
"Foul Dr. Rudolf[r], by Lu Ford"
"Foul Hefts to Shuffle[r], by Lute Shoff"
"Foul Sight: Ghoul Fist, Flush it, Go[r], by Gil Fouths" []
"Four Days['] Soda Fury[r], by Rudy Faso"
"Foxhole Hex, Fool![r] by Lex Hoof"
"Fraction a Fanatic or Naif Actor[r], by [if player is male]Fran Caito[else]Cari Afton & Iona Craft[end if]"
"Fractious Scout Fair[r], by Staci Rufo" []
"Fraid [']Ol Florida Alfrido[r], by Ida Rolf"
"Frame [']Em Far[r], by Raffa Emmer"
"Framing Mr. Fagin[r], by Min Graf"
"Frat House: Fate's Hour[r], by Rhea Fouts"
"A Freak's Ask Fear[r], by Fae Kras"
"Fred, Flu-Ruffled[r], by Red Luff"
"Free Now, Foe Wren?[r] by Oren Few"
"Free Song for Gene's Fen-Ogres[r], by Rose Feng"
"Freeload for Adele[r], by Lea Forde"
"Fresca-Facers['] Farces[r], by Cesare Scarff"
"Freshly, O Horsefly[r], by [if player is male]Roy Shelf[else]Flo Hyser[end if]"
"Fret, Guile, Guilt-Free[r], by Gil Fuerte"
"Fret, Pooh: the Proof of Pother[r], by Hope Fort"
"A Friend, Rad, Fine[r], by [i-n] Fred"
"Fringe-be-Fine Berg[r], by Ben Grief"
"Frivolous Fool Virus[r], by Ulf Viroso"
"Frogs['] Denial Signaled for Dragonflies[r], by [if player is male]Alfred Goins[else]Signe Alford[end if]"
"A Front for Nat[r], by Trant Aronoff"
"Frost and Sad Front[r], by Stan Ford"
"Frostieth Fortieths[r], by Theo Frist"
"Fruity Pond of Punditry: Found it? Pry[r], by Toriy Pfund"
"A Fry-Fray[r], by Fay Farry"
"A Fun Faun[r], by Nana Fufu"
"Fun Pair's Pun Fairs[r], by 'Nips' Rauf"
"Fun Silence Influences[r], by Lucien Senf"
"The Funk's Heft, Sunk[r], by Kent Fuhs"
"Gabriel, a Gerbil[r], by Ali Berg"[]
"Gad, No Rum? Moan, Drug Gourmand[r], by Omar Gund"
"Gad, Soul! Loud Gas[r], by Douglas Salgudo"
"Gain, Mr.: Arming Ingram[r], by Mr. Nagi" []
"Gain So, Saigon[r], by Isa Ong"
"Gait, Balk, a Big Talk[r], by Gil Kabat"
"A Gal's Hut At Laughs[r], by [if player is male]Asa Gluth[else]Tasha Lug[end if]"
"Game On, Ego-Man[r], by Mo Egan"
"A Gamed Damage[r], by Meg Ada"
"Games as Massage[r], by Sam Sage"
"The Games Meg Hates[r], by Mats Ghee"
"Gang, to Gag Not[r], by Og Gant & Nat Ogg"
"Gangnam, Eh? Meh[r], by Meghan Ghanem"
"Gankery: Keg Yarn[r], by Ken Gray"
"Garden Home Harmed, Gone[r], by [if player is male]Herman Doge & Ahmed Groen[else]Merna Hodge & Madge Horne[end if]"
"Gardener Garnered Red Anger[r], by [if player is male]Ed Garner[else]Gena Derr[end if]"
"A Garment Mega-Rant? Great, Man[r], by [if player is male]Art Megan[else]Marge Tan[end if]"
"Gasfield Gadflies, Flagside[r], by Gil DeFas"
"Gather His High Rates[r], by [if player is male]Garth Sieh[else]Tish Hager[end if]"
"Gathered Dreg-Hate[r], by Garth Dee & Art Hedge"
"Gay Hunt, Naughty Anythug[r], by Ty Huang"
"A Gay Icon, Coy Again[r], by Gina Cayo"
"Gee, Mass Message[r], by Meg Essa"
"Gee, Rave Veerage[r], by Erv Agee"
"Geek Chart: Get Hacker[r], by Kath Grace"
"Geekiness Sieges Ken[r], by Gene Sikes"
"A Gem Unto Montague[r], by Neg Auton"
"Gene Saw New Ages[r], by Wes Egan"
"General's Rage Lens[r], by Sal Green"
"Genes is Genesis, Signees[r], by Essie Ng"
"Gent, I Get In[r], by Nettie Ging"
"Gerald Glared[r], by Argall Dredge"
"A Germ-Gamer[r], by Gemma Grear"
"Get Ahead. Age. Death[r], by Tad Gahee"
"Get, Annul, Untangle[r], by [if player is male]Glen Tuan[else]Luna Gent[end if]"
"Get Drab: Drat, Beg[r], by Tad Berg"
"Get No Imp to Ping Me[r], by Meg Ponti"
"Ghost Mine Hosting Me[r], by Tim Goshen" []
"Giant Gnat, I[r], by Gianni Gatt"
"Gift Fair Graffiti[r], by Gita Riff"
"Gift: Soul of Guilt[r], by Gil Fouts"
"Gig Re-Rises[r], by Sergi Giers"
"Gigante's Naggiest Gang Site[r], by Gia Tseng"
"Gil, Cease Elegaics['] Legacies[r], by Alec Geis"
"Gil, Shod His Gold[r], by Sid Gohl"
"Gin-Rid, Gird-In, I'd Grin[r], by Ingrid Riding"
"The Gin's Nighest[r], by Si Ghent"
"Gina's in Gas, I Sang[r], by Agnis Gains"
"Giordano's Grandioso Rigadoons[r], by [if player is male]Dario Song[else]Doris Noga[end if]"
"Girl Code? Relic, Dog[r], by Eric Gold"
"The Girl, Lighter[r], by Reg Hilt"
"Give-All Village[r], by [if player is male]Gil Vela[else]Gail Lev[end if]" []
"Give Away a Gay View[r], by Ivy Waage"
"Give Link, Evil King[r], by Kevin Gil"
"Give Shout This Vogue[r], by [if player is male]Hugo Tevis[else]Sue Voight[end if]"
"Given Peaks, Keep Saving[r], by Spike Ganev"
"Glaciers['] Cries Lag[r], by Gil Cesar & Ric Gales"
"Glad Worm, Warm Gold, Mad Growl[r], by Marg Wold"
"Glare of a Golfer: Flare, Go[r], by Alf Gore"
"Gleaming, Aging Elm[r], by Meg Liang"
"Gleamy Gay Elm[r], by Meg Lay"
"Glean Up a Plunge[r], by [if player is male]Paul Eng[else]Lupe Nga[end if]"
"Glee and a Legend Gleaned[r], by Glen Ade-DeLange" []
"Glee Dan Gleaned[r], by Dee Lang" []
"Glee Lost Now? Get Well Soon[r], by Gwen Sotello"
"Glib, Bray, Baby Girl[r], by Lyra Gibb"
"Glib Fonder Bold Finger[r], by Gil Benford & Fred Bolding"
"Glibster Gilbert's Best Girl[r], by Reg Bilst"
"Glide, Gelid[r], by Ed-Gil Lidge"
"Gloater Got Real to Glare[r], by Reo Galt"
"Gloaty Gal-Toy Gay Lot[r], by Ty Lago"
"Glob On No Blog[r], by Oblong Bo Long"
"Gloominess? Neologisms[r], by [if player is male]Moises Long[else]Signe Olmos[end if]"
"Gloomy Rune Numerology? You Mongrel[r], by Myron Logue"
"Glub Day, Ugly Bad Bald Guy[r], by Ladybug Gaby D. Lu"
"Glucose Eco-Slug Cues-Log[r], by Gus Cole"
"Go Anti to Gain[r], by Gio Tan"
"Go Bait a Bigot[r], by Bo Taig"
"Go, Bend, Nod, Beg[r], by [if player is male]Bo Deng[else]Deb Ngo[end if]"
"Go Braid, Big Road[r], by [if player is male]Bo Gradi[else]Ida Borg[end if]"
"Go Dress So, Dregs[r], by Ed Gross"
"Go Fib to Bigfoot[r], by Bo Goift"
"Go for it? I Forgot![r] by Rio Fogt"
"Go Green Ere Gong[r], by Greg Eno"
"Go Jibe, Big Joe[r], by J. Bogie"
"Go Lunar? Languor: a Run Log[r], by [if player is male]Ron Gaul[else]Lora Ngu[end if]"
"Go Make a Gem, OK[r], by Meg Kao"
"Go, Meltin['] Tin Golem[r], by Tig Lemon"
"Go, Mr. Panic-Comparing[r], by Ringo Camp & Marco Ping"
"Go, never Overgen[r], by Gov. Rene Von Geer"
"Go Peeking, Keep Going[r], by Peg Koenig"
"Go Pine, Neo-Pig[r], by Pigeon Opie Ng"
"Go Red, er, Dog[r], by Roger Dodge"
"Go, Retain No Triage, Iron Gate[r], by Gia Toren"
"Go Seed Geodes[r], by Ed Gose"
"Go, Stan, Sag Not[r], by Gaston Sontag" []
"Go Stare at Ogres[r], by Art Sego"
"Go Steady, Aged Toys[r], by Syed Gato"
"Go, Sworn So Wrong[r], by [if player is male]Rog Snow[else]Ros Wong[end if]"
"Go Unwrap a Grown-Up, Wan Group[r], by Pura Wong"
"Go Win, Mr. I'm-Wrong[r], by Wm. Gorin"
"Goal Be a Globe[r], by Bo Gale"
"Goal: Thin Loathing[r], by Inga Holt" []
"Goalies['] Soilage[r], by Ali Gose"
"God-Bane Bondage[r], by [a-b] Gond"
"God's New Dew Song[r], by Sed Wong"
"Godfather Ferg Had To[r], by Edgar Foth"
"Godless Ed's Slog, Glossed[r], by Del Goss"
"Godlike Kid, Ogle[r], by Ike Gold"
"Gods Poach Good Chaps[r], by Pogo Dasch"
"Gol Durn Gun Lord[r], by Dru Long-N'Droglu"	100
"Gold Camel, Call Me God[r], by Madge Coll"
"The Gold Doth Gel[r], by Ted Gohl" []
"Gold, Lead, Odd, Legal[r], by Oleg Ladd"
"A Golden Gal Done[r], by Lea Dong"
"A Golden Lad Gone[r], by Leo Gand" []
"Golder Lodger Old Reg[r], by Gorrell Dodge"
"Gone Musk, Some Gunk[r], by Gus Monke"
"Gone, Rift: to Finger Not Grief[r], by [if player is male]Oren Gift[else]Teri Fong[end if]"
"Good Hues Doghouse[r], by Doug Shoe"
"Good Kind God? No, Kid[r], by Dodo King"
"Good Luck Duck Logo[r], by Doug Lock"
"Good News, Owen's Dog[r], by Gen. Woods"
"Good Stuff Doffs Gout[r], by Doug Ffost" []
"Good Times, Dim Stooge[r], by Diego Most"
"Goon Lad on a Gold Gondola[r], by Oda Long"
"Goon Rat Nora Got to Groan[r], by Nat Goor"
"Goose-Who-Goes-Whoo Hoosegow[r], by Geo Woosh"
"The Gore: Go There, Thor, Gee[r], by Tre Hoeg"
"Gory Clone Necrology[r], by [if player is male]Royce Long[else]Lory Gonce[end if]"
"Gory Lit Trilogy[r], by Gil Troy"
"Gosh, [toti], Hog is Not Soothing[r], by Otis Hong" []
"Goshdang Hangdogs[r], by Don Shagg"
"Got Booed to Be Good[r], by Ted Obogo"
"Got Into Tooting[r], by Gino Ott"
"Goth Inn: NOTHING[r], by Tinnhog Gonnith"
"Gothism: So Might Smith Go[r], by Tom Gish"
"Gotta Luv Lotta Guv[r], by Tula Vogt"
"Gourmand Gourdman Dru Mango[r], by Dom Ungar" []
"Grand Jury Jug Ran Dry[r], by Raj Grundy"
"Grand Ol['] Dr. Logan[r], by Arn Gold"
"Grandest Dragnets[r], by Dan Gerst"
"Grandpa's Naps Drag[r], by Dan Grasp"
"A Granny's Nag Yarns[r], by [if player is male]Ryan Gans[else]Ann Grays[end if]"
"Grant's Drum: Sturm, Drang[r], by Dr. Mart Snug"
"Grating Rant-Gig[r], by Nat Rigg"
"Gratuitous August Trio[r], by Stuart Igou & Gaius Trout"
"Gravelines['] Revealings[r], by [if player is male]Elvis Regan[else]Vela Singer[end if]"
"Graven Imp Revamping[r], by Pam Erving"
"Gray Bane: Anger Bay[r], by Gary Bean"
"Gray On, Groany Nag Roy[r], by Og Ryan-Gaynor"
"Gray Suit Guy Astir[r], by Gia Rusty"
"Grayest Stagery[r], by Ty Sager"
"Greasepaint Pageantries[r], by Tegan Arispe"
"Greasing Snaggier Gearings[r], by Greg Sian"
"Great Lie: Regale It[r], by Ali Egert"
"Great Poets['] Egos Patter[r], by [if player is male]Pete Groats[else]Peg Rosetta[end if]"
"Great Power, Raw Protege[r], by Peter Wargo"
"Great Wind, Tiger Dawn[r], by Gari Wendt"
"Greed Hit the Ridge[r], by Ted Ehrig"
"Green Day: a Grey End[r], by [if player is male]Reed Yang[else]Dyan Eger[end if]"
"The Green Gent Here[r], by Ren Egeth"
"Green Line: Inner Glee[r], by [if player is male]Glen Einer[else]Renee Ling[end if]"
"Green Sand Endangers Den Ranges[r], by [if player is male]Dan Gesner[else]Ann Gerdes[end if]"
"Green Shrub? Sneer, Burgh[r], by Rush Bergen-Hunsberger"
"Greene's Reneges[r], by Reg Snee"
"Grenadiers['] Rereadings[r], by Eden Garris"
"Grey Suit Guy Tries Gutsy Ire[r], by Yuri Gest"
"Greybeard Barry Edge[r], by Edgar Brey & Gerard Bey"
"Grid One, Ignored, Rid, Gone[r], by Don Gier" []
"Grid So Disorg[r], by Sir God"
"Grievance: Care Given[r], by [if player is male]Vance Iger[else]Grace Vine[end if]"
"Grievant Averting[r], by Trev Nagi"
"Grieve, Regive[r], by Vergie V. Geier"
"Grieve, Tot? Get Over It[r], by Vito Egret"
"Grim Col. Mr. Logic[r], by Gil Crom"
"Grin Such Crushing Rich Guns[r], by Cris Hung"
"Grind-Out-Dung Riot[r], by Trudi Ngo"
"Grip More Grim Rope, Prim Ogre[r], by Meg Pirro"
"Grisham Rags Him[r], by Ash Grim"
"Grit Meant Mattering[r], by Megan Ritt"
"Grit, Rage: a Trigger[r], by Greg Rita"
"Groan or Nag[r], by Goran Rogan"
"Groan, Us: No Sugar or Angus[r], by Rosa Ung"
"Groaners Rang Sore[r], by Ros Regan"
"Groaning Mood? A Good Morning[r], by Maggio Rondon"
"Grodi ID-Org[r], by Dr. Gio Girod"
"Grok Wood? Good work![r] by Dorko Gow"
"Group Mind Grim Pound[r], by Ming Prudo"
"Grow as Wars Go[r], by Ros Wag"
"Grr, I Gets Triggers[r], by Greg Rist"
"Grub, Sweat, Waterbugs[r], by Buster Wag"
"Grubvale Be Vulgar[r], by Val Burge"
"Gruden's Gerunds[r], by Gus Dern" []
"Gruesome Gore Muse[r], by Meg Rouse"
"A Grumpy Pray-Mug[r], by Ray Gump"
"A Grunt's Guts Ran[r], by [if player is male]Art Sung[else]Su Grant[end if]"
"Guider, I Urged[r], by Reiger Duguid"
"The Guild's Idle Thugs[r], by Leigh Dust"
"Guilt Jars a Just Girl[r], by Juli Strag"
"Guilty Guy-Lit[r], by Ty Ulig"
"Guindon's Undoings[r], by Gino Sund"
"Gumpish Mugship[r], by Sim Pugh"
"Gun Chats['] Achtungs[r], by Stu Chang"
"Gun if in Fug-Fungi[r], by Ignu Guffin"
"Gunderson's Undersongs[r], by Dunne Gross"
"Gunsel Leung's Lunges[r], by Su Glen"
"Gunther is Hungriest[r], by [if player is male]Usher Gint[else]Sheri Tung[end if]"
"Gunther Rung the Hurt-Gen[r], by Reg Hunt"
"A Guru's Augurs[r], by Gus Rau"
"Gus Rhett GEts Hurt[r], by Ruth Gest"
"Gush at a Thug's Guts? HA[r], by Su Gath"
"Gush On, Shogun, Go Shun No Hugs[r], by Su Hong" []
"Gutsy Bo Got Busy[r], by Guy Bostt"
"Guys Toil So Guilty[r], by Lis Guyot"
"Gwen, It's Stewing, Went Sig[r], by Wes Ting" []
"Ha, Leftist Eats Filth[r], by Leah Fitts"
"Hack Creed: Read, Check, Reach Deck[r], by Chad Creek"
"Had Wes Washed, He'd Saw We Dash[r], by Ed Shaw"
"A Hag, Mr. Graham[r], by Marg Ha"
"Hagminster Angersmith Nightmares[r], by [if player is male]Garth Mines[else]Megan Hirst[end if]"
"Hags Edge Eggheads[r], by Gege Dash"
"Hail Met the Mail[r], by Eli Tham"
"Hairline Post-Relationship[r], by [if player is male]Ariel Shipton[else]Lori Stephain[end if]"
"Haiti Stash[r], by Tisha Haist"
"Hal's Rose: Hassle or Heal Ross?[r] by Sal Shore"
"Halls of Lo-Flash Falls, oh[r], by [if player is male]Sol Half[else]Flo Lash[end if]"
"Hallways Shall Yaw[r], by Ally Shaw" []
"Hamfatters['] Aftermaths[r], by Matt Shafer & Farah Metts"
"Hamlet, NO! Oh, Mental[r], by Hal Monte"
"Hamlet the Mal At-Helm[r], by Thelma Lathem"
"Hang Low, Lawn Hog[r], by Hal Wong"
"Hank Bet the Bank[r], by Ken Bath" []
"Happier Hep Pair[r], by Pip Rhea"
"Har, Debt, the Drab Breadth[r], by Herb-Tad Bethard" []
"Harasser, Eh? Rah, Hearses[r], by Shera Asher"
"Hard Case Charades[r], by Ed Raasch & Chas Ader"
"Hard Knocks Dock Shrank[r], by Chad Kronsk"
"Hard News, Swan Herd[r], by Hans Drew"
"Hard Time Had Merit[r], by Tami Herd"
"Hard Times, Tired Sham[r], by Edra Smith"
"Hard-Won Word: Nah[r], by Rod Hawn"
"Hardcastle Cathedrals[r], by Chad Slater"
"Hardcore vs. Hardcovers[r], by Dave Schorr"
"Hardlines Herald Sin[r], by Al Dishner"
"Hare, Owl or Whale[r], by Hal Rowe"
"Hark, Test: Up, Speak Truth[r], by [if player is male]Rhett Supak[else]Pett Hruska[end if]"
"Harm at Ham Art[r], by Martha Athram"
"Harm One Menorah[r], by Ron Hame"
"A Harried Idea? Harr[r], by Ira Heard"
"Hassinger's Garishness[r], by Nash Greiss"
"Haste, Get the Gates[r], by Etta Hegs"
"Hatch Our Roach Hut[r], by Thora Chu & Cora Huth"
"Hate Mail: a Lame Hit[r], by Leia Math"
"Hate Psalm: Me, Asphalt, the Plasma Heat Lamps[r], by Seth Palma"
"Hated Death: Add the Heat[r], by 'Teeth' Hadad"
"Hateful Leaf Hut[r], by Fleta Hu & Fae Thul"
"Haters, Rest, Ah[r], by Tre Ash" []
"Haters-Tip Therapist[r], by [if player is male]Rhett Pais[else]Rhea Pitts[end if]"
"Hauling Laughin['][r], by Lang Hui"
"Hauteurs: Use a Hurt[r], by Su Huerta"
"Haw, Tell the Wall[r], by Walt Leh"
"Haw, Yet: the Way Ye Thaw[r], by Ty Weah"
"Hazy Car, Zachary[r], by Chaz Ray"
"He Abets the Base[r], by Bee Tash" []
"He Ails? Ah, Lies[r], by Elisha & Sheila Hailes"
"He Baits the Bias[r], by [if player is male]Seth Bai[else]Abi Tesh[end if]"
"He Can't Go to Change[r], by Echo Gant" []
"He Lacks Le Shack-Shackle[r], by Sal Heck-Schalke" []
"He Melts Helmets[r], by Mel Tesh"
"He Revolts the Lovers[r], by Sol Everth"
"He Rocks Chokers[r], by Ros Heck"
"He Tames Math: See the Same[r], by Semetha Teesham" []
"He Trumps Thumpers[r], by Seth Rump"
"He Won't Be On the Web[r], by Beth Owen"
"He'll Bat the Ball[r], by Bet Hall"
"He's All a Shell[r], by Hal Les"
"He's Past the Pass[r], by Pat Hess"
"He's Up to the Soup[r], by Stu Hope" []
"Head, Heart Heard Heat[r], by Edra Heath"
"Head in the Hi-Hate Den[r], by Ettie Hand"
"Heal Oft the Foal[r], by [if player is male]Leo Haft[else]Fae Holt[end if]"
"HeapsCo Poaches Cheapos[r], by Chas Poe"
"Hear Not Another[r], by Theo Arn" []
"Hear Out Thoreau[r], by Art Houe"
"Hear Yet: They Are Ye Earth[r], by Tera Hey" []
"Heartbreak: a Rehab Trek[r], by Bertha Aker & Kate Harber"
"Hearts Rest, Ah[r], by Thersa Sather-Hearst" []
"Heat Waves Have Sweat: Avast, Whee[r], by Veta Hawes"
"Heating an Eight: the Gain[r], by Gia Neth"
"Heaven, Sin as Nineveh[r], by [if player is male]Evan Hines[else]Iva Hensen[end if]"
"Heavy Rains Year, Vanish[r], by [if player is male]Harvey Sina[else]Ivana Hyser[end if]"
"Hecate's Scathee Ceaseth[r], by Cath See" []
"Heck, Flout: Luck of the Chute Folk[r], by Luke Focht"
"Heisted: the Side He Edits[r], by Ed Theis"
"Hell Hit the Hill[r], by H. L. Thiel"
"A Hell Town on the Wall, Now Lethal[r], by Nell Howat"
"Help Plug the Gut[r], by Peg Thul"
"Hen Clan Channel[r], by Len Chan"
"Henna, Ashes[r], by Shane Hanes"	60
"Hep Tod: He'd Top the Pod[r], by Ted Pho"
"Her Eerie Hiss[r], by Sherie Heiser"
"Her Fate: the Fear-Free Hat Feather[r], by Fee Hart"
"Her Lute: the Lure[r], by Ruth Lee"
"Her Main Hammerin['] Hernia[r], by Hermina Amrhein"
"Her Note: Oh, Enter Not Here[r], by Theo Ren"
"Her Pact: The [crap-u] Chapter[r], by [if player is male]Chet Arp[else]Pat Cher[end if]"
"Her Plans: Shrapnel[r], by Len Sharp" []
"Her Sir: His Err[r], by Sherri Shirer-Risher"
"Her Son: Sneer Shorn, Oh[r], by Sheron Hosner"
"Her Test Tethers the Rest[r], by Seth Ert"
"Herald Not Hotel Rand-Thorndale[r], by Art Holden" []
"Herb Neglect[r], by Engelbrecht Lechtenberg"
"Herbalist Earth's-Lib is Blather[r], by Brit Saleh" []
"A Herd to the Road[r], by Dr. Oathe" []
"Here Acts the Scare[r], by Cher East" []
"Here as a Sheer Hearse[r], by Rea Esh"
"Here Cuts the Curse, Uh, Secret[r], by Ester Chu" []
"Here I Got Their Ego[r], by Gertie Ho"
"Here's to the Rose[r], by Ester Ho"
"Heretic for Free to Rich[r], by [if player is male]Chet Fierro[else]Cheri Forte[end if]"
"Hero Bird, Be Horrid[r], by Herb Rodi"
"Hero Bit: I Bother[r], by Herb Ito"
"A Hero Era, Ho![r], by Rhoea O'Hare"
"Hero Man Mo Ahern Ran Home[r], by Em Horan"[]
"Hero-Still Hollister[r], by [if player is male]Ellis Roth[else]Tori Shell[end if]"
"Hero Stu, the Sour Shouter[r], by [if player is male]Theo Rus[else]Ruth Ose[end if]"
"Hero Tamed: More Death, Mate Herod[r], by Mateo Herd"
"Hex Curt: The Crux[r], by Rex Tuch"
"Hey, Beast By the Sea[r], by Tesha Bey"
"Hey, Intro the Irony in Theory[r], by [if player is male]Roy Thein[else]Erin Hoyt[end if]"
"Hey, Walt, Why Late[r], by Al Whyte-Wheatly"
"A Hi-Lung Laugh-In[r], by [if player is male]Ali Hung[else]Inga Uhl[end if]" []
"Hi, Plant a Plinth[r], by [if player is male]Nat Phil[else]Lin Phat[end if]"
"Hi-Tech's Hitches[r], by Chet Shi"
"Hibernating, Breathing In[r], by Annie Bright"
"Hicks to Thickos: O, Shtick[r], by Kit Cosh"
"Hid Cal, a Child[r], by Chad Li"
"High-Class Sigh-Clash[r], by Chas Sligh"
"Hilbert's Blithers[r], by Bert Lish"
"Hilda, a Dahlia[r], by Ida Ahl"
"Hindered, Rehidden[r], by Reed Dinh"
"Hint, Beg: Night Be Big Then[r], by Beth Ing"
"Hint, D-Bag: Bad Night[r], by Thad Bing"
"Hip Farce: a Cheap Fair[r], by Rafi Peach"
"His Blood Holds Bio[r], by [if player is male]Odis Bohl[else]Lido Bosh[end if]"
"His Blue Helibus[r], by Eli Bush"
"His Clang-Clashing Clings, Ah[r], by Lis Chang, Chas Ling, Cal Singh & Sal Ching"
"His Code: So Chide Disco, Eh[r], by Desi Cho"
"His Dance: Echidnas Cashed In[r], by [if player is male]Deac Shin[else]Dina Esch[end if]"
"His Fat Faiths[r], by Fifi Hass-Hatt"
"His Fear's Fresh Air[r], by Ash Fries"
"His Name, Mean-ish in Shame[r], by Mia Shen"
"His Patent: in the Past[r], by Shane Pitt" []
"His Robot: Short Bio[r], by Tori Bosh"
"His Spam Mishaps[r], by Hap Sims"
"His Urgent, Hungriest Sure Thing[r], by Sig Hunter" []
"History of Fishy Root[r], by Io Forsyth & Sofyi Hort"
"Hit Knot to Think[r], by Nik Toth"
"Ho, Nigh on High Noon[r], by Nino Hogh"
"Hobert's Bothers[r], by Rob Tesh"
"Hobo Rey, Boy Hero[r], by Herb Yoo"
"Hold Breath, Bold Heart[r], by [if player is male]Beth Harold[else]Hobert Dahl[end if]"
"Hold Fast Old Shaft[r], by Thad Flos"
"Holy Gap to Pathology[r], by Hoyt Gopal"
"Home Strife Smit Hereof[r], by [if player is male]Tim Forshee[else]Mei Forseth[end if]"
"Hone Fins, Neon Fish[r], by Shon Fine"
"Hone Vast Havens to Have-Nots[r], by Noah Vest"
"Honest Prude, Proudest Hen[r], by Peter Hudson"
"Honorin['] No Rhino[r], by Noni Roh"
"A Hooch Career[r], by Horace Roache" []
"Hooker, OK Hero[r], by H. Rooke"
"Hoorays So Hoary[r], by Rosa Hoy"
"Hopelessness Lessons, Sheep[r], by Sponsel Hesse"
"Hordes to the Doors[r], by [d-t] Shore"
"Horncastle-Charleston Scholar Net[r], by Lance Short" []
"Hornstein's Thorniness[r], by Nestor Shin"
"Horridest Herd Riots[r], by [if player is male]Reid Short[else]Tish Doerr[end if]" []
"Host Lawyer Aylesworth[r], by [if player is male]Hoyt Rawles[else]Tesha Lowry[end if]" []
"Hostel of the Fools['] Elf-Hoots[r], by Sol Hoeft"
"Hot Crew: We Torch The Crow[r], by Tre Chow"
"Hot Edy's Shy Dote[r], by Des Hoyt"
"Hot Fear of Earth[r], by [if player is male]Art Hofe[else]Fae Hort[end if]"
"Hot Nine: In On the Neon Hit[r], by Theo Nin"
"Hot Rene: Thereon Not Here[r], by Thor Nee" []
"Hot Sulfur So Hurtful[r], by Rufus Holt"
"Hot Tea: the Tao[r], by Tate Ho"
"Hotspur Up Short[r], by Su Thorp"
"Hovel Ten, then Love: the Novel[r], by Neel Voth"
"How Guys Go Why Us?[r] by Gus Yhow"
"How I Feel: Whole, Fie![r], by Leif Howe"
"How I Met With Moe[r], by Tom Hwei"
"Howard's Rad Show: Ah, Words, Raw Dosh[r], by Rod Shaw" []
"Howls Due: She Would, We Should[r], by Welsh Duo Huw DeLos & Su DeWohl"
"Howry St., Why Sort Thy Rows[r], by Hy Worst"
"Hudson Hound's Unshod[r], by Don Hsu"
"Huge Bios, Big House[r], by Hugo Seib"
"Hugo's Greed: Rough Edges[r], by Doug Gehres"
"Huns['] Wet New Huts[r], by Wes Hunt"
"Huntress Shunters[r], by Russ Neth"
"Hup, Lord Rudolph[r], by Dru Pohl"
"Hurons or Huns Rush On[r], by Ron Shu"
"Hurricanes['] Ruin-Search[r], by [if player is male]Nash Currie[else]Chris Rauen[end if]"
"Hurt, I Go it Rough[r], by Rui Goth" []
"A Hurt Rut, Ah[r], by Art Hu"
"Hush, Riot This Hour?[r] by Thor Shui"
"Hustling Sunlight: Lust Nigh[r], by Gus Nilth"
"Hut-Fort of Truth[r], by Ruth Oft"
"Hyenas Nae Shy[r], by Shayne Haynes"
"A Hymn, a Hymn[r], by Mynah Hyman"
"Hyperbole Helper Boy[r], by [if player is male]Lee Brophy[else]Beryl Hope[end if]"
"Hypocrites['] Icy Pothers[r], by Cristy Hope"
"I, a Husk: Haikus[r], by Suki Ha & Su Haik"
"I, a Lass, Assail[r], by Alissa Salais"
"I, a Mopy Myopia[r], by Pia Moy"
"I, a Pier, Spears: I Spare a Spire[r], by Persia Sapier"
"I, a Raconteur? Au Contraire[r], by [if player is male]Arturo Caine[else]Torrie Acuna[end if]"
"I, a Soul, Louisa[r], by Ola Sui"
"I: Agnes Gaines[r], by Gia Sen"
"I am Grainy, Imaginary[r], by [if player is male]Gary Amini[else]Maria Ying[end if]"
"I am Hound-Humanoid[r], by Damon Hui"
"I Aptly Play It[r], by Tal Yip"
"I, Aviva, Via Avi[r], by Vi Avia"
"I Ban to Obtain[r], by Bo Tian"
"I Be Art: Bear It[r], by Bettie Ibarra" []
"I Better Be Trite[r], by Bret Eit & Bertie T"
"I Blame. Bail Me[r], by Mel Iba"
"I Blaze the Bite, Hazel[r], by Elizabeth Thiel-Baez"
"I Boast, Bait So at Bios to Bias[r], by Bo Asti"
"I Brush Hubris[r], by Bub Hirsh-Ruis"
"I, Cad, Acid[r], by Cid Dacia"
"I Came to Omit Ace[r], by Tami Coe"
"I-Can-Gro Organic[r], by Ron Gaci" []
"I Cannot Contain Con Tina[r], by Ann Coit" []
"I Censor Cronies So Nicer[r], by Ric Enos"
"I, Choker, Hock Ire[r], by Erik Cho"
"I Clear Claire: a Relic[r], by Al Rice"
"I, Clovis, So Civil[r], by Vi Lisco"
"I, Cohort Too Rich[r], by Tori Cho"
"I Commit to Mimic[r], by Tim Cimo"
"I Could Be Bio-Clued[r], by [if player is male]Del Bucio[else]Luci Bode[end if]"
"I Credit No Direction[r], by Reid Conti"
"I Damn a Mind[r], by Mandi Damin"
"I Decry Dry Ice[r], by Cy Reid"
"I Defer Free ID[r], by Ed Frei"
"I Denote One Diet: I Need To[r], by [toti] Dee"
"I Deny St. Ed's Tiny Dine-Sty Destiny[r], by Edy Nist"
"I Deny Ye Din[r], by Ed Yin"
"I Dock at it, OK, Cad[r], by Doc Kati & Cid Kato"
"I, Doctor Cid Toro[r], by [toti] Cord & [d-t] Rico"
"I Don't Care: a Doctrine (Acrid Note)[r], by [if player is male]Reid Caton[else]Tia Codner[end if]" []
"I Dote to Die[r], by Ed Ito"
"I, Dourest Outsider[r], by Rude Otis & Sid Toure" []
"I, Dr. Ben Drebin: Inbred[r], by Didi B. Brenner"
"I, Dr. Ted, Reddit[r], by Ed Dirt"
"I, Dr. Uncle, Includer[r], by [if player is male]Eric Lund[else]Luci Dern[end if]"
"I Drag a Grid[r], by Dr. Gia Gardi"
"I Drag On, Adoring[r], by Ian Gord" []
"I, Dreg Man, Dreaming[r], by Amir Deng"
"I Drew Wider[r], by Dr. Wei Dwire" []
"I Drown, Dr. Wino[r], by Wrondi Dorwin"
"I, Dullest Duellist, Lust Idle[r], by [if player is male]Sid Tuell[else]Lu Tisdel[end if]"
"I. E. Scrimp Empirics[r], by Sim Price"
"I. E. Space is Peace[r], by [if player is male]Ace Sipe[else]Pei Case[end if]"
"I Eat Ramen, Reanimate[r], by Art Meanie"
"I, Emma, a Mime[r], by Mamie Emami"
"I, Empty: Pity Me[r], by Tim Pye"
"I Fab a Fib[r], by Fifi Baab"
"I Fan a Fin[r], by Nina Faif"
"I, Fan, Naif[r], by Fina Fain" []
"I, Farm-Fed, Affirmed[r], by Riff Dame"
"I Fund to Find Out[r], by [d-t] Funi"
"I Gain Sin: Insignia[r], by Nina Gisi & Gia Innis"
"I Gloat to Gail[r], by Io Galt"
"I Go rage, Georgia[r], by [if player is male]Arie Ogg[else]Gia Gore-Areggio[end if]"
"I, Gogol, Gigolo[r], by Gil Goo"
"I Govern No Giver[r], by Geri Von Revigno"
"I Grab the Big Heart[r], by Beth Gari"
"I Grade a Dirge[r], by Red Gia"
"I Guard Rad GUI[r], by Giraud Rigaud"
"I, Gwen Ewing[r], by Ewen Wiggin"
"I Hang in, Gah[r], by Anghi Hanig-Hagin"
"I Hate the AI[r], by Athie Heita"
"I Haunt in a Hut[r], by Nat Hui"
"I Heart the Air[r], by Tahari Ethier"
"I, Horseman, Mishear No Harmonies[r], by [if player is male]Amos Rhine[else]Shona Irem[end if]"
"I Interact: Nice Trait[r], by Intricate Traci Tien"
"I, Justice, Juiciest Jesuitic[r], by Ice Tsuji"
"I Knew it's Twinkies[r], by Niki West"
"I Know to Win Took No Wit, ok[r], by Toi Kwon"
"I Label a Libel[r], by Al Beil" []
"I Lawyer Wearily[r], by [if player is male]Wary Eli[else]Aly Weir[end if]"
"I Lay Aily[r], by Ilya Y. Ali"
"I Learn, Linear, in Real[r], by Arline Lanier"
"I Led, Idle[r], by Edie Dill"
"I, Let So to Lies[r], by Ossie Elliott"
"I Loan Ol['] Ian a Lion[r], by Ilona O'Lain"
"I Lower, We Roil[r], by Lew Rio"
"I, Lynnea, Inanely[r], by [if player is male]Neal Yin[else]Lani Ney[end if]"
"I Manage an Image[r], by Gia Eman"
"I Matter at Merit[r], by Teri Tam"
"I Mature: Um, a Rite[r], by Amir Ute"
"I May Hunt Humanity[r], by Tami Hyun"
"I Mentor on Merit[r], by [if player is male]Tim Reno[else]Erin Tom[end if]"
"I, Mongol in Gloom[r], by Gino Mol"
"I, Monomania[r], by Naomi Miano"
"I Mope, Lost, Too Simple[r], by [if player is male]Tim Spoole[else]Pet Loomis[end if]"
"I, Mr. Galore Rigmarole[r], by Roger Lima"
"I: My Trial, Military[r], by Mia Tyril"
"I, Named Maiden[r], by Mandie Medina"
"I Nap in, Pa[r], by Nina Paip"
"I, Norma Maroni[r], by Mr. Iona Romain"
"I, Nuts for No Fruits[r], by Su Fortin"
"I of Scant Factions[r], by Fina Scot"
"I, Old Lilo, Dido[r], by Iolo Dild"
"I, on Soap: a Poison[r], by Sonia Po"
"I Once Had a Chide On[r], by Dinah Coe"
"I Oscillate Localities[r], by [if player is male]Elliot Sica[else]Tillie Caso[end if]"
"I, Pampered: Pipe Dream[r], by Mei Eppard"
"I, Pandora, Paranoid[r], by Dino Paar"
"I Part: a Trip[r], by Patti Parri"
"I Patch it, Chap[r], by Pat Chi" []
"I, Pent, Inept[r], by Pennie Pitt"
"I Plot Years: Epistolary Teary Spoil[r], by [if player is male]Otis Player[else]Rosita Pyle[end if]"
"I, Pregnant, Parenting[r], by Trina Peng & Grant Pine"
"I Racket, Tackier[r], by Kit Cera"
"I, Raimond DiMarino[r], by Mai Rodin"
"I Rang a Grin[r], by Graig Nairn"
"I Rank a Rink[r], by Karin Arkin"
"I Rant in Art[r], by Trina Narti"
"I, Rarer Barbie[r], by Barrie Ribera"
"I Re-Stand, Strained[r], by Ned Raist"
"I Remand a minder, name-rid: Drain Me, [d-word-u] ire and mire[r], by Near-Dim Merinda" [x]
"I Renew New Ire[r], by Wernie Weiner & Ren Wei"[]
"I Retain a Tinier Inertia[r], by Tia-Erin Aritine"
"I Retract a Critter[r], by Art Trice"
"I Revised, Derisive[r], by [if player is male]Vi Seider[else]Si Verdie[end if]"
"I Roam or Aim[r], by Moira Raimo"
"I Robbed Debb Rio[r], by Bob Reid"
"I, Rudest Studier[r], by Sid True"
"I Run Close, Cornelius[r], by Luci Rosen"
"I-Scam-Gain Magicians[r], by [if player is male]Isaac Ming[else]Inga Masci[end if]" []
"I Search Cashier Cahiers[r], by Eric Ash"
"I Seen Sin, Ee[r], by Niese Eisen"
"I, Self Files[r], by Fifi Lessel"
"I, Serving Grievins[r], by [if player is male]Vern Gisi[else]Vi Singer[end if]"
"I Sew, Wise[r], by Wei Weiss" []
"I shake a Sheik[r], by Keisha Haskie"
"I Shape APIs, Eh?[r] by Si Heap"
"I Share a Shire[r], by [if player is male]Isiah Shearer[else]Sherrie Sahia[end if]"
"I Share No Nose Hair[r], by Rio Hanes"
"I, Sky Den, Kidneys[r], by Nik Syed"
"I Slam Mails[r], by Sam Li"
"I, Slayer of Lies, Foray[r], by Risa Foley"
"I, Sleek Selkie[r], by Ike Les"
"I Sneak Sea Ink, a Skein[r], by Si Kane"
"I, Snide, Inside Indies[r], by Si Dein"
"I, Snider Insider[r], by [if player is male]Ned Iris[else]Di Rines[end if]"
"I, Snidest, Insisted: Tidiness[r], by [if player is male]Sid Stein[else]Isis Dent[end if]"
"I, Snug, Using GUI, Guns, Sin[r], by Gigi Sunnus" []
"I, Sooner Erosion? No, Rosie[r], by Enos Rio"
"I Spanked Ken's Paid Kid Aspen[r], by Skip Dean"
"I Spared a Paradise[r], by Asa Pride" []
"I Sparked Side-Park Dark Pies[r], by Sid Repka"
"I Stand and Sit[r], by Tan Sid"
"I Stare: Ires at Satire[r], by Terisa Serita" []
"I Stared at Rides[r], by Art Dies, Ed Raist & Red Tsai" []
"I Stole: Lies to Lose It[r], by Leotis O'Steil"
"I Strew Wriest Writes[r], by T. R. Wise"
"I, Surgeon or Genius[r], by Dr Esme Demers"
"I Take a Kite[r], by Katie Keita"
"I Teach AI Tech[r], by Cathie Ecthia" []
"I Tempt Pet Tim[r], by Em Pitt"
"I, To Queer Erotique[r], by Teo Quire"
"I Treat: a Trite Attire[r], by Tatia Reitter"
"I, Trivial: a Travail[r], by Iva Trail"
"I Trusted Detritus[r], by [if player is male]Titus Erd[else]Teri Dust[end if]"
"I Try Real Literary[r], by [if player is male]Terry Ali[else]Lita Ryer[end if]"
"I Turned Under It[r], by Teri Dun"
"I Tut Some Timeouts[r], by Moe Titus"
"I, Uncle Lucien[r], by Len Cui"
"I, Unrapt Puritan[r], by Tai Purn"
"I, Up So Pious[r], by Su Poi"
"I, User So Serious[r], by Sue Rios"
"I, Vagrant, a Girt Van[r], by [if player is male]Art Gavin[else]Gita Varn[end if]"
"I, Vegan? A Given[r], by Vin Gea"
"I Versus Viruses[r], by Su Siver"
"I Voted to Dive[r], by Dottie DeVivo"
"I Ward the Weird Hat[r], by Eda Wirth"
"I, Weaver: a Review[r], by Eva Weir"
"I Wend Into a Wide Nation[r], by [if player is male]Dwain Nieto[else]Tonia Edwin[end if]"
"I Won't Be Tebowin['][r], by Bo Twine"
"I Wouldn't, Loud Twin[r], by Ludo Wint"
"I Wreck No Nice Work[r], by Rick Owen"
"I Wrecked, Wickeder[r], by Drew Eick & Rick Weed"
"I'd Alarm Admiral Mad-Rail[r], by Dara Lim"
"I'd Bar a Bird[r], by Dr. Abi Baird"
"I'd Barge a Bridge[r], by Brad Ige"
"I'd Clear Dr. Lacie[r], by Ric Dale & Dire Cal" []
"I'd Close Le Disco[r], by Sid Cole" []
"I'd Dwelt: Dewd-Lit[r], by Wild Ted Twiddle"
"I'd Forget Gotfried Forged It[r], by Ted Frigo & [d-t] Grief"
"I'd Hang Gandhi[r], by Ag Dinh"
"I'd Let a Detail Lead It[r], by [if player is male]Ted Ali[else]Edi Alt[end if]"
"I'd Once Do Nice[r], by Noe Cid"
"I'd Rate a Tired READ IT[r], by Tia Erd"
"I'd Slam Mild as Dismal[r], by Millis Addams"
"I'll Break, Bilk Earl[r], by Lila Berk"
"I'll Mew I'l Well[r], by Lew Lim"
"I'll Push His Pull[r], by Lips Uhl" []
"I'll See Ellie's[r], by Les Eli"
"I'll See Ellie's[r], by Liesel Leslie"
"I'll Take Li'l Kate[r], by Elli Tak"
"I'm a Drab Barmaid[r], by Ida Bram"
"I'm a Lot to Liam[r], by Olma Mattioli"
"I'm a Wall: Malwail[r], by Liam Law"
"I'm Alert: Trail Me[r], by Tim Lear"
"I'm as a Sim[r], by Masi Sima"
"I'm Les Miles[r], by Selim Emlis"
"I'm No Omni[r], by Mimi Noon"
"I'm Okay, Yoakim[r], by Kai Moy"
"I'm Over Vi Mero[r], by Ev Mori"
"I'm Sad Midas is Mad[r], by Simi Addams"
"I'm Sara, Ms. Aria[r], by Aramis Simara"
"I'm Smart as Mr. Tim[r], by Art Mims"
"I'm Sold as So Dismal[r], by Aldo Sims"
"I'm Sunk in Musk[r], by Kim Sun"
"I'm Thrown With Norm: Mirth Now[r], by Mohr Wint"
"I'm Touted To Tedium[r], by Timed-Out Mutt Odie"
"I'm Unable, Alien Bum[r], by Ian Blume"
"I've Made Evie Mad[r], by Em Davie"
"IBM As-Is: BAM[r], by Ms. Abi Simba"
"Ice Art: I Trace a Citer[r], by Tricia-Tracee Cerita" []
"Ice Dolls['] Cold Lies[r], by Sid Colle"
"Ice Genius, Nice Guise[r], by Ines Guice"
"Ice Trophy, Toy Cipher[r],  by Troy Piche"
"Iced, Gone, Genocide[r], by Edie Cong"
"Iced Over Divorcee[r], by Evie Cord"
"Iceland's Nice Lads[r], by [if player is male]Sid Lance[else]Candi Les[end if]" []
"Ichors So Rich[r], by Cris Oh" []
"Iciest Deaths: the Die is Cast[r], by Tisa Tedeschi"
"ICK! Host to Hicks So Thick[r], by Kit Ochs" []
"Iconic? NO[r], by Nico Cino"
"The Icy City, eh: Ye Itch[r], by Chet Yi"
"Icy Denser Residency[r], by [if player is male]Cris Edney[else]Cyndi Rees[end if]"
"Id-Theism Times Hid[r], by [if player is male]Sid Theim[else]Edi Smith[end if]"
"Idealism to Modalities[r], by [if player is male]Otis DeLima[else]Melodi Tsai[end if]"
"Ideas of Oafs Die[r], by Si Dafoe & Ed Sofia"
"Ideology? Goody! Lie![r], by Diego Loy"
"An IDK, Kinda[r], by Kandi Dakin"
"Idle Fens, Life's End: Lee Finds Def Lines[r], by Enid Self"
"Idle Gab? Big Deal[r], by Gil Bade"
"Idle Lied I, Li'l Dede[r], by Edie Dill" []
"Idle List: Die Still[r], by Sid Litle"
"Idle Pap Applied[r], by Pip Adel"
"Idle Sop, Plied So[r], by Sid Pole"
"Idleness Dens Isle[r], by [if player is male]Sid Elsen[else]Lis Edens[end if]" []
"Idler's Bane: Bread Lines[r], by [if player is male]Andre Biles[else]Linda Brees[end if]"
"Idyl Troop Dirty Pool[r], by Troy O'Dilp"
"I.E. Bland Dan Lieb[r], by Belinda DeBlain"
"If a Dry Friday[r], by Adi Fry"
"If Anger: a Finger[r], by Fergina Garfein" []
"If Dale Filed a Fad-Lie[r], by Di Leaf" []
"If Dante Fainted Defiant: a Fit End[r], by [if player is male]Tad Fine[else]Ida Fent[end if]"
"If Elfs Be Fibs, FEEL[r], by Biff Lees"
"If Felon, Offline[r], by Flo Fine"
"If Lame, Fail [']Em[r], by Mia Elf"
"If Met of Time Off[r], by Tom Fife"
"If No Info[r], by Fifi Noon"
"If Starved, Drive Fast[r], by [if player is male]Dave First[else]Frida Vest[end if]"
"If the Thief Fit, Eh?[r] by Effie Thith"
"If Torn I Front No Rift[r], by Torin F. Fortin"
"If You Slur Furiously[r], by Lori Yusuf"
"Iffy Lust, Stuffily[r], by Ty Fulfis"
"Ignoble, I Belong[r], by Bo Ingle & Gil Bone"
"Ignorant Giant Ron[r], by [toti] Garn"
"Ilk Ween Like New[r], by Wink Lee"
"Ill Better, Belittler[r], by Elli Brett"
"Ill Coders['] Dice Rolls[r], by Red Collis"
"Ill-Dreamt Treadmill[r], by Tad Miller" []
"Ill Fang Falling[r], by Alf Ling"
"Ill Foes['] Follies[r], by Les Foil"
"Ill? I? No, No[r], by Loni Olin"
"Ill Times: I Smell It[r], by Tim Ellis"
"Immersing, Simmering[r], by Ines Grimm"
"Immortal Limo-Mart[r], by Mat Moril"
"Immortalise, Memorialist[r], by [if player is male]Emilio Smart[else]Roselia Timm[end if]"
"Imperial Mail Pier[r], by Mel Parii"
"Important Titan Romp[r], by Ramon Pitt"
"Impose Not Some Point[r], by Noemi Post"
"Improvised is Improved[r], by Primo Vides"
"In a Sickbed, Back Inside[r], by Sandie Bick"
"In Awe of Naif Woe[r], by Io Fewan"
"In-Car Racin['][r], by Nanci Arric"
"In Dark I Drank a Drink[r], by Kindra Kinard" [p]
"In for a Rain of No Fair[r], by Faran Fiorino"
"In Gassy Sayings[r], by Sy Gains"
"In Here, Cat: Eat, Enrich[r], by Teri Hance"
"In Sun Be Bunnies[r], by Ennis Bu"
"In the Black Kitchen-Lab[r], by Beth Calkin"
"In Ur-Ruin I Run[r], by Nuri Inur"
"In Wet Twine I Went[r], by Newin Witte" []
"Inane Creep? Ire, Penance, Inner Peace[r], by Nancie Peer"
"Inane Rain Arena[r], by Arianne Naraine"
"Inane Sallie's Lineal Anises[r], by Selina Nealis"
"Inane, Trite Barb: I Banter[r], by Bernita Biernat"
"Inane Wit: I Ain't New[r], by Tai Winne"
"Inartistic Cairns: a Racist Intrinsic[r], by Cristina Crisanti"
"Incentives: Nicest Vein[r], by Vince Stein"
"An Inch [']N Achin['][r], by [if player is male]Nic Han[else]Ann Chi[end if]"
"Inch, Age: I Change[r], by Gia Chen"
"Inch Leap: I Can Help[r], by Chip Lane"
"Incognisant Sanctioning[r], by Otis Canning"
"Incomplete Poem Client[r], by Pete Lincom"
"Incubate: a Nice Tub[r], by Tia Bunce"
"Incurable Urban Lice[r], by Lani Bruce"
"India Sands, Naiads['] Dins[r], by Sandi Dains"
"Indicatory Dictionary[r], by Dr. Tony Icia"
"Indulged Deluding[r], by Ed Guldin"
"Inept Cats Can't Spite Pittances[r], by Staci Pent"
"Inert? Ow, Write On[r], by Towerin['] Wit Nero" []
"Infernos for Ennis, Sinner of Iron Fens[r], by Ron Fines"
"Infield Infidel, Find Eli[r], by Del Fini"[]
"Infirm Freeman, a Fireman[r], by Fermina Freiman"
"Inflate, Fat Neil[r], by Ian Felt"
"Info Sum: I'm So Fun[r], by Simon Fu"
"Informal Norm, Fail[r], by Alf Minor"
"The Ink Hit Ken[r], by Keith Hentkin"
"Inklings['] Linkings[r], by King Nils"
"Inmate of Meta Info[r], by Fae Timon"
"Inmost Monist Timons[r], by Monti Stimson"
"Inmost Monist[r], by Ms. Toni Timson-Simont" []
"Insane-Pox Expansion[r], by [if player is male]Nixon Pase[else]Xena Spino[end if]"
"Insatiable Banalities[r], by [if player is male]Blaine Tsai[else]Iliana Best[end if]"
"Insectean Tenancies[r], by [if player is male]Cain Steen[else]Stacee Nin[end if]"
"Insomnia Mansion: I[r], by Nia Simon"
"Inspector to Princes Trips Once[r], by Cris Ponte"
"Inspectorial Replications[r], by Nicola Priest"
"Instant Oral Translation: Intro Aslant[r], by [if player is male]Alton Strain[else]Nita Ralston[end if]"
"Insular Sun-Lair Urinals As Lurin['][r], by Lu Rains"
"Intentional Online Taint[r], by Annie Litton"
"Interim Termini[r], by Erin & Tim Mintier"
"Internal Rant Line[r], by Elin Tran"
"Interstellar Learners['] Tilt[r], by Arnett Siller"
"Into a Fun Fountain[r], by Iona Funt" []
"Intro Fees of Entries Set on Fire: Terse Info[r], by Efren Otis"
"Involved Devolvin['][r], by Viv Eldon"
"Io, Let to Lie[r], by Eliot Leito"
"Io Preens In Repose, Pioneers[r], by Rose Pine"
"Ire? Nay, I Yearn[r], by Neriya Rainey"
"Ire's Row: or, Wiser Worries[r], by Ros Weir"
"Iridescent, Indiscreet[r], by Denice Rist & Enid Crites"
"Irk Eerie Kirk[r], by [if player is male]Erik[else]Keri[end if] Kier-Reik"
"The IRL Hitler[r], by Teri Hillerth"
"Irons, Sin or Rosin[r], by Ronin Rossi & Sorin Rison"
"Ironside's Derisions[r], by Enid Rossi"
"IRS vs Irv[r], by Viv Sirrs"
"Is My Blog Slimy Gob[r], by Gil Mosby"
"Is Valor So Viral[r], by Val Rios"
"Isenhower: Hero/Swine[r], by Erin Howes & Sheri Owen"
"Island-Booted, Bloodstained Bandit Loosed[r], by [if player is male]Addison Bolte[else]Soledad Tobin[end if]"
"Issues Dig Disguises[r], by Sid Gussie"
"Istanbul: I Ban Lust[r], by Lisa Bunt"
"It Forks OK First[r], by Si Kroft & Tor Fisk"
"It Holds Old Hits[r], by Sid Holt"
"It Makes a Kismet Mistake at Mike's[r], by Kim East"
"It Pulsated Platitudes[r], by Titus Delap"
"It Revived a Derivative[r], by [if player is male]Dave Viteri[else]Evita Verdi[end if]"
"It Rivals Trivials[r], by Travis Li"
"It Spoke to Spike[r], by Kip Seto"
"It's a Dopy Dystopia[r], by Tio Spady"
"It's Only Lions, Ty[r], by [if player is male]Tiny Sol[else]Lin Yost[end if]"
"It's Posh, Sophist[r], by Tip Hoss"
"It's so I Toss to Sis[r], by Isis O'Stots"
"It's Too Late to Totalise[r], by Lottie Sato"
"It's Top to Spit[r], by Si Pott" []
"Ivan Tal, Valiant Latvian[r], by Vi Natal"
"Iverson's Versions[r], by Erin Voss"
"The Ivy's Sty-Hive[r], by Tish Vey"
"Ja, Nix a Jinx[r], by Jan Xi"
"Jealousy, Louse Jay[r], by Joey Saul"
"Jeer Yon Hut: the Journey[r], by [if player is male]Joey Hunter[else]June Yother[end if]"
"Jellison's Jolliness[r], by Jessi Noll"
"A Jest, My Majesty[r], by Steamy J & Ty James"
"Jet on to Jen[r], by Jojo Ennett"
"Jim, Lay My Jail[r], by Jay Lim"
"Jingos['] Jog-Ins[r], by Si Jong"
"A Jinx, a Jinx[r], by AJ Nix & Jan Xi"
"Jo's Lunar Journals[r], by [if player is male]Rajon Sul[else]Ros Lujan[end if]"
"Job Notice Objection[r], by Joi Becton"
"Jocks are a Jerk [']Cos[r], by Jack Rose"
"Join the Tie, John[r], by Thin Joe"
"Joints St. Joni Jots in[r], by O. J. Nist"
"Joke About: a Jute Book[r], by Joe Kubota"
"Jolted old Jet[r], by TJ Odle"
"Josh Went: Hewn Jots[r], by John West"
"Journalist Roils Junta, Runs to Jail[r], by Lorina Just"
"Journeyman: Men on a Jury[r], by Jenny Mauro"
"Joy Rune Journey[r], by June Roy" []
"Judoist Studio J[r], by Judi Tso"
"Juliet's Just Lie[r], by Luis Jet"
"June of UFO Jen[r], by Fun Joe"
"Junk Mail? J/K, Alumni [r], by [if player is male]Juan Milk[else]Kim Lujan[end if]"
"Jupiter's Just Ripe[r], by Jeri Pust"
"Just More Jets-O-Rum[r], by [if player is male]Joe Sturm[else]Jo Sumter[end if]"
"Kabuki Cot Kickabout[r], by Buck Tokai"
"Karstens's Starkness[r], by Stan Kress & Ernst Kass"
"Kasparov as Karpov[r], by Avo Parks"
"Keatts's Tsatske[r], by Kat Tess"
"Kelpies['] Lips, Eek[r], by Skip Lee"
"Kelsey's Keyless[r], by El Sykes"
"Ker-Blam, Mr. Blake[r], by Mel Bark"
"Kera-Beth the Baker[r], by Bret Hake"
"Ketcham the Mack[r], by Mat Heck"
"Kick Tires: Ike's Trick[r], by Rikki Stec"
"Kill Dreams, Smaller Kid[r], by Drake Mills"
"A Kind Kid? Na[r], by Kandi Dakin" []
"Kind Sen. Denkins[r], by Ned Sink"
"Kindles Slinked[r], by Len Disk" []
"King Lew, a Weakling[r], by [if player is male]Gale Wink[else]Keli Wang[end if]"
"Kingward, Darkwing[r], by Dirk Wang"
"Kinsley's Skylines[r], by Lin Sykes"
"Kiss Roy: So Risky[r], by Sky Rios"
"Kit, When We Think[r], by Ken Whit" []
"Kite Mill: Kill Time[r], by Mike Till"
"Klein-Sasser Larkinesses[r], by Selena Kriss"
"Knead, Naked[r], by Kenda Kaden"
"Kneisel's Likeness[r], by Lee Sinks" []
"Knotted[r], by [d-t] Kent"
"Know-Heads['] Shakedown[r], by Don Hawkes"
"Know it to Wink, OK Twin[r], by Nik Two Kotwin"
"Koester Re-Tokes[r], by Ester Ko"
"Kornfeld Nerdfolk[r], by Rolf Denk"
"Kubiak's Kabukis[r], by Suki Bak"
"La, Tough to Laugh, Lout-Hag[r], by Al Ought" []
"La, Vigor, Go Viral[r], by Vi Gorla & Lora Vig"
"Lab Term Table, Mr.[r], by Lambert Beltram-Bramlet" []
"Label My Yell: Bam[r], by Alby-Lem Bellamy"
"Labors, Men: No Rambles[r], by Rosenbalm Lamberson" []
"Lack No Conk: a KO Clan[r], by Al Nock"
"Lack Not Talk, Con[r], by Colt Kan"
"Lack Pie? A Pickle[r], by Kip Cale & Eli Pack"
"Laconic, Can Coil[r], by Al Cinco"
"Lad Drew, Rad Lewd Dawdler, Drawled[r], by Del Ward"
"Lad, I've a Devil[r], by Dave Li"
"Lad, Sow Low Ads, Do Laws[r], by Sal Dow"
"Lad, Stay Sadly at Last Day[r], by [if player is male]Ly Sadat[else]Dy Atlas[end if]"
"Laden Here, He Learned[r], by Lee Harden"
"Laden, Leaden Land[r], by Alden Andel"
"Ladroon Orlando[r], by Al Rondo" []
"Lag Very Gravely[r], by Val Grey"
"Laggers['] Gargles[r], by Greg Sal"
"Lair at a Trail[r], by Tara Li"
"Lair of Fail or Frail, O[r], by Alf Rio"
"The Lamb Blameth THEM-LAB[r], by [if player is male]Mel Bath[else]Beth Alm[end if]" []
"Lame Cory Claymore[r], by Mary Cole"
"Lame, Dire, Remedial[r], by Liam Reed"
"Lame Doc Mad Cleo[r], by Cold Mae Macleod"
"Lame-Duck Calm Duke[r], by Mac Ludke"
"Lame Peter, Tame Leper, Maple Tree[r], by Elmer Pate"
"Lamenting Alignment[r], by Tim Langen"
"Lanced Candle[r], by Declan DeLanc"
"A Land and Al[r], by L. A. Dan"
"Land of Top Plant Food[r], by Adolf Pont"
"Lang's Slang[r], by Lans G. Glans-Sangl"
"Lapsing Sapling[r], by Gil Span" []
"Larcenous Euro-Clans[r], by Luna Score"
"A Larch Lecher[r], by Rachel Lacher"
"Large, Galdder Elder Laggard[r], by Gerrald Dagle"
"The Lark: Her Talk[r], by Art Kehl"
"Larriby Library[r], by Barry Li"
"Larvae I Re-Avail[r], by [if player is male]Ira Veal[else]Valarie Valeria[end if]"
"Lass-Free, Fearless[r], by Alf Esser"
"Lasso Alsos[r], by Sal LoSasso"
"Last-Five Festival[r], by Val Feist" []
"Last Men: Laments[r], by Mantell Tessman"
"Last-Ogled Lost Glade Gold Steal[r], by [d-t] Segall"
"Last, Ol['] St. Lola, So Tall[r], by Sal Olt"
"Last One: Lose, Nat![r] by Al Stone"
"Last One, St. Leona[r], by Leo Nast" []
"Last We Slew at Set Law[r], by Al West"
"Last Week Let Askew[r], by Lew Keats"
"Last Week: Wet Lakes[r], by Walt Kees" []
"Lastly I Stay Ill[r], by Lita Sly"
"Lastly We Stay Well[r], by Twyla Les"
"Late Retro Tolerater Errol Tate[r], by Lea Rotter"
"Later Ed Related, Altered[r], by Lee Dart"
"Later Now: a Low-Rent Real Town[r], by Al Wroten"
"Latvians['] Last Vain Tan Vials[r], by Nat Silva"
"Laud Grief, Lifeguard[r], by Fidel Guar"
"Laughter's Slaughter[r], by Ruth Segal" []
"Laundry is Ruin, Sadly[r], by [if player is male]Yuri Lands & Daryn Luis[else]Sindy Raul[end if]"
"Lawrence's Clear News[r], by[if player is male]Neal Crews[else]Celsa Wren[end if]"
"The Laws? Haw, Let's[r], by Hal West"
"A Lay Cult, Actually[r], by [if player is male]Clay Ault[else]Lucy Lata[end if]"
"Lay Dirt Tardily[r], by Ty Laird"
"Lay Up, Pauly[r], by [if player is male]Pal Yu[else]Lu Yap[end if]"
"Lazy Times['] Zesty Mail[r], by Zita Myles & Emily Satz"
"Le Chic Cliche[r], by Li Cech"
"Le Crash[r], by Charles Lascher"
"Le Fine Feline Feelin['][r], by Len Fei"
"Le Thief: the Life I Left, Eh?[r] by Lee Hift" []
"Le Tux: Exult![r] by Tex Lu"
"Le Vista Alivest[r], by Vi Stael"
"Le Yowl, Yellow[r], by Ly Lowe"
"Lead, Iron: A Lonelier Android in Ordeal[r], by Reinaldo Andreoli" []
"Lead On, Lad Neo[r], by Ol['] Dean Delano"
"Leaden Lean Dell[r], by Danelle Allende"
"Leaking Linkage[r], by Gil Kane"
"Leaky Roof for a Yokel[r], by Fay Looker"
"Lean Log Galleon[r], by Leola Ng" []
"Lean Low, One Wall[r], by Leon Law"
"Leap, Thing: Plan Eight[r], by [if player is male]Phil Tegan[else]Pat Hingle[end if]" []
"Learn by Blarney[r], by [if player is male]Al Byrne[else]Lyn Baer[end if]"
"Learn'd Randle Aldner[r], by Darnel Lander"
"Leased, Sealed[r], by Deedee Sallas"
"Leashing Healings[r], by Nigel Ash"
"Lebanon's Neon Labs[r], by Al Benson"
"Led of Ego? Feel good[r], by Flo Goede" []
"Lee IX, Exile[r], by Lexie Xiele"
"Lee Roth's the Loser[r], by Lester Ho"
"Leer: Ben's Beer Lens[r], by Les Breen"
"Leermost Molester Storm Lee[r], by Mr. O. Steel"
"Leery Al, a Yeller[r], by Earl Lay"
"Leery Ol['] Eye-Roll[r], by Elly Roe"
"Lefties['] Lie Fest[r], by Les Feit"
"A Lefty: Ye Flat Fealty[r], by Ty Leaf"
"Lefty's Flytes[r], by Sy Felt" []
"Legacies Cage Lies[r], by Leci Sage" []
"Leif's Files: I, Self[r], by Effie Sills" []
"Leigh's Sleigh[r], by [if player is male]Helgis Gleish[else]Shellie Higgs[end if]"
"Leila's Allies[r], by Sallie Ellias"
"The Lemon: No Helmet[r], by Helen Tom-Heelmont"
"Lend Drama, Dreamland Ladder Man[r], by Nedd Lamar"
"Lend Ire, Dr. Eline[r], by [if player is male]Len Reid[else]Lin Deer[end if]"
"A Lend-Laden, Leaden Land[r], by [if player is male]Dean Leland[else]Deanna Dell[end if]" []
"A Lens Leans[r], by [if player is male]Sean Ansell[else]Lenna Sales[end if]"
"Leprechaun: Her Cleanup[r], by Prue Chanel"
"Leprechauns['] Chapel Runes[r], by Claus Hepner"
"LeRon or Len[r], by Errol Nolen"
"Lest God Gets Old[r], by Del Gost"
"Lestat's Stalest[r], by Tess Tal"
"Let Abe Be Late[r], by [if player is male]Lee Abt[else]Bet Lea[end if]"
"Let Burn Blunter[r], by Len Burt"
"Let Go to Gel[r], by Toto LeGelg" []
"Let God Get Old[r], by E. T. Gold"
"Let in Much Lunchtime[r], by Clint Hume & Che Tumlin"
"Let This Lithest Thistle[r], by Les Hitt"
"Let Tom Melt to Mottle[r], by Em Lott"
"Let Us: a Salute[r], by Lulu Tate-Seas"
"Let's Cool Eco-Tolls[r], by Lost Cleo Costello"
"Let's Fail Life Last[r], by [if player is male]Tai Fells & Fat Ellis[else]Lita Self & Fae Still[end if]"
"Let's Hold the Dolls[r], by [d-t] Shell"
"Let's Kinda Stand Like Idle Tanks[r], by [if player is male]Tad Elkins[else]Kit Landes[end if]"
"Let's Play All Types[r], by Sly Patel" []
"Let's Study Tests Duly[r], by Sy Duttles"
"Let's Work: Slow Trek[r], by Stew Krol" []
"Lethargic Grail Tech[r], by Gita Lerch"
"Lev Has Halves[r], by Val Esh"
"Levi's Lives[r], by Elvis Slive"
"Levin's Snivel Livens Elvins[r], by Nevil Vesslin"
"Lew, Stu: We Lust[r], by Lu West"
"Lew's Got Two Legs, Gets Low[r], by Wes Golt & Stew Log"
"A Li'l Grue Guerilla[r], by [if player is male]Gil LaRue[else]Lula Iger[end if]"
"Liane's Saline Aliens[r], by Sean Li" []
"Liar, Liar[r], by Raia Rill" []
"Liars['] Lairs[r], by Sir Al Sarli"
"Liberal Braille[r], by Bill Rea & Ira Bell"
"Liberty's Blistery, Sly Tribe[r], by Elsy Brit"
"Lich Crone's Chronicles[r], by Chris Cleon"
"Lie and Leadin['][r], by Daniel Aldine"
"Lie As Elias, i.e. Sal[r], by Elisa Ailes"
"Lie Astir: Is it Real?[r] by [ta] Riles"
"Lie, Bible: Bile[r], by Bebe-Lili Lieb"
"Lie Ill, Li'l Eli[r], by Elli Li"
"Lie is Loose[r], by Elois Sileo"
"A Lie to Eat Oil[r], by Teolia Leitao"
"Lies by Sibley[r], by Sy Beil"
"Life's Aim: Families[r], by Mei Fasil"
"Lights Out, Guilt-Shot[r], by Hugo Litts"
"Like This, Lit Sheik[r], by Kit Hisle"
"A Liked Dalek, I[r], by Ed Kail"
"A Likely Kill, Aye: Leakily, I Key All[r], by Kai Lyle"
"A Limner's Minerals[r], by Ren Smail"
"The Limo Moileth[r], by Theo Lim"
"Linda's Island[r], by Sad Lin Landis" []
"Line Gangs['] Gleanings[r], by [if player is male]Nigel Gans[else]Agnes Ling[end if]"
"Lingo, OK-Looking[r], by Gil Koon"
"Link the Thin Elk[r], by Ken Hilt"
"Links to Lost Kin[r], by Nik Solt"
"Lint Owl Will Not Lilt Now[r], by Lon Wilt"
"The Lion Noel Hit[r], by Eli Noth & Theo Lin" []
"A Lion's Slain, O[r], by Sonia Allison"
"Liquor Be Obliquer[r], by Eriq Lubo"
"Lisanne Leans In[r], by Ali Senn"
"List Not Lost Tin[r], by Nils Ott-Stilton"
"A List of Fat Oils[r], by [if player is male]Alf Otis[else]Flo Tsai[end if]"
"Lite-Tile[r], E-Lit by Eli Title"
"Little Boys['] Bits to Yell[r], by [if player is male]Toby Estill[else]Betsy Ollis[end if]"
"Live Chat: Halt Vice[r], by [if player is male]Chet Vail[else]Eva Licht[end if]"
"Live Ever Aerial[r], by Valerie Larivee"
"Live for a Fail-Over, Viler Oaf[r], by Rafi Love"
"Live, Levi[r], by Viv-Ellie"
"Live Long, Try Revoltingly: Very Tolling[r], by Tyler Loving"
"Lo, a Debt, Bloated[r], by [d-t] Abel"
"Lo, Able Ole Lab[r], by Al Loeb-Bollea"
"Lo, Abort to Labor[r], by Bartolo Ort-Albo"
"Lo! Ashes. She also Heals So[r], by ******* Sol Shea"	40
"Lo, Dwarf of Drawl[r], by Flo Ward-Waldorf" []
"Lo, Ester: Ere Lost to Leers or Steel[r], by Sol Tree"
"Lo-Fault Fallout[r], by Flo Ault"
"Lo, I Sell Lollies[r], by Sol Lile" []
"Lo, I'm Not Moonlit[r], by Tom Olin"
"Lo, Inure Ole Ruin[r], by Oren Liu"
"Lo-Mend Old Men[r], by Delmon & Meldon LeMond" []
"Lo, Mine Oil, Men[r], by Meline Molino" []
"Lo, Rare Aloe: a Lore[r], by Leora LaRoe"
"Lo-Scale Locales[r], by Sal Cole"
"Lo-Spine Pile-Ons[r], by Sol Pein & Les Pino"
"Lo-Style LOLS, Yet, to Yells[r], by Sly Leto"
"Lo, Whine? No, While in Whole[r], by Lin Howe"
"Loath Tumors, Thou Mortals[r], by LaMott Roush" []
"Loathings, I Hang Lots[r], by [if player is male]Gil Ashton[else]Sona Light[end if]" []
"Lob a Full Foul Ball[r], by Flo Bulla"
"Loci Set To Slice it Close[r], by Eli Cost"
"Locked-In Clone Kid[r], by Enid Lock"
"Locked-in Olde Nick[r], by Dick Leno" []
"A Locker's Ol['] Creaks[r], by Sal Coker & Clark Ose"
"Locust Clouts[r], by Col. Stu Coltus" []
"Lodge Unto Old-Tongue Tuned Logo[r], by Doug Elton"
"Lofting Glint of Flint, Go[r], by [if player is male]Gil Font[else]Flo Ting[end if]"
"A Lofty Flay to Yo['] Flat[r], by Al Foyt" []
"Lofty to Fly! T/Y, Flo![r] by Ty Lof"
"Log Ires, Sir? Ogle Glories[r], by Gil Rose"
"Log: Meant to Mangle[r], by Galen Tom"
"Logan's Slogan[r], by Al Song"
"Lola's End: All's Done[r], by [if player is male]Les Dolan[else]Lena Olds[end if]"
"LOLscape: All Copes Collapse[r], by Cal Lopes" []
"Lone Ditch in the Cold[r], by Ted Nichol"
"Lone Felon Freer[r], by Florene Fleenor"
"Lone Fix: I Flex On[r], by Elin Fox"
"Lone Id Lied On[r], by Leonid DeLino"
"Lone Leon Leno[r], by Elle Noon"
"A Lone Pet Antelope[r], by Poet Neal"
"Loners: Ron, Les, Sol, Ren[r], by Lerner Olsson"
"Longtime Met-Lingo[r], by Tom Ingle" []
"Look at Kal Too[r], by Kat Loo" []
"Looks for Solo Fork[r], by Flo Rooks"
"Loon Got Too Long To Log On[r], by Ol['] T-Goon Otlongo"
"Loony Em[r], by Lo-Money Moloney"
"The Loop Hotel Op[r], by Holt Poe"
"Loose Bandit Blaine Stood[r], by Leonida Bost"
"Loose Lips Spool Lies[r], by [if player is male]Sol Pelosi[else]Lois Lopes[end if]"
"Loot Inset on Toilets Too Silent[r], by [if player is male]Otis Nolte[else]Lois Otten[end if]"
"A Looter Too Real[r], by Lea Root"
"Lootery: Toy Lore[r], by Ry Toole"
"Lord Mayor Mr. Rolo Day[r], by Daryl Romo"
"A Lord or Lad[r], by Roald Lardo" []
"Lord Ted's Toddlers[r], by Del Dorst"
"The Lord Told Her[r], by Red Holt"
"Lord Yawp & Lady Prow: Yorpwald Day Prowl[r], by Apryl Dow"
"Lords['] View: Evil Words[r], by Wes Dorvil" []
"Lore Infects Reflections[r], by Foster Clein"
"Lorn Coat, Color Tan[r], by [if player is male]Carl Toon[else]Lona Cort[end if]"
"Lorn Days, Rosy Land: Any Lords?[r], by Alys Dorn" []
"Losing Cohort Chronologist Nichols Groot[r], by Rico Gholston"
"The Loss Hostels[r], by Les Tosh"
"Lost Ace Locates a Closet[r], by Sal Cote" []
"Lost Achy Holy Cats[r], by Clay Tosh"
"Lost Boys, Bossy Lot[r], by Slyboots"
"Lost Fair Trails of a Florist: Oral Fits[r], by [if player is male]Sal Forti[else]Ali Frost[end if]"
"Lost Fame to Flames: Last of Me[r], by Amos Felt"
"Lost-Greed Rest Lodge Gets Older[r], by [if player is male]Ted LeGros[else]Ester Gold[end if]"
"Lost Hits Hotlists[r], by Sol Stith"
"Lost Key to Kyle's[r], by [if player is male]Ty Kelso[else]Elsy Kot[end if]"
"Lost-Name Salmonet[r], by [if player is male]Stan Elmo[else]Nola Smet[end if]" []
"Lost Ray Taylor's Ol['] Stray[r], by Sal Troy" []
"Lost Slain Stallions[r], by Alton Liss" []
"A Lost Twin Wants Toil[r], by Loni Watts"
"Lost Vine[r], by Vin Toles-Leviston"
"Losted Old Set[r], by [d-t] Les"
"Lot I'm In: No Limit[r], by Tim Olin"
"A Lot to Al[r], by Lala Otto" []
"Lots View Two Evils Wits Love[r], by Tevis Low"
"Lotta Total Ol['] Tat[r], by Al Ott"
"Lou, Be as Lo-Abuse Soul [a-b][r], by Beau Sol"
"Loud Brave Boulevard[r], by Bud Valero"
"Loud Ice is Delicious[r], by Luci Desio"
"Loudish? I should[r], by Lu Doshi"
"Lovable Bo Valle[r], by Abe Voll"
"Love for Rev. Olof[r], by Flo Vore"
"Love Has a Shovel[r], by [if player is male]Sal Hove & Hal Vose[else]Eva Losh & Val Shoe[end if]"
"Love Hate Vote Heal[r], by Theo Vale"
"Lovebirds['] Sob-Drivel[r], by Bevis Lord"
"Low-Beg Web Log[r], by 'Bowleg' W. Goble"
"Low Grate: Waterlog[r], by Walt Gore"
"Low Haters Heal Worst[r], by Theo Rawls-Showalter" []
"Low-Level Swell Love[r], by Les Vowell"
"Low Rated Word Tale[r], by Rod Ewalt"
"Low-Stress Slowsters[r], by Wert Sloss"
"Lowest Towels We Lost[r], by Lew Tso"
"LSD Puree Preludes[r], by Les Dupre"
"Lt. Base, Be Last[r], by Al Best"
"Lu's Pa Paul's a Plus[r], by Su Alp"
"Lucid, Sour, Ludicrous[r], by Ruud Cislo"
"Luddites['] LSD-itude[r], by LISTDUDE"
"Lushest Sleuths[r], by Tess Uhl"
"A Lust to Outlast[r], by Saul Ott"
"Luther's Hustler Hurtles[r], by Les Urth" []
"Lutzke's Klutzes[r], by Su Keltz"
"Lyla Be Label-y: by Ella[r], by Lea Bly"
"A Lyre, Early[r], by Larry Ealey"
"Ma, Icon, In Coma[r], by Monica Camino"
"Ma, This is Math[r], by A. Smith" []
"Ma, Try My Art[r], by [if player is male]Matty Rymar[else]Tammy Tarry[end if]"
"Ma, We're Mere, Aw[r], by Em Ware"
"Ma's Gripe-Epigrams[r], by Pa Grimes"
"Ma's Pic is Camp[r], by Scamp Campisi"
"Ma's Queer Marquees[r], by Em Square"
"Ma's Rad Madras Dramas[r], by Sam Ard"
"Mac Miller's Small Crime[r], by Sim Marcell"
"MacLean's Manacles[r], by Sam Lance"
"Mad Bane be a [d-word-u] Bad Name[r], by Ben Adam"
"Mad Binges, Big Amends[r], by Deb Sigman, Meg Sinbad & Gab Mednis"
"Mad Bones, Bad Omens[r], by [if player is male]Bo Madsen[else]Bea Monds[end if]"
"Mad Cash Dash-Cam[r], by Chad Sam"
"Mad Glee Gleamed[r], by Meg Dale"
"Mad Grace's Card Games[r], by Cam DeGras"
"Mad Liar Admiral[r], by Mila Ard" []
"The Magic Game Itch[r], by Meg Chait"
"Magic Key: a Gem, Icky[r], by Mick Gaye"
"Magic World? Go, Crawl Dim, Low Grim Cad[r], by Lido McGraw"
"Magpies, Sage Imp, Same Pig[r], by [if player is male]Sam Gipe[else]Peg Amis[end if]"
"The Maid Had Time Amid the Dim Hate[r], by Tad Heim"[]
"Maid Lee Emailed Limeade[r], by Imelda E"
"Maiden, I Amend[r], by Maddie Nieman"
"The Mail Hit Lame[r], by Tim Leah" []
"Mailboxes So Mixable[r], by Isobel Max"
"Mailer's Realism is Lamer[r], by Irma Les"
"Maim Lore[r], by Romi Elam"
"The Major Other Jam[r], by [if player is male]Joe Marth[else]Jo Mather[end if]"
"Majorities['] Armies: I Jot[r], by Josie Tamir"
"Make Do, OK, Dame?[r] by Mo Dake"
"Making Up a Punk Mug[r], by Mika Pung"
"Males[r], by Selma Salem"
"Malibu's Bums Ail[r], by Sia Blum"
"Malinger, a Gremlin[r], by Mean Girl Erma Ling"
"Malinger, Germinal Maligner[r], by Amir Glen" [p]
"Malpractice's Clear Impacts[r], by [if player is male]Clem Scarpati[else]Clarice Stamp[end if]"
"Mama, Rec Macrame[r], by Emma Arc"
"Man Cites Semantics[r], by Mac Stein"
"The Man, Dr. Math Nerd[r], by Ned Marth"
"Man, I Try My Train[r], by Tim Ryan"
"Man, with Math, WIN[r], by Tim Hawn-Whitman" []
"Man's Flaunted Fundamentals[r], by Stefan Umland"
"Man's Rage Managers[r], by Sam Regan"
"Man's Work: Ask Now, Mr[r], by Mark Snow"
"Manage a Nag, Me?[r] by Meagan Gaeman"
"Mandibles, Able Minds, Sin, Bedlam[r], by [if player is male]Denis Lamb[else]Deb Sliman[end if]" []
"The Manic Mean Itch[r], by Tim Hance"
"Manifesto of Inmates[r], by Tomas Fine"
"Mankind and Mink[r], by Dann Kim"
"Manlier Mineral Railmen[r], by Al Merin"
"Manlike? Lamenik[r], by Kim Neal"
"Manly Cheek? Many Heckle[r], by Helen McKay"
"Manor O['] Maroon[r], by Namoor Romano"
"Many Cited Mendacity[r], by Dita McNey"
"Many of Us May So Fun[r], by Fay Munos"
"Many Tell Mentally[r], by [if player is male]Ly Mantel[else]Lyn Telma[end if]"
"Map in Desk: Speak, Mind[r], by Skip Amend"
"Maples['] Elm Sap Sample, Slap Me[r], by Pam Les" []
"Mapmakers: Spark [']Em, Ma[r], by [if player is male]Samar Kemp[else]Emma Parks[end if]"
"March in, Rich Man Mr. China[r], by Mac Hirn"
"Marci's Racism[r], by Sir Mac Cairms"
"Marg My Grammy[r], by Gamy Mr. A. Grymm"
"Mark of OK Farm[r], by Ma Fork"
"Marlette's Streamlet[r], by Matt Sleer"
"Marriage: a Grim Era[r], by Amie Garr"
"Martha's Art-Sham[r], by [if player is male]Sam Hart[else]Tam Sahr[end if]"
"Marxist Tram Six[r], by Max Rist"
"Mary, Be My Bear[r], by Em Bray"
"Masonry To Astronomy[r], by [if player is male]Omar Tyson[else]Rosa Monty[end if]"
"The Mast Sat Them[r], by Matthes Stetham"
"Match by My Batch[r], by Cym Bath"
"Matches: The Scam[r], by Cam Tseh" []
"Materialistic, Satirical Time[r], by Mattie Carlisi"
"Maternity: a Tiny Term[r], by Tami Tyner"
"Math Fer The Farm[r], by Father M"
"Matheis: His Mate, Tame-Ish[r], by Tim Shea"
"Mathy? My Hat! A Myth! Thy Ma![r], by Ty Ham"
"A Matter: Meta-Art[r], by Matt Rea"
"Mauro's Amours[r], by Su Mora"
"Maw's Li'l Sawmill[r], by Will Sam"
"Maxims : Ma's Mix[r], by Ax Mims"
"May Second: Some Candy, Many Codes[r], by [if player is male]Cody Means[else]Dyan Cosme[end if]"
"Maybe Do My Abode, Bay Dome[r], by Mae Boyd"
"Me, a Blot to Blame[r], by Tom Beal" []
"Me, a Gym: My Game[r], by Meg May"
"Me and Ad Men Amend[r], by Dede Ammann" []
"Me, I Rust, Mustier[r], by Sue Trim"
"Me, Iris, I See Mr. Miseri[r], by Em Iris"
"Me, Mayor: a Memory[r], by [if player is male]Roy Emma[else]Mary Moe[end if]" []
"Me, Tiny Enmity, Ye Mint[r], by Tim Ney"
"Mea, Mad, Man-Made[r], by Dan Emma"
"Meager Mr. Agee[r], by Meg Rea"
"Mean-Guts Aunt Meg's[r], by Gus Ament"
"Mean Ol['] Man Leo Malone[r], by Len Mao"
"Mean Seeks a Meekness[r], by Sean Meske"
"Mean Short Hoster Man[r], by [if player is male]Homer Nast[else]Sam Thorne[end if]"
"Mean Tot Meant to Team? Not[r], by [n-t] Tom"
"Mean Words, Demon Wars, Now Dreams[r], by [if player is male]Drew Mason[else]Dawn Morse[end if]"
"Meander, Renamed Amender[r], by Mad Rene Deerman"
"Measles Seals Me[r], by [if player is male]Les Ames[else]Sam Seel[end if]"
"Measuring Geraniums[r], by [if player is male]Gus Manier[else]Agnes Muir[end if]"
"A Mecca, Doomed[r], by Doc Mae Macedo"
"Medal of Old Fame[r], by Flo Mead"
"Medaling, Maligned[r], by [if player is male]Al Deming[else]Madge Lin[end if]"
"Mediocre Micro Dee[r], by Moe Redic" []
"Meet, Sojourn: Just One More[r], by Jo-Sue Merton & Junee Ostrom"
"The Mega-Heat Gem[r], by Tam Ghee"
"Mega-Snivel Evangelism[r], by [if player is male]Melvin Sage[else]Megan Slive[end if]"
"Meh, Crabs['] Chambers[r], by Mab Resch"
"Meh, Toss Moss the Hot Mess[r], by Tom Hess" []
"Meinhardt's Hardiments[r], by [if player is male]Dash Minter[else]Mandi Herst[end if]"
"Melba's Ambles[r], by Lem Bas"
"Melbourne: One Rumble, Bluer Omen[r], by xxx"
"Melisa Emails a Smile[r], by Amelia Lessim"
"Melisa Emails Ma Lies[r], by Esmail Maisel" []
"A Mellow Lame Owl: Allow Me[r], by Moe Wall"
"Melodrama Made Moral[r], by [if player is male]Adam Morel[else]Emma Lardo[end if]"
"Melt a Metal, Tame Mallet[r], by Alla Emmett"
"A Melting Ligament[r], by Milt Egan"
"Members Only: Somberly, Men[r], by [if player is male]Bryson Lemme[else]Beryl Emmons[end if]"
"Memoir: I'm More[r], by Mo Meir"
"Memoir Plus Lorem Ipsum[r], by Elmo Primus"
"Memory Can't Cry a Moment: Commentary[r], by [if player is male]Tommy Crean & Monty McRae[else]Tammy Corne & Emmy Carton[end if]"	50
"Men ask it: Mistaken![r], by Kent Amis"
"Men Grow [']Em Wrong[r], by Gwen Mor"
"Men Loath A Menthol-Methanol[r], by Hotelman Lon Mehta" []
"Men, Shoot the Moons[r], by Shon Mote & Honest Mo"
"Men's Epic Specimens[r], by Sim Pence"
"Mend Richly, My Children[r], by Mercy Lindh"
"Menial, Mainline, Lame[r], by Melina Elamin"
"Menials['] Seminal Lies, Man[r], by Liliana Semmens"
"Mentions: None Smit[r], by Tim Sonne"
"Merciful M. Lucifer[r], by Leif Crum" []
"The Mercy-Cry Theme[r], by Chet Remy"
"Mere? No, Enorme[r], by Ron Mee & Mo Rene"
"Mere Room, Me, or More[r], by Mo Roemer"
"Mere Sin: Men's Ire, Me, Risen[r], by Meisner Meiners" []
"Meredith the Mired[r], by Ted Riehm"
"Merely Lame Year[r], by [if player is male]Al Emery[else]Marylee Remaley[end if]"
"Merge No Ogre Men[r], by Mo Green"
"[']Merica: a Crime[r], by Marcie Camire" []
"Merman Grange[r], by German Engram-Magner"
"Merry Con: My Corner[r], by Ron Mercy"
"Merson's Sermons[r], by Ren Moss"
"Meshiest Smithees[r], by [if player is male]Tim Hesse[else]Tess Heim[end if]"
"Mess Bay Embassy: Mass Bye, My Bases[r], by Bess May"
"Messiah Nut Enthusiasm[r], by [if player is male]Hunt Massie[else]Shanti Muse[end if]" []
"Metadata: a Tad Tame[r], by [if player is male]Adam Tate[else]Ada Matte[end if]"
"Metal Pest Templates[r], by Pam Settle"
"A Metal Tamale[r], by Tamela Almeta"
"Metaphysic Impacts, Hey: My Pastiche[r], by Macy Speith"
"Metcalf Left, Mac[r], by Cam Felt"
"Mexico E-Comix[r], by Mei Cox"
"Mia's Aims: Siam[r], by Sami Amis" []
"A Mic, I Cam[r], by Mica Maci"
"Michelle's Schlemiel[r], by Clem Hisle"
"Mick Rave, Maverick[r], by Kev Cimra"
"Microfloral Coralliform[r], by Friar Collom"
"Midst Hub, Thumb Dis[r], by Bud Smith"
"Midwest Dew-Mist[r], by Dim Stew Wimsted"
"Migraine Imaginer[r], by Amie Ring"
"Migraines Raising Me[r], by [i-n] Grimes"
"Miguel's Smug Lie[r], by Sue Glim"
"Milady's Sly Maid[r], by Slim Day"
"Mild, Bo? I'm Bold[r], by Di Blom"
"Mild Row[r], by Wlodmir Wildmor"
"Mildest, Mist-Led[r], by Del Smit"
"Milk Cries: Limericks[r], by Slick Emir Rick Miles"
"Milk of Mo['] Filk[r], by Flo Kim"
"Milk, Soup: OK, I Slump[r], by [if player is male]Kip Solum[else]Lois Kump[end if]"
"Milker Kilmer[r], by Mikki Merrell"
"Minaret Raiment[r], by Martine Armenti" []
"Mind-Trap, [d-word-u] Trip[r], by Pam Rindt"
"Minecraft: Me, Frantic[r], by Tim France"
"Minerva, a Vermin[r], by Marvin E. Van Mier"
"A Minger, Mangier[r], by Mariam Greening"
"Mini Lols? Millions[r], by Slim Olin" []
"Mini-Moon, I'm On[r], by Moni Mino"
"Mink-Dog Kingdom[r], by Kim Gond"
"The Minor Hero Mint[r], by [if player is male]Tim Horne[else]Mei North[end if]"
"Minotaurs? I, a Nostrum[r], by Naomi Rust"
"The Mirror-Him Terror[r], by Torri Rehm"
"Miscaption Impactions[r], by Pati Scomin"
"A Misclick: Sick Claim[r], by Mick Scali"
"Misdealt Medalist[r], by [if player is male]Tim Slade[else]Lea Smidt[end if]"
"Miserably by Realism[r], by [if player is male]Emil Byars[else]Sybil Amer[end if]"
"A Misstep: Pastimes[r], by Pam Estis" []
"Mist Canyon: Manic Stony Sanctimony[r], by Simon Canty"
"Mist-Smit Mt. Miss-It[r], by Tim T. Sims"
"Misused: MD Issue?[r], by Sim Deus"
"Mitcham's mismatch[r], by Si McMath & Mac Smith"
"Mm, Deary, My Dream[r], by Emmy Ard"
"Mo's Direr Misorder[r], by Ed Morris"
"Mo's Rant Transom[r],  by Mort-San Marston-Stroman"
"Mo's Wrath: How Smart[r], by Sam Worth"
"Mo['] Crust to Scrum, Mr. Scout[r], by Tom Crus"
"Mo['] Rigs So Grim[r], by Si Grom"
"Mo['] Sins in Moss? No, Miss Simons[r], by Ms. Sion Simson"
"Mo['] Vibes: B-Movies[r], by Bev Isom" []
"Moan Gee: One Game, Mean Ego[r], by Gene Mao"
"Moan, Nat 'Not-a-Man' Montana[r], by Anna Tom" [p]
"Moaner or Mean?[r] by [if player is male]Monroe Manera[else]Reena Moorman[end if]"
"Moaner Ren Mao, Meaner Maroon[r], by Remona Mareno" []
"Mob-Size Zombies[r], by Oz Bemis" []
"Mobocracy: Cry Boo, Mac[r], by [if player is male]Rocco Byam[else]Coco Mabry[end if]"
"Mobs['] Yen: Men, Boys, Omens by My Bones[r], by Mo Bynes"
"Mock Dive, [dick-u] Move[r], by Vic Domke" [x]
"Mod Racy Army Doc[r], by Mad Cory Carmody"
"Models Seldom Meld So[r], by Dom Les"
"Moderated Dream-Dote[r], by Ted DeRamo"
"A Modern Dream: No Admen or No Armed Roadmen[r], by Ed Moran & Dan Rome" []
"Modern Teens Need Mentors['] Endorsement[r], by [if player is male]Emerson Dent[else]Deneen Storm[end if]"
"Molassess Lassos Me[r], by Sal Moses"
"Molby's Symbol[r], by Sy Blom"
"Mold in the Moth-Lined Nil-Method Idle Month[r], by Tim Holden"
"Mold Thy Old Myth[r], by Tom Hyld"
"Mollify [']Im, Folly: of My Ill[r], by Milo Fly"
"Monasterial Ameliorants[r], by [if player is male]Salim Renato[else]Alison Marte[end if]"
"Money's My Nose[r], by Semyon Moynes"
"Mongillo's Goon Mills[r], by Ling Olmos"
"Monitor Naif Information[r], by Mario Finton & Afton Morini"
"A Monk: OK, Man[r], by Koko Ammann"
"Monsieur Inermous[r], by [if player is male]Simon Ure[else]Sue Minor[end if]"
"Montague's Age Mounts[r], by Mungo East"
"Month, Meet the Moment[r], by Tom Nemeth"
"Moody's Sodomy[r], by Sy Odom"
"Moon-Panic Companion[r], by Nino Campo"
"The Moon's Omen-Shot[r], by Tom Shoen" []
"Moonside Dominoes[r], by Mo Edison"
"Mootest Mottoes[r], by Tom Seto"
"Mopey Else Ye Sleep Mo['], Employees[r], by Posey Elem"
"Mopheads['] Mad Hopes[r], by Pam Hodes"
"Mopiest Man Pantomimes[r], by Noemi Stamp"
"Morally Loyal Mr. Ray Moll[r], by Mary Oll"
"Morbid Dim Rob[r], by Mo Bird"
"More-Class Scams Lore[r], by [if player is male]Carl Moses[else]Elma Cross[end if]"
"More Faith, Hermit Oaf[r], by Tami Hofer"
"More Pews, Moper Wes[r], by Em Powers" []
"More Space: Romp, Cease, Some Recap[r], by [if player is male]Casper Moe[else]Mae Crespo[end if]"
"More Taxes, Rote Exams[r], by Rex Moates & Max Rosete"
"More Than the Manor or Anthem[r], by Ron Hamet"
"The Moss Stems, Oh[r], by Tom Hess"
"Most Curs['] Scrotums[r], by Curt Moss"
"The Most-Hot Stem[r], by Tom Tesh"
"Most Lie to Slime[r], by [if player is male]Tim Sole[else]Mei Olst[end if]"
"Most Lie to Smile[r], by Mel Otis"
"The Most Raw Who Matters[r], by Homer Watts"
"Most Vile Love Mist[r], by Emil Vost"
"Motel Spy Ptolemy's Sly Tempo[r], by Tom Pyles"
"Moth-Eaten to Methane: Not a Theme[r], by Moe Hatten"
"A Mother: Roam the Heart Mo['][r], by [if player is male]Tom Hare[else]Mae Hort[end if]"
"Motliest Lost Time[r], by Miles Ott"
"Motown's Tom Snow[r], by Wm. Snoot"
"Mountainside Un-Mediations[r], by [if player is male]Austin Domine[else]Dionne Matsui[end if]"
"Mourn, Stoic Consortium[r], by [if player is male]Tom Rusconi[else]Cris Mouton[end if]"
"Mourned [']N Rude Mo Dunmore[r], by Ned Orum"
"Mousy St. So Musty[r], by Susy Tom"
"Move Icy, My Voice[r], by Vic Moye"
"Move Til Mt. Olive[r], by Tim Love"
"Mr. Abe, a Bar Member[r], by Amber Bream" []
"Mr. Ade's Dreams[r], by Medders Armas" []
"Mr. Art be At Me, Brr[r], by Bertram Rambert"
"Mr. Cain's Narcism[r], by Marc Sin"
"Mr. Cobie Crombie[r], by Mo Brice"
"Mr. Eero's Remorse[r], by Em Serro"
"Mr. Hou's Humors[r], by Mo Rush" []
"Mr. Ingle, Gremlin Mingler[r], by Len Grim"
"Mr. Lane, a Real Man[r], by Marlena LaMarne"
"Mr. Manifest-Firmaments[r], by [if player is male]Mats Fremin[else]Tammi Ferns[end if]"
"Mr. Not-As-Smart on Matrons[r], by Sam Torn"
"Mr. Oates: Some Art Maestro[r], by Rose Tam" []
"Mr. Ocean's Romances[r], by Sam Corne"
"Mr. Pete's Tempers[r], by M. Streep"
"Mr. Pie-Prime[r], by Pepi Rimmer"
"Mr. Pile's Simpler Prelims[r], by Mel Pris"
"Mr. Rios or Sir M[r], by Ms. Rori Morris"
"Mr. Tate's Matters[r], by Art Mest" []
"Mr. Theo's Mother's Thermos[r], by Tom Sher"
"Mr. Yob, My Bro[r], by Roby M. Ormby" []
"Mrs. Tea-Master[r], by Terresa Stamm"
"Ms. Bustle-Stumbles[r], by Tess Blum"
"Ms. Dole Seldom Sold Me Models[r], by Lem Sod" []
"Ms. Mingle-Lemmings[r], by Glen Mims"
"Mt. Shy Myths[r], by Ty 'SMH' Smyth"
"The Mud Med Hut[r], by Ed Thum-DeMuth"
"Muddier Druid, Me[r], by Mei Rudd"
"Mulrooney's Enormously Lemony-Sour[r], by [if player is male]Lon Seymour & Reynoso Lum[else]Lorey Osmun[end if]"
"Mundane Duneman[r], by Ned Manu"
"Muse-Loci Coliseum[r], by Luci Mose"
"Mush By My Bush[r], by Shy Bum Ms. Huby"
"Muskrat at Murks[r], by Stu Mark & Kam Rust"
"Musty Rag, Smart Guy[r], by Gus Marty"
"A Musty, Um, Stay[r], by Stu May"
"A Mutt? Tut, Ma Tatum![r] by Matt U"
"My, a Loan Anomaly[r], by Alan Moy"
"My Angle: Lean Gym[r], by Mel Yang"
"My Ann[r], by Manny Nyman"
"My Art, or to Marry[r], by [if player is male]Rory Tam[else]Mary Ort[end if]"
"My, As I Say I'm Si May[r], by Missy Amayi"
"My Bills by Li'l Ms[r], by Slim Bly"
"My Boat By Moat[r], by Tom Bay"
"My Cap, Campy[r], by MC Yap"
"My Card, Mr. Cady[r], by Maddy McCrary"
"My Cat is a Mystic[r], by Tim Casy"
"My Cats['] Sty, Mac[r], by Ms. Tacy St. Macy"
"My Clean Clay Men[r], by Len Macy & Al McNey" []
"My Clear Calm Rye[r], by Marc Ley"
"My Coarse Sycamore[r], by Rose Macy"
"My Dirt, Dmitry[r], by Dry Tim"
"My Drug: Dry Gum[r], by DRM GUY"
"My Earth Era Myth[r], by Mr. Hatey"
"My Failed Family-Ed[r], by Amy Field" []
"My Faith, If a Myth[r], by Tim Fahy"
"My Hand's Damn Shy[r], by Sam Dynh"
"My Hole, Homely[r], by Mel Hoy"
"My Horse More Shy[r], by Moe Rhys"
"My Hot Pal Polymath[r], by Hoyt Lamp"
"My Ice-Hot City Home[r], by Mitch Yeo"
"My Idea May Die[r], by Mei Day & Meda Yi"
"My Ideas: Deism, Ay, Ye Maids[r], by Sid Maye"
"My Lane: Any Elm[r] by Len May"
"My Last Alm Sty[r], by Lt. Mays"
"My Lone Elm Yon[r], by Lemony Lyn Moe"
"My Lone Only Me[r], by Len Moy"
"My Matrices, Asymmetric[r], by [if player is male]Timmy Cesar[else]Misty McRae[end if]"
"My, Maud, a Dummy[t], by Adam Yu"
"My Name is Sam Yenim[r], by Mia Mynes"
"My Oath: Yo, Math[r], by Tom Hay"
"My Other Home Try[r], by Tom Hyre"
"My Papers, Ms. Yapper[r], by Myra Epps"
"My Range, Grey Man[r], by Meg Ryan"
"My Rant: Try, man![r] by Tamryn Rymant"
"My Rat Marty[r], by Myrta Tamyr" []
"My Richest Chemistry[r], by Misty Cher"
"My Salient Misty Lane: Tiny Meals[r], by [if player is male]Myles Tian[else]Linsey Tam[end if]"
"My scare: Screamy Marc, Yes[r], by Cyr Ames"
"My Seats: a System[r], by [if player is male]Sam Esty[else]Tess May[end if]"
"My Sheep Hypes Me[r], by Shep Mey"
"My Short Mosh Try[r], by Tom Rhys"
"My Spite is Empty[r], by Tim Espy"
"My Tea's Steamy[r], by Ty Ames"
"My Tears Stray [']Em, Mr. Yates[r], by Ty Mears" []
"My Tears['] Mastery: Yes, Mart[r], by [if player is male]Trey Sam[else]Myra Tse[end if]" []
"My, the Methy Thyme[r], by Ty Ehm"
"My Toad, Mad Toy[r], by Tom Day & [d-t] May"
"My Trail to Mortality: Rail, My Tot[r], by [if player is male]Tim Taylor[else]Lori Myatt[end if]"
"My Water, Wry Mate[r], by Mary Tew"
"My World: Mold, Wry[r], by Myrl Dow"
"Myotic Comity[r], by Tim Coy"
"Mysterious Stories, Yum[r], by [if player is male]Timo Russey[else]Misty Rouse[end if]" []
"Nag or Groan[r], by [if player is male]Ron Gargano[else]Rona Grogan[end if]"
"Nag-Trick Tracking[r], by Rick Gant"
"Nah, Must Shut, Man[r], by Sam Hunt"
"Nah, Old Hand, Lo, Land Ho![r], by Dan Ohl-Haldon"
"Naifest Fansite[r], by Estifan Stefani"
"Nail Burt, Turn Bail: Urban Lit[r], by Art Lubin" []
"Name For One Farm Foreman[r], by Fran Moe"
"Name of No Fame[r], by Moe Fan"
"Nana Gege[r], by Anne Gage"
"Naptime's Aim Spent[r], by [if player is male]Tim Snape[else]Pam Stein[end if]"
"Narc to Contra, or Can't Co-rant[r], by Carton Atcorn"
"Narcolepsy-Only Capers[r], by [if player is male]Percy Sloan[else]Lacy Posner[end if]"
"Narcs or Rancors[r], by [if player is male]Son Carr[else]Ros Carn[end if]"
"Nastiest Sin-Taste[r], by Tina Tess"
"Nasty Day: a Dynasty[r], by Andy Tsay"
"Nat [']N Co Cannot[r], by Canton Conant"
"Nat Goes, Sean Got on Stage[r], by Geo Nast" []
"Natal-Point Plantation[r], by [if player is male]Alton Patin[else]Patti Nolan[end if]"
"Natatorium Maturation[r], by Tatia Munro & Amina Trout"
"Nate, Be Beaten[r], by Annetta Beebe"
"The Nation: A Thin Note[r], by Tito Henna"
"Nations['] Tide Instead Into Inane Dittos[r], by [if player is male]Denison Tait[else]Andie Sitton[end if]" []
"Natural Nut Lara[r], by Al, A Runt & Taran Lu" []
"Naturals Turn, Alas[r], by [if player is male]Raul[else]Lura[end if] Nast" [x]
"Nature's Saunter[r], by Ernst Au"
"Near East Nest Area[r], by Tana Rees"
"Near Erna[r], by Rene Aran"
"Near Mr. Mean[r], by Maren Erman"
"Near Old Leonard and Erol[r], by Don Lear" []
"Neat Big Beating: It Began[r], by Abi Gent" []
"Neat Irks a Stinker[r], by Risa Kent"
"Nebraska: Bask Near Bane's Ark[r], by Ken Baars"
"Necropolis Solo Prince[r], by [if player is male]Colin Soper[else]Loni Crespo[end if]"
"Nectared Decanter, Recanted[r], by Ted Crane"
"Ned, a Hip Pinhead[r], by Enid Hap"
"Ned's Lyric Cylinders[r], by Cris Lynde"
"Ned's Ma Amends[r], by Dede Massmann"
"Nedster Tenders Dr. Steen[r], by Dre Enst & Ed Stern"
"Needers Sneered, Seen Red[r], by Ned Rees & Sed Rene"
"Needler Del Erne[r], by Len Reed"
"Needles['] Lendees[r], by Les Eden"
"Needy Al Delaney[r], by Andy Lee"
"A Neg, Ange[r], by Gena Egan" []
"Nemo's Meson Omens[r], by Moses Menon"
"Neon Memo, Omen on Me[r], by Nemo Nome"
"Neorealistic Lectionaries[r], by [if player is male]Ernesto Cilia[else]Leticia Norse[end if]"
"Nepo? NOPE[r], by Pepe Noon"
"Nerd, Sow Downers[r], by Wes Dorn" [p]
"Nerd to Trend-o: Ed, Torn[r], by [if player is male]Trent Redondo[else]Donnette Dorr[end if]"
"Nerdage Rage, End[r], by Reg Dean & Ed Regan"
"Nerdier Naiad Air Den[r], by Nerida & Adrien Naderi" []
"Nerdy Bum: My Burden[r], by Ned Byrum"
"Nereid Denier[r], by Derien Indree"
"Nerf Ball: Barn Fell[r], by Fran Bell"
"Nero the Thereon Not Here[r], by Rhet Eno" []
"Nerve to Veer Not[r], by Rev. Teno Ventore"
"Nerviest? Reinvest[r], by Vi Ernest"
"Nervy? Fie, Very Fine[r], by [if player is male]Ervin Fey[else]Fern Ivey[end if]"
"Nesbit is Bent[r], by Ennis Tibbets"
"Net Meager Agreement[r], by [if player is male]Gene Marte[else]Garnet Mee[end if]"
"Nettin['] Intent[r], by Nitti Tennent"
"Neuralgia, Rule Again[r], by [if player is male]Reagan Liu[else]Angie Raul[end if]"
"Neurotics['] Nice Tours[r], by Si Cureton" []
"Nevan Ave.: Even a Van[r], by Evan Vane"
"Never to Rot, Even[r], by Trevone Everton" []
"New Aura, Unaware[r], by Erna Wau"
"New Coats: Scant Woe[r], by [if player is male]Ace Towns[else]Cat Owens[end if]"
"New Day Yawned[r], by Dwayne Dawney"
"New Goon Gone Now[r], by Gwen Ono & Noe Wong"
"New Ideas, Snide Awe[r], by [if player is male]Wade Nies[else]Edie Swan[end if]"
"New Job Now, Jeb[r], by Jon Web"
"New Kilts['] Twinkles[r], by Link West"
"New Labels Swell? Bane[r], by Belle Swan"
"New Li'l Beg: Well Being[r], by Ewing Bell"
"New Sod Endows No Dews[r], by Ed Snow"
"New Year: We Yearn[r], by Ewen Ray"
"Newbies Be Swine[r], by Ben Wise"
"Newborn Bronwen[r], by Bo Wrenn" []
"Newest Tweens[r], by Tweet Swensen"
"Newish Whines[r], by Wen Shi"
"Nice Boy Bein['] Coy[r], by Cobi Ney" []
"Nice, or JET: Rejection[r], by [if player is male]Jon Tierce[else]Jeri Conte[end if]"
"Nice Plan: Pinnacle[r], by Laci Penn"
"Nice Wart Can Write[r], by Traci New"
"Nicely, Lynice[r], by Cicely Linney"
"Nicely Slam Miscellany[r], by [if player is male]Lyman Celis[else]Elsy McLain[end if]"
"Nicer Song Censoring Rings Once, Cringes On[r], by Ren Scogin"
"Nicest Boy Obscenity[r], by Tyson Bice"
"A Night Nigh At Hating[r], by [if player is male]Ian High-Gantt[else]Gigi Thanh-Tan[end if]"
"Nightless Lightness[r], by St. English"
"Nil-Anger Learning[r], by Ira Glenn"
"Nine Loser One-Liners[r], by Lorie Senn" []
"Nine Sots['] Tensions is Tonnes[r], by Otis Senn"
"Nine Sound Innuendos[r], by Dion Nunes"
"Nine Sour Reunions: Ronni, Sue[r], by [if player is male]Rio Nunes[else]Sunni Roe[end if]"
"Nineties, Einstein[r], by Ines Tien"
"Nip, Scathe: Chest Pain[r], by [if player is male]Pat Schein[else]Steph Cain[end if]" []
"Nitsche's snitches[r], by Tess Chin"
"Nixed Ole Exile Don[r], by Lee Dixon"
"No Apology: A Nopology[r], by Paolo Yong"
"No Arid Inroad[r], by Dorian Ardoin"
"No Armies Remain So[r], by [if player is male]Simon Rea[else]Erin Amos[end if]"
"No Beads Based on Bad Ones[r], by Dan Bose"
"No Blade, Old Bean[r], by Don Beal"
"No, Blame One Lamb, Noble Ma[r], by Lon Beam"
"No-Blamers Snob Realm[r], by Lamberson Rosenbalm" []
"No Boat Ran on Oat Bran[r], by Anton Bora"
"No Boost to Noobs[r], by Bo Snoot"
"No Bread, Drab One[r], by Ben Roda"
"No Break, O Banker[r], by Rob Kane & Abner Ko"
"No Brief Bonfire of Brine[r], by Rob Fine"
"No Bright Thing, Bro[r], by Rob Night"
"No-Chores Schooner[r], by Rose Cohn"
"No City, TinyCo[r], by Nic Toy"
"No Dark or Dank[r], by Konrad Akdorn"
"No Depth the Pond[r], by Ned Hopt & Ted Phon"
"No Dreams or Amends as Modern[r], by Mad Soren Soderman"
"No Eclat to Clean[r], by Al Conte & Nat Cole"
"No Eighth High Note[r], by Theo Hing"
"No Email, I'm Alone[r], by Mae Olin"
"No Emir in Rome[r], by Normie Merino"
"No Fakers: Forsaken Foe Ranks[r], by [if player is male]Frank Seo[else]Fern Sako[end if]"
"No Fear of Near[r], by Reena Aronoff"
"No Fevers of Nerves[r], by Fern Vose"
"No Firmer Informer[r], by Fern Miro"
"No Flirt or Flint[r], by Lin Fort"
"No Forest Soon: Fret[r], by [if player is male]Enos Fort[else]Noe Frost[end if]"
"No Freaks Forsaken[r], by Kera Fons"
"No Fudge: Go Unfed[r], by Doug Fen"
"No, Gals: Slogan O['] Slang[r], by Sal Ngo" []
"No-Gamers Megarons[r], by Erma Song"
"No Giant Atoning[r], by Gino Tan"
"No Grit to Grin[r], by Ringo Torting"
"No Hair: Oh, I Ran[r], by Rina Ho-Hirano"
"No Kids So Kind[r], by Donski Dikson"
"No Lairds or Island[r], by Lois Rand"
"No Light, Long Hit[r], by Gil Thon"
"No Lower Role Now[r], by Rolo Wen"
"No Mail, Oilman[r], by Ol['] Mina Molina-Milano"
"No-Mess Mesons[r], by Ms. Enos Sensom"
"No Milk For Minor Folk[r], by Milo Fronk"
"No Mire or Mine[r], by Normie Remino" []
"No Mo['] Tripe, Minor Poet[r], by Tom Perino" []
"No More Romone Moreno[r], by Ron Moe" []
"No-Nest Sent-On Sonnet[r], by Tone N. Stenson"
"No Overt Veto, Ron[r], by Trevono Overton"
"No Party, Any Port[r], by Art Pyon"
"No Pier or Pine, Nor Pie[r], by Ron Pei-Perino"
"No Pierced Do Creep In[r], by [if player is male]Deon Price[else]Dori Pence[end if]"
"No Prep Nor Pep[r], by Pen Pro Ron Epp"
"No Price, Poncier/Porcine CEO in PR. Once: RIP[r], by Pro-Nice Peon Ric"
"No Red Drone[r], by DeRon Endor-Roden"
"No Rest, St. Oren[r], by Nestor Reston"
"No Rev is So Riven Over Sin[r], by Vin Rose"
"No Riven Environ[r], by [if player is male]Ron Vine[else]Erin Von[end if]"
"No Sea: Aeons as One[r], by Asase Noone"
"No Seamy Yeomans[r], by Amos Ney"
"No Seeds so Dense[r], by Sed Enos"
"No Shade Had Eons as Honed[r], by Deon Ash"
"No-Skore Snooker[r], by Ken Roos"
"No Smiles, Slim Ones: Lesson [']Im[r], by Neil Moss & Leon Sims"
"No Stag To Snag Tangos[r], by Gaston Gantos"[]
"No Stick in Stock[r], by Nik Cost"
"No Stoic's Coin Toss[r], by Scot Ison"
"No Story? Try Soon[r], by Ron Yost"
"No Taunts Unto Stan[r], by Ann Stout"
"No Trees or Teens: So, Enter to Sneer[r], by Ernesto O'Sterne" []
"No Trends, Snot-Nerd[r], by Don Ernst"
"No Tricks, Stink-Orc[r], by Nick Rost"
"No Tripe to Ripen[r], by Oren 'Tip' Petrino"
"No Turd Untrod[r], by Rotund Don Urt"
"No Variant to Nirvana[r], by [if player is male]Ravi Anton[else]Nina Tovar[end if]"
"No War: O, Warn[r], by Rowan Wrona"
"No Warts or Wants, Wan Sort[r], by Art Snow"
"No Water: Woe-Rant[r], by Art Owen"
"No, Words Drown So[r], by Rod Snow"
"Noble Mt. Belmont[r], by Ben Tolm"
"Noble Romp: No Problem[r], by Rob Pelmon"
"Noble Savage Gleans Above[r], by Vanesa Bogle & Geneva Sabol"
"Noblest Belton's[r], by Lon Best" []
"A Noblest Pup, Unstoppable[r], by Pablo Supnet"
"Nobody Will Woo Blindly[r], by Loyd Wilbon"
"Noel Hit the Lion[r], by Theo Lin" []
"Noel Sits So Silent[r], by [if player is male]Lon Estis[else]Tess Olin[end if]"
"Noemi's Monies[r], by Moises Menino"
"Noiry Irony[r], by Ron Yi"
"Noiseless Lionesses[r], by Lee Sisson & Sol Sinese"
"Nolette's Notelets[r], by Les Otten"
"Non-Science Innocences[r], by Ceci Sonnen"
"Nondescript Cretin's Pond (Second Print)[r], by Donn St. Price"
"None Cursed Uncensored, Senor Dunce[r], by Ned Crounes" []
"None Had One Hand[r], by Ned Noah"
"Noon and On and...No![r] by Ann Doon"
"Noon Glee Gala: Go Angle Alone[r], by Angelo Alonge"
"Noose Mogul Monologues[r], by Moose Luong"
"Nope, I Prep Pepperoni[r], by Irene Popp"
"Nope, Try Entropy[r], by Tyrone P. Poynter"
"Nor Last to Snarl[r], by [if player is male]Sol Tran[else]Ros Lant[end if]"
"A Normal Alarm On[r], by Al Moran"
"Norway, or YAWN[r], by Wynona Yarrow"
"A Nose on Sea[r], by Sean-O Eason" []
"Nose Pick: Sick? Nope![r] by Skip Cone"
"Nosey Days: an Odyssey[r], by Sonya Syed"
"Nosh, Nosh? Shh, No, Son[r], by Shon Sohn"
"A Nosy Assay On Yon[r], by Sonya Ayson" []
"Not a Dive to Invade[r], by Nita Dove"
"Not Awed, New Toad[r], by Tad Owen"
"Not-Clear Ol['] Trance[r], by Carleton Coltrane"
"Not Close to Clones[r], by Enos Colt"
"Not-Durable Roundtable[r], by [if player is male]Dale Burton[else]Tonda Luber[end if]"
"Not Real to Learn[r], by Leo Tran"
"Not-Sleek Skeleton[r], by Len Stoke"
"Not-Sludgy, Godly, Nuts[r], by Dusty Long"
"Not Sore or Stone[r], by Ron Seto"
"Not Under Round Ten[r], by Donn True"
"Not Up To Pun-Put-On[r], by Po['] Nut Punto-Upton"
"Not Used to Dunes[r], by Stu Oden & Ted Onus"
"Not-Wise Townies[r], by Otis Wen"
"Nota Bene: Beaten? No[r], by Bee Anton"
"Notarise, Notaries, in a Store[r], by Senorita Tina-Rose Restaino" []
"Note, Dear Ex: Exonerated[r], by Roxane Deet"
"Notice a Poor Cooperation[r], by Orion Capote"
"Novelty-Envy Lot[r], by Ty Loven"
"Novice Con, Vie[r], by [if player is male]Evon Vicencio[else]Vivienne Coco[end if]"
"Now Art's Tons Raw[r], by Stan Row" []
"Now I See, Wise One[r], by Wes Oien"
"Now I've No View[r], by Vi Owen"
"Nowhere's Sown Here[r], by [if player is male]Wes Horne[else]Wren Shoe[end if]"
"Nuge is Genius[r], by Su Inge"
"Number a Beam Run[r], by Mae Burn"
"Number Eight Regiment Hub[r], by [if player is male]Hubert Minge[else]Inge Humbert[end if]"
"Number Four Rumor, Be Fun[r], by Murf Bourne"
"Number Three Ember Hunter[r], by Rene Humbert"
"Number Two, Wrote Numb[r], by Burt Mowen"
"Nuts Ad-Jig Adjusting[r], by Judi Tsang"
"Nuts, Folk Lost Funk[r], by Flo Knust"
"A Nutty Tut? Nay[r], by Ty Tuan"
"O a Noble Boolean[r], by Al Boone"
"O, Bar a Bro[r], by Bob Arora"
"O, Chains in Chaos[r], by Achison Schiano"
"O Cheri, Heroic Coheir[r], by [if player is male]Eric Ho[else]Rei Cho[end if]"
"O Clashin['] Nicholas[r], by Loni Cash"
"O Clingy Cloying[r], by Gy Nicol"
"O Coyest Coyotes[r], by Scot Yeo"
"O Curse Course Sour, Coerce Us[r], by Reusser Cuoco"
"O Diva, Avoid[r], by Ava DoVidio"
"O, Do Rely, Ol['] Yoder[r], by [if player is male]Loyd Roe[else]Loo Dyer[end if]"
"O, Dozens Snoozed[r], by Zed Soon"
"O Farms of Mars[r], by Sam Roff-Ramos"
"O, Feelin['] One Life[r], by Leo Fine"
"O, First Ave. Favorites[r], by Avi Foster" []
"O Flames of Salem[r], by Mel Faso"
"O Fleets of Steel[r], by Stef Leo"
"O, Hustle the Soul, eh, Louts[r], by Lou Tesh" []
"O Kyle, Lo-Key Yokel![r] by Koye O'Kelly" []
"O, Liars Rail So[r], by Rosa Li" []
"O Mad Sin Domains[r], by Madison Simando"
"O, Modest Doom Set[r], by Ted Moos"
"O Mother, Herm Too?[r], by Moe Roth"
"O Palest Apostle: Peals to Stop Ale[r], by Sol Peat & Leo Past"
"O Pretty Pottery[r], by Trot Pye"
"O Random Doorman[r], by Mod Rona Morando"
"O, Rant on Art[r], by Toran Arnot"
"O Rebel, Rob Lee[r], by Ol['] Bree Loeber" []
"O, Rile Me, Moliere, Lie More[r], by Eli Mero & Milo Ree"
"O, Roary Arroyo[r], by Ray Rao"
"O, Sad Lug, Gas Loud[r], by Douglas Asgould" []
"O, Serpent Peterson[r], by Rene Post"
"O Shorn Honors[r], by Roshon Shnoor"
"O Sister! So I Rest: Rosiest Stories to Sires[r], by Tess Rio-Ossiter"
"O Such hocus[r], by Coco-Su Hush"
"O Travel! A Revolt[r], by Ole Trav & Art Love"
"O'Cameron's Moonraces[r], by Moe Carson"
"O'Hare, a Hero[r], by Rae Ho" []
"OakFest: To Fakes of Steak[r], by Fae Kost"
"Oakley, a Yokel[r], by Leo Kay"
"Obese Wry Eyebrows[r], by Wes Boyer"
"Obeying Biogeny[r], by Gino Bey"
"Obligant Bloating[r], by Inga Bolt & Tobi Lang"
"Observing Riven Bogs[r], by [if player is male]Rob Givens[else]Bev Signor[end if]"
"Obtain Boatin['], Bonita[r], by Nat Obi" []
"Obtrusive Virtue? Sob[r], by Bev Suitor"
"Odd Ben Bonded[r], by Bob Denne-Dodd"
"Odd Fret[r], by Ted Ford"
"Odd Game God Made[r], by Meg Doda"
"Odder Snug Underdogs[r], by Ed Grounds"
"Odes to DeSoto: Sed, Too[r], by Ted Soo" []
"Oeuvres['] Overuse[r], by Sour Eve"
"Of a Red Fedora: Do Fear[r], by Rod Fae"
"Of Despair Poised Far[r], by Pedro Asif"
"Of Drunk Dork Fun[r], by Rod Funk"
"Of Mr. Sad-From-Ads[r], by Sam Ford"
"Of Rules Fer Soul[r], by [if player is male]Les Rufo[else]Sue Rolf[end if]"
"Of Slain: So Final[r], by Flo Sian"
"Of So-Bold Slob Food[r], by Flo Bodos" []
"Of Theory or Thy Foe[r], by Roy Hoeft"
"Oft Thinner in the Front[r], by Efton Trinh"
"Ogle a TV: Voltage[r], by Lea Vogt"
"Oglin['] V. Loving[r], by Gil Von Long, IV" []
"An Ogre, Gorean[r], by Ag Reno" []
"Oh, Adage, Go Ahead[r], by Ed O'Haag"
"Oh, Attend Not Death[r], by [d-t] Neath" []
"Oh, Baby, a Hobby[r], by Bob Hay"
"Oh, Besty, the Boys, They Sob[r], by Toby Esh"
"Oh, Cancer or Chance, Encroach[r], by [if player is male]Ron Chace[else]Cora Chen[end if]-Cochrane"
"Oh, Darby, Hard Yob[r], by Brad Hoy"
"Oh, Drear Hoarder Dr. O'Hare[r], by Ro Heard"
"Oh, Gents Hog Tens: the Song[r], by Seth Ngo" []
"Oh, I Grunt Our Thing[r], by Gino Hurt"
"Oh, Inmates, In to Shame[r], by Thomasine Mathieson" []
"Oh, Man, Ham On[r], by Mahon Homan"
"Oh, Mentor the Moron[r], by Tom Horne & Nemo Roth"
"Oh, Mr. Wit-How-Trim: Trow Him[r], by Mi Worth"
"Oh, Newer Nowhere![r] by Ren Howe"
"Oh, Pander, Orphaned, Harped-On Hard Peon[r], by [if player is male]Pedro Han[else]Hope Rand[end if]"
"Oh, Pliant tho Plain Phat Lion[r], by Philaton Oliphant" []
"Oh, Raven or Haven[r], by Hera von Hanover"
"Oh, Realms: Sham Lore[r], by [if player is male]Leo Marsh[else]Rosa Helm[end if]"
"Oh, Rec Ochre, Roche[r], by Corree Hoch"
"Oh, Red Horde[r], by Herod Rhode"
"Oh, Scanty Tachyons[r], by Tony Cash" []
"Oh Silken Sinkhole[r], by Lise Kohn"
"Oh, Strut Truth So to Hurts[r], by Rush Ott-Strouth"
"Oh, Super Orpheus: He Pours Her Soup[r], by Rush Poe" []
"Oh, Swear a Shower[r], by Ash Rowe"
"Oh, Tears to Share[r], by [if player is male]Art Shoe[else]Rhea Ost[end if]"
"Oh, Truism Humorist[r], by Tomi Rush"
"Ohai Mr. Mohair[r], by Moriah Rohaim"
"Ohman's Hansom[r], by Mo Nash"
"Oho, Gents, the Goons: Gone, Shot[r], by Theo Song"
"Oi, Slam! I'm Also as Milo[r], by Amos Li"
"Oi, Snaps! Sonia P's Passion Pains So[r], by San Piso"[]
"Oil Baron: I Rob, Loan[r], by Nia Bloor"
"Oil Castle, Coal Islet[r], by [if player is male]Ollie Cast[else]Elli Coats[end if]"
"OK At the Hot Take[r], by [if player is male]Theo Tak[else]Kath Teo[end if]"
"OK Bein['] Ken: Bio[r], by Ben Oki"
"OK Fate to Fake[r], by Fae Kot"
"OK, I Bent: Bike Not[r], by Kit Bone"
"OK, I Scold Cool Kids[r], by Solo Dick Cid Sokol"
"An OK Koan[r], by Anna Kook"
"OK, Lame to Look at Me, Ol['] Tomeka[r], by Kam Toole"
"OK, Nerd Wes: Keen Sword[r], by Ken Dowers" []
"Okay, Burn Your Bank[r], by Bryan Kuo"
"Ol['] Ash-Pit Hospital[r], by Tisha Olp"
"Ol['] Bikes Like Bo's Obelisk[r], by Eli Kons"
"Ol['] Bore Bolero[r], by Rob Leo"
"Ol['] Dan Dolan[r], by [if player is male]Aldo Landon[else]Lona Donald[end if]"
"Ol['] Dr. Lord[r], by Doll Dorr"
"Ol['] Greta Got Real to Glare[r], by Reg Toal" []
"Ol['] Hater Hot Earl[r], by Lea Roth"
"Ol['] Ike's Like So[r], by Eli Kos"
"Ol['] Nat's Talons Last On[r], by Laslo Stanton"
"Ol['] Rants to Snarl[r], by [if player is male]Lon Rast[else]Ros Lant[end if]" []
"Ol['] Ryan Naylor an['] Lory Raylon[r], by Ron Lay"
"Ol['] Sin Loins[r], by Lilo Sisson"
"Ol['] Stash to Slash Hat Loss[r], by Sal Tosh"
"Old Ager Geraldo[r], by Rae Gold"
"Old Bees Bleed So[r], by Bledsoe Seebold"
"Old Bet Bled to be Told[r], by Deb Olt"
"Old Bones Bled Soon[r], by Leo Bonds"
"Old Cube Could Be Blue, Doc[r], by Bud Cole"
"Old Grey Dr. Goley[r], by Ed Glory"
"Old is New, Low Snide Wild Ones[r], by Eli Downs"
"Old Lady Odd Lyla[r], by Addy Oll"
"Old Magic, Mad Logic[r], by Mica Gold"
"Old Mate Lame [d-t][r], by Tom Dale"
"Old Meager Dear Golem[r], by [if player is male]Mo Arledge[else]Madge Roel[end if]"
"Old Nan Donlan[r], by Donnal Landon" []
"Old Narc, Lorn Cad[r], by Cal Dorn" []
"Old Perp Doppler[r], by Pop Erdl"
"Old Rae, a Real Doodler[r], by Eldora Laredo" []
"Old Truism Most Lurid[r], by Slim Tudor"
"Old West Lost Dew[r], by Ted Slow"
"Old-Years-Easy Lord[r], by Lady Rose"
"Olden Hat to Handle Then Load[r], by Dean Holt"
"An Older Real Don[r], by Neal Ord" []
"Ole Bilk? I'll Be OK[r], by Eli Kolb, Ike Boll & Li'l Kobe"
"Ole Bud's Bold Use Doubles[r], by Sol Dube"
"Ole Dad Doled a Loaded, Dead Ol['] Ad Lode[r], by Odd Lea" []
"Ole Gun Lounge, No Glue[r], by Leon Ug"
"Ole Site, See Toil So Elite[r], by Otis Lee"
"Ole Sky Yokels[r], by Kyoko Lessley"
"Ole Vin in Love[r], by [if player is male]Ev Olin[else]Vi Noel[end if]"
"Olga Tseng Gets Along[r], by Noel Stagg"
"Oligarchs['] Rash Logic[r], by Lora Gisch"
"Olympian Palimony[r], by Lamon Yip"
"Omar's Amors['] Roams[r], by Rasmo Ramos"
"On a Grim Roaming Moan-Rig[r], by [if player is male]Mario Ng[else]Ramiro Mignogna[end if]"
"On a Quiet Equation[r], by Teo Quain"
"On a Sober Sane Boor[r], by [if player is male]Bo Reason[else]Reba Soon[end if]"
"On a Trial, Rational[r], by [if player is male]Ira Alton[else]Iola Tran[end if]"
"On a Warm Man O['] War[r], by [if player is male]Wm. Aaron[else]Nora Maw[end if]"
"On Bets So Bent[r], by Bo Enst"
"On Boys So Bony[r], by St Boon"
"On Bums So Numb[r], by Bub Musso-Monn"
"On, Cadet, to Dance[r], by Ned Cato & Tad Cone"
"On Calicos So Laconic[r], by Laci Coons"
"On Deep Den, Open-Ended[r], by Ned Pedone"
"On Dreams Ransomed, Ma Drones[r], by [if player is male]Ned Ramos[else]Ros DeMan" []
"On Fears of Saner Far Eons[r], by [if player is male]Fran Ose[else]Rose Fan[end if]"
"On Fever of Nerve[r], by Vern Foe"
"On Fevers of Nerves[r], by Von Frees"
"On, Glad Old Nag, and Log[r], by Golda Langdon"
"On Juice I Jounce[r], by Joni Cue"
"On Late to Lean at Noel[r], by Ole Nat Leaton"
"On-Message Sage Omens[r], by Gena Moses"
"On, Micro-Moronic Room, Inc[r], by Ric Moon"
"On Nests [']N Stones: Notness Sonnets[r], by Stenson Stesnon"
"On, Rascal, to Root Canals[r], by [if player is male]Oscar Alton[else]Cora Lantos[end if]"
"On, Regaled Golden Era[r], by [if player is male]Leon Edgar[else]Eden Largo[end if]"
"On, Scary Crayons: Scorn, Ay[r], by Caryn So"
"On Selling Long Lines[r], by Lois Glenn Ellingson"
"On She Shone[r], by Shoe Henson"
"On Swell New LOLs[r], by Wes Noll"
"On the Ethno-Net, Ho[r], by Theo Henton"
"On-the-Ropes Phone Store[r], by Nestor Hope"
"On This Day a Tidy Nosh[r], by Dinah Yost"
"On to Rev. Overton[r], by Tor Evon" []
"On Us Mark Runs Amok[r], by Nora Musk"
"On Video I've Done One Dive in Devon[r], by Ovid Nee"
"On Views Sin Wove[r], by Vi Owens"
"On Whets the Snow[r], by Wes Noth" []
"On Worries Now Rosier[r], by Rori Snowe"
"Once is So Nice[r], by Sconie Enciso"
"One Art Near To Ornate[r], by Torean Renato, Atoner"
"One Bro's Sober? No[r], by Ben Roos"
"One Byte, Teen Boy[r], by Tony Bee & Ben Toye"
"One Dogma, Good Name[r], by Don Omega"
"One Dram and More Adorn Me[r], by Dan Rome" []
"One Dreamt to Meander[r], by Reed Toman"
"One Drum: Dour Men Mourned Round Me, Demur On[r], by Ed Munro" []
"One Flay a Felony: Yen, Foal[r], by Fay Noel"
"One Girl, Long Ire[r], by Goneril Olinger"
"One Glib Ol['] Binge[r], by Gil Bone" []
"One Gray Mage Yon[r], by Rae Yong"
"One Happy Pay Phone[r], by Pope Yahn" []
"One Hill Hellion[r], by Lionel H"
"One Ion Died: Neon Iodide[r], by Dione DeNio"
"One Jury's Journeys[r], by Ryu Jones"
"One Lardo's (Leonardo's) Lone Roads[r], by Rosa Eldon"
"One Leap on a Peel[r], by Pa Leone"
"One Mad Daemon[r], by Ned Mao" []
"One More Moon Ere[r], by Moe Reno"
"One Moth, the Moon, Not Home[r], by Monte Ho"
"One Neo-Eon[r], by Noe Eno"
"One of a Kind Faked Onion[r] by Nina De Fook"
"One Rabid Brain Ode[r], by Ida Boren" []
"One Rest to Sneer or Tense[r], by Ernesto Rosteen" []
"One Runt's Neutrons Rust Neon[r], by Nounster Uno Ernst"
"One Simp, Mo['] Spine: in Poems[r], by Enos Pim"
"One Throng Gone North[r], by Rog Henton"
"One Tip to Pine[r], by Pepine Totino"
"One Twit I Went To[r], by [tt] Wen"
"One Year or an Eye[r], by Rona Yee"
"One's Nose Seen Soon[r], by Enos Eson"
"One's Nose Soon Seen[r], by Noe Esson"
"Oneness [']N Nonsense[r], by Enos Senn"
"Onion Miasmas, Samoa Minions[r], by Simona Osmani" []
"Only Curb Nobly, Cur[r], by Luc Byron-Clybourn"
"Only Lyon[r], by Lonny Loy, Olly Nyon & Noly Olyn"
"Only Mind My Old Inn[r], by Lyn Dimon"
"Only Reds Nod Slyer[r], by Nerdy Sol Reynolds"
"Onward, Raw Don[r], by Rowan Downard" []
"Onyx Room Oxymoron[r], by Roxy Moon"
"Oof, Lost to Fools of Tools[r], by Sol Foot"
"Open Dream Promenade[r], by Pam Doeren"
"Open Soul, Loosen Up[r], by [if player is male]Enos Pulo[else]Lupe Soon[end if]"
"Openest Pete's on Step One[r], by Pots Nee"
"Ophelia's Hopes Ail[r], by Lois Heap"
"Opinionated Idea, No Point[r], by Antoine Diop"
"Options? No, I Stop Stoopin['][r], by Tio Pons"
"Or a Quest to Square, Equator's Quaestor[r], by Reo Quast"
"Or Bind No Bird[r], by Di Born-Brodin"
"Or Fast Arts of a Frost[r], by Taras Ostroff"
"Or Feign No Grief[r], by Erin Fog"[]
"Or Fifty Fortify[r], by Riff Tyo"
"Or Fleas for Sale[r], by Alf Rose" []
"Or Fry Us So Furry[r], by Rosy Urf"
"Or Gain a Groin[r], by [if player is male]Graig Noorani[else]Irina Gongora[end if]"
"Or Genes so Green? Go Sneer[r], by Reg Enos"
"Or I Yell O'Reilly[r], by [if player is male]Elroy Li[else]Lily Roe[end if]"
"Or I'm a Maori[r], by Mario Raimo" []
"Or Is Pops Piss Poor[r], by Pip Soros"
"Or Live Off Floor Five[r], by Lovie Roff"
"Or Many Mar Yon Romany[r], by Ron May"
"Or Merry My Error[r], by Remy Orr"
"Or Mild, Milord[r], by Rod Lim"
"Or Mince No Crime Mo['] Nicer[r], by Mei Corn"
"Or Old Dr. Loo[r], by Rollo Drood"
"Or Pablo, Pool-Bar Boor-Pal[r], by Rob Opal"
"Or Paint on a Trip[r], by Pat Rino"
"Or Sadden Road's End[r], by Dan Erdos"
"Or Sketch the Rocks: Her Stock[r], by Ros Ketch"
"Or Stake a Stroke[r], by Art Seko"
"Or Still I Stroll[r], by Tris Oll"
"Or Unbiased Boundaries Do Urbanise[r], by Sadie Bruno"
"Or Vice I Cover[r], by Cicero Vivero"
"Oracles: a Closer so clear![r] by Carl Ose"
"Oracles: Ten Clear Notes[r], by Alec Reston"
"Oral Mime Memorial[r], by Liam Rome" []
"Orchestra Carthorse[r], by Seth Carro"
"The Order Erred, Tho['][r], by Rod Ereth"
"The Order to Re-Herd[r], by Reed Roth" []
"Orderly, Dry Lore[r], by R. D. Royle"
"Ordinary Ironyard[r], by [if player is male]Roy Darin[else]Dori Ryan[end if]"
"Organist Roasting[r], by Art Goins" []
"Original Air Lingo[r], by [if player is male]Gino Rial[else]Lori Agin[end if]"
"Oriole: a Revival[r], by Valorie Olivera-LeVario"
"Orphanages, Heap Groans[r], by Porsha Egan & Sharon Page"
"Orzech's Scherzo[r], by Zo Resch"
"Other Beaus Hereabouts[r], by Sheba Toure"
"Other Side, Theorised: Hot Desire[r], by [if player is male]Tree Doshi[else]Edith Rose[end if]"
"Other Sun, Then Ours[r], by Sue North-Southern"
"Otis Held the Solid Old Heist[r], by Tish Dole"
"Otten's No Test[r], by Soto Stennett"
"Ottinger's Gritstone[r], by [toti] Gerst" [plural+12549]
"Ouch-Blues Clubhouse[r], by Lou Busche"
"Ouch, Man, Un-Macho[r], by Mo Chuan"
"Ould Ludo[r], by Lulu Dodo" []
"Our Anti-Rainout[r], by Ian Urto"
"Our Bard, Out: A Dour Turbo-Troubadour[r], by Arturo Bodu"
"Our Basic Caribous[r], by [if player is male]Rico Suba[else]Suri Coba[end if]"
"Our Basket Breaks Out[r], by [if player is male]Buster Kao[else]Rose Kubat[end if]" []
"Our Best to Rubes Obtuser[r], by [if player is male]Bo Reust[else]Sue Bort[end if]"
"Our Blest Troubles[r], by Uber-Lost Ol['] Buster"
"Our Blood, Loud Boor[r], by Rob O'Doul"
"Our Case: A Source or Cause[r], by Cora Sue"
"Our Clone's Counselor[r], by Rue Colson"
"Our Death, Authored, Heard Out[r], by Theo Radu"
"Our Fleshy Fury Holes[r], by Rush Foley"
"Our Ineptest Pretentious Pioneers, Tut[r], by Terise Upton"
"Our Islet: Outliers Loiter, Us[r], by Lou Reist"
"Our Lab Labour[r], by Bo & Raul LoBura"
"Our Man: a Mourn[r], by Rouman Namuro"
"Our Meg's Morgues[r], by Gus Rome"
"Our Milt, Trim Lou: Turmoil[r], by Mort Lui"
"Our Nat Turano Ran Out[r], by Art Nou"
"Our Nine Inure No Reunion[r], by Nino Ure"
"Our Poets: Poseur to Too Super[r], by Rupe Soto"
"Our Stuff: Surf, Tofu[r], by Stu Ruffo"
"Our Sweat Wears Out[r], by Esau Trow"
"Our Times Suit More Moisture[r], by Sue Mitro & Tim Rouse"
"Oust-Outs Sous Tout[r], by Stu Souto"
"Out, Crimson Consortium[r], by Curtis Moon" []
"Out-Dirge Us, Tour Guides[r], by Doug Uresti"
"Out, Resister: True Stories[r], by Rosie Sutter & Ressie Trout"
"Outbid? I Doubt[r], by Bud Ito"
"Outer Ways: a Rusty Woe[r], by Esau Towry"
"Outing Real Regulation: Nil Outrage[r], by [if player is male]Louie Grant[else]Rina Goulet[end if]"
"Outlander Daunt-Lore[r], by Neal Tudor"
"Outlive No Evolution[r], by Louie Vont"
"Outreach, a Retouch[r], by Ute Rocha"
"The Ovals Have Lost[r], by [if player is male]Sol Vaeth[else]Tosha Lev[end if]"
"Ovations to So Vain[r], by Otis Nova"
"Overbearing Baron, Grieve[r], by Verona Grieb & Iva Bergeron"
"Overbearing Brave Regino[r], by [if player is male]Ringo Beaver[else]Vernia Borge[end if]" []
"Overdoing, Good-Riven Donor, Give[r], by [if player is male]Gino Dover & Evon Girod[else]Dion Grove[end if]"
"Overdoing Goon-Drive[r], by Dino Grove" []
"Overgay Voyager[r], by Eva Groy"
"Overpassed Eavesdrops[r], by [if player is male]Dave Speros[else]Dove Spears[end if]"
"Overseas Rose Vase: So Averse[r], by Eero Vass"
"Overt Id: to Drive, Trod, Vie[r], by Red Voit & Tod Iver"
"Overt Op: Vote Pro to Prove, Poor Vet[r], by Rev. Toop"
"Ow, Years So Weary: Ay, Worse[r], by [if player is male]O. Sawyer[else]Rose Way[end if]"
"An Owl on Law[r], by Nan Woo-Wall"
"Own It to Win[r], by [toti] Witnow"
"Ox Burden Under Box[r], by Bud Rexon"
"Ox's Real Ax Lores[r], by Rex Sola"
"Oxygen is Sexy! Go in[r], by Onyx Geis"
"Oysterman Monastery[r], by [if player is male]Myron East[else]Amy Nestor[end if]"
"Ozone's Snooze[r], by Zoe Nos"
"Pa Burke's Breakups[r], by Kap Suber"
"Pa, Lump a Plump Palm Up[r], by Lu Mapp"
"Pa's Buck Backs Up[r], by Cap Busk"
"A Pacecar Carapace[r], by Ace Capra"
"The Pack Pet Hack[r], by Pat Heck"
"Pagan Hero Orphanage[r], by Hope Ragan"
"Pah, Melt the Lamp, Peltham[r], by [if player is male]Pat Helm[else]Pam Leth[end if]"
"Pain, a Hope: Apophenia[r], by Pip O'Haane"
"Painer Napier[r], by [if player is male]Ren Pai[else]Arianne Piper[end if]"
"Pains Aspin[r], by Papa Inniss"
"Pains or a Prison[r], by Ron Pais"
"Painted Nitepad[r], by Tad Pine"
"Painterly Interplay[r], by [if player is male]Tyler Pina[else]Lyna Petri[end if]" []
"Pal, Nice Pelican[r], by Cap'n Eli"
"Pal of a Flop[r], by Lala Popoff"
"Pal, to a Plot[r], by Ol['] Pat Plato"
"Pal to Apt Ol['] Plato[r], by Paolo Platt" []
"Pale Enos, Asleep on Lone Apse[r], by [if player is male]Lee Spano[else]Opal Nees[end if]"
"The Pale Heaplet[r], by Pete Ahl"
"Pale Lace: Peace, All[r], by Lea Capel"
"Pale Ms. Plame's[r], by Pam Les" []
"Pale Sedan Esplanade[r], by Adele Snap"
"Palermo's Pleromas[r], by [if player is male]Amos Perl[else]Rose Lamp[end if]"
"Palominos['] Pains Loom[r], by Opal Simon"
"Pals Once, Clean Sop[r], by Len Pasco"
"Pam is a Simp[r], by Masii Mapps"
"Panic at a Tin Cap[r], by Pat Cain"[]
"Pantomime, Mint a Poem[r], by [if player is male]Tommie Pan[else]Emma Ponti[end if]"
"Paradigms: a Dim Grasp[r], by Dr. Pam Agis"
"Paradiso Diaspora[r], by [if player is male]Rod Sapia[else]Pia Roads[end if]"
"Paragon or Pagan[r], by Rao Pang"
"Parallel Real Pall: All Paler[r], by Lara Pell"
"Paramedic Drama Epic[r], by [if player is male]Adam Price[else]Demi Capra[end if]"
"Pardon a Pandora[r], by Rand Pao"
"Pardon, Padron[r], by Don Arp & Rod Pan"
"Pareto: Top Era to Reap[r], by Tera Po"
"Parliaments['] Paternalism[r], by Pamela Stirn & Trina Sample"
"Parole of Poor Flea[r], by Flora Poe"
"Parsable Parables[r], by Sara Belp"
"Particular Culprit Ara[r], by Lupita Carr & Clara Pruit"
"Party On, Pray Not[r], by Ray Pont" []
"Pascal's AP Class[r], by Al P. Cass"
"Passion Pains So[r], by Nia Poss"[]
"Passive Saps Vie[r], by Si Vespa"
"Past, Blithe Battleship[r], by [if player is male]Alph Bettis[else]Shelba Pitt[end if]"
"Past Dorks['] Dark Spots[r], by Dot Sparks"
"Past Some Peat Moss[r], by Pat Moses"
"Pasticheur Curateship[r], by [if player is male]Erich Staup[else]Patrice Suh[end if]"
"Pater's Repast[r], by Petra S. Sprate" []
"Patience, Inept Ace[r], by Pete Cain"
"Patients['] Neat Tips[r], by [if player is male]Stan Piet[else]Pat Stein[end if]"
"Patriarch's Chair-Traps[r], by Traci Sharp"
"Patroness, Transpose Not Spares[r], by [if player is male]Ron Spates[else]Pat Rossen[end if]"
"Patronymic Importancy[r], by [if player is male]Cory Pitman[else]Marcy Pinto[end if]"
"Patty is a Typist[r], by Tip Tsay"
"Paulsen's Sun Leaps[r], by Su Naples"
"The Pause Up a Sheet[r], by Pete Haus"
"The Pawn's New Paths[r], by Stew Phan"
"Pay Extra, Taxpayer[r], by Expat Ray"
"Pay Price? Yep, I Carp[r], by Pip Carey"
"Peace's Escape[r], by E. P. Case"
"Pearson's Personas[r], by Ross Pena"
"Pedestrian Pedantries[r], by [if player is male]Peter Dains[else]Trina Speed[end if]"
"Pedro Was So Warped[r], by Wes Pardo"
"Peerson's Response[r], by Ros Espen"
"Peg, Henrietta: Teenager Pith, Part Eighteen[r], by Pattie Hegner"
"Peg Sou Goes Up[r], by Gus Poe"
"Peirson's Ropiness[r], by Si Posner & Ron Spies"
"Penny is Spy Nine[r], by Nips Ney"
"Penobscot Bent Coops[r], by Ponce Bost"
"Penthouse Unto Sheep[r], by Pete Huson"
"Peoples Lose Pep[r], by [if player is male]Les Pope[else]Else Opp[end if]" []
"Pep Rally LP Player[r], by Lyle Rapp"
"Pereida's Airspeed[r], by [if player is male]Sid Perea[else]Dee Paris[end if]"
"Peril Colt: Epic Troll[r], by Ric Pellot"
"Perkiest Tree, Skip[r], by [if player is male]Kip Ester[else]Kit Peers[end if]"
"Perp at a Parapet[r], by Art Pape"
"Perp Mo['], Mr. Pope[r], by Em Ropp"
"Perreault Prelature[r], by [if player is male]Raul Peter[else]Lupe Terra[end if]"
"A Person As Prone[r], by 'Pa' Soren Pearson"
"Personalistic Pictorialness[r], by Cristina Lopes & Priscila Stone"
"Persons, Press On[r], by Ross Pen"
"Perspire, Spree, RIP[r], by Pip Reser"
"A Pert Pater[r], by Tara Tepper"
"Pest Increase: a Persistence[r], by Serita Spence"
"A Pestled Deep-Salt Pedestal[r], by Pat Leeds"
"Pet, Bury Puberty[r], by Burt Pye"
"Pet Rants, Pen-Start Patterns[r], by Pat Ernst"
"Pete's Steep Pests Tepee[r], by Sepp Testee"
"Peter Klein's Serpentlike[r], by Lester Kneip"
"Petrie's Pestier Respite[r], by Sir Pete" []
"Pets O['] Poets, Oppose Test[r], by Pete Stoops"
"PFC Tree, Perfect Prefect[r], by F. T. Creep"
"Phat Spree: the Papers[r], by Pepe Harst"
"Pheasant, Antheaps, Heat Snap[r], by Pat Shane"
"Phoebe's Bee Shop[r], by Bo Sheep-Hospebe"
"Phonies['] Hopes in One Ship[r], by Shon Pei"
"Pia Strode to Despair or Aid Pets[r], by Astrid Poe & [tt] Presad"
"Piacente's Patiences Patencies[r], by Tisa Pence"
"Pick Art, Patrick[r], by Kip Cart & Art Pick"
"Pictorialised Perioidcalist Tilda Respicio[r], by Cristi DePaoli"
"A Piece of a Foe, Epic[r], by Opie Face"
"A Pig Man's Paganism[r], by [if player is male]Pa Sigman[else]Pam Gains[end if]"
"Pigs and Spading[r], by Pa Dings"
"Pigs Need Speeding[r], by Peg Snide"
"Pilgrims' Grim Lips[r], by Lis Grimp"
"The Pill-Hell Pit[r], by Pet Hill"
"Pills for Ill Profs[r], by Flor Lips"
"The Pills Help List[r], by Phil Elst"
"Pimp-Erased Pipe Dreams[r], by Amee Dripps"
"Pine Condo on Ice Pond[r], by Dion Ponce"
"Pine Desk, Skin Deep[r], by Ned Pikes & Kip Sneed"
"Pine Grove Viper: Gone[r], by Neve Pirog"
"Pinhead's Deanship Phased In[r], by Enid Hasp"
"Pinheads Had Spine[r], by Desi Phan" []
"Pink Chum Chipmunk[r], by Kip Munch"
"Pink House: Up, Son, Hike[r], by Sophie Kun"
"Pious, I Cuss, Suspicious[r], by Susi Pocius"
"Pip Chase's Space Ship[r], by Sia Schepp"
"A Pitcher's Trips, Each: This Recap[r], by [if player is male]Chet Paris[else]Trish Pace[end if]"
"The Pity-Hit Type[r], by Hye Pitt"
"Placated Cadet Pal, Tape-Clad[r], by Tad Capel"
"Plain Blade, and Pliable: a Bland Pile[r], by [if player is male]Ben Padilla[else]Belinda Pal[end if]"
"Plain Mature Lame Puritan Manipulater[r], by Ariel Putnam" []
"Plain Shorty Sharply Into Rhinoplasty[r], by [if player is male][else]Paris Hylton[end if]"
"A Plainer Airplane[r], by Nia Pearl"	100
"The Planet Lept Neath[r], by Ethan Pelt"
"A Planet's Pleasant[r], by [if player is male]Pat Ansel[else]Stan Leap[end if]"
"The Plank Hank Lept[r], by Ken Plath"
"Plateaus Pale at Us[r], by Paul East"
"Play into Pony Tail[r], by Opal Tiny"
"A Played Leap-Day Pay Deal[r], by Ada Pyle"
"The Player's Hyper Tales[r], by Tyler Heaps"
"Pleas Come Someplace[r], by Mel Pascoe"
"Please No Leap-Eons[r], by Enos Apel" []
"Plenty Semi-Empty Lines[r], by Tiny Semple"
"Pliant Etch: That Pencil Can't Help It[r], by [if player is male]Chet Taplin[else]Chanel Pitt[end if]"
"Plied, Piled[r], by Dillie Depp"
"Plot Idea: I, Tadpole, Dial Poet[r], by [if player is male]Pat DeLio[else]Tilda Poe[end if]"
"Plug This Up, Slight Pith-Slug[r], by Phil Guts"
"Plus-Age Plagues[r], by Gus Apel"
"Ply Ma Amply, My Pal[r], by Al Pym"
"A Po['] Dry Parody[r], by Rod Yap"
"Po['] Pale Aleppo[r], by Al Pope"
"Poem Sty So Empty: Mo['] Types[r], by Tom Espy"
"Poet, Ask to Speak[r], by Pat Seko"
"Poet, Rudely Type Louder[r], by Pedro Tuley"
"A Poet's Po['] Eats[r], by Pat Ose"
"Poetaster Operettas[r], by [if player is male]Peter Sato[else]Pat Rosete[end if]"
"Poetics, Eco-Tips[r], by Scot Pei"
"Point Late Leapt Into[r], by Patti Leno"[]
"Poke at Topeka[r], by Kat Poe"
"Pokemons Mo['] Spoken Spook Men[r], by Sem Konop"
"Polished Olde Ship[r], by Dolph Eis & Sid Poehl"
"Politer Ol['] Tripe[r], by Eli Port"
"Polka Boy Playbook[r], by Kyla Boop"
"Pompey, My Pope[r], by Mo Yepp"
"The Pool's Lost Hope[r], by Loo Speth"
"Poor Spine's Oppression[r], by Pepi Rosson"
"The Poor Troop, Eh[r], by Thor Poe"
"Pop Thee The Pope, Hep Poet[r], by [if player is male]Theo Epp[else]Pet Hope[end if]"
"Pop's Oral Proposal: Spar-Pool[r], by Pal Spoor"
"The Pope's Hot Peeps[r], by Theo Epps & Pepe Tosh"
"Populist to Pupils: Up, Spoilt![r] by Otis Pulp"
"Porcelain Pelican or Replica? NO[r], by [if player is male]Leon Capri[else]Clare Pino[end if]"
"Porcelain[r], by [if player is male]Colin Earp[else]Roni Capel[end if]"
"Porn? I'd Drop In[r], by Dr. Pion"
"Porn With Winthrop[r], by H. P. Ortwin"
"Portable Pet Labor[r], by Albert Po"
"Portage: Great Op[r], by [if player is male]Pat Gore[else]Peg Taro[end if]"
"Portrayed Predatory[r], by Perry Toad"
"Portugal's Sugar Plot[r], by Proust Gal Opal Gurst"
"Poseidon is No Dope[r], by Odo Ipsen"
"Poser Court Prosecutor[r], by Sue Proctor"
"Posh Tim's Mosh Pits[r], by Toph Sims"
"Posin['] to Stoop in: Options[r], by Otis Pon" []
"The Posse Ops Sheet[r], by Tess Hope"
"Possible Sob-Spiel[r], by Bliss Poe"
"A Post So Apt[r], by Papa Stoots & Pat Sposato"
"Postured Proudest[r], by Ed Proust"
"Potemkin Poem Knit, Token Imp[r], by Kip Monet"
"Potential: Inept a Lot[r], by Tia Pelton" []
"Pottery, Ink, Kryptonite[r], by [if player is male]Tony Petrik[else]Kit Poynter[end if]"
"POTUS Pouts[r], by Su Top" []
"Pound Lies, Unspoiled[r], by Deon Pulis"
"Pow, Li'l Pillow[r], by Will Po"
"Praetorian Reparation[r], by [if player is male]Aaron Pitre[else]Tara Perino[end if]"
"A Pre-Term Tamperer[r], by Pat Ermer"
"Predate, Adepter[r], by Pat Reed"
"Predated, Departed[r], by [if player is male]Ted Parde[else]Peta Redd[end if]" []
"Predators['] Teardrops[r], by [if player is male]Pedro Star[else]Dora Prest[end if]"
"Predictable Credible Pat[r], by Delbert Paci & Bert Placide" []
"Predictions, Description[r], by Cristie Pond & Ted Crispino"
"Prehistorical Retrophiliacs[r], by [if player is male]Ali Cristopher[else]Paris Clothier[end if]"
"Prenatal, Parental, Paternal[r], by Pearl Tan"
"Pressing Prigness[r], by E. Springs"
"Previously Evil, Our Spy[r], by Yoel Purvis"
"Price, Bad Epic Bard[r], by Deb Capri"
"The Price-Creep Hit[r], by Peter Chi"
"The Price's Three Pics[r], by Chet Piers"
"A Pricy Piracy: I Cry, Pa![r], by Pia Cyr"
"Pride as a Paradise[r], by Sid Parea"[]
"Pride Into Perdition[r], by [d-t] Perini" []
"Pride, Pried: I'd Rep[r], by Deidre Ripp"
"A Pride, Repaid[r], by Dr. Pia Pereida"
"Priestly Sly Tripe[r], by Ty Perlis"
"Prim Days Amid Spry Pyramids[r], by [if player is male]Sid Rampy[else]Sam Pirdy[end if]"
"Prim Eva, Vampire[r], by Ravi Pem, Vera Pim & Pam Evri"
"Print-Game Tampering[r], by Petra Ming"
"Priority: I Rip Troy[r], by Torri Yip"
"Probation's Absorption[r], by [if player is male]Pat Robison[else]Iona Probst[end if]"
"A Problem Re: Aplomb[r], by Rob Maple"
"Problemist [if player is male]Mr. Tip Boles[else]Ms. Tobi Perl[end if]: Tomb's Peril[r], by Bo Strimple & Emil Probst"
"The Process: Psst, Cohere[r], by [if player is male]Seth Crespo[else]Rose Specht[end if]"
"Prodigal Gold Pair[r], by Gil Prado"
"Prodigals['] Rapid Slog[r], by Paris Gold"
"A Profounder, Profane Dour Proof, Unread[r], by [if player is male]Pedro Funaro[else]Prue Foronda[end if]"
"Profoundest Spoofed Runt[r], by Pedro Fuston"
"Progeny Gone? Pry[r], by Rep. Yong"
"Prole Loper[r], by Errol Oppel"
"Prologise, Peligroso[r], by Giles Poor"
"Prologues: Our Gospel[r], by [if player is male]Gus Looper[else]Lu Gorospe[end if]"
"Promise Land Palindromes: Random Piles[r], by [if player is male]Paris LeMond[else]Milda Posner[end if]"
"A Proper Prepar-o-Paper or Rare Opp[r], by Rae Orpp"
"Propitiousness: Super Positions[r], by Pontius Poressi"
"Propose, Opposer[r], by Pops Roe"
"Prospero's Oppressor Proposers[r], by Ross Opper"
"Protein: One Trip[r], by Pierpont Ireton" []
"Prototypes Pretty Oops[r], by Petty Spoor"
"Proudest Dust Rope[r], by Super [d-t]" []
"Prude, I Tut Turpitude[r], by Rudie Putt"
"Prudence is Due, Princes, Ripe Dunces[r], by Enid Spruce"
"A Pry, Epic: Pay Price, Icy Paper[r], by Pip Carey" []
"A PSA ASAP [r], by Asa Papas"
"Psychic to Psychotic[r], by Coy Pitsch"
"Psycho Ails So Physical[r], by Phyliss Cao"
"The Public Belch I Put[r], by Butch Pile"
"Pukin['] Up Ink[r], by Niiku Knupp" []
"Punctilio: I Pin Clout[r], by Luci Pinto" []
"A Puniest Petunia's Inapt Use[r], by Una Stipe"
"The Punk: Nth Puke[r], by [if player is male]Kent Phu[else]Pet Kuhn[end if]"
"Pure Cats Act Super[r], by Curt Pesa"
"Pure Class Plus Cares[r], by Russ Capel"
"Pure Skit, Strike Up[r], by Kip Suter"
"Purest Alive Superlative[r], by [if player is male]Paul Sievert[else]Lupita Evers[end if]"
"Purest Uprest Erupts[r], by Ruppe Russett"
"Puritans['] Rasputin: Rust, Pain[r], by Pia Sturn"
"A Purplish Rash Pupil[r], by Lura Shipp"
"A Purpose: Pure Soap[r], by Pop Sauer"
"Pushcart Path Curs['] Scrap Hut[r], by Curt Pash"
"A Quaint Aqua Tin[r], by Taniqua Quitana"
"Quarterlies: Squarer Tile, Quirt Resale[r], by Raquel Reist"
"Quatloos, Lo, Quotas[r], by Loo Quast"
"Questionable Tequila Bones[r], by Lenita Bosque"
"Rabbi Ran In[r], by Brian Inbar-Rabin" []
"Rachel's Larches[r], by Sal Cher" []
"Racicot's Acrostic[r], by Art Cisco"
"Rad Foil, Far Idol: Do Flair[r], by Dr. Fiola Florida" []
"Rad Glib Bad Girl[r], by Gil Bard"
"Rad Hate: a Thread[r], by Ed Haart"
"Rad Slang Garlands[r], by Sal Grand"
"Rad Waste Eastward[r], by [if player is male]Wade Star[else]Dara West[end if]"
"Radio's So Arid[r], by Sid Ora" []
"Radtke's Darkest Ad Treks[r], by Ed Stark"
"Rag of Fargo[r], by Rog Gaff-Orr"
"Rageless Largesse[r], by Sal Seger"
"Raggeder Doodad[r], by Edgardo Odegard"
"Ragin['], I Rang[r], by Ingar Garin"
"A Ragin['] Niagra[r], by Rai Nga"
"A Ragman's Anagrams[r], by Sam Ragan"
"Ragmen, Manger[r], by German Engram-Magner" []
"Ragweed Edge War Age Drew[r], by [if player is male]Ed Wager[else]Dee Graw[end if]"
"Rah, Men[r], by Herman Hamner"
"Rah Rah Toot[r], by Thora Roath"
"The Raid: ah, Tired, a Dither[r], by Di Harte"
"Rail Fest Art Files[r], by Rita Self"
"Rail on or Nail no Liar[r], by Lorina Nailor"
"Railbus Burials[r], by [if player is male]Sal Rubi[else]Su Blair[end if]"
"Rain, Go: I Groan or Gain[r], by Irina Gongora"
"The Rain in Earth Hit Near[r], by Teri Han"
"Rallying Any Grill[r], by [if player is male]Ryan Gill[else]Lyla Ring[end if]"
"Ramble On? Be Normal[r], by Mel Baron"
"The Rams[r], by Mrs. Thea Mathers-Amherst"
"Ran Due Under a Rune-Ad[r], by Unread Andreu Renaud"
"The Ranch: Her Chant[r], by Ren Hatch"
"Rancid Ol['] Clorinda[r], by Conrad Li" []
"A Random No-Drama Roadman[r], by Dan Mora"
"Rank Ode, Dark One[r], by [if player is male]Rod Kane[else]Nedra Ko[end if]"
"Ransomed Roadsmen[r], by Ned Ramos-Soderman" []
"Rant? Buy! Try a Bun[r], by Brant Yu"
"Rant Hill: in Thrall[r], by Lin Hartl"
"Rant of No Raft to Fran, For Nat[r], by Fat Ron Anfort"
"Rant Some, Smear Not a Monster[r], by Stan More" []
"Rants to Start on[r], by Nat Orst"	100
"Rap, a Pizza, Paparazzi[r], by Ariza Zapp"
"Rap Hits: This Part[r], by Pat Rish"
"Rapidest it Spread, Traipsed[r], by [if player is male]Ted Paris[else]Pat Edris[end if]" []
"Rarish, Sirrah![r], by Sharri Harris"
"Rash Diet? Read This[r], by Sid Harte"
"Rash Met, Hamster[r], by Mathers Amherst"
"Rasp True, Pasturer Raptures[r], by Super Art Perraust" []
"Rate No Ornate Neo-Art[r], by Tarone Antero" []
"Ratings Staring[r], by Si Grant"[]
"Rationing an['] Rioting: I, Ignorant[r], by Gino Tarin"
"Rave on, Verona[r], by Erna Vo"
"Ravelling Graven Ill[r], by Glen Rival"
"Ravines as Riven[r], by Irv Sena"
"Raw Hot Art: HOW or WHAT[r], by Thora W. Horwat"
"Raw-Led Dweller Award[r], by Lew Ard-Wardle"
"Raw Lie Wailer[r], by Al Weir"
"Raw Tel, Warlet[r], by Walter Wartle"
"Ray Knew Wankery[r], by Ken Wray"
"Re-Aim, Marie[r], by [if player is male]Maia Riemer[else]Amari Meier[end if]"
"Re-Blessing Inselbergs: Green Bliss[r], by Bern Lessig"
"Re-Bowl, Low Reb[r], by Rob Lew"
"Re-Fit, I Fret Fer It[r], by Effi Ritter"
"Re-Inspect, Prescient[r], by Eric Spent" []
"Re-Live, Eviler[r], by Liv Ree"
"Re-oiling Religion[r], by [if player is male]Eli Ringo[else]Lori Egin[end if]"
"Re: Opts or Pets So Pert[r], by Roeper Spotts & Pops Troester"
"Re-Read, Reader[r], by Deedra Errera"
"Re-Say, Years-Sayer[r], by Seyra Ayers"
"Re-Scald, Cradles[r], by Les Card"
"Reach Not, Nor Teach the Acorn[r], by Ace North"
"Reach Out: a Re-Touch[r], by Horace Tu"
"Reactionary Erotica Yarn[r], by [if player is male]Corey Traina[else]Carrie Tyrone[end if]"
"Reactionist Recitations[r], by Cristi Eaton" []
"Read My Arm Dye[r], by Red Amy"
"Readmit Mad Rite: Dream It![r], by Tad Mier"
"The Real Leather Tarheel[r], by Lee Rath"
"Real Men Leer, Man[r], by Marlene Ermalen"
"Real Odd Old Dear[r], by Rod Dale" []
"Real POS Paroles[r], by Sol Earp" []
"Real-World Lore-Drawl[r], by Rod Lawler" []
"Realistic Clarities[r], by Lisa Trice" []
"Reality TV: Vile, Tarty[r], by Vita Tyler"
"Reap Sad Parades: a Spread, Dear Sap[r], by Des Paar" []
"Reared Dearer[r], by Deedra Errera"
"Rearing a Ringer, Angrier[r], by Gerrina Garnier" []
"Reasons Snare So[r], by Ren Sosa" []
"Reaving Vinegar[r], by Vi Regan-Avinger"
"Reba's BS Era[r], by Sabra Beers"
"Rebel-Mass Assembler[r], by [if player is male]Elmer Bass[else]Sam Belser[end if]"
"Rebuilt it Bluer[r], by Bret Lui & Lu Trieb"
"Recension, Ninescore[r], by Corie Senn"
"Recharge Her Grace[r], by Cher Ager"
"Reclaim One Ceremonial Anemic Role[r], by [if player is male]Eric Malone[else]Erma Nicole[end if]"
"Reconsign Censoring[r], by Signe Corn" []
"Record it, Director[r], by Rod Trice"
"Recount No Truce, Curt One[r], by True Con Cureton" []
"Rectoress Crosstree[r], by Ross Crete"
"Red Bag Garbed[r], by Dr. Gabe Gadber"
"Red Bank Ark-Bend[r], by Ken Bard"
"Red-Barn Bernard Brander[r], by Ned Barr"
"Red Beans and Beers[r], by Ed Barnes"
"Red Button: Rotten Bud[r], by Don Butter"
"Red Fuel, Rude Elf[r], by Fred Lue"
"Red Hen: Her End[r], by Ed Hern"
"Red Hotel: The Older Doth Leer Here, Dolt[r], by Ted Roehl"
"Red Law, War-Led[r], by Al Drew-Wardle" []
"Red Line El Diner[r], by [if player is male]Len Reid[else]Erin Eld[end if]" []
"Red Mike, Mere Kid[r], by Kim Erde"
"Red Snow Wonders[r], by Wes Dorn" []
"Red Tex Dexter[r], by Ted Rex"
"Red Toys Destroy Oyster D[r], by Ty Erdos"	40 []
"Red's Love, Resolved[r], by [if player is male]Sol Dever & Les Dover[else]Eve Lords[end if]"
"Redneck Dr. Encke[r], by Ed Renck"
"Redo Nowt: Door Went to Wonder[r], by [d-t] Rowen, Drew Toon & Don Tower"
"Redo Pains: No Despair[r], by [if player is male]Deon Paris[else]Ines Prado[end if]"
"Redo Thy Try, Eh, Do[r], by Dorthey Doherty" []
"Redwood Word Ode[r], by Reo Dowd"
"Regal Knots: Long Streak[r], by [if player is male]Grant Kelso[else]Karol Tseng[end if]"
"Regarding Regrading[r], by [if player is male]Greg Darin[else]Ginger Ard[end if]"
"Reggio's Gorge is Soggier[r], by Og Gries"
"Reggio's Sore Gig[r], by Og Greis" []
"Regisseur Surgeries[r], by [if player is male]Russ Eiger[else]Su Greiser[end if]"
"A Regret Greater[r], by Art Gere-Traeger"
"Rehab Not the Baron[r], by [if player is male]Bart Hoen[else]Bea North[end if]" []
"Reheat the Ear Hereat[r], by Arethe Ethera"
"Rei Riddell, Riled Idler[r], by Deril Riedl"
"Reignship Perishing[r], by Sheri Ping"
"Rein Inner Ire[r], by Erin Neri" []
"A Relent Eternal[r], by Art Neel"
"Relisted, Let's Ride[r], by [if player is male]Ted Riles[else]Lis Deter[end if]"
"Relit by Liberty![r] by Teri Bly"
"Rely on Ol['] Ryne[r], by Ron Ley & Lon Rey"
"Remain a Miner[r], by Marnie Manier" []
"Remains of Famines or Fair Omens[r], by [if player is male]Simon Fear[else]Mona Fries[end if]"
"Remanded [d-word-u]eder[r], by Ned Mader"
"Remit an Art Mine[r], by Martine Tremain" []
"Remit Merit[r], by Terri Immet"
"Remorse So Merer[r], by Esme Orr" []
"Remorseless Mere Lessors[r], by Mose Ressler"
"Remote Emoter Tore Me[r], by Tom Ree"
"Rena's Snare[r], by Erna Nasser"
"A Reneged Renegade[r], by Dee Regan"
"Renewable, Leaner Web[r], by [if player is male]Ewan Elber[else]Elena Werb & Wren Albee[end if]"
"Renovate, Over-Neat[r], by [if player is male]Von Teare[else]Eve Arnot[end if]"
"A Rent I Retain[r], by Terian Reitan" []
"A Replay-Ply Area[r], by [if player is male]Pa Leary[else]Lara Pye[end if]"
"Repo-Co Core-Op[r], by Eco-Pro Roc Poe-Cooper" []
"Repulsed Preludes[r], by Les Drupe" []
"Resented Tree Dens[r], by [if player is male]Ed Ernest[else]Dee Stern[end if]"
"Resigned Sneer, Dig[r], by Sid Green"
"Resist, Sister[r], by Tess Ri"
"Respond, Holy Polyhedrons[r], by Loyd Pherson & Dyson Proehl"
"A Response Pre-Season[r], by Rose Aspen"
"Rest, Bind, Bird Nest[r], by Sid Brent"
"Rest Home Theorems[r], by Tom Sheer"
"Rest Ill, Lilters[r] by Lilster Stiller"
"Rest, Maid, Die Smart[r], by Tim Sader"
"Rest, Sour or Surest Trousers[r], by [if player is male]Ross True[else]Rose Rust[end if]" []
"Resting Worm Mister Wrong: Smit, Regrown[r], by [if player is male]Storm Winger[else]Ming Worster[end if]"
"Retain the Inert Hate[r], by Teri Ethan" []
"Retallying Integrally[r], by Gina Tyrell"
"Retention, Not Entire[r], by [if player is male]Teo Tinner[else]Ione Trent[end if]"
"Retitling Littering[r], by [if player is male]Gil Ittner[else]Lin Tigert[end if]"
"A Retold Roadlet Rot-Deal[r], by [if player is male]Art Dole[else]Lea Dort[end if]"
"Retooling My Inert Gloomy Terminology[r], by [if player is male]Tony Gilmore[else]Miley Gorton[end if]"
"Rev of Sly Flyovers[r], by Yves Rolf"
"Revive Staid Derivatives[r], by Davie Stiver"
"Rewind, Lorn Inner World[r], by Drew Norlin"
"Rewind, Tank: Dank Winter[r], by [if player is male]Kent Darwin[else]Dawn Tinker[end if]"
"Rhea's Share[r], by Sarah Esher" []
"Rhodes Hordes, Reshod[r], by Sherrod Dohse"
"Rhodesia: Her Adios[r], by [if player is male]Dre Hsiao[else]Rio Shade[end if]"
"Ribald Dr. Albi[r], by Brad Li" []
"Ribs Gone? Big Snore[r], by Bo Singer" []
"Ric's End: Dr. Nice's Cinders[r], by Ned Cris"
"Ric's Quiet Critiques[r], by Eric Quist"
"Rich Man, G: Charming Mr. Ganich[r], by Nic Grahm" []
"Rich Saint Christi[if player is male]an[else]na[end if][r], by [if player is male]Artis Chin[else]Traci Shin[end if]" [x]
"Rico Knew Nice Work[r], by Ike Crown" []
"A Riddle, Dire Lad[r], by Ed Laird & Del Radi"
"Ride Slow, Wild Rose[r], by [if player is male]Rod Lewis[else]Doris Lew[end if]"
"Ride West, Weirdest Sir Tweed[r], by Ted Swire" []
"Riding a Raft: Fair Trading[r], by Frida Gartin"
"Rife Snob Bonfires: Be For Sin[r], by Bo Fenris"
"Rifts Rage: First Gear[r], by Gert Faris"
"A Rig of Fair Go for Gia[r], by Giorgio Raffa"
"Rig Then the Ring[r], by Thin Reg Enright"
"Right Field Filth Dirge[r], by Fredi Light"
"Right Mean Nightmare Tamer Nigh[r], by [if player is male]Art Heming[else]Mira Ghent[end if]"
"Rights of This Frog[r], by Thor Figs" []
"Rigor Knew Reworking[r], by Roger Wink"
"Rigor Man Morrigan[r], by Moni Garr"
"The Rim Hermit[r], by Mimi Therreth"
"Ring Al, the Real Thing[r], by [if player is male]Nigel Hart[else]Leah Grint[end if]"
"Ringside Desiring[r], by Sid Inger-DeNigris"
"Rio's Soir[r], by Siri Roos"
"A Riot Ratio[r], by Taria Torio"
"The Riot's Hot Rites[r], by Sheri Ott"
"A Rip: I Rap[r], by Pria Ripa"
"Rip Oaths, Aphorist[r], by Otis Harp"
"RIP Seth, Pert-Ish Hipster[r], by H. Priest"
"Ripe Air Prairie[r], by Ira Peri"
"Ripe Epochs['] Prophecies[r], by Porsche Pei"
"Ripen, Keen Innkeeper[r], by Keren Pine & Renee Pink"
"Ripen, Piner[r], by Erin P. Prine"
"Riposted, Topsider![r] by Rod Stipe"
"Rise, Tots, to Resist[r], by Otte Riss"
"The Risen Sin There[r], by [if player is male]Tre Hines[else]Erin Tesh[end if]"
"Risks to Skirt So[r], by Kristos & Kit Ross"
"Rivals Too Savor Toils[r], by [if player is male]Art Olivos[else]Lois Tovar[end if]"
"Riven-Bark Riverbank[r], by [if player is male]Kevin Barr[else]Vera Brink[end if]"
"A River: Arrive, Varier![r] by Irv Rea"
"Road Rage: a Drear Go[r], by Edgar Roa"
"Road-Units['] Durations[r], by Rod Austin" []
"Roadies, Do Arise[r], by [if player is male]Ed Soria[else]Ida Rose[end if]"
"Roads Went, Set Onward[r], by Drew Aston" []
"Roadside So Raided: Arid Odes[r], by Doris Ade"
"Roam Moar[r], by Mara Romo"
"A Roast to Sara[r], by Ra Sato"
"A Robot Barterer[r], by Roberta Barreto"
"Robustly or Subtly, Lusty Bro[r], by Burl Yost" []
"Rochester Hectorers[r], by Cher Roets"
"Rod, Muck, Mud, Rock[r], by Mr. Ducko Murdock"
"Rod Ruby's Sorry Bud[r], by Rudy Bors"
"Rod Sent Nerds to Dr. Stone[r], by Ted Sorn"
"A Rodent Not Dear[r], by Nate Ord"
"Rogue, Fit to Figure: I Get Four[r], by Geri Tufo"
"Roll Back, Cork Ball[r], by [if player is male]Carl Blok[else]Lor Black[end if]"
"Roll Back, Rock Ball[r], by Carl Kolb"
"Romp, Fate: Part of Me[r], by Pam Forte"
"Romp, Idle Imploder[r], by [if player is male]Pedro Lim[else]Dori Lemp[end if]"
"Ron's Poem: Some Porn[r], by [if player is male]Mo Posner[else]Ro Empson[end if]"
"Roofless Solo Serf[r], by Flo Rosse"
"The Room: Moot Her[r], by Tom Oher"
"Root Canal: a Cool Rant[r], by [if player is male]Aaron Colt[else]Cora Alton[end if]" []
"Rope This Tire Shop[r], by Si Thorpe"
"Roped, Pedro Pored[r], by Red Rod Pope"
"The Rose She Tore[r], by Ester Ho"
"Rose's Zone: Ones, Zeros[r], by Zoro Essen"
"Rosie's Osiers Rise So[r], by Rossie O'Reiss"
"Rot Chalet Tot Rachel[r], by Charlotte Lorch-Tate" []
"Rot on or Not[r], by Toronto Ron" []
"Rotations Strain Too[r], by Otto Nasir"
"Rote Mood: More To Do[r], by [d-t] Moore"
"Rotten Hack Tank Hector on the Track: Reckon That[r], by [if player is male]Chet Kantor[else]Retta Knoch[end if]"
"A Rotten Tot Near[r], by Ron Tate"
"Round Bay Boundary[r], by Dan Rubyo"
"Round Topic Production[r], by [if player is male]Tudor Picon[else]Cori DuPont[end if]"
"Rounded Odd Rune: Dour End[r], by Nerd Duo Ed Duron & Noe Rudd"
"Roundtree's Unrestored Ruts, Redone[r], by [if player is male]Rene Stroud[else]Ester Duron[end if]"
"Rouse My Muse, Roy Seymour[r], by Sue Mory" []
"Roust Them Some Truth[r], by Theo Sturm"
"Row East To Swear or Waste[r], by Tre Sowa"
"Roy Hits History[r], by Sy Orith" []
"Roy's Hit: Shy Tiro Sir Hoyt[r], by Troy Shi"
"Royals Got Astrology[r], by [if player is male]Troy Lagos[else]Olga Story[end if]" []
"Rub Head: Hear, Bud[r], by Abe Hurd"
"Rube and a Burden[r], by Ben Radu"
"Rubes Get Beer Guts[r], by Gus Ebert"
"Rude Ole Dour Lee[r], by Lou Reed"
"The Rude Reed Hut[r], by Ruth Dee"
"Rude Times Demerit Us[r], by [if player is male]Tim Deuser[else]Edie Sturm[end if]"
"Rude Yawn Underway[r], by Andrew Yu"
"Rue Isle Leisure[r], by Si Euler & Luis Ree"
"Rue Slurs Less[r], by Russel Sulser-Surles"
"Rue This Ire Thus[r], by Hirsute Stu Hier"
"Ruin-Kept Turnpike[r], by Ken Pruit"
"Ruin Month: Turn on Him[r], by Ruth Minno"
"The Rule Hurt Lee[r], by Hue Ertl"
"The Rules Sleuther[r], by [if player is male]Lee Hurst[else]Hester Lu[end if]"
"Rumble, Mr. Blue[r], by Rube Brummell"
"Ruminate, Aunt Meri: Main, True[r], by [if player is male]Tim Urena[else]Euna Trim[end if]"
"Run a Tally Naturally[r], by Lula Ryant"
"Run Amok on a Murk[r], by Ramon Ku"
"Run Below Now Bluer[r], by Burl Owen-Welbourn"
"Run, Dodge, Grounded Underdog[r], by Doug Dern" []
"Run-Down Dunn Row Word Nun[r], by Dru Wonn"
"Run Short, North Sun[r], by Rush Tonn"
"Run, Tag a Grunt, Tru-Nag[r], by 'Gut' Arn Ungart"
"Run To Be No Brute[r], by Burt Eno"
"Run To No Rut[r], by Ron Tu"
"Rune-Day: Unready[r], by [if player is male]Andre Yu[else]Dyan Ure[end if]" []
"Runic Sty, Icy Runts: Scrutiny[r], by Sy Curtin" []
"Runt by a Bay, Turn[r], by [if player is male]Brant Yu[else]Ruby Tan[end if]" []
"Rurales Surreal[r], by Lu Raser"
"Rush at ruts: ah, as Hurt[r], by Su Hart"
"Rush On or Shun[r], by Ron Shu" []
"Rustiest Trusties[r], by [if player is male]Si Sutter[else]Tess Turi[end if]"
"A Rut on to a Run[r], by Una Ort"
"Ruts Etch the Crust[r], by Curt Tesh"
"Ruttan's Truants[r], by Stu Tran"
"Ryan's Yarns[r], by Nyna Sarrys"
"Rye O['] Yore[r], by Rorey Yeo"
"Sable Bales[r], by Bebe Sallas"
"Sabotage Boastage[r], by Gaea Bost"[]
"A Sacred Arcade's Sad Care[r], by Ced Saar"
"Sad Beau Aubades[r], by Bud Aase"
"Sad Ben's Badness[r], by Ned Bass & Dan Bess"
"Sad Boy Bo's Day[r], by Sy Doba" []
"The Sad Deaths At Ed H.[']s[r], by Ted Ash & Tad Esh" []
"Sad Fool Adolfo's Old Sofa[r], by Alf Sood"
"Sad Forge: Grades of God's Fear[r], by Sage Ford"
"Sad Kin Danski is Dank[r], by Kandiss Dakin"
"Sad Life? Fie, Lads[r], by Sid Leaf"
"Sad Mo, So Mad[r], by Moss D'Adamo"
"Sad Nerd Dr. Dean's Danders[r], by Sed Rand"
"Sad Rote Art Odes So Rated[r], by Rod East" []
"Sad Rune Asunder[r], by Dan Reus" []
"Sad Story, Artsy Sod[r], by Ross Aydt"
"Sad Tim Admits It's Mad[r], by Sid Tam"
"Sad to Be Boasted[r], by [if player is male]Ted Sabo[else]Deb Sato[end if]"
"Sad Winner Niswander[r], by [if player is male]Drew Annis[else]Sandi Wren[end if]"
"Sad Wren Wanders[r], by Rad Swen Andrews" []
"Sadder Dreads[r], by Dr. Sade Adders"
"Safer Fears[r], by Fefe Sarras"
"Sage Dr. Segard Grades[r], by Sad Reg Gerdas"
"Sagest Stages[r], by Teessa Staggs"
"Sail Among Magnolias[r], by [if player is male]Simon Gaal[else]Lois Magan[end if]"
"Sail On, Alison![r] by Nils Ao" []
"Sailmaker Malarkies[r], by Mark Elias"
"Saintly Ty Nails a Stylin['][r], by Nita Sly"
"Sales 'Zen' is Sleaziness[r], by Lessie Sanz"
"Saliva Avails[r], by Al Avis"
"Sallying Slangily[r], by Lila Syng"
"The Salon Heals Not[r], by Elton Ash" []
"Salts Go to Glass[r], by Sol Gast & Tal Goss"
"Sam Is Amiss[r], by Ms. Isis Maas"
"Sam's Den: Sad Men's Madness[r], by Em Sands"
"Same Louts? Soul Mates[r], by [if player is male]Moses Ault[else]Sue Tolsma[end if]"
"Sammi Maims Imams[r], by Ammia Simms"
"Samoa Remorse[r], by Erasmo Moraes-Semora"
"The Sand Handset[r], by Dan Tesh"
"Sandstone Dens So Tan[r], by [if player is male]Stan Edson[else]Donna Tess[end if]"
"Saner-Side Readiness[r], by Essie Rand"
"Sap Artie, a Pastier Parasite[r], by Tia Asper"
"Sapient Pa Stein[r], by Pat Enis"
"Sarge Leon Regales on So, General[r] by [if player is male]Enos Agler[else]Ros Neagle[end if]"
"Sargon Groans or Sang[r], by Rosa Ng"
"Sating Giants[r], by Santini Stagg"
"Satires as Rites[r], by Teri Sas"
"Satires I Assert[r], by Tess Rai" []
"Saucers Scare Us[r], by Russ & Ace"
"Save Him Via Mesh[r], by Avi Shem"
"Save Rich: Carve His Archives![r] by Irv Chase"
"Savvier Diet Derivatives[r], by [if player is male]Vertie Davis[else]Vida Sievert[end if]"
"Sawn Bed, Bad News[r], by Wes Band"
"Say, Get Stagey[r], by Ty Sage"
"Say, Rot or Stay: a Story[r], by Roy Ast"
"Scald, Ire, Rile Cads[r], by Ric Dales"
"The Scaly Sly Cheat, Chastely[r], by Seth Clay" []
"Scan Yon Canyons So Canny[r], by Nancy So"
"Scant Dice Accidents[r], by Cid Casten" []
"Scar-Beat Bearcats[r], by [if player is male]Bart Case[else]Cara Best[end if]"
"A Scare, Caesar[r], by Ace Ars"
"Scared of Rod's Face[r], by Case Ford"
"A Scarf Fracas[r], by F. Scara"
"Scarfin['] Infracs[r], by Cris Fan"
"Schemin['] Mensch, I[r], by Sim Chen"
"Schemins, Miss Chen: Nim, Chess[r], by Si Mensch"
"Schooled Old Echos[r], by Leo Dosch"
"Scolded Close, Cede Cold Loss[r], by Doc Les"
"Scoop the Echo Spot[r], by Scot Hope"
"Scoot, Ye Coyotes[r], by Coe Stoy" []
"Scorn a Portrait, Procrastinator[r], by Tristan Porcaro"
"Scranton Con Rants, Narcs Not[r], by Stan Corn-Cranston" []
"Screamin['] Man Cries[r], by Ric Means"
"Screams: a Massacre[r], by Mac Sears"
"Screamy [if player is male]Ms. Carey[else]Mr. Casey[end if][r], by [if player is male]Mr. Casey[else]Ms. Carey[end if] Caymers" [x]
"A Screen Careens[r], by Ren Case"
"Screw It, Crew. Sit[r], by Ric West"
"A Scried Sidecar[r], by Eric Das"
"Scrutinise, Sinecurist[r], by [if player is male]Enis Curtis[else]Cristi Suen[end if]"
"Sea-Belly Eyeballs[r], by Sally Bee"
"The Sea: East, Eh?[r] by Teesha Sathee"
"Sea-Sigh, Geishas[r], by Gia Hess"
"Seabird Sidebar[r], by [if player is male]Sid Baer[else]Deb Aris[end if]" []
"Seabirds['] Sidebars[r], by Bess Radi"
"Sean Culp Cleans Up[r], by Luc Snape"
"Seasick Ski Aces[r], by Ike Cass"
"Seat Two: We Toast Taste, OW[r], by [if player is male]Wes Tato[else]Ewa Otts[end if]"
"Seawater-Waste Era[r], by Ara Sweet"
"Secretive Vice Trees[r], by Tic Reeves"
"Sed Lang's Sad Glens[r], by Ned Glass"
"Sedated Deadest[r], by Tad Dees"
"See, Chap, a Speech[r], by Peaches Paesche"
"See-Gigs Inn: Genie Sings[r], by Signe Gines"
"See Math the Same[r], by Ema Tesh"
"See, Mine Enemies[r], by Enis Mee"
"See Papa's Apse[r], by Asa Eppes"
"Seed-Tent Detentes[r], by Ted Steen"
"Seeding Edges In[r], by Ned Egis"
"A Seedy Sad Eye[r], by Ed Seay"
"Seek a Man, Namesake[r], by Sam Keane"
"Seek Any Yankees[r], by Easy Ken Keansey"
"Seek Micro-Mockeries[r], by Cori Meeks"
"Seek On So Keen[r], by [if player is male]Ken Ose[else]Senese Kooken[end if]"
"Seen at A Tense Senate[r], by [if player is male]Estean[else]Tenesa[end if] Santee"
"Seibel Belies[r], by Leslie Bisbee"
"Seidner's Direness[r], by [if player is male]Ned Reiss-Driessen[else]Enid Ress-Resendis[end if]"
"A Self, False[r], by Elsa Saffle"
"Self Talk: Let's Laf, K?[r], by Kat Fells"
"Self-Will Ills Flew[r], by Wilf Ells"
"Sell Lilies[r], by Ellis Lisle"
"Semantics['] Main Sects[r], by Mac Stines"
"Semi-Urban Submarine[r], by [if player is male]Ruben Amis[else]Ines Burma[end if]"
"Semilunar Unrealism[r], by [if player is male]Luis Erman[else]Rina Lemus[end if]"
"Seminal Man Lies[r], by Selmina Milanes-Anselmi" []
"Seminomadic Demoniacism[r], by [if player is male]Dominic Ames[else]Cindie Somma[end if]"
"Semitonic Emictions[r], by Otis Mince"
"Sendejo Jonesed[r], by Ned Jose"
"Senor Cid Cinderos[r], by Cris Oden" []
"Sent Away? Stay Anew[r], by [if player is male]Wayne Ast[else]Anya West[end if]"
"Sent to Tetons to Nest[r], by Tosten Ettson" []
"Serge, I'm Grim, See[r], by Sig Mere"
"Serge's Egress[r], by S. Seger"
"Sermonise Emersions[r], by [if player is male]Simon Rees[else]Erin Moses[end if]"
"Serviceable Receivables[r], by [if player is male]Elvis Bearce & Caleb Rieves[else]Alice Bevers[end if]"
"Servitude Riveted Us[r], by Evie Durst"
"Set-Dice Deceits[r], by Cid Tees"
"Set Onward, Stare Down No Steward[r], by [if player is male]Art Downes[else]Ronda West[end if]" []
"Setback at Beck's[r], by Eb Stack & KC Bates"
"Seven Art Veterans[r], by Nat Veres"
"Seven-Floor Loons['] Fever[r], by Evon Flores"
"Seven Gin Evenings[r], by Sven Egin"
"Seven Pink Penknives[r], by Neve Spink"
"Severer, I Re-revise Reveries[r], by Eve Riser"
"Severing Thy Everythings[r], by Yves Enright"
"Sew [']Em, Wee Ms.[r] by Weems Mewes" [p]
"Sex Tires Existers[r], by Tex Reiss"
"Sexist Set Six Exists[r], by Tess Ix"
"Seymour Mousery[r], by Somer Yu"
"Shackleton's Chalkstones[r], by [if player is male]Chas Skelton[else]Chantel Koss[end if]"
"Shafter Fathers[r], by Art Shef" []
"A Shah in Sin[r], by Nisha Hains & Shani Sahin"
"A Shaky Tot: That's Okay[r], by Kathy Sato"
"The Sham Has Them[r], by Sam Heth"
"Shaman Ma Nash[r], by Sam Han"
"Shame Not the Moans[r], by Tom Hanes-Matheson" []
"Shame on Hose-Man[r], by Hans Moe"
"Shameless Mel's Ashes[r], by Selma Hess"
"Shapiro's Posh Airs[r], by Hoss Ripa"
"Shared Red Ash[r], by Sherard Shade" []
"Sharer Hansen[r], by Sharen Hearns-Ahrens"
"Sharpe's Phrases[r], by Rap Hess"
"She, Fool of Holes[r], by Flo Shoe"
"She is at His Seat[r], by Tia Hess"
"She May Mesh, Ay[r], by Myesha Haymes"
"She's a Horrid Horseradish[r], by [if player is male]Harris Dohse[else]Shari Rhodes[end if]"
"She's Quit His Quest[r], by Suqi Tesh"
"Sheesh, Re-Prep, Sphere[r], by Herr Shep Espe"
"Shen Clan Channels[r], by Nan Lesch"
"Shiest Heists Thesis[r], by Si Tesh"
"Shift Around, Faint Shroud: Author Finds[r], by [if player is male]Stanford Hui[else]Frida Huston[end if]"
"Shingle, English[r], by Gil Shen"
"Shockwave, Skew Havoc[r], by Wes Kovach"
"Shoot Mr. Storm, Oh[r], by Mo Short"
"Shooting This Goon[r], by Otis Hong" []
"Shoppiest Poetships[r], by Pop Theiss"
"Short Jump? Just Morph[r], by Josh Trump"
"Shoulda Had Soul[r], by Lou Dash"
"Show Decency: Concede Whys[r], by Dyche Cowens"
"Showman? Sham, Now[r], by W. H. Mason"
"Showtime With Some Woesmith[r], by Tim Howes"
"Shred Not Hot Nerds[r], by Ned Short"
"Shrew, to the Rows[r], by Wes Hort"
"Shrimpiest Hipsterism[r], by Piers Smith"
"Shrouded Odd Usher[r], by Edd Roush"
"Shun a Bum Subhuman[r], by Manu Bush"
"Shun Ego? [']S Enough[r], by Geno Hsu"
"Shunt or Rush Not, oh Runts[r], by Stu Horn"
"Shunted Hut-Dens End Thus[r], by Ned T. Hsu"
"Shy [sim] in My Shoes[r], by [if player is male]Yohn Simes[else]Missy Hoen[end if]"
"Shy Ere Heresy[r], by Hersey Sheyer"
"Shyer Tot: the Story[r], by Troy Tesh"
"Shylocking Shockingly[r], by [if player is male]Hyson Glick[else]Glynis Koch[end if]"
"Si Lever Reviles Servile Leviers[r], by Irv Sele"
"Sick Abdul: a Kids['] Club is Bad Luck[r], by Buck Dials"
"The Sicker, Sketchier Hick's Tree[r], by Chet Riske"
"Sid Won't Sit Down[r], by Don Wist"
"The Side It Heeds, Heisted[r], by Dee Tish" []
"Side-Row Rowdies So Weird I'd Swore[r], by Rod Wise"
"A Side to Toadies[r], by [if player is male]Otis Ade[else]Tisa Doe[end if]"
"Side Wood Woos Died[r], by Dodo Wise"
"Siegman's Gaminess[r], by [if player is male]Sage Nims[else]Gena Sims[end if]"
"Sierra Raiser[r], by Siarra Reiser"
"Sign Out in Gusto[r], by Tio Sung" []
"Signior Rigoni's Origins[r], by [if player is male]Si Gorin[else]Iris Ngo[end if]"
"Signore's goriness[r], by [if player is male]Ross Egin & Ron Geiss[else]Erin Goss[end if]"
"Silage Isle: Gaga Lies[r], by Gisela Siegal"
"Silent Ploys, Pointlessly[r], by [if player is male]Peyton Sills[else]Polly Stines[end if]"
"A Silenter Slain Tree Re-Entails Lean Rites[r], by [if player is male]Al Steiner[else]Lia Sterne[end if]"
"The Silky Lithe Sky[r], by Keith Sly & Hy Kleist"
"Silky New Yew Kilns[r], by Lyn Siwek"
"Similar Mail, Sir[r], by Iris Alm"
"Simmer, Mimers[r], by [if player is male]Mr. Mise[else]Ms. Remi[end if]"
"Simp Cleo Complies[r], by Mel Scipo"
"Simple Fun Fine Slump[r], by Ulf Pimsen"
"Sin, Agony: Saying No[r], by Gino Snay"
"Sin Eve Envies[r], by Svenie Nieves"
"Sin So Vain Invasions[r], by [if player is male]Si Savinon[else]Annii Voss[end if]"
"Sinarchist Christians[r], by [if player is male]Rich Stains[else]Cristin Ash[end if]"
"Since Led, Licensed Declines[r], by Ned Celis"
"Sincere, I Screen[r], by Nic Rees" []
"A Sincere Increase[r], by Sean Rice"
"Sing, Leet Gentiles[r], by Gil Steen"
"Sing, Smile, Miss Elgin[r], by Sigi Nelms"
"Singapore Prisonage[r], by Gia Posner & Gino Serpa"
"Singular Gun Lairs[r], by [if player is male]Luis Rang[else]Lin Sugar[end if]"
"A Sink or Rain's OK[r], by Arin Kos"
"Sir, Accept Practices[r], by Pat Cresci"
"Sir Ahmed: His Dream, Semi-Hard, Misheard[r], by Si Dahmer"
"Sir Beef Frisbee, Fib-Seer[r], by Bri Fees"
"Sir Blest-Blisters[r], by [if player is male]Bret Liss[else]Lis Erbst[end if]"
"Sir Cade's Sidecars[r], by Ida Cress"
"Sir, Feel Reliefs[r], by Les Frei"
"Sir Glen Lingers Singler[r], by Les Grin"
"Sir Jake is a Jerk: Ask Jeri[r], by Jae Risk"
"Sir Kate's Asterisk[r], by Art Sikes"
"Sir Kent Treks In[r], by Kirsten Snitker" []
"Sir, My Foe of Misery[r], by Mei Forys"
"Sir Ron Norris[r], by Snorri Orrins"
"Sir, Take a Strike: Eat Risk[r], by [if player is male]Ike Rast[else]Kat Reis[end if]"
"Sir's Aria Airs[r], by Risa Aris"
"Sirens End Nerdiness[r], by Sid Rennes"
"Sit Apart: It's a Trap[r], by Sara Pitt"
"Sit Cold, Clot Sid[r], by Doc List"
"Sit, My Misty[r], by Timmy Tissy"
"Sit, Sneer, Sentries[r], by Enis Rest"
"Sit, Speak, Piss-Take[r], by Peta Sisk"
"Sit Thereon in the Store[r], by Theo Estrin"
"Sit, Ye Yetis[r], by Ty Eis"
"Six Neat Tin Axes: It's Xena[r], by Anti-Sex Ex-Saint Esta Nix"
"Six Rope Proxies[r], by Ox Pires"
"Sixpence to Exceptions[r], by Tex Pisceno"
"Sixteen Nexties[r], by Tex Enis"
"Skate On, So Taken to Sneak[r], by Ken Sato"
"Skee-Ball: Lee Balks[r], by [if player is male]Les Blake[else]Bella Sek[end if]"
"Skeptical Epic Talks: Late Picks[r], by [if player is male]Kip Castle[else]Pat Eslick[end if]"
"Skimpy Spy Kim[r], by Kyp Sim"
"Skin Welt Twinkles[r], by Lew Kinst & Link West"
"Skip on So Pink[r], by Pipkin Snooks"
"Skip, Skip[r], by Kipp Sisk"
"Skit Row: It's Work[r], by Ros Wikt" []
"Skiving Vikings[r], by Sig Vink"
"A Skull: Sulk, Al[r], by Lu Klas"
"Skullcap Luck-Pals[r], by Luc Klasp"
"The Sky is Shy, Tikes[r], by Tish Keys"
"Sky Rim: Smirky, My Kris[r], by Kim Rys"
"Slack Trot? Lost Track[r], by Clark Otts"
"Slade Leads a Sled[r], by Edell Assad" []
"Slam it, St. Liam[r], by Sim Alt"
"The Slav Halvest[r], by Val Tesh"
"Slayin['] Snaily Inlays[r], by Alisyn Yilsan"
"Slender Lenders[r], by Les Dern"
"Slick Con Clocks In[r], by Nick Clos"
"Slighted Delights[r], by Stig Held"
"Slimed, Misled[r], by Dim Les Imseld"
"Slip [']em Ms. Pile[r], by Miles P. Plemis"
"Slo-Mo Looms[r], by Ms. Loo Olmos"
"Slob Ned's Bondless Boldness[r], by [if player is male]Don Bless[else]Bess Lond[end if]"
"Slop Cay Calypso Cosplay[r], by Sly Paco"
"Slop Rise, Ripe Loss[r], by Leo Priss" []
"The Slop Shoplet Slept, Oh[r], by Seth Olp" []
"Slop Up Pulp So, Ol['] Pups[r], by Pops Lu"
"Sloth Dealt Death Tolls[r], by Shella Dott"
"Slow Bleed Bodes Well[r], by [if player is male]Del Bowles[else]Deb Sowell[end if]"
"Slow Ebb Below BS[r], by Wes Lobb" []
"Slow Pace Cope Laws[r], by Lew Pasco" []
"Slow Tea to Wales[r], by Al Stowe"
"The Slow Wet Hols[r], by Wes Holt"
"The Slum Elm Huts[r], by Les Muth"
"Slumbering Muslinberg Sub-Gremlin[r], by Gil Numbers"
"Slur Them, Mr. Hustle[r], by [if player is male]Mel Hurst[else]Ruth Elms[end if]" []
"Slur Them, Ms. Luther[r], by Rush Melt-Elmhurst"
"Sly Bore Beryl, So Soberly[r], by Les Roby, Bo Syler & Rose Bly"
"Sly, I Sob, Bossily[r], by Lis Osby"
"A Sly Nerd Sanely, Dr. Lysander[r], by Sal Ryden"
"Sly Ribald Dilly Bars[r], by Sally Bird"
"Slyer Ole Eyerolls[r], by Lyle Rose"
"A Slyer Slayer[r], by Sal Rey" []
"Slyvale Valleys[r], by Sal Levy"
"Small Boy Lomas Bly[r], by Sly Albom"
"Small Pause: a Slum's Plea[r], by [if player is male]Saul Maples[else]Pamula Less[end if]"
"Small Time Steam Mill[r], by Emma Tills"
"Small Weight Might as Well: a Slight Mewl[r], by Mathew Gills"
"Smart Boy, Artsy Mob[r], by Tom Byars"
"Smart Ode to Dreams Most Dear[r], by [d-t] Mears"
"Smart Ol['] Mortals[r], by Al Strom"
"Smartened Tradesmen[r], by Ned Martes & Art Mendes"
"Smarty Marty's My Star. Stay, Mr.![r] by Ty Mars"
"A Smelly Mall, Yes[r], by Al Myles"
"A Smith Smit, Ha[r], by Tim Ash-Mathis" []
"Smither Hermits[r], by Tim Sher"
"Smitten on Ointments[r], by Ennis Mott"
"Smolenski Isle Monks[r], by Moses Link"
"Smut Lair Muralist Altruism[r], by Lars Muti" []
"Snag Evil Leavings[r], by Gil Evans-Vangelis"
"Snakebit Beatniks[r], by Kent Bias"
"Snapple Pen Pals[r], by Len Sapp"
"Sneak, New Keen Swan[r], by Wes Kenna"
"Sneer, Panic, Screen Pain, Inner Space[r], by Sean Prince"
"Snide Ropy Pony Rides[r], by Dione Spry"
"Snide Soul Delusions[r], by Ossie Lund"
"Snider Eras['] Dreariness[r], by Nasir Reeds"
"Snipe Hunt: Shun, Inept[r], by Penni Hust"
"A Sniper, Persian[r], by Ines Arp-Spanier"
"Sniveler Vern Lies in Revels[r], by [if player is male]Les Ervin[else]Lin Evers[end if]"
"Snob Jed's Jobs Dens[r], by [if player is male]Benj Doss[else]Jess Bond[end if]"
"Snob Lad So Bland[r], by Al Bonds"
"Snob Lad So Bland[r], by Sal Bond"
"Snoring Rings On[r], by Ros Ginn"
"Snortiest Tenorists[r], by [if player is male]Otis Stern[else]Ines Trost[end if]"
"Snot-Red Rodents[r], by Donster St. Endor" []
"A Snot Sat On So Tan: Son to Satan?[r] by Anton Tasso"
"Snotbag Nagbots[r], by Bo Tsang"
"Snotty St. Tony[r], by Ty Nost"
"Snow, Ice: We Icons['] Wise Con[r], by Wes Cino"
"Snowbird, Wind-Orbs[r], by Sid Brown & Bri Downs"
"Snowglobe Bones, Glow[r], by Gwen Sobol"
"Snub Theo on the Bus[r], by Ben South" []
"So a Hex Hoaxes[r], by Axe Sho"
"So Al's a Loss[r], by Sal LoSasso" []
"So Angry Sang Roy Grayson[r], by Roy Gans"
"So Atlas Also Sat at a Loss[r], by Sal Sato"
"So, Audit a Studio? Aid us To[r], by Ida Tsou"
"So Ban a Snob[r], by Bo San-Banos"
"So Blank Ol['] Banks[r], by Sal Bonk"
"So-Boring Sir Bongo[r], by Rob Goins"
"So Busy Boys, Us[r], by Susy Bo"
"So Came SeaCom[r], by Mo Case"
"So, Dance a Second?[r] by Don Case"
"So, Dictator, Too Drastic?[r] by Otto Sicard"
"So-Dry Sorry Soddy[r], by Roddy Rossy & Yordy Dross"
"So Enter on Trees to Sneer[r], by Ernesto Toresen" []
"So, Enter: Steer on to Sneer[r], by Ron Tees"
"So-False seals of ol safes[r], by Leo Fass"
"So-fit Ifs to Foist[r], by Tiffi Soots"
"So, Flags of Glass[r], by Alf Goss"
"So Handy? No, Shady[r], by Sandy Oh"
"So I Date Aides to Toadies[r], by [if player is male]Otis Ade[else]Ida Seto[end if]" []
"So It Is To Otis[r], by Tiso Tsoi"
"So Leap a Slope[r], by Sal Poe"
"So, Learn: a Loner's Real Son[r], by Al Rosen-Ornelas" []
"So Leash Seals, Ho![r] by Leo Hass"
"So, Levi, is Love So Vile?[r] by Ilse Vo" []
"So, Like, Lies, OK?[r] by Elie Kosloski" []
"So Manic, I Scan Mo['][r], by Nic Amos"
"So May We Say Meow Some Way[r], by Wes Mayo"
"So Melt Me Lots[r], by Mel Tso" []
"So Mice is Come[r], by Sim Coe"
"So, Mother, the Room's Smoother[r], by Moe Short" []
"So Neal's a Lesson[r], by Lea Noss"
"So Often to Footnotes[r], by Toto Sefon"
"So-Perfect Coper Fest[r], by Pet Fresco"
"So Perps Oppress[r], by Ross Epp"
"So Quaver, Vaqueros[r], by Vas Roque"
"So Rain Airs On[r], by Rosina Sanrio"
"So, Rant: No Star as Torn[r], by Tarron Santos" []
"A So-Rapid Diaspora[r], by [if player is male]Sid Opara[else]Pia Roads[end if]" []
"So Reach Roaches or Chase Cares, Oh[r], by Ash Coer"
"So, Recruit Courtiers[r], by [if player is male]Curtis Roe[else]Su Cerrito[end if]"
"So Romp Promos[r], by Mr. Oops & Ms. Poor" []
"So Talk Last, OK[r], by Kat Klos-Solta"
"So Time is to Me[r], by Mo Eist" []
"So, Tinker on Strike[r], by [if player is male]Kent Rios[else]Rose Kint[end if]"
"So-Tired Red Otis[r], by Ted Rios"
"So Trend Rodents[r], by DT Rosen & DO Stern" []
"So, Try: Tory's Story[r], by Sy Ort"
"So, Tut Stout Touts[r], by Su Ott"
"So Untidy Tiny Duos[r], by Sid Yount"
"So-Urgent Runt Egos[r], by Stu Groen" []
"So Venom Moves On[r], by Mo Ovens"
"So Went St. Owen[r], by Weston Townes"
"So, Winter: Now I Rest[r], by Teri Snow"
"Soap on a Spoon[r], by Soon-Pa O'Spano"
"Soar, Rosa, Soar[r], by Sara Roos"
"Sob, Gaze, Gazebos[r], by Boz Sage"
"Sob, Icky Sick Boy[r], by Ki Cosby"
"Sob on All Balloons[r], by Lola Snob"
"A SOB's ASBOs[r], by Bosso Sabas"
"Sober Kin is Broken[r], by [if player is male]Ken Boris[else]Kris Bone[end if]"
"Sober Kin is Broken[r], by Ken Boris"
"The Social So-Ethical Coal Heist[r], by Theo Scali"
"A Society Stoic, Aye[r], by [if player is male]Casey Ito[else]Staci Yeo[end if]"
"Sociopath, I Opt Chaos[r], by Pooch Tsai"
"Sock-Lab So Black[r], by Sal Bock"
"Soda Ados[r], by Odo Assad"
"Soft Ones['] Festoons of Stones[r], by Teno Foss"
"Soften Up, Poets: FUN[r], by Stef Puno"
"Sog-Oil Igloos[r], by Gil Soo"
"Soggy Elk Egg Yolks[r], by Sky Gogel"
"Sol Slept Plotless[r], by Les Stolp"
"Solarising Sailorings[r], by [if player is male]Silas Giron[else]Lissa Gorin[end if]"
"Soldiers['] Dire Loss[r], by [if player is male]Sid Soler[else]Doris Les[end if]" []
"Solemn Lit Millstone[r], by Les Milton"
"A Solid Sad Oil Laid So[r], by Odalis Salido"
"Solitary Royalist[r], by Lisa Troy"
"Solo Knife Looks Fine[r], by Leif Koons"
"Solon of No Fools[r], by Olfonso Olofson"
"A Somber Mobs Era[r], by Ambrose Boersma"
"Somber Mr Bose[r], by Bess O'Brommer"
"Some Bait a Mob Site[r], by Tobie Sam"
"Some Envy a Money Save[r], by Evan Moyes"
"Some Faint Manifesto[r], by Fiona Stem" []
"Some Fan of Names[r], by E. F. Mason"
"Some Gang's Mega-Songs[r], by Megan Goss"
"Some Grunt More Stung[r], by Gus Merton"
"Some Guy Goes Yum[r], by Gus Moye"
"Some Kids Smoke Dis[r], by Mike Doss"
"Some Lip Impels O, Spoil Me[r], by Slim Poe"
"Some Rain: Moan, Sire[r], by [if player is male]Ian Morse[else]Erin Amos[end if]" []
"Some Rays Says More[r], by Ross Maye"
"Son, Abet no Beast at Bones[r], by Ben Sato" []
"Son to Satan[r], by Antos Stano" []
"Son, Ye On, Yes?[r] by Osney Noyes"
"Songlike Ego-Links[r], by [if player is male]Les Konig[else]Inge Klos[end if]"
"Sonneted Endnotes[r], by Don Steen"
"Soon in Asia[r], by Sonia Siano"
"SOP for Pros of Proofs[r], by Prof. O. S. Froosp"
"Sophister Storeship[r], by [if player is male]Seth Spiro[else]Sheri Post[end if]"
"Sore-Nose Mermen Sneer: More Omens[r], by Emerson Sermeno"
"SOS, Man, No Mass[r], by Samson Masson" []
"Soul Mate: Also-Mute Same Lout[r], by Sue LaMot"
"Soul-Screen Enclosures: Lo, Censures[r], by [if player is male]Russel Cone[else]Coleen Russ[end if]" []
"Soul-Slain Allusions[r], by [if player is male]Luis Sloan[else]Su Allison[end if]"
"The Sound Den South So Hunted[r], by Donte Hsu"
"Sour Edict, Courtside Custodier[r], by [if player is male]Curtis Doe[else]Trudi Esco[end if]"
"Sour Milk or, Um, Silk[r], by Luis Krom"
"Soured on Underoos, Soon Rude[r], by Don Rouse"
"South Side Heist Duos: Eh, Studios[r], by Odis Shute"
"Southbound Soundbooth[r], by Bud Houston"
"Souvenir: I, Nervous[r], by Vin Rouse"
"Souvenir: One Virus, I, Nervous[r], by Venus Rio"
"Sovereign Son, Grieve[r], by [if player is male]Gino Evers[else]Ines Grove[end if]"
"Space-Time Spite Mace: See Impact[r], by Pete Simac"
"Spain or Paris? No, a Prison[r], by Soprina Sarpino" []
"Spam Not, Postman. Stamp On[r], by Pam Nost" []
"Spare Me, Mr. Pease[r], by Sam Peer"
"Speak, Peaks![r] by Papa Kesske"
"Speak to Topeka's Oak-Pest[r], by Kat Peso" []
"Speak to Topeka's Oak Pest[r], by Pat Seko"
"Speedily I Ply Seed[r], by Syed Pile"
"Spice Epics[r], by Ceci Pepiss"
"Spice-Oil Policies[r], by Clio Sipe"
"Spin a Web: Nab, Swipe[r], by Pew Bains"
"A Spin? I snap[r], by Pansi Aspin" []
"A Spirit is a Trip[r], by Pat Iris"
"Spite Row: It's Power[r], by Stew Ropi"
"Spiters Persist[r], by P. T. Reiss"
"Spoiled Old Pies[r], by Sid Poel" []
"The Spook Spoke Hot[r], by [if player is male]Seth Koop[else]Hope Kost[end if]"
"Spooled Poodles['] Old Pose[r], by Loo Deps"
"Spoonerisms: No-Miss Prose[r], by [sim] Pross"
"Spottable Tabletops[r], by Opal Betts"
"Sprawl of Law Profs[r], by Flor Paws"
"Sprier Song In Progress[r], by Nips Rogers"
"Spry Ole Leprosy Ployers[r], by Ly Poser"
"Spur to Sort Up Po['] Ruts[r], by Proust Pro Stu Stroup"
"Spy Beams, Pass Me By[r], by Mab Sypes"
"Spy Had Pay: Happy Days[r], by Shady Yapp"
"The Square Queer Hats[r], by Rhea Quest"
"St. Amber, Mr. Beast, Be Smart: Best Arm![r] by Bert Sam" [p]
"St. Claire Recitals[r], by Eric Alst" []
"St. Dade's Dad Sets Saddest[r], by Ted Dass"
"St. Dee's Steeds[r], by Ed Tess"
"St. Eliza, Laziest Zealist[r], by Al Seitz"
"St. Erika's Asterisk[r], by Teri Kass" []
"St. Fleur's Turfless Flusters[r], by Russ Felt"
"St. Germain Emigrants['] Rematings[r], by [if player is male]Grant Imes[else]Tresa Ming[end if]" []
"St. Ignaco, A Costing Agnostic[r], by I. C. Gantos"
"St. Jeb Co-Objects[r], by TJ Besco & BJ Coste"[]
"St. Laurent's Resultants[r], by Trent Sauls"
"St. Lee Steel[r], by Estelle Tse"
"St. Marvin Varmints[r], by Mars Vint"
"St. Rene Enters[r], by Ernest Sterne"
"St. Sexi Exists, is Tex's[r], by Tess IX" []
"St. Sinata's Assistant[r], by Tina Stass"
"Stack of OK Facts[r], by Kat Focs"
"The Stage Gets Heat[r], by [if player is male]Sage Hett[else]Thea Gest[end if]" []
"Stager Greats[r], by Terresa Stagg & Gretta Gasser"
"Stain-Safe Fantasies[r], by Tessa Fina"
"Stale-Air Alestair[r], by Lea Raist"
"Stale Riot, Aristotle[r], by [if player is male]Leo Strait[else]Lisa Otter[end if]"
"A Stale Sale at Aleta's[r], by Al East"
"Staler Alters[r], by Earl St. Slater" []
"Stalin: I Slant[r], by Stan Li"
"Stand by a Bad Nasty[r], by Dyan Abst"
"Stand it Distant[r], by Sid Tant"
"Standard Dad Rants[r], by Tad Rands"
"Standifer's draftiness[r], by [if player is male]Anders Fist[else]Astrid Senf[end if]"
"Star-Shine Tarnishes[r], by [if player is male]Seth Rains[else][end if]"
"Starside Disaster[r], by Tad Reiss" []
"Starve Vaster[r], by Vesta Travers"
"State-Run Stunt Era[r], by [if player is male]Nat Suter[else]Sue Trant[end if]"
"Statelier Literates[r], by [if player is male]Artist Lee[else]Tia Lester[end if]"
"Stauncher, Unchaster[r], by [if player is male]Ernst Chau[else]Una Tresch[end if]"
"Stay Around on Saturday[r], by [if player is male]Dusty Aaron[else]Tyra Sudano[end if]"
"Stay Back by a Stack[r], by Stacy Bak"
"Stay Cool, Sooty Cal[r], by Stacy Loo"
"Stay Due, Tuesday[r], by Tay Deus"
"Stay Gold to Gladys, Salty God[r], by Ty Glados & Stodgy Al"
"Stay Hid This Day[r], by Ash Tidy"
"Stay, Men: Amnesty May Nest[r], by Ty Means"
"Staying Stygian[r], by Ty Gains"
"Stealing Gelatins[r], by Ines Galt-Eastling"
"Steel Bars Be Artless[r], by [if player is male]Bret Sales[else]Bess Alter[end if]"
"Steel, Paper, Apple Trees[r], by Pepe Slater"
"Steer a Re-Seat: See Art[r], by Ree Ast" []
"Steering Greetins['][r], by Reg Stein"
"Steichen's techiness[r], by Tess Chien"
"Stepan's Aptness, Pass Ten[r], by Tess Pan"
"Steph at the Past: Set Path[r], by Pat Tesh" []
"Stephani's Thespians[r], by Seth Spain"
"Sterile Seer-Lit: Rest, Lie[r], by Teri Les"
"Stern Sage Estranges Greatness[r], by S. Sergeant"
"Stew, Oaf: Fate, Sow Fast Woe of Waste[r], by Fae Stow"
"A Still at Ills is Tall[r], by Lila St. Tallis"
"Still-Hoof Foothills[r], by Flo Holtis"
"Stink Out, Stout Kin[r], by Kit Suton"
"Stink-Stone Token Snits[r], by InesKnotts"
"The Stink Think Set[r], by Kent Tish"
"Stipender President[r], by Trip Edens"
"A Stir: I Star[r], by Trista Aris"
"Stogy Odor, Good Story[r], by Gordy Soto"
"Stoic From Microsoft[r], by Tom Frisco"
"Stoic June on Justice: Joust Nice[r], by [if player is male]Justin Coe[else]Jeni Couts[end if]"
"Stoking Mr. Storm King[r], by Kim Strong"
"Stomach Mo['] Chats[r], by Tom Cash"
"Stomp My Symptom[r], by Tom S. Pym"
"Stonable Notables: Blast One[r], by Lona Best"
"A Stone So Neat to Sean[r], by Easton Seaton"
"Stonier Orients[r], by Ron Eist" []
"Stop, Drear Predators[r], by Rod Spater" []
"Stop Naked, Dank Poets, Don't Speak[r], by [if player is male]Dante Skop[else]Kenda Post[end if]"
"Stopper Toy Prototypes: Tops Poetry[r], by Petty Spoor" []
"The Storm: Rest, Moth[r], by Sherm Ott"
"A Storm to Mars[r], by Rossa Mottram"
"A Story So Arty[r], by Ty Raso" []
"Stout Liar Tutorials[r], by Stu Rialto"
"Strange Angster St. Regan[r], by Reg Nast"
"Strange True Great Unrest[r], by [if player is male]Stuart Green[else]Tresa Gunter[end if]"
"Stranger Granters[r], by Ren Garst"
"Straw Men's Stern Maws[r], by Swen Smart"
"Streak'd Darkest[r], by Ed Stark" []
"Streetscape Pacesetters[r], by Peter Casset"
"Stress No Stern SOS[r], by Tess Sorn"
"Strewin['], Winters Went, Sir[r], by Ren Wist"
"Strict-ID District[r], by Cid Ritts"
"Strife of Effort is Its Offer[r], by Tiff Rose"
"Strife of FireSoft: Forfeits[r], by Riff Seto" []
"StriveCo Covers It[r], by Vic Oster"
"Strober Orb, Rest[r], by Roberts Berrost"
"Strum, Strum[r], by Mr. Stu Sturm"
"Stuck Echo Checks Out[r], by Kutch Esco"
"Studio M Dims Out[r], by Mo Dusti & Sid Muto"
"Studying Tidy Guns[r], by Dingy Stu"
"Stumbler Blurts? Me?[r] by Mel Brust"
"A Stunt Taunts[r], by Stan Tu"
"The Stupid Tepid Huts: Thud, Spite[r], by Shedu Pitt"
"Suavery: a Survey Very USA[r], by Eva Usry"
"Sub-Nerd Burdens[r], by Su Bernd & Ed Burns"
"Subtle Bustle Sublet[r], by Lu Best"
"A Subtle Late Bus at Blues[r], by Lu Bates"
"A Subtler Blue Star[r], by [if player is male]Saul Bert[else]Lea Brust[end if]"
"Such Noise, Eh, Cousins[r], by Susie Cohn"
"Such Other Chore Huts[r], by Chet Roush" []
"The Sucker Creek Huts Stuck Here[r], by [if player is male]Chet Kruse[else]Ruth Eckes[end if]"
"Suderman Maunders, Surnamed[r], by Ned Ramus"
"A Suit of Fast IOU[r], by Sofia Tu"
"Sulk, Wrath, Straw Hulk[r], by Kurt Walsh" []
"Sultan Hope's South Naples Houseplants[r], by [if player is male]Seth Paulson & Lou Stephans[else]Nessa Plouth[end if]"
"A Sultan's Assault'n[r], by Susan Alt"
"Sum-Bla Albums[r], by Su Lamb" []
"Sum This Isthmus[r], by Tim Huss"
"Sumatra Traumas[r], by [if player is male]Art Maus[else]Mara Tsu[end if]"
"Sun's Ego? No Guess[r], by [if player is male]Gus Enos[else]Sue Song[end if]"
"[']Sup, Hero? Oh, Rep Us[r], by Rush Poe" []
"Superego Goes Pure[r], by Peg Rouse"
"Sure Bond So Burned[r], by [if player is male]Bud Rosen[else]Su Borden[end if]"
"Sure, Fate Features After Use[r], by Fae Suter"
"Sure, if Furies Fire Us[r], by Eris Fu"
"Sure, Nomads Mess Around[r], by [if player is male]Moses Duran[else]Sondra Muse[end if]"
"Sure, Sin Insures Sunrise[r], by Russ Nei"
"The Sure Three: Us[r], by Stu Ehre"
"Sure-Tied Erudites[r], by Edie Rust"
"Surf-Gone Sun Forge[r], by Rose Fung-Ferguson"
"Surfaces: Care, Fuss, Fear, Cuss[r], by Russ Face"
"Surmise, Misuser[r], by Si Remus"
"Surprise Spurs Ire[r], by [if player is male]Russ Pier[else]Su Perris[end if]" []
"A Suspect: Cute Saps['] Past Cues[r], by Stu Capes"
"Swanbane Wannabes[r], by Nana Bews"
"Swank Ol['] Sank Owl Walks On[r], by Al Knows"
"Swat-Hopes Sweatshop[r], by [if player is male]Wes Potash[else][end if]"
"Swat Lax Tax Laws[r], by Walt Sax"
"Swear Not, Straw One, to Answer[r], by [if player is male]Art Owens[else]Rona West[end if]" []
"Swear Words Sow Rewards[r], by Wes Darrows"
"Sweeping Weepings[r], by Gwen Sipe"
"A Sweet Wet Sea[r], by Ewa Tse"
"Swim Nut Must Win[r], by Wm. Tunis"
"Swim Race Crew Aims[r], by Marc Wise"
"Switcheroo: Two Heroics[r], by Cristo Howe"
"Switcheroo: Two Heroics[r], by Torie Schow"
"A Swollen Slow Lane[r], by Noe Walls"
"The Sword She'd Trow[r], by Des Worth"
"A Symmetric Creamy Mist[r], by[if player is male]Timmy Cesar[else]Mamie Cryst"
"Synthetic Ethnic Sty[r], by Ty Nitsche"
"T. Osozaki, a Zitso, OK Kazooist[r], by Tisa Zook"
"Tacit Snipe Antiseptic[r], by Cain Pettis"
"Tacky Bro's Back Story[r], by [if player is male]Rocky Bast[else]Stacy Bork[end if]"
"Tacky Slur: Ask Curtly, Lay Struck[r], by Lucy Trask"
"Tactics of Stoic Fact[r], by Cisco Taft"
"Tacy Was a Castaway[r], by Wyat Casa"
"Tag-Along-a-Lot Gang[r], by Olga Gant"
"Tainted Aid Tent[r], by Ned Tait"
"Tainted, I Attend[r], by Ted Tian" []
"Taipan Pinata[r], by Pia Tan"[]
"Take Four: Freak Out![r] by Tor Kaufe"
"Take Home Meek Oath[r], by [if player is male]Moe Keath[else]Temeka Ho[end if]"
"Take No Token: A KO Next[r], by Keaton Katone"
"Take, Own, Know, Eat[r], by Owen Tak"
"Take Rib, Break It[r], by Kit Baer"
"Takey Katey, a Tyke[r], by Katt Yeakey"
"Taking So, Stoking a Goatskin[r], by [if player is male]Otis Kang[else]Kati Song[end if]"
"Talc Oils to Lilacs[r], by Callisto Castillo" []
"Talk Pricy: Trick Play[r], by Kip Cyr-Alt"
"Talkative Ava Kittle[r], by Alva Keitt" []
"Tall Poem, Lame Plot[r], by [if player is male]Pat Mello[else]Pam Tolle[end if]"
"Tall Silos Also Still: All is Lost[r], by Lisa Stoll"
"A Taller Lateral Rate-All[r], by Tara Ell"
"Taller's Stellar[r], by Lars T. Le"
"Tammie's Team-Sim Mis-Mate[r], by [if player is male]Tim Ames[else]Mei Mast[end if]"
"Tap Hatred, Da Phatter Deathtrap[r], by Tad Tharpe"
"Taper? Prate, Prate[r], by [if player is male]Peter Prata[else]Tara Tepper[end if]"
"Tar the He-Tart[r], by Art the Hatter"
"Tardis: It's Rad[r], by Astrid St. Radi" []
"Tarnish, Trashin[']: His Rant[r], by Tristan Harnish"
"Tarnoff's Affronts[r], by Ron Staff"
"Tartans['] Tantras[r], by Art Nast"
"Tatamis Mills[r], by Mallis Mattis" []
"Tax Code: Do Exact[r], by Tex Coda"
"Taxi Info Fixation[r], by Nitia Fox"
"Tch, Done Then, Doc?[r] by Notched [d-t] Chen"
"Tea, My Matey[r], by Yetta Mayme"
"Tea Now to Wean Not Awe[r], by Waneta Wooten"
"Tea Party, Yet Apart[r], by Patty Rea"
"Tea Til a Title[r], by Etta Li"
"Tea Time: Meet Tia[r], by Emi Tate"
"Tea Try Treaty[r], by Art Tye"
"Tea With Thwaite[r], by Ewa Hitt"
"Teachership Heptarchies[r], by [if player is male]Heath Crespi[else]Pat Cheshire[end if]"
"Team Road to a Dream: More Data[r], by Dre Amato"
"Teammates So Odd at Domes[r], by Modesta DeMatos"
"Tear, Rate a Retreat[r], by Tara Tree"
"Tearing up Rage Input[r], by [if player is male]Pat Guerin[else]Pia Gunter[end if]"
"Tech [']Do: the Doc CODETH[r], by Ted Cho"
"Tech Hub, Eh, Butch?[r], by Beth Chu"
"Tech is ETHICS[r], by Si Echt"
"Tech Sham: the Chasm[r], by Sam Hecht"
"Technical-Chance Lit[r], by [if player is male]Cecil Nath[else]Cleta Chin[end if]" []
"Techno: the Con[r], by T. Cohen & H. Conte"
"Ted Hurd, a Turd Head[r], by [if player is male]Thad Duer[else]Ruth Dade[end if]"
"Teen Moms['] Mementos[r], by Tone Emms"
"Teen Sans Neatness[r], by Anne Tess"
"Teen Wolf Won't Feel[r], by Lew Fonte"
"Teeny Town Twenty One[r], by Newt Toney"
"Television: Novelise It[r], by Olive Stein"
"Tell a Spy Let's Play[r], by [if player is male]Sal Pytel[else]Pat Lyles[end if]" []
"Temika's Mistake[r], by [if player is male]Ike Mast[else]Kit Ames[end if]" []
"Ten Bars['] Banters[r], by Stan Erb & Ben Rast"
"Ten-Fad Aft-Den[r], by Def Nat, Fat Ned & Ted Fan"
"Ten Harpies['] Hen Parties[r], by Pat Heisner"
"Ten Hush the Huns[r], by Thu Shen"
"Ten Kilo Lie Knot[r], by Kit Leon"
"Ten Lay Neatly[r], by Ely Tan"
"Ten Moms['] Moments[r], by Ms. Monte St. Memon"
"Ten Years Yet Saner[r], by Trey Sean & Nat Reyes"
"Terminus: Inert Sum[r], by [if player is male]Tim Nurse[else]Mei Sturn[end if]" []
"Test Archly the Crystal[r], by Tyler Tasch"
"Test it: Bah, That Bites[r], by Tish Batte"
"Testham, That's Me[r], by Matt Esh" []
"Tex's Mere Extremes[r], by Rex Smeet"
"Thad, Ben and Beth: the Band, bad, Then[r], by Ted Bahn"
"Thad's Sad H/T[r], by Dash T. D'Hast"
"Thane Ethan Neath[r], by Netta Hahne"
"Thanks Be the Banks[r], by Kent Bash & Hank Best"
"That Good Toad Goth[r], by Dott Hoag"
"That's Too Hot Toast[r], by Toto Tash"
"Thawed Dew-Hat[r], by Ted Hwa"
"Their Sage Grease-Hit Heritages[r], by Trisha Gee"
"Theism: Me, This[r], by Smithee Smith"
"Theist Tithes[r], by E. Stith"
"Thelma's Halts Me[r], by Mel Tash" []
"Then Am I the Main[r], by Mei Than" []
"Then Boss the Snobs[r], by Bess Noth"
"Then Gag the Gang[r], by Nat Hegg"
"Then Gear the Anger[r], by Garth Nee"
"Then Gob the Bong, Bent Hog[r], by Goth Ben"
"Then Mix the Minx-Hex Mint[r], by Tex Minh"
"There Don's Shortened[r], by Seth Nored"
"There I'm the Emir[r], by Tim Rhee"
"There Was Weathers[r], by [if player is male]Wes Rathe[else]Rhea West[end if]"
"Thespian Stephani[r], by Shep Tian"
"They Do. Doth Ye?[r] by Ted Hoy"
"They Gas the Gays[r], by Hy Gates"
"They Kiss This: Keys[r], by Ty Sheski"
"They Mar My Heart[r], by Trey Ham" []
"They Sink in the Sky[r], by Kit Hynes"
"They Use Eye-Shut[r], by Huey Tse"
"Thin Rube Bein['] Hurt[r], by [if player is male]Burt Hein[else]Beth Ruin[end if] The Bruin"
"A Think Net in the Tank[r], by Keith Tann"
"This Borg So Bright[r], by Brit Shog"
"This Bum, Bismuth[r], by Tim Bush & Si Thumb"
"This Bum Bit Mush[r], by Tim Bush" []
"This Cool Holistic[r], by Otis Loch"
"This False Faithless Thief-Lass Fails Seth[r], by Elsa Shift"[]
"This Flake Hates Filk[r], by Kathi Self"
"This Gnome Mine Ghost Got His Men[r], by Og Nesmith"[]
"This Grove: the Vigors Sigh Overt[r], by Regis Voth"
"This-Head: His Death[r], by Edith Ash" []
"This Log So Light[r], by Sig Holt"
"This Man Thin Sam[r], by Tim Nash" []
"This Manic Machinist[r], by [if player is male]Cain Smith[else]Nita Chism[end if]"
"This Map Past Him[r], by Sim Ptah"
"This Mass Has Mists[r], by Ash Smits"
"This More-Smit Hero[r], by Tom Hires"
"This Pale Late Ship[r], by Phil East"
"This Part: Hip Start[r], by Pat Hirst"
"This Place's Sales Pitch[r], by [if player is male]Phil Scates[else]Lisa Specht[end if]"
"This Rev Thrives[r], by [if player is male]Ev Hirst[else]Vi Stehr[end if]"
"This Rub, Brutish[r], by Brit Hsu"
"This Suit: Thus, I Sit[r], by Isis Hutt"
"Tho['] Dale Loathed Ol['] Death[r], by [d-t] Hale"
"Tho['] Dan Had Not[r], by Hon. Tad Haddon-Hatton" []
"Tho['] Gank'd, Thank God, Dank Goth[r], by Kath Dong"
"Tho['] if Kin I Think Of[r], by Niki Foth"
"Thorniest Rothstein[r], by Sheri Nott"
"Those Dine on the Side[r], by Ines Thode" []
"Though Ace, a Thug Echo[r], by Hugh Coate the Gaucho"
"Thralls of Shortfall[r], by [if player is male]Rolf Stahl[else]Flo Strahl[end if]"
"A Threat at Heart[r], by Art Athe"
"Threw a Hit With Heart[r], by Rhea Whitt"
"Throw Me the Worm[r], by Mo Werth"
"Thug Mo's Ughmost Mugshot[r], by Tom Gush"
"Thugs['] Hot Thoughts[r], by Gus Thoth"
"Thus a Cool Holocaust[r], by Loo Tausch"
"Thus War Was Hurt, Ruth Saw[r], by A. H. Wurst"
"Thy Dame, My Death[r], by Mat Hyde" []
"Thy Darn Hydrant[r], by Hy Arndt"
"Thy Meal, Mathley-Yeltham[r], by Ty Hamel"
"Thy Soul, Lush Toy, Shy Lout[r], by Lou Thys & Ty Hulso"
"Tibet, Tibet[r], by Betti Ebitt"
"A Tic: I Act[r], by Cici Tata"
"Tidy Room, I'm Too Dry: Yo, Dim Rot[r], by Troy Modi"
"Tidy Three: They Tried[r], by [if player is male]Trey Heidt[else]Hettie Dry[end if]"
"Tie Six, Site IX[r], by Tex-Is-I"
"Ties More Tiresome[r], by Tori Mees"
"Tiger Dad Did Great[r], by Tad Ridge"
"Tigris Rigs It[r], by Si Girt"
"Tiki Now I Know It[r], by Tio Wink & Kit Wion"
"Tillie's Lie List[r], by Lili Tse"
"Tim and Dim Nat[r], by Dimmitt Anand"
"Tim, Top Imp Tot[r], by Mo Pitt"
"Time Paradox: a Dope Matrix[r], by Dax Imperato"
"Time's Arrow, Most Warier[r], by [if player is male]Ramiro West[else]Rosa Witmer[end if]"
"Tin Cans Can't Sin[r], by Nic Nast-St. Nanci"
"Tin Lake Atinkle[r], by Eli Kant"
"Tin Rail Trailin['][r], by Rita Lin"
"Tin Roof for [toti][r], by Rio Font"
"Tin Trevor, Introvert[r], by Rev. Triton"
"Tina Ain't an It[r], by Nina Tait"
"A Tingly, Tiny Gal[r], by [if player is male]Ty Laing[else]Gita Lyn[end if]"
"A Tiny Boor Too Brainy[r], by Roy Bonita"
"Tiny Dog Got Dyin['][r], by Tod Ying"
"Tipsy Man in My Past[r], by Misty Pan"
"[']Tis Awe I Waste[r], by T. A. Wise"
"Tithe, Tithe, Tithe[r], by Hetti Hiett"
"Titled, Tilted[r], by Ed Litt"
"To a Dog: Go, Toad[r], by [d-t] Goa"
"To a Git: Go at It![r] by Og Tait"
"To a Lass at a Loss[r], by Sol Sato"
"To a Tao-Oat[r], by O. O. Tata & A. A. Otto" [x]
"To Acquire Ace or Quit[r], by [ta] Rocque"
"To Admit a Dim Tot[r], by [if player is male]Dom Tait[else]Ida Mott[end if]"
"To Air a Riot[r], by Tori Aratio" []
"To Annex No Texan[r], by Ax Tonne"
"To Argue Outrage[r], by Geo Ruta" []
"To Ask the Hot Takes[r], by [if player is male]Theo Kast[else]Kesha Ott[end if]"
"To Ban No Bat[r], by [if player is male]Bobo Attann[else]Nona Abbott[end if]"
"To Bathe The Boat, Both Ate[r], by [a-b] Toth"
"To be a PC Beat Cop[r], by Pat Boce"
"To Behold the Blood: Bolted, Oh[r], by Theo Bold"
"To Blast At Blots, Lost Bat[r], by Al Botts"
"To Breach a Botcher[r], by [if player is male]Herb Cato[else]Echo Bart[end if]"
"To Brush Thus, Bro[r], by Bo Hurst"
"To Burst Tut's Orb[r], by Burt Ost"
"To Cal, a Clot[r], by Tat Allocco"
"To Care at Core[r], by [if player is male]Art Coe[else]Coretta Corea[end if]"
"To Carry Racy Rot[r], by Art Cory"
"To Charm or Match[r], by Mart Cho & Mac Hort"
"To Chase at Echos[r], by [if player is male]Teo Cash[else]Esta Cho[end if]"
"To Cheat Each Tot[r], by Etta Cho"
"To Chew the Cow[r], by Chet Wo"
"To Crack TrackCo[r], by Cat Rock"
"To Crush Hot Curs[r], by Scot Ruh"
"To Deal Old Tea[r], by Tadeo Tellado"
"To Decay Yet: Coda[r], by Ty Acedo"
"To Dine on Diet: Done It[r], by [d-t] Nei"
"To Drama, Matador[r], by [if player is male]Tad Roma[else]Dora Tam[end if]"
"To Drip: Drop It[r], by Dr. Poit"
"To Dust? Tut, Sod[r], by Su Todt"
"To Dying, Tiny God[r], by Ty Godin" []
"To Enamor Tan Romeo[r], by [if player is male]Nat Moore[else]Mae Orton[end if]"
"To Enter RoteNet[r], by Rene Ott"
"To Fails: a List of Ol['] Fiats[r], by Flo Tsai" []
"To Farms of Smart Formats[r], by [if player is male]Sam Fort[else]Ma Frost[end if]"
"To Farts at Forts, Far Tots, Fo['] Start[r], by Ros Taft"
"To Fear A Forte or Fate For Tea[r], by Frere Afotota"
"To Fearing No Frigate[r], by [if player is male][else]Inga Forte[end if]"
"To Feels So Fleet[r], by Leo Fest" []
"To Fine One Fit[r], by Toni Fife-Neto"
"To Finish This Info[r], by [toti] Fish"
"To Flag at Golf[r], by Gala Lott-Goff" []
"To Flank Not Flak[r], by Flo Kant" []
"To Fray Fat Roy[r], by Art Foy"
"To Freeze Zero Feet[r], by Zoe Efret"
"To Get a Toe Tag[r], by Og Tate"
"To Groan or Tango[r], by [if player is male]Art Goon[else]Tora Ong[end if]"
"To Hack OKChat[r], by Kat Cho"
"To Hammer Math More[r], by [if player is male]Tom Maher[else]Emma Roth[end if]"
"To Hamper Metaphor[r], by Mart Hope"
"To Handle Old Ethan[r], by Dale Thon"
"To Hans: No Hats[r], by [if player is male]Stan Ho[else]Shonta Haston[end if]"
"To Harm Math or Mr. Oath[r], by Mo Hart"
"To Heal a Hotel[r], by Theola Olathe"
"To Herd the Rod[r], by Ed Roth"
"To Icemen: Notice Me[r], by [tt] McNee"
"To Jabs at Jobs[r], by Jo Bast"
"To Jail, I: a Jolt[r], by Lita-Jo & Tia Jol"
"To Jon, not Jo[r], by Jonjo Otton"
"To Kibosh This Book[r], by Tib Hooks & Tobi Okhs"
"To Kidnap Dat Pinko[r], by [if player is male]Tank Diop[else]Kit Pando[end if]"
"To Land, Old Nat![r] by Tonald Dalton" []
"To Lands and Lots[r], by Old Stan Dalston" []
"To Lash a Sloth[r], by LaTosha Holst"
"To Leach the Coal: Lo, Cheat[r], by Chet Ola & Ace Holt"
"To Lean on Late[r], by Leanna Tootle" []
"To Leave: Eat, Love[r], by Tova Lee"
"To Levying Yet-Loving Longevity[r], by [if player is male]Tiny Vogel[else]Elyn Voigt[end if]"
"To Lies I Stole[r], by Eli Tso"
"To Live? Love It[r], by Olive Levitto"
"To Lives I've Lost[r], by Les Voit" []
"To Madden Mean Todd[r], by Ted Damon"
"To Manage Tea Among a Montage[r], by Gena Mota"
"To Mash a Moth's Most AH[r], by Thomas Thomas"
"To Match Mac Toth[r], by Matt Cho, Mo Tatch & Cat Thom"
"To Mean No Meat[r], by Nat Moe"
"To Meg: Got Me[r], by Toto Eggemm"
"To men? Not me![r], by Monte Moten"
"To Milk Mt. Kilo[r], by Kim Olt"
"To Moans at Moons[r], by Sam Toon"
"To Mr. Weak Teamwork: Take, Worm[r], by Tom Waker"
"To Mush-Mouths: Um, Tosh[r], by Tom Hsu"
"To Neomi: Emotion Too Mine[r], by Nemo Ito"
"To Nerf No Fret[r], by Fenton Ferrot"
"To No Email Emotional[r], by [if player is male]Milo Eaton[else]Iola Monet[end if]"
"To Obey Ye Boot[r], by Ty Oboe & Bo Toye"
"To Pains So Inapt[r], by [if player is male]Otis Pan[else]Nia Post[end if]" []
"To Paint, Tap Into Pain, Tot[r], by Tia Pont"
"To Pals Postal[r], by Sal 'Pops' Latto" []
"To Park at Pork[r], by Art Pok" []
"To Parry or Party[r], by [if player is male]Troy Arp[else]Tyra Orp[end if]" []
"To Parse or Paste a Poster[r], by Seaport [if player is male]Pat Rose[else]Tresa Po[end if]"
"To Pass by Bay Spots[r], by Pat Bossy"
"To Paste Teapots[r], by Pat Seto"
"To Paths Past Hot[r], by Pat Tosh" []
"To Pay for Yo['] Fop Art: Oft Par, Oy[r], by Fay Troop"
"To Pickles, Ol['] Skeptic: Slick Poet Stockpile[r], by Kelci Post"
"To Plan an['] Plot[r], by Al Pont & Patton Pollan" []
"To Prise Pietro's Ropiest Riposte So Tripe[r], by Tip Rose" []
"To Raffle Fleafort[r], by Leta Roff"
"To Rage at Gore[r], by Georgetta Rao"
"To Rave Over at a Voter[r], by Eva Ort" []
"To Reach or Cheat[r], by Art Cheo"
"To Read a Trode[r], by Deedra Totaro"
"To Read or Date[r], by Taddeo Traore" []
"To Reefs of Trees, or Fetes, Foester[r], by Foreste Seefort"
"To Relish her Toils So Lither[r], by Leo Hirst"
"To Repent Potent-er? Not Peter[r], by Trent Poe"
"To Resign or Get Sin[r], by [if player is male]Ron Geist[else]Teri Song[end if]"
"To Rest a Toaster[r], by Art Seto"
"To Reveal Ever a Lot[r], by Vera Leto"
"To Revels, Ever-Lost Lovester Rosevelt[r], by Steve Lor"
"To Ride or Diet[r], by Ed Troi" []
"To Rip a Riot, Pa[r], by Portia Priato"
"To Rip or Tip[r], by Pio Porritt"
"To Risks or Skits[r], by Kit Ross" []
"To Ron, or Not: No Rot[r], by Norton Root" []
"To Rudy: Dry Out, Turd, Yo![r], by Dour Ty"
"To Sail is a Lot[r], by Al Tsoi"
"To Sales so Stale[r], by Les Tsao"
"To Sand Not Sad[r], by Don-Tad Santos"
"To Satan: a No, STAT[r], by Nat Sato"
"To Saul: Soul at a Lotus[r], by Lu Sato"
"To Save a Stove[r], by Eva Tso"
"To Scale a Closet[r], by Les Cato" []
"To Scar or Scat[r], by Cora St. Castro"
"To Scorn Not Orcs[r], by Ron Scot"
"To Scrap at Crops[r], by Scot Arp"
"To Scream at Comers[r], by Tom Cesar" []
"To Screen No Secret So Recent[r], by [if player is male]Ernst Coe[else]Rene Cost[end if]"
"To Secure Rote Cues[r], by Sue Ector"
"To Shame Some Hat[r], by Tom Ashe"
"To Share Hates or a Hoster[r], by Art Shoe" []
"To Sir: Riots Roist[r], by Siri Troost"
"To Slave at Loves[r], by [if player is male]Tal Vose[else]Lost Eva[end if]"
"To Slur or Lust? Rust, Lo[r], by Lu Rost"
"To Smack at Mocks[r], by Tom Sack"
"To Smear Meats or Some Art: Roast [']Em, Mr. Oates[r], by Mart Seo" []
"To Snap on Past[r], by Patton Spanos" []
"To Snare No Tears[r], by Nat Rose" []
"To Snark Rants, OK[r], by Ron Kast"
"To Sneak One Task[r], by Ken Sato"
"To Sniff off Nits[r], by Toffins Tiffson"
"To Sob, Sot Bo Boots[r], by Bobo Stoots"
"To Spin No Tips[r], by Postin['] Piston Si Pont" []
"To Stake OK Taste[r], by Etta Kos"
"To Stall All Tots[r], by Sal Lott"
"To Stand Tots and Nod, Stat[r], by [d-t] Nast"
"To Start at Trots[r], by Ra Stott"
"To Steal Lost Tea[r], by Sol Tate"
"To Stink As Tato Skins[r], by [if player is male]Kit Santos[else]Isa Knotts[end if]"
"To Stories: Tortoises Resist Too[r], by [if player is male]Toto Reiss[else]Rossie Ott[end if]"
"To Such a Scout: Ah, Cash Out![r] by Scot Hua"
"To Surlier Or Lustier[r], by Tori Luers"
"To Survey Your Vest[r], by Rus Tovey"
"To Swing on Twigs[r], by [if player is male]Tig Snow[else]Gwin Tso[end if]" []
"To Syphon Typhoons So, Python[r], by Hy Poston"
"To Tackle Cott Lake[r], by Katt Cole & Kate Colt"
"To Thresh the Short[r], by Seth Roth"
"To Train or Taint[r], by Ron Tait"
"To Trap Top Art[r], by Pat Ort"
"To Trim Mr. Tito[r], by Mo Ritt"
"To Twin: It Won't Win, Tot[r], by No-Twit Witton"
"To Unravel a Novel Rut[r], by Raul Vento"
"To Urbs Robust[r], by Brutus Botros"	100
"To Weary Year Two[r], by Ewa Troy"
"To Weigh With Ego[r], by Og White"
"To Write Rote Wit: ow, Trite[r], by [if player is male]Trot Wei[else]Teri Two[end if]"
"To Ye Music: Use Comity, City Mouse[r], by Coy Mitsue"
"To Zap a Potz[r], by Topaz Pat Oz"
"Toast [']em to steam[r], by Tom East"
"Toast to Tattoos[r], by Toto Ast"
"Tobago, Bogota[r], by Ag Boot"
"A Toddler's Old Trades[r], by Del Rostad"
"Toenail Elation[r], by [if player is male]Leo Tian[else]Ali Eton[end if]"
"A Toil to Ail[r], by Tolia Alito"
"Token Sign, Stone King[r], by Kent Goins"
"Token-Yes Keynotes[r], by Tyson Kee"
"Tolbert's Blotters[r], by Sol Brett"
"Told [']Em to Meld: Dolt, Me[r], by Ed Motl"
"Told Now, Old Town[r], by Don Wolt"
"A Toll to All[r], by Lola Allott"
"Tom Cly: My Colt[r], by Ty Colm"
"Tom's Puns Most Spun[r], by Puntmoss Stumpson"
"Tomatos to Atoms[r], by Matt Soo"
"Too Corny or Not Coy[r], by Troy Coon"
"Too Far for Tao[r], by Art Foo"
"Too Fried to Die For[r], by [d-t] Fiore"
"Too Hard to Hoard[r], by Art Hood" []
"Too Many May Not, O[r], by Mat Yoon-Montoya"
"Too-Smart Stat Rom[r], by Matt Roos"
"Too Young, You Go Not[r], by Tony Ogou"
"Toot Loads, Toadstool[r], by Aldo Sotto"
"Top-Class Caps Lost to Scalps[r], by Pat Closs"
"Top Denial Planetoid[r], by Del Patino"
"Top Hex: the Pox[r], by Tex Pho"
"Top Itch, Po['] Titch[r], by Chip Ott"
"Top Poetry Prototype[r], by Toto Pyper"
"Top Secret Pet Sector[r], by Scott Peer"
"Top-Shore Hoopster Hopes Rot[r], by [if player is male]Seth Roop[else]Sher Toop[end if]"
"Top Slang Long Past[r], by Stan Glop"
"Topically? Lo, Typical[r], by [if player is male]Ty Cipolla[else]Lacy Pilot[end if]"
"A Torch to Char[r], by Art Cho"
"Torchin['] Corinth[r], by Nic Roth-Richton"
"Torn Hut, Not Hurt[r], by Tut Horn"
"Torn Map? Tramp On[r], by Pam Nort"
"A Torn Tartar Noon: No Art[r], by [if player is male]Ron Taranto[else]Tara Norton[end if]"
"Torn Wing: Grin Nowt[r], by Wirt Nong"
"Tornado Donator[r], by Dan Root"
"Tory Chen, the Corny[r], by Trey Cohn" []
"Tot, Bug a Tugboat[r], by Gab Tout"
"Tot Gabe Got Beat[r], by Bo Tatge"
"Total Held Death Toll[r], by Odell Hatt"
"Totally Tall Toy[r], by Lyla Ott"
"Tote Bag Got Beat[r], by Gabe Ott"
"Tough Ones Not So Huge Gone South[r], by Hugo Osten"
"Tough Shire, Our Heights: The Roguish Eight Hours[r], by [if player is male]Sergio Huth[else]Tori Hughes[end if]"
"Tough to Laugh, Al[r], by Hugo Alt" []
"Toughest:  Ghetto, Us[r], by Theo Gust & Hugo Test"
"Towable Teabowl[r], by Bo Ewalt"
"Toyless Ty Loses[r], by [if player is male]Les Yost[else]Tess Loy[end if]"
"Trade Me Red Meat[r], by Tam Reed"
"Trail of Oft-Liar: Rot, Fail[r], by [if player is male]Art Foil[else]Tia Rolf[end if]"
"Train in Art[r], by Rini Rattan" []
"Traitors['] Rat-Riots[r], by Tio Starr"
"Traits I Start[r], by Artist Trista"
"Tramp On, Torn Pam[r], by Po['] Mart'n Portman" []
"Transcending Nascent Grind[r], by Cats Drenning"
"TransitCo Con Artist Nat Cristo[r], by Tori Scant"
"Transpire, Terrapins[r], by [if player is male]Stan Perri[else]Pat Risner[end if]"
"Trap Hotel: the Portal, Earth Plot[r], by [if player is male]Hal Potter[else]Opal Rhett[end if]"
"Treacliness Centralises[r], by [if player is male]Case Nistler[else]Selena Crist[end if]"
"Tread, Dead Ratter[r], by Detra Detar" []
"Treatment Matter Ten[r], by Natt Emert"
"Treble Belter[r], by Elbert LeBret"
"Trek Be Won, Went Broke[r], by Kent Bower"
"Tremont's Torments[r], by Tom Stern"
"Trench-Wise Winchester[r], by [if player is male]Erwin Tesch[else]Cristen Hew[end if]" []
"Trendies['] Nerdiest Resident[r], by Sid Treen" []
"Trey Had the Yard[r], by Thad Rey"
"A Trial or Toil: Oratorial Lit[r], by Lorita Tailor"
"A Tribe: Bear It[r], by Bettie Ibarra" []
"Tribesmen's Tenebrisms[r], by [if player is male]Brent Simes[else]Bess Minter[end if]"
"Tried God, Got Re-Did[r], by Todd Iger, Ted Gordi & Goodridge Redditt"
"Tried to Do Trite[r], by Detroit Di Otter"
"A Trim Mr. Tai[r], by Marti Mitra"
"Trips to Stir Pot[r], by Ros Pitt"
"Trod Hikes Other Kids Risked, Tho['][r], by [if player is male]Theo Dirks[else]Kit Rhodes[end if]"
"Trojan Rat Jon[r], by Jan Ort"
"A Troll, All Rot[r], by Art Oll"
"Trollin['] Til Lorn[r], by Ron Till"
"Trophies to Reship[r], by Trish Poe" []
"Troubled Old Brute, Loud Bert, But Older[r], by Bud Toler"
"Truce Re-Cut[r], by Cuc Reutter"
"True Story, Yore Trust: Oyster Rut[r], by Roy Sutter"
"Truest Utters[r], by Stuert Sutter"
"Trusty Try, Stu[r], by Ty Rust"
"Try a Vice: Evita, Cry,[r] by Ray Civet"
"Try Again, Giant Ray[r], by Tina Gary"
"Try Any Rant: Tar Tyranny[r], by Taryn Ryant"
"A Try As Astray[r], by Ty Saar"
"Try Bein['] Tiny Reb Britney[r], by Brent Yi"
"Try Caring, Crying Rat[r], by Caryn Trig & Tracy Ring"
"Try On, Ron, Ty[r], by Toryn Yornt"
"Try? Oy, Rot[r], by Tyro Tory Troy"
"Tubes, Cans, Substance[r], by Bess Cantu"
"Tuesday Sea Duty: Aye, Dust[r], by Stu Eady" []
"Tuliver Rivulet[r], by [if player is male]Lui Vert[else]Vi Rutle[end if]"
"Tumble Down, Dumb New Lot[r], by Bowle Mundt"
"Tumbled Mud-Belt[r], by Ted Blum"
"Tundras and Ruts Turn Sad[r], by [if player is male]Dan Rust[else]Su Arndt[end if]"
"Tune Out One Tutu[r], by Tut Ueno"
"Turbinal Tribunal[r], by Brant Lui" []
"Turbo-Snobs So Stubborn[r], by Boss Burton"
"Turgid Tea, Gut Tirade, Gratitude[r], by Ida Gutter"
"Turing's Grunt is Rusting[r], by Stu Ring"
"Turn, Heal, Lutheran[r], by [if player is male]Neal Hurt[else]Ruth Lane[end if]"
"Turn There: the Return[r], by Trent Ruhe"
"Tut, Snob: Bust Not, Buttons[r], by Bo Stunt"
"Tut's Den: Dust Net[r], by Stu Dent" []
"Twas When Shaw Went What's New[r], by Stew Hawn"
"Tweedy Yet Wed[r], by Ty Weed"
"Twilight's Light-Wits[r], by Gil Wishtt"
"Twilights With St. Gil[r], by Stig Wilth" []
"Twin Lakes: Like, Wants[r], by [if player is male]Nat Wilkes[else]Lin Swatek[end if]" []
"Twin Lakes: Wink's Tale[r], by [if player is male]Lew Atkins[else]Tena Wilks[end if]"
"A Twist: [']Twas It[r], by Si Watt"
"Two Doors: Words, Too[r], by Tor Woods"
"Two Hands Won't Dash[r], by [d-t] Shawn"
"Two Males['] Last Meow[r], by Les Mowat"
"Two Million Will Motion: No Low Limit[r], by Milo Wilton"
"Two Years['] Artsy Woe: Yea, Worst[r], by Ray Toews"
"Ty, Adam, My Data[r], by Tad May"
"T/Y Tons, Snotty St. Tony[r], by Sy Tont" []
"Ty's Claim: Mystical Slimy Cat[r], by Stacy Lim"
"Type More Poetry, Me[r], by Peter Moy" []
"Type Words, Rowdy Pest[r], by Spot Dwyer" []
"A Typhoon: Any Photo[r], by Tonya Hop"
"Typical Alp City[r], by Ty Calip"
"Ubaldo's Busload[r], by [if player is male]Sol Daub[else]Su Baldo[end if]"
"Uber-Rich Rubric, Eh[r], by Herb Cuir"
"UCLA, ACLU[r], by Luca Caul"
"Udder Users[r], by Dr. Sue Redus"
"UFO Nuts: Fun to Us[r], by Su Fount"
"Ug, Leap, Plague[r], by Lu Page"
"Ug, Near An Urge[r], by Reagun Augner"
"Ug, Ye Ol['] Eulogy[r], by Gy Loue"[]
"Ugh, Left the Gulf[r], by Tug Fehl"
"Uglier, Gluier[r], by Geri Lu"
"Uglies['] Guiles[r], by Eli Gus"
"Ugly Hack, Cagy Hulk[r], by Guy Chalk"
"Ugly Manor, Normal Guy[r], by Maury Long" []
"Ugly Old Doll Guy[r], by Goldy Lu" []
"Uh, Gents, the Guns Stung, Eh?[r] by Gus Neth"
"Uh, Goodby, Doughboy[r], by Hugo Boyd"
"Uh, Greet the Urge[r], by [if player is male]Treehug Guthree[else]Ruth Gee[end if]"
"Uh, Mo['] Drab Bad Humor[r], by Bo Durham"
"Uh, Parable[r], by Paul Baehr, Alpha Rube"
"Uh, Slate a Hustle[r], by Stu Hale"
"Ulcers, eh, Hercules? He's Cruel[r], by Lee Schur"
"Um, Rot: Out, Mr. Tumor![r] by Mort Umurto"
"Um, Star, a Strum[r], by Rustam Martus"
"Um, Try to, My Tutor[r], by Roy Mutt"
"Un-blame Albumen, Blue Man[r], by Ben Maul"
"Un-Fad: Fund a Fun Ad[r], by Dan Fu"
"Un-Last Sultan[r], by Stan Lu"
"Un-Phallic Lunchpail[r], by Paul Linch"
"Un-Reap a Prune[r], by Ren Pau"
"Un-Shriek, Shuriken[r], by Hsiu Kern"
"Un-Tired Dire Nut[r], by Derin Tu" []
"Un-Tragic Curating[r], by Ric Gaunt" []
"Unable Nebula[r], by Ben Lau"	60
"Unbias Abusin['], Anubis[r], by Su Bain"
"Unbid, He's Behind Us[r], by [if player is male]Bud Hines[else]Enid Bush[end if]"
"Unbreathable Burnable Hate[r], by [if player is male]Beale Rathbun[else]Anabel Hubert[end if]"
"Uncle Sam: Lean Scum[r], by Len Camus"
"Uncover No Curve[r], by Coren Vu"
"Underrated, Unretarded[r], by [if player is male]Reed Durant[else]Edda Turner"
"Undre My, Um, Nerdy Dry Menu[r], by Rudy Men"
"Uneasy Sun, Aye[r], by Sean Yu"
"Unfair Ruin, Fa![r] by Rufina Funari" []
"Unfavorable Flu Ran Above[r], by Bruno LaFave & Evan Balfour"
"Unfettered Deft Tenure Turned Fete[r], by Deren Tufte"
"United in Duet[r], by Ed Tuin & Edi Tun"
"Universal Evil Ran Us[r], by Vera Linus" []
"Univores['] Souvenir[r], by [if player is male]Evon Suri[else]Venus Rio[end if]"
"Unlent Tunnel[r], by Lenn Tu"
"Unliked Kin Duel[r], by Eli Knud"
"Unlist Sunlit Untils[r], by Stu Lin" []
"Unmasking Unmakings[r], by [if player is male]Angus Mink[else]Su Kingman[end if]"
"Unmerited Time Under[r], by [if player is male]Tim Rudeen[else]Trudie Men[end if]"
"Unoriginal? Lo, Gain Ruin[r], by Luigi Ronan"
"Unreadable? Blaa, Endure[r], by Renae Abdul"
"The Unripe Up in There[r], by Ruthie Pen"
"Unsanitary Aunty Rains[r], by Tisa Runyan"
"Unskilled Slunk Idle[r], by [if player is male]Del Luskin[else]Kelsi Lund[end if]"
"Unslumped Pendulums[r], by Lupe Munds"
"Unsoiled Delusion[r], by Leo I. Sund"
"Untamed Mad Tune, Daunt Me[r], by Mute Dan"
"Unto a BFF: Not a Buff Bouffant[r], by Nat Buffo"
"Unto Far Fortuna[r], by Taron Fu" []
"Untoiling Outlining[r], by Lin Guiton"
"Unworkable Labour Knew One Bulwark[r], by [if player is male]Ruben Wolak[else]Luna Bowker[end if]"
"Up, Elder Prelude[r], by Del Peru"
"Up, Hotel, Help Out[r], by Lou Peth" []
"Up Into a Utopian Pain-Out[r], by Pati Uno"
"Up Mist I Stump[r], by Stu Pim"
"Up, Sages! Pegasus Pages Us[r], by Gus Pesa"
"Up, Sorest True Sops['] Postures[r], by Poet Russ"
"Upham's Mashup[r], by Pam Hsu"
"Uplands and Plus[r], by Pal Sund"
"Ur-Yawn Runway[r], by Ryan Wu"
"The Urban Hate-Burn: Bane, Hurt[r], by [if player is male]Herb Tuan[else]Reba Hunt[end if]"
"Urge It, Wry Writer Guy[r], by Gerrity Wu"
"Urgent Mist Mutterings[r], by Ming Sutter"
"Us Again, Iguanas[r], by [if player is male]Gus Aina[else]Isa Aung[end if]"
"Us Dames Assumed a Mussed Medusa's Sued Sam[r], by Ed Asmus"
"US Eagle Leagues[r], by Gus Elea & Saul Gee"
"Us Got Ye Gout, Yes?[r] by Guy Esto"
"Us, Half a Flush[r], by Alf Hsu"
"Us, Late, St. Eula?[r] by Stu Lea" []
"Us, Storied Outsiders[r], by Susie Dort & Stu DeRosi"
"USA-Made: Amadeus[r], by Sue Adam"
"Uselyss Ulysses[r], by Ly Seuss"
"Usher Not, Hurt Ones[r], by Rose Hunt" []
"Utterances Sent Acuter[r], by [if player is male]Curt Santee[else]Reena Cutts[end if]" []
"Vacation, a Use: Evacuations[r], by [if player is male]Isaac Venuto[else]Onita Cuevas[end if]"
"The Vagrant That Graven[r], by Garth Avent"
"Vague PI: I Gave Up[r], by Eva Puig"
"A Vaguer Veg Aura[r], by Ava Ruge-Guevara"
"Vain Dance Can Invade[r], by [if player is male]Vince Dana[else]Diann Cave[end if]"
"Vain Odds and Voids[r], by Sadid Von Davidson"
"Valencia's Valiances[r], by [if player is male]Alvin Case[else]Eva Caslin[end if]"
"Valid ID, Alv[r], by Vladi Vidal"
"Valid Rune Unrivaled[r], by [if player is male]Levi Duran[else]Erin Duval[end if]"
"Valter's LaserTV Travels[r], by Al Verst" []
"Van Alstine's Valiantness[r], by Ivan Stansel"
"Variety: I've a Try[r], by Ty Viera"
"Varityped Depravity[r], by [if player is male]Davy Petri[else]Vita Pryde[end if]"
"Veal Vale, Valve Ale[r], by Eva Valle"
"A Vector to Carve Cave-Rot[r], by [if player is male]Trav Coe[else]Eva Cort[end if]"
"Velour Louvre[r], by Lu Rove"
"Venial to Not Alive[r], by [if player is male]Vito Lane[else]Iva Elton[end if]" []
"Verily Yr. Vile[r], by Irv Ely"
"Vernie Dent Intervened, Reinvented[r], by Deren Venti"
"Veronica's Vice: ARSON[r], by Oscar Vine"
"Versatile Relatives[r], by Avi Lester" []
"Very Like Every Ilk[r], by Keri Levy"
"Very Nice: Even I Cry[r], by Vince Rey"
"Very OK Li'l Yorkville[r], by Kelly Ivor"
"Very Old Dry Love[r], by Rod Levy"
"Very Select Secret Levy[r], by [if player is male]Everest Cly[else]Eve Crystle[end if]"
"Vestal Valets[r], by Lev Ast"
"A Victim's Activism[r], by [if player is male]Tim Savic[else]Vi Stimac[end if]"
"Vidal? Advil![r] by Lida V. & Vida L" []
"Vie-Ville[r], by Evil Levi" []
"Vigor Sprees: Prigs Ever So Progressive[r], by Virgo Speers"
"Vile [crap-u], Viper Cal![r] by Percival Cravelip" [x]
"Vile Con Clive, No[r], by Nic Love & Vin Cole"
"Viler Bums['] Bulverism[r], by Ervis Blum"
"Viler-Fork River Folk[r], by Rif Volker"
"Vin Has His Van[r], by Vi Nash"
"Vine Vein[r], by Ivie Venn"
"Vines-Gate: It Avenges Negatives[r], by Evan Geist"
"A Violent Naive Lot[r], by Toni Vale"
"Virgos['] Vigors[r], by Viv Roos-Riggs"
"Virtue Leaps, Superlative[r], by [if player is male]Paul Sievert[else]Lupita Evers[end if]"
"Vita's Vista[r], by Avis Savitt"
"Vito, Cry Victory[r], by Ivy Cort"
"A Vixen, Ex-Vain[r], by Eva Nix"
"Vlog in Nil-Gov[r], by Gil Von Ingvol" []
"A Vogue's So Vague[r], by Su Govea"
"The Voices Echoise TV[r], by Steve Choi"
"Voracity: A Victory[r], by Racy Vito"
"Vote Loser Roosevelt[r], by Loo Everts"
"Vs. Mean Mavens[r], by Nev Sam"
"Vulnerable Verbal Rune[r], by LaVern Blue"
"Wage-Mopers['] Sewage-Romp Power Games[r], by Marge Swope"
"Waldner's Nerd Laws[r], by Ned Rawls & Len Sward"
"Waldo's Old Saw[r], by Sal Dow" []
"Walk Over Workvale[r], by Kev Orlaw"
"Wallabies['] Able Wails[r], by Blaise Law"
"Walled Lad Lew[r], by Del Law"
"Wan Times, Same Twin[r], by Stew Main"
"Wanders to a Worst Den[r], by Don Waters" []
"Want to Do Toad Town[r], by [if player is male]Natt Wood[else]Dawn Otto[end if]"
"War Bodes Bad, Worse[r], by [if player is male]Drew Sabo[else]Bea Sword[end if]"
"War Cash Car Wash[r], by Ash Craw" []
"War-Owned, Onward, We Wear Down [r], by Owen Ward"
"The War Wreath Thawer[r], by Art Hew" []
"The Ward: Wet, Hard[r], by Tad Rhew"
"Wardle's War Sled[r], by Sal Drew"
"Wariest, Swear It[r], by Ira West"
"Wariest Waiters[r], by Ari West" []
"Warlocks['] Laws Rock[r], by Cal Skrow"
"Warm Boy Mowbray[r], by Mary Bow"
"Warp Drive Viper, Draw[r], by Pew Rivard"
"A Warp Over Vaporware[r], by Eva Parrow"
"Warthogs, Grow Hats[r], by Garth Sow"
"Was I Not Wastin['][r], by Tia Snow"
"Wasted Health: What's the Deal?[r] by Halsted Wheat"
"A Waster, Awarest[r], by Wes Tara"
"Waster of Wafers: to Swear, Oft[r], by Ewa Frost"
"Wastrel Walters[r], by Lew Star" []
"Water, I Write: a Waiter[r], by Art Wei"
"Waterfall Flaw Alert[r], by Walt Faler"
"Watershed Draws Thee[r], by [if player is male]Wes DeHart[else]Hesta Drew[end if]"
"Watkins Winks at Kit Swan[r],  by K. T. Swain"
"The Way Up: We Put Hay[r], by Apu Wyeth"
"The Way: Why Eat?[r] by Ty Ahew" []
"Wayne's New Say[r], by Wes Yan"
"The Ways They Was[r], by Ty Hawes & Stew Hay"
"We Avoid Avid Woe[r], by Evia Dow"
"We Bores Be Worse[r], by Bo Ewers"
"We Both Bow: the Hot Web[r], by Thoth Bewebow"
"We Bother the Bower[r], by Bee Worth"
"We Bruised Budweiser[r], by Sudie Werb"
"We Don't Wend to Den Two[r], by Ed Town"
"We Don't Wend to Town, Ed[r], by Dot Wen"
"We Drop Powder[r], by Rod Pew"
"We Hit White[r], by Whitt Weihe"
"We Rack a Wreck[r], by KC Ware-Wacker"
"We Ran to No Water[r], by Nat Rowe" []
"We Refill Free Will[r], by Lew Friel"
"We, Sad as Dew[r], by Dawes Sweda"
"We Seek Skew[r], by Eskew Weeks"
"We Share Her Awes[r], by Ash Ewer & Wash Ree" []
"We-So-Mad Meadows[r], by Mo Dawes"
"We Soak So Weak[r], by [if player is male]Wes Kao[else]Ewa Kos[end if]"
"We Sold Old Wes[r], by Les Dow"
"We Stand and Stew[r], by Ted Swan"
"We Trash Wreaths[r], by Wes Hart & Ash Wert"
"We Try Any Entryway[r], by Rey Wyant"
"We'd Fear Raw Feed[r], by Fae Drew"
"We've Hit the View[r], by Ev White" []
"Weakly, Kyle? Aw[r], by Kay Lew"
"Weakside Idea-Skew[r], by Ike Dawes"
"WebIDTech: Bewitched?[r], by Deb Weicht"
"Webs and Bad News[r], by Ben Daws"[]
"Webs to Bestow[r], by Bo West"
"Weep, Nag, New Page[r], by Ewa Peng"
"Weirdos So Wired[r], by Rod Wise" []
"Well, I Think He Will Knit[r], by Wilt Hinkle"
"Welles-Sewell: We Sell[r], by Les Lew"
"Welsh Moor Wormholes[r], by Sherm Wool"
"A Wench Can Hew[r], by A. W. Chen"
"Were Thou Out Where[r], by Hue Tower"
"Wet Malt, Mel Watt[r], by Matt Lew"
"Wet Pious Wipeouts[r], by St. Opie Wu"
"Wet Skin Stink, Ew[r], by Ken Wist"
"What a Story: Worth a Stay[r], by [if player is male]Wyatt Haros[else]Tosha Tawry[end if]"
"What Ed Had Wet[r], by D. Wheat" []
"What I Love: a Lithe Vow[r], by Evita Wohl"
"What I Need: a Newt Hide[r], by [if player is male]Dean White[else]Enid Wheat[end if]"
"What, Sire, Wear THIS?[r], by [if player is male]Stew Hari[else]Teri Shaw[end if]" []
"What to Say? Why, a Toast[r], by [if player is male]Wyatt Shao[else]Tosha Wayt[end if]"
"Whatever, Rev. Wheat[r], by T. H. Weaver"
"Whatever the Waver[r], by Eva Werth"[]
"When I Got to Whinge: Gone, With no Weight[r], by [if player is male]Theo Wing[else]Gwen Hoit[end if]"
"When Its News Hit[r], by Swenith Weshtin"
"When to Ink: in the Know[r], by Ken Howtin"
"Where Top Hero Wept[r], by Hope Wert"
"Whereat We Heart Ere-Thaw Weather[r], by Tre Ahew"
"Whereto Is Otherwise[r], by Rose White"
"Whimsical Claim-Wish[r], by Wilma Isch"
"A Whine Anew: Hi[r], by Wei Han"
"Whiner, Get Green With Wing Three[r], by [if player is male]Gene Wirth[else]Gwen Reith[end if]"
"The Whiny in the Why[r], by H. Whitney"
"Whistler, He Twirls[r], by Trish Lew"
"Whistler's Shrew List[r], by Shirl West"
"White Mr. Whitmer[r], by Tim Rhew"
"Who Left the Wolf[r], by Lew Hoft" []
"Who Rated Death Row[r], by Wade Roth & Theo Ward" []
"Who Ties This Woe So White[r], by Wes Hoit"
"Who Traced the Coward[r], by [if player is male]Chad Tower[else]Ewa Dortch[end if]"
"Who Treks the Works[r], by Wes Korth"
"Who Won't Dig With God Now[r], by Dwight Woon"
"Who's Great: Ego's Wrath[r], by [if player is male]Seth Wargo[else]Sage Worth[end if]"
"Who's Local: Law School[r], by Laslo Chow"
"Why East? They Saw the Ways[r], by Stew Hay"
"Why I Can't Act Whiny[r], by Tawny Chi"
"Why I Net Thy Wine[r], by Whitney Thinyew"
"Why I Sat This Way[r], by Hy Waits & Tay Wish"
"Wild Bo's Low Bids[r], by Sid Blow"
"Wild Glen Dwelling[r], by Gwen Dill"
"A Wild ID Law[r], by Walid Lidwa"
"Wild Ted's Twiddles[r], by Wilt Edds"
"A Wilder, Idle War[r], by Eli Ward" []
"Wilfredo, Dire Wolf of Wilder Row Field[r], by Ford Weil"
"A Win? I? Naw[r], by Iwan Wain"
"The Winds Hint Dews[r], by Stew Dinh & Ned Whist"
"Wine or Ire Now[r], by Ron Wei"
"A Wing I Gnaw[r], by Gwain Wigan"
"Wink To Know It[r], by Twinko Wotkin" []
"A Winner, Erin? Naw[r], by [if player is male]Ren Wain[else]Ann Weir[end if]"
"Winner Wire[r], by Erwin Winer"
"A Winter in Water[r], by [if player is male]Art Wien & Tai Wren[else]Rita New & Tia Wren[end if]" []
"Winterhold in the World[r], by Eldon Wirth"
"Wire Till I'll Write[r], by [if player is male]Wilt Iler[else]Lili Wert[end if]"
"Wiry-Leg Yew-Girl[r], by Gil Wrey-Wrigley"
"Wisdom: Do Swim[r], by Sim Dow"
"The Wisdom Tom Wished, Tim Showed with Demos[r], by Dim Stew Ho"
"Wisdom Verge: Give Me Words[r], by [if player is male]Mr. Edwig Vose[else]Ms. Vergie Dow[end if]"
"Wise Woman is Mean, Wow[r], by Wei Mawson"
"A Wish For Fair Show[r], by Rofi Shaw"
"Wit Song: to Swing no Twigs[r], by Og Swint" []
"With Hate, White Hat[r], by Hew Hiatt"
"With Zero or the Wiz[r], by Zoe Wirth"
"Wither, Old Idle-Worth Lord White[r], by Wilt Rohde"
"Wittner, Written[r], by Ren Witt"
"The Wives' West Hive[r], by Wes Veith"
"Woe, Berserk Worker Bees[r], by Wes Broeker"
"Woes Herein, Hereon Wise[r], by Sherie Owen-Eisenhower"
"Wolf Lore Follower[r], by Rolf Lowe"
"Won't Sal Walston Last Now[r], by Al Towns" []
"Won't Sell a Stone Wall[r], by Lela Towns" []
"Wonderful Low Refund[r], by DeRon Wulf" []
"Wonderful Underflow Flew Round[r], by Rudolf Wen" []
"Wonkery: Know Yer New York[r], by Ryno Kew"
"Woo Kind Wood-Kin I Do Know[r], by Odo Wink"
"Wood Hunts Down South[r], by Stu Howdon"
"Woodier Ride, Woo[r], by Rio Dowe"
"Word Games, Mod Wagers[r], by [if player is male]Mos DeGraw[else]Meg Soward[end if]"
"Work, Play, Wry Polka[r], by Kyla Prow"
"Work Sleep Prowl Seek[r], by Polk Ewers"
"Workable Bleak Row[r], by Bo Walker & Karl Bowe"
"Worked-On Dork Owen[r], by Drew Koon"
"World, Go Grow Old[r], by Lord Gow"
"The World, Wroth-Led[r], by Drew Holt"
"A Worm's So Warm[r], by Sam Row" []
"Worms Feed From Weeds[r], by Ford Mewes"
"A Wormy Elf May Flower[r], by Mary Wolfe"
"Worry Not, Towny Orr[r], by Ron Towry"
"Worry Tons, Sorry Town[r], by Torry Snow"
"Worse than Haters Now[r], by Seth Rowan"
"Worsened Endowers[r], by Red Owens & Wes Roden"
"Worst Foe of Towers Swore Oft[r], by Stew Roof"
"The Worst Shrew-Tot[r], by Stew Roth"
"Worthy Lad: Hardly, Wot?[r], by [if player is male]Thad Lowry[else]Dorthy Law[end if]"
"Wow, St. Len Went Slow[r], by Lew Towns"
"A Wren's Answer[r], by Reswan Swaner-Warnes"
"A Wretch's War Chest Watchers[r], by Chas Wert"
"Wretched Chet Drew[r], by Ced Werth"
"Wriest Writes[r], by Wirt Weissert" []
"Writes I Strew[r], by Wet Sir Si Wert" []
"Writs Dome Most Weird[r], by [if player is male]Tim Sowder[else]Tomi Drews[end if]"
"Wrong Time, Grime Town[r], by Tom Winger"
"XL, On-Ice Lexicon[r], by [if player is male]Neil Cox[else]Cleo Nix[end if]"
"Yack, Bro, By a Rock[r], by Cory Bak"
"Yah, Debt: By Death, They Bad[r], by Beth Day"
"Yahweh, a He: Why?[r] by Hew Hay"
"The Yard: Hydrate? Dry Heat?[r], by Art Hyde & Thad Rey" []
"Yawn, Plot Won't Play[r], by [if player is male]Walt Pony[else]Twyla Pon[end if]"
"Ye Both the Yob[r], by Eb Hoyt" []
"Ye Den Needy[r], by Deeny Deyne"
"Ye Dork, Dr. Okey[r], by Ed York-Rodkey"
"Ye Hardest Three Days Shared Yet[r], by [if player is male]Reed Hasty[else]Thresa Dey[end if]"
"Ye Laden, Leadeny[r], by Danyele Delaney" []
"Ye Old Yodel[r], by [if player is male]Dooley Lyde[else]Dolly DeYoe[end if]"
"Ye Ole Lorry[r], by Elroy LeRoy"
"Ye Raw, Ye War Weary[r], by Ray Ewer-Way" []
"Ye Stoic Society[r], by Ice Stoy"
"Yeah, Write Either Way[r], by Arie Wyeth"
"Yearn, Beg, Green Bay: Bye, Anger[r], by [if player is male]Ben Yager[else]Bree Yang[end if]"
"Yearn, Nayer[r], by [if player is male]Arney Raney[else]Reyna Rayne[end if]"
"Yearn On, Annoyer[r], by Ryan Eno"
"Yell Us Ire Leisurely, Ere I Sully[r], by [if player is male]Yuri Selle[else]Sue Reilly[end if]"
"Yellow, Low Ely[r], by Loy Lew"
"Yelp, Pyle[r], by Ly Eppley"
"Yelp-Set, Ye Slept Steeply[r], by Sly Peet"
"Yep, Al, a Yelp[r], by Paley LePay"
"Yep, Ann, a Penny[r], by Nan Pye" []
"Yep, Ed's Speedy[r], by Des Pye"
"Yep, Sam Pays Me[r], by Pa Syme"
"Yes, Ardor So Dreary Arose Dry[r], by [if player is male]Rory Sade[else]Rosa Dyer[end if]"
"Yes, Arm My Ears[r], by Sam Rey"
"Yes, Bart Betrays By Tears[r], by Rey Bast"
"Yes, Bill, Be Silly[r], by Sly Lieb"
"Yes, Both Bytes, Oh, they Sob[r], by Seth-Boy Sotheby" []
"Yes, Both the Boys[r], by [if player is male]Toby Esh[else]Betsy Ho[end if]" []
"Yes, Ewen Sweeney, New Eyes[r], by Swen Yee" []
"Yes, Farm My Fears, Mrs. Faye[r], by Sam Frey"
"Yes, Groan, Gray Ones[r], by Rose Yang"
"Yes, I Jaw: [r], by Jay Wise"
"Yes, Lu, Win Unwisely[r]., by [if player is male]Wiley Sun[else]Linsey Wu[end if]"
"Yes, Ma, Say Me[r], by Masey Aymes-Mayes"
"Yes-Man Sam Ney[r], by Amy Sen"[]
"Yes, Mend My Needs[r], by Ned Syme"
"A Yes, Mr. Ramsey-Mayers[r], by Sam Rey" []
"Yes, Raw Wry Sea[r], by Wes-Ray Sawyer" []
"Yeshiva is Heavy[r], by Vi Hayes"
"Yet Cavil Actively, Vile Caty[r], by [if player is male]Clive Tay[else]Evita Cly[end if]"
"Yet Coo, Coyote[r], by Toy Coe"
"Yet Harm the Army-Era Myth[r], by Ty Hamer" []
"Yet Roughen the Younger[r], by Theo Gurney" []
"Yet Shirk the Risky, eh, Kristy[r], by Trish Key"
"Yet Walls Ally West[r], by Sly Ewalt" []
"Yet Whilst With Style[r], by Sly Hewitt"
"Yo, Bold Bloody Old Boy[r], by Bo Loyd"
"Yo, Drop Droopy or Dopy[r], by Rod Yop"
"Yo, Frauds, Your Fads[r], by Fay D'Urso" []
"Yo, Groups: Gory Opus[r], by Guy Spoor"
"Yo, Mika, I'm Okay[r], by Kim Yao" []
"Yo, Modern Roomy Den, Dr. Mooney[r], by Don Moyer"
"Yo, Mr., All May Roll Morally[r], by Loyal Mr. Mallory" []
"Yo, Nerdy Drone[r], by Rodney Yerdon"
"Yo, Puns So Puny[r], by Su Pyon"
"Yo, Rapt to Pray: O, Party[r], by Pat Roy"
"Yo, Rend, Dry One[r], by Ned Roy & Don Rey"
"Yo, Rent: One Try[r], by Rotney-Tyrone Toyner"
"Yo, Rogue, Your Ego[r], by Reo Yugo"
"Yokel Herd Keyholder[r], by [if player is male]Kyle Herod[else]Keely Hord[end if]"
"A Yolk Lay OK[r], by Kyoko Layla"
"Yon, a Jig: Gain Joy[r], by [if player is male]Gino Jay[else]Joni Gay[end if]"
"Yon Bald Land Boy[r], by Bo Dylan"
"Yon Desk Donkeys[r], by E. K. Dyson"
"Yon Fit Not, FYI, of Tiny[r], by Ty Fino"
"Yon Mad Monday Dynamo May Nod[r], by Don May" []
"Yon Organza Rannygazoo[r], by Zona Gaynor"
"Yon Pitch Hypnotic[r], by Tony Chip"
"Yon Tearful Funeral Toy[r], by Tony 'Earful' Fauntleroy"
"Yon urge on ye Rug[r], by Geno Ruy"
"Yon Wish So Whiny[r], by Swin Hoy"
"Yon Wrath Way North[r], by Troy Hawn"
"You Can Thwart Wrath, Can't You?[r] by Truth Conaway"
"You Carve Your Cave[r], by Eva Coury"
"Your Choice, Our Icy Echo[r], by Corey Chiou"
"Your Death, Dear Youth[r], by Hearty Duo Theo Audry & Doretha Yu"
"Your Heart, Rare Youth[r], by Arturo Yeh"
"Your Kind, You Drink[r], by Koy Rudin"
"Your Neat Any-Route: Year Unto a Tourney[r], by Tony Auer"
"Yup, I Roister: Superiority[r], by Roy Espiritu"
"Yup, Roam Your Map[r], by Roy Puma"
"Zap, I Use a Size Up[r], by Su Paiez"
"Zap, Lie or Polarize[r], by Zoe Plair"
"A Zine's Zanies: Ian Sez[r], by Sean Zi"
"Zorinho's Horizons[r], by Roz Hoins"

to say an-other:
	say "--an[one of][or]other[cycling] embarrassingly fawning biography of you";

table of sports chatter [xxm05]
blurb
"'Bad calls, ball-cads!'"
"'Bad team? Beat dem!'"
"'Bears are BS!'" []
"'Cal won?! A clown!'"
"'Checked out? Cute. CHOKED.'"
"'Cons rig scoring!'"
"'Dam['] ref. Framed!'"
"'Denton's tendons...'"
"'Ducks suck'd!'"
"'Ed Ford? Odd ref. Fodder.'" []
"'Eh, umps push me.'"
"Elmo mentions he doesn't like the Losin['] Lions."
"'Evah have an ump man up?'"
"'Fake punt. Punk fate.'"
"'Fest for soft ref efforts.'" []
"'Fowler? Low ref.'"
"'Friedel: fielder? Refiled: defiler!'"
"'Fullback? Flab! Luck!'"
"'Gus DeNaro. Dangerous nose-guard.'"
"'Hickson? Chokins[']!'" []
"'Impure umpire.' / 'Sobs, boss.'"
"'Infura-unfair.'"
"'Low shot. ... Who lost?'"
"'Main ref? FIRE, man!'" []
"'Mean ref, Freeman. Men fear...'"
"'Moehring: homering more nigh.'"
"'Mr. Cub? CRUMB.'"
"'Oh, ream a homer more, ha!'"
"On impulse: 'No! Umps lie!'"
"'Our refs? Furores!'" []
"Pompous umps: 'Oops!'"
"'The prize? Three-zip.'"
"'Puck-fu [f-w]-up!'"
"'Rankest tankers!'"
"'The refs? Eh, frets!'"
"'Ridiculous! I...ludicrous!'"
"'Ruined. Ref under fire.'"
"'See-not-ONE-set Osteen? Ee, snot.'"
"'SIX ump mix ups! Sum pix!'"
"So-agile Goalies['] egos ail." []
"'Starkey? Streaky!'"
"'Sub them, the bums!'"
"'Sucky ol[']...so lucky!' Coy sulk."
"'Super? Poorest! Preposterous!'" []
"'That loss. Last shot...'"
"'Throw it to Wirth!'"
"'To ref: o, fret ofter!'"
"'Umpin's sumpin['] un-simp.'"
"'Ye Snake-Yankees!'" []
"You bemoan spitin['] tip-ins."
"You bemoan whiffs at whatiffs."
"You both get all meh about the LeSage Eagles."
"You compare the Riskin['] Kirins and Bossin['] Bisons."
"You impugn gumpin['] umping."
"You say at least you don't like Duke FC."
"You talk of FGs hit, of fights."
"You transfer ref rants."

book stores

table of idiotic lecture points [xxs1]
blurb
"asks, how do you want your life? Bald? Acne? Or BALANCED?"
"asks the crowd to chant 'Hemp? So po[']. Mehs.'"
"avoids neater points in his presentation."
"bemoans cut-rules cultures."
"berates a front-rower drawing smileys messily."
"booms ADORE METH? MORE DEATH."
"claims heroin = NO HIRE."
"claims his very idiocy is a case of why being drug-free can get you ahead in the world, because even he blah blah!"
"claims the do-meth method is mo['] deth."
"claims things happening causally happen casually. Or vice versa."
"continues to belt out stipulated platitudes."
"cuts down famous, um, oafs."
"discusses his move from troublemaker to maturer bloke."
"endorses the work of Dr. Gus Gruds."
"eschews the lo-med model of rehab."
"exhorts you to avoid a void. Yes, it should be obvious."
"explains he couldn't buy his wife jewels if he used drugs."
"explains how his drug freedom got him a beautiful drug-free wife who should be out of his league. And it allows him to save up for plastic surgery in the future to keep her beautiful. The far future. Hooray, humblebragging."
"explains that you can't rely on drugs to be your friend. You need friends friends! And if you don't think you could get any, you probably did something as bad as drugs anyway. But that's no excuse."
"explains the money saved if you quit now will help you afford beyond drug freedom lectures."
"explains weasely leeways drug addicts use to avoid their punishment."
"forces the crowd to chant, 'Nope! Do no dope!'"
"gives radioactive advice--a riot, if you had ironic distance or didn't have a quest to get back to."
"hawks his favorite of the vast mini-vitamins out there."
"intones 'Hemp, dust: the dumps! Um, depths!'"
"isn't here for dealin['] denial."
"laments how e-drugs surged."
"mentions how that person who saved Yorpwald from Red Bull Burdell saved fewer people than anti-drug measures will."
"mentions pupils slip up without Baehr Herba-Rehab and shouts down a Thera-Heart Hater."
"mentions that drugs are just a waste of time. He also mentions you'd have to be on drugs to think nobody ever wisecracked that this lecture was a waste of time."
"mentions the money you spent on drugs for a whole year could pay for a week-long vacation here, and isn't that more worth it. He gulps and plugs on."
"moans 'The drugs SHRED! GUT!'"
"moves between anecdotalism and declamations."
"notes drugs aren't medicating but decimating."
"notes drugs aren't soul-y. They are lousy."
"notes even crackheads can see POT is the reverse of TOP."
"outlines DevOps vs. Dope."
"points out STONED anagrams DOESN'T. Not that he likes that...anagram person."
"proves people drugged aren't grudged."
"pushes the virtues of Tim's Stim-Mist over drugs."
"quotes CS Lewis unknowingly before telling people not to expect doors to any fantasy world."
"rages 'Dopers to doorstep, so? DEPORT!'"
"rails against the Oceanic Cocaine cartel."
"reminds everyone the review course for this seminar is available for much less than the price of a day's worth of drugs."
"revels in his repenters presenter role."
"roars 'You self-medicate, you self-decimate.'"
"says cold turkey is a cloudy trek that will leave you truly coked. Which gets retold. Yuck."
"says drugs don't leave you nicked--they give a deckin[']."
"shouts 'Habits? Bash it!'"
"smacks down someone who yells 'Poobah? Pah! Boo!'"
"warns against strudel laced with LSD-ture."
"warns people against trying Methy Thyme."
"yells 'Dope. How WHOOPED.'"
"yells 'Dope is POISED: Die-ops!'"
"yells 'Hie to dope? Hope to die!'"
"yells 'No roids indoors! Rid soon!'"
"yells 'Sh, li'l shill' at some interruption you didn't hear." [p]
"yells 'smoke shop: Hemp, ok? SOS!'"
"yells STD! DTs!"

table of overdone movies [xxs2]
blurb
"admits [i]Wendie's Sin Weed Dies New[r] is weak, but it's not WRONG."
"agrees [i]Fop, Indeed? Dope Fiend[r] is funny, well, TIL IT ISN'T."
"almost weeps at the simple truth of [i]Ah, Vilest, the Vials[r]."
"analyzes the dystopian backdrop of [i]Czar-Urged Drug Craze[r]."
"analyzes the mix of social and hard sciences in [i]The New Drug, Hunted, Grew[r]."
"applauds the cautious optimism of [i]Rehab is Bearish[r]."
"applauds the confrontationalism of [i]All Drugs: Dull Rags[r]."
"'appreciates' the avant-garde 'wit' of [i][crap-u] I'd Do: Drop Acid[r]."
"assures the camp value of [i]Peg's Tot Gets Pot[r] causes even MORE deaths, but that's not the video's fault."
"assures the veracity of [i]Nose Candy Once, Sandy? Any Second[r]."
"blabs on a while how there's not much to add to [i]Chaotic Coca Hit[r]."
"calls for more fantasy novels like [i]Shipmate is at Hemp[r]."
"claims the creators of [i]Risk, to a Rat, is OK[r] believed in their artistic vision."
"claims you only need to like one part of [i]Tips to Stop It[r]."
"commends a mythological allusion in [i]Drugs['] Cost: Curst Gods[r]."
"compliments the old- and new-school balance in [i]Ye Bistro: Yo, Bestir Sobriety[r]."
"DARES anyone to laugh at [i]Tedd, Acid-Addicted[r]."
"delves into the simplicity of [i]Eh, Most Mehs to Meth, So[r]."
"discounts the glitz of [i]Bar Hunter Heartburn? Rehab! Turn[r]."
"discusses the deeper meaning of [i]The Bar: Her Tab[r]."
"discusses the NECESSARY repetition in [i]That Heroin: Another Hit[r]."
"dismisses claims of overacting in [i]One Pill Hilltop[r] featuring Phil Olt."
"dismisses those who gave [i]Noe Rast: Saner to a Stoner[r] one star."
"dissects [i]So I Went to Wines, Townies[r]."
"elucidates the gripping story of [i]A Dud's Growth: What Drugs Do[r]."
"encourages emulating the TRUE protagonist of [i]Mistaken Snake Tim[r]."
"explains [i]Addicts Did Cast[r] shows even minor legal drugs can be so harmful."
"exults in the optimism of [i]Haskins Sank His Shakins[r]."
"feels [i]A Stoner: No Tears[r] clearly deserves more than one star."
"hails the artistic daring of [i]Skid-Bars: Brass, Kid? Bad Risks[r]."
"hashes out legal details of [i]Audi: a DUI[r]."
"hat-tips [i]Mess Around: Sour Amends[r]."
"hints at the fantasy redefinition in [i]A Demon on Mead[r]."
"hopes nobody ever FULLY sympathizes with the subjects of [i]To Scrape at Capers: Pot Scare[r]."
"injects deeper social meaning into [i]The Wimp Wit['] Hemp Met WHIP[r]."
"knows everyone knows about [i]Durham's Rum Dash[r]."
"knows everyone's seen [i]Addicted Dad, Cited[r]."
"labels [i]Pitbull's Pill Bust[r] sobering in more ways than one."
"lauds the characterization in [i]Corrupted Doper Curt[r]."
"lauds the directness of [i]To Punks Pot-Sunk[r]."
"lauds the poetry-like quality of [i]No Spiel: One Slip Piles On[r]."
"lauds the revolutionary perspective in [i]I, a New Drug, Waged Ruin[r]."
"lauds the supernatural creepiness of [i]Methadone: Death Omen, the Daemon Ahem, Noted."
"laughs at people who laugh at [i]Jean, Took: Not a Joke[r]."
"loud-whispers that [i]Not Dirk: Kid, Torn, to Drink[r], has an understated truth to it."
"mansplains [i]Turds Go to Drugs[r] is full of tough love, not snide put-downs."
"marvels at the simple pleasures found in [i]Pipe Rehab: Be Happier[r]."
"mentions everyone finds [i]Wobegon Bong Woe[r] above average."
"mentions hip pop-culture allusions in [i]Just One More Neuters Mojo[r]."
"mentions nobody better laugh at [i]LSD: I Slid[r]."
"mentions the balance of sympathy and fact in [i]Ol['] Sots So Lost[r]."
"mentions the message of [i]Meth Day: My Death[r]."
"moves on from drugs for a moment to [i]Reality of a Toy Rifle[r]."
"name-checks an actor from [i]Joints Cue No Justice[r]."
"name-drops the latest didactic work [i]Bo's Free of Beers[r]."
"notarizes why [i]Sunk Drip Drinks Up[r] is tough but fair."
"notes [i]Unwary Ryan Wu[r] underlines too much education is never enough."
"notes all the clever implications in [i]The Pill: Help, [']Til[r]."
"notes anyone can be tempted, like in [i]Stars Go to Grass[r]."
"notes that [i]THEM, METH[r], does, indeed, 'h/t me.'"
"notes the exoticism and down to earthiness of [i]The Ganja, Then a Jag[r]."
"notes the factual relevance of [i]They Said It's Heady[r]."
"notes you have to appreciate the down-home candor of [i]Nelson's Lesson'N[r] starring Sol Ness."
"outlines how the multiple protagonists of [i]Abuse Pot: So Beat Up[r] reach their fates."
"overdoes his sympathy for [i]This Cold Child-Sot[r]."
"pauses for effect before meta-spoiling [i]April's Spiral[r]."
"plugs the short [i]To Inhale a Lone Hit[r]."
"points out [i]Tout IQ to Quit[r] has multiple positive messages."
"points out how [i]Bar Kid's Bad Risk[r] balances sympathy and reality."
"praises the gritty, gripping, noir, curt REALness of [i]Vi's IVs[r]."
"praises the presentation, if not the content, of [i]Nutmeg: a Mutagen Augment[r]."
"praises the straightforward humor in [i]Boozed Bozo Ed[r]."
"proclaims [i]Me, a Drunk, Unmarked[r] poignant but not the way to get sympathy."
"promises not to spoile the end of [i]The Rum Hurt Me[r]."
"quotes from the 'gripping' biopic [i]Dust-Head Thaddeus[r]."
"rants anyone who hated the ambiguous ending of [i]Frail-Skin Liar-Fink's Final Risk[r] is pro-drug."
"re-enforces the 'happy' ending of [i]Gunther's Nth Urges[r]."
"re-enforces the humanity of [i]Booster-Reboots: to Sober[r]."
"reads an excerpt from his next 'modern, advanced' 'nonfiction,' [i]Not My Monty[r]." [p]
"reasons [i]Me, Froth for Meth From the Fort, Hem[r] has as much action and emotion as any blockbuster."
"reassures everyone they aren't low enough to have to watch [i]Straighten-Shattering[r] yet."
"recaps how he met the real-life 'inspiration' of [i]Mitt Booth Hit Bottom[r]."
"recites a 'killer' quote from [i]Much Pot: Top Chum to Chump[r]."
"recommends [i]Cocaine's Con is Ace[r]."
"recommends [i]Coke! Rad? CROAKED[r]."
"recommends [i]Fustian Howl, a Wishful Ton: His Own Fault[r], for people who love hearing their own excuses."
"recommends the hard-hitting simplicity of [i]So, Meth Shot Me[r]."
"recounts the sad denouement of [i]Phenom on Hemp[r]."
"recounts the trauma and relief of the protagonist of [i]Other Kids Risked, Tho['][r]."
"refers to [i]Bo's Thing: Bong Hits? Sob Night[r]."
"reflects [i]RIP Moe's Semi-Pro Promise[r] has been overall good for society--BUT THAT DOESN'T HELP MOE."
"rehashes [i]No Weed! End Woe[r]."
"reiterates the FACTS of [i]The Polls: Pot's HELL[r]."
"relates comparisons of pro- and anti-jokes in [i]Drum Rough Drug Humor[r]."
"relates the measured sympathy of [i]Pared Joy Jeopardy, Doper Jay[r]."
"reminds people [i]Nice Into Nicotine[r] is old because it's true."
"reminds people all drugs are wrong, as in [i]Kent's Doom: Don't Smoke[r]."
"reveals historical accuracies in [i]Fie Now: on, Wife of Wine[r]."
"reveals the personal nature of [i]I'd Do: Facts of Addicts[r]."
"riffs on the subtleties of [i]Alco-Lust Calls Out[r]."
"rues technology's contributions to addictions with [i]To Click a Cocktail[r]."
"says [i]Bad Slick Backslid[r] is not just a catchy title."
"says [i]Deed Story: Trey, Dosed, Destroyed[r] obviously NEEDS to be THAT long."
"says [i]Mugs Order More Drugs: Go, Murders[r] probably won't happen. But can you risk it?"
"says [i]One More Hit: Her Emotion, Moot Herein[r] would be lying if it weren't drawn out and overdone."
"says [i]Strom, Mr. Sot[r] is nowhere near as demeaning as the drug itself."
"says [i]To Snare a Stoner[r] by Ron East is grippingly realistic."
"says [i]Way Stoned, Swayed Not: Today's New, Steady Now[r], deserves to be such an epic."
"says [i]Withdrawal: a Wild Wrath[r] won't happen to EVERYONE, but..."
"says if you're on drugs, of COURSE you'll miss the point of [i]Drugstore: Urges Trod[r]."
"says of course society NEEDS a movie like [i]Stern Avert: Never Start[r]."
"says only fools laugh at [i]I'm Seth: Meth is This, Me[r]."
"says right-thinking folk deserve the humor in [i]The Drunks['] Herd Stunk[r]."
"says the audience just can't admit they want to be the narrator in [i]Woe Underway: We Warned You[r]."
"says the only unrealistic part of [i]Rose Dove's Overdoses[r] is, victims are less attractive."
"says you can laugh at AND with [i]Toasted Ted: a Sot[r]."
"says you really need to re-watch [i]Try Once: Note, Cry[r] for the full effect."
"says you'll have to re-watch [i]One Puff is Fun? Fie, Sop[r]."
"shakes his head at the clear implications of [i]Deviance, Even Acid[r]."
"shivers at that passage in [i]One Drug Urged on: Go Under[r]."
"shows clearly how the lessons in [i]Wise Up to Wipeouts[r] can generalize."
"shows tough-but-fair sympathy for the main character in [i]I Began a Binge[r]."
"ssays the humor in [i]So, Teach Each Sot[r] is NOT overbearing, thank you."
"suggests people watch the 'classic' [i]Falk's Flask[r]."
"sympathizes with Fay Klos, the main character in [i]Yo, Flask? So Flaky[r]."
"tempts people to watch [i]Eying Ye Gin[r], which is of course about resisting temptation."
"touches on the protagonist's life-long struggles in [i]Real Fog of Lager: FEAR LOG[r]."
"underlines the importance of peer groups in [i]Overdose: Do Veer So[r]."
"validates the street language in [i]One Hit, Eh? Into Nite, Ho[r]."
"verifies the science of [i]Drugstore: Dregs['] Tour[r]."
"vouches for the veracity of [i]A Drinker's Risen, Dark: Kinda Errs[r]."
"weepily recounts the tragic [i]June Keith, the Junkie[r]."
"weeps for everyone in the cautionary [i]Panic, Tots: I Can't Stop[r]."
"weeps silently on mentioning [i]A Tot's Toast[r]."
"yells about [i]Steroids Tried? SOS[r]."

table of sicko movies [xxs3]
blurb
"[a-word-u]-Hump Smash-Up."
"[a-word-u] Porn Parsons."
"[d-word-u] Hoes Had Men So Handsome." []
"[if player is male]SOB Seth[else]Hot Bess[end if] the Boss."
"Abasin['] Sabina."
"Able Size, Seizable."
"Abuse us, [a-b]!" []
"Ace Fine's Fiancees."
"Ace Trio Erotica."
"Ace's Sty: Ecstasy."
"Active Tart, Attractive."
"Admired Red Maid Demi Ard."
"Adore: a Redo."
"Ah, Dr. Hard."
"Ah, So, Men: No Shame." []
"Aidan's Naiads."
"Aiden, Edina, Andie, Diane."
"Air-Smut Atriums."
"Al, Hot to Hal."
"Al, Lillia, Alli, Lila."
"Alan, Lana."
"Albiness Lesbians."
"Aldo's Loads." []
"Alice, Celia, Lacie."
"Aline, Liane, Elina, Nelia."
"All over Lover Al." []
"Alleg. Legal."
"Alley Leyla."
"Alluring Girl Luna."
"Ally, Lyla, Y'all."
"Alvin's Slavin[']."
"Am-Horny Harmony." []
"Ami/Mia/Ami."[]
"Amy, Mya, May."
"Anal Roust So Natural."
"Anatoly, LaTonya."
"Anatoly, Yolanta, Latonya."
"Andii, India, Nidia."
"Andrei, Randie, Darien." []
"Andro-DaRon, Dan or Doran."
"Aneesh, Sheena, Neesha."
"Anne, Luc, Unclean."
"Any Fast Fantasy."
"Aphrodite's Hot Diapers."
"Aretha, Eartha, Reatha."
"Ari's Sexy Six Years."
"Arik, Kira, Kari, Rika."
"Arlo, Al or Oral Lora."
"Arnita, Anitra, A-Train."
"Aroused: a Sure Do!"
"Arsene, Serena, Naseer."
"Ash Has [a-word-u], Ahh!"
"Assaults: a Lust [a-word-u]."
"Assumer Masseur."
"Athletic Lithe Act."
"Aw, Bride, I'd be Raw, Bawdier." []
"Aw, kin I wank a wink?"
"Ay, Lad, a Lady."
"Babes of Be-So-Fab."
"Baby, Do Bad Boy."
"Back-End Dan Beck."
"Back Room Boom Rack."
"Bad Doll, Bold Lad."
"Bambino an['] Bimbo."
"Bared Debra."[]
"Barest Breast."
"Be Hot, Bo the He-Bot."
"Be? No. BONE!"
"Be Rad--er, Bad--Bared."
"Bear on a Boner." []
"Beat Off, Eat, Boff."
"Bed-Singe Big Needs."
"Beeswax: a Sex Web."
"Bend [']N Bed."
"Bend, Ow: We Bond." []
"Benino Bein['] on Bonnie."
"Bent Sam, Best Man."
"Bertha's Bathers."
"Beslag-Gables." []
"Beth in the Bin."
"Beth Was Best, Haw."
"Bi Idols['] Libidos."
"Bi Jen, Jeb in Benji."
"Bi Ned Biden."
"Bidden, I'd Bend."
"Big A, Gabi, Gaga Bibi."
"Big-Anus Abusing."
"Big len, Gil, Ben, Bi Glen."
"Big Lon's Sin Blog." []
"Bill, We Will Be Bi Well."
"Bimbo Bi Mob."
"Bimboes Mobbies."
"Bimbos is BOMB!"
"Bite? No, Bone it, Benito!" []
"Bizarre Rare Biz."
"Blaine's Lesbian."
"Blalock's Ballocks."
"Blissy Sybil's."
"Blouses to Bust Loose."
"Blue-Organ Boulanger."
"A Bluster: Bare Lust."
"Bo Hunt's Hot Buns."
"Boarding Andi Borg."
"Bod un-bound? No, Bud!"
"A Bod's So Bad."
"The Body by Hot Ed."
"Bois so Bi: Bios."
"Bolden's Blondes."
"Boner-Borne."
"Boner Menu Number One."
"Bonnie, Bone in Bin One." []
"Boo at a Boot Taboo."
"Boom, Desire: More Bodies."
"Boot a Taboo."[]
"Bow, Cosy Cowboys."
"Brandy [']N Brady."
"Brandy and Bry."
"Breast Baster."
"The Bride Herb Tied: Her Debit."
"Bride, I, Bred."
"A Bride's Bi Dares." []
"The Bud Bed Hut."
"The Bulls Bust Hell."
"Bum Boy Bob, Yum."
"Bunnies Bus Nine."
"But is Stu Bi?"
"Buttsex Subtext."
"Buxom: Mo['] Bux."
"Cami-Lex's Exclaims-Climaxes."
"Candi, Eve, Deviance." []
"Candi in a CD."
"Candice and Ceci."
"Cane-Me Menace."
"Captain, Pati Can."
"Cardinal Carnal-Id."
"Carla's Rascal."
"Carly On Carolyn." []
"Carol, Carlo, Coral."
"Cavers['] Craves."
"Cece's Sin Sciences."
"Chasier Cherisa." []
"Chasier Sharice." []
"Cheerly Lechery."
"Cher Scot Crochets Crotches."
"Chestier Christee."
"Chestier Heretics." [p]
"Cierra, Carrie, Errica."
"Cindy, Sam, My Candi's Dynamics."
"Clad-Sans Scandals."
"Clara's Rascal." []
"Claudine, Dulcinea, Lucia, Ned."
"The Cock to Check."
"Cold Wet Lewd Cot." []
"Cooter is So Erotic."
"The Cop's Hot Pecs." []
"Cora's Oscar."
"Corin's Scorin[']."
"Cornelia, Caroline, Coraline."
"Cosplay Coy Pals." []
"Cougar is Gracious."
"Crass Rude Crusaders."
"A Cream Camera."
"Creamy Marcey."
"Creamy McRaye." []
"The Crowds Doth Screw."
"Crude-Ass Crusades."
"A Cruise, Saucier."
"Cucumbers Succumber."
"Cuddly DD Lucy."
"Cum Into My Community."
"Cum is Music." []
"Cute Mom's Commutes."
"Cuter, re-cut." []
"Daaamn, Amanda."
"Dam Yer Dreamy My Dear." []
"Damian's Mainads."
"Damn Sissy Sassy-Mind Sysadmins."
"Danny, Dyann [']n Andy."
"Darn, He and Her Harden."
"Daughters Get Us Hard."
"Debased Bad Seed."
"Debauch Each Bud."
"A Debt at Bed."
"Dede's Deeds."
"Dee's Boss: Obsessed."
"Deena, Andee, Danee: a Need."
"Def Mom Femdom."
"Delaware: Lewd Area."
"Delia, Elida, Leida, Adiel."
"Dennis's Sin Dens."
"Deprave, Pervade: Repaved."
"Deviants, Mar Maidservant Animadverts."
"Di Sims: Miss Id."
"Diana, Aidan, Daani."
"Diedra, Raided."
"Dina, Andi, Dani, Dian and I."
"Dinkin's Sin-Kind."
"Dionne & Donnie."
"Dire Lust, Luridest."
"Dirtiness Disinters Direst Sin."
"Disco Ball Basic Doll Local Bids."
"Disgraceful [if player is male]Claus Ferdig[else]Claris Fudge[end if]."
"Disgusting Snug Digits."
"Disturbed Bride, Stud."
"Dive Party Depravity." []
"Do Ann, and On, Donna."
"Do-Ho Hood."
"Do THAT to Thad? Hot, Tad."
"Do-Us Duos."
"Doable Old [a-b]."
"Doc Luck, Cuckold."
"Doin['] Dion."[]
"Domina Domain."
"Domination Admonition."
"Don, Be Boned."
"Don's Bulge Bludgeons."
"A Donkey, Naked, Yo!"
"Donna, Danno, and On and On." []
"Donor, Do Ron or Rod."
"Dope Sex EXPOSED."
"Dorm chief forced him."
"Double Down Now, Loud Bed."
"Dr. Lo-Vibe Lovebird."
"Dr. White Hit Drew, Writhed."
"The Dude Hut Deed."
"Dumbest Bed-Smut."
"Duplicate Adult Epic."
"Durty Trudy."
"Dyan, Andy [']N Ady."
"Dying to Dig Tony, Tiny God." []
"Dynamite Tiny Dame." []
"E-RSVP Pervs."
"Each Fappy Happy Face."
"Ed Long: Le Dong Golden."
"Ed Shared Redheads."
"Ed's New Sick Wickedness."
"Eden's Needs."
"Eek, Rev. Keever."
"Eh, Fat is a Fetish."
"Eh, Go Try the Orgy."
"Eh, Not on the Net, Ho."
"Eight-Inch Itching, Eh?"
"Eight Sin Nighties." []
"Elana, Leana, Alane, Alena."
"Elating Genital Atingle."
"Elena, Leean, Alene."
"Eli Nabs Lesbian Base Lin." []
"Elida's Ideals Aslide."
"Elise, Elsie, Liese."
"Elma's Males." []
"Elysia, Easily."
"Elysian Ainsley."
"Employ My Pole."
"Encounter None Cuter."
"Enhanced Dee Chan."
"Enjoy Jen, Yo."
"Enrique's Queer Sin."
"Enticers In Secret."
"ePervs Vesper." [p]
"Er, Dang, I'm Dreaming!" []
"Er, FYI if Yer Fiery."
"Er, I'd Ride."
"Erection: Encore It!"
"Erica, Carie, Ciera."
"Erik, Keri, Iker." []
"Eros Rose, Sore." []
"Erotism, Moister."
"Etta's Teats Taste..."
"Euro PVC Coverup."
"Euro-Roue."
"Evidant Deviant Vain Ted, [']Net Diva."
"Ex-Gays." [x]
"Exalt Latex!"
"Exhaust-a-Sex Hut."
"Exitless Sex Islet."
"Expects: Seep, XTC!"
"Explicit CitiPlex."
"Exstisy: It's Sexy."
"Extroverts['] Retro TV Sex."
"Fair Lewd Warfield."
"Fap Now, Wan Fop."
"Fap-Us FUPAs."
"Far West Raw Fest."
"Farm Up a Frump."
"Fawn's a NSFW an['] SWF."
"Fee-Boys So Beefy."
"Feet Fete."
"Fefe's on Offense."
"Felisa's Falsies."
"Felix's X-Files." []
"Fetish Fits, Eh?"
"Few Can Do Co-Ed Fawn Face Down."
"Fine Leg Feeling." []
"Fine Mr. Fermin."
"Finer-Body Boyfriend Bry DeFino."
"Fit Anne Infante."
"Fit Arreola Taliaferro."
"Fit Cher Fichter."
"Fit Elsa Fleitas."
"Fit Else Stiefel-Fleites." []
"Fit Eryn Finerty."
"Fit Fiona Affinito."
"Fit Fleta Laffitte."
"Fit Leta Lafitte."
"Fit Nina Fantini."
"Fit Osuna Faustino."
"Fit Ree Eifert."
"Fit Retta Fertitta."
"Fit Roni Fortini."
"Fit Rose Fristoe-Foister."
"Fit Sera Freitas."
"Fit Sun Sutfin."
"Fit Torie Fioretti."
"Fitest tit fest."
"Fittest Tit Fest."
"For Mates More Fast."
"For-Pay Pro Fay."
"Forced to Co-Ed Fort."
"Fornicate Fo['] Certain, Erotic Fan."
"Four For U."
"Foxes of Sex."
"Fred 'Bod' Bedford."
"Frisson for Sins."
"Full-Body Folly, Bud."
"Fun Fist Stuffin[']."
"Fur Boot Foot Rub."
"Gail & Ted Get Laid."
"Gail R., a Girl-Grail."
"Gal Hess Has Legs."
"Galen's Angels."
"Ganymede's Edgy Manse."
"Gearless Largesse." []
"Gee! Most Get Some."
"Gen-X is Sexing."
"Get Horny Then Orgy."
"Get Lucky Ty Glueck."
"Get Physical, Sightly Pace: Ghastly Epic."
"A Ghost Has Got to Shag." []
"Gil Roth's Hot Girls."
"Gimpel's Glimpse."
"Gina, Angi, Inga."[]
"Girls Went Wrestling."
"Givers to TV Orgies['] Vertigos."
"Glenda's Legs and Dangles."
"A Glib Bi Gal, Gail B."
"Gnomes Snog Me."
"Go in More, Geronimo."
"Go Welsh Leg Show."
"Gods [']N Dongs."
"Going-Hard Darin Hogg."
"Gonads So...Dang."
"Goo Syrup Orgy Opus."
"Gooly-Ology." []
"Goth Les, Hot Legs: the Logs."
"Goths [']N Thongs."
"Graham's Arm-Hags."
"Grand Old Lard-Dong Rand Gold."
"Grand Rude Undergrad."
"Grand Stiff Grind Staff."
"Greg, Id Digger."
"The Group-Grope Hut."
"Grungiest Gesturing."
"Gush On, Shogun So Hung." []
"Guthrie's Urges Hit."
"Guy-a-Guay."
"Handy Dynah."
"Hard Long Horn, Glad."
"Hard Ol['] Harold."
"Hardon Rhonda."
"Harem for Farm Hero"
"Harem Trek: Mark There."
"Harriet's Rare Hits."
"Having a Vain Hag."
"He ACTS chaste."
"He's SHE? Sheesh."[]
"Heat By the Bay."
"Hedonist: The Doins[']."
"Henri In Her."
"Hep Market, Kept Harem Theme Park."
"Her Ass Shares Rashes."
"Her Glad Hard Leg."
"Her Lech's Herschel."
"Her Next, Then Rex."
"Her Ride, Rehired."
"Her Sin Shrine."
"Herb's Wild Welsh Bird."
"Here's to Her Toes." []
"Hereto Hetero."
"Heston's Hotness."
"Het or Other." []
"Hey Punk/Yep Hunk."
"Hey, Random Horny Dame."
"Hi, Guest...It's Huge!"
"Hi, Twins with Sin!"
"Him Wet With Me."
"His Belt's the BLISS."
"His Fate: a Fetish."
"His Nuts Sin Thus."
"His Trek: Risk the Skirt, Eh?"
"His Want: Ah, Twins!" []
"Hit Me I'm Het."
"Hodgson's Hoss Dong."
"Hog on, Dr. Horndog."
"Holly's Shy? LOL."
"Hooters: Hers Too, or Those!"
"Hooters Reshoot." []
"Horny Hyron."
"Hos, Try Shorty."
"Hot Action Intact, Ooh!"
"A Hot Amble: Fun, Unfathomable." []
"Hot Babes Bob Hates."
"Hot Bod? Do Both."
"Hot Clones, No Clothes."
"Hot-Enuf Fun Theo."
"Hot Kent: The Knot."
"Hot Legs: the Logs."
"Hot Sam Thomas."
"Hot Sin Hostin['] on This."
"Hot Teri: The Riot."
"Hot Women Townhome."
"Hot Women's Townhomes."
"Hot Yum Mouthy."
"Hotness Nests, HO!" []
"Hotwife of White."
"Hotwives['] Two Hives."
"Howser's Showers."
"Huge Libido: Uh, I Obliged."
"Hung Sir Rushing."
"Hung, Ungh!"
"Hunt Fo['] Hot Fun."
"Husband Had Buns!"
"Hut-Camp Matchup: Act, Hump!" []
"Hutton's Hot Nuts."
"I, a Jaunt, Tijuana."
"I Abuse Abi-Sue."
"I, Al, Ali, Lia."
"I Allot Lolita Tail, Lo!"
"I ASL Lisa."
"I Attain Titania."
"I B Bi."
"I Bag Gabi." []
"I can do Donica."
"I, Dangling Ding-a-Ling."
"I Did Didi."
"I Dream, Admire Ma Reid."
"I FEAST LOL." [x]
"I Flash Al Fish."
"I-Gag-Em Maggie." []
"I Greet Gertie."
"I Gulp Up Gil."
"I Hand Dinah a Hind."
"I Leash Sheila." []
"I Loan a Loin." []
"I Love Olive."
"I moan, Naomi!" []
"I Must Stim U."
"I, on Sadism: Admission."
"I, Prude? Pure Id, Ride Up!"
"I Rather Hit Rear, Harriet."
"I Re-Seed Desiree."
"I, Sassy, a Sissy."
"I Score, Cosier."
"I, Seven-Sin Eve." []
"I Shower, Showier."
"I Slam a Salami." []
"I Slam a Slim Ms. Ali." []
"I, Soul-Iced, Delicious."
"I Take Katie." []
"I, Thy MOM, Timothy."
"I Want Tawni Twain."
"I'd Bare a Bride."
"I'd Do Dido."
"I'd Goose Doogie's Goodies."
"I'd Like to, Like, Do It."
"I'd Molested Tied Models."
"I'd Ring Ingrid." []
"I'd Slag Gladis."
"I'd Spank Skip and Sad Pink Di Panks."
"I'll See Leslie." []
"I'm a... am I Lust? A litmus."
"I'm a Pert Primate I. E. Tramp."
"I'm a Perv-Vampire." []
"I'm Easy, Yes I Am."
"I'm Fine if in Em."
"I'm on Nomi, Moni." [p]
"I'm Queer: Requiem."
"Idle Stag Gets Laid."
"IDOL, Oil'd." []
"If I Score Orifices."
"Iffy Yiff."
"Ilana, Alain, Alina, Lanai."
"Illegal Li'l Gale."
"Ilsa, Lisa, Alis." []
"Imagine Me in Gia." []
"Imp Kneads Pink Dames." []
"Improper Ripe Romp."
"In Bed I Bend." []
"In-Sex-Temper Experiments."
"In The: Thine, then I."
"Incented, Indecent."
"Incorporate Procreation."
"Infidelity, Tidily Fine."
"Insatiable [if player is male]Eli Bastian[else]Tina Blaise[end if]." []
"Ira, Meg, Gamier."
"Irena, Arnie, Reina, Einar."
"Irma, Rima, Mira, Amir."
"Is Joe Josie?"
"Is Poon Poison?" []
"It's Lu! I Lust!"
"It's on: to Sin so Int.!"
"Jalapeno Opal-Jean"
"Jane, Lust, Last June."
"Jim's." [x]
"Jo-Beth, Hot Jeb: The Job."
"Job One: Bone Jo."
"Join in, Jo!"
"Join OJ in Joni." []
"Jon An['] Joann on Jan."
"Joni, Art, Trina, Jo." []
"Joy Nurse Journeys."
"Just Go to Jugs."
"Key Largo Royal Keg Lake Orgy."
"Kidnap Da Pink."
"Kiera, Erika, Karie."
"Kim, Seen Sin-Meek."
"King Clod, Long Dick."
"Kinkier Neikirk."
"Kinky Nikky."
"Kiss on. Sin's OK."
"Kwan's Swank Wanks."
"Kylie Likey Kiely."
"La, Cheer A Lecher."
"Lace-Top Polecat." []
"Lad Stu: LA Dust."
"Lady Love: Val Doyle, Eva Lloyd, Velda Loy."
"Lasciv-Cavils!"
"Lascivious [if player is male]Louis Savic[else]Ola Viscusi[end if]."
"Latest is Saltiest."
"Laurel's Allures."
"Lava Alva."
"Le Flesh: She Fell."
"Le Sin: Neil's in Les." []
"Leaner Arlene."
"Least-Coy Acolytes."
"Leave Me Lame, Eve!"
"Lecherous Soul Cheer." []
"Leer-Reel."
"Lem Near Real Men." []
"Lenore, Loreen, Elnore."
"Let's-Fap-Pal Fest."
"Let's Forge Glee Forts."
"Lettie [']N Linette."
"Lev, as Vela's Slave." []
"Lewd Al DeWall." []
"Lewd Carl Cardwell."
"Lewd Del Weddell."
"Lewd Dora Rodewald."
"Lewd Ed Weddle-Weddle."
"Lewd Elma Madewell."
"Lewd Fine New Field."
"Lewd Gia Ladewig."
"Lewd Len Wendell."
"Lewd Lin Windell." []
"Lewd Loo Woodell." []
"Lewd Mina Wildeman."
"Lewd Mirna Wilderman." []
"Lewd Nilsa Willadsen." []
"Lewd Nina Wineland." []
"Lewd Oafs So Flawed."
"Lewd Regan Greenwald."
"Lewd Ren Wendler."
"Lewd Rina Reinwald." []
"Lewd Si Wildes."
"Lewd Sol Doswell." []
"Lewd Stan Westland."
"Lewd Tad Twaddle."
"Lewdling Dwelling." []
"Lewdster Wrestled."
"Liam, Amil, Mila."
"Licentious Coitus Line." []
"Licentious Cutie Loins." []
"Licentious Soul, Incite."
"Lida, LAID."
"Lido's Soil'd."
"Like [']Em Milkee."
"Limber Mr. Lieb."
"Lisa, Mona, Also Mina."
"Lo-Girth Hot Girl."
"Lo-Hint Hot Lin Hilton."
"Loch Ness Lech Sons."
"Loin Grab Laboring."
"The LOIN Hotline." []
"Lon's Gal, All Snog."
"Lonesome Loose Men." []
"Long Asa Salonga." []
"Long Asante Santangelo."
"Long Colin Collignon."
"Long Dan Langdon-Glandon."
"Long DeVere Groeneveld."
"Long Dom Mongold."
"Long Eatman Lamontagne."
"Long Emil Mongelli."
"Long Ferdig Goldfinger."
"Long Huey Loughney."
"Long Kiser Gilkerson." []
"Long Les Gosnell."
"Long Mario Romagnoli."
"Long Milo Mongillo." []
"Long Mitch Mcglothin."
"Long Neal Gonnella."
"Long Nick Conkling."
"Long Niles Ellingson." []
"Long Omer Longmore."
"Long Reed Delnegro."
"Long Reid Dolinger." []
"Long Scot Clogston."
"Long Weber Lowenberg."
"Long Whistler Ellingsworth."
"Long Wilber Willenborg."
"Loni's Lo-Sin Loins." []
"Loose Man Salomone."
"Looser Ol['] Rose."
"Lord O['] Drool." []
"Lorraine's Rear, Loins."
"Lothar's Harlots."
"Louchest Lech, To Us."
"Louise's Oil Uses."
"Louts O['] Lust."
"Love Fest of Svelte."
"Lovebird/Devil Rob." []
"Lovesum Volumes."
"Lt. Hudson Shouldn't."
"Lure [']Im, Muriel."
"Lurer Ruler."
"The Lust Shuttle."
"Luther Lureth." []
"Lyn, Doug, Ungodly Ol['] Gundy."
"Madelin Laid Men, Made Nil." []
"The Maid Hid Meat."
"The Man Who Hath Women."
"Manic Ex, Nice Max, Ace Minx."
"Many, Sis, in My Ass."
"Marilyn's Manly Sir."
"Marni, Mirna, Marin."
"Marta, Tamra, Tamar."
"Mary, Myra, Amyr, YR MA." []
"Mary Sue Sure May."
"Masseur Erasmus."
"Masseur User Sam." []
"Massive Miss Eva: Sam Vies."
"Me, Em, MeMe, Emme."
"Me, Sly, Myles, Lem, Sy."
"Mead Dame."
"Meat Team!" []
"Meatier Emirate Emerita."
"Meg's Sin Messing."
"Mega Ass Massage." []
"Mel, Try Myrtle."
"Melinda's Name Slid." []
"Men Bag, Bang Me."
"Mick, Pry My Prick."
"Mighty Sin Smithying."
"Mild? Naw, WILD Man."
"MILF Film."
"A Milfy Family--of course, riffing on A Filmy Family."
"Milky, My Ilk."
"Mindless Sins-Meld."
"Miss Ex-Sexism: Mess IX."
"Miss W. Swims."
"Mister P Permits: Strip [']Em!"
"Mix'n Minx."
"Mo['] Cut to Cum."
"Mo['] Men, Cupid: Compendium."
"Mo['] Randy, Don, Mary, Mandy or Raymond--and Mory."
"The Mod Do-Them Method."
"Modeling Goldmine."
"Modem Domme."
"Mona, Noam, Moan!"
"Mona's on Sam."
"Moni's Simon."
"Monica's So Manic." []
"Montague's Mountages."
"Monty, a Man-Toy."
"More-Bod Bedroom."
"More Fetish Motifs Here." []
"More Fun Run of Me."
"Mort is So Trim, Sir Tom!"
"Mr. Beach's Chambers." []
"Mr. Bean's Men's Bar."
"Mr. Do-Dorm."
"Mr. Paste Tampers: Ms. Petra."
"Mr. Pat, Tramp."
"Mr. Pube Bumper."
"Mr. Up-Rump."
"Mr. Was-Ms., Raw."
"Mrs. Male-Slammer." []
"Mrs. Pape Pampers, Pa."
"Ms. Hypno-Nympho's."
"Must Do Mo['], Stud."
"A MVP Vamp Pam V."
"My Act in Man City: Tiny Cam."
"My Candi, Dynamic."
"My Coed Comedy."
"My Gang [']N Maggy."
"My Group Guy Romp."
"My Maid Dim May."
"My Tits, Smitty."
"Mythical-Lay Mitch."
"Nadine, Dianne, Dannie."
"Naiad: Nadia, Adina, Diana." []
"Nail Lain Lina."
"Nail Me, Melina an['] Emil!" []
"Nailee Elaine."
"Naked? Danke."
"Nasdy Sandy and Sy." []
"Neat Sly Stanley Lays Ten."
"Ned, Earl, Leander, Darlene." []
"Need-Big-Bed Inge."
"Needful Nude  Elf."
"Neil, Elin, Leni."
"Nekid, Inked."
"Never Old Den Lover Don Vreel."
"Next a Tan Ex-Texan."
"Nia, Ian, Ani."
"NICEST." [x]
"Nicole's In Close." []
"Nimblest-Limb Nest."
"Nine Sub Bunnies." []
"No-Envy Yvonne."
"No Fist in Soft."
"No, I crave Veronica."
"No Nude Undone."
"No Parts." [x]
"No Pros." [x]
"No Rascal So Carnal."
"No-Rules Su Loren."
"No Steed Needs to Do Teens." []
"No Tail? Ol['] Tina to Nail!"
"No Tunic? Count In."
"Nom the Hot Men then, Mo."
"Nookie ok, Eoin?"
"Nourish-Sin Hour."
"Nu-Flix Infux: Lin ***." [x]
"Nu-Sex Nexus."
"The Nude Need Hut."
"Nude Pro Pounder."
"Nudism, Mud, Sin."
"Nudism Mundis." []
"Nun-Cad Duncan."
"Nuts, I'm in Smut, Un-Smit."
"O, a Manly Anomaly." []
"O Rears So Rare."
"Of Pain I Fap On."
"Oft-Bi Fit Bo." []
"Ogle, but Beg, Lout, to Bulge."
"Ogled Lodge."
"Oh Darn, Ron Had Da Horn, Dr. Noah." []
"Oh, I Tend Hot Enid: Hide Not."
"Oh, Mate, to Me, ah, Meat Ho: Mo['] Heat at Home."
"Oh, seed, he does."
"Oh, Use Sue Ho!"
"Oiled Oldie Odile."
"OK, Cis Sicko." []
"OK, Want to Wank."
"Ol['] Chef of Lech."
"Ol['] Thad's Hot Lads Had Lots."
"Old Vices: Close Vid."
"Ole Tart Loretta."
"Oleg's Ogles." []
"On I Tug, Outing Guiton."
"On, Triad Not Arid."
"Onanism Mansion." []
"One Bang Began On, Gonna Be."
"One Bed Be Done."
"One-Dozen-Done Zone."
"One Goth Gone Hot."
"One Limb's So Nimble."
"One Stiff Toe-Sniff."
"Oo, Heart a Hooter!"
"Ooh, Naughty Youth Hogan."
"Or Fem for Me." []
"Organism in Orgasm."
"Osborne's Boners, So."
"The Other Hot Three: Eh, Hotter."
"Our Sally, All Yours."
"Overland Lover Dan."
"Overpictured Reproductive."
"Pa's Got to Gasp."
"Pamela's a Sample."
"The Pansy Nat Hypes Stephany."
"Paris Pairs."
"Pathics['] Hip Acts."
"Pati or Portia." []
"Peek, Mr. Kemper."
"Peer in, I Preen."
"Peers Spree."
"Pelvic Clive P."
"Penetrations Presentation."
"Penis at Panties: a Step In."
"Peretti's Pretties."
"Perms." [x]
"Pert Sex Experts."
"Perv Antwan Vanantwerp."
"Perv D'Angelo Vanderploeg."
"Perv Donte Devenport."
"Perv Doolan Vanderpool."
"Perv Ena Parveen."
"Perv Etta Prevatte."
"Perv Laci Percival."
"Perv Lea Peavler."
"Perv Linda Vanderlip."
"Perv Londa Vanderpol."
"Perv Lu Pulver."
"Perv Macedo Campoverde."
"Perv Maria Primavera."
"Perv Neal Penalver."
"Perv Rina VanRiper."
"Perv Sandi Pendarvis."
"Perv Tonda Davenport."
"Perv Zona Provenza."
"Pervess Vespers."
"Pervy-Vyper."
"Pete's, Um, Meetups."
"Physical Lacy Hips." []
"Pilot Sex Exploits."
"Pinafore-Open Fair."
"Pink Tush, Spunk-Hit." []
"Please! Ur-Pleasure!"
"Plow Us Up Slow."
"Pluto's Po['] Slut Lost Up."
"Ply Ol['] Polly."
"Po['] Rev. Pervo."
"Porgy's Spry Go."
"Porn O['] NPR."
"Porno Time, Minor Poet."
"Portia's Spa Trio." []
"Pounces on E-Cups."
"Poxes! Sex-Op Expos."
"Prattish Tartship." []
"Prey, Elated, Repeatedly."
"Prod, Be Probed."
"The Prof's Hot Prefs."
"Profanest Porn Feats."
"Prom Romp."
"Prove, O Perv!"
"Prude Duper."
"Prude Perdu."[]
"A Prude's Rude Spa."
"Puritans a-Spurtin[']." []
"Purity's Try is Up."
"Push-All Phallus."
"Push it Up This."
"Que Sera as Queer." []
"Rab the Bather." []
"Rachel is Charlie's." []
"Rachele, Charlee, a Lecher." []
"Racier Carrie." []
"Racy VIP Privacy."
"Rad Boy Byroad."
"Rad Sin Nadirs."
"The Rake: Take Her."
"Ralf on Ol['] Fran."
"Ram Up a Rump."
"Randee, Endear Needra and Ree." []
"Randier Derrian."
"Randier Drainer Reinard." []
"Randiest-Rated Sin: Snared It! (Strained.)" []
"Randy Daryn."
"Randy Len Nylander."
"Randy Mei DeYarmin."
"Randy Vi Vinyard."
"Rapt Oily Play Trio."
"Rash Vice Archives." []
"Raunchier Hurricane."
"Raunchy, Unchary." []
"Real Big Gabriel."
"Real Lady, All Ready."
"Real Men Learn Me." []
"Ream Erma."
"Reaming Germain."
"Red Anus Asunder." []
"Red hair? Raid her!"
"Red-Hot Dr. Theo: the Rod." []
"Red Lew, Lewder Welder."
"Red's Vice, Serviced."
"Relapse, Pleaser."
"Relishy Shirley."
"Renita, Terina, Terian." []
"Rev. Pa, a Perv."
"Rev. Pop's Perv Ops."
"Rexie's Sexier Ere Six."
"Ric Glover's Cover Girls."
"Riding, I Grind." []
"Risquee Queries." []
"Rita, Tari, I, Art."
"Rob the Het Bro, or Beth? Er, Both."
"Rogues Urge So: Go, Sure."
"Romanticised Dominatrices."
"Ron Had Da Horn." []
"The Room: More Hot." []
"Room, Walls, Low Morals."
"Rude Sex Reduxes"
"Rumpf's Frumps."
"Rupert's Spurter."
"Sadist Not so Distant."
"Sailable Isabella."
"Sam Doin['] Madison." []
"Scamp Camps."
"Schwager's Shag Crews."
"Scorers Re-Cross."
"Scorings Crossing." []
"Screw Crews."
"Sea Babes Be As Base."
"Seamen Enemas."
"Sean's Nessa."
"A Seduction: Educations."
"Seedier Desiree." []
"Seedin['] Sindee, Denise."
"Seismal Melissa." []
"Select Celest."
"Sensual Unseals."
"Sergey's GEYSERS."
"The Sergio Het-Orgies."
"Servin[']-Sin Rev."
"Sex Doc Sed Cox."
"Sex-in-Pools Explosions."
"Sex Party Extra/Spy."
"A Sexing Hut, Exhausting."
"Sextin[']: Next Is SIN, Tex."
"Sexuality? Say, I Exult."
"Sexuality: Use Laxity." []
"Sexy Chenard Schexnayder."
"Shag Beau Seabaugh."
"Shag Breslin Hasselbring."
"Shag Brice Griesbach."
"Shag Burton Stanbrough."
"Shag Doll Godshall."
"Shag Elli Hillegas."
"Shag Ellis Hillegass."
"Shag Enid Headings."
"Shag Gino Higgason."
"Shag Idell Dalgleish."
"Shag Lin Singhal."
"Shag Lu Slaugh." []
"Shag McDill Schmidgall."
"Shag Mir Grisham." []
"Shag Mort Hagstrom."
"Shag Paul Alspaugh."
"Shag Reaver Hargreaves."
"Shag Ren Hargens."
"Shag Rena Sanghera." []
"Shag Rico Chargois."
"Shag Ruth Shughart."
"Shag Teri Searight."
"Shag Una Sahagun."
"Shallow Show-All." []
"Shanika, Nakisha, Kanisha."
"Shari, Haris, Arish, Risha."
"Sharon Has Ron or Hans."
"She Bangs, Hans Begs."
"She Fit Thief's Fetish." []
"She-God Hodges."
"She, to Those So Het."
"Sherrie Re-Hires Her Sire."
"Shiftiest Fetishist: She Fits It."
"Shippish Hips."
"Shooter-Hooters." []
"Shout-Hot Su South." []
"Shy Earl Lays Her."
"Shy Elle? Hell Yes!"
"Shy to Bi? Oh, Sit by This Boy."
"Siana, Anais, Asian Anisa."
"Sickos['] Co-Kiss."
"Sicky Lu is Lucky."
"Signatory Gyrations."
"Signor Groins."
"Sikes's Kisses."
"A Sin at Tania's."
"Sin Cove Novices."
"Sin-Decree Residence." []
"Sin Game Enigmas."
"Sin-Haste Shanties." []
"Sin Lady Lindsay."
"Sin-Rent Interns."
"Sin Toy So Tiny"
"Sinful Tera Saintfleur."
"Singlet-Tingles."
"Sir, Do Doris or Sid." []
"Sir, Mean Reamins[']."
"Sir, to Roist." []
"Six Gent Sexting."
"Sixties Sex is It."
"Skeevy Eve Sky."
"Slag Gals, and the sequel Shag Hags."
"Slam by My Slab, Sam Bly."
"Slave Andra VanArsdale." []
"Slave Ben Venables."
"Slave Boy Love Bays."
"Slave Darla Valladares."
"Slave Dora Salvadore."
"Slave Gil Villegas."
"Slave Gina Gavilanes."
"Slave Lin Sanville." []
"Slave Nick VanSickle."
"Slave Olin Sevillano."
"Slave Ron Alverson." []
"Slave Son Salveson."
"Slave Stan VanTassel."
"Slave Ty Stavely."
"Slicker Lickers."
"Slithering Girthlines."
"Slow-Boff Blow-Offs."
"Slut Greta's Great Lusts."
"Sly, Bi Sibyl Lisby."
"Smack Lips, Kiss, Clamp."
"Smackin[']-Skin Cam." []
"Smoking Ms. Konig."
"Smoocher Moochers."
"Smorgas-Orgasms."
"Snow White: Wow, the Sin."
"A Snuggly Guy [']N Gals."
"So, Bride is Bored."
"So Buff, Boff Us!"
"So-Lean Sloane On Sale."
"So Leer or Else."
"So Naked Soak Den."
"So, Relax!" [x]
"So Steamy, Most Easy."
"So, Tim! Tom is Moist!"[]
"So, to Her Hooters." []
"So Wrong Snog Row." []
"Sodom Moods."
"Soil'n Olin's Loins." []
"The Son's Hotness: He's No St." []
"Sordid Droids."[]
"Sore Bung Burgeons."
"Southern Hot Nurse." []
"Spandex Expands."
"Special-lips Ace."
"Spinosa's Passions."
"Spite Wank: We Spank It." []
"Spoilt Pilots." []
"St. Geoff Gets Off."
"St. Kelli's Kiss-Tell Skillset."
"St. Lu's Lusts."
"St. Rece's Secrets."
"Stacey's Ecstasy." []
"Steamier Emirates."
"Steamin['] Inmates."
"Stefania's Fantasies."
"Stew & Del: Lewdest."
"A Stiffy Sat Iffy."
"Stiger's Tigress."
"Stingy Tyings."
"Strained Randiest Red Satin." []
"Strip Club Clip Burst."
"Strip Club Pic Blurts." []
"Studlier, Luridest." []
"Stuff-My-Muff Sty."
"Stuprate, Upstater."
"Succeed to Cot-Seduce Cute Coeds."
"Such Neat Unchaste Nut-Aches."
"Sure, Go, Go, Gorgeous!"
"Surge, Urges!"[]
"Swag, Eh? We Shag."
"Sweet Bi Website."
"Sweetie, We is Wet."
"Sweetness, Wetnesses."
"Switcheroo: Erotic Show."
"Sy Ain't Stayin['] Sainty."
"A T-Shirt, Tartish."
"Taboos: a Boost[r]."
"Tad, Rex: X-Rated."
"Taint-So Station." []
"Tally-Ho, at Holly!"
"Tamer Tabus, Smart Beaut."
"Tan Bod: Not Bad."
"Tania, Anita, Tiana an['] Tia."
"Tara's a STAR!"
"A Tarty Show: What a Story."
"Tayra's Astray." []
"Team Duo Made Out."
"A Tease At Ease."
"Tease Pro Operates."
"Teaser Teresa." []
"Technical's Lech Antics."
"Teen Burt's Brunettes."
"A Ten-Girl Tanglier Triangle."
"Ten-Inch Chet Nin."
"Tex Cass: Sex Acts."
"Tex Ho's Hot Sex."
"Tex's Sext."
"That Romp, Hot Tramp."
"Then More Other Men."
"They Win Whitney."
"Thigh, [a-word-u]: Shag This."
"This Boy Shy to Bi."
"This Rat a Thirst: Tits, Rah."
"Thorough, Rough, Hot."
"Those Kids Kissed Hot."
"Threads['] Dearths."
"Thunderin['], Rude, Thin."
"Ticklish, Lick This."
"Tickly Kit Cly."
"Tiffy's Stiffy."
"Tiger Gerti."
"Tijuana Juanita."
"Tina, Naomi, Tonia, Mina, Iona, Minta: Mania into animation!"
"Tisha HAS it." []
"To Bang Bo Gant."
"To-Do: Hug Hot Doug."
"To Have Hot Eva."
"To Invade Into Dave."
"To Sandy: Do Nasty." []
"To Siring So Tiring."
"To Slurp, Pro-Lust."
"To Slurps, Lust Pros."
"To Want No Twat." []
"Toned Mr. Redmont."
"Tongues Get on Us."
"Tony, Cal, Clayton." []
"Tony is So Tiny."
"Too-Lurid Loud Trio."
"Too Sick For Crook So Fit."
"Top Live Love Pit."
"Tori's Trios."[]
"Torn, Nude, Turned On." []
"Torrid Dorrit."
"Touched Coed Hut Tech Duo."
"The Town Went Hot."
"Trainable Albertina."
"Trampy Try, Pam."
"Treat Us, Tart Sue."
"Tree Homes Threesome."
"Trouser Rouster Su Torre."
"Trouser Routers." []
"True Ladies['] Real Duties."
"True Lady Adultery."
"True Moms: More Smut."
"Truster of Frotteurs."
"Try, Bone, Rent Boy."
"Try Me Yet, Mr.?"
"Try Pam, My Prat--Trampy." []
"A Tryst: Whoa, What a Story."
"Tut, Sly." [x]
"Twerk-On Network."
"Twin Peaks Spite Wank: Pew, a Stink."
"The Two: Hot, Wet."
"Ty, Bo, Toby."
"U Crave a Curve."
"UK Bekka." [x]
"Um, Hot Mouth."
"Umm, Pry My Rump."
"Un-Torn Turn-On."
"Uncensored Nude Crones." []
"Unclean Lace Nun." []
"Undressing, Sunderings."
"Ungarbed Brundage."
"Ungodliest Longitudes."
"Unready Nude Ray." []
"Unrobed Bounder Ed Bruno."
"Unrobed Bounder Nude Rob." []
"Untidy." [x]
"Up-North Porn Hut. Turn! Hop!"
"Upland Orgy Playground." []
"Urges O['] Rogues."
"Us an['] Una's Anus."
"Us-Gay Guays."
"Use-QT Quest."
"Use Sue."
"Valery's Slavery."
"Vast Ogle: Slave Got Voltages."
"Vast Ripe Privates."
"Venial Elvina LaVine."[]
"Verboten Bent Over Bro Event."
"Vices are a Service."
"Virgin Irving."
"Voyeurs? Us? O Very."
"Waitress Wastries."
"Wanton Antwon."
"Washing His Wang."
"Watch? Aw, Tch."
"Watkins Wanks It."
"We Fit if Wet."
"Wee Nik's Sin Week."
"Wendie's Sinewed."
"Wes Cort: Two Recs to Screw."
"Wet Porn Went Pro."
"Wet Sins['] Witness." []
"WHEE! Pop's Peep Show!"
"When Folks Know Flesh."
"Whip, Cute? Up, We Itch."
"Wideman's New Maids."
"Wild Boy, Wily Bod."
"Wild Set: it's Lewd!" []
"Witness Sin Stew." []
"Witness Stew Sin." []
"Women Do Woodmen: Demo Now!"
"Won't Sid Do Twins?" []
"Worship or Whips."
"X-Rated Rad Tex." []
"Xena, an Ex."
"Yasmin May Sin."
"Yay Wants Way Nasty."
"Yes, Jon Enjoys Jonesy."
"Yes, Tom, My Toes."
"Yet Ma's Steamy." []
"Yo, Doms, Sodomy." []
"You Doll, You'll Do."
"You Pervs So Very Up."
"Yr Slut, Sultry, Yr Lust."
"Yum-Lass Asylums."
"Yum, Pass Up My Ass."

table of store c ads [xxs4]
blurb
"Adults only! On, Lady Lust!"
"All Lipsopolis and Margo's items are 20% off, whatever those are."
"Bobo's advertises here." [x]
"Burma Station advertises here." [x]
"BYO BOY has a line through it. Good they have SOME morals."
"A cheery bud encourages debauchery."
"Crotches['] Crochets are sold here."
"Dancy Candy advertises here."
"Date/time for an evident id event."
"Directions to Mo['] Impure Emporium."
"A discount on a Tingles Singlet."
"A document that would turn your settler PGRYRYGP makes you blush." [x]
"An Erotic Creation."
"Everbond lube is on sale." [x]
"Hef-T-Sins Fishnets are this season's hot item."
"'Helpin['] you deuces seduce!'"
"HIDEOUS ID-HOUSE and HERPES PHEERS SPHERE are spray-painted here."
"Kim Rosen: Smokin-er! More Skin!"
"Le Hot Hotel gives discounts to Store C shoppers."
"LEGALIZE HERB LOTS a sign reads." [x]
"A lurid URL ID for the spiciest pics site."
"The Mod Method is the latest 'literature.'" [p]
"No coital location? Margo's Onan-Anon!"
"No-Saint Nations are apparently a support groups for the Onanist."
"'No SHOWER here. Don't ask.'" [x]
"Oh, darn! Throb-Broth, debonair boner aid, sold here."
"Oh dear. Not a legit ad. 'Get L...'? Whoah."
"Old IDs are sold here. Huh?" [x]
"Onan-Anon leaflets. All with anno. Bleah."
"A personal porn sale."
"Porn We Preown: Adult Epics['] duplicates."
"PORNOG = NO PROG is spray-painted in a corner."
"Racy Lit full of Clarity (with the Jeff Kors, Geoff T or Raw Ken Newark personal porn seal) sold here."
"Riesgo-Ogier's Orgies."
"Smoking Kim Song and Illegal Li'l Gale have shopped here."
"Something for Steamy Mateys."
"Splitman Implants sold here!"
"A strumpet trumpets all-babes baseball."
"They don't discriminate: nudies or undies."
"'This is a LEGIT AD to help you (censored)!!!'" [x]
"Tommy's Mm-toys: dirty I'd try."
"Wares from Bad John's." [x]
"Whoopie's Whoopsie: Bondage Gone Bad."
"You briefly wonder if you'll find sapient panties in there that might give a hint, then you feel kinda guilty."
"You overhear 'Preview.' / 'Ew, I... perv!'"
"You see a warning: Loot Porn? Poltroon!"
"You see striptease tapestries and are sorry you did."
"You think you hear 'You perv, voyeur :p' but notice the nice moot emoticon." [p]

table of store c competitors [xxs5]
blurb
"Agony Thus So Naughty"
"ArtCo IE Erotica" []
"Brassiere Brasserie"
"Bub's, Err, Rubbers"
"Bulkiest Lube Kits"
"Bulls['] Ease Lube Sales"
"Clean Bums: a Men's Club"
"Colin's Sin Loc"
"Condom-Up Compound"
"Coxe's SexCo"
"Crisper, Err, Pics"
"Dennis [']N Enid's Sin Den"
"Deviances an['] Devices"
"Discreet Ted Rice's"
"Dives O['] Videos So Vied" []
"Eastern-Port Penetrators"
"An Edgy Gay Den"
"Epic Coeds['] Codpieces (Eco-Spiced)"
"EZ-Sin Zines"
"Feralised Elfrieda's"
"Fremont Men Fort"
"Fun Stock, [f-w] Tons"
"Fun Times Fine Smut"
"Gibson Sin Bog" []
"Gonnella Nonlegal-Long Lane" []
"Got Hedonism: Do Something"
"Hamer's Harems"
"Havelock's Love Shack"
"Hedonism-Cad Odd Machines"
"Holbert's Brothels"
"Honedist Hedonist" []
"Hot Pets: the Spot" []
"Hot Spicy City Shop."
"I-Is-Bold Libidos" []
"I'm-In-U Condom Condominium"
"In-Haste Hentais"
"India's Sin-Aid"
"Insertable Albertine's"
"Karin's Sin Ark"
"Kendrick's Kink-Creds"
"Kink Cubs['] Buckskin"
"L'Harem Harlem"
"Leathers: a Shelter"
"Let's Play: All Types" []
"Lipsopolis"
"Lo, Binge on Bilge" []
"Lube Sacks: Bulk Cases"
"The Lurid Idler Hut"
"Maher-Ahmer Harem"
"Maiden Median" []
"Mart Chen's Charm-Nest Merchants" []
"Martin's Sin-Mart"
"Massively Slimy Eva's"
"McSnood Condoms"
"Mo['] Sick Mick-o's"
"Moist Tomi's"
"Moister Mortie's"
"Moody's Sodomy" []
"Mortal-Sin Loins-Mart"
"Naomi's Maison" []
"Nas-T Nat's"
"Nastier Renita's" []
"Nasty Tyna's" []
"Nik-Nik's Sin-Kink"
"Nikki's is Kink"
"No-Maid Domain" []
"No-Rules Ron Lue's" []
"North Pole Porn Hotel"
"Obscener Cerbone's"
"Oft-Sucky [f-w]-Toys"
"Old Evia's Love Aids"
"Our Types['] SuperToy"
"Paternoster Penetrators" []
"Penni's Penis [']N Sin Pen"
"Pert Erv's" [x]
"Phallic Pic Hall." []
"Pleasure's Super Sale"
"Po['] Ron's Pornos"
"Pop Hay's So-Happy Pay Shop"
"Princeton's Nicest Porn"
"Pro-Stim Imports" []
"Regal Io's Seraglio"
"Relapse-Us Pleasures" []
"Ringo's Groins-Sin Org" []
"Riskiest Kirstie's"
"Risque Squire"
"Rox Estes Sex Store"
"RudeCorp's Producers."
"Salty Tyla's"
"Satoya's: To Assay at Yo['] Ass"
"Schroader Hardcores"
"Seider's Desires"
"Self-Toys of Styles"
"Sensorial Rosaline's" []
"Serene Renee's"
"Sicker Erick's"
"Silk, Boots, Bliss Took"
"Sin Bay's Sybians"
"Sin-Forum Uniforms"
"Sin Hog Honig's"
"Sin-Sprayed Dispensary"
"Sinner Erinn's"
"Siren Erin's."
"Skee-Z-Zeke's"
"Slattern Lattner's"
"Smooch-Art Chat Rooms"
"Smut-Offer-Fest Forum"
"So-Tacky Toy Sack"
"Sultry URL Sty"
"Super Deal, Pleasured"
"Swinger Gerwin's"
"Tarquin's Sin Quart"
"Tartest Tatters"
"Tips-On-Top-Sin Stop-In"
"To Rude Detour D'Outre"
"Tokyo's OK Toys"
"Toll-Free Leer Loft"
"Tom-Boy's Boom Sty, by Smoot"
"Trashier Harriet's" []
"Unchaste Ace Hunt's" []
"Unspeakable Anal Peek Bus"
"Urge-Toys Rogue Sty"
"Us-Be-Sins Business"
"Val's Dope Love Pads"
"Vic Ree's, Er, Vices Service" []
"Vices an['] Sin Cave"
"We-So-Dirty Weird Toys"
"Ye Slim Smiley Emily's"
"Your Lit: Further Rule Thirty-Four"

table of tokers nonsense [xxs6]
blurb
"'[n-t] Tokes. Take notes,' says [if nestor is visible]Nestor[else]one of them[end if], and his pals all giggle."
"'The A-Ok Toke! Ah!'"
"'Ah, post: Host Pa has pot so phat!'"
"'Any pot? Pay not!' they tempt you, but things are mind-bending enough."
"'Bake crew, we're back!'"
"'Bake mud, make bud,' one toker giggles."
"'Bask there: Herbs take the breaks!' they say, channeling Herb Keats."
"'Be a dork--or baked!' / 'OK, Debra.'"
"'Be stoned: bested? No!'"
"A belch. A 'Blech.'"
"'Big Deals Ads? Bilge!'"
"'Bogart? Go, brat!'"
"'Bong hit, Ox?' / 'Hotboxing!'"
"Bong hits. Both sing."
"'Bum, do mo['] bud!'"
"'The colors! Hot! Closer!'"
"'Cop, toke! Pot! Coke!' they chant."
"'Dang wild dawdling!' they laugh, waddling some."
"'Dat hemp's phat meds!'"
"'Daub a bud!'"
"'Dime bags? Mega dibs!'"
"'Do?' / 'Eh, OK.' / 'Hooked!'"
"'The dope: deep, hot!'"
"Dreamy recollections of Mac's Herb Chambers."
"'Drug use urged us,' they smirk."
"'Ed, Wes! Seed w/ weeds!'"
"'Eh, Pip, I...' / 'Hi! Pipe, hippie!'"
"'For Ed is so fried!'" []
"'Frantic narc fit!' someone yells, giggling."
"'Get dope: top edge!'"
"'Gets baked? Beats keg'd!'"
"'Go-ban-a-bong Bogan? No, bag!'"
"'God Runs on Drugs!!!'"
"'Good point! I'd go on pot.'"
"'Got tensed? Get stoned!'"
"'Help me, le hemp!'"
"'Hemp! Dust the dumps!'"
"'Hemp is hep, Sim!' / 'I'm SHEP!'"
"'Hey, bros! Yo! Herbs by shore!'"
"'High? Us? HUGH is...'"
"'Hip med, hemp? I'd dip, hem!'"
"'HIS pot? Po['] [s-w]! To pish!'" []
"'Hog it, ho!' / 'Too high.'"
"'Hop to pot, ho!'" []
"'Hot [']n big bong hit!'"
"'Hotbox?' / 'Thx, Boo!'"
"'I met TIME!'"
"'I'm baked!' / 'Bad, Mike!'"
"'If pure, fire up!'"
"'The imps['] mesh pit: it's hemp!'"
"'Items, Don.' / 'Send Tom. I--I'm stoned!'"
"'Join at a joint,' they sing."
"'Joint, Al? JAIL!!!! NOT!'"
"'Junkies juke sin!'"
"'Le bong! Belong!'"
"'Lo! Binge! I belong!'" []
"'Make out, um, a toke...'"
"'Me, I'd... Medi-dime!'"
"'Me Tooks Mo['] Tokes to Smoke,' they sing."
"'Me's took to smoke mo['] tokes!'"
"'Mo['] Stash to Smash!'"
"'Mo['] takes at smoke? ASK me to!'"
"A moony 'Yo, mon.'"
"Music by Droning Grondin plays."
"'My poem: mm, poey!'"
"'Narco-acorn?' ... 'AN ORC!'"
"'Needle Lendee!' they cry at riff-raff."
"'No highs? Sigh, hon.'"
"'No weed now, dee? We done!'"
"'O phat pot, ah!'"
"'O yep! Poey!'"
"'Oblong ol['] bong!'" []
"'Oh Petey, the poey poet, hey!'"
"'OK, Poets spoke to toke-ops!'"
"'OK, set, stoke!'"
"'OK! Ted toked!'"
"One moans, 'Men, fail life, man! Inflame!'"
"One of them wakes up. 'Eh, P.M.? HEMP!'"
"'Our lucid is RIDICULOUS!' one toker yells."
"'Pass not sans pot!'"
"'The pipe, Pete? Hip!'"
"'Poey's POESY!'"
"'Pot deal to plead, tadpole,' they sing the blues."
"'Pot fair? A profit!'" []
"'Pot has paths o['] PATHOS!' / 'Ha, stop!'" []
"'Pot's Tops.' / 'STOP!' they giggle."
"'Pot...slow...lots...POW!'"
"A practical joke! 'Many cop company, man! Copy?'"
"'PROUD TO DROP OUT!' the tokers chant in unison."
"'Raw pot? Aw, [i]trop[r] to warp.'"
"'Rex! To re-tox!'"
"'Seek Job? Be jokes!'"
"'Seek out toke use!'"
"'Share it! HASTIER!'" []
"'Sick THC Schtick!'"
"'Sit. Bong.' / 'Big?' / 'Tons!'"
"'Skateboard?' / 'Sorta baked.'"
"'Snort coke? Scorn! TOKE!'"
"'So baked.' / 'O-K.' / 'BE sad.'"
"'So, make a smoke?' / 'O, ask [']em!'"
"'So, tend to dens stoned!'"
"Some tokers recall Bong-Ade gone bad."
"A song: 'I sort dung. It's ground into drugs: tin gourds!'"
"'Squad to do Squat!' they giggle."
"'Stoner so rent!' one of the tokers overacts."
"'Such poey! Chop suey!' Yups echo."
"'SunFit: it's fun!' / 'If NUTS!'" []
"'Ten-high night, eh?'"
"They croon 'O Drug Gourd Ur-God.'"
"They discuss smart neon stoner man ornaments."
"They jock the THC MD Si Schmidt."
"They lecture that mescal-pot-ectoplasm has ample cost--you clamp toes then come splat."
"They muse about Free Pot Reef Top, of Cheeba's Beaches."
"They perform a skit on St. Niko Kitson."
"They recap the PSA-turned-camp [i]Wickedest Weed Stick[r]."
"They recount the plot of the cult 'classic' [i]Ken's Weed Weekends[r]."
"They sing 'The Club's THC Blues.'"
"They sing to Hemp Ace MacPhee."
"'To bangs at bongs!'"
"'Toke up to puke.'"
"The tokers dance a rebels['] BS reel for a bit, then settle down."
"The tokers discuss [i]Postmodern Stoned Romp[r], by Red Tompson."
"The tokers dream of esp-word powders."
"The tokers give ahhs hearing of a new hash shah."
"The tokers have a mid-store idea storm."
"The tokers have a moment of silence for Hotboxer Rex Booth before whooping his cry 'Oh, bro Tex!'"
"The tokers joke 'Mo['] grass? Gross, ma!' You groan when you see the 'subtlety.'" [p]
"The tokers mention they want to read [i]Hemp Chat: the Champ[r], by [if player is male]Chet Pham[else]Pam Hecht[end if]."
"The tokers miss the incarcerated Lot-of-Weed Fleetwood."
"The tokers murmur about Bad-Poey Peabody."
"The tokers pan 'The Jock's Chest O'J/Ks' as not real THC jokes." [p]
"The tokers pan the book LSD Trips: TLDR Piss."
"The tokers pooh-pooh eyespot peyotes."
"The tokers quote the latest issue of [i]Sedition Editions[r], by [if player is male]Sid Nieto[else]Enid Tsoi[end if]."
"The tokers recall a hot drug drought."
"The tokers recap the plot of [i]The Scamp Hemp Cats[r]."
"The tokers recap Toke Hobby By the Book, by Hotkey Bob."
"The tokers recite from the canon of Bad-Joke Baked Jo."
"The tokers say, to nobody in particular, 'Hi, Neal. Inhale? Healin[']!'"
"The tokers sing 'Dime Bag Mega Bid' by Dim Gabe." [p]
"The tokers sing 'Heed Pot, the Dope,' by [d-t] Heep. They claim it's hot, deep."
"The tokers sing 'Hip Tune up in the Pine Hut.'"
"The tokers sing 'The Wide Weed Hit With Dee.'"
"The tokers sing 'We ain't at Wine' by [if player is male]Nat Wie[else]Tia Wen[end if]." [p]
"The tokers sing tha dope phat ode 'Oh Adept Pothead,' by Tad Hope, Dah Poet."
"The tokers squabble 'Hog it? Oh, too high!'"
"The tokers're all, God is SO, dig?"
"'Tokin[']? No kit?'"
"'Tom! Repo more pot! Promote!'"
"'Torch [']em! More THC!'"
"'A trance can tear [']n create!'"
"'Uh, gone enough?'"
"'Um, no THC?' / 'Not much.'"
"'Umm! Ripe! Premium!'"
"'Up, aces, to space out! [']Cause pot...'"
"'Warm-toke teamwork!'" []
"'Weed is Wise, Ed!'"
"'Yo, bake, be okay!'"
"'Yo, Hemp My Hope.'"

book routes

table of horbert farewells [xxu1]
blurb
"'Arch woes? Show care. Reach. Sow.'" []
"'Bud, lack bad luck.'"
"'Consult No Cults.'"
"'A credo: do care!'"
"'Disperse no depression.'" []
"'Edify! Deify!'"
"'Faith in God? Fight no aid! Oh, fading, it!'"
"'Follow truth to full worth.'"
"'Go. Do Good.'"
"'Go! Our cause, courageous.'"
"'Go, tread, do great.'"
"'Go up the gut. Hope.'"
"'Goal: hit Goliath.'" []
"'Goodbye. Obey God.'" []
"'Heal envy? Heavenly!'"
"'I put love up to evil.'"
"Meade's Edemas"
"'On the run, hurt none.'"
"'Pace woes, sow peace.'"
"'Peace, yo! Yea, cope.'"
"'Piety. I type. Yep, it...'"
"'Pitiful? I uplift.'"
"'Plights? Dear, spread light!'"
"'Postpone not Popes.'"
"'Pray less sparsely.'"
"'Rate Evil, reveal it, avert lie...relative.'"
"'Reach out! Care, thou!'"
"'A rec: care!'"
"'See church. Such cheer!'"
"'Seekin['] is keen.'"
"'Show faith! Ah, wish oft!'"
"'Showing wings, oh!'"
"'So, go send goodness!'"
"'To-do: big good bit.'"
"'Walk soft: flow, task.'"
"'Yea, trust, stay true.'"

table of horbert musings [xxu2]
blurb
"ah, yon, Mr. A hymn or harmony." []
"Aid Ida, Adi..."
"and sellin['], all sinned."
"anecdote, sir: decorate sin, acridest one? Noise! Redact!" []
"angry? Wow, wrong way."
"antidote...donate it."
"argument? Nag [']em? Rut."
"Ave Eva."
"avenge it? Negative. Get naive. Give neat even gait."
"award show? How sad, raw..."
"banters be rants." []
"Be set, St. Bee."
"best mode: be modest."
"better Godly than Gold-y."
"a bliss-gen blessing."
"bring down? Bind? Wrong."
"buried fresh, hubris freed, refurbished!"
"burn ego, burgeon." []
"cash, souls... such a loss."
"cattiness? Scantiest."
"chartless? St. Charles."
"clans weep: new places, clean pews."
"complaints of aching pre-preaching."
"Cure Dan Durance...uncared..."
"Cyan nun? Uncanny."
"Dave's saved!"
"death is staid, eh?" []
"desiring's rigidness."
"dodge a goaded ego-add."
"Dogma? Go mad."
"doings in God's song I'd sing. Do dig, son!"
"Donatism...saintdom."
"eclat? Pique? Quiet place."
"Ego, eh? Oh, gee..."
"ego, lust: let us go. Get soul."
"ego? Oy, gooey."
"Ego rut? Get our urge to go true."
"ego tilt? Legit to let it go."
"er, tens resent St. Rene." []
"erotica...to I CARE." []
"famished, made fish."
"Fish at Faiths? Ah, fits." []
"Forgiveness: serving foes. Sin fevers go."
"get meaner?! AGREEMENT." []
"get rid of ego. Drift." []
"get vicious? Scout, I give."
"Goad a god? O gad!"
"the goal's hog least."
"God's nice. Cognised. Co-signed."
"good heart: greathood."
"Goy Doug...good guy..."
"grow venom? Wrong move."
"gutsy St. Guy..."
"halt a vile have-it-all hate villa..."
"halt stark trash talk."
"halt weapons? How pleasant!"
"happiness is. Happens."
"a harm-not marathon..."
"hatred: apt? Death trap."
"hatred: in the drain."
"Havins['] vanish."
"hm, a sorry rosary."
"Holiness shines, lo."
"Holy grail? Hail glory."
"hymn idea in my head...many hide..."
"I act pure: a picture?"
"I fathom mo['] faith."
"I, man unto mountain." []
"I start it. Rats, St. Rita is tart." []
"I'll stay on saintly, lo."
"I'm lost, St. Milo." []
"I've got to give."
"id rose, or dies, so dire."
"if proud, up! Rid of..."
"in sum, minus, um, sin..."
"Inept? Beat? Be patient." []
"is soul nil? Illusions."
"It's noon. To no-sin notions!"
"its name is meant...tame sin." []
"Justice, St. Juice."
"Kingdoms dig monks."
"Lamzor moralz."
"less rage. LARGESSE." []
"Let Sin Enlist? SILENT!" []
"let us care? Ace result."
"Let's go, St. Oleg."
"love war? Lo, waver."
"lustin, d'oh! I shouldn't." []
"mad ire? Dim era." []
"make use of famous? Eek."
"man, sense meanness."
"'Me, sir:' mires."
"melee pits? Sleep time."
"mend soul un-seldom."
"mo['] faith, I fathom."
"monthly Holy Mtn. hymn-lot..." [p]
"my arisen seminary an['] misery."
"my BONES. Money? BS." []
"my rec: mercy!"
"Nazareth? Ah, art, zen."
"Nun bio...gave me a bunion."
"O Kevin, invoke no vein."
"O, St. Nina anoints nations."
"O, venom, move on."
"Oh, Tither Hitherto."
"oh, whisper is power."
"old low want? Don't wallow."
"Or sin? No, sir!" []
"ordering? Err, doing."
"pilpul, li'l pup."
"a prayer to Sanitary Saint Ray."
"...prevents ten pervs."
"pride? He's perished!"
"Pride: I derp."
"Puff-outs put us off."
"Pure's super."
"Rabbi Barbi..."
"rats fit...at first."
"Raw monk, mark now. Work, man."[]
"regroup, go purer! Up! Roger!"
"The remorse...there's more."
"Rev. Ho's Shrove Hovers."
"Rev. Stan, servant, St. Verna."
"Rev. Triton's introverts..."
"rot! Pay to pray? Trap, oy." []
"routines orient us, rise unto us, stonier."
"rue, grief, rife urge: refigure."
"safety, St. Faye." []
"Sanity, any, [']tis sainty." []
"seclusion, close us in."
"See real release."
"a sermon enamors moaners." []
"Simply my slip..." []
"Sin at Insta-Saint Satin Tina's... it's an..."
"sin, hatred: it hardens, tarnished."
"sins['] fear? Fairness sans fire."
"So, in my...I'm nosy...simony is on. My!"
"so it goes. I toss ego."
"soft Ol['] St. Olof..." []
"Soul Pit? Slip out. Pilot us."
"spenders['] derpness..."
"St. Alex exalts..."
"St. Aric... St. Leo... so imperfect."
"St. Audrey: rudest, ay."
"St. Candice ... helps with accidents..."
"St. Care-Caster deserves a crest."
"St. Elmo lost me..." []
"St. Kerin, stinker? Ten irks." []
"St. Kira, Tark is At-Risk."
"St. Linus insults..." []
"St. Lip-Split IS. PTL."
"St. Martin, transmit tantrism."
"St. Prius Stirs Up Purists. It spurs..."
"St. Tony? Snotty." []
"Stern Rents, St. Ren."
"Stu? Jed? St. Jude? Just Ed."
"stuff by St. Buffy."
"Sustain us, St. Sanitus!"
"Thanks, St. Hank!"
"to be like Rev. Figo, Giver of Org Five."
"to prey? Rot. Yep."
"To sin is not on, is't?" []
"to undergo a good nature: outraged? No!"
"trite, posy posterity rots piety."
"truce cruet... he doesn't eruct."
"Ug. Some egos. Um."
"uh, I lit my humility."
"Up, I try purity."
"A vicar? Caviar?"
"Virtues rivet us."
"vulgarities['] guilt varies."
"wannabe? Naw, bane." []
"wish elite? White lies."
"you hate? Yeah, out!"
"zap ire: a prize!"
"zen: fry frenzy."

table of mantle laments [xxu3]
blurb
"ABET?! BEAT"
"ABNORMAL BAN = MORAL"
"ADS KILL ALL KIDS"
"AFOS = OAFS"
"AH, VOWIN[']? HOW VAIN"
"ALLURIN[']: RUIN ALL"
"ALOHA, OL['] OOH-LA-LA"
"ANY DOUBT? BANDY OUT"
"APHORISMS NET MISANTHROPES"
"ARTFUL, YOU? YOUR FAULT"
"ASK NO KOANS"
"ASPIRANT ANTI-RAPS PARTISAN, RIP SATAN" []
"ATHEISM'S MASHIEST"
"AY, LAWS ALWAYS" []
"BAD: DO IT A BIT ODD"
"BAKINGS BASKING? BAG, SKIN"
"BANG-O! GO BAN A BONG" []
"BASSLINE, LESBIANS = SIN, BALES" []
"BAWDINESS IS BAD NEWS"
"BE CARING? NICE BRAG" []
"BE DECENT: BENT, CEDE"
"A BE-IN? I? BANE"
"BE-INS/IBSEN BE SIN"
"BE MINDLESS? SEEMS BLIND" []
"BEATLES BE STALE"
"BEER, CADS? BE SCARED"
"BEER? VILE, BELIEVER"
"BEN-WA? EW! BAN"
"BILLIARDS? RABID ILLS"
"BIT TRUE TRIBUTE? REBUT IT"
"BLOW UP, LOW PUB"
"BLUNDER-LED? BURN" []
"BONA FIDE? NO? BAD, FIE"
"BOOZE DENS NEED BOZOS"
"BORN AGAIN? NO BARGAIN"
"BREATHE WRONG? BANE REGROWTH"
"THE BRIG BE RIGHT"
"BRING UP BURPING? BURN, PIG"
"BUDDHAS? BAH! DUDS"
"A BURP'S SUBPAR"
"CERTITUDE! RECTITUDE"
"CHA-CHA? ACH! ACH"
"CHARITABLE? LIAR, BETCHA"
"COMPASSION? SCAM! POISON"
"CONSIDER, SCORN, DIE" []
"CONSUMING GIN? NO, SCUM"
"CONTEMPLATE ALE: CONTEMPT"
"COOP LIARS, ACROPOLIS"
"COPULATE-PLACE? OUT"
"COPULATIONS? UNAPOSTOLIC"
"CRAVE GOLD? COLD GRAVE"
"CREATIVES? VISCERATE"
"CREED CEDER? DE-REC"
"A CROOK? O, CROAK"
"CULTURES, CURE LUST"
"CUPIDITY? PUDICITY"
"CURVIEST, VICE = RUTS"
"DANCE = CEDE DECADENCE"
"DEALINGS = DANG LIES"
"DEISM NOW, MR? SIMMER DOWN"
"DESIST, DEISTS"
"THE DEVIL: A VILE DEATH"
"DIANETICS INDICATES ANTICS. DIE"
"DIG NOT DOTING"
"DIG THOR? DO RIGHT"
"DIGNITY? TIDYING"
"DIRTY JOKES? RISKY! DO JET"
"DISDAIN SIN, I ADD" []
"DISLIKE LIES, KID"
"DISLIKES: KIDS['] LIES"
"DISORDER = SORDIDER"
"DO INK? NO, KID"
"DO WRONG? GO DROWN"
"DOFF LUST? OLD STUFF"
"DOING IN GOD? NO, DIG"
"DONATE? ATONED"
"DOOBIE? BOO! DIE"
"DOWN THY WHY-DON'T"
"DREAD NOT? DON'T DARE"
"EDITORIALS = IDOLATRIES"
"EGO: VIRUS, GRIEVOUS"
"EH, A TOT TO HATE" []
"EH, PURE UP HERE"
"EH, RYE'S HERESY" []
"EH, SEX = HEXES"
"ELEGISING = EGGIN[']! LIES"
"EMPATHY IS SHAM PIETY"
"ENERVATE? VENERATE"
"ENSHEATH HEATHENS" []
"ERECTIONS NECROTISE"
"EUDEMONISTS? SEDIMENTOUS"
"F'ING ODD? FIND GOD"
"FAD, U R FRAUD"
"FAIRY TALES ARE FALSITY"
"FAITHFUL-FITFUL? AH"
"FAST? COOL? SCAT, FOOL"
"FEELING UP? FIE! PLUNGE"
"FERULE? RE-FUEL"
"FIB? RELY BREIFLY"
"A FIDDLE: ADD LIFE? IDLE FAD"
"FILM SET? LEFTISM"
"FILTH AS TEXT? LET'S FIX THAT"
"FITNESS FEST = SIN"
"FLAKINESS: SINK A SELF"
"FLASHIEST? FAITHLESS" []
"FLESH IS SELFISH"
"FLOUT-PRAY? PARTY FOUL"
"FOCUS ON SIN: CONFUSIONS"
"FOIL SLOTH, SOLO FILTH" []
"FOREGO, GOOFER"
"FOREPLAY? PRAY, O ELF"
"FORESTALL, FELLATORS"
"FORGO YE GOOFERY" []
"FORNICATING = FRACTIONING"
"FOULNESS LOSES FUN"
"FRIED UP? I = PURIFIED"
"GAIETY IN TV = NEGATIVITY"
"GAY PRIDE? GRIPE DAY"
"GEISHAS? HISSAGE" []
"GENTILES? STEELING" []
"GET PHYSICAL? CHASTELY, PIG. PITCH SAGELY"
"GIN HATE GAINETH" []
"A GIN LUSH? LANGUISH"
"GO BET? BE GOT"
"GO FUND GOD? FUN"
"GO SOBER, GOOBERS" []
"GOD BANS BAD SONG"
"GONE BAD? GOD BANE! NO BADGE" []
"GOT LINGERIE, ELITE GRINGO? GET RELIGION"
"GRACE = LIES/SACRILEGE"
"GREED, CATS? GET SCARED"
"GRIEF'S FUN! SUFFERING"
"GROG = SELF FLOGGERS"
"GUILDERS = SLUDGIER"
"GUILE = LIE, UG"
"GUITARS? OUT! GRATUITOUS" []
"HARDLINE HANDLER = I"
"HASSLE? LASHES"
"HATE FREER HEREAFTER" []
"HATE GOD? GO! DEATH"
"HATE SIN IN HASTE" []
"HATE SIN, OK? SHAKE ON IT"
"HATEFUL, EH? FAULT" []
"HBO'S BOSH" []
"HEATHEN? NAH, THEE"
"HEDONISM? MIS-HONED"
"HEDONISM? MONISHED" []
"HEDONISTS = DISHONEST: [']STONISHED"
"HELLFIRES RILE FLESH"
"HEURISM? MUSHIER"
"HICKEYS: SICK, HEY"
"HIS DEMONS: HEDONISM'S DIMNESS, OH"
"HIS GOAL: NO HOOLIGANS"
"HOLIDAYS? I SAY, HOLD"
"HONEST AIM: NO ATHEISM" []
"HOPE? EH, PO[']"
"HOPING? ROT. POOR THING"
"HOPING'S NIGH? SOP"
"HOT DIVE = THE VOID"
"HOT SIN? [s-w] NO" []
"HUMANISM? SHUN! MAIM"
"HURT GOD? DROUGHT"
"I BLESS? BS! LIES"
"'I DODGE GOD?' DIE"
"I FLED SINNERS['] FRIENDLINESS"
"I KNOCK KINKCO"
"I RE-DAMN DREAMIN[']" []
"I SANCTION ONANISTIC INACTIONS"
"I SCOFF OFF SCI"
"I SCORN SCORIN[']" []
"I SENSE SIN, SEE" []
"I SUNDER RUDE SIN"
"I'D SLUR LURIDS"
"I'D STROKE?! DORKIEST! DO STRIKE" []
"ICY MALT: A CALAMITY"
"IDLE, EH? TV? THE DEVIL"
"IDLINGS GILD SIN"
"IDOLATRY DAILY = ROT"
"IF BINGE, BIG FINE"
"IF NEUTRAL, REAL UNFIT" []
"IF NO CUSS, FOCUSINS[']"
"IF PRIDE, FIE, DRIP"
"ILL TEMPER? PRIME! TELL, MELT PERIL"
"IN DOUBT? NOT I, BUD"
"INCULPATE! CLEAN IT UP"
"INFIDELS FIND LIES"
"INSOUCIANT? CAUTION: SIN"
"INTO CRUDE? INTRODUCE REDUCTION"
"INTO US? SIN: OUT"
"INTOX? NO! X IT"
"IS HOPE NEAR? NO, PHARISEE"
"IT'S NORMAL? MORTAL SIN" []
"IT'S PAP, PAPIST"
"IT'S THE TITHES, THEIST" []
"KORAN? O, RANK"
"KUMBAYAS? SAMBA? YUK"
"LABS BE BABELS"
"LACK BIBLE? I'LL BE BACK"
"LECTORSHIP? SPLOTCHIER"
"LEGIT RAVE: GIVE LATER = GREAT EVIL"
"LENIENT? A POX: EXPONENTIAL" []
"LESS CRIME! MERCILESS"
"LET'S FIX SEX-FILT"
"LEVY NOT NOVELTY" []
"LEWD ACTOR? COLD WATER" []
"A LIE TOLLS? LOSE IT ALL"
"LIES DANDY? DYED NAILS? DEADLY SIN"
"LOOK WEIRD? LO, WORK, DIE"
"LOST ONCE? NOT CLOSE" []
"LSD IS NOT SIN? DOLTS"
"LUST, HERE? THE RULES SLUR THEE" []
"LUST-LED = DULLEST"
"LUST'S RIFE, FRUITLESS"
"LYIN'S SINLY"
"MAGIC? BS! BIG SCAM"
"MAGIC USER? SCUM! I RAGE"
"MALT, SON? LOST MAN"
"MAMBO? VILE! IMMOVABLE"
"MANKIEST? MISTAKEN" []
"MASTURB = BUM ARTS! MUST BAR"
"MERCY IS CRIMES-Y"
"MISERABLE? RISE! BLAME"
"MISSED DEISMS? DISS [']EM"
"MODERATE = MERE TOAD MADE ROTE" []
"MODERNITIES? MISORIENTED"
"MOONIES? NOISOME"
"MOOSH HOMOS" []
"MOST DYE. MY DOTES? MODESTY"
"MUSICAL? AIL, SCUM" []
"MUSING SIN? MUG"
"NAG MOOD? GOOD MAN"
"NAG PROUDLY. PARDON? UGLY" []
"NEED MORE? NO REDEEM"
"NEW AGE? GEE, NAW" []
"NICKNAMES SICKEN, MAN"
"NIL PUBIC IN PUBLIC"
"NOBLESSE? BONE LESS"
"NOIRS? NO SIR" []
"NOISY? OY, SIN"
"NOT MAD TO DAMN"
"NOT ODD? DON'T DO D-N-D, TOO"
"NOT SERIOUS = TOO-SURE SIN"
"NUTS TO NO-TUTS SUTTON" []
"O, DOGMATIST MATT IS GOOD"
"O, STOW WOOTS"
"ODD IF DO DIF"
"OF SIN: NO IFS"
"OGLE OFT? FOOL, GET LET GO OF"
"OGLIN'S LOSING"
"OH, I'D SLAY HOLIDAYS"
"OL['] MINDSET: DON'T SMILE? NOT MISLED"
"ONE FLIRT, NO FILTER: LIFE TORN"
"ONE THRILL? ROT IN HELL"
"ONE URGE, YO? YOU'RE GONE"
"OUGHTNESS = TOUGHNESS"
"OUT, RASH AUTHORS"
"OVID? VOID"
"OW, SIN WINS, O WINOS"
"OY, ONE URGE? YOU'RE GONE"
"PANTHEIST? IN THE PAST" []
"PAR-TAY? AY, TRAP! PAY, RAT"
"PARDON DA PORN? NO, PARD[']" []
"PART BUNK? BANKRUPT"
"PASSION IN SOAPS? NO, I PASS"
"PEER? SPY? YEPPERS"
"PENETRANT? REPENTANT"
"PENTAGRAM? PAGAN TERM"
"PERISH NOT THE PRISON"
"PERVERSION OVERRIPENS"
"PHARISEE, EH? PRAISE HEAPS? IRE! I RESHAPE"
"PHOBIA'S A BISHOP"
"PICK NOSE? SICK PEON" []
"PINAFORES IS PROFANE"
"PINBALL? PILL? BAN"
"PLAID SUIT? AIL, STUPID"
"PLAY DICE? YEA, CLIP'D"
"PLAY PARTY? PAY RAPTLY? PRAY APTLY"
"PONYTAILS PLAY TO SIN"
"POPELESS, PEOPLES'S PEP LOSES"
"PORN HAS ORPHANS"
"PORN IS PRISON"
"POSH BI BISHOP HIP? SOB"
"POSIT NO POTIONS" []
"POUND NO PUD"
"POUTISH? SHIP OUT"
"PREVENT TV-PREEN"
"PRINCIPLES CRIPPLE SIN"
"PRO-GAY? GO PRAY"
"PRO-SIN? PRISON ROPIN'S" []
"PROCLIVITY: CIVIL TO PRY"
"PROSECUTE CREEP-OUTS" []
"PUB RUN? BURN UP"
"PUBLIC HOUSE, EH? PIOUS CLUB"
"PUN-CREED? PRUDENCE"
"PURE BOD? BE PROUD" []
"PURITANISM IMPAIRS? NUT"
"PURSUER, US = PURER"
"RAPTURES? RUSE! TRAP" []
"RATE VICE CREATIVE?! REACT! VIE" []
"RE-OFFEND? FOREFEND" []
"RE SMOKING: SMIRK GONE"
"RE-UPDATE: I REPUDIATE"
"REASONING? GO NEAR SIN"
"RECIDIVOUS, VERIDICOUS"
"REPULSE A PLEASURE PLEA? SURE" []
"RESOLVING SIN? GROVEL"
"RID PLAY RAPIDLY"
"RIP A CULT? A CULPRIT"
"ROTE PAGANS['] PATRONAGE: GROPE SATAN"
"RUE ALL ALLURE"
"RUT? WRATH! RAW TRUTH"
"(S'MORE MORES)"
"SALOONS? NO! A LOSS"
"SANCTION NO ANTICS"
"SANEST SIN? NASTINESS"
"SAUCINESS CAUSES SIN"
"SCANTITY = SANCTITY"
"SCI-FI IS FIC"
"SECULAR? NO: LARCENOUS" []
"SECULAR RECUSAL: SLUR? ACE"
"SEE GIN: GEE, SIN" []
"SEEDIER? I SEE RED" []
"SEX JOINT? TO JINXES! JOT NIXES"
"SHINTO? NO, THIS" []
"SHOOT CRAPS: SPORT? CHAOS"
"SHOOT UP? THOU P O S" []
"SHOULDN'T HOLD NUTS" []
"SICKO? I SOCK" []
"SICKOS? ICK! SOS" []
"SILLINESS IS ILLNESS"
"SIMONY? O MY, SIN" []
"SIN AMOUNT: MOUNTAINS"
"SIN? COUNT UNCTIONS"
"SIN FEARS FAIRNESS"
"SIN HUT? SHUN IT"
"SIN NOW WINS ON"
"SIN: ONENESS IS NONSENSE"
"SIN? OOP: POISON" []
"SIN? PROPOSE OPPRESSION" []
"SIN'S FEAR: FAIRNESS"
"SING LEAST SLANGIEST"
"A SMILE IS LAME" []
"SMUT-CO = TO SCUM"
"SNEAK FOR NO FREAKS"
"SO PERVY? VERY? P O S"
"SO VALIANT? SALVATION AVAILS NOT"
"SODS, END ODDNESS"
"SOFT? NAA. A FAT SON OF SATAN"
"SOT KING? GO SKINT"
"SPONSOR PORN? SOS"
"A SPORTING PASTORING? GROAN! PITS"
"SPURTIN[']? SPURN IT"
"ST. BRAD: A BAD STAR"
"ST. CINDI INDICTS"
"ST. DEON = STONED DEN-SOT" []
"ST. ELY'S SLYEST STYLES? LESS, T/Y"
"ST. ENCINI ISN'T NICE"
"ST. LOU, OL['] STU: LOUTS" []
"ST. TERIL LITTERS"
"STAGNATE: GET SATAN"
"STALE MIND, DISMANTLE ID-LAMENTS"
"STAND ST. DAN = AN STD"
"STAR SHINES? TRASHINESS"
"STARK FOE OF TAKERS TO FREAKS"
"START FEW WET FARTS"
"STIR UP, PURIST! SPUR IT"
"SURTOUT: SORT OUT OUR TOTS"
"A SWINGER? SWEARING? EW! ARG! SIN"
"SYMPATHY: A PSY-MYTH"
"TAILORED? IDOLATER" []
"TAPHOUSE? PHASE OUT"
"TAROT = A TORT"
"TAT-SHOD? SOD THAT"
"TECHIER? HERETIC"
"TEEN SIMPS? EMPTINESS"
"TEMP-FAIL? AMPLE FIT? FLAME PIT" []
"THIRD LEG? RED LIGHT"
"THOR'S SHORT"
"THOU, BEG? BE TOUGH"
"THRUST TRUTHS"
"THUS PRIM TRIUMPHS"
"TIDY SUM? MIS-DUTY"
"TO DERP = DE TROP"
"TO FAPS OFT? SAP"
"TO HAIL TOIL, AH"
"TO HAREMS: SHAME! ROT"
"TO RAP OR TAP = PO['] ART"
"TO RAP'S A SPORT, PASTOR? PART! SO" []
"TO STUMP: SMUT, POT"
"TORAH, HO? ART? HA, ROT" []
"TOUT ESPRIT? TUT, ROPIEST PROSTITUTE"
"TOYS? TRIPE! POSTERITY" []
"TRAIN UP, PURITAN" []
"TRANSGRESSIONS, ANGST, SORRINESS"
"TRANSMIT TANTRISM? TAINTS, MR" []
"TRIPE'S RIPEST"
"TRITHEISTS? THIRSTIEST"
"TURPITUDE: TIED UP RUT" []
"TV: ART, YES? TRAVESTY"
"U: FLAW? AWFUL"
"UM, BILE'S SUBLIME" []
"UNCHOSEN? NONE SUCH. SHUN ONCE. ECHO, NUNS"
"UNCLEAR EVILS? SURVEILLANCE"
"UNTOWARD? DRAWN OUT"
"UP! I SO PIOUS"
"UP TO SIN? SPIN OUT" []
"UR-SIN: RUINS"
"URGENT! SIN INSURGENT" []
"US, POOR MUSIC, COPIOUS RUMS: PROMISCUOUS"
"V. PUERILE? PURE EVIL"
"VANITY IN TV? AY"
"VILIFY ROT, FRIVOLITY"
"VITUPERATE? A VIRTUE, PET"
"VOICE HATE TO ACHIEVE" []
"WANDER? SINS. INWARDNESS"
"WANK? WOE, WAKE NOW"
"WANT? BASE! SWAT BANE"
"WASTE FOOD? OAF, DO STEW"
"WASTE MONEY: AMNESTY? WOE"
"WHO RIPS WORSHIP? MAD SIN ADMINS"
"WINES? EW, SIN" []
"WISDOM? NO, DOOM WINS"
"WRITE PORN? WORN TRIPE"
"A WTF = A FATWA"
"YO, A SIN? I SAY NO"
"YOUR SIDE IS RUDE, YO"
"YOUTHFUL? UH, FLY OUT"
"YUP, I TRIM IMPURITY"

table of missing deli foods [xxu4]
blurb
"Appealing lagniappe"
"Artichoke, heck, a trio"
"Beef or beer of before"
"blast-meal meatballs"
"boars['] feet roast beef"
"Bran of no barf"
"Buffest buffets"
"Cold-meat-meld taco"
"Crud-Curd"
"Crumpets Spectrum"
"dunes of fondues"
"Filet I left"
"Hug-food of dough"
"Idleness Linseeds" []
"Kelpic Pickle"
"A Lad's Salad"
"Lo-Fat Float"
"a lossier rissole"
"Meals o['] lame-o's"
"near-goo oregano"
"Nirvana Navarin"
"No-ABC bacon"
"Obitual tabouli" []
"Olives so vile" []
"Panic-Set Picantes"
"A pecan canape"
"Picante nitecap"
"Pickles of folk-spice"
"Poets['] pesto" []
"Precious rice soup"
"previously soupy liver" []
"Prog-GORP"
"Rain-made marinade"
"Roasted red oats" []
"sad-curst custards"
"Semi-banal lima beans"
"Sorta-Top Pot-Roast"
"Tasto-toast-tatos"
"Toroid Dorito"
"Transience nectarines"
"Upstream tempuras"
"Usual Luaus"
"Utes['] suet"
"zeal-shunt hazelnuts"

table of moralizers [xxu5]
blurb
"A. Turnip, Puritan" []
"Abjured Jeb Radu"
"Abjurer Jae Burr"
"Act-Naif Fanatic Nia Fact"
"Admonisher [if player is male]Misha Roden[else]Sandie Rohm[end if]"
"Adviser [if player is male]Sid Vera[else]Vi Deras[end if]"
"Advisory [if player is male]Roy Davis[else]Ivy Rodas[end if]"
"Al 'Bzt' Blatz"
"Al Esquer, Le Square Squealer"
"Alarmist Ali Stram"
"Ale/Rum Mauler [if player is male]Mel Rau[else]Erma Lu[end if]"
"Amender Man Reed" []
"Analyst [if player is male]Al Tansy[else]Tana Sly[end if]"
"Anchorite Hortencia"
"Angelic Celia Ng"
"Annoyer Oren Yan" []
"Anti-Booze Zoe Bonita"
"Anti-Clod Cid Alton"
"Anti-Crime Metrician Mina Trice"
"Aphorist Pia Short" []
"Ara 'Bzt' Braatz"
"Ardent Nat Erd" []
"Ashram Marsha"
"Asinine Rut Insinuater Erin Austin"
"Assertoric Ostraciser [if player is male]Rico Sastre[else]Sari Cortes[end if]"
"Ax-Lies Alexis" []
"Axe-Grind [if player is male]Rex Gadin[else]Regan Dix[end if]"
"Badgerer [if player is male]Edgar Erb[else]Edra Berg[end if]"
"Ban-a-trope Bonaparte"
"Ban-Wild Baldwin"
"Be-Civil [if player is male]Vic Lieb[else]Bev Ilic[end if]"
"Beat-Sin Bastien"
"Been-Dark Bednarek" []
"Behaver Ev Baehr"
"Blamer Ada Balderama"
"Blamer Ali Mirabella"
"Blamer China Chamberlain"
"Blamer Goen Longerbeam"
"Blamer Handa Abdelrahman"
"Blamer Keo Blakemore"
"Blamer Lee Bellemare"
"Blamer Sofia Laframboise"
"Blamer Tash Halberstam"
"Blamer Ty Tremblay-Lamberty"
"Blustery [if player is male]Les Truby[else]Elsy Burt[end if]"
"Bolstering Gilbertson"
"Bore Al Arbelo"
"Bore Art Barreto"
"Bore Cal Barcelo"
"Bore Calyn Clayborne"
"Bore Carl Berrocal"
"Bore Dan Broaden"
"Bore Darin Berardino"
"Bore Del Doebler"
"Bore Elissa Labossiere"
"Bore Else Ebersole"
"Bore Emery Obermeyer"
"Bore Evans Beaverson"
"Bore Fern Freeborn"
"Bore Ford Oberdorf"
"Bore Gerst Osterberg"
"Bore Glenda Baldenegro"
"Bore Grant Bontrager"
"Bore Hans Harbeson"
"Bore Ida Broadie"
"Bore Laci Alberico"
"Bore Lad Laborde-Belardo"
"Bore Leif Belfiore"
"Bore Lenard Oberlander"
"Bore Les Ebersol"
"Bore Lita Liberato"
"Bore Lu Bouler"
"Bore Lyda Boardley"
"Bore Mae Boerema"
"Bore Mel Belmore"
"Bore Miller Obermiller"
"Bore Nat Boatner-Bartone"
"Bore Odell Rebolledo"
"Bore Pam Poremba"
"Bore Sam Ambrose"
"Bore Sandi Bedrosian"
"Bore Shaun Barnhouse"
"Bore Sima Ambroise"
"Bore Stella Ballestero"
"Bore Tad Bretado"
"Bore Ty Boyter"
"Bore Wm Bowmer"
"Borer Dick Broderick" []
"Boring Grobin" []
"Boy Rev Overby"
"Briber Ribber Bri Erb"
"Brimstone Bert Simon"
"Bunkered Debunker Ned Burke"
"Burdened Rene Budd"
"Burn-in-Hell Len Hilburn"
"Called Cadell"
"Calvinist Civil Stan"
"Cancely-Clean Cy Clancey"
"Captious Tia Csupo"
"Caretaker [if player is male]Ara Eckert[else]Tara Creek[end if]"
"Caring-est [if player is male]Eric Tsang[else]Cris Tegan[end if]"
"Caringest [if player is male]Stan Grice[else]Cris Tegan[end if]" []
"Casuist Staci-Su"
"Catchiest Catechist Chet Ticas"
"Catchiest Catechist Sacchetti" []
"Cauter-Curate Art Cue"
"Caviler [if player is male]Al Cervi[else]Val Rice[end if]"
"Ceasing-Gins Ace"
"Celibate [if player is male]Abel Tice[else]Bee Altic[end if]"
"Censurer Ren Cruse"
"Changed Ed Chang"
"Chastiser [if player is male]Rich Seats[else]Trish Case[end if]"
"Cherub Bucher"
"Chider Art Reichardt"
"Chider Bean Reidenbach"
"Chider Les Scheidler"
"Chider Rees Scheiderer"
"Chider Rife Friederich"
"Chider Skeet Ketcherside"
"Chosen Schoen" []
"Citator [if player is male]Art Coit[else]Cari Ott[end if]-Ricotta" []
"Civil Man McIlvain"
"Clarion Carolin"
"Clean Fun Fan Uncle"
"Clear Clare" []
"Clergyman [if player is male]Glen Camry[else]Mercy Lang[end if]"
"Clot Alica Callicoat"
"Clot Anisa Colasanti"
"Clot Ann Clanton"
"Clot Ara Alcorta"
"Clot Arie Talerico"
"Clot Ariel Tallerico"
"Clot Eden Delconte"
"Clot Elsa Costella"
"Clot Eura Lucatero-Clouatre" []
"Clot Leila Locatelli"
"Clot Leta Colletta"
"Clot Lina Cantillo"
"Clot Lisa Castillo-Costilla" []
"Clot Lois Costillo"
"Clot Luci Tuccillo"
"Clot Maia Malicoat"
"Clot Malia Mallicoat"
"Clot Ming McGilton"
"Clot Mirna Clairmont"
"Clot Nilsa Castillon"
"Clot Noe Loconte"
"Clot Rae Lacorte"
"Clot Ray Claytor" []
"Clot Rena Carleton" []
"Clot Rheba Batchelor"
"Clot Rina Coltrain"
"Clot Rosa Locastro" []
"Clot Salena Castellano"
"Clot Samuel Muscatello"
"Clot Sharen Charleston" []
"Clot Skye Stockley"
"Clot Su Locust" []
"Clot Una Lacount"
"Clot Yan Clayton" []
"Coach-Man McConaha"
"Complainant Monica Plant"
"Concerned Ced Conner"
"Conformist Simon Croft"
"Confuser Ern Fusco"
"Conservative Veronica Vest"
"Contrary Ron Tracy" []
"Counselor Lou Cosner"
"Crank Bell Bracknell"
"Crank Elmo Lockerman" []
"Crank Eva Vanacker"
"Crank Eve Cervenka"
"Crank Mae Ackerman"
"Crank Mei Marcinek"
"Crank Mena Ackermann"
"Crank Mo Rockman"
"Crank Moe Ockerman"
"Crank Si Rasnick"
"Crank Sol Clarkson"
"Crank Zee Ezernack"
"Creep-Bug Peg Bruce"
"Critic Elli Riccitelli"
"Critic Ora Tricarico"
"Crucifier Ferriucci"
"Cured [tt] Coudriet" []
"Cured Al Caulder"
"Cured Arn Durrance"
"Cured Sam DeMarcus"
"Cured Seth Deutscher"
"Cured Si Scuderi"
"Curmudgeon Mungo DuRec"
"Damny Mandy"
"Debunked Budd Keen"
"Deft Hater Father Ted"
"Demonizer [if player is male]Rod Menzie[else]Inez Moder[end if]"
"Denier Gal Geraldine"
"Derider Deirdre" []
"Detailer Ted Ariel"
"Deviant-End Vita" []
"Devoted Ted Dove"
"Diluvian Ludivina"
"Disgruntled Ed Lundgrist"
"Disgust-Digs Stu"
"Disputer-Purist Ed"
"Diviner Ed Irvin"
"Dogmatic Magic [d-t]"
"Dolt Agnes Gladstone"
"Dolt Aline Donatelli"
"Dolt Ash Holstad" []
"Dolt Barnes Balderston"
"Dolt Chae Deloatch"
"Dolt Guinn Ludington"
"Dolt Hearn Leonhardt" []
"Dolt Herb Berthold"
"Dolt Higby Lightbody"
"Dolt Ira Altidor"
"Dolt Lea Tellado"
"Dolt Luisa Astudillo"
"Dolt Luise Estudillo"
"Dolt Rena Alderton" []
"Dolt Rhea Aderholt" []
"Dolt Sam Molstad"
"Dolt Sana Dalsanto"
"Dolt Sauer Trousdale"
"Dolt Signe Goldstein"
"Dolt Tia Dattilo"
"Dolt Una Daulton" []
"Domineering [if player is male]Minger Deion[else]Mindi Greeno[end if]"
"Domineering [if player is male]Ogden Minier[else]Monnie Ridge[end if]" []
"Don't-Fart Natt Ford"
"Doom-Nag Goodman"
"Dora 'Bzt' Dobratz"
"Dork Ana Koranda"
"Dork Annese Skenandore"
"Dork Ball Barkdoll"
"Dork Brice Broderick" []
"Dork Buhler Burkholder"
"Dork Cal Lockard"
"Dork Cast Stockard"
"Dork Cay Ackroyd"
"Dork Evans Vondrasek"
"Dork Freda Drakeford"
"Dork Ike Odekirk"
"Dork Lea Oldaker"
"Dork Mosby Dombrosky"
"Dork Nasby Dobransky"
"Dork Nat Kondrat"
"Dork Neal Kolander"
"Dork Neel Kernodle-Knoedler"
"Dork Nesci Derickson" []
"Dork Nunes Dunkerson"
"Dork Sima Radomski"
"Dork Siwek Kedrowski"
"Dork Win Dworkin" []
"Downer Sal Rosenwald" []
"Dr. Bible-Dribble"
"Dr. Nag-Grand" []
"Drag Ana Granada"
"Drag Angele Delagrange"
"Drag Aron Norgaard"
"Drag Bee Debarge"
"Drag Belen Landgrebe"
"Drag Bo Bogard"
"Drag Breen Anderberg"
"Drag Byer Gadberry"
"Drag Celi Claridge" []
"Drag Chae Craghead"
"Drag Denis Sandridge"
"Drag Eden Degrande"
"Drag Elden Delgrande"
"Drag Eli Gelardi"
"Drag Elsa Ragsdale"
"Drag Elvin Vangilder"
"Drag Ena Granade"
"Drag Erin Gardiner"
"Drag Ernie Readinger" []
"Drag Ethan Dagenhart"
"Drag Eve Degrave"
"Drag Fae Degraaf"
"Drag Flo Galford"
"Drag Gene Anderegg-Degrange"
"Drag Helen Engelhard"
"Drag Heppner Pendergraph"
"Drag Ian Radigan"
"Drag Ike Akridge" []
"Drag Inez Danziger"
"Drag Jae Grajeda"
"Drag Jenna Grandjean"
"Drag Lan Lagrand"
"Drag Lea Lagarde"
"Drag Lee Arledge"
"Drag Leif Garfield" []
"Drag Len Dangler" []
"Drag Lenn Landgren"
"Drag Leo Geraldo" []
"Drag Les Geralds"
"Drag Lila Gaillard"
"Drag Lili Gilliard"
"Drag Lin Darling" []
"Drag Linton Darlington"
"Drag Lola Gallardo" []
"Drag Maia Madriaga"
"Drag Mila Madrigal" []
"Drag Milo Grimaldo"
"Drag Ned Degrand"
"Drag Neil Aldinger"
"Drag Nina Andringa"
"Drag Noah Hagadorn-Hargadon"
"Drag Noe Dragone" []
"Drag Ona Granado"
"Drag Piet Patridge"
"Drag Rene Gardener" []
"Drag Rhine Hardinger"
"Drag Roe Gerardo"
"Drag Ron Norgard"
"Drag Sanabia Bagdasarian"
"Drag Selene Greenslade"
"Drag Serota Ostergaard"
"Drag Sona Granados"
"Drag Sonner Granderson"
"Drag Spenser Pendergrass"
"Drag Teena Teagarden"
"Drag Thuy Daughtry"
"Drag Tien Tangredi"
"Drag Tori Girardot"
"Drag Yan Nygaard"
"Drip Arch Prichard"
"Drip Asa Paradis-Paradis"
"Drip Ella Delpilar"
"Drip Evans Pendarvis" []
"Drip Felice Percifield"
"Drip Flo Lipford"
"Drip Greta Partridge"
"Drip Ian Pardini"
"Drip Len Prindle"
"Drip Levan Vanderlip" []
"Drip Loree Delpriore" []
"Drip Mae Dampier" []
"Drip Mia Diprima"
"Drip Omer Pridmore"
"Drip Oren Perrodin"
"Drive-Slow Drew Silvo"
"Drivel-Led Irv" []
"Drone Al Renaldo" []
"Drone Alec Calderone"
"Drone Ali Leonardi" []
"Drone Alica Candelario" []
"Drone Anh Hernando"
"Drone Ava Varnadoe"
"Drone Bari Berardino"
"Drone Brian Bernardino"
"Drone Daws Edwardson"
"Drone Dora Arredondo"
"Drone Elsa Rosendale" []
"Drone Gena Degennaro"
"Drone Gil Reingold" []
"Drone Giles Delsignore"
"Drone Gina Digennaro"
"Drone Hal Leonhard"
"Drone Ian Andreoni-Orendain"
"Drone Lash Rosendahl" []
"Drone Lila Nardiello" []
"Drone Lisa Leonardis" []
"Drone Luba Abdelnour" []
"Drone Mia Demarino" []
"Drone Oda Aredondo"
"Drone Ola Leonardo"
"Drone Pavel Vanderpoel" []
"Drone Sal Roseland" []
"Drone Sam Soderman" []
"Drone Sana Andreason"
"Drone Star Ostrander"
"Drone Su Duerson" []
"Drone Sung Gunderson"
"Drone Val Overland" []
"Drugger Grudger Greg Urd"
"Dry Abel Bradley"
"Dry Adele Adderley"
"Dry Arlen Rylander"
"Dry Au Duray"
"Dry Ava Varady"
"Dry Bao Broady" []
"Dry Barber Bradberry"
"Dry Ben Bryden"
"Dry Berna Bernardy"
"Dry Bo Brody-Dobry" []
"Dry Bree DeBerry"
"Dry Carmen Cryderman"
"Dry Clemons McReynolds"
"Dry Cora Cordray" []
"Dry Dale Ledyard-Adderly"
"Dry Eli Ridley"
"Dry Ena Radney-Draney"
"Dry Euna Reynaud" []
"Dry Eve Devery"
"Dry Ewan Wandrey"
"Dry Flo Lyford"
"Dry Friesen Reifsnyder"
"Dry Gail Gilyard"
"Dry Gena Gradney"
"Dry George Degregory"
"Dry Gina Ginyard"
"Dry Ivan Vinyard" []
"Dry Laci Claridy"
"Dry Lea Darley"
"Dry Leann Nylander" []
"Dry Lee Yelder"
"Dry Leif Fridley" []
"Dry Leon Reynold"
"Dry Mae Demary" []
"Dry Mana Maynard"
"Dry Manie Deyarmin" []
"Dry Mina Minyard"
"Dry Mona Raymond" []
"Dry Noe Dorney" []
"Dry Noemi Dorminey"
"Dry Olsen Reynolds" []
"Dry Pa Pardy"
"Dry Rae Ardrey" []
"Dry Rena Reynard"
"Dry Sen. Snyder-Synder"
"Dry Signe Dysinger"
"Dry Sina Sinyard"
"Dry Slate Stradley" []
"Dry Sol Berg-Goldsberry"
"Dry Tesha Hardesty"
"Dry Theo Doherty" []
"Dry Tia Dayrit"
"Dry Tisha Hardisty"
"Dry Toi Dority"
"Dry Tona Drayton"
"Dry Weber Dewberry"
"Dry Yael Yardley"
"Dull Amy Mullady"
"Dull Berna Rubendall"
"Dull Iris Rudisill"
"Dull Len Lundell"
"Dull Ma Ludlam"
"Dull Sharen Hulslander"
"Dull Theo Leuthold"
"Earl 'Bzt' Baltzer"
"Ed Most Modest"
"Eglise Gisele" []
"Eli 'Bzt' Belitz"
"Elie 'Bzt' Beitzel"
"Eternising Steininger"
"Evangelist [if player is male]Gavin Steel[else]Agnes Levit[end if]" []
"Evangelist [if player is male]Nigel Stave[else]Stevie Lang[end if]" []
"Evangelist Nate Selvig"
"Evict-Sin Vic Stein-Vicentis"
"Explanatory [if player is male]Early Paxton[else]Roxy LaPenta[end if]"
"Faith-Led Hatfield"
"Faultfinder [if player is male]Delta Ruffin[else]Rutland Fife[end if]"
"Fearmonger [if player is male]Armon Grefe[else]Gema Renfro[end if]"
"Fine Narc Francine"
"Fingerer [if player is male]Ren Greif[else]Geri Fern[end if]"
"Firebrand [if player is male]Brian Fred[else]Fern Baird[end if]"
"FLOUTS OF LUST LOFT US"
"Flouts-of-Lust Loftus"
"Fluster-Lust Ref St. Fleur"
"Formally Fly Moral Myla Rolf"
"Found Fund-O Don Fu"
"Fractious [if player is male]Curt Sofia[else]Cari Foust[end if]" []
"Frenetic Infecter [if player is male]Eric Fent[else]Fern Tice[end if]"
"Fussy Red Dreyfuss"
"Gallant Tall Nag Nat Gall"
"Generalist Easterling"
"Gilb Drone Olberding"
"Glum Acey Mcgauley"
"Glum Ana Mangual"
"Glum Anita Manigault"
"Glum Aries Margulies"
"Glum Dina Maulding"
"Glum Ettie Guilmette"
"Glum Hana Laughman"
"Glum Kena Kugelman"
"Glum Lina Mulligan" []
"Glum Lorie Guillermo"
"Glum Noah Loughman"
"Glum Rio Gilmour"
"Glum Risa Margulis"
"God Botherer Herbert Good" []
"God Botherer Robert Hodge"
"Godlier Gloried Gil Rode"
"Gong-Flaw Wolfgang" []
"Goob Ard Goodbar"
"Goob Hunt Boughton"
"Goob Irma Ambrogio"
"Goob Lan Bologna"
"Goob Ronni Bongiorno"
"Goob Rush Boroughs"
"Goob Rusher Rosebrough"
"Goob Shani Boghosian"
"Goob Sina Bogosian"
"Goob Sly Goolsby"
"Good Min Domingo"
"Good Rina Giordano"
"Good Wilder Wooldridge"
"Grater Garret Trager"
"Gratin['] Tigran"
"Great Kid [if player is male]Tad Krieg[else]Gita Derk[end if]"
"Green Art Gaertner"
"Green Bill Bellinger"
"Green Del Legendre"
"Green Dona Degennaro"
"Green Fidel Greenfield"
"Green Hugo Greenough"
"Green Iris Reisinger"
"Green Lee Greenlee"
"Green Rob Bergeron"
"Green Tod Edgerton"
"Green Val Lavergne"
"Grim Abe Brimage"
"Grim Alia Miraglia"
"Grim Alisa Marsiglia"
"Grim Allen Mallinger" []
"Grim Angel Riggleman"
"Grim Ann Manring"
"Grim Arntson Morningstar"
"Grim Ash Grisham" []
"Grim Cal Mcgrail"
"Grim Eden Medinger"
"Grim Ellen Mellinger"
"Grim Elsy Grimsley-Grimsley"
"Grim Ely Grimley"
"Grim Ena Germain" []
"Grim Hana Ingraham"
"Grim Heaven Everingham"
"Grim Lan Marling"
"Grim Lang Gramling"
"Grim Leo Gilmore"
"Grim Leola Gallimore"
"Grim Leon Longmire"
"Grim Leonel Moellering"
"Grim Leslee Seegmiller"
"Grim Lida Grimaldi"
"Grim Lionel Gremillion"
"Grim-Lip Prim Gil, Pilgrim"
"Grim Lou Gilmour" []
"Grim Nat Girtman"
"Grim Nola Margolin"
"Grim Oren Rominger"
"Grim Rae Armiger"
"Grim Reese Griesemer"
"Grim Reith Rightmire"
"Grim Rena Merrigan"
"Grim Rose Grismore"
"Grim Saul Margulis" []
"Grim Spann Springman"
"Grim Stone Motsinger"
"Grim Tacy McGarity"
"Grim Tona Morganti"
"Grim Tracy Mcgarrity"
"Grinch Rich Ng"
"Griper Noe Peregrino"
"Griper Tad Partridge" []
"Grouser Reg Urso"
"Grubby Bug Bry"
"Guide Aldo Delgaudio"
"Guide Alla Delaguila"
"Guide Ron Gourdine" []
"Guide Sal Gesualdi"
"'Guilts' Lustig"
"Guru Mia Murguia"
"Halter Thaler"
"Hammering Marge Minh"
"Harems Masher Mr. Ashe" []
"Harmless Les Marsh"
"Haro 'Bzt' Bozarth"
"Hatin['] Alec Chatelain"
"Hatin['] Amos Mathiason"
"Hatin['] Else Haseltine"
"Hatin['] Ernest Hartenstein" []
"Hatin['] Mae Mathenia"
"Hatin['] Mel Thielman"
"Hatin['] Mose Mathieson" []
"Hatin['] Neal Nathaniel"
"Hatin['] Nell Tannehill"
"Hatin['] Wm Whitman"
"Heap-Crime Impeacher [if player is male]Ari McPhee[else]Pam Cherie[end if]"
"High-Road Dari Hogh"
"Holy Ada Holaday"
"Holy Eda Hoadley"
"Holy Fidel Holyfield"
"Holy Ida Holiday"
"Holy Lida Holliday"
"Holy Man Lon Mahy"
"Holy Rod Holroyd"
"Holy Sue Housley"
"Holy Wailer Yellowhair"
"Hon. Clay Halcyon"
"Honester Hortense Thoresen"
"Hot-Dogma Thad Moog-Goodmath"
"Huge Bore Beougher"
"Humblest Seth Blum"
"Hurtful Ruth Ulf"
"Hypnotic, Pythonic Ty Chopin" []
"Hypocrite Hector Yip"
"Hypocrite Hoyt Price" []
"I-Cure-Lust Lucretius"
"I-Know-Best Kit Bowens"
"I'm-Law Wilma"
"Icky Mr. Myrick"
"Ideologue Leo Goudie"
"Idolater [d-t] Ariel"
"Ill [']N Grave Gallin['] Rev. Granville" []
"Imputer Pure Tim"
"Incisiver Eric Ivins"
"Infallible Blane Ifill"
"Inferior [if player is male]Orin Frei[else]Rori Fine[end if]"
"Informed [if player is male]Fred Mino[else]Fern Modi[end if]"
"Ingrate Geri Tan"
"Injured Dr. Junie"
"Internet-Renitent Trent Nei"
"Involved Liv Devon" []
"Jacked-Up Jude Pack"
"Jealous Soul Jae"
"Just-Saying Guy St. Janis"
"Just Wise Wes Tsuji"
"Justified Judi Feist"
"Kip Thoen the Pinko"
"Kneller Kellner"
"Know-it-All Will Tonka"
"Lea 'Bzt' Batzel"
"Ledo 'Bzt' Betzold"
"Legal Rev. Gravelle"
"Lemonhead [if player is male]Noel Ahmed[else]Dee Holman[end if]"
"Limit-It Lim"
"Literal [if player is male]Ira Tell[else]Tia Rell[end if]"
"Lorena 'Bzt' Brazelton"
"Low-Sin Wilson"
"Lui 'Bzt' Lubitz"
"Luminary [if player is male]Marlin Yu[else]Myrna Lui[end if]"
"Lyncher Cherlyn"
"Mad Priest [if player is male]Tim Spader[else]Tari Demps[end if]"
"Make-Sense Sean Meeks" []
"Malicing-Claiming Gia McLin"
"Maligner [if player is male]Neal[else]Lena[end if] Grim" []
"Manner-Kid Kinderman" []
"Mannerist Martinsen"
"Meddler Mel Redd"
"Meek Clair Mielcarek"
"Meek Lan Kleeman"
"Meek Len Kelemen"
"Meek Mary Kammeyer"
"Meek Nona Koeneman"
"Meek Raymon Moneymaker"
"Melancholy Chloe Lyman"
"Melancholy Molly Hance" []
"Mentor Merton"
"Messiah Ami Hess" []
"Meticulous [if player is male]Miles Coutu[else]Lucie Musto[end if]"
"Micromanager Marco Germain"
"Militant Latin Tim"
"Min-Shag [if player is male]Mig Nash[else]Ms. Hanig[end if]"
"Minger Meri Ng"
"Miracle Claimer Ari Clem"
"Misleading [if player is male]Miles Dagin[else]Mindi Gales[end if]"
"Moaner Al Molenaar"
"Moaner Cathi Chiaramonte" []
"Moaner Otis Monasterio"
"Monachist Macintosh" []
"Monk Al Kolman"
"Monk Alf Folkman"
"Monk Aline Melkonian"
"Monk Art Kortman"
"Monk Burl Kornblum"
"Monk Cal Lockman"
"Monk Caleb Bockelman"
"Monk Cari Marcinko"
"Monk Ceci McConkie"
"Monk Clare Lockerman" []
"Monk Hal Kohlman"
"Monk Ira Romanik"
"Monk Kelsi Mikkelson"
"Monk Lise Mikelson"
"Monk Nanci Mackinnon"
"Monk Nina Kinnamon"
"Monk Rae Romanek"
"Monk Reba Bronkema"
"Monk Renee Kennemore"
"Monk Rosia Romanoski"
"Monk Sadi Domanski" []
"Monk Sina Makinson"
"Monk Slater Klosterman"
"Monk Sticha Mackintosh" []
"Monk Val Volkman"
"Mooter Toomer" []
"Moral Marlo"
"Moralist Lori Stam"
"Moralistic [if player is male]Racist Milo[else]Lori Stimac[end if]"
"Mortified Tomi Fried"
"Most-Proper Pop Stromer"
"Motivated [if player is male]Tom DeVita[else]Iva DeMott[end if]"
"Mr. Nice-Mincer"
"Mrs. Elle, Smeller"
"Ms. Nice-Minces"
"Muckraker Marc Kurek"
"Mudslinger Miles Grund"
"Mullah Al Hulm"
"Nagger Grange Gregan"
"Nat the Thetan"
"Needler Enderle" []
"Needliest Edelstein"
"Needly Nedley Leyden"
"Neg-Nut Nugent"
"Negative [if player is male]Avi Tegen[else]Eve Ganti[end if]" []
"Negster Gersten Stegner" []
"Never-Pert Preventer Vern Peter"
"Nice Al Celani"
"Nice Aldo DeNicola-Caliendo"
"Nice Alison Nicolaisen"
"Nice Altha Chatelain" []
"Nice Alva Valencia"
"Nice Art Certain"
"Nice Beulah Eichenlaub"
"Nice Cora Carcione"
"Nice Dara Caradine-Adriance"
"Nice Darla Cardinale" []
"Nice Debrah Reidenbach" []
"Nice Flora Fernicola"
"Nice Gala Angelica"
"Nice Ham Eichman"
"Nice Herb Beichner"
"Nice Larue Lieurance"
"Nice Lavona Valenciano"
"Nice Leland Clendaniel"
"Nice Lora Naclerio" []
"Nice Marc Mccranie"
"Nice Marty Macintyre"
"Nice Mei Niemiec"
"Nice Nance Cancienne"
"Nice Nova Venancio"
"Nice Olin Lencioni"
"Nice Omar Caminero"
"Nice Palma Campanile"
"Nice Rob Briceno"
"Nice Ross Cisneros"
"Nice Seth Steichen"
"Nice Shea Chianese"
"Nice Sheba Eisenbach"
"Nice Smart [if player is male]Marc Stein[else]Cami Stern[end if]" []
"Nice Thor Tichenor"
"Nice Tora Caterino" []
"Nice Trish Christine"
"Nice Vilma McIlvaine"
"Nicer Alda Cardinale"
"Nicer Bo Briceno"
"Nicer Ham Reichman"
"Nicer Loma Marcelino"
"Nicer Mac McCranie"
"Nicer Petra Carpentier"
"Nicer Tim McIntire"
"Nicer Zack Czarnecki"
"Nippers snipper Ren Sipp" []
"Nitpicker Kit Prince"
"No-Bad Abdon"
"No-Bar Baron Barb O'Ronan"
"No-Beers Ben Rose"
"No-Booze Zoe Bono"
"No-Bosh Hobson"
"No-Brew Browne" []
"No-Candy Ann Cody"
"No-Change Genna Cho"
"No-Greed-Den Ogre Don Eger"
"No-Hate [n-t] Ho"
"No-Lie Oline O'Neil" []
"No-Lies Elison"
"No-No Hal O'Hanlon"
"No-Salt St. Lona" []
"No-Smut Tom Sun" []
"No-Swears Rose Swan"
"Nono Chad Anchondo"
"Nono Dell O'donnell"
"Nono Gil Longino"
"Nono Hal O'Hanlon"
"Nono Miss Simonson"
"Nono Tia Antonio"
"Nosy Al Layson"
"Nosy Balik Yablonski"
"Nosy Belt Blystone"
"Nosy Bo Boyson" []
"Nosy Cal Clayson"
"Nosy Mick Cominsky"
"Nosy Petra Petrosyan"
"Nosy Rae Reynosa"
"Nosy Roe Reynoso" []
"Nosy Tal Slayton"
"Nosy Wilk Wolinsky"
"Not-Dark Kondrat" []
"Not-Rash Hartson"
"Not-Sex Sexton Tex Sno"
"Not-very-tony Rev. Nev Troy"
"Noteworthy Ty Howerton"
"Nudger Gruden"
"Nullify-Fun Lily"
"Nun Alma Laumann"
"Nun Amy Munyan"
"Nun Beatris Braunstein"
"Nun Callie Cullinane"
"Nun Delma Nudelman"
"Nun Digna Dunnigan"
"Nun Erma Murnane"
"Nun Gia Guinan"
"Nun Iesha Nienhaus"
"Nun Mae Neuman"
"Nun Merlyn Munnerlyn"
"Nun Ree Neuner"
"Nun Roni Runnion"
"Nun Vada Dunavan"
"Nun Vida Dunivan"
"OFFENSIVE? I OFF SEVEN"
"Ol['] Pat, Pal to Plato" []
"Old-Saw Oswald" []
"Oracle Carole Calero"
"Oracle Cleora"
"Oracular Raul Cora"
"Out-Bred Doubter But Rote"
"Overalert Revelator [if player is male]Trevor Lea[else]Lora Evert[end if]"
"Pain Aldo Paladino"
"Pain Alec Palencia" []
"Pain Alton Napolitan" []
"Pain Art Partain-Trapani"
"Pain Clem McAlpine"
"Pain Cyr Cyprian"
"Pain Ed Pineda-Depina"
"Pain Glenna Pangelinan" []
"Pain Greer Peregrina"
"Pain Holt Oliphant" []
"Pain Les Espinal"
"Pain Lester Pearlstein" []
"Pain Lido DiNapoli"
"Pain Lora Apolinar"
"Pain Lou Paulino"
"Pain Lu Paulin-Lupian"
"Pain Meagan Mangiapane"
"Pain Nelms Spielmann" []
"Pain Orr Parrino"
"Pain Oscar Sparacino"
"Pain Ren Pannier"
"Pain Rico Cipriano"
"Pain Sal Laspina"
"Pain Santos Passantino"
"Pain Seth Stephani" []
"Pain Sol Spinola-Spaniol" []
"Pain Tod Pintado"
"Pale Rev. Peavler" []
"Pam the Empath"
"Paradigm Prig Adam"
"Parson Rapson" []
"Partisan Pat Rains" []
"Passionate Iona Spates"
"Pastor Sproat"
"Paternal Pert Alan" []
"Pedant Pa Dent" []
"Pedant Ted Pan" []
"Pensive Vespin Snip Eve"
"Per-Sin Sniper Perrin Espins" []
"Pest Alan Pleasant"
"Pest Alton Stapleton"
"Pest Aron Paterson"
"Pest Eichorn Stonecipher"
"Pest Gardner Prendergast-Pendergrast"
"Pest Henson Stephenson"
"Pest Karan Pasternak"
"Pest Kory Petrosky"
"Pest Lida Plaisted"
"Pest Lori LoPresti"
"Pest Mel Stemple"
"Pest Noah Stanhope"
"Pest Oren Peterson"
"Pest Reid Depriest"
"Pest Rene Petersen"
"Pest Riley Priestley"
"Pest Ron Preston"
"Pest Sal Staples"
"Pest Shen Stephens"
"Pete Marr, Mr. Repeat-Tamperer" []
"Petulant [if player is male]Neal Putt[else]Lu Patten[end if]"
"Phat Enos Stanhope"
"Phat Olin Oliphant"
"Phony Jett Pettyjohn"
"Pill Ace Capelli"
"Pill Ada Padilla"
"Pill Anh Allphin"
"Pill Ara Parilla"
"Pill Caesar Pascarelli"
"Pill Cesar Scarpelli"
"Pill Chase Palleschi"
"Pill Enos Spinello"
"Pill Erick Pickerill"
"Pill Ian Pinilla"
"Pill Lavonda Villalpando"
"Pill Marna Prillaman"
"Pill Ned Pindell"
"Pill Ona Pollina"
"Pill Ora Parillo"
"Pill Reda Delpilar" []
"Pill Regine Pellegrini"
"Pill Renato Pontarelli" []
"Pill Rene Pellerin"
"Pill Rufus Pursifull"
"Pill Sana Aspinall" []
"Pill Sean Spinella" []
"Pill Sun Pullins"
"Pill Tera Petrilla"
"Pill Teri Petrilli"
"Pill Tracie Patricelli"
"Pill Una Paullin"
"Plagiarist April Tigas"
"Play-Nice [if player is male]Lance Yip[else]Lacy Pein[end if]"
"Polyester Proselyte [if player is male]Loy Peters[else]Elsy Perot[end if]"
"Ponderers['] Responder Ren Pedros"
"Poor Saint Pastorino"
"Pop, Virtues-Supportive"
"Pope Hermine Oppenheimer"
"Pope Ken Koeppen"
"Pope Les Peoples" []
"Pope Teri Rippetoe"
"Pray-Ban Parnaby"
"Preachiest Pat Scheier"
"Preachy Chap Rey" []
"Priest Ed Petrides"
"Priest Enoch Stonecipher"
"Priest Len Perlstein"
"Priest Neal Pearlstein" []
"Priest Ned President" []
"Priest Sean Saperstein"
"Priest Sona Petrossian"
"Priest Tia Petraitis"
"Prig Aleta Petraglia"
"Prig Asa Gaspari"
"Prig Deon Pridgeon"
"Prig Detra Partridge" []
"Prig Elden Erpelding"
"Prig Ines Spiering"
"Prig Lance Caplinger"
"Prig Len Pringle" []
"Prig Leon Oplinger"
"Prig Leonel Pellegrino"
"Prig Luna Pulgarin"
"Prig Neal Galperin"
"Prig Ned Pridgen-Pridgen"
"Prig Nellie Pellegrini" []
"Prig Noell Pollinger" []
"Prig Omer Prigmore" []
"Prig Ponce Coppinger"
"Prig Renae Peregrina" []
"Prig Sean Spearing"
"Prig Tonie Pingitore"
"Prim Allan Prillaman" []
"Prim Kenna Pinkerman"
"Prim Lea Palmeri"
"Prim Leah Lamphier"
"Prim Neal Palmerin"
"Privileged Deep Virgil"
"Prude Stein Turnipseed"
"Prudent Pent Dru" []
"Prudent Pet Rund" []
"Pure [if player is male]Rupe[else]Prue[end if]"
"Pure Abe Beaupre"
"Pure Ada Drapeau"
"Pure Asia Pariseau"
"Pure Dori Poudrier"
"Pure Ed DuPree" []
"Pure Got-to-Purge Peg Rout"
"Pure Mia Primeau"
"Pure Tisa Pusateri"
"Purposes Supposer [if player is male]Russ Pope[else]Rose Upps[end if]"
"Pushy Herm Humphreys" []
"Questioner Roque-Stein"
"Quibbler Riq Buble"
"Rae 'Bzt' Batrez"
"Railroader [if player is male]Errol Adair[else]Darla Rorie[end if]"
"Ramon 'Bzt' Brotzman"
"Rational Ali Arnot" []
"Re-Cured Reducer Ed Curre"
"Re-Risen Reisner"
"Re-Voiced Divorcee [if player is male]Eric Dove[else]Eve Doric[end if]" []
"Reacher Cher Rea"
"Reactionary Tonya-Carrie" []
"Rebutted Burdette"
"Redeem-Em Reed"
"Ree 'Bzt' Betzer"
"Reformer Mo Ferrer"
"Reg Cly, Clergy"
"Regarded Degrader [if player is male]Ed Gerard[else]Dede Garr[end if]"
"Rehabs-Basher Absher"
"Relevant [if player is male]Art Leven[else]Val Treen[end if]"
"Religious [if player is male]Luigi Rose[else]Lori Segui[end if]"
"Rescued Ed Cruse"
"Resentful Len Fuster"
"Responsible Biles-Person LeBron Sipes"
"Rev. [a-b] Beaver"
"Rev. Ade Deaver"
"Rev. Agar Vergara"
"Rev. Alden Vreeland"
"Rev. Alec Cleaver"
"Rev. Alica Cavalier"
"Rev. Allison Villasenor" []
"Rev. Aly Lavery"
"Rev. Ament Vanmeter"
"Rev. Angel Lavergne"
"Rev. Arnetta Navarrette"
"Rev. Art Tarver"
"Rev. Burgin Rivenburg"
"Rev. Caden Cavender"
"Rev. Case Versace"
"Rev. Chas Chavers"
"Rev. Cher Vercher"
"Rev. Chris Schriver"
"Rev. Clay Caverly"
"Rev. Coon Conover"
"Rev. Dale Velarde"
"Rev. Dalia Delariva" []
"Rev. Davin Vandiver" []
"Rev. Doe Devore"
"Rev. Donna Vandoren" []
"Rev. Doug Verdugo" []
"Rev. Ed Dever-Verde"
"Rev. Else Reveles"
"Rev. Ely Everly"
"Rev. Elza Alverez"
"Rev. Enos Everson"
"Rev. Etta Averett"
"Rev. Ewa Weaver" []
"Rev. Gable Belgrave"
"Rev. Gay Garvey"
"Rev. Glinda Vangilder" []
"Rev. Gordan Vangorder"
"Rev. Green, Revenger"
"Rev. Hagar Hargrave"
"Rev. Hall Harvell"
"Rev. Hay Harvey"
"Rev. Hoose Voorhees"
"Rev. Hye Hervey"
"Rev. Ines Iversen-Severin"
"Rev. Iola Valerio-Olivera" []
"Rev. Ira Rivera-Vierra" []
"Rev. Isa Reavis"
"Rev. Issa Servais"
"Rev. Ivette Viverette"
"Rev. Larita Valtierra"
"Rev. LaShon Halvorsen"
"Rev. Leaf Lafever"
"Rev. Leila Valliere"
"Rev. Les Revels"
"Rev. Lila Averill-Revilla" []
"Rev. Lilian Rainville" []
"Rev. Lis Silver"
"Rev. Lisa Silvera"
"Rev. Lissa Silveras"
"Rev. Lola Overall" []
"Rev. Lon Lovern"
"Rev. Louie Louviere"
"Rev. Loy Overly"
"Rev. Luc Culver"
"Rev. Lyla Vallery"
"Rev. Mena Everman"
"Rev. Milan Liverman"
"Rev. Moll Vollmer"
"Rev. Mona Overman"
"Rev. Neal Vanleer"
"Rev. Ned Denver"
"Rev. Nessa Severnas"
"Rev. Nigel Levering"
"Rev. Noah Hanover" []
"Rev. Nova Vanover"
"Rev. Nydia Vineyard" []
"Rev. Ola Olvera-Valero"
"Rev. Otis Restivo"
"Rev. Pitt Privett"
"Rev. Rana Navarre"
"Rev. Renata Navarrete"
"Rev. Retha Everhart"
"Rev. Rio Rivero"
"Rev. Rish Shriver"
"Rev. Rog Grover"
"Rev. Rosette Overstreet"
"Rev. Sade Deavers" []
"Rev. Sage Greaves" []
"Rev. Saldana Vanarsdale" []
"Rev. Sash Shavers"
"Rev. Sea Reaves-Seaver"
"Rev. See Reeves-Severe"
"Rev. Sha Shaver"
"Rev. Sid Divers"
"Rev. Sion Iverson" []
"Rev. Sloan Alverson" []
"Rev. Soila Olivares" []
"Rev. Sol Slover"
"Rev. Sotelo Roosevelt"
"Rev. Star Travers"
"Rev. Stiles Silvestre"
"Rev. Stowe Westover"
"Rev. Styles Sylvestre"
"Rev. Teno Everton" []
"Rev. Toni Trevino"
"Rev. Tso Stover"
"Rev. Tuan Ventura" []
"Rev. Ula Lauver"
"Rev. Velda Valverde"
"Rev. Yan Varney"
"Rev. Zana Narvaez"
"Rev. Zane Nevarez"
"Rev. Zito Trevizo"
"Rev. Zoila Olivarez"
"Revolted [d-t] Lever"
"Riel 'Bzt' Blitzer"
"Right Abel Gilbreath"
"Right Alba Galbraith"
"Right Ana Hartigan"
"Right Dee Ethridge" []
"Right Della Threadgill"
"Right Lea Gilreath" []
"Right Len Lightner"
"Right Noren Herrington"
"Right One [if player is male]Thor Egin[else]Inge Hort[end if]"
"Right Ronna Harrington"
"Right-Way Gary Whit"
"Righteous Geri South"
"Rigorously-Sour Gilroy"
"Rios 'Bzt' Zobrist"
"Rivaling Virginal [if player is male]Gil Arvin[else]Avril Ing[end if]"
"Ro 'Bzt' Bortz-Brotz"
"Roundest-Tonsured Drone Stu"
"Rousing, Souring, Grousin['] [if player is male]Gus Rino[else]Su Gorin[end if]"
"Rule Hawk Hulk Ware"
"Rule-Scion Cornelius" []
"Rulemonger Geno Rumler"
"Rulesmonger Mungo Resler"
"Sad Rev. Draves"
"Sane Abel Albanese"
"Sane Bart Abrantes"
"Sane Boris Soberanis"
"Sane Brad Banderas"
"Sane Burt Eastburn"
"Sane Cal Canales"
"Sane Cari Saraceni"
"Sane Chet Chasteen"
"Sane Christin Christiansen"
"Sane Cleta Escalante"
"Sane Cora Saraceno"
"Sane Corbin Bernasconi"
"Sane Cris Narcisse"
"Sane Daron Andreason"
"Sane Dirk Iskander"
"Sane Dom Mendosa"
"Sane Ed Desena-Danese"
"Sane Eli Eliasen"
"Sane Elrod Rosendale"
"Sane Em Seeman"
"Sane Emil Milanese"
"Sane Fred Sandefer"
"Sane Gema Geesaman"
"Sane Gil Gelinas-Sinegal"
"Sane Gilb Ingalsbe"
"Sane Giles Lasseigne"
"Sane Hogan Haagenson"
"Sane Holt Haselton"
"Sane Hyon Yohannes"
"Sane Irma Seminara"
"Sane Jim Jasmine"
"Sane John Johansen"
"Sane Julio Jeanlouis"
"Sane Kristin Kristiansen"
"Sane Lev Leavens"
"Sane Loma Salamone"
"Sane Loris Israelson"
"Sane Luc Clausen"
"Sane Lupe Penuelas"
"Sane Marc Creasman"
"Sane Mei Eiseman"
"Sane Mel Sleeman-Seelman"
"Sane Michal Aeschliman"
"Sane Michel Michaelsen"
"Sane Ming Siegmann"
"Sane Mort Sarmento"
"Sane Ned Sandeen"
"Sane Old Adelson"
"Sane Opal Penalosa"
"Sane Pat Pestana-Tapanes"
"Sane Priest Saperstein"
"Sane Rob Seaborn"
"Sane Rock Ackerson"
"Sane Rod Nodarse"
"Sane Ron Arenson"
"Sane Ros Reasons"
"Sane Roy Reynosa"
"Sane Ruthie Steinhauer"
"Sane Sam Seamans-Messana"
"Sane Seth Shasteen"
"Sane Sol Asleson"
"Sane Storm Masterson"
"Sane Tad Sandate-Anstead"
"Sane Tall Santella"
"Sane Tam Eastman-Smetana"
"Sane Tobias Sebastiano"
"Sane Tod Desanto"
"Sane Tom Samonte"
"Sane Tomi Maisonet"
"Sane Tori Restaino"
"Sane Treva Vantrease"
"Sane Trim Martines"
"Sane Trula Arsenault"
"Sane Ty Tansey-Anstey"
"Sane Von Evanson"
"Sanitary Nasty Ari"
"Savior Arviso"
"Scapegoat [if player is male]Paco Gates[else]Peg Acosta[end if]"
"Scare-Cares Cesar" []
"Scholarly [if player is male]Ray Scholl[else]Sally Roch[end if]"
"Scold Kate Stockdale"
"Scolder Dr. Coles"
"Scolder Les Cord" []
"Scoldy Clod Sy"
"Screedy Ced Ryse"
"Sectarian Cara Stein"
"Seer Rees"
"Seer Rich Scheirer" []
"Sensible [if player is male]Neil Bess[else]Bess Neil[end if]"
"Sensitive Ines Tevis" []
"Severe Reeves" []
"Shamer Ramesh" []
"Sharia Ira Ash"
"Sharia-Thirst Trisha Hartis"
"Sin-Fret Finster"
"Sin Noter Ornstein" []
"Sincere Ericsen" []
"Sinned-Not Denniston"
"Skeptical [if player is male]Kip Castle[else]Lita Speck[end if]"
"Sly Bore Broyles" []
"Smack-Not Stockman"
"Smartie Marie St. Reitsma-Maestri" []
"Smircher Schirmer"
"Snitch Abe Steinbach"
"Snitch Fidel Stinchfield"
"Snitch Ira Christian"
"Snitch Marci Mcchristian"
"Snitch Mikel Kleinschmit"
"Snitch Mo Mcintosh"
"Snitch Oma Macintosh" []
"Snitch Ona Atchinson"
"Snitch Rose Christeson-Stroschein"
"Snitch Rosina Christianson"
"Snitch Serina Christiansen"
"So-Careful [if player is male]Lucas Fore[else]Flo Surace[end if]"
"So-Nicer Ericson"
"So-Right Og Hirst"
"Sobering Giberson" []
"Sorehead [if player is male]Dre O'Shea[else]Dee Haros[end if]"
"Spiritual [if player is male]Saul Tripi[else]Rita Pulis[end if]"
"Stale Bo Seabolt"
"Stale Dan Eastland"
"Stale Horn Rosenthal" []
"Stale Morgan Mastrangelo"
"Stale Rey Easterly"
"Stan, Greed-Estranged"
"Stately Testy Al"
"Stern Gil Sterling" []
"Stevie Sin-Sensitive"
"Steward Ed Straw"
"Stickler Rick Elst"
"Stingy Yingst" []
"Straw Man Mart Swan"
"Strident Ned Ritts"
"Superior [if player is male]Rupe Rios[else]Rose Puri[end if]" []
"Superior Prior Sue" []
"Sure Brenton Stoneburner"
"Sure Colin Cornelius"
"Sure Coy Coursey"
"Sure Deana Dansereau"
"Sure Delta Truesdale"
"Sure Eli Leisure"
"Sure Hank Hunsaker"
"Sure Leif Fuselier"
"Sure Olga Salguero"
"Sure Sol Roussel"
"Sure Star Strauser"
"Swami Nelli Williamsen"
"Swami Wasim"
"Take-Charge [if player is male]Hack Gartee[else]Kathe Grace[end if]"
"Tattle Rog Altergott"
"Tattle Smidt Mittelstadt"
"Tattler Art Lett"
"Teach-Pastor Sacha Potter"
"Temperance Pete Carmen"
"Tensioner Orenstein"
"Theistic Ethicist Tish Tice"
"Theocratic [if player is male]Cicero Hatt[else]Cathi Ector[end if]"
"[']Thralling Thrill-Nag Grant Hill"
"Tolerant [if player is male]Trent Loa[else]Erna Lott[end if]"
"Too-Humble Ol['] Bum Theo"
"Too-Near Tora Eno"
"Too-Smart [if player is male]Art Smoot[else]Rosa Mott[end if]"
"Too-Strict Tori Scott"
"Touched Ted Chou" []
"Trample-Templar [if player is male]Art Pelm[else]Pam Ertl[end if]"
"Trier Terri"
"Trite Bess Brissette"
"Trite Dona Andreotti"
"Trite Eli Lettieri"
"Trite Hans Steinhart"
"Trite Hong Hottinger"
"Trite Les Stiteler"
"Trite Moses Morissette" []
"Trite Ping Pittinger"
"Trite Renna Interrante"
"Trite Shenna Hartenstein" []
"Trite Shon Rothstein" []
"Trite Somer Morrisette"
"Trite Wm Wittmer"
"Troll Ash Shortall"
"Troll Em Mortell"
"Troll Ena Allerton"
"Troll Mae Martello"
"Troll Marie Martorelli"
"Troll Mash Hallstrom"
"Troll Pa Allport"
"Troll Paine Pontarelli" []
"Troll Pia Portilla"
"Troll Tice Cotterill"
"Troll Wes Worstell"
"Truthy Hurt Ty"
"Tutress Russett"
"Twit Cason Wainscott" []
"Twit Emery Wittmeyer"
"Twit Moll Willmott"
"Twit Sam Wimsatt"
"Twit Seth Whitsett"
"Twit Shea Thwaites" []
"Twit Sheely Whittlesey"
"Ultra-Nice [if player is male]Art Lucien[else]Trina Luce[end if]" []
"[']Umbler Mr. Blue" []
"Un-Deep Rox, Expounder"
"Un-Dreg Gunder Gruden"
"Un-Free Rene Fu"
"Unamused [if player is male]Duane Sum[else]Sue Duman[end if]"
"Unbearable Reuben Alba"
"Unchanged Dean Chung"
"Undaring [i-n] Grund"
"Unsubtle Blunt Sue"
"Uplifted Tepid Ulf"
"Upstanding [if player is male]Dustin Pang[else]Agnis Pundt[end if]"
"Verbatim Bev Mitra"
"Vestigal [if player is male]Gil Taves[else]Val Tiegs[end if]"
"Victorian Victorina"
"Vintager Grievant [if player is male]Trev Agin[else]Teri Vang[end if]" []
"Violated Al DeVito"
"Visionary [if player is male]Roy Savini[else]Rosina Ivy[end if]"
"Vocaliser [if player is male]Oscar Levi[else]Cora Slive[end if]"
"Vocalizer [if player is male]Levi Zarco[else]Liz Cavero[end if]"
"Wailer Yen Earlywine"
"Wan-Mood Woodman"
"Warnin['] Winnar Arn Win"
"Warnin['] WINNAR Narwin"
"Wee Crank Warnecke" []
"Whiner Coe Icenhower"
"Whiner Ice Weinreich"
"Whiner Nottage Weatherington"
"Whiner Otting Witherington" []
"Why-Dare Heyward"
"Wonk Artis Tarnowski" []
"Wonk Cai Nowacki" []
"Wonk Cari Nawrocki" []
"Wonk Ismail Malinowski" []
"Wonk Les Knowles" []
"Wonk Lis Kinslow" []
"Wonk Morais Romanowski"
"Wonk Shani Hawkinson"
"Worried Rod Weir"
"Worrying Rory Gwin"
"Wrong Avena Vanwagoner"
"Wrong Belle Wollenberg"
"Wrong Belli Willenborg" []
"Wrong Erik Workinger" []
"Wrong Holt Longworth"
"Wrong Ida Winograd" []
"Wrong Ines Niswonger" []
"Wrong Kasi Gawronski" []
"Wrong Leif Wolfinger" []
"Wrong Minto Wormington"
"Wrong Niese Neiswonger"
"Wrong Odle Gronewold"
"Wrong Tish Wrightson"
"Yap-Not Payton"
"Yell-Ban Allenby"
"Yuna, Epic Picayune"
"Zealot Zoe Tal"
"Zealous Sue Zola"
"Zen-Led Denzel"

book troves

table of checklist items [xxv1]
blurb
"A [if player is male]phone number for[else]note to demote[end if] a secretary, Racy Ester.."
"Accost ScatCo."
"Acy CYA."
"Allay Layla."
"Approve Vera Opp."
"Ask out Otsuka."
"Assimilate rule-cut culture."
"Astonish Shinsato." []
"Avert Icy Veracity: evict Ray." []
"Ax Bert Baxter."
"Ax Darlene Alexander."
"Ax Delcarmen Mcalexander."
"Ax Lea Alexa."
"Ax Leo Olexa."
"Ax Mr. Max R. Marx."
"Ax Neil Axline."
"Ax Robt Tarbox."
"Ax Sean Saxena."
"Ax Son Saxon."
"Axe Bluth Huxtable."
"Axe Cho Heacox."
"Axe Doug Godeaux."
"Axe Eli Alexie."
"Axe Lenard Alexander." []
"Axe Lin Axline." []
"Axe Lord Axelrod."
"Axe Randal Alexandra."
"Axe Teri Texeira."
"B Brave. Abbrev."
"Baleet Taleeb."
"Ban a new wannabe." []
"Bank on Ann Bok."
"Bar Kyle Barkley, Ray Belk, Bry Lake." []
"Bar Tex Baxter." []
"Bash mad, bad sham."
"Be bailed out for what I lied about."
"Be had = bad, eh?"
"Be insulted to be unlisted in DIVORCES magazine."
"Be late? Baleet!"[]
"Be Lean. Enable."
"Be on Dr. Borden." []
"Beat Carmon Bracamonte."
"Beat Darrow Broadwater."
"Beat Henry Abernethy."
"Beat Herr Eberhart."
"Beat Horn Rathbone." []
"Beat Kilmer Timberlake."
"Beat Lis Stabile."
"Beat Lon Labonte." []
"Beat Lorrie Liberatore."
"Beat Myrl Tremblay." []
"Beat Norris Barrientos."
"Beat Risner Barrientes."
"Beat Ron Boatner."
"Beat Rooks Estabrook."
"Beat Sol Seabolt." []
"Beat Spud 'Budapest' Bupstead." []
"Beat Trey Attebery."
"Belabor Rob Bale, Bob Lear."
"Belay Al Bey."
"Belt Arch Albrecht-Batchler."
"Betray Ty Baer."
"Bin old Blondi Boldin."
"Blackmail Milk Cabal."
"Blow off Bo Wolff."
"Brainwash Brian Shaw."
"Break Baker."
"Break up Pa Burke."
"Broach Co-Brah Orbach."
"BS til blush." [x]
"BUDGET: bug Ted."
"Bug Al Glaub."
"Bug Albertha Bartlebaugh."
"Bug Amiri Imburgia."
"Bug Andre Brundage." []
"Bug Ara Grabau."
"Bug Armenta Baumgarten."
"Bug Ashli Silbaugh."
"Bug Beulah Bluebaugh."
"Bug Cabe Cubbage."
"Bug Chara Carbaugh."
"Bug Ciara Burciaga."
"Bug Dean Begnaud."
"Bug Derin Brundige."
"Bug Dorner Rodenburg."
"Bug Earl Glauber."
"Bug Ed Budge."
"Bug Erin Breunig."
"Bug Erinn Bruening."
"Bug German Bruggeman."
"Bug Gerner Gruenberg."
"Bug Greenman Brueggemann."
"Bug Han Baughn."
"Bug Hana Baughan."
"Bug Hara Arbaugh."
"Bug Harmon Broughman."
"Bug Harter Traughber."
"Bug Hartson Stanbrough." []
"Bug Herr Burgher."
"Bug Hilma Limbaugh."
"Bug Horton Broughton."
"Bug Ines Buesing."
"Bug Karim Krigbaum."
"Bug Larae Balaguer."
"Bug Lenart Altenburg." []
"Bug Lindler Dillenburg."
"Bug Lorena Boulanger." []
"Bug Maren Guberman."
"Bug Margene Brueggeman."
"Bug Marita Brautigam."
"Bug Marline Burlingame."
"Bug Marren Bumgarner."
"Bug Marta Baumgart."
"Bug Mary Amburgy."
"Bug Mathus Stumbaugh."
"Bug Nine Buening."
"Bug Noah Boughan."
"Bug Nola Balogun."
"Bug Norah Bronaugh."
"Bug Rana Bangura."
"Bug Rand Bungard."
"Bug Reba Burbage."
"Bug Ren Bunger-Burgen."
"Bug Rene Buenger."
"Bug Rhea Baugher."
"Bug Rider Burridge."
"Bug Rina Bugarin."
"Bug Rio Burgio."
"Bug Ron Ogburn."
"Bug Ros Burgos." []
"Bug Rosander Darensbourg."
"Bug scam scumbag." []
"Bug Shala Slabaugh."
"Bug Shayla Slaybaugh."
"Bug Sheri Berghuis."
"Bug Soren Burgeson." []
"Bug Tenisha Stinebaugh."
"Bug Tera Gaubert."
"Bug Thomas Stombaugh."
"Bug Thora Trobaugh."
"Bug Tosha Stobaugh."
"Burn Ada Brandau."
"Burn Aldo Bourland."
"Burn Dee Bendure." []
"Burn Della Rubendall." []
"Burn Dick Bundrick."
"Burn Ernesto Stoneburner."
"Burn Evan Vanburen." []
"Burn Gema Guberman." []
"Burn Gia Bugarin." []
"Burn Gil Burling."
"Burn Hae Haubner."
"Burn Hosea Barnhouse."
"Burn Inge Bruening." []
"Burn Kasi Urbanski."
"Burn Kate Bartunek."
"Burn Ken Brunken."
"Burn Kia Urbanik."
"Burn Lois Burlison."
"Burn Mac Camburn."
"Burn Mack Bruckman."
"Burn Magaret Baumgartner."
"Burn Man Brannum."
"Burn Marge Bumgarner." []
"Burn Miguel Muilenburg."
"Burn Milo Milbourn."
"Burn Ned Bundren."
"Burn Ola Lubrano."
"Burn Rae Brauner."
"Burn Rey Reyburn."
"Burn Roy Norbury."
"Burn Shaw Washburn."
"Burn Shemika Kirshenbaum."
"Burn Son Brunson."
"Burn Tad Burandt."
"Burn Tonda Bondurant."
"Burn Tracey Canterbury."
"Burn Ty Brunty."
"Bury Dan Bunyard."
"Bury Len Burnley."
"Bury Mel Brumley."
"Buy Spaz-Zaps if protesters return."
"Buy the poor-stinks sponsor kit."
"Call back Cal Black."
"Call Ben LeBlanc"
"Call Clint of FlintCo."
"Call Export Pro Tex."
"Call politicians repealing tax breaks remiss misers."
"Call Steven in Events re: Can-Do AdCon and Co."
"Call Stevie in Evites!"
"Can Mister Miscreant." []
"Can't Like Nice-Talk Late Nick."
"Cast for factors."
"Cite [crap]. Practice."
"Clean Out UnLateCo." []
"Clear up Pa Clure."
"Closet Telcos."
"Co-opt TopCo."
"Coca Nut Account: Act, UNCO!"
"Collect flat-due default."
"Collect Up PutCellCo."
"Compress MessCorp."
"Conceal Clean-Co Eco-Clan."
"Confuse FunesCo."
"Congratulate Coe, the eco-CEO on his UltraAltru award from GiveAll Village."
"Conk Up PunkCo."
"Conquer QuernCo."
"Consult Luc tons." []
"Contact A. Greer, your too-easy agreer."
"Convert NVertCo Vectron."
"Convince Ceci Von Venicco."
"Cool Off FloofCo."
"Corral Carl or Cal Orr."
"Corrode OrderCo."
"Cosigning, cognising."
"Cover Up U-Perv-Co."
"Crack on CrankCo." []
"Cram In Mr. Cain-McNair."
"Cremate McAteer."
"Cross up SpursCo."
"Curt pity void = PRODUCTIVITY."
"Cut Down WundtCo."
"Cut off TuffCo."
"Cut Out TutuCo."
"Cut Sean, Nutcase." []
"Cut/flay faculty."
"Damn, fire Friedman, Janitor in a Jort."
"De-frock Eckford."
"De-Rank Kendra." []
"Deal with Ald. White."
"Deal with Thad Weil, Dale Whit." []
"Declare Rec-Lead: Cal Reed." []
"Decrease Ed Cesare." []
"Deem Dent Demented."
"Defer Dr. Fee." []
"Defer Fred E. Feder. Redef."
"Deflate Daft Lee."
"Deflate Ted Leaf."
"Delay/skew weekly ads." []
"Demerits: Redist [']em." []
"Demote [']em. Dote, Emoted." []
"Demote a bag manager to garbage man."
"Demote, snub. Must be done. Mend? Obtuse!"
"DepotCo: Coopted (?!)"
"Deputise Deputies."
"Dis Al Dials"
"Dis Alan Saladin"
"Dis Alona Saladino"
"Dis Alva Dasilva"
"Dis Angele Deangelis"
"Dis Ann Sandin"
"Dis Arlen Sindelar"
"Dis Belle Debellis"
"Dis Chet Scheidt"
"Dis Connie Considine"
"Dis Dona Addison"
"Dis Elva Desilva-Vidales"
"Dis Eva Davies"
"Dis Garnet Grinstead"
"Dis Geno Godines"
"Dis Hong Hodgins"
"Dis Kena Deakins"
"Dis Lan Landis"
"Dis Lee Seidel"
"Dis Lelah Dashiell"
"Dis Leta Tisdale"
"Dis Mae Demasi"
"Dis Mona Madison"
"Dis Monte Edmiston"
"Dis Neal Daniels"
"Dis Ned Eddins"
"Dis Nelly Lindsley"
"Dis Noe Edison-Eidson"
"Dis Norah Hardison"
"Dis Nova Davison"
"Dis Nyla Lindsay"
"Dis Peter Depriest"
"Dis Rana Sardina"
"Dis Rina Siniard"
"Dis Ruben Burnside"
"Dis Tamera Armistead"
"Dis Telma Milstead"
"Dis Tona DiSanto"
"Dis Vonda Davidson"
"Disabuse bad-issue sub-ideas."
"Discharge Chad Greis."
"'Discount a custodian.'"
"Dishearten Eisenhardt." []
"Disturb Stu Bird."
"Ditch Ms. Schmidt."
"DO nix Dixon."
"Dodgy OAs != good days."
"Dog Ed Dodge."
"Don't Aid Ian Todd."
"Double-cross bold sources."
"Dub Bud, Bub DUD."
"Earn it. Retain." []
"Elate Teela, Leeta."
"Elongate? Negate Ol['] Eagleton."
"Elston's = net loss."
"Embargo Bergamo." []
"Employ Mo Pyle, Leo Pym." []
"Enamour Morneau."
"Endorse [if player is male]Ron De[else]Doren[end if]e's Son, Reed." []
"Enjoin Jonnie."
"Entrain Tiernan."
"Establish Lisabeth's."
"Estrange Negaters." []
"Ethical Lie-Chat."
"Extort Rex Ott."
"Feast on No-Feats Stefano."
"Finance Inn Cafe." []
"Find gun funding."
"Finesse Sin-Fees." []
"Fire Ali Alfieri."
"Fire Allan Farinella."
"Fire Ann Fineran."
"Fire Arlene Lafreniere."
"Fire Dan Defrain." []
"Fire Del Fiedler." []
"Fire Dengel Greenfield."
"Fire DeWalt Waterfield." []
"Fire Dina Frediani."
"Fire Ed Friede-Feider." []
"Fire Elrod Delfierro."
"Fire Esch Schiefer."
"Fire Goon Forgione." []
"Fire Gus Figures."
"Fire Hilda Hairfield."
"Fire if-er. Refi."
"Fire Jen Jenifer."
"Fire Ling Frieling." []
"Fire Lola Fiorella-Fariello."
"Fire Lord Reliford." []
"Fire Luis Fusilier."
"Fire Lyda Rayfield."
"Fire Mace Facemire."
"Fire Madonna Manfredonia."
"Fire Mark Freimark."
"Fire Meng Emfinger."
"Fire Moll Fillmore."
"Fire Mona Finamore."
"Fire Ned Frieden." []
"Fire Nolton Florentino." []
"Fire Sina Serafini."
"Fire someone over garbage in Garage B."
"Fire Son Frieson."
"Fire Sona Serafino."
"Fire Stan Stanifer."
"Fire Sultan Saintfleur." []
"Fire Syed Seyfried."
"Fire Tito Fioretti." []
"Fire Tova Favorite." []
"Fire Tran Ferranti."
"Fire Wen Winfree."
"Fire Zona Fiorenza."
"Fix a ton of taxin[']."
"Fixer X: Fire."
"Fling Wade's design flaw."
"Flog a slob, goofballs, Olaf's Blog."
"Floor Rolf-o or Flo."
"Focus on SoFunCo."
"Force RefCo Coercer Off."
"Foster fad tradeoffs."
"Fred I. Freid: if Red, Fired!" []
"Gag Bab, gab-bag."
"Gank Kang."
"Gaslight Tal Higgs."
"General egging to get going."
"Get a tie on! Negotiate!"
"Get designer re-signed."
"Get so-so stooges, toss ego."
"Get soil so legit to Giles."
"Give executives a no-bus bonus for buying a fancy new car they must work harder to pay for. Everyday workers can just take the bus, of course."
"Give Short Oversight."
"Go paste Potages Gestapo."
"'Grab. Brag. Brag. Grab.'"
"Gut-diss, Disgust Sid Stug." []
"Hammer Mr. Mahe."
"Haste sux, exhausts."
"Haste to hot seat. Oh, taste."
"Have Ron Han Over." []
"A helpful reminder to make sure synergies synergise."
"Hire Ed Heider."
"Hire Eda Heredia."
"Hire Elsa Aleshire."
"Hire Jame Jeremiah."
"Hire Les Heisler."
"Hire Maud Muirhead."
"Hire Rand Reinhard."
"Hire Sand Sheridan." []
"Hire Sy Shirey."
"Honor Ron Ho."
"Hurt Abe Haubert."
"Hurt Adelson Southerland." []
"Hurt Bonilla Halliburton." []
"Hurt Byrnes Huntsberry."
"Hurt Caleb Culbreath." []
"Hurt Carma Macarthur." []
"Hurt Cesar Caruthers."
"Hurt Clem Mutchler."
"Hurt Eck Kutcher."
"Hurt Enos Southern." []
"Hurt Gale Laughter."
"Hurt Gene Guenther."
"Hurt Glen Hultgren."
"Hurt Marc Mcarthur."
"Hurt Schoen Hutcherson."
"Hurt Segal Slaughter." []
"Hurt Shay Hayhurst." []
"ID rascal radicals."
"IDEAS. I.e. ADS."[]
"(Illegible.) But sly. Subtly."
"Impress [if player is male]Mr. Sipes[else]Ms. Pires[end if]."
"Improve MORE, VIP!"
"Ink Cost: Stick on SkintCo." []
"Irk Glen Klinger-Kringle, Gil Kern."
"Isolate East Oil."
"Keep out Pete Kuo." []
"KO Rob Brook."
"Layoff Alf Foy." []
"Let bums stumble."
"Letters all Excuse Us, Exec!"
"Lipman's PlanSim"
"Lobby for weirdos['] dowries so everyday people don't have to pay taxes."
"Locate Cole at LateCo Ace Lot."
"Lock in LinkCo."
"Lock out KloutCo."
"Log more leg room."
"Low prank? Plan! Work!"
"Mail Liam a Mil." []
"Make Linda kinda lame."
"Malign Al Ming-Gilman."
"Mar a nice American." []
"Meet Dr. O. Ted Rome, Demoter."
"Meeting: get [']em in, get mine."
"Memo: Cut Commute."
"Miss Don Simonds"
"Miss Rene Meissner"
"Moot Karl's LookSmart Talkrooms."
"Nag Al Galan"
"Nag Amy Gayman"
"Nag Ash Hagans"
"Nag Bert Bangert"
"Nag Bill Balling"
"Nag Bo Bogan"
"Nag Brice Brigance"
"Nag Cari Garnica"
"Nag Carin Carignan"
"Nag Carri Carrigan"
"Nag Chi Chiang"
"Nag Dara Gandara"
"Nag Dee Deegan"
"Nag Delsie Deangelis"
"Nag Deon Donegan"
"Nag Dora Granado"
"Nag Doreen Degennaro"
"Nag Dorine Digennaro"
"Nag Eli Eaglin"
"Nag Elli Gallien"
"Nag Else Angeles"
"Nag Elvin Langevin"
"Nag Errol Loranger"
"Nag Eura Garneau"
"Nag. File. Finagle."
"Nag Geri Gagnier"
"Nag Gerri Grainger"
"Nag Herma Hagerman"
"Nag Hiram Ingraham"
"Nag Hue Haugen"
"Nag Hulda Haugland"
"Nag Inell Nelligan"
"Nag Iola Galiano"
"Nag Kay Kanagy"
"Nag Kerri Kerrigan"
"Nag Korey Kornegay"
"Nag Lee Neagle"
"Nag Leo Angelo"
"Nag Leta Galante"
"Nag Levi Lavigne"
"Nag Li Laing"
"Nag Lili Gillian"
"Nag Lin Anglin"
"Nag Lina Lanigan"
"Nag Linn Lanning"
"Nag Lise Gelinas-Sinegal"
"Nag Lore Lagrone"
"Nag Loren Lonergan"
"Nag Lou Angulo"
"Nag Lyle Langley"
"Nag Man Mangan"
"Nag Marta Matranga"
"Nag Marth Grantham"
"Nag Mel Gelman"
"Nag Meri Germain"
"Nag Mills Smalling"
"Nag Mona Mangano"
"Nag Moss Gossman"
"Nag Ned Degnan"
"Nag Olga Galgano"
"Nag Olmeda Magdaleno"
"Nag Ora Aragon-Arango"
"Nag Rae Reagan"
"Nag Red Grande"
"Nag Reid Dearing-Reading"
"Nag Reo Orange"
"Nag Rey Graney-Garney"
"Nag Rob Brogan"
"Nag Robert Bontrager"
"Nag Rod Dorgan"
"Nag Rosy Grayson"
"Nag Rowe Wagoner"
"Nag Roy Gaynor"
"Nag Rubi Bugarin"
"Nag Ruth Hartung"
"Nag Samella Magallanes"
"Nag Saul Lagunas"
"Nag Su Angus"
"Nag Sui Suniga"
"Nag Tara Granata"
"Nag Tia Gaitan"
"Nag Tish Hasting"
"Nag Tom Montag"
"Nag Tora Tarango"
"Nag Torres Garretson"
"Nag Tresa Sargeant"
"Nag Val Galvan"
"Nag Vi Gavin"
"Nag VIP Paving."
"Nag Weyer Greenway"
"Nag Will Walling." []
"Nag Yael Galyean"
"'Name Sy my sane yes-man.'"
"Neg Al Lange"
"Neg Ali Eaglin"
"Neg Almeda Magdalene"
"Neg Alvin Langevin"
"Neg Ara Reagan"
"Neg Art Garten"
"Neg Astrid Grinstead"
"Neg Aura Garneau"
"Neg Bart Bangert"
"Neg Bo Bogen"
"Neg Bristol Gilbertson"
"Neg Carlo Longacre"
"Neg Dan Degnan"
"Neg Delisa Deangelis"
"Neg Dori Doering"
"Neg Dorian Digennaro"
"Neg Eda Deegan"
"Neg Elsa Angeles"
"Neg Erica Carnegie"
"Neg Ha Hagen"
"Neg Ira Gainer"
"Neg Irma Germain"
"Neg Irwin Wininger"
"Neg Karri Kerrigan"
"Neg Kati Keating"
"Neg Keli Keeling"
"Neg Lea Neagle"
"Neg Les Engels"
"Neg Lila Gallien"
"Neg Lisa Gelinas-Sinegal"
"Neg Lora Lagrone"
"Neg Lori Olinger"
"Neg Lorna Lonergan"
"Neg Lu Leung"
"Neg Lyda Gladney"
"Neg Lyla Langley"
"Neg Man Engman"
"Neg Marc Mcgrane"
"Neg Maren Greenman"
"Neg Mary Germany"
"Neg Mel Mengel"
"Neg Miss Messing"
"Neg Odis Godines"
"Neg Piper Eppinger"
"Neg Ray Garney"
"Neg Reid Deering-Edinger"
"Neg Rhea Henegar"
"Neg Rhoda Hagedorn"
"Neg Rob Borgen-Bogner"
"Neg Rod Gorden"
"Neg Rolf Lofgren"
"Neg Rose Greeson"
"Neg Roy Gorney"
"Neg Rubi Breunig"
"Neg Rubin Bruening"
"Neg Ruth Gunther"
"Neg Sam Manges"
"Neg Seth Hentges"
"Neg Sid Dinges"
"Neg Talbert Greenblatt"
"Neg Terra Gaertner"
"Neg Twyla Gwaltney"
"Neg Walter Greenwalt"
"Neg Will Welling"
"Neg Yun Nguyen"
"Negate ol['] Eagleton. Elongate glee a ton." []
"Next Day: Deny Tax."
"Nip Matt Pittman."
"Nix test tent six."
"No to Mr. Ron Tom, To Norm Morton."
"Note areas feared ad-free."
"'Once up, pounce.'"
"Only half? Nah, folly."
"Oust dire outsider." []
"Out-Plan Al Upton."
"Out-pwn Uptown."
"Outsource, courteous."
"Pack tie, take pic."
"Pass on Spanos." []
"Patronise Petrosian."
"Pay gold, ply, goad: play God."
"'Perform awful law-fu.'"
"Pester Peters, Streep."
"Pick on PinkCo, cop kin."
"Ping Victor at TrivCo."
"Plan new sugared ad surge."
"Plot lax poll tax."
"Poach Mr. Camphor."
"Pocket KeptCo."
"Polite = top lie to pile." []
"POS SOP: P.S. Oops!"
"Postpone Pop Stone, top peons: open spot." []
"Pot Nat Patton."
"Pre-filing pilfering."
"'Pressure reps? Sure!'"
"Prioritise priorities."
"Promote feel-raw welfare-free law."
"Promote moper to more-top Metro-Op." []
"Prove Cider Overpriced."
"Provoke Poor Kev."
"Put Mr. Trump..."
"Pwn a pawn."
"Rattle Tatler." []
"Re-add dread. Caress scares."
"Re-dock OK-Cred Ed Rock."
"Re-stun unrest."
"Read [i]This Org So Right[r] by Sig Roth."
"Ream/Nag Manager."
"Rec Clean Canceler Clarence."
"Rec Tim's Metrics." []
"Recoup PureCo."
"Redact Traced CD Rate."
"Redo staff tradeoffs."
"Regroup or purge." []
"Reject Jr. E-tec."
"Remind Dim Ren."
"Reminds: Mr. Denis, Ms. Rendi, Mrs. Nied, Dr. Nimes."
"Renew Milo's Limos contract."
"Replace Lee Carp, Creep Al, PC Earle, Carl. Eep!"
"Reprog. Org-Rep Groper."
"Results of the paperboy pay probe."
"Retain Terina Artein." []
"Revenge Ev Green."
"Revoke Keevor. (Ever OK?)"
"Rid Ken 'Red Ink' Kinder." [p]
"Rip Al April"
"Rip Aron Parrino"
"Rip Art Artrip"
"Rip Ash Parish"
"Rip Chet Pitcher"
"Rip Dan Pinard"
"Rip Earle Lapierre"
"Rip Ed Pride"
"Rip Ellen Pellerin"
"Rip Elma Palmeri"
"Rip Enos Pierson"
"Rip Ester St. Pierre-Priester"
"Rip Gaye Gariepy"
"Rip Gena Pinegar"
"Rip Glen Pringle"
"Rip Ione Pineiro"
"Rip Isa Parisi"
"Rip Kenton Pinkerton"
"Rip Maile Palmieri"
"Rip Meda Dampier"
"Rip Ned Pinder"
"Rip Noe Perino"
"Rip Oda Parodi"
"Rip Pepe, Peppier Preppie."
"Rip Rae Rapier"
"Rip Renate Trepanier"
"Rip Rene Perrine"
"Rip Steed DePriest"
"Rip Tamela Palmatier"
"Rip Tana Partain-Trapani"
"Rip Tena Painter"
"Rip Theo Pothier"
"Rip Van Parvin"
"Rip Zora Pizarro"
"Rise again, gain raise."
"Robo-call Carl Lobo."
"Roil Lori."
"Routine to inure or unite."
"Rub Off Bo Ruff."
"Ruin Al Laurin."
"Ruin Amado Mouradian."
"Ruin Amos Mansouri."
"Ruin Bao Rubiano."
"Ruin Bell Brunelli." []
"Ruin Bo Rubino."
"Ruin Dale Lindauer." []
"Ruin Deb Burdine-Debruin."
"Ruin Dick Rudnicki."
"Ruin Echo Icenhour."
"Ruin Elsa Saulnier."
"Ruin Geri Guerrini."
"Ruin Ida Arduini."
"Ruin Jo, Junior."
"Ruin Misha Nishimura."
"Ruin Ola Laurino."
"Ruin Tam Maturin."
"Sack Jon Jackson."
"Scam Alana Salamanca."
"Scam Bo Bascom."
"Scam Boren Branscome."
"Scam Heflin Fleischman."
"Scam Herb Chambers." []
"Scam Leila Escamilla."
"Scam Linde Mcdaniels." []
"Scam Lira Mariscal."
"Scam Nicola Maniscalco."
"Scam Ora Marasco."
"Scam Rae Maresca." []
"Scam Rena Creasman."
"Scam Rene Cremeans."
"Scam Rhee Marchese."
"Scam Shen Chamness."
"Scam Trish Christmas."
"Scoop up US Pop Co."
"Secure private VIP rate."
"See Dr. Drees." []
"See SimplyCo Olympics."
"See your dope-[a-word] ad posse."
"Sell Amy Smalley."
"Sell Aron Ornellas."
"Sell Ash Hassell."
"Sell Cari Carlisle."
"Sell Cher Scheller."
"Sell Dan Sandell."
"Sell Debi DeBellis."
"Sell Dirk Driskell."
"Sell Ewa Seawell."
"Sell Iva Sevilla."
"Sell Joni Jellison."
"Sell Kam Maskell."
"Sell Kim Miskell."
"Sell Kina Kinsella."
"Sell Mia Maselli."
"Sell Rich Schiller."
"Sell Rio Roselli."
"Sell Sigman Massengill."
"Sell Stan Stansell."
"Sell Tera Estrella."
"Sell Toni Elliston."
"Sell Ty Stelly."
"Sell Wilt Stilwell."
"Send all and sell." []
"Send Lee Needles." []
"Shadow Ad Show. (How sad!)"
"Shake down the claret cartel."
"Shun Bad Husband Dan Bush/Bud Nash."
"Shut off Stu Hoff."
"Sidestep Despites."
"Skin Jen Jenkins." []
"Slam Sue Samuels."
"Slime Al Maselli."
"Slime Ann Salminen."
"Slime Chana Aeschliman."
"Slime Chia Michaelis."
"Slime Earl Marseille."
"Slime Ester Lesmeister." []
"Slime Gena Geiselman."
"Slime Lon Milleson."
"Slime Ola Masiello."
"Slime Olin Simonelli."
"Slime Tad Milstead." []
"Slime Thad Delashmit."
"Slime Ty Smitley."
"Slime Una Suleiman."
"Smash Shams."
"Sponsor Madcap Ad Camp."
"Spur. Be Superb."
"Stagier triages."
"Startle Statler."
"Stay, do today's toy ads."
"Steamroll Martello's."
"Stop [n-t] Patteson."
"Stop Ara Spataro."
"Stop Catt Tapscott."
"Stop Ciarlo Policastro."
"Stop Earl Portales." []
"Stop Eli Pistole."
"Stop Erik Petroski."
"Stop Fred Stepford."
"Stop Her Stopher."
"Stop Ira Poitras." []
"Stop Kinn Pinkston."
"Stop Lon Polston."
"Stop Lore Lopresto." []
"Stop Ly Sypolt."
"Stop Mae Postema."
"Stop Marek Osterkamp." []
"Stop Min Timpson."
"Stop Mink Tompkins."
"Stop Nina Spinnato."
"Stop Ola Apostol."
"Stop Rae Pastore." []
"Stop Rahn Sharpton."
"Stop Rana Pastrano."
"Stop Reina Petrosian." []
"Stop Ro Stroop."
"Stop Roe Stroope."
"Stop Sara Trapasso."
"Stop Sera Peatross."
"Stop Shery Poythress."
"Stop Treanor Paternostro."
"Stop Trena Patterson." []
"Streamline Learn Times."
"StudyCo: CUSTODY."
"Stun Del Lunsted."
"Subdue/sue Bud."
"Subvert, bust Rev. Buster V. Tubvers."
"Sue bar abuser." []
"Sue Mr. Yale Marley."
"Tack on TankCo."
"Tag Ana Nagata"
"Tag Aron Tarango"
"Tag Burt Garbutt"
"Tag Delma Talmadge"
"Tag Desire Eastridge"
"Tag Elma Talmage"
"Tag Eura Argueta"
"Tag Herb Gebhart"
"Tag Herr Gerhart"
"Tag Ian Gaitan"
"Tag Larita Tartaglia"
"Tag Lennie Galentine"
"Tag Leon Gleaton"
"Tag Lin Gatlin"
"Tag Ling Gatling"
"Tag Lu Gault"
"Tag Marie Armitage"
"Tag Marna Matranga"
"Tag Neal Galante"
"Tag Rana Granata"
"Tag Rob Bogart"
"Tag Roe Ortega"
"Tag Ron Garton"
"Tag Rosa Astorga"
"Tag Rush Shugart"
"Tag Shin Hasting"
"Tag Snider Grinstead"
"Tag Son Gaston-Gatson-Sontag"
"Tag Sonia Santiago"
"Tag Soo Agosto"
"Tag Tess Gassett"
"Tag Trish Straight"
"Tag Yan Gaytan"
"Tell BenjiCo, Joe B Inc. Nice Job!"
"Throw several employees['] names in the votes stove."
"Tip Bates Baptiste"
"Tip Cher Pitcher"
"Tip Dara Partida"
"Tip Dorie Dipietro"
"Tip Edgar Patridge"
"Tip Gerard Partridge"
"Tip Keren Peterkin"
"Tip Leo Polite"
"Tip Leona Lapointe"
"Tip Lola Patillo"
"Tip Lon Lipton"
"Tip Luc Cutlip"
"Tip Man Pitman"
"Tip Nola Lapoint"
"Tip Ora Poitra"
"Tip Oren Pointer"
"Tip Rana Partain-Trapani"
"Tip Rena Painter"
"Tip Roe Prieto"
"Tip Rollo Portillo"
"Tip Rosa Poitras"
"Tip Santo Pattison"
"Tip Shon Shipton"
"Tip Slade Plaisted"
"To Alf: Alt of Lo-Fat." []
"To N.Y. Co & O'Conty not-coy tycoon."
"Tolerate to relate."
"Traduce Decatur Curated." []
"Transfer Fran Rest."
"Trap Chae Capehart."
"Trap Devon Davenport."
"Trap Ernie Trepanier."
"Trap Ian Partain-Trapani."
"Trap Ida Partida."
"Trap Lea Peralta."
"Trap Leo Laporte."
"Trap Les Stapler-Plaster."
"Trap Maile Palmatier."
"Trap Mel Lampert."
"Trap Sana Pastrana."
"Trap Shon Sharpton."
"Trap Stone Patterson."
"Trap/ail partial liar Pat."
"'Treat yon no-treaty, tony-rate attorney.'"
"Trip Ada Partida"
"Trip Ana Partain"
"Trip Edgar Partridge"
"Trip Elyse Priestley"
"Trip Lee Peltier"
"Trip Les Spitler"
"Trip Noe Pointer"
"Trip Renae Trepanier"
"Trip Tad Pittard"
"Try out Ruy Ott."
"Tug aside gaudiest gut-ideas."
"Turn off front of Tuff Ron."
"Un-Block Col. Bunk, Lon Buck."
"Unblock BlunkCo." []
"Underbids? Disburden."
"Unfriend, fire Dunn."
"Upshot: Push to, Uh, Tops."
"Use Pat Up East." []
"Use turf futures."
"Vet Alan Valenta."
"Vet Ali Vitale."
"Vet Aline Valiente."
"Vet Alvin Vanvliet."
"Vet Anson Vanstone." []
"Vet Arnell Vantrella."
"Vet Aron Vetrano."
"Vet Carl Calvert."
"Vet Ester Everetts."
"Vet Gina Vigeant."
"Vet Greta Gravette."
"Vet Ida Devita."
"Vet Ilona Violante." []
"Vet Levan VanVleet."
"Vet Lina Levitan."
"Vet Linnea Valentine."
"Vet Lita Leavitt."
"Vet Liz Levitz."
"Vet Loren Leverton."
"Vet Lorena Leaverton."
"Vet Lori Toliver."
"Vet Nasser Servantes."
"Vet Neal Valente."
"Vet Nina Vantine."
"Vet Nola Volante."
"Vet Nona Vannote."
"Vet Noor Overton." []
"Vet Oren Everton." []
"Vet Padron  Davenport." []
"Vet Peter Prevette."
"Vet Petra Prevatte." []
"Vet Ranae Navarete."
"Vet Renata Navarette."
"Vet Rita Averitt."
"Vet Rosala Salvatore."
"Vet Rosi Restivo." []
"Vet Rosia Travieso."
"Vet Sal Vestal." []
"Vet Sara Tavares."
"Vet Seger Versteeg."
"Vet Sen. Steven."
"Vet Si Tevis."
"Vet Tequila Valiquette."
"Vet Teri Everitt."
"Vex Ari Xavier."
"Vex Rueda Deveraux."
"Vine St.: Invest."
"Visit Opulent Lout Pen."
"A vivid ad via David, Avid Diva." []
"Void Sue: Devious."
"Vote duping: don't give up."
"WantCo: Act NOW."
"Ware sly lawyers!"
"Whack Cid Chadwick."
"Whack Erma Marchewka."
"Whack Guia Kawaguchi."
"Whack Miers Wickersham."
"Whack Saito Stachowiak."
"Whack Sen. Schwanke."
"Whack Sid Shadwick."
"Whack Su Sawchuk."
"Whack Thor Hackworth."
"Whack Tien Whitenack."
"A whiner. New hair. Hire? Naw."
"Wrest, Strew."
"Your motto. Honesty? Tons, Hey!"

table of DIVORCES articles [xxv2]
blurb
"[if player is male]Lawrence Li[else]Cari Newell[end if]'s Wine Cellars" [p]
"Aerologists['] astrologies."
"Aging an['] you: Young again?"
"Alfreda's Real Fads."
"All-Best Ballets."
"Art Cly's Crystal." []
"Babblier, Bribable, I Blabber."
"Babs on Nabobs."
"Bad Style Slated by Lady Best."
"Basinger Sabering."
"Bits-O-Obits."
"Blogging Big Long Bling: GO!"
"Bluer St. Bustler Butlers."
"(Bribe A) Barbie Babier."
"Calm-Site Climates." []
"Cape Hart Race Path." []
"Charts O['] Hot Cars." []
"Cigars [']N Racings."
"Costy Tyco's."
"Couples Close Up."
"Coy Fans of Cyans so Fancy."
"Cragin Racing." []
"DeCastro's coatdress."
"Delphia's Helipads."
"Dig posh godship."
"Do I need? O, Indeed!"
"Domestic Stim-Deco." []
"Dragonish Hoardings."
"Drives to Divert so: I'd Strove."
"Ego-Trip: Grope It." []
"Elan Lane."
"Elegances: See, Glance."
"Elite Sort Lotteries."
"Elites['] Listee."
"Elitest: it's leet. I settle."
"Elsha's lashes hassle." []
"Enid Roff, Friend of Fineford."
"Enrage a Green."
"Envy Row: Very Now."
"Eva's Hot Have-Tos."
"Far Riser Farrier's Ferraris."
"Fashion of Shani."
"Fast Cars as Crafts."
"Fiances Face Sin."
"Fine Car Fancier." []
"Flo Got to Golf."
"For Autos So Far Out."
"Games for Ego Farms."
"Gaudiest Guest-Aid." []
"Gaudiest Suite, Gad." []
"Geothermal Gamer Hotel."
"Glam Note: Gloat, Men! Go Mental." []
"Goal: Mr. Glamor."
"Golf Carts, Logcrafts."
"Got Some Gems Too."
"Grand Sire Drearings."
"Greed, Fur: Drug Free."
"Greed-Sin Designer [if player is male]Sid Green[else]Seri Deng[end if]." []
"Gush: fine Feng Shui."
"Gussied I'd Guess."
"He Fires Heifers."
"Heiress Sherise."
"Heros['] Moil Heirlooms."
"Hi, best be THIS." []
"His want: What's IN!"
"Hollywood's Lowly Hoods."
"Host Ben the Snob."
"A Host Has To." []
"Hot Perks: The Pork's Posh Trek."
"In-Touch Count, Hi." []
"Income Dump Compendium." []
"Info on the Bein' Raw Wine Bar Webinar."
"Inside Sets['] Sensitised Tidinesses."
"Interest'n Internets."
"Kruschke Chukkers."
"LA Mag: A Glam-Amalg."
"Lefrancois Falconries." []
"Lord Raab's Labradors."
"Lou Pecor's Super Cool Pool Cures."
"Lucrative Alive Curt." []
"Mad Spoilt Diplomats."
"Maddison Diamonds."
"Marc Lee's Meal Recs."
"My neon jet enjoyment."
"My, opera: pay more."
"Nixed Index."
"Oho, Gent On the Go."[]
"Ol['] Ferg Folger, Golfer."
"Opulent Letup? NO."
"Orient so, sortie on snootier."
"Osseins Session."
"Ostentatious, Toniest Autos."
"Overpriced Divorce Rep Pedro Cervi." []
"Patronage or Pageant."
"Peaseland Esplanade." []
"Pernods: Spend, or Respond."
"Pets to Top Set."
"Piloto's Poloist Topsoil."
"Pony rides: yes, drop in!"
"Poorness Snoopers."
"Porsche Porches."
"Posh dinner endorphins."
"Pride: Sin? Inspired!."
"Pruett's putters sputter."
"Puerta's pasture: rates up!"
"Rapt tipsy party tips."
"Rave Us, Saveur: Suaver Vera-Su."
"Relisted Deliters."
"Remapping pampering."
"Repubs: Superb! (Pure BS!)" []
"A rich cult, Ultra-chic."
"The Rich-Hitcher."
"Rich pet pitcher Chet: RIP."
"Ritzier Terrizi."
"Rovinest Investor."
"RPMs, MSRP."
"Rude Gov Dr. Vogue." []
"Saintfleur flauntier ultrafines."
"Scarcest-Cars Sect."
"Second-Dens Co."
"Sheep of posh fee."
"Showin['] Who's in: Wish on."
"Sir Ted's Dress-It Strides."
"Sisterly Styliser Lis Strey."
"So-Forced Food Recs." []
"Society's Cosy Ties."
"Solo-profit portfolios."
"Some Trips to Impress by Tom Spiers."
"Spend, See Deepness."
"Spend Short: Posh Trends."
"Spendiest Tepidness."
"Starred Traders."
"Stir crazy? Ritzy cars!"
"Super-Rich Curer-Ship Price Rush."
"SUV Ego Vogues."
"Swankest New Tasks."
"Ten-Squab Banquets."
"Tex Thaler's Tax Shelter."
"Tiny Poem: Pony time! Money pit!"
"Tompkins Top Minks: Skimp Not." []
"Tons-Wealth Talent Show."
"The top opteth."
"Toss pain into spas."
"Trend Fief: Different, Deft, Finer."
"Turf-lease ultra-fees: true/false."
"Ultra-Ease Laureates."
"Ultra smooth moolah trust."
"Unfurled-Fund Lure."
"Vain Coast Vacations." []
"Vapid VIP Ad."
"Very fun fur envy."
"Vestal Valets." []
"Vitreous voitures."
"Voguiest Give-Outs."
"Waistlines, A-List Wines."
"Wanty Tawny Wyant."
"Wardrobe raw? Bored? Bader Row!"
"Whiten it: When?"
"Who's That/What's Hot."
"Wickers Ski Crew."
"Wipers-Outs['] Power Suits."
"Yeah, best by the sea."
"Yo, Pan a Pony."
"Your Flux of Luxury."

table of ethics advice [xxv3]
blurb
"Ad month? Hot [d-word]!"
"Advice on the brightest, right bets."
"All games distract a true leader, even the socially logical [i]Beggar Bagger[r]."
"All spent? Let's plan."
"Also recommended, by E. L. Ross: Losers or Less."
"Be creative, not reactive! (...and if you have to ask HOW...)"
"Be freest or fester!"
"Be neither slickster not sticklers!"
"Being skint has a stink worse than cents['] scent."
"Best bets on how bosses obsess."
"Better to spend time in buildings than an idling bus."
"Bones worn? Brown-nose!"
"The book lionises oiliness as it outlines the lushest hustles."
"Bore [']em? Be more!"
"Bore, or be."
"Bud, to doubt, but do."
"Can't outsell a sellout."
"'Confused? Focus!' - Ned."
"Cost-free is scot-free."
"Default flat due? Proper repo PR."
"Do whatever busses in business."
"Doc Skunt says Don't Suck!"
"Don't be minutely untimely!"
"Don't put the whiny in WHY."
"Eff Eco-Coffee!"
"F Softer Efforts!"[]
"Face it, i.e. fact: ad-shy people are shady."
"Facin['] to info? ACT."
"Feel = be feeble."
"Find solid idols for nearing earning. Handle your dilatory idolatry adroitly!"
"Find where your spark parks!"
"Fooling people with a beamy maybe."
"For persuasivity, rue passivity."
"Frowny? Fry NOW!"
"Go fret on it? No, forget it. You'll rebound. You'll be [']round."
"Got funded? Don't fudge!"
"Got mere? Get more!"
"Got Narcs? Congrats!"
"'Got ties, egotist?' discusses the importance of networking and dressing well."
"Groan over a governor? I persuade! Super idea!"
"Guest advice from Oh-Well Howell on blowing unimportant people's problems off."
"Have cries. Search, vie, achievers."
"He who still moils without limos must learn the ABCs of cabs."
"How to be less noper-prone, except around an important nopers-person."
"How to bust buts."
"How to deal with buttheads['] hated buts."
"How to derail a idler (grammar police need not try.)"
"How to Toady Today!"
"'I can'ts' are worse than antics."
"I do not know whether there is a God. I know there is room at the top both for people who think there is too much religion and those who think there is too little."
"'I respect receipts' is a good general busy sounding phrase." [p]
"If any idiot can be rich, then risk, thinkers!"
"If at a fit: FIAT."
"If in Soho, Shoo!"
"If shy, fishy!"
"In the NOW, whine not." []
"Industry runs tidy. [']S un-dirty."
"It is consistent to agree with this book even more on rereading. In fact, if you do not, you read it wrong and wasted time."
"Less drugged, less grudged."
"Let your raucous ego make you courageous!"
"Loaf it to fail, ail oft."
"Loot begging, bootlegging: which is worse?"
"Make ardent a trend!"
"Make them trust your strut!"
"Mark now, man. Work. Know. ARM." []
"Monetised not? Demise!"
"My cope lab did not create a placebo!"
"Nicest = INSECT."
"No INV? Innov!"
"Not a stud? Stand out! Do a stunt!"
"Note greed: get [']er done."
"Obj.: JOB."
"Oil expert? Explore it, exploiter!"
"On guilt: lug it? No!"
"Once right: HECTORING."[]
"Outsource Courteous to be more efficient."
"Plan it Pliant!"
"A preamble says: be ampler!"
"A quote from Dan Moy on how to find yon mad Monday a Dynamo."
"Routine: Rue it? No." []
"Rue Even Revenue is a fantasy."
"Scrambling Brings Calm."
"Setup tip: step it up!"
"Show some heart or be horsemeat!"
"Some bemoan. Some beam on."
"Sportif tips for profits."
"Stop? Nope. Postpone."[]
"A stupid fable on how voles solve loves."
"Stupidity? I tip: study!"
"Success is all in the mind, but it is diet-tied too."
"A successful leader needs lifters and a stifler."
"Tarry, I? Rarity!"
"There is nothing too deuced to deduce."
"Those pricy hypocrites['] ropy ethics." []
"Timesaving beats negativism."
"To avoid sexism, there's a plug for Zooms! She Shmoozes!"
"To get in, get on it!" []
"Too smug? Mo['] gusto!"
"Using math to whine about exponentially increasing salaries is bigotry, trig boy!"
"Usury tips from a loner's loaners."
"When? Not then. Now." []
"Whoot! How to log a goal."
"The wit: whet it!"
"A worn ode of how the doer won, not some idiot who made one word from a new door."
"You don't need pure OCD to produce."
"You either UPHOLD or HOLD UP the economy!"
"You're never too aliterate to retaliate."

table of gritty dialogue [xxv4]
blurb
"'*Sob* gin!' / 'Gibson!'" []
"'[d-word-u]! Elf Feldman fled, man.'"
"'A-ok, mob? KABOOM!'"
"'Aargh! Graah! Hagar!'"
"'Ace, hi!' 'Eh...ice! I ache!'"
"'Ach, conk Hancock.'"
"'Ach so! A cosh! Chaos!'"
"'The acid, it ached. Hide, cat!'"
"'Ack, mind? Dick, man!' / 'Mad, Nick?'" []
"'Ack! Ow! Wacko!'"
"'Acrimony, Mac. Irony. Corny, am I?'" []
"'Admire? Idea, Mr.: raid [']em!'" []
"'Affinity? Tiffany, I...'"
"'Age-flab, fleabag!'"
"'Agree, Ragee!'" []
"'Ah, [d-t] had to do tha...' / 'Oh, DAT?'"
"'Ah! A dime! I'm ahead!'"
"'Ah-ah-AH! Hahahahahaha!'"
"'Ah, dupes! Heads up!'"
"'Ah, Flo. Fo['] Hal? Oh, Alf.'"
"'Ah, Sid! A dish?' / 'I dash!'" []
"'Ah, ted hated Death...' / 'Oh, Tad had to.'"
"'Ah, Wes Hawes! He was...'"
"'Ah, wit! What I hit? Aw.'" []
"'Aha, Ed, ahead!'"
"'Aha, tot-dope!' / 'Potato head!'"
"'Ahem, it's shame, it...' / 'Eat this, atheist!' (It's hate but coulda been grittier.)"
"'Ahem, Kit. TAKE HIM.'"
"'Ahem, Ma!' / 'Eh?'"
"'Ahem, son. No shame?'" []
"'Ahem...Mr Hammer? Harm [']em!'" []
"'Ahh, Ed. He had da...ehh?'"
"'Ahmed had me. He mad!'" []
"'Ahoy!' / 'Oh, ya. Ha. Yo!'"
"'Aid cut? Ay. Audacity!'"
"'Ail, Fatty? Fatality!'"
"'Aim west! Waste [']im!' / 'Me? It was...'" []
"'Air hockey? Yeah, I rock.'"
"'Al, I ail!'" []
"'Alf's in! Finals!'"
"'Alibi? I bail.'"
"'Alive, OK, go, give a look.'"
"'Allo, Lola!' / 'Ol['] Al!'"
"'Alloted to. Dealt. Totaled.'"
"'Alphonse, phone Sal.'"
"'Am I one? Anomie!'"
"'Ambush! Bash [']um!'"
"'Amigo! Go!' / 'I am!'"
"'And bestow beatdowns to bad news.'"
"'And GIT, Nat. Dig?' / 'Dang it!'"
"'And I'm admin! Man, I'd--[d-word], I...'" []
"'Andrew?' / 'Naw, Dre.'" []
"'The angry gentry? HA!'"
"'Anonymous? Man, son, you annoy us mo['].'"
"'Any Bus? A sub?' / 'Nyaa.'"
"'Any weed, Dewayne?' / 'Aw, needy?'"
"'Apathy, Pat?' / 'Yah.'" []
"'APB: Gil's Big Pals!'"
"'Are those... pod things['] dipthongs?'"
"'Arg! Hood!' / 'Road hog!'"
"'Argue Mo[']? A Morgue.'"
"'Arrrested, dearest.'" []
"'As to new at Owen's--no sweat.'" []
"'Ashton has not tons, ha!'" []
"'Ask up, eh? Ha, pukes!'" []
"'Aspirin! ... Rain sip!'" []
"'Assume Seamus sues: Ma amuses.'"
"'At large, Al? Great!'"
"'At Mike! Take [']im! Make it!'"
"'Atoning? Giant no!'" []
"'Aw, beer, Reba? Ew!'"
"'Aw, Ike, I...' / 'Weak!'"
"'Aw! Shot? So what?'"
"'Aw, then. Eh, want new hat?'"
"'Away, thug!' / 'What a guy!'"
"'BACK door! Bad crook!'"
"'Back, still? BLACKLIST!'" []
"'Back us! [']S a buck!'"
"'Bad G! ... D-bag!'"
"'Bad g's? D-bags!'"
"'Bad men sty? Stand by me.'"[]
"'Bag THIS, big hats!' / 'Bah, gits!'"
"'Ballet? Be tall!'"
"'Bam! Re-bar [']em!'" []
"'Bam! Shun bum Hans.'" []
"'Band, pal? Bad plan.'"
"'Bane, ma!' / 'Be a man.'"
"'Bash Ed, BS-head. He's bad.'"
"'Be arty? Betray, ye brat!'" []
"'Be done, Bo!' / 'Need...one bed...'"
"'The bear BEAT HER!' / 'Breathe.'"
"'Beat, Don? Don't be a...'" []
"'Beat down? We not bad!'" []
"'Beat Ed? Debate.'"
"'Beef tins? Benefits be finest!'"
"'Beehive vibe. Eeh.'"
"'Been shot? Be honest.'" []
"'Bend to Deb? NOT!'" []
"'Bet on Ben to not be.'"[]
"'Bid them debt? HIM?'"
"'Bids? Dibs? BS, I'd...'"
"'Big gulp, pig!' / 'Glub!'"
"'Big man, I'm...' / BANG!"
"'Big mouth bigot, hum!'"
"'Big score, bro! E-cigs!'"
"'Big Snob Gibbons?! Sobbing?!'"
"'Bigfoot? Go to FBI.'" []
"'Bigoted bite, dog!'"
"'Biker Ed be IRKED!'"
"'Bile? Gad, big deal! Be glad I...'" []
"'A bite? I...' / 'Beat it, [a-b]!'"
"'Block ads? Black sod.'"
"'The blow! Belt!' / 'Who?'" []
"'Bo Ewing?' / 'Beg, Wino! Begin...OW!'"
"'Bo! Pal! Bap ol['] Pablo! Bop Al!'"
"'Bo's guild? Og builds Bug-Idols.'"
"'Bo's...SOB!' / 'So's Bob!'"
"'Bob, any baby?' / 'No.'"
"'Body-Odor Roddy? Boo!'"
"'Bold hag!' / 'Bald hog!'"
"'Bolt, hicks! This block...' / 'Thick slob!'"
"'Bombard Brad, mob!'"
"'Bongos? Go, snob.'"
"'Bonk Cal Black?' / 'No. Back, Lon!'"
"'Book Ma.' / Kaboom! Bam-o! / 'OK.'" []
"'Boor Inn? Robin! No!'"
"'Bop Ron? No prob!'"
"'Botulism? Must boil! Lo, submit!'"
"'Bowels be slow, slob? Ew!'"
"'Bows, NOW!' / 'Wow, snob!'"
"'Breakdown! Debark now!'" []
"'Bring Mo, Big Norm.'"
"'Bruno! Bo! Run!'" []
"'BS weed, dweebs!'"
"'Bum set? Must be. Bust [']em!'"
"'Bungles? Slug Ben!'"
"'The bus be shut. Eh? BUST!'"
"'Bus fare?' / 'Sure!' / 'Fab!'"
"'Bust [']im!' / 'Submit!'"
"'But looky! Too bulky!'"
"'But...' / 'Go to bug Bogut!'"
"'Cackle mob? We welcome back!'"
"'Cake? Sly, Lackeys!'"
"'Calamity? Calm it, ya...!'"
"'Call it. I'll act.'"
"'Can HE con? No chance!'"
"'Can Mo Macon con Ma?' / 'No, Mac.'"
"'Can't you count? Ay!'"
"'Cat, Ron Cantor can rot!'" []
"'Catastrophe spectator? Ah!'" []
"'Cede-pact? ACCEPTED!'"
"'Cede, son? No, one second...'"
"'Cepeda's escaped! Eep, cads!'"
"'Chased here? Searched, eh? Hard cheese!'"
"'Chat? I'd--cad, hit a ditch!'"
"'Chat, or torch a hot car?'" []
"'Chess? No, she cons!'"
"'Choke, bald blockhead!'"
"'Chokiest Thickoes!'"
"'Chow time! Come!' / 'With woe, Mitch!'" [see why 1st 4 words vs next 4 not flagged]
"'Class, men! Calmness!'"
"'Clot's done. Stone cold.'" []
"'Clout! Do! Out cold, clot duo!'"
"'Co-ship... Hi, cops!'"
"'Coinage ace? Go in!'"
"'Cold! Ed's scolded!'" []
"'A cold, weak deal.' / 'Wacko.'"
"'Columbo! Cool!' / 'Bum!'"
"'Come on, Moe! Con!'"
"'Command? Mm, can do.'" []
"'Comrades! More cads!'" []
"'The con? CHET? NO!!!'"[]
"'Conk Ed?' / 'No, deck Ken, Doc.'"
"'Conk it, Nick, to tick on!'"
"'Cool it. Co-toil.'"
"'Cough! A gaucho!'"
"'Coughers!' / 'Grouches!'" []
"'Could Luc do...' / 'U CLOD.'"
"'Cream-a-camera era, Mac!'"[]
"'Crooks ROCK so!'"
"'A crown car now, raw con?'"
"'Cull it? Oh, chill out.'"
"'D'oh! Lew howled!'"
"'Da SOB! So bad. Sad, Bo.'" []
"'Dad! Sue! A dude's DEAD!' / 'Us?'"
"'Dad works? Dorkwads!'"
"'Dammit.' / 'Mad, Tim?'"
"'Damn, D-Man!'"
"'Dan's Beer Brand. See! Seen drab, A Bender's...'"
"'Dang, it's angst! I'd...'"
"'Dang rap!' / 'Grandpa!'"
"'Daniel nailed denial.' / 'Denials and lies!'"
"'Dat so, toads? Sad to...'"
"'Dat wuss was DUST!'"
"'Deadly lady, Ed!'"
"'A death? Me? Meathead!'"
"'Debauchery curbed?' / 'Yeah.'"
"'A def hat...fathead!'"
"'Def, if sops pissed-off.'"
"'Defeat fate, Ed!'"
"'Deft Dale felt dead. Deflated.'"
"'Defuser? Refused!'"
"'Defy [']em. Feed MY...'"
"'Del wins? SWINDLE!'"
"'Denotate. DETONATE!'"
"'Deputy Ted?' / 'Yup.'"
"'Did Leo lie? Odd!'"
"'Didact!' / 'Addict!'"
"'Die, Edi Eid!'"
"'Die, Nick!' / 'Nice kid.'"
"'Died, Did [']e? Ed, I'd...'"
"'Diet, Nev? Evident.'" []
"'Dino! Odin! Dion! I'd no...'" []
"'Dirk Irk'd KID R.?!'"
"'Dirt po['] tip, Rod!' / 'Drop it.'" []
"'A dis, bro? So rabid!'"
"'Dis Work? Skid Row!'"
"'Dish, men. He minds? Send him...'"
"'Dislike silk? Die!'" []
"'Diss at sadist? It's sad.'"
"'Ditmore's mortised!'"
"'A dive, youth? You've had it!'"
"'Do luls so dull? Us, doll?'"
"'Do no harm!' / 'Darn homo!' / 'Oh, random!'"
"'Do rep, Pedro!'" []
"'Do Stew, wet sod.' / 'Stowed.'"
"'Do work, dork!' / 'Ow!'"
"'Dog doo? O good god!'"
"'Dolt, be bolted!'" []
"'Don, I see ONE side...'"
"'Don, Two won't do!'"
"'Don...' / 'Go on, dog!'" []
"'Don't care.' / 'Once? ... Drat.'" []
"'Done, Deon?' / 'No, Ed.'" []
"'The door's so red-hot!'" []
"'Dope-[a-word] pose? Sad.'"
"'Dopy rant. Don't pray, Don. Party!'"
"'Double duty? Bye!' / 'Dud! Lout!'"
"'Douche!' / 'Ouch, Ed!'"
"'Dough? Go, duh! Do! Ugh!'"
"'Dough?' / 'Duh, go du! Ugh!' / 'Uh, GOD.'"
"'Down to now, [d-t].' / 'Won't do.'" []
"'Dr. Agee agreed? Gee! Rad!'"
"'Drat, big dirtbag. Dig, Bart?'"
"'Drown NOW, Dr.!'"
"'Drub R-Dub!'"
"'Drugs, gal?' / 'Sluggard!'"
"'Dual app! Applaud!' / 'Laud pap?'"
"'Dues, bro?' / 'Sore, bud?'"
"'Dumb hat!' / THUD! BAM! 'Mud bath!'"
"'Dumb idea, dude. I...' / BAM! / 'Um, baddie!'"
"'Dump ably. Play dumb.'" []
"'Dunk, Cam!' / 'DUCK, MAN!'"
"'East, man.' / 'Namaste.'"
"'Eat my meaty..'" []
"'Ebony be yon, Ben. Yo!'"
"'Ed! [crap-u] red cap!'"
"'Ed, ask a desk.'"
"'Ed, get up! Go! ... Pegged out?'"
"'Ed, I...' / 'DIE!'" []
"'Ed Kahn's shanked!'"
"'Ed lugs sludge.'"
"'Ed's date?' / 'Sedated. Deadest.'" []
"'Ed's not...stoned?'" []
"'Ed's rash!' / 'Ssh, dear.'"
"'Eek, son. So keen?'"
"'E.g. OFF GEOFF.'" []
"'Eh, I told the idol!'"
"'Eh, I'd hide.'"
"'Eh, jort, Jethro?'"
"'Eh, man? Me? Nah.'"
"'Eh, poor Hooper.'"
"'Eh, scat, cheats!'"
"'Ehh, but the hub, Beth!' / 'Uh?'"
"'Elect turd, deter cult.' Cluttered logic."
"'Elijah, eh? Jail!'"
"'Emo hearts? Horse meat!'"
"'Enis, no.' / 'One sin. So?' / 'NINE.'"
"Eponym: 'P-Money!' / 'My peon!'"
"'Er, [s-w]! The IRS! Eh, stir!'"
"'Er, goon? No gore!'"
"'Er, noise? No siree!'" []
"'Er, pups! Prep us supper!'"
"'Er, rise, sirree!'"
"'Erin, Wes? Newsier Weiners!'"
"'Er...must...must re-muster...'"
"'Ernie! Irene! In [']ere!'"
"'Err, Gab? Re-brag!'"
"'Escrow? Cowers!'" []
"Espionage? Go see pain!"
"'Even dice.' / 'Evidence?'"
"'Evers veers? Sever.'"
"'Ew. Bill will be...'" []
"'Ew, Olly.' / 'Ow, Lyle!' / 'Yellow? Yo, well.'" []
"'Ew! Tar water!'" []
"'Eww! You choked!' / 'Eww! You hocked!'"
"'Fab toy, fat yob!'"
"'Face [']em, McAfee!'"
"'Fade, guy!' / 'Udge-fay!'"
"'Fail my family? Flay [']im!' / 'I'm-a fly.'"
"Faint ropy profanity." [p]
"'Fake it, cur!' / 'Fruitcake!' / 'Irate...'"
"'Fan riot info art? Ain't for faint or...'" [p]
"'Fashion? Oh, naifs! As if, hon!'"
"'Fat Fred f-farted!'"
"'Fat Rio! Fair to fiat or air oft?'"
"'Fay, I...' / 'A FYI if ya...'"
"'Fed lie? I'd flee, defile.'"
"'Fed?' / 'Ug.' / 'Fu-GED fudge.'"
"'Felt? No. TEFLON.'"
"'Fiat, sir?' / 'It's fair.'"
"'Fibs? Fail. BAILIFFS!'"
"'Fink, do find ok, kind of? IDK.' / 'F No!'"
"'Finker!' / 'Knifer!'"
"'Fischel filches!'"
"'Fish not fo['] hints! Shift on!'"
"'Fit? Haw. What if...'"
"'Flab, def? BAFFLED!'"
"'Flagrant raft, Lang!'"
"'Flap it? Fat lip!'"
"'A flim-flam? I?'"
"'Flu? Aw, awful.'"
"'Fly? Ug! Fugly!'"
"'Fondle? Enfold?' / 'Lo, fend!' (fled on.)" []
"'Foot. Toof. FOTO!'"
"'Forming gin from...fig, Norm?'"
"'Foties? Softie.'"
"'Free Us!' / 'Refuse!'"
"'Fry, cats! Cry fast!'"
"'Fur coats? Factor us four cats, curst oaf!'"
"'Fuss! Make fake sums!'"
"'G'wan, gnaw!' / 'Breakfast steak? Barf!'"
"'Gabe! A beg!'"
"'Gad, I did. I DID gag.'"
"'Gad, Ken. Ganked.'"
"'Gag! Soft!' a bigot moans." [x]
"'Gah, it's a sight.'"
"'Game's up, smug ape!'"
"'Gangsta Stan! Gag!'"
"'Gee, hurt, thug? [']Ere!'" []
"'Geronimo! Ergo, I'm on.'" []
"'Get Bo to beg!'" []
"'Get by? Beg! TY!'"
"'Get it done, Gene.' / 'Ditto.'"
"'Get Lou to glue 'Ole Gut' Goulet.'" [p]
"'Gil's [a-word] is glass!'"
"'Gin, Tad! Dang it!' / 'Dig, Nat.'"[]
"'Give bad vibe? Gad, Big Dave!'"
"'Glib sin, sibling!'"
"'Glue [']im, Miguel!'"
"'Gnome men, go!'"
"'Go, bum. Mug Bo!'"
"'Go die, Diego!'"
"'Go, dood! Do good!'"
"'Go drill, old girl!'"
"'Go, mite!' . 'I got [']em!'"
"'Go? Nah. Oh, nag, Hogan!'"
"'Go raw. Grow a...' / 'Aw, Rog!'"
"'Go soft? So, GTFO.'"
"'Go, Stella!' / 'Lost a leg. Age tolls.'"
"'Go wash, hags!' / 'Ow! Aw, gosh!'"
"'Gob THIS, big-shot!'"
"'Goddam, Mad Dog!'"
"'Gold door? Drool, dog!' / ' Good Lord.'"
"'Gold rush? Gush, lord!'"
"'Goober? Booger? Go, bore!'"
"'Good Thing...' / 'Nothin['], Dog.'"
"'Good?' / 'Oof! Dog food!'"
"'Goons! Go, son!'"[]
"'Gord!' / 'R-Dog!'"
"'Gosh! Tut! Gut shot? Ugh! Tots!'"
"'Got any sin?' / 'Not saying.'"
"'Got fire? Go fer it!' / 'I forget.' / 'To grief!'"
"'Got mine. Tim?! Gone!'"
"'Gouger? Rousse? Grouse, rogues!'" []
"'Grant is a string-gnat! Sir.'"
"'Greef's Free, G's!' (the spelling can be gritty, too.)"
"'Grief, us? Figures.'" []
"'Growin['], Ma! Am I wrong?'"
"'Grub, clown? Wrong club!'"
"'A guess: use gas?'"
"'Gun hire! I hunger!'"
"'Gunfire!' / 'Un-grief.' / 'Urg, fine.'"
"'Gunther! Run the hurt-gen!'"
"'Gus, end Ned's gun nudges!'"
"'Gus, not GUNS to go nuts!'"
"'Guys, no guns, yo!'"
"'Gym? Er, germy.'"
"'Gypsies?' / 'Yes, pigs?'"
"'Ha, cop! Chop a cap, ho!'"
"'Ha! Ken's shaken!'"
"'Ha! Won't! No!' / 'What?'" []
"'Hag! Not a thong to hang!'" []
"'Hakon!' / 'O, Hank! OK?' / 'Nah.'"
"'Hal lied! Hide ALL, Delilah!'"
"'Halt [']em, Thelma!'" []
"'Halt! Bestow the last bow!'"
"'Halt, dolt! That'll do.'"
"'Hang [']em, Meghan!'" []
"'Hard booze!' 'Zebra-Hood? Hazed Boor? Razed Hobo?' / 'A bozo herd.'"
"'Hard work.' / 'Hark! Word!'"
"'Hardman Dan, harm!' / 'Hand? Arm?'"
"'Hash [']im, Hamish!'"
"'Hasting, Mr? Hamstring! Sting! Harm!'"
"'Hatcher, Ratchet the cart!' / 'Rec That.'"
"'Hate crime? Reach time!'"
"'Hate pinups? Unhappiest!'"
"'Haw. Fit? What if?'"
"'Haw, it's...' / 'What is' / 'Aw...'"
"'Haw. Oft fat? How?'"
"'He's ...' / 'It is the...'"
"'He's a cop. Poaches cheapos.'" []
"'He's subtler. Be ruthless!'"
"'Heal Mr. Mahler, Earl!' / 'Hm?'" []
"'Heat, sir? Share it!'" []
"'Hell, is she ill?'"
"'Her, I'd rid.' / 'Eh? Hired!'"
"'Herm, a harem!'" []
"'Hey! Geared?' / 'Yeh. Agreed.'"
"'Hey, grunt! They rung! Tyner, ugh!'"
"'Hey, gut the guy yet?' / 'Ugh...'" []
"'Hey, kids! Hid keys?'"
"'Hey! Len Henley!'"
"'Hey, Mo! Homey!' / 'Meh...yo.'"
"'Hi, dolt! Hold it!'"
"'Hi! Enter in THERE!'" []
"'Hi. Gift?' / 'I...' / 'Fight!'"
"'Hi, ok...so I shook...'"
"'Hi! Tag it, gah!'" []
"'Hi, Ted. Ed hit Edith. The Id!' / 'The... I'd...'"
"'Hi, was a wish...? Aw, HIS?'"
"'Hick Ted? Deck, hit the [dick]!'"
"'Hid late? Halt! Die!'"
"'High-end, ehh?' / 'DING!'"
"'Hire ten in there!'" []
"'His old hold is hid. SOL.'"
"'Hit [']em!' / 'Them? I...' / 'I'M the...'" []
"'Hit Al! I...' / 'Halt it, Hal!'"
"'Hit, bro! I throb!' / 'Oh, BRIT!'"
"'Hit kin? I think...'"
"'Hit Meg?! GET HIM!'"
"'Hit, STAT! That's it!'"
"'Hit Wong's Hot Wings!'"
"'Hive of five-oh!'"
"'Ho, beds! Eh, bods be shod.'"
"'Ho, dog!' / 'Oh, god!'"
"'Ho, dunce! Once, duh!' / 'Ouch, Ned!'"
"'Ho, hasted headshot? Hotheads!'"
"'Ho, pet. Hep to the op?'"
"'Ho, Rey!' / 'Eh, Roy, yo, her or...hey...'"
"'Ho, snow? No-show.'"
"'Hodges? He's God!'"
"'Hoes, Tom! Seem hot!' / 'Shoot [']em!'"
"'Hola, Al!' / 'Oh.'"[]
"'Holy [crap]! Arch ploy!'"
"'Holy [crap]! Coy Ralph!'" []
"'Hombre! Bro!' / 'Meh.'"
"'Homes!' / 'Shmoe.'"
"'Honesty? Tons, hey!'" []
"'Hoo-ook! Oooh, KO!'"
"'Hope? Junk-puke, John!'"
"'Hopeless sops! Heel!'" []
"'Hose [']im, homies!'" []
"'Hostages? Hot gases!'"
"'Hot dog! Got... d'oh!'"
"'Hot teen? No teeth!'"
"'Hotwire it!' / 'Er, how?'"
"'How I--ow, hi!'"
"'How is Mr. Wormish?'"
"'How soon?' / 'Now! Shoo!'"
"'How stupid! Duh, it's...' / POW!" []
"'Hug a bum? A Humbug!'"
"'Hug, Ace? Gauche!'"
"'Hug some gumshoe? Ug, homes.'"
"'Hum, chow. How much?'"
"'Hyena Haney!' / 'Nyeah!'"
"'A hyper prey, ah? Eh? Pray!'"
"'I, a sly lout?' / 'It's all you!'"
"'I Bag, Big A!'" []
"'I, bathe? Ah, BE it.'"
"'I can't pee!' / 'Patience.'" []
"'I dearly, readily...'"
"'I done no...' / 'DIE!'" []
"'I dose, so DIE!'"
"'I got it.' / 'GO!'"
"'I, grift? Frig it!'"
"'I had two. D'oh, wait, do I WHAT?!'"
"'I knew Nik. Ew.'"
"'I led you.' / 'YOU LIED!'"
"'I might hit Mig!'"
"'I mug BOTH!' / 'Big mouth!'" []
"'I, new cat, want Ice!'"
"'I ply, boss. Slips? Boy, possibly.'"
"'I posted deposit! Stop!' / 'Die!'"
"'I refuse?!' / 'Fire! Sue!'"
"'I scent cad accidents.'" []
"'I see new weenies!'"
"'I shot Toshi! / Oh, sit.'"
"'I show who is!'"
"'I, softer? To fires of tires!'"
"'I swear I was, er, a wiser...'"
"'I tamper a permit.'"
"'I tested. It's teed.'"
"'I, the rat, Harriet? Ah, trite!'"
"'I told Al, do it all, ill toad!'"
"'I undo my...' / 'YOU MIND?'"
"'I...' / 'Do it, idiot!'"
"'I...' / 'Punk, ink up!'" []
"'I...' / 'Slam [']im, Sal!'" []
"'I'd button it? Not, Bud!'"
"'I'd heed Ed Hide.' ... 'He died?'"
"'I'd of' / 'Fido, do, if...'"
"'I'd pay...' / 'Ya dip.'"
"'I'd say Daisy Day is, Saidy!' / 'Dis! Ya!'"
"'I'd shot its...' / 'Doh, do this.'" []
"'I'm about to, bum! Ai!'"
"'I'm back!' / 'Ick!' / BAM!"
"'I'm broke.' / 'Bore, Kim. Rob Mike.'"
"'I'm DAT dim at...?' / 'Admit it! Mad!'"
"'I'm hot!' / 'Hit mo[']!'" []
"'I'm Retold, Oldtimer.'"
"'I'm short, Mr! Hoist!'" []
"'I'm so great!' / 'Amigo, REST.'" []
"'I'm sunk in musk.' / 'Um, sink.'" []
"'I'm tired?! Die trim!'"
"'Ice Ben?' / 'Be nice.'"
"'Ick, dude. I ducked.'"
"'Ick, sure. I...' / 'SUCKER!'"
"'ID us? DUIs? U dis!'"
"'Idea-y?' / 'Yea, I'd...' / 'YA DIE.'"
"'Idle sop! Spoiled slop! Die!'" []
"'I.e. fry if yer fiery!'" []
"'I.e. GUNS, genius!'" []
"'If Les files...' / 'If Les flies...'" []
"'If spoke of Spike, skip, foe!'"
"'If Stan faints, in. Fast.'"[]
"'If the thief, he fit, I.../HEFT!'"[]
"'Ignorant ranting? O, no rating!'"[]
"'Ike! Tom! KO time! To Mike!'"
"'Ill gig, Gil!'"
"'Ill, Mike. Milk lie? I kill [']em!'"
"'Impeding! Impinged! Pin [']em, dig?'"
"'In order, or I rend!' / 'Dire, Ron!'"
"'In summation: ammunition's a must, minion.'"
"'Infirm, Mr.? Fini!'"
"'Info? ACT, faint co-faction!'" []
"Interrogatives. Tergiversation." [p]
"'Into it? No, not I!'"
"'Inward? I'd Warn Darwin.'"
"'Ire? C'mon, no CRIME!'" []
"'Ire, son?' / 'Nosier senior.'"
"'Irk Sy? Risky.'"
"'Is Sam amiss? I'm...' / '[a-word-u].'" []
"'Is that...?' / 'Ah, this!'"
"'Is the heist set?' / 'Hi, eh, it's...'"[]
"'Ish, MORE heroism?'"
"'It here either?'" []
"'It'd--I'm timid!'"
"'It's done? Die, snot!'"
"'It's Fate, Fatties.'"
"'It's mo['] moist, Tim.' / 'So?'" []
"'It's muck! I'm stuck!' / 'Stick [']um!'"
"'It's us, suits!'"
"'Ivy League guy? I leave!'"
"'Jake-o! A joke!'"
"'Jar mo['] or jam, Major?'"
"'Jeb! Art! Go!' ... 'Great job!'"
"'Jen's out. Joe, stun just one!'"
"'Jerk! Er, j/k.'"
"'Jerk!' / 'Hoist this joker!'"
"'Jest, bud? Or just bored?'" []
"'Job [']im, Jimbo!'"
"'The joke? Eh, ok.' / 'Jet!'"
"'Jostler!' / 'Jolters!'" []
"'KC is sick! Icks!'"
"'Keen knee!'"
"'Kelly, I kill ye?' / 'Likely.'"
"'Kent, his skin. The stink, eh?'"
"'Keys? Wham! Why ask me?'"
"'Kid, no din, OK?' / DOINK!" []
"'Kid, real dark lie.'"
"'Kid, run!' / 'I--drunk!'"
"'Kin ye key in?'"
"'Kit's Bung Stunk Big?' / 'Bunk, gits!'"
"'Knee op? Keep on!'"
"'Kneecap Ape-neck.'"
"'Knifed, eh?' / 'He finked.'"
"'Kool-Aids! Soda kilo!'"
"'Lag, fink? Flaking?'"
"'Laid up, pal. DUI.' / 'Ulp!' / 'Aid? Paul, I'd...'"
"'The lam? Halt [']em! Ah, melt!'" []
"'Lame...hit him late?'" []
"'Lament rage? Get real, man.'"
"'Lash Hal's...' / 'Ah, Ssh, all!'"
"'Last straw, stalwarts.'"
"'Laugh, lug? Ha!' / 'Ugh, Al.'"
"'Lay down, lady. NOW!' / 'Go rue, rogue.'"
"'Learn [']em, real men!'" []
"'Lee fibs. Beliefs, Lib. fees.'" [p]
"'Leg welt? Get well!'"
"'Leo, try to rely rotely.'"
"'Leon? Sam? Amos? Len? NO MALES!'"
"'Leprosy? So? ... REPLY!'" []
"'Let it be? Lie, I bet.'"
"'Let's do LOTS, Ed! Old set!'" []
"'Let's. Lest...'"
"'Libeler, eh? I'll be here!'"
"'Lift-op! To flip! Flop it.'"
"'Like that? HALT, tike!'"
"'The limo (hot lime) hit Elmo!'"
"'Line up! Un-pile!'"
"'Lip, eh?' / 'I...HELP!'" []
"'The lip! It...HELP!'"
"'Liquidated? I'd deal: QUIT!'"
"'LISTEN to me.' / 'Stolen time.'"
"'Lo, Marc?' / 'Clamor Mo['], Carl!'"
"'Lo, the log...' / 'Go to hell!'"
"'Loaded ole dad, do deal.'"[]
"'Locked up? Cold, puke. Dope luck.'"
"'LOL, ehh? Oh, hell.'"
"'LOL!' / 'Eh, hello.'"
"'Lone hope: phone Leo!'"
"'Lonely? Yell on!'"[]
"'Long day.' / 'Any gold?'"
"'Look away. Okay, AWOL.'"
"'Look for...' / 'Floor! KO!'"
"'Looks good. OK, ol['] sod, go.'"
"'Loper, pry properly!'"
"Loud 'Won't! Would not!'"
"'Loud lot!' / 'Too-dull old lout!'"
"'Low deal? We all do...ALLOWED!'"
"'Low key? Kyle? Ow!'"
"'Low law! Wow, all wallow.'"
"'Loyal, eh?' / 'LOL, yeah.'"
"'Loyal?' / 'Ya! LOL.'" []
"'Lunatic-in-a-cult!'"
"'Lymphoma? Hmm, a ploy.'"
"'Ma! Bob! Bo! Bam! A bomb!'"
"'Ma, I... am I MIA? I am. I'm a aim...'"
"'Mac Reed CREAMED Marc Dee!'"
"'Machete? Teach me!'"
"'Macking, G-Man? Ick!'" []
"'Macro-Carom, Marco!'"
"'Mad, eh?' / 'Me? Dah...'"[]
"'Mad pain PAID, man!'"
"'Main man! I am in...'"
"'Major. Jam or arm OJ?'"[]
"'Make em meek, Ma!'"
"'Make fun, me? A funk!'" []
"'Make sit ask time? Mistake. Stake [']im, Meatski.'" []
"'Make up? Puke, Ma!'"
"'Man down? [d-word-u], WON!'"
"'Man, it'd--[d-word] it!'" []
"'Man, Leo! Mo['] Lean? No, lame! A lemon!'" []
"'Man show, son! WHAM!'" []
"'Mangle [']em, Lang!'"
"'Mapless samples? Mess, pal.'" []
"'Marcus! A scrum! Um, scar!'"
"'Marty!' / '[dick-u]! Dirty Mack!'"
"'Me, a Dr.? Er, mad dream!'"
"'Me? No kit. I'm...token.'"
"'Me? Rash? Shamer!'" []
"'Mean rib? Brain [']em.'"
"'Mediocre ride, come!'" []
"'Mel, you bum! You mumble!'"
"'Men! Craig's screaming!'"
"'Men, I've...I'M EVEN!'"
"'Menaces can seem...men, a sec!'"
"'Mention men on it? Not mine!'"
"'Messer-up sprees? Um, mere puss presumes.'"
"'Might pun? THUMPING!'"
"'The Mighty hit the Gym.'"
"'Mikey! Ike! My, I'm key!'"
"'Mind if? ... ' / 'Find [']im!'"
"'Mind law, wild man!'" []
"'The mint then, Tim?'"
"'Mirth-hit, Mr.?'"
"'Mis-Enter? Termines!'"
"'Misarrange margarines?' / 'Mas angrier, sir manager?'"
"'Miscued! Die, scum!'"
"'Misquotation. ANTI-mosquito.'"
"'Mistrained? Administer mini-treads!'"
"'Miswrote? Wormiest...'"
"'Mo hid. DO HIM.' / 'D'oh! I'm...'"
"'Mo, slice! Lo, sic [']em!' / 'I'm close!'" []
"'Mocked? Dock [']em.'"
"'Mocks OK MCs? Sock'm!'"
"'A model do? Lame! Deal mo[']!'" []
"'Moist talk? Milk toast!'"
"'Molest Motels? Lost Me.'" []
"'Momento? Moot, men.'"
"'Money back may beckon?' / 'Maybe.' / CONK!"
"'Money men! Yo!'"
"'Monist Scum!' / 'Communists!'"
"'Mood-hike!' / 'I'm hooked!'"
"'More safe foe-smear: fearsome? Mere oafs!'"
"'Most dens don't MESS.'"
"'Most expect ... except Tom's.'"
"'Mother or meth, eh, Mort?'" []
"'Move on? Us? Venomous!'"
"'Mr. Defyin['] my friend? Fry [']im, Ned!'" []
"A Mrs. Case Screams 'A massacre!'" []
"'Much set, the scum.'"
"'My aunt, Nat...' / 'Yum!'"
"'My bid, mug! Big dummy!'"
"'My foot! T/y, mofo!'"
"'My fur! Fry [']um, [']Umfry!'"
"'My half. I flay him!'"
"'My head! Hey!' / 'Mad?'"
"'My, it's Aldo! Slimy toad!'"
"'My mud, dummy!'"
"'My plot? Ply Tom!'"
"'My raise?! Ya miser!'" []
"'My tyres!' / 'Yes, Mr. Ty?'"
"'My unit? Um, tiny mutiny.'"
"'My voice! Ivy, come!' / 'Yo, ME, Vic?'" []
"'Nab me? Man, be...' / 'Ban [']em!'"
"'Nachos, Sancho?' / 'No cash.' / 'Ach, son!'"[]
"'A nag, idiot. Do it again.'"
"'Nail KC? Lackin['] a Clink.'"
"'Named, Ed? Man. Amend.'" []
"'Narcs got scorn. TAG!'" []
"'Nate! Tena! A-ten! A net!' / 'Neat!'"
"'Nattiness? Ha! That's insane!'"
"'Neat wish. Hate wins!'"
"'Needy sot! Stoned, ey?' / 'Not seedy!'"
"'Nervous, Rev.? Us? No!'"
"'New man? Naw, MEN.'"
"'The news?' / 'She went west, hen.'"
"'Nice day. Any dice?'"
"'Nigel Elgin!' / 'Glen, I...'"
"'No bet, T-Bone!'"
"'No bums!' / 'Um, snob! Snub mo[']?'"
"'No buyers, nosy rube! Bury nose!'"
"'No cast to scan--so, can't!'" []
"'No, chumps! C'mon! Push!'"
"'No dice.' / 'Die, con!'"
"'No. Fate, fat one!'"
"'No GED, Ogden?' / 'Go, Ned.'"
"'No Geist?' / 'It's gone! Set! Go! In!'"
"'No grits, Ned? Grindstone!'" []
"'No, hit it, hon.'"[]
"'No Hype? Phoney!'"
"'No jobs, B. J.?' / 'Soon.'"
"'No math? A MONTH?! Hot, man!'" []
"'No party? Rap, Tony!'" []
"'No, pigs! Go spin!'" []
"'No police? Nice. Pool.'"
"'No shady hands, yo! Dash yon!'" []
"'No shake, oh sneak!'"
"'No she, son, eh?'" []
"'No soup?' / 'Up soon.'"
"'No toys? Yo, tons!'"
"'No wit to win?' / 'I won't..'"[]
"'Nobody nod. Yob.'"
"'Nod, Don!'"
"'The Noid. Doin['] the hit?' / 'Done.'" []
"'Non-biker? Broken in!'"
"'Non-guest? Note: guns!'"
"'Noose? O noes!'"
"'Nope, it's nite-ops.'"
"'Norm-o!' / 'Moron.' / 'Mr. ONO!'"
"'Nosy anus annoys us.'"
"'Not cool, tool! Con!'"
"'Note, Brent: rotten bet. Better not.'"
"'Now, hit! With no 'how' nit!' / 'Hi! Won't!'"
"'Now I'm mad, dim man!' / 'OW!'"
"'Now it won't, I own it!'" []
"'Now on?' / 'No, won!'"
"'Nursed, Ed runs. SUNDER.'"
"'O My God! G-Moody!'"
"'O, toast to a sot.'"
"'O, tons not so, snoot-o-snot!'" []
"'Oaf-guy!' / 'You ***!'"
"'Obey Dad!' ... 'Dead boy!'"
"'Obituary? I? You brat! I bray out!'"
"'Obscurity? Scrub it, yo!'"
"'Obtruncate Betancourt!'" []
"'Odd rat!' / 'Dotard!'"
"'Officer, if force...'"
"'Oh, [']twas so hot.' / 'So what?' / 'Was, tho[']!'"
"'Oh, bust us both? But sho[']...' / 'BS, thou!'"
"'Oh? Draw, Howard!' / 'D'oh! Raw!'" []
"'Oh, Gene?' / 'He gone!'"
"'Oh, Nat! Hat on?' / 'Ha, not!'"
"'Oh, Nick! Chokin[']?' / 'No, hick! HI!' / CONK."
"'Oh, oy, Matt! Too mathy!'"
"'Oh, SOB, hobos! O, bosh!'"
"'Oh, wow, who...? OW!'"
"'Ohh, get the hog!'"
"'Oi, spazz! So, pizza?'"
"'Oi, Ted's diet.' / 'So, does it?'"
"'Ok, it's up. Skip out.'"
"'OK, Loon. Look on!'"
"'Ok, no, turd. Too drunk.'" []
"'Ok, rig! Go, Rik!' / 'I grok.'"
"'OK, torch hot rock cohort K.'"
"'OK, won't know to tonk. OW!'"
"'Okay, we weak, yo!'"
"'Old bat!' / 'Bad lot!'"
"'The old dolt, eh? He told Ed Loth?'"
"'Old news! Slow, Ned!'" []
"'Old sicko!' / 'Loco kids!'" []
"'On bad credit? No debit card!'"
"'On board?' / 'BOO!' / 'Darn!'"
"'On, bud!' / 'Bound!'"[]
"'On edge, Don? Gee!'"
"'On home, men, oho!'"
"'On tap to nap? Not Pa!'" []
"'ONE fix?' / 'Fine, Ox.'"
"'One thug? Toughen!'"
"'Oo, chats? Cahoots?' / 'Shoo, cat!'"
"'Oof! Die, foodie!'"
"'Ooh, nuts. South on Houston...'"
"'Open wide.' / 'Dope wine!'"
"'Operas? Po['] ears!'"
"'Operate, rote ape.'"
"'Or LSD?' / 'Dr. Sol Lords.'"
"'Order, pig!' / 'Porridge!'"
"'An orgy, Yang? Or groany Ron? Any?'"
"'Ouch, man! On a chum?'" []
"'Our flat, Ralf. OUT!'"
"'Our visa! Saviour!'"
"'Out, flu! Yes! You left us!'"
"'Out, pig!' / 'I got up!'"
"'Out, Ray!' / 'You RAT!'"
"'Out, schmo! Chums too! So much to...'"
"'Out yon! ... Not you!'"
"'Overpays? Say, PROVE!'"
"'Ow, a gay! Go away!'"
"'Ow! Ain't...?' / 'Wait on it now, a...'"
"'Ow, my ears! Easy!' / 'Worm!'"
"'Ow, no, clod! Cool down!'"
"'Ow, rat! To WAR!'"
"'Ow, son!' / 'So? Now swoon on, sow!'"
"'Owners worsen, worsen, worsen.'"
"'Oww, Len! New low!'"
"'Oy, bond nobody? Boy, Don.'" []
"'Oy! Help us, you shlep!'"
"'Pa, shot? Pathos!'" []
"'Pack blade? Backpedal.'"
"'Pah! Cor! ... Oh, [crap].'"
"'Pain? A nip. I nap.'" []
"'The pain!' / 'Ha, inept!'"
"'Pained, Mo? Dopamine!' / '[d-word-u], Opie!'"
"'Pal, if I flap, flip a...'"
"'Pal, pause. Appeal us.' Applause."
"'Pal, use...seal up...' / 'A pulse!'" []
"'Pard, ye prayed?' / 'Yep.' / 'Rad.'"
"'Park out or kaput.'"
"'Pasture tear-ups? True sap.'" []
"'Pathetic, Cheap tit!'"
"'Paupers! A supper!' / 'Super, Pa!'[paragraph break]Pure sap."
"'Pay up, ya pup.' / 'Yup, Pa.'"
"'Peanut be beaten up!'"
"'Peanuts! Up antes!' ... 'An upset!'"
"'Pedal!' / 'Plead, pal!' / 'Ed...'"
"'Pee! Eep!'"
"'Peel out?' / 'Up to Lee.'"
"'Penknife? Keep, Finn!'"
"'The pens, Stephen.'"
"'Perry, a prayer?' / 'Err, PAY.'"
"'Pesos for spoofers of posers?'"
"'Petard? Depart!!!'"
"'Pheew, ace crime!' / 'Phwee, ice cream!'"
"'Phew, Lon! Help now?' / 'No, whelp!'"
"'Phil set the slip! He split!'"
"'A phone? Ah, nope! Ha, peon!' / 'Heap on!'"
"'Piss off, spiffos!'"
"'Pits, men! I'm spent!'"
"'A pity. Pay it!'"
"'Plaid? Al, dip da lip. Pal, I'd...'"
"'Plan four: a flop! Run!'"
"'The plan then, pal!' / 'Help! Nat!'"
"'Plan two? Wan plot. Won't, pal.'"
"'Plug the gut! Help!'"
"'Ply [']im, Limpy!'"
"'Po['] guy, I...' / 'You pig!'"
"'Poachy chap! Oy!'"
"'Pocket a take, cop?!'"
"'Pompous? So?' / 'Mop up.'"
"'Pond? Um, no, dump.'"
"'Poor baby!' / 'Pray, boob!'"
"'A potty? Pay, tot!'"
"'The pound? Nope!' / THUD."
"'Pound up Don!'" []
"'Pounding? Dunno, pig.'"
"'Pout? Sh!' / 'Uh, stop!'" []
"'Pre-locate. Percolate.'"
"'Prepare. Repaper!'"
"'A present! Spare ten!'"
"'Press it! Persist!'" []
"'Press out, spouters!'" []
"'A pretty trap, yet try peat.'"
"'A pro, or Pa?'"
"'Proceed, creep. Do!' Dope rec!"
"'Prodnose's sponsored Ed's pornos. So, respond, nerds!' / 'Oops.'"
"'Prove OK Provoke.'" []
"'Pry, lie, Ripley? I reply!'"
"'PSAs? Pass!'"
"'Puerile? Pure lie!'"
"'Pummel! Lump [']em!' / '[']Elp! Mum!'"
"'Pun? Gah! Hang up.'"
"'Punch mo[']?' / 'No!' / 'Chump.'"
"'Pup, war! Wrap up...'"
"'Purpose? Sure, pop!'"
"'Put me up, Met!' / 'Um, pet...'"
"'Quayle's squealy.'"
"'Question?' / 'Quiet, son!'"
"'Quit ale. Tequila!'"
"'Race bait? Bacteria!'"
"'Rad? Yer dreary, Dr. Ayer.'" []
"'Radials? Alas, rid.' / 'Sad liar!'"
"'The raid! Hide, Art! Hi, TREAD!'" []
"'Rashly? Har! Sly!'"
"'Ratty try at tarty!'"
"'Ray Best betrays by tears.'"[]
"'Ray, know any work?' A wry 'No, [']k?'"
"'Re-inspect? Prescient!'" []
"'Re-nab Abner.'" []
"'Re-toil, Mike! ... More like it!'"
"'Reaved, evader!'" []
"'Rebuilding? Bud, I linger.'"
"'Received, Deceiver!'"
"'Redhead Dedra, eh?'"
"'Refocus!' / 'Force us!'"
"'Regain her green hair? Eh, angrier.'"
"'Rent AWOL!' / 'Later?' / 'NOW!'"
"'Reshoot, soother!'" []
"'Respond, son!' / 'Derp!'" []
"'Reswallow, Wallowers!'"
"'Retracing? Cringe, rat!'" []
"'Retraction! Or recant it!'" []
"'Rewire them! Meriwether! Wertheimer!'"
"'Ribcage!' / 'Grab ice!' / 'A big rec!'"
"'Rid ONE dinero. Ride on or dine.'" []
"'Ride, Tim!' / 'I'm tired.' / 'Timider?'" []
"'Rip Me, Mr. Pie? I'm pre-prime!'"
"'Rise, [d-t]!' / 'So tired!'"[]
"'Risk two. It WORKS.'" []
"'Roam, bud!' / 'U mad, bro?'"
"'Rob!' / 'Bro!'"
"'Robber! ... Err, Bob?'"
"'The rod's shorted! Red hots!'" []
"'Rodent-bug got burned.'"
"'Rolling up?' / 'Groin pull!'"
"'Rory? Son?' / 'Sorry. No.'"
"'Rory won. No worry.'"
"'Rosy! Roy! Yo, sorry!'"
"'Rot, lad!' / 'Old Rat!'"
"'Rough [']em more! Ugh!'"
"'Rub salt? [']S Brutal.'"
"'Rude gag? Gad, urge a grudge.'"
"'Rude ol[']!' / 'LOUDER!'"
"'Rudy, babe! Buy bread!'"
"'Run. See. Ensure!'"
"'[']Ruptin['] turnip! Punt [']ir!'"
"'Russ, Peer Pressure?'"[]
"'Russo sours? Ur-SOS!'"
"'Rustbin! Burstin[']! It burns!'"
"'A rut, me? Mature.'"
"'Sad bit: it's bad.' / 'Bastid!'"
"'Sad brat!' / 'Bastard!'" []
"'Sad, Tony?' / 'Nosy, Tad! Yo, stand!'" []
"'Said for?' / '[']Fraid so!'"
"'Saloon's a loss? No.'" []
"'Salty sty, Al, Ty, Sal.'" []
"'Salute us late? U Least!'" []
"'Sam Glen mangles legs, man!'"
"'Same to you! Um, too easy.'"
"'Same woe? Awesome!'" []
"'Sarge...' / 'Balks? Break glass!'"
"'Saturnic? Curtains!'" []
"'Say, both shot by a soy bath.'"[]
"'Say, Dan, I said ANY...'"
"'Say, Dick! Sick day?'"
"'Say, Papa! Papayas!'"
"'Say, po['] soapy sap! Oy!'"
"'Scallies, Illescas!'"
"'Scar [']em!' / 'Scream!'"
"'Scenario Ace? No, Sir!'"
"'Schmo! Nut!' / 'Snot much?' / 'Tons, chum.'"
"'School is cool? Hiss!'"
"'Scoping pigs? Con!'"
"'Scrub curbs? BS!' / 'Cur!'"
"'Sean, my yes-man!'"[]
"'Secured, seducer. See?' / 'Crud.'" []
"'Seedy? Yes, Ed.'"
"'Seen, son? No sense!'"
"'Seitz! Zest!' / 'I...' / 'It's EZ!'" []
"'Set, Al? Les at least...'"
"'Set, Bud? ... BUSTED! Be dust!'" []
"'Sewage was, gee...'"
"'Shadowy days.' / 'How!'"
"'Shame, eh, Sam?' / 'Ma, he's...'"
"'Shamed! ... He's mad!'"
"'Shan't!' ... 'Hasn't!'"
"'Shatterer! Set?' / 'Rather.'"
"'Sheet these!'"
"'Shift, pro: Fishport, Shipfort.'"
"'Shoeless?' / 'Eh, less so.'"
"'Shoo, turd! Door: shut!'"
"'Shoo, ya yahoos! So, ahoy!'"
"'Shoot him? I...' / 'Shh. Moot.'"
"'Shoplift ops? Filth!'"
"'Shortcut? Shut court! ... OUCH!' / 'Trust!'"
"'Shot host? Tosh!'"
"'Shoulder-hold? Sure!'"
"'A shout at us? Ho!'"
"'Shout thous? O, shut!'" []
"'Show up! Push!' / 'Ow!'"
"'Show your face!' / 'Curfew, yahoos!'"
"'Shut down Dunst.' / 'How?'"
"'Shy? Out. Yo, thus: Shouty!'"
"'Si, don't...Don, it's not Sid!'"
"'Sick ask! Kick [a-word]!'"
"'Sick splat! Slapstick!'" []
"'Sigh. Clan clashing.'" []
"'Simon. Son, I'm...'"[]
"'A simp! Sap [']im!'" []
"'Sink it, Nik, it's...' / 'I stink.'"
"'Siphoned?' / 'Pish. Done.'"
"'Sir, Ban Brains!'"
"'Sir, to riots! O, stir.'"[]
"'Sis, cop a Picasso!'"
"'Sis did Sid's ID...'"
"'Sit, Len. Listen. Enlist.'"[]
"'Sit, or I sort...'"[]
"'Six A.M. Max is...'"
"'Skeevy Kev?' / 'Yes.'" []
"'Skiddoo, dodo-ski!'"
"'Slim, ply my pills!'"
"'Slotted old test. Let's do't.'"
"'Sly mob symbol, my slob!'" []
"'Smack it?' / 'Sit, Mack.'"
"'Smart cow.' / 'Cast, worm!'"
"'Smart to trot, Sam.' ... 'Toast, Mr.'"
"'SMH. Too smooth to mosh?'" []
"'Smit so? It's Mo's to miss.'"
"'Smoke some k.' / 'Me? S'ok.'"
"'A smoker? Er, OK, Sam.'"
"'Smooth Mo? Shot?'" []
"'Smother THOSE, Mr.'"[]
"'Snare it nastier!' / 'Neat, sir!'" []
"'Snob! To Boston!'"
"'Snoop? My! Spy no mo[']!'"
"'Snooty snot! Yo!'" []
"'Snuck it in...STUCK!'"
"'So, a Mr. or a Ms. Ramos?'" [p]
"'So, at the hot seat? He TOAST!'" []
"'So, bilge! Ol['] gibes?'"
"'So, dog...goods?' / 'O gods!' / 'Go, sod!'"
"'So go rec Scrooge!'"
"'So, Hack. Cash OK?' / 'A shock!'"
"'So, Kent. Tokens sent OK to Ken's?'"
"'So, man, Mason moans No Mas.'" []
"'So, Mike, I smoke em. Is ok?'"
"'So! Neat! Eat, son.' / 'No seat.'" []
"'So nervy?' / 'Very, son.'"
"'So, pal. Opal's ol['] sap?'"
"'So pay us. You pass? Yo['] [a-word] UP!'" []
"'So, pigs! Gossip?'"
"'So, prank?' / 'No spark.' / 'Rank sop.'"
"'So, rant on, rats!'" []
"'So, Ronny or Sonny?' / 'No, Ryno's.'"
"'So shy, yo!' / 'Ssh!'"
"'So, son. No SOS?'"
"'So, then, Shonte Heston, the son: he's not honest? Eh, tons.'"
"'So thin! / No!'"
"'So, um, buy? YOU BUMS!'"
"'So, um, us mo[']?'"
"'So urgent, nurse. Got...'" []
"'So Witty Twits. Oy!'"
"'So yeah, Yo, he's a...'"
"'Soaking? Go in, ask...'"
"'Socked him? I'm shocked.'"
"'Solid ol['] Sid is Old.'" []
"'Solver Les...oversells.'"
"Someone well to do makes a capable cab plea." [p]
"'Sordid dis, Rod!'" []
"'Sorest tosser!' No, you haven't moved behind Store S."
"'Sort of soft or...[']s troof!'"
"'Soup's up!' / 'SOS!'"
"'Speakins? Spankies!'"
"'St. Mary, smarty? Try Sam!'" []
"'Stampede!' / 'Pasted [']em!'"
"'Staree! Teaser!'" []
"'Stat, locals! At all costs! Call toasts!'"
"'Stay! Lou lays out you last.'" []
"'Stay put, taut spy.' / 'Yup. Stat.'"
"'Stealin['] entails elan. It's...salient.'"
"'Stealing? Let's gain!!'"[]
"'Step, son! No pests!'"
"'Stink up...? Punk, SIT!'" []
"'Stipend? Tens? Dip, spend it!'"
"'Stop trying, prying tots!'"
"'Street Smarts Matter. STRESS.'"
"'Stride? It's red, driest. I'd rest.'" []
"'Strongarm Armstrong!' someone cries in fear."
"'Stu! Deb! BUSTED!'"
"'Stu, I'm...I must...it's, um, stimu...'" []
"'Sty, men? My nest!'"
"'Su! Cyril! Luis! Cry cursily! Curly is I, sly cur!'"
"'A sub?' / 'Nope, bean soup.'"
"'Sublime lies, bum!'" []
"'Suck bad, tot? Back to dust!'"
"'Suck not! Conk Stu!'"
"'Suckered? Crud. Seek User Deck.'"
"'Sum it.' / 'Must I? It's, um...'"[]
"'Sump'm?' / 'Mumps.'"
"'Sundering. Undersign?'"
"'[']Sup, Gina?' / 'Pausing.'" []
"'[']Sup, Reg?' / 'Purges.'"
"'Suppose Pop sues?' / 'Posse up.'"
"'Sure, mooch. Hour's come, our schmoe!'"
"'Sure, only rely on us!'"
"'Survive? Viv? Sure!'"
"'A suspect, me? Must escape!'"
"'Swarthiest sweatshirt!'"
"'Swat the hat, Stew!' / 'That, Wes?' / 'Eh, [t-w]s!'"
"'Swatter Stewart! We start!'"
"'Swindles? WILDNESS!'"
"'Take-down KO wanted. Don't...weak!'"
"'Tampers? Stamp [']er!'" []
"'Tan him, hitman!'"
"'Tara! A rat!'"
"'Tarantino? Tarnation!'"
"'Tasered, dearest? ... Sedater?'"
"'Task, Don?' / 'Don't ask, dank sot!'"
"'Ted! NO!' / 'Noted, Donte.'"[]
"'Tell it, Little...'"
"'Ten oafs. Not safe.'" []
"'Tend oven? Don't even...'"
"'Tenderiser reinserted!'"
"'Terry, if...' / 'Try fire! Terrify!'" []
"'Tex, narc next car! Rex can't...'"
"'That Ken. The tank!'"
"'That's Fink. Think Fast!'"
"'Them's set. Hm?'"
"'Then Lug the Lung, Glen. HUT!'"
"'Then mob BOTH men!'"
"'Theobald! Hold! Beat!'" []
"'There, Al! The real heel! Rat!'"[]
"'They amp empathy. Pay them.' / 'Empty.' / 'HA!'"
"'They ARE teary, eh?'" []
"'They mad! My death!'"
"'They won? Note why. Won't, hey?'"
"'Thinkers!' / 'Shtinker!'"
"'Thirties? [s-w]tier.'"
"'This hoser, he is short.' / 'Horse!'"
"'Thump Ed!  Dump the...' / 'Umph, Ted!'" []
"'Thumpin[']! Hunt imp!' / 'Punt him!'"
"'Tiger, a triage!' / 'Great, I...'" []
"'Til this hit list tilts... HI!'"
"'Tim, Hi. Hit [']im!'"
"'Tim, if I'm fit...'"
"'Tim! Sly!' / 'Ty! Slim!'"
"'Tim?' / 'No, I'm not in, Tom.'"
"'Time card? I'm traced!'"
"'The time. TIE THEM.'"
"'Time to go. Get [']im too!'"
"A timid 'I admit...'"
"'Tino! Toni!' / 'On it!'" []
"'Tintin, innitt?'"
"'Tix? If...' / 'Fix it!'"
"'To choke the cook, too? Heck!'"
"'To dial a dolt? I...' / 'Do it, Al!'"
"'To it, Tito!'"
"'To jibe, con? Objection!'" []
"'To legs! Let's go!'" []
"'To supply lusty opp? Spotty Lu!'"
"'To unify? Aw, if you want...'"
"'To verify verity of tyro five, I VOTE: FRY.'"
"'To wharf of wrath! Raft!' / 'How? What for?'" []
"'To yank Katy? No.'"
"'Tod, I...' / 'DO IT!'"
"'Told new, Del won't let down.'"
"'Told on? Not old Dolton!'"
"'Toledo! Looted!'"
"'Tolls? Aw, law lost!'"
"'Tom, coyness costs money!'"
"'Tom, night might not...'"
"'Tom's con men? No comments.'"
"'Tone it down!' / 'Ow! Intend to!'"
"'Tony! Me! T-Money!'" []
"'Too cold, old coot?'"
"'Too sick? OK? Stoic?'"
"'Toss Clark? Cross talk!'"
"'Touch mo[']?' / 'Ouch, Tom! Too much!'"
"'Tough hit, I thought.'"
"'Tow trucks struck two!'"
"'Traced, son? Not scared? Narcs DOTE!'"
"'Traitors!' / 'Rat Trios!'" []
"'Tramp, neat apartment!'"
"'Treasonous reasons! Out!'"
"'Treasurer! Serrature!'"
"'Treaty yet, Art?'"
"'A trophy, Roy? Phat!'" []
"'A trump-up mart? Um, trap!'"
"'Try, cram my cart! Try, mac!'"
"'Turn on Ron? Nut!'" []
"'A twitch? Aw, titch, watch it! Act with...'"
"'Ty? No. Tony.'"
"'Ty went. Twenty.'"
"'Typhoid? D'oh! Pity.'"
"'U lost, louts?'" []
"'Ugh, bum!' / 'Humbug!'"
"'Ugh, cat. Caught?'"
"'Ugh, neat heat gun.'"
"'Ugh, Tom's mug shot! Hot? SMUG!'" []
"'Uh, Geno? One hug?' / 'Enough! Huge no.'" []
"'Uh, glory?' / 'Roughly.'"
"'Uh, go, Hugo.'"
"'Uh, got to hug.' / 'Hut! Go!'"
"'Uh, hun? Nuh-uh!'"
"'Uh, I be Hubie.'"
"'Uhh, Og? Hough!' / 'Huh?' / 'Go!' / 'Oh, GUH!'"
"'Um, a rad maraud?'"
"'Um, a rat! Trauma!'" []
"'Um, die!' / 'I'm due.'"
"'Um, escorts! Customers must score!'"
"'Um, gots mo['] guts? Must go to mugs.'"
"'Um, Greg -- mugger!'"
"'Um, JP?' / ' Um, PJ?' / 'JUMP!'"
"'Um, near manure? Rue, man!'"
"'Um, Pop?' / 'Mop up!'"
"'Um, Sal Mauls a slum!'" []
"'Um, then hunt [']em!'"
"'Um, Yo, Mr., so your mom's...'"
"'Umkay?' / 'Yuk, Ma.'"
"'Un-gored? Guerdon!'"
"'Un-tired? Intrude! Under it!'" []
"'Uncle! Pa! Clean up!'" []
"'Unheroic? Nice Hour!'" []
"'Unwell, sot? Tell us now!' / 'Two sullen...'"
"'Up ahead...aha, dupe!'"
"'Up, cat! Act up!'"
"'Up my...I...Ow!' / 'You wimp!'"
"'Up, Ron! Pruno!' / 'Urp...no!'"
"'Up this. PUSH IT!'"
"'Up to...? Pout, po['] opt-out!'"
"'Upset, Leo? Sleep out, else pout.'"
"'Uresis issuer!'"
"'Veerin[']? Ren, I've--I never...'"
"'Video US? Devious!'" []
"'Vie, [d-t]?' / 'I'd vote to dive.'"
"'Vie, Jon. No jive!'"
"'The vigor: hog it, Erv! Go, thrive!'"
"'Virus, Irv? Us?'"
"'The Vise! Thieves!'"
"'Vital, eh? Halve it.'"
"'Vocation, vain coot?'"
"'Vodka is OK, Davis.'"
"'Voyeur, Rev? YOU?'"
"'Wackos? Sack!' / 'Ow!'"
"'A wag, yo? Go away!'" []
"'Wait-shy? This way.'" []
"'Wait up! Aw, I put...'"
"'Wake [']im!' / 'Aw, Mike, I'm weak.'"
"'Wake up!' / 'Aw puke.'"
"'Walk? Run, raw lunk!'"
"'Want him, Whitman?' / 'Hm, naw, it...'" []
"'Wanted? Ted? Naw.'"
"'Was Ed Dawes sawed?' / 'Aw, DES!'"
"'Wash it.' / 'Aw, this?'"
"'Wastrel!' / 'Lawster!'" []
"'Water rat! Ew!'" []
"'Wayne's?' / 'Naw.' / 'Yes.'" []
"'We could duel, COW!'"
"'We hit white.' / 'Hew it.'" []
"'We on?' / 'Ew, NO!'"
"'We're in, Weiner!'"
"'Wed too? Woot, Ed!'"
"'Weep? OK, we poke.' / POW! / 'Eek!'"
"'Well, Gus? Slug Lew!' / 'Ug...' / 'Swell!'"
"'What a hat, aw!'"
"'What do I...? Ow! Had it!'" []
"'Whee! Eh? Ew!'"
"'Whine when I win, eh?'"
"'Who died? Oh, DID we?'"
"'Who said I shadow?!'"
"'Why is?' / 'Why as wishy washy?'"
"'Why not I?' / 'How, Tiny?'"
"'Wicked, Ed! ...Dickweed.'"
"'Widow? Wow, I'd--I'd--oww!'"
"'Widowed? Died? Wow!'"
"'A wimp? I wap [']m.'"
"'Wink, nod. I'd known...' / 'Down, Nik!'"
"'Wire the...' / 'We're hit!'"
"'Wise? Sap? [a-word-u]wipe!'"
"'Wish me luck!' / 'Hick, we slum.'"
"'With-it twit, hi!'"
"'Woe is Wes, oi!'"
"'Women! Me! Now!'" []
"'Won't be bent...OW!'"
"'Won't dis Don's wit? Sit DOWN!'" []
"'Woofing, goof? WIN.'"
"'Woot! Sol Woo Lost! Too slow!'"
"'A word, con--no, COWARD!'"
"'Work is risk. Ow!'"
"'Worm, Mr.!' / 'Ow!'"
"'Worthy, pal? How paltry!'"
"'Wot, two? Wow, tot!'"
"'Wounded NOW, dude?'"
"'Wow, Andy! Way down!' / 'Yow, Dawn!'"
"'WOW!' / 'Ken, we know.'"
"'Wrist OK?' / 'It works.'" []
"'Wuss by a Subway's: Saw--By Us!'"
"'Y'have? Heavy!'"
"'Ya, Ken's Sneaky.'"
"'Ya new, Wayne?' / 'Ey, naw.'"
"'Yah, flaw? Haw! Flay halfway!'" []
"'Yahoo, big boy! Ah, I go!'"
"'Yay! Dam[']. Mayday.'"
"'Yea, hi, out! I hate you!'"
"'Yeah, so easy. Oh.'"[]
"'Yee-haw, we...yeah!'"
"'Yep, do...' / 'Dopey!'"
"'Yer top poetry?! Er, typo.' / 'Yep. Rot. Try Poe.'" []
"'Yip, man!' / 'My pain!'"
"'YO [a-word] say so?'"
"'Yo, a plot, ol['] pay to play lot!'"
"'Yo, Ann! Annoy any?' / 'NO!'"
"'Yo, bad day, Bo!' / 'Dad, ya booby!'" []
"'Yo, Beth, Bo, they...boy, the...'" []
"'Yo, Bond! ... Nobody?'" []
"'Yo, dawg!' / 'Gad! Yow!'"
"'Yo, dog, be...' / 'Goodbye!'" []
"'Yo, dumb mud boy!'"
"'Yo, fawners! News for ya!'"
"'Yo, help!' / 'Eh, ploy!'"
"'Yo, Ken! No key!'"
"'Yo, louse! You lose!'"
"'Yo, man. May...' / 'NO!'" []
"'Yo, Nell? Lonely?' / 'NO, Lyle!'"
"'Yo! Seen one?' / 'Yes! Eyes on...'"
"'Yo, SOB!' / 'Me?' / 'Yes!' / BOOM!" []
"'Yo, tend, lad. Don't delay.'"
"'Yo Trish, Horty is history! Shorty, I...'" []
"'Yo, unwise, you swine.'"
"'Yo! VIPS!' / 'Oy! Spiv!'"
"'Yon posh phony, so...' / 'Sh, no, spy!'"
"'You can't count, ya?'" []
"'You chumps copy us, hum?'"
"'You first.' / 'So fruity.'"
"'You late lout, yea.'"
"'You past autopsy payouts?'"[]
"'You rich or, uh, icy?'"
"'You sign in, Gus! Yo!'" []
"'You snake!' / 'OK, uneasy.'"
"'You yap, you pay.'"
"'You'd like the USSR, Russ.' / 'U SRS?'"
"'You're feminine! You're mine!' / 'Fine!'"
"'Young guy, no!' / 'Young gun, yo!'"
"'Your name? Yo, manure!'"
"'Yow! Uno! You won!'"
"'Yr apt. party? Rap, Ty! Pry at Pa, try!'" [p]
"'Yum, gonna' / 'YOUNG MAN!'"
"'Yum!' / 'Dino, you mind?'" []
"'Zero hour! Err, uh, zoo!'" []

table of non-checklists [xxv5]
blurb
"Achiever E-Archive"
"AllRite Literal Tallier" []
"Backlogs-Sack Blog"
"Can-Slog Scan-Log"
"Classiest List-Cases"
"Clients-Stencil"
"Cues-for-Refocus" []
"Cures-Held Scheduler"
"Delegating/Get-Dealing Gadget Line"
"A Desk, Asked" []
"Desk-Sked"
"Dire SOS Dossier" []
"Doings-Dosing" []
"Done-Logs So Golden"
"Force-Us Focuser" []
"Freeing-Up Figure-Pen"
"Global Lab Log"
"Golden-End Log" []
"Gordo's Org-Dos"
"Greensdale's Sane Ledgers"
"Hassler-Slasher" []
"I-Plan-Plain"
"I-Segment-Meetings"
"Idea-Aide"
"Im-My-Desk Mind-Keys"
"Let's-Go-On Notes Log"
"List of Filt-So-if-Lost"
"Log-Em Golem"
"Mr. Note-Mentor" []
"Need-To-Denote"
"Nest-o-Notes" []
"Not-Broke Rent-Book"
"Optimal-Toil Map"
"Org-This-So-Right" []
"Record-the-Order Tech"
"Remind-Minder" []
"Rise-Sod Dossier"
"Roster Sorter"
"Slog-Logs"
"Stolid Do-List"
"Strat-Start"
"Streamline-Meaner List" []
"Sup-R-Spur"
"Toil-Proof Portfolio"
"WeSparkCo Workspace"
"Win-Lots-Now List"
"Zero-Ragin['] Organizer"

table of posh dialogue [xxv6]
blurb
"'[d-t]? A Toad!'"
"'[d-word-u] shy, hm, Sandy?'" []
"'[if player is female]Gwennie, win Gene[else]Gene, win Gwennie[end if]!'"
"'Aaron, say...' / 'Sayonara!'"
"'Abrasive vibe, Sara!'"
"'Abstain, Bastian!'"
"'Ace, note [n-t] Coe once ate acetone.'"
"'Ach, Mrs. Schram!'" []
"'Ack! Bend!' / 'Bad neck, Ned?' / 'Back.'"
"'Ack, Ty! Tacky!'"
"'Act! Ski!' / 'I stack a stick...'"
"'Ad buy, Dubya?' / 'Ya, bud.'"
"'Ad hoc, cad? Ho!'"
"'Ad hoc? Oh, CAD.'"
"'Ad-hymn, Andy? HM. Hand my...'"
"'Add Cris?' / 'Discard.'"
"'Add one ad.' / 'Done.' / 'Dead on!'" []
"'Addison, no. Dad is odd.' / 'A sin!'" []
"'Adhere, dear, eh?'"
"'Adjustor! A rod juts!'"
"'Adorable lad? A bore!'"
"'Adults, Lad Stu.'" []
"'Aggi, a gig? I gag, GIGA!'"
"'Ah, a cute chateau!'"
"'Ah, Bud, da hub? Uh, bad.'"
"'Ah, dumb, or bad humor?'" []
"'Ah, got a goth to ... gah!'"
"'Ah, Gus, uh...gas?'"
"'Ah, hi, Ms. Hamish!'"
"'Ah, howdy, Haywood!' / 'Why, Adoo!'"
"'Ah, Lord Harold!'" []
"'Ah, Marc! A charm cam! Har!'"
"'Ah! Nom! ... No ham? Oh, man!'" []
"'Ah, Peters. Spare the rap sheet!'"
"'Ah, Red! Heard her ad, eh?' / 'Har-de-har, Ed!'"
"'Ah, seen Sheena, Aneesh?' / 'Eh, Sean?'" []
"'Ah, Sim! Is Ham Amish?' / 'His Ma.'" []
"'Ah, son. Shona has no...' / 'So?' / 'Nah.'"
"'Ah, Stew. [']Twas he was the...'"
"'Ah, there, Heather.'" []
"'Ah, tuxes! Taxes, uh, exhaust.'"[]
"'Ah. Very, Harvey.'" []
"'Ah, Wyatt, why a tat THAT way?'"
"'Ahem, Sis. Shem is a messiah!'" []
"'Ahh, Ann? Hannah?' / 'Nah.' / 'Nah.'"
"'Ahh, rest-hearths!'"
"'Ahh, Ross. So harsh!'"
"'Ail, eh? Lie! Ha!' / 'I...heal.'"
"'Ain't Mr. Martin trim?' / 'Na.'"
"'Air hockey? Oh yea, Rick!'" []
"'Alfy, flay a fly.'"
"'All, rig a grill!' / 'Ill! Arg!'"
"'All right, Garth?' / 'Ill.'" []
"'Ally me lamely?' / 'Yell, mama, yell!'"
"'Alone, bud? Undoable.'"
"'Alpha, pal? Ha!'" []
"'Am so, Amos!'" []
"'Ami in a mini! Man, I... I...!'"
"'Amy, be my...' / '[a-b], maybe.'"
"'Amy, be...' / 'Maybe, Ma. Bye!'" []
"'Analysis?' / 'Assay nil, Lina says.'"
"'Andrew?' / 'Er, Dawn?'"[]
"'Ann, buy a bunny!'" []
"'Anti-police caption? Lie!'"
"'Any itch, Cynthia?' / 'Yachtin[']!'"
"'Any more ramen, yo?' / 'Yea, Norm!'"
"'Anyhow...' / 'Oh, YAWN!'"
"'April fool? Poor flail! Frail loop!'"
"'Art, pigs! Grasp it!'"
"'Artist or Traitors?'"[]
"'As giver, Vi Sager-Gervais is grave.'" []
"'As if EVERY five years...'"
"'As to how? Aw, shoot.'"
"'Ask, LOL.' / 'All's OK?'"
"'Ask.' / 'Is a kiss, Kassi...?'"
"'Askew, we ask...' / '[']S weak!'"
"'Asti is at Tia's.'"
"'At prick Patrick? Ick! Trap!'" []
"'Autonomy, Ma!' / 'Not you!'"
"'Aw, Fern!' / 'Fawner.'"
"'Aw, may I?' / 'I'm away.'"
"'Ay, Doug's so gaudy.'"
"'Ay, Sid. I'd say Daisy Day is.'" []
"'Ay, that's tasty! Ah!'"
"'Bad Leon!' / 'Bald one, old bean!' ... 'A blonde! Lean bod!'" []
"'Bad tie!' / 'I'd beat...' / 'BAITED!'" []
"'Bah, dang handbag!'"
"'Bah, mite! Beat him!'"
"'Ban [d-t]? Not bad!'" []
"'The bar, eh, brat? BREATH!'" []
"'Bay home?' / 'Oh, maybe! Ahem! Boy!'"
"'Bay oft, Fat boy!'" []
"'Be Greeks! Beer kegs!'"
"'Be WHAT? Bath? Ew!' / 'Aw, Beth!'"
"'The beach, eh?' / 'Betcha!'"
"'Beaten? Be neat! Be a TEN!'"
"'Beauty's easy, but...'"
"'A beer snob? Bare bones!'"
"'Beg tent, get bent.'"
"'Beggin[']? Biggen? N/G gibe!'"
"'Behave, Eve!' / 'Bah!'"
"'Bend to debt? No, don't be bent. Do...'" []
"'Berthe et Herb Hebert.' / 'Eh, Bret?'"
"'Best not bet TONS.'" []
"'Beth, he's the best.' / 'BS teeth.'"
"'Beth is best. ...Hi! ...She bit!'"
"'Bid ten?' / 'In debt, Ed.' / 'Bint.'"
"'Bide? I...' / 'Bed, Debi!'"
"'Biff, BFF?' / 'I...'"
"'Big-[a-word] bag, Sis!'"
"'Big fish? Sigh. Fib.'"
"'The bin Hi bent hit Ben!' / 'Eh, bint.'" []
"'A bin? I ban!'"
"'Bird goo! Big odor! Grodi, Bo!'"
"'Bloat, ol['] bat!'"
"'Blockade? Cad-bloke!'"
"'Bloopers? Bore-slop!'"
"'Blown off, BFF? No! Low!'"
"'Blue Lava? Valuable.'"
"A blurt: 'Brutal!'"
"'Boat went. Won't be at...'"
"'Bob, I...' / 'Time to imbibe!'"
"'Bonfire? / Fine, bro!'" []
"'Boot my TOM? Boy!'"
"'Boots? My. Tomboys!'"
"'Bore, lad? Deal, bro.'" []
"'Boredom KILLS bedroom skill.'"
"'Borin['] art! Brain rot!'"
"'Bossin['] snob is bossin[']!'"
"'Botany? Me? Maybe not!'" []
"'Botched bod, Chet!'"[]
"'Bother to, Herb? Or Beth? Bert? Oh, bother.'" []
"'Bovine vibe? No!'"
"'Boy, just jot...' / 'BUSY!'"
"'Brag on, bro! Nag! No, grab!'"
"'Breeze? Beezer!'"
"'Bri, how hi-brow!'"
"'Bribe to be IT, bro!'"
"'Bro, I'll rib, LOL.'"
"'Bro! Pa! A prob!'"
"'Bro! Sad broads.'"[]
"'Bro, try us!' / 'Sorry, but...'"
"'A brony barn, yo!'"
"'Bub's rec is... subscribe, scrubbies!'"
"'Bub's torn. Stubborn.'"
"'Bucky's BS...yuck!'"
"'Bud Lowe WOULD be due blow.'"
"'Bud's hole should be blue-shod. Bold hues!'"
"'Budgets, Gus? DEBT?!'"
"'Bug me? Um, BEG!'"
"'Buried ire, bud?' / 'Rube, I'd...'"
"'But egad! A budget?'"
"'But I'M it, bum!'"
"'But Ron...' / 'No, Burt!'"
"'The butt? Tut, Beth.'"
"'Buy tea, beauty?' / 'Yea...but...'"
"'By the way, why a byte? Thy way be...'"
"'BYOB's BS. Boy!'"
"'Camp out? Pout, mac. Um, po['] cat.'"
"'Can Ed Dance? Ed Can Dance!'"
"'Can fit? Can't if in fact...F! Can it, Fat Nic?'"
"'Can we do anew, Doc?' / 'Down, Ace.'"
"'Can't I pee?' / 'Patience!' / 'Neat epic.'" []
"'Can't Sue enact us?' / 'Nutcase.'" []
"'Cancerous Accuser! No!'"
"'Cap, hit a pitch at Chip!'" []
"'Caption? Not a pic.'" []
"'Card [']em, Mr. Cade?' / 'Mad rec.'"
"'Cashmere? A schemer!'"
"Cat-like ice-talk." [p]
"'Cats, I sac it...' / 'Staci!'"
"'Ceci! Elli! Lice! LICE!'"
"'Chad? Eeh, a headache.'"
"'Charitable? A real...'" [x]
"'Charity? Ach, I try!'"
"'Chaste, eh? Scat!'" []
"'Chat Chez Chaz, Chet!'"
"'Chavs, Chas?' / 'V.'"
"'Chaz!' / 'Zach!'"
"'Cheat, use the sauce!' / 'He's acute.'" []
"'Cheese sechee? [']S... eeech.'"
"'Chemistry? Cristy? Meh.'" []
"'Cherries, sir! Cheer!'" []
"'Chip, a chap I cap. Hi!'"
"'Chip Ross? His corp's rich sops.'"
"'A cigar, Garcia?'"
"'Cigar? None? Ignorance!'"
"'Cigar, pet?' / 'Tip, Grace: price tag!'"
"'Clams? Po['] slop, Mac!' / 'Ol['] scamp!' Mo['] claps."
"'Class! Now!' / '[a-word-u]-clown.'"
"'Claudine's uncle said dunces ail.'"
"'Clean lunch? Null chance!'"
"'Clearly. Call yer cell, Ray.'" []
"'Clever rec, Lev!'"
"'A client! Can I let...?' / 'Clean it.'"
"'Clive's OK. Love sick.'"
"'Co-harp, chap, or... oh [crap]!'" []
"'Co-pay cap? Oy!'" []
"'Cocaine?' / 'Once.' / 'CIA!'"
"'Collatin[']? LOL, I can't!'" []
"'Communist scum! / I'm not!'"
"'Confide, Doc? Fine!'"
"'A connect on accent, once?' / 'Can't!'"
"'Connie's nice, son!' / 'Connie? Nice? NO!'"
"'Consigned.' / 'Seconding.'"
"'Contrary! Rory can't!'" []
"'Cookin['], eh? No...I choke.'"
"'Cordial? Acrid ol['] liar, Doc!'" []
"'Cork wine? Ew, no, Rick! Nice work!'" []
"Coy howl. 'Cool! Why? Holy cow!'"
"'Coy is so ICY!'"
"'A cramp, ma! [crap-u]!'"
"'A cruise is a cure!'" []
"'Cruise? Meh, music here.'"
"'Cure less recluses.'"
"'Cut-rate care? Tut!'"
"'Cutie...' / 'No, I cut one!'"
"'A cyst! Calm?! CATACLYSM!'"
"'D'oh, it's hot, Sid!' / 'Do this.'" []
"'Dad, go on--and GOOD!'"
"'Dainty? Me? Dynamite!'" []
"'Dan set ten ads at ends. Dane St.'"
"'Dan's pro-pardons? Darn sop!'" []
"'Dance tip?' / 'Pedantic, inept cad!'"
"'Dang bold gold band.'"
"'Darling lad! Grin!'" []
"'Darn, Mo! Random!'" []
"'Darn, Ty. Try, Dan!'"
"'Date Beth? Bad teeth.'" []
"'Date HIM? Eh, admit I'm hated.'"
"'Davide? / Dad, I've...'"
"'DAZZZling, Glinda!' ... zzz..."
"'Deal, git. Get laid.'"[]
"'The deal is healed. SIT.'"
"'Death, eh, Tad?' / 'Ah, Ted. Hated!'" []
"'Debark? Erk, bad!'"
"'Debts? Ay, stay. Bed.'"
"'Debunk Ken, Bud.'"
"'Define feedin[']? Fie, Ned!'"
"'Deft intro, tot-friend. I don't fret.'"
"'Defy lax flex day? Axed! Fly!'"
"'Del Chou? Could he? Clued?' / 'Oh, duh, Cleo!'"
"'Demos? Sod [']em!'"
"'Density? Snide, Ty.'" []
"'Dentistries?' / 'Disinterest.'"
"'Detail it, Dale.'"[]
"'Details? A list, Ed.'"[]
"'Dever's served!'"
"'Dex, to detox!'"
"'Di! Sam! Maids! I'm sad.'" []
"'Diamond? I do, [d-word]!'" []
"'Dick eats dates? Ick!'"
"'Dignity's dying. It's...'"
"'Dirt po[']? Drop it!'" []
"'Dis den? I'd send Eddins.'"
"'Discharge riches? Gad!'" []
"'Dish, Art.' / 'It's hard. I'd trash this rad ad shirt...'"
"'Disorg? [']S GRODI!'" []
"'Dissent ends. Sit.'"
"'Ditch day? Tidy, Chad!'"
"'Ditched? DID Chet?'"
"'Dive in, Vi! Dine!' / 'Divine!'"
"'Diversion so diviner: son, I drive.'"
"'Do as a sod? A dodo! [a-word-u]!'" []
"'Do no harm? Oh, random! ...Darn homo.'" []
"'Do nothing? Ninth? Good!'"
"'Do plan, pal.' / 'Nod.'"
"'Do pose so dope? Oops, Ed.'"
"'Do what, Tad? How?'"
"'Do'n it? I don't. Not Di.'"
"'Dog, want Dawn?' / 'Got.'"
"'Dogged, odd egg.'"
"'Doin['] em?' / 'I'm done.' / 'Do mine, dim one!' / 'No, Ed, I'm...'" []
"'Dold pies? Lopsided old piles.'"
"'Dollar store? Adore, trolls! Stellar odor!'"
"'Don, do no odd.'"
"'Don, wash and show hands.' / 'Ow!'" []
"'Don't dawdle.' / 'Let down, Dad?'"
"'Don't even vent.' / 'Done.'" []
"'Don't need to.' / 'Noted! Noted!'"
"'Douches? Us? Chode!'"
"'Dour imp!' / 'I'm proud.'"
"'Dowdiness disendows!'"
"'Down as now-sad Dawson? Wan sod.'"
"'Down to two, Don? Ow, don't!'" []
"'Dr. Lidle drilled!'"
"'Draheim's, semi-hard? Mis-heard!'" []
"'Drew, no wonder Ron wed...'" []
"'Drew, son. Rod's new.' / 'Nerds!' / 'Ow!'" []
"'The drip's derps-hit!'"
"'Drop in? No, drip!'" []
"Dry moan. 'Roy! [d-word-u]!' / 'Raymond!'" []
"'DSL Late? Stalled.'"
"'DudeCorp produced DOPE crud!'"
"'Dudgeists! Disgusted!'"
"'A dumpy pad, yum!' / 'Mad?' / 'Yup.'"
"'DVD A is David's.'"
"'Easier arisee? Revile le reveille!'"
"'Eat liver? Relative trial, Eve.'"
"'Eco-nuts? Contuse!'"
"'Eco-raid? Ciao, Red! ... I [i]do[r] care!'"
"'Ed, Marty! Dry meat made...try?'"
"'Ed now owned? No, wed.'" []
"'Ed Panda aped Dan Deadpan!'"
"'Ed spoons dope, sons.'"
"'Ed's men? Send [']em!'"
"'Edi's Side Dies!'"
"'Eelgrass, Graessle? Largesse!'" []
"'E.g. chart the crag? Arg, Chet!'"
"'Egad, sleet, delegates! East ledge!'"
"'Eglantine? Inelegant!'"
"'Ego, Geo!'"
"'Egos, ay.' / 'Yo, sage, go easy!'"
"'Eh, Ms. Mesh-Mehs?'"
"'Eh, nattier, Henrietta. A thirteen!'" []
"'Eh, no, li'l hellion.'" []
"'Eh, note the one.'"
"'Eh, Pa? Hep?' / 'A heap!'"
"'Eh? Say? Ah yes, Hayes! Ay, she...'"
"'Eh, Scott! To techs!'" []
"'Eh, Shar Has Her Rehash!'" []
"'Eh, She's...sheesh.'"
"'Eh, shill. Hellish!'"
"'Eh, tents, THEN set the nets.'"
"'Eli, an alien!'" []
"'Elite? Brr. Terrible.'" []
"'Elite? Egad, I delegate detail. Gee.'"
"'Elton let on to Len...'"
"'Email [']im, Lea! Go Chat!' / 'Gotcha!'"
"'Email me, Ali!'"
"'Emerge, Meg, ere...' / 'Erm, gee...'"
"'Emil's SLIME!'" []
"'Enact this.' / 'That's nice.'" []
"'Encore, Corene!'"
"'Epithets tip sheet? The spite!'"
"'Er, host? Ed's hot to shed the sod.'"
"'Er, is Ma a miser? I'm ears!' / 'Smear? I?'" []
"'Er, Tony? Try one!'" []
"'Er, wit? Write!'"
"'Er...hi! Her, I HIRE!'"
"'Erm, say, Ramsey, MY EARS!'" []
"'Ern! Ren! Nee-nrr!'"
"'Err, go, Roger!'" []
"'Err, pie, Pierre?'"
"'Err, US surer?'"
"'Erratic rare tic, Cartier!'"
"'Er...TURF-furter?'"
"'Ever omit overtime or motive?'"
"'Ew, adding a wedding? Wang DIED!'"
"'Ew, Chas chews a cashew!'"
"'Ew, dorky keyword.'"
"'Ew, hater!' / 'Aw, there! Whereat...'" []
"'Ew, kind new kid WINKED?'" []
"'Ew, no, Owen!'" []
"'Ew, smut! Um, Stew, MUST we?'"
"'Fat-Anon? Not a fan.'"
"'Fatima, am I fat?'"
"'A fax? [']Sup? Faux pas!'"
"'Feasibly? FAILS! Bye!'"
"'Feast him: meat, fish!'"
"'Finance Fan? Nice!'"[]
"'Fine, bro! Be in for no fiber!'" []
"'Finkouts! FUN to ski!'" []
"'Fish! Fish!' / 'Sshh, Fifi!'"
"'Fit, Ma? I'm fat!'"
"'Fit? Sham. Him: Fats. Ham-fist.'"
"'Flab? Lots? Softball!'"
"'Flamboyant fly boat, man!'"
"'Flat?' / True. Aflutter.' / 'Treat flu?'"
"'Flatterer alert! Fret!'"
"'A flimsy film, say! My, FAILS!'"
"'Flirter!' / 'Trifler!'"
"'Flu also?' / 'All of us.'"
"'Flu-sore. Sue Rolf?' / 'Sure, Flo. Sour elf.'" []
"'A flu? Urgent? UNGRATEFUL!'"
"'Food, son? O, so fond!'"
"'Foodies do so? Fie!'"
"'Football? Lob aloft!'"
"'Forceful offer, Luc!'" []
"'Freaking FAKE ring!'"
"'Fresh air? Rife rash rare fish!'"
"'Freshman! Mash! Nerf!'"
"'A frightfully fraught filly!'"
"'Frugal Ralf? Ug!'" []
"'Fry dat drafty fad try!'"
"'Fudgin[']? Fun, dig?'"
"'Fun rides! Friend us!'"
"'A fur next? Extra fun!'"
"'Furs? Fie, I suffer!'"
"'Gag! His gig has haggis!'"
"'Gag, Otto. Gotta Go.'"
"'Gambler? Me? Blarg!'"[]
"'Garth, ice the cigar!'"
"'Gasp! Cake packages!'" []
"'Gay slur, Ray? Slug.'"
"'Gee, can Ace neg!'"
"'Gee! Clean elegance!'"
"'Gee, dang, engaged.'"
"'Gee! Trips! Prestige!'"
"'Gems? SMEG.'"[]
"'Genivere, I...' / 'Revenge!'"
"'Get a room, or go, mate!'"
"'Get hip?! The pig HIT PEG!'"
"'Ghostily, oh, sly git!'"
"'Gigabit? Big A? Git.'"
"'Gil's ma is glam? Slag!' / 'I'm...'"
"'Give a...' / 'I gave.'"
"'Given a trite vinaigrette?' / 'Vintage tier.'" []
"'Glitch? Tch, Gil.'"
"'Glover! Vogler! Grovel!'"
"'Go alt, Al? Got to lag.'"
"'Go bad, Bo? Gad!'"
"'Go clash! Log cash!' / 'Gosh, Cal!'"
"'Go dance once, gad!' / 'Acne, dog!'"
"'Go dream, Marge. Do.' / 'Gad! More?'"
"'Go finer! Foreign! No grief!'"
"'Go first or gifts?' / 'Sit, frog.'"
"'Go in, man.' / 'No gamin['] in among...?' Moaning. 'I'm gonna...'"
"'Go mine, Imogen! / I'm gone.'"
"'Go past? Pa, gots to gasp!'" []
"'Go private? A veto.' / 'Prig.'"
"'Go public. Glib coup.'"
"'Go racin[']? No cigar!'" []
"'Go to war to grow a...'" []
"'Go up it. Pig out!'" []
"'Goad a dog! Gaga dodo!'" []
"'Godawful Flaw, Doug.'"
"'Gold cup? Gulp, Doc!'"
"'Gone: Paris? Singapore.'"
"'Good faith? Oh, do a gift.'" []
"'Good? HIM? Ohmigod.'"
"'Gosh, Nick. Shocking hick song.' Conk. Sigh."
"'Gosh, Ted. The dog's ghosted!'"
"'Gosh, Vin! Shoving!'"
"'Got cake? Go, K.C. Eat.'"
"'Got fired? Get rid of grief, [d-t].'" []
"'Got land? Not glad? Don't lag!'"
"'Gourmet Urge, Tom?'" []
"'Gouty gut, yo!'"
"'Grandeur? Rear-dung!'" []
"'Granola, Al? Groan!'"
"'Graveyard? A drag, very.'"
"'Great, I'd grade it.'"
"'Greed is EDGE, Sir.'"
"'Greedy Ken. Geeky Nerd!'"
"'Grim? Nay, I'm angry!'"
"'Grumpy, Mr. G? / Yup.'" []
"'GTHO, goth!'"
"'A guest! Tea, Gus!'"
"'Guises, Gussie? I guess.'"
"'Gus, set guests!'"
"'Gwen, my new gym...'"
"'Gyros? Unh, so hungry!'"
"'Ha! Joke!' / 'Oh, JAKE.'"
"'Ha, pry, harpy!'"
"'Half bad fad? Blah!'"
"'Half mast? Flat sham.'"
"'HALF's flash.'"
"'Handsome? Dan? So meh!'" []
"'Handsome? No. SHAMED!'" []
"'Hangups?' / 'Puns. Gah!'"
"'Happy?' / 'No, phony, Pa.'"
"'Hard-up? PHRAUD!'"
"'Harping, prig?' / 'Nah.'"
"'Hate Mr. Mather? Meh, Art!'"
"'Hayride? Hi! Ready!'"
"'He'd nag, dang, eh?'"
"'He's ill, Shelli.'" []
"'He's into THIS one?' / 'Honest, I...'" []
"'He's loyal.' / 'Ha, solely?' / 'Say hello.'"
"'He's tart. Eh, trash.'"
"'Headachy?' / 'Yeah, Chad.'"
"'Hearsay! A heresy!' / 'Aye. Rash.'"
"'Hearts Haster Tsar, Eh? Ah, rest!'" []
"'Heaviness, VANISH! See?'"
"'Heck, eat the cake.'"
"'Heh, I'm Him. Eh?'"
"'Heidi! Hi!' / 'Die!'"
"'Heifer, HER? Fie!'"
"'Heir? Fudge, a figurehead! Ugh, I feared...'"
"'Heir? HIRE!'"
"'Heists? She's it!'" []
"'Hentai, a... in the... ETHAN!' / 'I...'"
"'Her Man's Sherman.'"
"'Her, taming the margin? Amen, right.'" []
"'Hesitance? Hit a scene.'"
"'Hey Al Haley!'"
"'Hey Lew! Wheely!' / 'Why, Lee?'"
"'Hey, subs, he's busy!' / 'Hussy, be...'"
"'Hi, Capt. A pitch at Chip?'" []
"'Hi, Dan. Nah, I'd a hand...'"
"'Hi, Dave! I've had Hev-Aid!' / 'Eh, diva.'"
"'Hi, dear! Ah, dire I heard...'"
"'Hi, demo ok?' / 'I'm hooked.'" []
"'Hi! Fools! Foolish!'"
"'Hi, Leon. Hole in line, Ho!'"
"'Hi, Mary! My hair...' / 'Hyram, I...' / 'Ray him!'"
"'Hi, Pete. The Pie?' / 'Eh...I...pet...'"
"'Hi, son I...nosh?' / 'Ish, no.'"
"'Hi, stuck?' / 'Us? Thick...'"
"'Hi, Tank! Think a...' / 'Nah, Kit.'"
"'Hi, totes-hotties!'" []
"'Hi, Wood! How do I... D'oh! Oww!'"
"'Hideous house, Di!'"
"'Hire add?' / 'Diehard, I'd heard.'"
"'His graft: far sight!'"
"'His pa, as hip? A... pish!'"
"'Hm, a ham! Mm, haha!'"
"'Hm, yes, my, he's meshy.'" []
"'Ho, who's...' / Whoosh / 'Oh, how's...?'"
"'Hobbes be bosh!'"
"'Hog [']em! Go!' / 'Meh.'"
"'Homais? Oi! Sham!'"
"'Home-style? He's motley.'"
"'Hon, as Noah's has no ash...'"
"'Hostel! Hotels! Oh, let's...!'"
"'Hot asset? He's toast.'"
"'Hot damn!' / 'Don't ham.'" []
"'Hot darn! ... D'oh! Rant!'"
"'Hot flan! Not half flat, hon.'"
"'Hot king, go think!'"
"'How dumb, Bud. Whom?'"
"'How not hot, now!'"
"'How now. Who won?'"
"'How so?' / 'Woosh!'"
"'Hubert, but her...' / 'The rub: be hurt!'"
"'A hug? Augh!'"
"'A huggy guy. Gah!'"
"'Huh, dud? Duh. DUH!'"
"'Hum more.' / 'Uh, er, Mom?' / 'Humor me.'"
"'Hup, Stu!' / 'Shut up!'"
"'Hush now, huns!' / 'How?'"
"'I be glum! Belgium? Um, bilge!'"
"'I bet on Benoit. No bite?'"[]
"'I dare.' A dire 'Er, aid?'" []
"'I? Debt? I'd bet it'd be...'"
"'I educate.' / 'Cute idea.'"
"'I goofed, good. Fie!'"
"'I hang in. Agh!'" []
"'I hatch a hitch.'"
"'I hate Tia.' / 'Eh?'" []
"'I know, Wright. Working with right kin? Wow!'"
"'I, Manly, Mainly am lyin['].'"
"'I mean ME, Ian!'" []
"'I? Mock Mo[']? Ick!'"
"'I need to edit one...'" []
"'I once saw winos, Ace.'"
"'I rated a tired 'Rad tie, dear, it...''" [p]
"'I resent SireNet!' / 'Sit, Rene.'"
"'I save on, as I've no evasion.'"
"'I set up pie, Stu!'"
"'I, the diva, I've HAD it!'"
"'I, umpteen meetin['] up.'"
"'I'd lost lids to...' / 'Do list!'"
"'I'd rec Edric.'" []
"'I'm at it, Ma!'"
"'I'm bored' / 'Bromide: bid more.'"
"'I'm dead, Maddie! Em did a...'"
"'I'm home, Mom!' / 'Eh? I...'"
"'I'm IT. Beg. BIG TIME!'" []
"'I'm, like, lie, Kim!'"
"'I'm pro! Primo!'"
"'I'm sad, Sam.' / 'I'd...'" []
"'I'm sorry. Rori's my...'"
"'I'm sure, Mr. I sue!'"
"'I'm upset!' / 'Um, spite!'"
"'I'm wet, Tim.' / 'Ew!'"
"'I've...' / 'Tosh. Shove it.'"
"'Icing gone? Nice going!'"
"'ID Lost?' / 'It's Old.'" []
"'Idle, tots? Let's do it!'"
"'I.e. Dad aided Addie.'"
"'I.e., Dr. Reid, DIRE!'" []
"'I.e. RSVP, vipers!'"
"'I.e. sad aides['] ideas aside, Sadie.'" []
"'If [']twas a swift fist...aw.'"
"'If Sal fails, is Alf fils a...?'"
"'Ignorable, Gabriel? No!'"
"'Il povre?' / 'Pro-evil ol['] viper!'"
"'Ill, Pa? A pill?'"
"'Ill? Wes is well!' / 'Swell, I...'"
"'Immoral liar, Mom!'" []
"'Impose? No, Moon pies poison me.'"
"'Impression?' / 'Permission?'"
"'In, ma?' / 'Na, I'm ... a min ... man, I ...'" []
"'Indiscretion? Indirections.'"
"'Indoors odor? SIN!'"
"'Inept recap, apprentice!'"
"'Into [toti]? Not I!'"[]
"'Into drugs? Turgid, son.'"
"'Intro a ration? Not Ari!'"
"'Invest it, Sven!'" []
"'IOU?' / 'Oui.'"
"'iPhone, eh? No IP?'" [p]
"'IQ? Gun, too? Go! No quit!'"
"'IQ un-apt? Piquant quip, Nat!'"
"'Ire task, sir? Take a strike!'"
"'IRS, sir!'"
"'Is coy Ben nice, boys?'"
"'Is CPR PC, sir?'" []
"'Is he fat? Eat fish!'"
"'Is Tank Atkins a Skint?'"
"'Is Ted Deist?'"
"'Is this on?' / 'To hissin[']!'"
"'Is Wes Weiss...?' / 'Ew, sis!'"
"'Isis, Noel LIONISES oiliness!'"
"'It causes...' / 'ICU seats?' / 'A cutsies.'"
"'It seems semi-set.'"
"'It's Dan! I stand!'" []
"'It's like, silk tie? Kit LIES!'"
"'It's up! Go, pigs, out!'"
"'It's...' / 'SIT!'"
"'Ivies top?' / 'Positive.'"
"'Jam out?' / 'Um, a jot.'"
"'Jana, I'm in a jam!'"
"'Jerkish...' / 'Eh, sir?' / 'J/k.'"
"'J/K, there.' / 'The JERK!'"
"'Joyce is coy, Jesi.' / 'Sic Joey!'"
"'Ken? Hot?' / 'No, Kent.' / 'Ok, then.'"
"'Ken's a snake!'"
"'Keyed up, Duke?' / 'Yep.'"
"'Kid, cut Sue.' / 'Suckitude.'"
"'Kip, son. Pinkos spin, OK? Skip...' / 'NO!'"
"'Kiss her.' Shrieks. 'Eh, risks.'"
"'Kite, Rob?' / 'It broke.'"
"'Know, Al: walk on lawn, OK.'"
"'Know what?' / 'Wow. Thank...'"
"'Kudos? Ok'd? Us?'"
"'L-Dopa? A plod, old Pa.'"
"'Lady Dee? Delayed!'"
"'Lady, son?' / 'Sadly, no.'"
"'Lampton's plan-most plots, man...'"
"'Landmines? Lad, men sin.'"
"'Lapses passel, Pa?' / 'Less.'"
"'Lara wed Al Warde? Raw Deal!'"
"'Lass, vie! I've Sal's valises!'"
"'Laud Fred? A fuddler! Dreadful.'"
"'Leaving, vile nag!' / 'Lavigne!'"
"'A leet GIF? Get a life!'"
"'Len's gut lungest.' / 'Glutens.'"
"'Lent? SOS. Net loss. [']S stolen.'"[]
"'Leopold's dope? LOLs!'"
"'Les, I'm...Mel is SLIME.' / 'Is Lem?'" []
"'Li'l Bro or Bill? Brill!'"
"'Li'l Wes is well.' / 'I...swell!'"
"'Liam! Len! All mine!' / 'Mean! I'll...'"
"'Libel! I'll be...'"
"'Lick me, Mel!' / 'Ick!'"
"'A lie, Leia!'"
"'Like waves? Lake views? Weave silk!'"
"'Limo? Moil, Milo.'"
"'Link, Ed?' / 'IDK, Len.'"
"'Linotyped pointedly? Only tepid.'"
"'Lisa, too, is a tool!'"
"'Literally...' / 'Later, Lily!'"
"'Liz, Pip! Zip-lip!'"
"'Lo, smelt! To smell tolls me!'"
"'Lo, son! Solon Olson!'"
"'[']Lo, team!' / 'Mo! Late to meal!'"
"'Load up, Paul! Do!' / 'Loud, Pa!'"
"'Loafers! So feral!'"[]
"'Loathe Theola! Loathe!'"
"'Log off fo['] Golf!'"
"'Lola, a LOL?'" []
"'Long wail allowing? No, ill wag!'" []
"'Longest legs? NOT!'"
"'Lookies!' / 'OK, I lose.'"
"'Looks OK, Sol.'" []
"'Loonies soil one.'"
"'Lost dog got sold to Gold's.'"
"'Lost rarest artless rot? Last resort...'"
"'Loud toy? You dolt!'" []
"'Low-bred bowdler!'"
"'Luci, don't!' / 'I couldn't!'"
"'Luckily I'll...YUCK!'"
"Lunge, Pa! Angle up a plunge!"
"'Lychees, Chelsey? Eech, Sly.'"
"'Ma, Feel Female.'"
"'Ma, he's...' / 'Shame, eh, Sam?'" []
"'Ma, I seen meanies!'" []
"'Ma, opt to Pam.' / 'Apt, Mo.'"
"'Ma, Sad? Mad as Ms. Ada Adams!'"
"'Mad, Gil? I'm glad!' / 'Dim gal!'"
"'Mad men! Damn [']em!'"
"'Maddie, Ma died!' / 'Dad, me... I...'" []
"'Made it! I tamed a timed...'"[]
"'Maggie, I...' / 'Gag me!'" []
"'Make this hate skim!' / 'I, ahem...' / 'Tsk.'" []
"'Malcolm, call Mom.'"
"'Malik? Kim? Al? A milk?'"
"'Malodors? Door slam!'"
"'Man! A dire marinade.'"
"'Man, Brenda's brand names!'" []
"'Man-Toy to Many? Not Amy!'" []
"'Mandy!' / 'My dandy man!'" []
"'The map? Apt? Meh.'" []
"'Marathon? Martha? No!'"[]
"'Marcy! My car!' / 'Cry, Ma!'"
"'Maria! Ew!' / 'I'm aware.'"
"'Mark's wool looks warm.'"
"'Marti, a trim?' / 'Art, I'm...'" []
"'Mass? Try St. Mary's.'" []
"'Mate, I'm weak. Make [']em wait!'"
"'THE MAW, Mathew!' / 'What, me? Aw...THEM!'"
"'Max the tax? Meh.'" []
"'Me, a win? I am new!'"
"'Me? Cigar? Grimace!'" []
"'Me, Doc: MedCo EcoMD!'"
"'Me, exert? Extreme!'" []
"'Me, tithe? ... The time!'" []
"'Me wild? We! Mild!'"
"'Mealtime? Me, I'm late.'"
"'Mean, JT! Jet, man!'"
"Mean prod. 'Pardon me.' Name Drop." [p]
"'Measures?' / 'Reassume same user.'"
"'Mediocre cider? O me!'" []
"'Meet [']im? Me time!'"
"'Meetups? Must pee...'" []
"'Meg, I'm ... / Gimme!'"
"'Men, I'd go demoing.' / 'Mendigo.'"
"'Menial? Eli, man, Nail [']em!' / 'I am, Len!'" []
"'A meteor!' / 'More tea?'"
"'Mia, Ted made it! Date [']im!' / 'Tied, Ma!'"
"'Midterm trimmed, Mr.! Timed!'"
"'Migraines, sir? Enigma.'"
"'Miladies, idealism!'"
"'Milly? Ill? My.'" []
"'Mini-set! It's mine!'"
"'Minor-Co micro? No, MORONIC!'" []
"'Mint juleps? Let's jump in!'"
"'Miser, sir? Me?'" []
"'Mistraced timecards? Mister CAD!'"
"'Mitch! Max! Match, mix.'"
"'Mix ten!' / 'I'm next!'"
"'Mix up ten?! I'm up next!'"
"'Mm, say, Sammy, my ma's Ms. May.'"
"'Mo['] bran, Bro-man!'"
"'Moe's some emo. O Me!'"
"'Mohawks! Ask!' / 'Whom?'"
"'Mold, eh? Hold me!'"
"'Mom, hey! My home!'"
"'Mom! Pop! Mo['] pomp!'"
"'Mon ange, gone, man!' / 'Megan? No!'"
"'Moni's moins Simon.'" []
"'Monitor it, moron!'"
"'Monstrous tumors, son.'"
"'Montgomery?' / 'Gone. Try Mom.'"
"'Mousy, eh? My house. You mesh.'"
"'Mr. Cutie? I'm cuter.'"
"'Mr. Day!' / 'Mardy Dr. May!'"
"'Mr. Kato! Mark! To OKMart!' / 'Rot. KMA.'"
"'Mr. Saudee Measured. Made sure.'"
"'Ms. Kris, kiss Mr. Sisk.' / 'Smirks.'"
"'Munroe? Um, er, no.'"
"'Mustache, oh? Sham! Touche!' / 'Mouth, chase so much hate!'"
"'Mutant? Tut, man.'"
"Mutters. 'Rum test, er, mutts.' / 'Trust Me, Mr. Stute.'"
"'My, a ride! I'm ready! Ray! Demi!'"
"'My arse, Ramsey.'" []
"'My bread, Dr.?' / 'Maybe.'" []
"'My case: scam ye? Yes, Mac.'"
"'My dear, I--I'm ready.'" []
"'My dorm, Mom? Dry.'"
"'My goal: log Amy. Glam, yo!'"
"'My group's so grumpy! Romp, guys!'"
"'My guess: Sue's gym?' / 'Smug yes.'"
"'My legs! Sly, Meg.'"
"'My plan: I play Nim.' / 'Lyin['], Pam!'"
"'My Porsche shop! Mercy!'"
"'My serial mislayer, Mr. Easily-Smearily!'"
"'My shoes! Oh, messy!'"
"'My, son! Mony's...'"
"'My system sets...' / 'Mess, Ty.'"
"'My wish: Whimsy!' / 'Why, Sim?'"
"'Myopic, coy imp!'"
"'Nanci, free refinance can refine...'"
"'Naw, Deb's bad news.'" []
"'Naw, Don had won, and how!'"
"'Naw, Seth. He wants new hats.'"
"'Naw, sit. I wasn't wastin[']...'"
"'Ned, is Denis snide?'"
"'Ned, mass madness!'" []
"'New leg, Glen? Ew!'"
"'New OS? Owens-Snowe? Son, we...'"
"'Newsroom?' / 'More snow. Worn some.'"
"'Newt did. We didn't!'"
"'Next git texting? Tix, gent.'"
"'Nicety, sir: insert icy sincerity!'"
"'Nick, Jo! Jockin['] Jon? Ick!'"
"'NIGEL'S single.' / 'Is Glen?'"
"'No, [d-t]! Do not nod to...o, don't!'"
"'No B's? Snob!'" []
"'No baths?' / 'Bah, tons!'"
"'No-brainer, Inaner Rob.'"
"'No bribes? Snobbier...'"
"'No cut, Count!'"
"'No, Drew! Ron wed, Red? Now? Downer.'" []
"'No horse shoe, Ren? Oh, snore!'"
"'No, I'm on [']im, Moni!'" []
"'No mice come in.'"
"'No pals? So, plan!'"
"'No pearls or panels? Personal.'"
"'No-show? How, son?'" []
"'No spots? Tops, son!'"
"'No trash! Ah, snort! Oh, rants!'" []
"'No white wine, tho['].' / 'Hit Owen, the wino.'" []
"'No wrath, Wharton-Anworth?'"
"'Noisy bums! Son, I'm busy!'"
"'Nominated? Admit none!'"
"'Non-fats fan? TONS!'"
"'Non-odd do'n, Don!'" []
"'Nopalito? Optional.'"
"'Nor am I, Marion!'" []
"'Nor THY thorny try, hon['].'"
"'Not Ned's tendons!'"
"'Not set?' / 'Tetons? No test!'" []
"'Notice it once.' / 'Nice to notice.'"
"'Now, Rog?' / 'WRONGO.'"
"'Nut job!' / 'But Jon!'"
"'NY, kid? Dinky!'"
"'O, bear a bore!'"
"'O Billy! Lil Boy!'"
"'O, lively ville, yo!' / 'I...lovely!'"
"'O Splat! Pa Lost!'"[]
"'O, thin! Hit on? ...In! Hot!'"
"'O, those soothe.' / 'He's too...' / 'She, too.'"
"'Obsolete obese lot!'"
"'Octane, Ace?' / 'Not at once.'"
"'OD, Tex? Detox!'" []
"'Odd day, daddy-o!'"
"'Odd log, old dog.'"
"'Offends? Send off!'"
"'Oh, a FTW? Of what?'" []
"'Oh, aid Idaho!' / 'Ah, I do!'"
"'Oh and Ha! Don had no Honda.'" []
"'Oh, drat. Hard to do, thar.'" []
"'Oh, Evita, I HAVE to!'"
"'Oh, Gus, Hugo's so...UGH.'"
"'Oh, it's Mr. I'm-Short-Mirth-So.'" []
"'Oh, MY slur? Sly humor.'"
"'Oh, Nell?' / 'Hell, no!'"
"'Oh, pie, I hope. Eh? Poi?'"
"'Oh, rats. A short sort, ah?'"
"'Oh, repute up to here, eh, pouter?'"
"'Oh, Rita!' / 'Hot air.'"
"'Oh, yes. Oy, he's so...' / 'Hey!'" []
"'Oho, dumb bum-hood!'"
"'Oho, say! Yahoos!'" []
"'Oil! Neat! Elation! To a line!'"
"'Oil? Psh. Polish so, phil. Oh! Slip!'" []
"'Oil stock? Too slick.'"
"'OJ, wine: we join.'"
"'OK, [n-t]'s so taken.'" []
"'OK, deny, donkey!'"
"'Ok, Dr. ... Dork.'"
"'OK it?' / 'Nod.' / 'Too kind.'"
"'Ok, Oz, a kazoo!'"
"'OK, rec, Coker?' / 'Crook Creek.'"
"'Ol['] webs be slow, Bowles!'" []
"'Old age? Go deal.' / 'Ego, lad.'"
"'Old cow!' / 'Low, doc!'"
"'Old town! Now, dolt!'" []
"'Olive loaf vile? Aloof!'"
"'Omit Ken, not Mike.'" []
"'On a hit? Ah, not I!"
"'On target?' / 'Not great.'"
"'Onanism, I? Insomnia!' / 'No man is...'"
"One prim 'Rip [']em? No, I'm prone.'"
"'One room?' / 'No, Romeo!'"
"'One thing...' / 'Neigh not!'" []
"'Oo, guest goes out!'"
"'Ooh, Meg?' / 'Go home, hog Moe!'"
"'Ooh, Pat! A photo!'"
"'Oop, Del!, ol['] dope!' / 'Poe, old poodle!'"
"'Or Night? Right On!'" []
"'Or TV ops, provost...'"
"'Our go, sir? Rigorous!'" []
"'Our Igor's Rigorous!'"
"'Ow, mind! I'm down!'" []
"'Ow, not by Town, Boy.'"
"'Owe? Woe!'"
"'Owners, dis rowdiness.'"
"'Oy, a wag? Go away!'" []
"'Oy, Bill's silly, Bo!'" []
"'Oy. Sad.' / 'Do say.'"
"'Pa, I fart!' / 'Parfait!'"
"'Pa, if I fap...' / 'Ai! Pf!'"
"'Pa, she...' / 'Phase, eh, sap?'"
"'Pack it in? Panic? Kit, a nitpick.'"
"'Pah! Cold, old chap.'"
"'Paid for prof aid? Oaf! Drip!'"
"'Parakeet? Keep a rat!'" []
"'Paralyzed ad rep? LAZY!'"
"'Parchesi? Cheap, sir!'" []
"'Patchiest. [']S pathetic.'"
"'Pay Red per day?' / 'Yep.' / 'Rad.'" []
"'Pay slid? Dip, a Sly Display.'"
"'Payouts up to, say...'"
"'Pedal cab? Bad place!'"
"'Peg's no sponge.'"
"'Pet, Ike? Keep it.'"
"'Pete! Al! Ale tap! A plate!' / 'Apt, Lee. Eat, pal!'"
"'Peter, Dad departed.'" []
"'PG, sir!' / 'Prigs!'"
"'Phil, set his pelt!' / 'Shlep it!'" []
"'Photo op? Hot!'" []
"'Picayune!' / 'Ayup.' / 'Nice.'"
"'A pickle?' / 'Ick! Pale!'" []
"'Pie, Ace?' / 'A piece.'"
"'Pie, OK? I poke Po['] Ike.'"
"'Pig, fetch a cheap gift!'"
"'Pig? Great! Get a grip!'"
"'Pinch a chap in an...Chip! Pain! Ch!'"
"'Pink Floyd? Dinky flop!'"
"'Pinko? Kip? NO!'"
"'Pip Erd ripped Dr. Pepi!'"
"'Pix, Neal. Explain.'"
"'Plan yet? Penalty!'" []
"'Plaudits! Sit up, lad!'"
"'Play a joke? Peak joy, Al.'"
"'Play dumb amply, bud.'" []
"'Play safe!' / ' Safely, Pa!' / 'False yap.'"
"'Playtime empty? Ail? Lame? Pity.'"
"'Plus, pie piles up.'"
"'Plus the help, uh, slept, Stu.' / 'Hup! Let's...'"
"'Poofy fop! Yo!'"
"'Pop in on Pip!'"
"'Pop music comp is UP!'"
"'Posher tone? Nope. Others.'" []
"'Post mine! ... NEPOTISM.'" []
"'Pre-edit. Tepider.'"
"'Precede Creep Ed? Cred? Eep.'"
"'Prickly Ply, Rick!'"
"'Pride, man. Damn ripe and prime!'"
"'Prob not trop bon.'"
"'Probe us? Sober up! Sop! Rube!'"
"'Probity? Pity, bro.'"
"'A problem.' / 'Ample, bro.'" []
"'Promo, Mr.? Poo!'"
"'Property tax export? PARTY!'"
"'Prove it. Overtip.'"
"'Puberty's Burst? Yep.'"
"'Pudgiest? Ug, spited, e. g. stupid.'" [p]
"'Pundom? Yes, son. D-U-M. Yep.'"
"'Punish his pun!'" []
"'Push, push!' / 'Shush, pup!'"
"'Pushy?' / 'Yup.' / 'Sh!'"
"'Put Don DuPont up?' / 'Don't!'"
"'A putt? Tut, pa!'"
"'Quanti-quaint!'"
"'Quantify.' A tiny FUQ."
"'Queer. TED'S requested?'"
"'Quite odd. I'd quoted...' / 'Ed, do quit!'"
"'Rad slo-mo door slam!'" []
"'Rah! Ned Haren... eh? Darn. Ah, nerd.'"
"'Rank, eh? Harken! Hanker!'"
"'Raps? Tut, Upstart!' / 'Pa, trust...'"
"'Rats, Ted started!' / 'Rest, Tad.'"
"'Raw tie.' / 'Wear it, waiter!'" []
"'Read, Tony! Tread yon!' / 'Not ready!'"
"'Reading? Dang, I, er...'"
"'Ready, deary?' / 'Yea, Dr.'"
"'Rec, sis?' / 'Esric's Crises.'" []
"'Recaf? Farce!'" []
"'Red Bob Robbed Dr. Bebo Dobber!'"
"'A red read! Dear!'"
"'Redist.? I'd rest, Sir Ted.'"[]
"'Regular real rug? Urrg, Lea.'"
"'Reminded indeed, Mr.!'"
"'Resave-averse as ever?'" []
"'Retrophilia? Horripilate!'"
"'Reviled? Deliver. I'd revel.'"
"'Ride-cams? I'm scared.'"
"'Ride it!' / 'I tried!'"
"'Rilke liker? Reek! Irk! Ill!'"
"'Rob! Ada! Dara! Bo! Aboard!'"
"'Robot, eh? Herb too? The boor!'"
"'Roll Tide!' / 'Die, troll!'"
"'Rory's Sorry.'"
"'Rot, Ty. TRY to!'"
"'Rouge-sheen greenhouse. Generous, eh?'"
"'Roundtable? Not durable, urbane dolt.'"
"'Rube is busier. Rib Sue!'"
"'Rufe Kosta freaks out Kera Foust.'"
"'Rug sale. Lag?' / 'Sure!'"
"'A rum, yes, Mary Sue?' / 'Yum, Resa!'" []
"'Rush it. His rut is THRU!'" []
"'Rut, Mo? To rum!' / 'Um, rot!'" []
"'Ruth's in! Run this hunt, sir!'"[]
"'Rutner-Turner? Err, nut.'"
"'Ry, Fab? Barfy, By far!' / 'Fry, Ab!'"
"'Sac, eh? Chase aches!'" []
"'Sad. I see. See, said disease is eased...'"
"'Saddo odd as Dad...so...'"
"'Sadist at Sid's? It's sad.'" []
"'Sal! Tim! I'm last!' / 'Milt, as...'"
"'Salmond's Mossland? [d-word-u] loss!'"
"'Sam or Roma's? Or Ma's?'" []
"'Sandwich! Chad Wins!'"
"'Sarah's as rash. Harass...'"
"'Sardonic? Acrid, son? So rancid? No, sir! Cad!'" []
"'Saw Watts. [']Twas...' / SWAT!"
"'Say, be by see, [a-b]?' / 'Yay, Bess!'"
"'Say tons so nasty to Nyssa? Son, STAY!'" []
"'A scalp, Pascal!'"
"'Schmoose. Smooches?'"
"'Scoundrel unscolder!'"
"'Scry it, Cristy!'"
"'See, Hirsch cherishes Cheshires!'"
"'See, Tom? Emotes seem to meet so.'"
"'See, um, ... ' / 'Sue me!'"
"'Seen my yes men?'"
"'Seen oafs? A sense of...one's safe.'"
"'Semi-hot? Shite, Mo!'" []
"'Senor Disk, son, risked dorkiness.'"
"'Senorita's assertion notarises SO nastier.'"
"'Set to?' / 'Totes.'"
"'Shades, I said she is sad, eh?'"
"'Share, cad? Hard case!'" []
"'Sharing, eh? Rehashing!'"
"'She's not hotness!'" []
"'She's not Seth's. No.'" []
"'Shep, i've... ' / 'Pish, Eve! His Veep...'"
"'A shorn Hans or Ron has no rash.'" []
"'Show [']Em Who's Me?' / 'We mosh, Ms. Howe.'"
"'The shrub burst, ehh? Thus, Herb?' / 'Shh. Brute.'"
"'Sibyl, so bossily!'" []
"'Sick, er peon! Nose picker!'"
"'Sid! Toi! Otis! Di! I... sod it, idiots!'" []
"'Sid's rest disserts distress.'"
"'Side note...' / 'I don't see...'"
"'Sigh at a sight, ah, gits?'" []
"'Sigh. Mended hidden gems.'"
"'Sir, need deniers? I'd sneer.'"
"'Sis DID dis Sid!'" []
"'Sis, dismal dismissal.'"
"'Ski, eh? Hikes shiek?'"
"'Skilled, kid? Sell!'"
"'Skyrail, Al? Risky!'"
"'A slip-up? Sail, pup!'"
"'Sly, Pop? Sloppy.'" []
"'Smirkiest mis-strike! Kismet, sir!'"
"'Smit, Pa?' / 'Pam, sit. I'm past...'"
"'Snap! Sit, Pissant!'"
"'A sneer, Arsene?' / 'Er, Sean?'" []
"'Snide-O Edison is DONE.'"
"'Snow day dawns, oy!'"
"'Snub Rick: sick burn? Bunk, Cris!'"
"'So, a trek? Or skate?'" []
"'So, any?' / 'Ya.' / 'Son! Say no! Ay! SON!'" []
"'So, Audry! Our day's dour, say.'"
"'So, Billy!' /'Lo, Sibyl!' / 'Oy, bills.'" []
"'So bore THEM, bothersome!'"
"'So, brat? To bars or bats?'"
"'So broke bores, OK?'" []
"'So? Candy?' / 'Nosy cad.'"
"'So, chap, the cheap shot hat scope.'"
"'So, Darin is rad, no?'" []
"'So, Dick?' / 'I'd sock DiskCo.' / 'Ick. Sod.'"
"'So, dolt! Do lots?' / 'Old sot!'"
"'So, Etta, to eats!'" []
"'So, Herby!' / 'Hey, bros!'"
"'So huggy? Gosh, guy!'"
"'So, Hugh, go!' / 'Hush.'"
"'So, Ida, do as I...' / 'Adios!'"
"'So, Mikey!' / 'Yikes, Mo!'"
"'So, Rod! Odors!'"
"'So sticky! Icky! Toss!'"
"'So, Uncle, clone us!' / 'No clues. Un-close. Counsel?'"
"'So, wind is down now, Sid.'"
"'So, with it? Show This. Ow! How's it...'"
"'So, y'all. All soy?' / 'Say, LOL.'" []
"'So yer on Rooney's? Yes or no, son...or ye...'" []
"'So you're a caviler! You're so cavalier!'"
"'Some dude doused me!'"
"'Some PR, Mopers! Mo['] reps!'"
"'Some tonic? Nice, Smoot.'"
"'Son, is Sis...? No!'"
"'Son, pissy synopsis!'"
"'Son, tuck, unstock. Suck not!'" []
"'Son's big. Bossing.'"
"'Soon, Perry?' / 'Nope, sorry.' / 'Ornery sop!'"
"'Soon, pet. One stop.'"
"'Sore, chap? A Porsche!'"
"'Sort at tarots so tart? Art-sot!'" []
"'SOS, Al!' / 'Lasso a loss as SOL.'" []
"'Sot? No, not so! Son, to...'" []
"'Soup, [d-t]?' / 'Stood up too, Spud?'"
"'Soup by pubs? Oy!'"
"'Sow dim wisdom, sod?' / 'Ow! I...'" []
"'Soybeans? Boney ass!'"
"'Soylent? No style!'" []
"'Spaz Chet? Chez Pat's.'"
"'A speech, Peaches!' / 'Eh, space.'"
"'Spoil'd? Eh? POLISHED! Hide, slop!'" []
"'Sponsor pros, son.'" []
"'Spy Al plays sly, Pa.'" []
"'St. Hope's set, posh? The sops!'" []
"'Stan, be absent!'" []
"'Stan Nast Tans Ants.' / 'Stats, Ann?'" []
"'Start smarm? Smart. SMART.'" []
"'Stay put, Patty Su!'" []
"'Stay?' / 'Ooh, too ashy.'"
"'Steady, Ted. Say!' / 'Yes, Tad?'"
"'Stilo?' / 'I lost it, Sol.'" []
"'Stint an instant!'"
"'A stock? TaskCo!'"
"Stoniest snotties." [p]
"'Stop, Cathie! So pathetic to pastiche.'"
"'Stop her, eh, sport?' / 'Pothers!'" []
"'Stripes persist. Press it, sir! Step!'" []
"'Stu, my musty, um, sty!'"
"'A sty. Stay?' / 'Say! Tasty!'"
"'Such brats! Trash-cubs!'"
"'Suck it!' / 'Ick, Stu!'"
"'A sulk, Klaus? Ask Lu.'"
"'Sulky? Boo! Look busy!'"
"'Summer? Mm, sure.'"
"'Summon Mum, son!'"
"'Sunroof? For us? No.'"
"'[']Sup, pet?' / 'Pep, Stu! Step up!'"
"'[']Sup Tom? / Um, stop.'"
"'Suppose Pop sues?' / 'Supe-sop!'" []
"'Sure into routines.' / 'True, son, I...'"
"'Sure may, Mary Sue!'" []
"'Swank do, eh? SHAKEDOWN!'" []
"'Sydney?' / 'Yes, Ned?'"
"'T. Watson Wants to not swat at Wont's. Now, stat! No Twats!'"
"'Ta-dah! Da hat!'"
"'Tact is static.'"
"'Tad Hodes? Shot dead?'"
"'Tad, I'm' / 'Ma, it'd' / 'Admit it, mad!'" []
"'Tad! Wes! Ted was wasted. Wade St.'"
"'Take [']im, make it! Ta, Mike!'" []
"'Tame liar material.'"
"'Tango? I? No gait!'" []
"'Tank is a skint.'" []
"'Tanked, Bro? Don't break...'"
"'Taunted, Dean? Tut!'"
"'Taxes reaped. Exasperated.'"
"'Taxis at six!' / 'Uh, rider, hurried?'"
"'Tea, Mr. Marte?'" []
"'Team player? Tame parley!'"
"'Tears? Rates a Rest!'"
"'Teary, Pat? TEA PARTY!'" []
"'Ted ails.' / 'Sit, deal details.'" []
"'Ted, Pare red tape!'" []
"'Ted, son. St. Deon Doesn't...'" []
"'Ted's SO tossed!'"
"'Telethons? Let's not, eh?'"
"'Ten-ply? Plenty.'"
"'Tend urge, rude gent? Get under!'"
"'Tent, yo?' 'Note, Ty: not yet!'"
"'Terri, ew! Rewrite!'"
"'Test it. Bah, that bites.'" []
"'Tex, I... / EXIT!'"
"'Text MINE next time!'"
"'Textins[']? Sit next!'" []
"'TGIF'n? F'n git!'"
"'Tha feds shafted...' / 'He's daft!'"
"'That, I'd hit, Tad.'"
"'That so, tots? HA!'"
"'Thayer, is thy raise this year?'" []
"'A theft, eh, Taft?'"
"'Thesis: Bums miss the bus.'"
"'Thorne hot, Ren?' / 'Not her.'"
"'Those Ethos? So the...he's to?'" []
"'Thoughtful? Golf? Uhh, tut.'"
"'Thug, ho?' / 'Uh, goth.'"
"'Thwait!' / 'Ah, twit, thaw it!'"
"'Thy gal's Ghastly!'"
"'Tim, Alf! I'm flat at film.'"
"'Tim, learn Nim!' / 'Later.'"
"'Tin Bo Tobin-Binot? Bi? NOT!'"
"'Tina, do No Donation!'"
"'Tip, Grace?' / 'Price tag! Act! Gripe!'"
"'Tip, Wes: spew it!' / 'I swept pits. Ew.'"
"'Tired, eh? The ride.'" []
"'Tiresome emote, sir!'" []
"'[']Tis rum. Truism.'"
"'Tits lie.' / 'Elitist!'"
"'To an end? Not Dean!' / 'Done, Nat.'"
"'To bike? OK, I bet.'"
"'To Chip: chop it!'"
"'To Dirk: Rot, Kid. OK it, Dr.?'"
"'To ideas, toadies!'" []
"'To quips? Quit, sop!'"
"'To rides! So tired? Do rites! Or diets!'"[]
"'Toasted! Go, good taste!'"
"'Tofu, hick?' / 'Oh, ---- it!'"
"'Tofu? No, too fun.'"
"'Tofu year? After you!'" []
"'Tom, I...' / 'I'm to Omit it, Mo.'"
"'Tony, so snooty, oy!' / 'Tons!'"[]
"'Too busy to buy, so, OUT, boys!' / 'Boy, to us?'"
"'Too crude, Doc! Outre!'"
"'Too pushy?' / 'Yup.' / 'Shoot.'"
"'Top art? Rot, Pat!'" []
"'Top, son. Spot on!'"
"'Torn ACL: act lorn? Not Carl.'"
"'Toss-up? Stop us!'"
"'Tourism rims out.'"
"'Touted duetto ode? Tut!'"
"'Toy ten? Not yet!'" []
"'Tracy, I've veracity!'"[]
"'Tradesmen need marts.'" []
"'Translate. Start, Neal.' / 'Later, Stan.'"
"'Trapped? Prep, Tad.'"[]
"'Trickery trek? I cry...'"
"'Triste's trite.' / 'Rest it.'"
"'Troops nigh? Poor things!'"
"'True, Simon?' 'I'm not sure.'"
"'True, son. Not sure? Rue tons.'" []
"'A true, uh, hauteur!'"
"'Tut! Lie, to let it out?'"
"'Tut, sis! It's stu!'"
"'Ty! Half-fly hat!'"
"'Ty, I'd tidy it. D'y...'"
"'U sack us? Ack, sucka!'"
"'Uck! Bald? Bad luck!'" []
"'Ug, Al's a slug.' / 'Ug, Sal.'"
"'Ug! Do Doug?!'"
"'Ug! Say a guy's gay? Us?'" []
"'Ug! Wild Ludwig!'"
"'Ugg, Steve is suggestive!'"
"'Ugh, LEAD, Ed. Laugh, huge lad.'"
"'Ugh, trip, upright pig Ruth!'"
"'Ugly [']do, old guy!' / 'Go, duly!'"
"'Uh, Bess? He's sub-bushes.'"
"'Uh, Brant?' / 'Ha, burnt!'"
"'Uh, Count? / Uncouth nut! Ouch!'"
"'...uh, covers over such vouchers.'" [p]
"'Uh, Meg? Hug me!' / 'Hm...eug.'"
"'Uh, Mrs. Shrum?'"
"'Uh, pet? Put up the...' / 'Eh?'"
"'Uh, tennis in the sun?'"
"'Uh, toil's loutish.' / 'Tosh, Lui!'"
"'Uhgh, Hugh. Ughh.'"
"'Uhh, do...' / 'Oh, duh!'"
"'Um, beth? The bum...meh.' / 'But...'"
"'Um, chap? A chump?' / 'Much, Pa. Pam Chu...'"
"'Um, inept pun time? Put mine...'"
"'Um, soy! Yum, so mousy.'"
"'Um thatch that much?'"
"'Unbred! Burden!' / 'Burned!'" []
"'Unworthy to run? Why? Oh, wry nut!'"
"'Updike? I puked!'"
"'Uppity?' / 'Yup. Tip?'"
"'Upsea? Pause, Sue.' / 'PA!'"
"'Upside, Norm?' / 'Unpromised.'"
"'Urinate taurine!'"
"'Us? Ace cause!'"[]
"'Veal, Vela?' / 'VAL!' / 'Leave!'" []
"'Vegan? I gave in.'" []
"'Venal, Levan. Venal.'"
"'VIP? No? Po['] Vin.'"
"'VP does dev-ops.'"
"'Wail, Stu! Wus!' / '[']Til a LAWSUIT!'"
"'Wan fop! Pawn of...'" []
"'Want! Do!' / 'Dawn, to...' / 'Now, Tad!'" []
"'Want now?' / 'Won't. Naw.'"
"'Want sex?' / 'Tax news was next!'"
"'Way hot hat, yow!'"
"'We can go once. Wag.'"
"'We hire where I wire, eh?'" []
"'We know Ken!' / 'Wow!'" []
"'We... lost ol['] Stew.'" []
"'We won? Eww, no.'"
"'Wealth is lies.' / 'WHAT?!'"
"'Wes, Lea saw Lee...' / 'Weasel!'"
"'What a tool! Whoa, total!'"
"'What if?' / 'Haf-wit!'"
"'What's hot? How's that?' / 'Aw, shh, tot!'" []
"'When does...who needs Ed now he's...?'"
"'Who bet HotWeb?' / 'We, both!'" []
"'Who farted? Wade forth!'"
"'Whoah, how?' / 'Ah!'"
"'Why I eat a whey? It... HEY! WAIT!'"
"'Wild oats, Waldo? Sit!'"
"'Wild tot!' / 'Old twit!'"
"'Wily, Red? Weirdly.'"
"'Wimp out?' / 'I'm up TWO!'"
"'Winds. Go dowsing?'" []
"'Wine, bro? Brownie?' / 'No, I...' / 'Brew? Brie now?'"
"'Wink at Kit? Naw, Watkin.'"
"'Winston won't Sin, On, twins!'"
"'Wise guy, eh? Weigh ye us!'"
"'Wit snafu! Was unfit!' / 'Naw, Stu, if it was fun...'"
"'With Meg, we might wig them!'"
"'Wonton? No, won't. Not now.'"
"'Woo yeah! Ahoy! ... Woe!'"
"'Woot, Rolf! Floor two!'"
"'Woozy, Oz?' / 'Yow!'"
"'WORDAGE, dowager!'"
"'Wordiness dies. SWORN.'" []
"'Workin['] Ink Row now, Rik?'"
"'Working, Rog?' / ' Wink.'"
"'Wow, ardent toward new? Water down...'"
"'Y'mind, Mindy?'"
"'Ya bored, dear boy?'"
"'Ya, it's' / 'Say it!' / 'I stay.'"
"'Ya thawt that way at...? Ah, why?'"
"'Ye mask keys, Ma? My sake?'"
"'Yeah, V. Heavy.'"
"'Yell at all yet?' / 'Ay.' / 'Tell.'"
"'Yells about ballet. Yo, us? Absolutely!'" []
"'Yes, Alan. Analyse.'"
"'Yes, buds. Debussy.'"
"'Yes, Mr. Myers.'"
"'Yes, Ms. Symes?' / 'Messy.'"
"'Yet all yell at a telly lately.' / 'Ay, tell.'" []
"'Yet...I'd die. T/Y, edity deity!'" []
"'Yield, team. Meet daily.'"
"'Yo, ask it. It's okay.'" []
"'Yo, ask Kay so.'"
"'Yo, Bec! Be coy!'"
"'Yo, Beth, the boy...hot...' / 'Bye!'" []
"'Yo, bloke, look!' / 'Bye.'"
"'Yo, bread, dear boy!'" []
"'Yo, chomp, my pooch!'"
"'Yo, dog!' / 'Goody!'"
"'Yo Herm! My hero!' / 'Roy? Meh.'"
"'Yo, I...thus is youth!'"
"'Yo, nudge Ed Young.' / 'Done, guy.'"
"'Yo, sport. Too-spry try.' / 'Oops.'"
"'Yo, Tad!' / 'Ay, [d-t]!' / 'Today!'"
"'Yoga? Aw, go away!'" []
"'Yoga? Odd. Yo, Go, Dad!' / 'Good day.'"
"'You need help.' / 'Elude, phoney!'"
"'You SMOKE, Moose? Yuk!'"
"'Zit? Scary!' / 'It's crazy.'"

table of posse bosses [xxv7]
blurb
"[a-word-u]hat Shasta" []
"[a-word-u]hole Sal Shoe" []
"[crap-u] Kid Pickard" []
"[crap-u]-Kind Pinckard"
"[d-word-u]-Why Wyndham" []
"[d-word-u]ed Dedman"
"[dick-u] Elsie Siedlecki"
"[dick-u] Fern Fendrick"
"[dick-u] Ian Kincaid" []
"[dick-u] Karon Kondracki"
"[dick-u] Leo Dolecki"
"[dick-u] Rae Radecki" []
"[dick-u] Teri Dietrick"
"[dick-u] Therese Ketcherside" []
"[dick-u] Wes Sedwick"
"[if player is male]Barry 'Bud'[else]Drab Ruby[end if] Bradbury"
"[if player is male]Sham Reg[else]Rash Meg[end if] Gresham" []
"[t-w] Watt"
"A-OK Tad Dakota AKA Tod"
"Abe 'Nah' Bahena"
"Abel 'Ranch' Labranche"
"Aborter Roberta" []
"Abrupt Pub-Rat Pa Burt"
"Abused Bad Sue"
"Ace Lord DeCarlo" []
"Ace Rogue Oceguera"
"'Achoo' Ochoa"
"Acne Lord Calderon" []
"Actorly Cal Troy" []
"Addled Ed Ladd"
"Adorned Denardo"
"Adorner Reardon"
"Adulating Daignault"
"Afflicter Ratcliffe"
"Alarmed Delamar"
"Albany Ana Bly"
"Alderman [if player is male]Mel Randa[else]Erma Land[end if]"
"All-Harms Marshall"
"All-Narc'd Crandall"
"All-Set Stella"
"All-Tripe Petralli"
"Alleged-Legal Ed"
"Allogenic Collegian [if player is male]Eli Colgan[else]Lila Gonce[end if]"
"Almighty May Light" []
"Alone Leona 'No Ale' O'Neal" [p]
"Amber 'Nah' Haberman"
"Amoral Alomar"
"Amy 'Nah' Hayman"
"Animated [if player is male]Adam Tien[else]Mia Dante[end if]"
"Animator Ramonita"
"Ann 'Nah' Hannan"
"Annoyer Ronayne" []
"Anthemic Teichman" []
"Any-Hat Nat Hay"
"Any-Musk Manusky"
"Ara 'Mo['] Aroma' Amaro" [p]
"Arm-Twist Tim Straw"
"Arm-Twister [if player is male]Master Wirt[else]Star Witmer[end if]"
"Armed Mr. Ade" []
"Aron 'Specs' Casperson"
"Arsey Ayers" []
"Art 'Nah' Trahan"
"Art Lover Val Torre"
"ASBO Sabo (a SOB)"
"Ash 'Nah' Shahan"
"Astonishing Tina Hissong"
"Astronomer Monterrosa"
"At-Large Art Gale" []
"Athletic Cal Hiett" []
"Auditor-Toad Rui"
"Average Erv Gaea"
"Avoidant [d-t] Viana"
"Avoider [if player is male]Dave Rio[else]Ida Rove[end if]"
"Back-Room Boor Mack" []
"Bad-at-Math Ahmad Batt"
"Bad-Breath [if player is male]Thad Baber[else]Baba Herdt[end if]"
"Bad Guy Bud Gay"
"Bad-Heart Beathard"
"Bad-Joke Jed Bako"
"Bad Lu Abdul"
"Bad-Neck Dan Beck" []
"Bad Sol So Bald"
"Bad-Taste Beast Tad"
"Bad-Teeth [if player is male]Ted Bathe[else]Dee Bhatt[end if]"
"Bad Tipper Debi Trapp"
"Bad Yob Bob Day" []
"Baffling Biff Lang"
"Bahler's Herbals"
"Baiter [ta] Erb" []
"Bald Ali Badilla"
"Bald Earl Beardall"
"Bald Eli Dibella"
"Bald Ellis Blaisdell"
"Bald Lee Debella"
"Bald Len Belland-Bendall"
"Bald Leo Bedolla" []
"Bald Les Blasdel"
"Bald Lon Bolland"
"Bald Nestor Balderston" []
"Bald Old Dad Boll" []
"Bald Oren Rabenold" []
"Bald Rene Breeland"
"Bald Rey Bradley" []
"Bald Reyes Beardsley"
"Bald Roy Bolyard"
"Balding Badling Glib Dan" []
"Balistreri Irritables"
"Balker Kabler"
"Ballestero Tolerables"
"Ballsy [if player is male]Sal Bly[else]Sally B[end if]" []
"Baloney-Boy Neal"
"Baltimore [if player is male]Emil Tabor[else]Elma Brito[end if]"
"Bam-Now Bowman"
"Banal Laban Alban"
"Bane Lord Bolander" []
"Bankrupt Punk Bart" []
"Bar Kid Drabik"
"Barb 'Clunk' Blackburn"
"Barger Garber" []
"Barky Rybka Rybak"
"Baron Nabor" []
"Baroness Bess Roan"
"Baronet Boatner" []
"Base Mr. Barmes"
"Bashful Alf Bush"
"Bastard Barstad" []
"Be-Illin['] Bellini"
"Be-Lucky Buckley"
"Beagler Laberge"
"Bear-Hug Baugher" []
"Bearded Bad Reed" []
"Bearish Abisher"
"Beast Arn Abrantes" []
"Beast Sonia Sebastiano"
"Beastly Stabley" []
"Beastly Ty Bales" []
"Becki 'Ranch' Rickenbach"
"Bein[']-Sly Lisenby"
"Beldin's Bindles"
"Belgian Big Neal"
"Belier Lieber"
"Bellicose [if player is male]Bill Escoe[else]Ilse Coble[end if]" []
"Benched Deb Chen"
"Bend-All Belland" []
"Bent-Dice Benedict"
"Bent Dr. Berndt"
"Berating-Binge Art Brigante"
"Berdine Bendier Breedin[']"
"Berquist Briquets"
"Bertlesen's trebleness"
"Bestial Ableist Eli Bast" []
"Bickery Rick Bey-Brickey"
"Big Body Bo Digby"
"Big-Boned Ed Gibbon"
"Big Brain Rina Gibb"
"Big Bully Bub Gilly"
"Big-Cigar Gib Craig"
"Big Gib"
"Big Hearted [if player is male]Ted Bagheri[else]Edith Gaber[end if]"
"Big Lean Gabe Lin" []
"Big Leo Loebig"
"Big Lin's Sibling" []
"Big Ma Gambi"
"Big Mel Gimbel"
"Big Mouth Tim Bough" []
"Big Mr. Dean Bridgeman"
"Big Ms. Elana Blasingame"
"Big Nose Sig Bone"
"Big Rat Bartig"
"Big Ron Gibron" []
"Big Tough Tobi Hugg"
"Bigot Hart Boatright"
"Bigot Kuhn Bouknight"
"Bigot Wrenn Brewington"
"Bily Nerd Brindley"
"Binger Ingber"
"Birdlike Kilbride"
"Black-Eyed Clyde Beak"
"Blades Sebald"
"Blaguer Glauber" []
"Blander Lad Bren"
"Blank Cheat Kaltenbach"
"Blesser Bessler"
"Blind Ma Lambdin"
"Blind Mart Milbrandt"
"Blind Ogre Olberding" []
"Blind Retha Hildebrant"
"Blind Rey Brindley"
"Blind Treva Vanderbilt"
"Blithe Beth Li"
"Bloated [d-t] Abel" []
"Bloated [if player is male]Bo Delta[else]Deb Alto[end if]" []
"Bloated Dolt [a-b]" []
"Blobby Bob Bly"
"Blooey O'Boyle" []
"Blotter Ol['] Brett Tolbert"
"Bluffing Biff Lung"
"Bo 'Nah' Hoban-Bohan"
"Bob Helt the Blob" []
"Bodgy Godby"
"Bogus Nutter Stoutenburg"
"Bogus Ren Burgeson" []
"Bold Bold Blob Dold"
"Bold Haired Hard Boiled [if player is male]Harold Bide[else]Diedra Bohl[end if]"
"Bold Lad Oddball Al B. Dold" []
"Boldy Loyd B. Dolby"
"Bolthead Theobald" []
"Bonier Rob Nei"
"Bony Al Boylan-Boylan-Baylon"
"Bony Art Brayton"
"Bony Carl Clayborn"
"Bony Clare Clayborne"
"Bony Ed Boyden" []
"Bony Liska Yablonski" []
"Bony Tula Labounty"
"Bony Wes Owensby"
"Boodler Robledo" []
"Boozer Rebozo"
"Boozing Biz-Goon Oz Gobin"
"Bored Adah Broadhead"
"Bored Ann Darbonne"
"Bored Arlen Oberlander" []
"Bored Lan Bolander" []
"Bored Rick Broderick" []
"Borg Fred Bergdorf"
"Boris 'Nah' Harbison"
"Borneo Oberon"
"Boss Adrien Bedrossian"
"Boss Arch Rossbach"
"Boss Earlie Labossiere"
"Boss Ellie Boisselle"
"Boss Karim Samborski"
"Boss Karol Alsbrooks"
"Boss Man Snob Sam"
"Boss Millie Bellissimo"
"Boss Miura Ambrosius"
"Boss Nettie Bissonette"
"Boss Reina Soberanis"
"Boss Renae Soberanes"
"Boss Rhea Boshears"
"Bossier [if player is male]Bo Reiss[else]Bess Rio[end if]"
"Bossy SOB Sy"
"Botcher Obrecht"
"Bowlin['] Wilbon"
"Boxin['] Bo Nix"
"Boy-Band Don-Baby"
"Brahman Branham"
"Braider Berardi"
"'Brains' Mel Silberman"
"'Brains' Oleg Gabrielson"
"Brat Bart Tabb-Tarr" []
"Brat Mel Lambert" []
"Bribe-O Robbie"
"Bribee Bieber"
"Briller Birrell"
"Bro Lew Bowler-Wrobel" []
"Brock 'Nah' Hornback"
"Broker Bo Kerr"
"Brutal Brat Lu" []
"Bucker Rubeck"
"Bugbear Burbage" []
"Bulkier Rik Blue"
"Bull-Neck Bucknell"
"Bullish Bill Hsu"
"Bully Lu Bly"
"Bum Anna Baumann"
"Bum Arn Barnum"
"Bum Brian Birnbaum"
"Bum Chan Buchman"
"Bum Eaton Beaumont"
"Bum Garey Amburgey"
"Bum Hagan Baughman"
"Bum Hans Bushman" []
"Bum Opal Palumbo"
"Bum Regena Greenbaum"
"Bum Rosena Rosenbaum"
"Bum Susan Nussbaum"
"Bum Teresia Baumeister"
"Burned Bud-Ren Dubner" []
"Burt 'Nah' Rathbun"
"Bushgoat Stobaugh" []
"Busy Rae Seabury"
"Busy-Work Ruby Skow"
"Butcher Bert Chu"
"Buttery Brute Ty"
"Byzantine Benny Zita"
"Cake/Tart Attacker Kat Trace"
"Callous Sheri Louischarles"
"Callous Sol Luca"
"Calm Archie Carmichael" []
"Calm Bo Balcom"
"Calm Cyr Mcclary"
"Calm Denis Mcdaniels" []
"Calm Doug Mcdougal"
"Calm Elias Escamilla" []
"Calm Enid Mcdaniel"
"Calm Gould Mcdougall"
"Calm Ira Marcial"
"Calm King Glickman"
"Calm Lina Mancilla"
"Calm Lon Collman"
"Calm Loria Camarillo"
"Calm Lucey Mccaulley"
"Calm Lyn Mcnally"
"Calm Mo Malcom"
"Calm Nell Mclellan"
"Calm Noe Coleman" []
"Calm Orel Marcello"
"Calm Red Mcardle" []
"Calm Rhea Lamarche" []
"Calm Risa Mariscal" []
"Calm Slick Mccaskill"
"Calm Trena Marcantel"
"Cancerous Oscar Cuen" []
"Caner Crean"
"Canonizer Canzoneri"
"Capable Pa Caleb"
"Car Kid Radick"
"Care-Poor Pecoraro"
"Carhart's catarrhs"
"Carpenito's recaptions"
"Carroty Rat Cory" []
"Cash-[']Em McShea"
"Cate 'Nah' Ancheta"
"Catone's octanes" []
"Cedary Darcey" []
"Cedeno's encodes"
"Celano's Seconal" []
"Cerebral Carl Eber"
"Chain Smoker [if player is male]Nick Ashmore[else]Rose Hickman[end if]"
"Chancery Cary Chen"
"Chased Ed Cash"
"Cheap-Rug [if player is male]Cap Huger[else]Peg Rauch[end if]"
"Cheat Burl Culbreath" []
"Cheat Ira Iracheta"
"Cheat Karl Thalacker"
"Cheat Koch Heathcock"
"Cheat Kyra Thackeray" []
"Cheat Lina Chatelain" []
"Cheat Lou Latouche" []
"Cheat Ly Atchley"
"Cheat Marion Chiaramonte" []
"Cheat Min Teichman" []
"Cheat Raul Archuleta" []
"Cheat Sabra Bastarache"
"Cheat Sue Eustache" []
"Cheat Theo Heathcote"
"Cheat Wink Whitenack" []
"Chief Rider Friederich" []
"Chiseler Chris Lee"
"Chiselled Dechellis"
"Chortling Clint Groh"
"Chubster Schubert" []
"Churlish Lush Rich"
"CIA-*** Caissa Isaacs"
"Cider Kid Redic"
"Cigar Man Ragin['] Mac"
"Cigar Nut Traci Ung" []
"Civil Alan Villicana"
"Clan-Herd Chandler"
"Clayborn's carbonyls"
"Clear VIP Percival" []
"Clearin['] Carline"
"Clodpole Dell Coop"
"Clouter Coulter"
"Cloying Long Icy Gino Cly" []
"Clued Ed Luc" []
"Coddled Cold Edd"
"Cogniser/Co-Signer Rescigno"
"Coiner [if player is male]Enrico[else]Corine[end if] Cerino"
"Cokin['] Nicko"
"Colasanti's scalations"
"Cold Ariane Candelario" []
"Cold Bad Bold Cad Doc Bald"
"Cold Beth Bechtold"
"Cold Earl Cardello" []
"Cold Eli Cedillo" []
"Cold Em McLeod"
"Cold Fae Defalco"
"Cold Fife Coffield"
"Cold Fish Flo Disch"
"Cold Frith Litchford"
"Cold Gil Cogdill"
"Cold Ira Dicarlo" []
"Cold Isa Salcido"
"Cold Liar Cardillo" []
"Cold Loris Odriscoll"
"Cold Man Calm Don"
"Cold Manda Macdonald"
"Cold Ola Collado"
"Cold Rae Decarlo" []
"Cold Rena Calderon" []
"Cold Renae Calderone" []
"Cold Roni Coldiron"
"Cold Su Duclos"
"Cold Thea Deloatch" []
"Collared Cardello" []
"Colonel Loco Len"
"Color-Blind [if player is male]Bill Cordon[else]Doll Corbin[end if]"
"Comeau's mucosae"
"Complex Mel P. Cox"
"Con Abi Bianco"
"Con Art Carton" []
"Con Rat Cantor" []
"Consalvo volcanos"
"Consmith McIntosh" []
"Consort Croston" []
"Consumer Scum Oren"
"Content Connett"
"Contini's nicotins"
"Control Clot Ron"
"Contuses Countess Su Tecson"
"Cool Bro Loco Rob"
"Cool Cat Al Tocco"
"Cool Kid Dick Loo" []
"Coopersmith's mesotrophics"
"Cop-shy psycho Posh Cy"
"Coppinger coppering" []
"Cougher Goucher"
"Cougher Reg Chou" []
"Counterfeiter Cerrito Fuente"
"Covered [if player is male]Doc Reve[else]Eve Cord[end if]"
"Coveter Eve Cort"
"Cowardly Waldo Cyr" []
"Cowlick Wilcock"
"Coy Fred Fordyce"
"Coy Len Conley"
"Coy Leo Cooley"
"Coy Mona Moncayo"
"Coy Nat Cayton"
"Coy Noe Cooney"
"Coy Ron Conroy"
"Coy Su Soucy"
"Coy Vern Convery"
"Crazy Bo Czybora"
"Creator Cerrato"
"Creep Lila Pierceall"
"Creep Roni Perricone"
"Creep Sal Placeres"
"Creep Tran Carpenter"
"Creep Trina Carpentier"
"Creep Von Provence"
"Criminal Marci Lin" []
"Cristi 'Nah' Christian"
"Crook Rocko"
"Crooked Cop Dock Cooper"
"Crotchin['] Crichton"
"Cruel Al Cuellar"
"Cruel Bash Laubscher"
"Cruel Bhat Buchalter" []
"Cruel Bo Curbelo"
"Cruel Diego Delguercio"
"Cruel Ed Crudele"
"Cruel Ena Laurence"
"Cruel Hoa Larouche"
"Cruel Laila Lauricella"
"Cruel Li Cerulli"
"Cruel Lila Lucarelli"
"Cruel Milo Cullimore"
"Cruel Ol['] Cerullo"
"Cruel Phil Cullipher" []
"Cruel Seth Schlueter"
"Cruel Singh Luchsinger"
"Cruel Stahl Altschuler"
"Cruel Thoma Crouthamel" []
"Cruel Toi Cloutier" []
"Crusher Schruer"
"Crushing [if player is male]Rich Sung[else]Cris Hung[end if]" []
"Curb Kid Burdick"
"Cure-All Cruella LaLucre" []
"Cutesie Eustice"
"Czar Racz"
"Da Fool Adolfo"
"Daimonic Dominica"
"Dale-Dog Delgado"
"Damner Erdman"
"Dander Denard"
"Dapper Ed Rapp-Pepard" []
"Dark Bales Barksdale"
"Dark Beech Hardebeck"
"Dark Burch Burckhard"
"Dark-Cap Packard"
"Dark Che Heckard"
"Dark Coy Ackroyd" []
"Dark Fedor Drakeford" []
"Dark Ice Radecki" []
"Dark Ines Iskander"
"Dark Len Kandler"
"Dark Leo Oldaker" []
"Dark Leon Kolander" []
"Dark Link Kirkland" []
"Dark Lins Slinkard"
"Dark Maree Rademaker"
"Dark Mean Adam Kern"
"Dark Mince Dickerman"
"Dark Nat Tankard"
"Dark Neeson Skenandore" []
"Dark-Nest Ekstrand"
"Dark Rich Hardrick"
"Dark-Room-Odor Mark"
"Dark Sam Kadrmas"
"Dark Scot Stockard" []
"Dark Sven-O Vondrasek" []
"Dark Swain Radwanski"
"Dark-Way Kay Ward"
"Darn-Low Waldron" []
"Data Driven [if player is male]Davie Arndt[else]Vita Darden[end if]"
"Daunting Tina Gund"
"Dauntless Stan LeSud" []
"Dead Cat Tad Cade"
"Dead End Ned Dade"
"Deadline-Dealin['] Ed"
"Deadly Del Day" []
"Deadly Ed Daly" []
"Deaf Lin Findale-Delfina" []
"Deafer Feared Freeda"
"Dealin['] Ned Ali" []
"Dealing Ida Glen" []
"Death-ish Tad Hsieh" []
"Death Row Drew Otha" []
"Debbie 'Ranch' Breidenbach"
"Debonair [if player is male]Ira Boden[else]Robin Ade[end if]" []
"Decatur Rude Cat" []
"Decayed Ace Eddy"
"Decorated Ector Dade"
"Decoyer Cory Dee"
"Decried Decider Cid Reed"
"Dee 'Nah' Headen"
"Dee 'Specs' Cespedes"
"Deep Jon Pendejo"
"Deferrer Ferderer"
"Defiling Fielding"
"Del 'Nah' Handel-Dahlen"
"Del 'Ranch' Chandler"
"Delaware Earl Wade" []
"Delayer Eardley"
"Dell 'Nah' Helland"
"Delma 'Nah' Haldeman"
"Demandin['] Ned Minda"
"Demanding Dan Deming"
"Demoter Tom Reed" []
"Demotist Modesitt"
"Depleter Delprete"
"Depraved Pa Vedder"
"Deranged Ned Edgar" []
"Derriere Riederer"
"Destroyer Rory Steed"
"Deviance Vice-Dean Nice Dave"
"Deviser DeVries" []
"Dexterous Tex Souder"
"Dim-Bore Dire-Mob Mr. Dobie" []
"Dim Bulb Mild Bub"
"Dire Tat Attired Ed Raitt"
"Dirty Slob Sid Rybolt"
"Diseased Sid Saeed"
"Dishonest [if player is male]Host Denis[else]Tish Edson[end if]" []
"Disowned [if player is male]Sidd Owen[else]Ines Dowd[end if]" []
"Do-[']Em-Mo['] Ed"
"Dodger God Red"
"Dog-Breath [if player is male]Bart Hodge[else]Beth Drago[end if]"
"Doing-OW Goodwin-Wooding" []
"Doltish Sid Holt" []
"Dolty Dy Olt"
"Domo Arn Morando" []
"Domo Bettis Sidebottom"
"Domo Chung Mcdonough"
"Domo Cindie Didomenico"
"Domo Cline Delmonico"
"Domo Eryn Donmoyer" []
"Domo Gage Goodgame" []
"Domo Howe Homewood"
"Domo Huron Omohundro"
"Domo Lance Delmonaco" []
"Domo Leifer Moorefield" []
"Domo Nell Mondello"
"Domo Pace Deocampo"
"Domo Raina Mooradian"
"Domo Ranae Enamorado"
"Domo Raval Almodovar"
"Domo Ren Ormonde"
"Domo Rina Raimondo"
"Domo Rowe Woodrome"
"Domo Shaw Woodhams"
"Don't-Care [d-t] Crean" []
"Don't-Care Ed Cantor" []
"Don't-Fly Tod Flyn"
"Done-By Bony Ed Dobney" []
"Done-Deal [if player is male]Eldon Ade[else]Lea Odden[end if]"
"Doom Rep Perdomo"
"Doom-Way Maywood"
"Doomer Ed Odom"
"Dooming Domingo" []
"Doorman Don Mora" []
"Doris 'Nah' Hardison"
"Doris 'Ranch' Richardson"
"Doser-So-Red Erdos"
"Double-Talk [if player is male]Odell Kubat[else]Bella Dutko[end if]"
"Douchebag Doug Beach"
"Dour [n-t] Tondreau"
"Dour Abe Bordeau" []
"Dour Ali DiLauro"
"Dour Beau Boudreau"
"Dour Erin Ridenour" []
"Dour Gina Guardino"
"Dour Jan Jourdan" []
"Dour Mae DeMauro" []
"Dour Mel Moulder"
"Dour Shantel Southerland" []
"Dour Sol Losurdo"
"Dourest Stouder"
"Doxin['] Dixon" []
"Dr. Low-World"
"Dr. Sasha Hard[a-word]"
"Drab Alissa Baldassari"
"Drab Ana Rabadan"
"Drab Berry Bradberry" []
"Drab Chester Badertscher"
"Drab Dorine DiBernardo"
"Drab Ed Bedard"
"Drab Ella Beardall" []
"Drab Elsa Balderas"
"Drab Elsy Bardsley" []
"Drab Elyse Beardsley" []
"Drab Erin Bernardi"
"Drab Eryn Bernardy" []
"Drab Fidel Bradfield"
"Drab Glen Bergland-Landberg"
"Drab Lee Baldree"
"Drab Leif Barfield" []
"Drab Len Breland" []
"Drab Leo Laborde" []
"Drab Leon Bolander" []
"Drab Ligia Garibaldi"
"Drab Link Birkland"
"Drab Liz Blizard"
"Drab Lon Borland" []
"Drab Lora Labrador"
"Drab Lorene Oberlander" []
"Drab Loy Bolyard" []
"Drab Lyn Lybrand"
"Drab Marie Arrambide"
"Drab Milo Lombardi" []
"Drab Ming Bridgman"
"Drab Mona Boardman"
"Drab Munger Bumgardner"
"Drab Nigel Baldinger"
"Drab Noe Broaden" []
"Drab Ola Labrado"
"Drab Oren Bernardo" []
"Drab Rae Barreda"
"Drab Rhee Eberhard"
"Drab Rina Brainard"
"Drab Ronnie Bernardino" []
"Drab Ros Robards"
"Drab Rose Debarros"
"Drab Ross Brossard"
"Drab Ruby Bradbury" []
"Drab Russo Broussard"
"Drab Sara Barradas"
"Drab Sean Banderas"
"Drab Seth Bethards"
"Drab Una Brandau" []
"Dragon Gordan Dorgan" []
"Drawin['] Darwin" []
"Drawling Ringwald" []
"Dreaded Red Dade"
"Dreadful Dude Ralf" []
"Dreary Red Ray" []
"Dreisbach Bedchairs"
"Droessler Solderers"
"Droner Dorner"
"Drongo Gordon"
"Drooling [if player is male]Lord Gino[else]Nori Gold[end if]"
"Drooly Old Roy"
"Droopiest Depositor Pedro Tsoi"
"Drowsin['] Windsor" []
"Dry-Lie Ridley"
"Drysdale Saddlery"
"Dude Earl Delauder" []
"Duel Ref Ulf Reed" []
"Dull Rep Prudell"
"Duller Rudell"
"Dumb Carlen Cumberland"
"Dumb-Dumb M-Dub"
"Dumb Esta Bumstead"
"Dumb Garner Bumgardner" []
"Dumb Ira Rimbaud"
"Dumb Linnea Lindenbaum"
"Dumb Malena Mandelbaum"
"Dumb Noreen Demonbreun"
"Dumb Olga Goldbaum"
"Dumb Rees Bermudes"
"Dunce Rolf Lunceford"
"Dyed Eddy"
"E-Z Rep Perez"
"Earthliest Stealthier [if player is male]Elias Rhett[else]Retta Hiles[end if]"
"Earwig Gawrie"
"Easy-Ayes Seya Seay"
"Easy-Life Elise Fay"
"Eat-Most Tom East" []
"Eatsy Yates"
"Ed 'Nah' Haden"
"Ed 'Ranch' Chenard"
"Edenic Denice"
"Edington's denotings"
"Education-Cautioned [i-n] Doucet"
"Eevil Elvie"
"Effing Giffen"
"Eight-Toes Theo Geist"
"Elderly Red Lyle"
"Elegant Lee Tang" []
"Elim-Emil" []
"Elk Grove Keg Lover Reg Volek"
"Elmo 'Nah' Holeman"
"Emil 'Nah' Heilman-Hileman"
"Emmaline's melamines"
"Enactor Cantero" []
"Enclaved Nev Cadel"
"End-All Lad Len"
"End-All Leland" []
"Endorser Renderos"
"Endowed Don Weed"
"Engaged Ed Gagne" []
"Engaoled DeAngelo"
"Engirded Eddinger"
"Engrosser Roger Ness"
"Enigma Geiman"
"Enigmatic Macie Ting"
"Ensilaged DeAngelis" []
"Ensnared Andersen"
"Ephemerist Peter Sheim"
"Epperson propenes"
"Erlking Klinger"
"Ernie 'Ranch' Nachreiner"
"Errant Terran Ratner" []
"Erratic Art Rice" []
"Evader [if player is male]Dav Ree[else]Eve Ard[end if]" []
"Evaders-Adverse Deavers" []
"Evanson novenas"
"Everard's adverser"
"Evil [n-t] Valiente" []
"Evil Aaron Valeriano"
"Evil Ada Deavila" []
"Evil Al Vallie" []
"Evil Alba Bellavia"
"Evil Alla Lavallie"
"Evil Anton Valentino" []
"Evil Beau Beliveau" []
"Evil Beula Belliveau" []
"Evil Butler Tuberville"
"Evil Cara Cavalier" []
"Evil Carl Carville"
"Evil Cher Leverich"
"Evil Ciara Cavalieri"
"Evil Dan Ledvina" []
"Evil Dara Delariva" []
"Evil Del Deville"
"Evil Earl Valliere" []
"Evil-Eyes [if player is male]Elvis Yee[else]Ivy Leese[end if]"
"Evil Gaunt Vigneault"
"Evil Gena Levangie"
"Evil Gino Viglione"
"Evil Larson Villasenor" []
"Evil Len Neville"
"Evil Les Seville"
"Evil Lon Novelli-Veillon"
"Evil Lori Riviello"
"Evil Man Vain Mel"
"Evil Mayer Vermilyea"
"Evil Milan Mainville"
"Evil Nola Avellino"
"Evil Ona Avelino"
"Evil Rae Larivee" []
"Evil Reader Laverdiere"
"Evil Regan Graveline"
"Evil Rios Silverio"
"Evil Risa Silveira"
"Evil Ro Oliver"
"Evil Rob Boliver"
"Evil Rosa Olivares" []
"Evil Russ Versluis"
"Evil Sagan Gavilanes" []
"Evil Sal Sevilla"
"Evil Sir Silveri"
"Evil Sloan Sevillano" []
"Evil Sona Lievanos"
"Evil Tarra Valtierra" []
"Evil Tona Violante" []
"Evil Tora Voltaire" []
"Evil Zora Olivarez" []
"Eviller Reville"
"Excitable Tex Bacile"
"Excited Dex Tice"
"Excluder Rex LeDuc"
"Exonerated Tex DeRoane"
"Expelled Lex Epdel"
"Extra Fine Neat Fixer Tex Efrain"
"Fadlier Def Liar Elfrida"
"Faining Finigan"
"Fake-Gold Alf Godek"
"Fake-Grin Rage-Fink Keri Fang" []
"Fake Lin Finklea"
"Fake Nice Ace Finke"
"Fake Rico Kiracofe"
"Faltering Taflinger"
"Fanlike Fink Lea" []
"Far-Crowd Crawford"
"Fasching chafings"
"Fashionable [if player is male]Blaine Shoaf[else]Fiona Shelba[end if]" []
"Fashionable [if player is male]Fabian Lohse[else]Felisa Hoban[end if]"
"Fast Dione Distefano"
"Fast Dorn Stanford" []
"Fast Eiler Saterfiel"
"Fast Fats"
"Fast-Lane [if player is male]Stan Leaf[else]Tana Self[end if]"
"Fast Linde Stanfield" []
"Fast Loose Fleta Osso"
"Fast Lore Laforest"
"Fast Lugo Falgoust"
"Fast Ol['] [if player is male]Alf Tso[else]Flo Ast[end if]"
"Fast Rhee Feathers"
"Fat Amos Mostafa"
"Fat Boor Barfoot"
"Fat Clem Metcalf" []
"Fat Desire DeFreitas" []
"Fat Edison DiStefano" []
"Fat Ellinger Lingafelter"
"Fat Enos Stefano" []
"Fat Hilde Hatfield" []
"Fat Ines Stefani" []
"Fat Len Flaten"
"Fat Lise Fleitas" []
"Fat Lola Tafolla"
"Fat Lon Lafont"
"Fat Omer Frometa"
"Fat Rose Foresta" []
"Fat Schindel Stanchfield"
"Fat Sherlene Ashenfelter"
"Fat Su Faust"
"Fat Tyler Flattery" []
"Fat Weidler Waterfield" []
"Fat Zig Zaftig"
"Faulty Ulf Tay"
"Fear-Fare Rafe Efra"
"Feared Wilt Waterfield" []
"Fearful Lauffer"
"Fed-Coal DeFalco" []
"Federal Elfreda" []
"Feebler Lefebre" []
"Feistier Seiferti" []
"Felon Anita Lafontaine"
"Felon Cari Fernicola" []
"Felon Edris Rosenfield" []
"Felon Ethan Altenhofen"
"Felon Les Ellefson"
"Felon Mac Flamenco"
"Felon Odis Ildefonso" []
"Felon Rico Florencio" []
"Felon Rod Florendo" []
"Felonious [if player is male]Louie Fons[else]Foolin['] Sue[end if]"
"Fencer Ferenc"
"Fend-Rash Fred Nash" []
"Fetichist Fischetti"
"Fiends-Ilk Sinkfield" []
"Fierce Recife"
"Fighter Egfirth"
"Filed-Skin Sinkfield"
"Financier [if player is male]Eric Finan[else]Ciera Finn[end if]"
"Findable Banfield" []
"Finisher Erin Fish"
"Fish Breath [if player is male]Bashir Heft[else]Sheba Firth[end if]"
"Five-Foot Vito Eoff"
"Fixater Tex Fair"
"Flag Anna Flanagan"
"Flag Dorn Langford"
"Flag Kerin Garfinkel"
"Flag Moen Fogleman"
"Flag Nina Flanigan"
"Flag Rand Landgraf"
"Flag Reid Garfield"
"Flag Renee Greenleaf"
"Flag Roe Laforge"
"Flag Wong Wolfgang"
"Flag Worm Wolfgram"
"Flashy Shy Alf" []
"Flat-Sneer [if player is male]Ernst Leaf[else]Erna Felts[end if]" []
"Flayin['] Finlay"
"Flicker Elfrick"
"Flicking Gil Finck"
"Fling-[']Em Fleming"
"Fondling Finngold"
"Forceful Cleo Ruff" []
"Forgin['] Grifon" []
"Foul-Breath [if player is male]Hobert Lauf[else]Ruthe Falbo[end if]"
"Fouler Ulf Roe"
"Fox Drew Wexford"
"Fox Red Exford"
"Fragile Eli Graf"
"Fraud Bennie Bauernfeind"
"Fraudulent Ren DuFault"
"Free-Lunch [if player is male]Luc Hefner[else]Lue French[end if]"
"Fricker Ferrick"
"Fridge Ferdig"
"Frightful Riff Gluth"
"Friller Ferrill"
"From-Bad Bamford"
"Frowner Renfrow"
"Fryer Ferry"
"Futzer Freutz"
"Gafflin['] Naff Gil"
"Gaming Gig-Man M. Giang"
"Gang Leader Delagrange" []
"Gangster Greg Nast" []
"Ganker [if player is male]Reg Kan[else]Kera Ng[end if]"
"Garcon Corgan"
"Gassy Eli Yglesias"
"Gaudy DuGay"
"Gaunt Ali Lantigua"
"Gaunt Amber Baumgarten" []
"Gaunt Delia Daigneault"
"Gaunt Edris Staudinger"
"Gaunt Levi Vigneault" []
"Gaunt Lida Daignault" []
"Gaunt Mila Manigault" []
"Gaunt Moe Montague"
"Gazer Zager"
"Geathers the Sarge" []
"Generous [if player is male]Gene Urso[else]Sue Groen[end if]"
"Genial-Linage Angeli"
"Get-Hard Ed Garth"
"Ghastly Lysaght" []
"Ghostly Syg Holt"
"Giardini's diarising"
"Giggler Greg Gil"
"Glarin['] Al Ring"
"Glib Loner Bollinger"
"Glib Nerd Lindberg"
"Glib Ol['] Bill 'Go Big' Oll" [p]
"Glitziest Stieglitz"
"Glutton Tut Long"
"Gnawer Wagner"
"Gob-is-So-Big Boss Gibogo"
"Gobbler Bloberg"
"Goblin Boling"
"Godfather Gofer Thad" []
"Goin[']-Igno['] Gino"
"Goin[']-Mod Domingo" []
"Going-Aces Gascoigne"
"Golda 'Nah' Hoagland"
"Golden God Len DeLong" []
"Golfer Nut Flo Gunter"
"Goner Goren Rogen" []
"Goober Bo Gore" []
"Good-Munch Mcdonough" []
"Goon Amina Manoogian"
"Goon Ed Gooden"
"Goon Hans Hoganson"
"Goon Laci Cogliano" []
"Goon Leif Fenoglio" []
"Goon Lin Longino"
"Goon Lu Luongo"
"Goon Melton Montelongo"
"Goon Meri Geronimo" []
"Goon Robin Bongiorno" []
"Goon Rubi Bourgoin"
"Goon Ruth Roughton"
"Goon Tisa Agostino"
"Goon Vi Govoni"
"Goons-Pal Spagnolo"
"Gorgeous Grouse Og"
"Gorgon Ron Ogg"
"Gormless Gross Mel"
"Gory Al Gaylor"
"Gory Dan Graydon" []
"Gory Kena Kornegay"
"Gory Ula Gourlay"
"Gouger Ogg Ure"
"Gourmand Mug Doran" []
"Grab-is-OK Bograkis"
"Gracious Guarisco" []
"Gramma Magram"
"Grand Al Garland-Ragland"
"Grand Berry Grandberry"
"Grand Bo Bragdon"
"Grand Burt Brungardt"
"Grand Ethel Engelhardt"
"Grand-Evil Vanglider" []
"Grand Flo Langford"
"Grand Ione Digennaro"
"Grand Levi Vangilder"
"Grand Li Darling"
"Grand Moon Mondragon"
"Grand Peters Prendergast-Pendergrast"
"Grand Rosen Granderson"
"Grannie Nearing"
"Gray-Areas Sara Geary"
"Great Lord Art Gerold"
"Greebo Boeger"
"Greed-Orgy Ed Gregory" []
"Green Belt Engelbert"
"Green Bull Ellenburg"
"Green Cad Ned Grace"
"Green Rube Neuberger-Berenguer"
"Green Sick Seckinger"
"Greenwich [if player is male]Rich Egnew[else]Cher Ewing[end if]"
"Grey Lee Greeley"
"Gridlock Rick Gold"
"Grif the Fighter" []
"Groom[if player is male]-Mo-Org Mr[else]s-Mo-Orgs Mrs[end if]. Goo"
"Groper Peg Orr" []
"Gross Olin Rossignol"
"Grunt-o Truong"
"Grunty Ty Rung"
"Gum Chewer Hue McGrew"
"Gun Lover Vern Lugo"
"Gus the Hugest"
"Habitue Thibeau"
"Hack-Jobs Jack Bosh"
"Haggler Greg Ahl"
"Hairy Amos Yamashiro"
"Hale-Snort Rosenthal" []
"Handsier Sir Haden Sheridan" []
"Handsome Sham Deon" []
"Hard Cris Richards"
"Hard Em Dahmer-Derham"
"Hard Len Handler"
"Hard-Line Land Heir [if player is male]Hal Riden[else]Erin Dahl[end if]" []
"Hard-Sell Rash Dell"
"Hardened [if player is male]Ned Hader[else]Dede Rahn[end if]"
"Hardened [if player is male]Reed Hand[else]Edda Hern[end if]" []
"Hardline Herlinda Lenhardi" []
"Hardman Dr. Mahan" []
"Harelip Phailer Ralphie"
"Harm Ace Amacher"
"Harm-Nut Thurman"
"Harmed Dahmer" []
"Harming Ingrahm"
"Harsh Tia Siharath"
"Hasty Ty Ash"
"Hate-Aged Hag Deeta" []
"Hated Flo Oftedahl"
"Hated Guy Daughety"
"Hated Lon Odenthal" []
"Hated Nyla Delahanty"
"Hated Ol['] Rowe Leatherwood" []
"Hated Rolf Oldfather"
"Hated Sal Halstead" []
"Hated Sam Steadham"
"Hated Slim Delashmit" []
"Hated Su Hustead"
"Hats Dude Thaddeus"
"Hauter Huerta"
"Hayseed Ed Hayes"
"Head Gamer Dee Graham"
"Headcase Shea Cade"
"Headier Heredia" []
"Heartless Sal Tesher"
"Heavy Smoker Vy Shoemaker"
"Hectoring Creighton" []
"Heinous Ines Hou" []
"Held-Back [if player is male]Chad Belk[else]Deb Chalk[end if]"
"Hell-No Len Ohl" []
"Hellion Leo Linh" []
"Henlike Heinkel"
"Herbalist Trish Bale" []
"Herder Dreher"
"Heretic Eichert" []
"Herr Abe Haberer"
"Herr Al Harrel"
"Herr Billy Berryhill"
"Herr Ed Dreher"
"Herr Ira Harrier"
"Herr Nick Kirchner"
"Herr Pat Prather"
"Herr Rico Corriher"
"Herr Scot Crothers"
"Herr Seth Thresher"
"Herr Sid Shrider"
"Herr Tad Erhardt"
"Herr Ty Ryther"
"Hi-Class Sal Isch"
"Hip Sly Phylis"
"Hitman Tim Han" []
"Hoardy Rod Hay"
"Hog Luc Clough"
"Homeless Elmo Hess"
"Honker Hronek"
"Hooch and Ad Honcho Chad Hoon"
"Hooting Hit-Goon Hog [toti]"
"Horrible [if player is male]Rob Riehl[else]Rori Hleb[end if]"
"Hot Ned the Don"
"Hot Ron Horton"
"Howitzer Zoe Wirth" []
"Howly Hy Low"
"Hoyden Doheny"
"Huckster [if player is male]Chet Rusk[else]Ruth Seck[end if]"
"Huckster Kutscher" []
"Huge Tony, the Young Honey-Gut"
"Hulloing Loughlin" []
"Hummer Mr. Hume"
"Humorless Russ Holme"
"Hussy Shy Su"
"I-Be-Scum Buscemi"
"I-Stank Atkins"
"Ice Kid Dickie"
"Iceberg Big Cree"
"Iced-Over Eric Dove" []
"Icer Eric Rice"
"Icky Ed Dickey"
"Icy Man Nic May"
"Icy Norm McInroy"
"Ignoble Gil Bone" []
"Ignoble Leo Bing" []
"Ignoramus [if player is male]Gus Marion Sung[else]Ros Gumina[end if]" []
"Ignoramus [if player is male]Mario Sung[else]Risa Mungo[end if]"
"Ignorant Arington" []
"Ignorer Roering"
"Igor-All-Gorilla"
"Ill-Ache Ace Hill"
"Ill Con Collin"
"Ill-Gagner Gallinger"
"Ill-Groan Granillo"
"Ill-Hunger Hullinger"
"Ill-Razor Zorrilla"
"Ill Rube Buller Bill Ure"
"Immenser Rene Mims"
"Impatient Mina Petit"
"Imperial Palmieri" []
"Impure Don, Impounder"
"In-Dock Con Kid Dickon"
"In-Early Lani Rey"
"In-Force Ren Fico" []
"In-Jail Jilian"
"In-Style Ty Niles-Tinsley"
"In-Style Yeltsin" []
"Incensor Rincones"
"Inch-Chin Nic Hinch"
"Indulger [if player is male]Gil Ruden[else]Geri Lund[end if]"
"Inert-Bans Bannister"
"Inflamed '[d-word-u] Life' Man Fidel" [p]
"Inhumane [if player is male]Huie Mann[else]Nina Hume[end if]"
"Injuro-Junior Jon Rui" []
"Innocent Tien Conn"
"Introvert Trot Ervin" []
"Invalid Vin Dial"
"Ire-Fest Seifert" []
"Ireless Eissler"
"Islander Dan Riles"
"Islander Sindelar" []
"Isolater Lita Rose"
"Iva 'Ranch' Chavarin"
"Jackhole [if player is male]Joe Chalk[else]Jae Holck[end if]"
"Jaywalker Jake Lawry"
"Jealous Joe Saul" []
"Jen-Dog DeJong" []
"Jerkwad Jed Wark"
"Jobless Jess Bol"
"John-Doe Jed Hoon"
"Jouster Joe Rust"
"Jumbo Bum OJ"
"Jus-Nod Judson"
"Just-Bored Bud Trejos" []
"Kestrel Sterkel"
"Kid Anson Adkinson" []
"Kid Arch Hardick"
"Kid Arn Kinard"
"Kid Ash Kadish"
"Kid Barnes Bednarski"
"Kid Berna Bednarik" []
"Kid Bernal Birkeland" []
"Kid Briel Kilbride" []
"Kid Cain Kincaid" []
"Kid Carmen Dickerman" []
"Kid Carr Rickard"
"Kid Cerro Roderick" []
"Kid Cher Hedrick" []
"Kid Cheree Heidecker"
"Kid Chet the [dick-u]"
"Kid Cole Dolecki" []
"Kid Egnew Wedeking"
"Kid Elyn Kindley"
"Kid Ena Deakin"
"Kid Erich Heidrick" []
"Kid Fran Fradkin"
"Kid Gena Kaeding"
"Kid-Getter Kittredge"
"Kid Gunner Kundinger"
"Kid Hal Khalid-Hladik"
"Kid Hong Hodgkin" []
"Kid Inger Dierking" []
"Kid Kena Kinkead"
"Kid Kina Kinkaid" []
"Kid Larch Hrdlicka"
"Kid Lawson Landowski" []
"Kid Lee Keidel"
"Kid Len Elkind" []
"Kid Lyons Dolinsky"
"Kid Mason Domanski" []
"Kid Mena Dikeman" []
"Kid Moni Dominik"
"Kid Nell Kindell"
"Kid Oslin Dolinski" []
"Kid Ramos Radomski" []
"Kid Rens Dirksen"
"Kid Rensch Hendricks"
"Kid Rheba Birkhead"
"Kid Rourke Ouderkirk"
"Kid Sean Deakins"
"Kid Selina Danielski" []
"Kid Serna Iskander" []
"Kid Simon Dominski"
"Kid Sloan Nadolski"
"Kid Somer Skidmore"
"Kid Sona Adkison"
"Kid Stan Stadnik"
"Kid Sul Dulski"
"Kid Teresa Kierstead"
"Kid Theron Thorndike"
"Kid Trice Dietrick" []
"Kid Vanselow Levandowski"
"Kid Zane Dziekan"
"Kim 'Ranch' Kirchman"
"Kinder Kid Ren"
"King Al Glinka"
"King Arnott Tarkington"
"King Boor Brooking"
"King Borges Konigsberg"
"King Cal Glackin"
"King Corless Grossnickle"
"King Cortes Stockinger" []
"King Lee Keeling"
"King Les Kesling"
"King Price Pickering"
"King Rios Roginski"
"King Saul Klausing"
"King Scot Stocking"
"Kinglier Kreiling" []
"Knicker-Kick Ren"
"Knifey Finkey"
"Knived Kid Nev"
"Knowing Nik Wong, King Now"
"Kory 'Nah' Hornyak"
"Kray Kyra"
"Kremlin Mr. Klein"
"Kris 'Nah' Harkins"
"Kundinger Underking" []
"Labeled DeBella" []
"Labourer Lou Barre"
"Lad Bo, a Bold Bad Ol['] Baldo"
"Ladrone Renaldo" []
"Ladylike Alley Kid Ida Kelly"
"Lagered Regaled Arledge" []
"Lame Gil 'I'm Legal' Millage"
"Lame Loy O'Malley"
"Laming Gilman" []
"Land Ace Candela"
"Landlord Droll Dan"
"Larcenous Len Caruso" []
"Lardy Ben Brandley" []
"Larksome Marsolek"
"Lassoer Rosales" []
"Laughing Gil Huang"
"Laurence's Ceruleans"
"Lazy Bum Luz Byam"
"Le Bum Blume"
"Le Weird Drew, Lie Wielder" []
"Lead-Fair Alfredia"
"Leader Ed Earl" []
"Leader Russi Deslauriers"
"Lean Cam MacNeal"
"Lean Mo 'No Meal' Malone" [p]
"Lean Neal Lane" []
"Lean Posh Alphonse" []
"Leanna's Anneals"
"Leathery Atherley"
"Lee Smith the Slime"
"Lem 'Lots-to-Smell' Mostell" [p]
"Leprous Sproule"
"Les 'Nah' Hansel"
"Less-Mean Esselman"
"Lesser Dr. Dressler"
"Lethargic Chari Gelt" []
"Level-Head [if player is male]Dave Helle[else]Delva Ehle[end if]"
"Leveler Revelle"
"Lew 'Nah' Whalen"
"Lewd Ann Newland"
"Lewd Anson Lansdowne" []
"Lewd-Call Caldwell"
"Lewd Dirt Twiddler Wilt Redd"
"Lewd Fester Westerfeld"
"Lewd Lad Waddell"
"Lewd Osterman Westmoreland" []
"Lewd Seifert Westerfield"
"Lewd Ungar Gruenwald"
"Lewisham [if player is male]Emil Haws[else]Ami Welsh[end if]"
"Li'l Pig-Lip Gil"
"Liar [d-t] Altidor" []
"Liar Age Alegria"
"Liar Alf Fairall"
"Liar Bee Belaire"
"Liar Bergen Linebarger"
"Liar Berta Baltierra"
"Liar Beth Thielbar"
"Liar Bo Bailor"
"Liar Boesch Charlebois"
"Liar Bogdon Longobardi" []
"Liar Branca Albarracin"
"Liar Cade Caldeira" []
"Liar Cal Arcilla" []
"Liar Candi Cardinali"
"Liar Cher Charlier"
"Liar Chloe Chiarello" []
"Liar Clem Marcelli"
"Liar Clemon Marcellino" []
"Liar Cloud Couillard"
"Liar Cox Lacroix"
"Liar Dale Dallaire"
"Liar Darcel Cardarelli"
"Liar Dave Delariva" []
"Liar Deacon Candelario" []
"Liar Del Laidler"
"Liar Deon Andreoli" []
"Liar Don Orlandi" []
"Liar Ed DeLira"
"Liar Edson Leonardis" []
"Liar Eldon Nardiello" []
"Liar Elmes Marseille" []
"Liar Elston Santorelli" []
"Liar Elvin Rainville" []
"Liar Engel Langelier" []
"Liar Eve Larivee" []
"Liar Gatta Tartaglia"
"Liar Glen Allinger" []
"Liar Goon Longoria"
"Liar Hemp Lamphier" []
"Liar Huett Theriault"
"Liar Isobel Bellisario"
"Liar Lad Radilla"
"Liar Lamas Amarillas" []
"Liar Lan Ranalli"
"Liar Lance Racanelli"
"Liar Lea Allaire"
"Liar LeMon Romanelli" []
"Liar Len Rinella"
"Liar Lester Serritella" []
"Liar Lev Averill" []
"Liar-Lovin['] Villarino"
"Liar Mabel Mirabella" []
"Liar Mae Laramie"
"Liar Moog Girolamo"
"Liar Ned Reiland" []
"Liar Oma Almario"
"Liar Omer Larimore"
"Liar Oren Lorraine" []
"Liar Patton Portalatin"
"Liar Paz Alpizar"
"Liar Rhett Ritthaler"
"Liar Romer Larrimore"
"Liar Seibert Balestrieri"
"Liar Stegen Easterling" []
"Liar Stella Saltarelli"
"Liar Tavares Salvatierra"
"Liar Tess Lassiter" []
"Liar Tigue Gualtieri"
"Liar Tobin Bartolini"
"Liar Treva Valtierra" []
"Liar Trude Iturralde"
"Liar Veeder Laverdiere" []
"Liar Vose Oliveras" []
"Liar-Weeny Earlywine"
"Liar Yves Sylveira-Silveria"
"Libeled Bill Dee"
"Libeler Bill Ree-Bleiler" []
"Libertine [if player is male]Bertie Lin[else]Britni Lee[end if]"
"Lie-Mug Miguel" []
"Lifer Friel"
"Limper Mr. Pile"
"Lin 'Nah' Hanlin"
"Listener Eli Ernst"
"Literal Liar Tel" []
"Lither Hitter Hiller"
"Litigous Sot Luigi"
"Litterbug [if player is male]Gilbert Tu[else]Britt Guel[end if]"
"Lo-Grade Real Dog Geraldo" []
"Lo-Tint Litton"
"Loan Shark Noah Sklar"
"Loather Leo Rath" []
"Loathsome [if player is male]Hamlet[else]Thelma[end if] Soo"
"Loathsome [if player is male]Theo Lomas[else]Thea Olmos[end if]" []
"Lobsterman Lambertson"
"Localist Castillo" []
"Lock Ace Leacock"
"Lodesman Smaldone"
"Lois the Hostile"
"Lon 'Nah' Hanlon"
"Lone Ty Leyton-Yelton"
"Loner Loren Olner" []
"Loner Lorne Rolen" []
"Long-Mad Goldman"
"Long-Revels Snellgrove"
"Long Stan 'Not-Slang' Langston" [p]
"Lost Heir [if player is male]Eli Short[else]Teri Sohl[end if]" []
"Loud Ben Boulden" []
"Loud Berna Abdelnour" []
"Loud Bore Rod Boule" []
"Loud Clair Couillard" []
"Loud Ernst Osterlund" []
"Loud Gal Dougall"
"Loud Gehrig Loughridge"
"Loud Ira Dilauro" []
"Loud Laci Caudillo" []
"Loud Levi Douville" []
"Loud Ma Dumlao"
"Loud Nat Daulton" []
"Loud Obert Trueblood"
"Loud Oscar Colasurdo"
"Loud Ros Losurdo" []
"Loud Shen Hudelson"
"Loud Short Shout Lord Dr. Lou Tosh"
"Loud Tresa Trousdale" []
"Loud Wolf Fullwood"
"Louder Red Lou Olerud-DeRulo" []
"Loudest Stud Leo" []
"Lousy Sol Yu"
"Lovable Ol['] Belva" []
"Low-Born Ron Blow"
"Low-Class-Scowls Al"
"Low-End Don Lew"
"Low Kid Kildow"
"Low Les Sowell" []
"Low Nat Walton"
"Low Seb Bowles" []
"Low Stan Walston" []
"Low-Tax Ox Walt"
"Lowballin['] Will Bolan"
"Loyalist Olly Tsai"
"Lucrative Victualer [if player is male]Avi Cutler[else]Lucia Vert[end if]" []
"Lustre Luster Russell Ruett"
"Lute 'Nah' Henault"
"Mac 'Nah' Mancha"
"Macho Man Noah Camm"
"Mack 'Nah' Hackman"
"Mad Ace Maceda"
"Mad Alan Mandala"
"Mad Alden Addleman"
"Mad Angelo Magdaleno" []
"Mad Arie Demaria"
"Mad Arlen Alderman" []
"Mad Aron Marando" []
"Mad Barrie Arrambide" []
"Mad Ben Debnam" []
"Mad Bernie Biederman"
"Mad Brice Macbride"
"Mad CEO Macedo" []
"Mad Chong Mcdonagh"
"Mad Cole Macleod" []
"Mad Corie Mordecai" []
"Mad Cris McDaris"
"Mad Dion Diamond" []
"Mad Earl Delamar" []
"Mad Efren Federman" []
"Mad Eli Delima"
"Mad Elia Almeida"
"Mad Else Ledesma"
"Mad Erich Demarchi"
"Mad Ewen Weedman"
"Mad-Eye [if player is male]Ed Maye[else]Dee May[end if]"
"Mad Felix Maxfield"
"Mad Fern Fredman"
"Mad Gil Migdal" []
"Mad Gino Mandigo" []
"Mad Hal Amdahl"
"Mad Hong Hodgman"
"Mad Huong Doughman"
"Mad Ines Seidman"
"Mad Inez Zeidman"
"Mad Iona Dimaano"
"Mad Kaci Adamcik"
"Mad Kasi Adamski" []
"Mad Lang Gladman"
"Mad Lanita Dimalanta"
"Mad Lauran Marulanda"
"Mad Lea Almeda"
"Mad Leann Adelmann"
"Mad Len Mandel"
"Mad Leo Olmeda" []
"Mad Leon Doleman" []
"Mad Leona Amendola"
"Mad Leora Delamora"
"Mad Les Delmas"
"Mad Lon Dolman"
"Mad Loren Moreland" []
"Mad Lori Milardo" []
"Mad Lou Dumlao" []
"Mad Mee Medema"
"Mad Neal Adelman"
"Mad Ned Dedman"
"Mad Neil Idleman" []
"Mad Nell Melland"
"Mad Nik and Kim Kidman" []
"Mad Old Mo Ladd"
"Mad One Damone" []
"Mad Oren Medrano" []
"Mad Rae Madera-Demara" []
"Mad Rana Ramadan"
"Mad Rena Aderman"
"Mad Rene Merenda" []
"Mad Rey Demary" []
"Mad Rico Dimarco"
"Mad Rina Miranda"
"Mad Rio Moradi"
"Mad Risa Madaris"
"Mad Roni Mirando"
"Mad Rose Derasmo"
"Mad Rush Shumard"
"Mad Ryan Maynard" []
"Mad Sandi Dadisman"
"Mad Shea Ashmead" []
"Mad Sona Adamson" []
"Mad Stan Stamand"
"Mad Stone Eastmond"
"Mad Su Dumas"
"Mad Tennie Tiedemann"
"Mad Terisa Armistead" []
"Mad Tesha Steadham" []
"Mad Tess Smestad"
"Mad Tina Diamant"
"Mad Tish Stidham"
"Mad Tona Mandato"
"Mad Tresa Armstead"
"Mad Yael Almeyda"
"Mad Zeno Mendoza"
"Mad Zora Madrazo"
"Made Ali Almeida" []
"Made Archer Rademacher"
"Made Artis Armistead" []
"Made Caron Cardamone" []
"Made Delia Dealmeida"
"Made Em Medema" []
"Made Fern Federman" []
"Made Gail Medaglia"
"Made Hebron Bodenhamer"
"Made Ira Madeira" []
"Made Len Edelman"
"Made Lenn Edelmann"
"Made Les Ledesma" []
"Made Lin Mandile" []
"Made Logan Magdaleno" []
"Made Lon Mendola" []
"Made Lora Delamora" []
"Made Lyn Mandley"
"Made Man [one of]Dan Emma[or]Ed Amman[at random]"
"Made Nick Dieckman" []
"Made Nola Amendola" []
"Made Norville DeMoranville"
"Made Olin Mendolia" []
"Made Ray DeMaray"
"Made Rich Demarchi" []
"Made Rico Mordecai" []
"Made Risa Demarais" []
"Made Ro D'Amore-DeRamo"
"Made Ron Dearmon" []
"Made Roni Demarino" []
"Made Ros Meadors" []
"Made Si DeMasi" []
"Made Stan Steadman"
"Made Star Armstead" []
"Made Tito DiMatteo"
"Made Trinh Meinhardt"
"Maestro Stomaer"
"Magan 'Ranch' Mcgranahan"
"Malefactor [if player is male]Cal Frometa[else]Leoma Craft[end if]"
"Malicious Lucia Isom"
"Malicious Musical Io" []
"Malodorous Aldous Romo"
"Maltreater [if player is male]Lamar Rette[else]Reta Martel[end if]"
"Manciple McAlpine" []
"Mangler Almgren"
"Mangler-Hit Eltringham"
"Mangler Mr. Lange" []
"Manhattan Matt Hanna"
"Map Nut Putman"
"Maranda 'Ranch' Ramachandran"
"Marc 'Nah' Marchan"
"Marge 'Nah' Hagerman"
"Marietta's Metatarsi"
"Marmot Motram"
"Martial Tim Lara"
"Masquer Marques"
"Mastodon Stan Odom"
"Mauls-a-Slum Sam Lu" []
"Meager Graeme" []
"Meagrest Gamester Tam Egers"
"Mean Al Leaman"
"Mean Aldo Amendola" []
"Mean Art Armenta"
"Mean Bo 'Emo-Ban' Beamon" [p]
"Mean Britt Bitterman"
"Mean Cara Camarena"
"Mean Carl MacLaren"
"Mean Charis Marchesani"
"Mean Cher Hermance"
"Mean Cora Macareno"
"Mean Del Edelman" []
"Mean Dick Dieckman" []
"Mean Dori Demarino" []
"Mean Doug Domangue"
"Mean Edwin Weidemann"
"Mean Elden Needleman"
"Mean Ennis Eisenmann"
"Mean Fred Federman" []
"Mean Gay Agyeman"
"Mean Geri Germaine"
"Mean Gil Leaming"
"Mean Gina Nagamine"
"Mean Gino Mangione"
"Mean Glen Engelman"
"Mean Glenn Engelmann"
"Mean Golda Magdaleno" []
"Mean Ines Eisenman" []
"Mean Kia Akamine"
"Mean Kip Niekamp"
"Mean Les Sleeman-Seelman" []
"Mean Linh Heilmann"
"Mean-Lips Spielman"
"Mean Lise Milanese"
"Mean Lora Molenaar" []
"Mean Lord Moreland" []
"Mean Loy Maloney"
"Mean Lu Manuel" []
"Mean Luis Suleiman" []
"Mean-Mane Eman"
"Mean Mean Amee Mann" []
"Mean Nell Mennella"
"Mean-O Neoma Eamon"
"Mean Ol['] Mo Lane-Leamon" []
"Mean Old [if player is male]Dan Mole[else]Lea Mond[end if]" []
"Mean Old Doleman-Mondale"
"Mean Olin Moilanen"
"Mean Otis Maisonet"
"Mean Raul Lauerman"
"Mean Red Merenda-Deerman"
"Mean Rich Reichman"
"Mean Rico Caminero" []
"Mean Risa Seminara"
"Mean Rob Oberman-Boerman" []
"Mean Rod Dameron" []
"Mean Rollo Romanello"
"Mean Sage Geesaman"
"Mean Sheri Heiserman"
"Mean Sid Seidman" []
"Mean Star Stearman"
"Mean Tara Amarante"
"Mean Teri Tremaine"
"Mean Tisha Mathiasen"
"Mean Toni Mantione"
"Mean Tony Montanye"
"Mean Trey Marteney"
"Mean Ty Yetman"
"Mean Vanna Vanmaanen"
"Meanie [if player is male]Ian Mee[else]Ami Nee[end if]"
"Meanie Raj Jeanmarie"
"Meany Lech McElhaney"
"Meany Mayne"
"Measel'd Ledesma" []
"Measly Sly Mae" []
"Meatier Rita Mee" []
"Meek Mr. Kemmer"
"Mega Icky Cagy Mike" []
"Megan 'Nah' Hagemann"
"Mei 'Nah' Heiman"
"Mei 'Ranch' Reichman"
"Mel 'Nah' Lehman-Helman"
"Menacing [if player is male]Nic Gamen[else]Nanci-Meg[end if]"
"Mental Len Tam"
"Merciless [if player is male]Clem Siers[else]Cris Semel[end if]" []
"Mere Pal Parmele, Pre-Meal"
"Mess-O Moses"
"Mid-Tier Tim Reid" []
"Migrant Girtman" []
"Miles 'Nah' Leishman"
"Milo 'Nah' Holiman"
"Min-Wage Wiegman"
"Mind-Fear Friedman" []
"Mind-Gamer [if player is male]Dean Grimm[else]Enid Gramm[end if]"
"Missoula Sam Louis"
"Mo-Gun No-Mug Mungo"
"Mo['] Belly Bellomy"
"Mo['] Far Raffo Marmo" []
"Mo[']-Haste Amos the Hatsome" []
"Moaning Mangino" []
"Modern Dr. Nemo Redmon"
"Modester Demorest"
"Mona 'Nah' Monahan"
"Mongrel Lormgen"
"Moobs-Bosom SOB Mo"
"Moodiest Sodomite [d-t] Moise"
"More-Pal Palermo"
"Moronic Ric Moon" []
"Mosher Hosmer"
"Most-Stern Stenstrom"
"Mostly-Sly Tom"
"Motioner Monteiro"
"Mousy Su Moy" []
"Movie Star [if player is male]Mario Vest[else]Vita Morse[end if]"
"Mr. Hess, a smasher"
"Mr. Take-Market"
"Mrs. Cable-Scramble"
"Ms. Acquired-Crime-Squad"
"Ms. Bob Bombs"
"Mumbler Brummel"
"Munch-Good McDonough"
"Murderer Demurrer Red Rumer"
"Muscular Scum Raul"
"My-Rules Rumsley"
"Nag-a-Doc Cadogan"
"Nailbiter Albertini"
"Nameless Esselman"
"Nameless Sam Elsen"
"Narrow Raw Ron"
"Natty Ty Tan"
"Neal 'Nah' Lenahan"
"Near-Top Patreon Paterno"
"Neckbeard Daren Beck"
"Needy Ed Nye" []
"Neg-[']Em Menge"
"Negative to Vegetation [if player is male]Gene Attivo[else]Evita Gonet[end if]"
"Negator Argento" []
"Negli-Nigel Ligne" []
"Negotiator [if player is male]Otto Aigner[else]Nita Ortego[end if]"
"Neil 'Nah' Lenihan-Linehan"
"Nemesis Siemens"
"Nepotist Poinsett"
"Nerd Dern"
"Nerd-Smite Edminster"
"Nerd-Spite President Ned Presti" []
"Nerdier Ren Reid-Dernier"
"Nerdy Deryn Ryden"
"Nervier Vernier"
"Neutral Laurent Renault-Aultner"
"New Boss Snob Wes"
"New-ID Edwin Widen"
"New Lad Wendal Walden"
"New Master Westerman"
"Newsboy Owensby" []
"Nice-Legs Nic Segel"
"Nice Pol 'Pinocle' Copelin"
"Nicer G (Cringe) Eric Ng"
"Nicknamer Mckiernan"
"Nil-Opt Lipton"
"Nine Finger Regine Finn"
"No-Angel Leo Gann"
"No-Arm Ramon"
"No-Beliefs Ben Foiles"
"No-Bet Brad Broadbent"
"No-Bibles Bob Niles"
"No-Blood Loo Bond"
"No-Bores Robeson"
"No-Breaks Ben Kosar"
"No-BS Snob Bob [']N Sons" []
"No-Cell Collen"
"No-Chills Nicholls"
"No-Chokes Shen Cook"
"No-Dithers North-Side [if player is male]Sid Thorne[else]Enid Short[end if]"
"No-Drugs Gus Dorn" []
"No-Ethics [if player is male]Otis Chen[else]Toni Esch[end if]"
"No-Faces Fonseca"
"No-Facts Fast Con Scot Fan"
"No-Gab Bogan" []
"'No Girls' Sol Ring" [p]
"No-Glom Mongol Mo Long-Golmon"
"No-Hats Ashton Antosh" []
"No-Hug Hun Og"
"No-Hurry Hun Rory" []
"No-Hurts Rushton"
"No-Jest Jetson"
"No-Jewels Lew Jones"
"No-Marks Sam Korn"
"No-Milk Lon Kim"
"No-Mistakes Tami Kesson"
"No-Moves Mo Ovens-Moonves" []
"No-Moves Moonves" []
"No-Needs Ned Enos"
"No-Pace Capone"
"No-Pester Peterson" []
"No-Punks Knupson"
"No-Salt Alston"
"No-Sarcasm Sam Carson"
"No-Scar Carson" []
"No-Skimp Mo Spink"
"No-Smarm Mr. Mason"
"No-Story Royston" []
"No-Style Len Yost" []
"No-Tardy Drayton" []
"No-Taunts Staunton" []
"No-Tax Ox Nat Axton"
"No-Terms Monster Mo Ernst"
"No-Time Tim Eno"
"No-Tip Alan Napolitan" []
"No-Tip Alona Napolitano"
"No-Tip Capri Principato"
"No-Tip Ed DePinto"
"No-Tip Edgar Daigrepont"
"No-Tip Em Timpone"
"No-Tip Etta Pettinato"
"No-Tip Geri Pingitore" []
"No-Tip Glen Pingleton"
"No-Tip Grant Partington"
"No-Tip Hal Oliphant" []
"No-Tip Howser Witherspoon"
"No-Tip Lea Lapointe" []
"No-Tip Link Pilkinton"
"No-Tip Ola Politano" []
"No-Tip Roe Petronio"
"No-Tip Rosa Pastorino" []
"No-Tip Rose Petrosino" []
"No-Tip Sears Petrossian" []
"No-Tip Stan Pattinson"
"No-Tip Su Pontius" []
"No-TTYL Lytton"
"No-Works Skowron"
"Nobbish Bob Shin"
"Nodder Ed Dorn" []
"Nolo Loon Loo Onlon"
"Non-Aromatic Marcantonio"
"Non-Mug Mo Gunn"
"Normative Viramonte" []
"Nosepicker Ken Serpico, Sicker Peon" []
"Noshin['] Hinson"
"Not-Cool Coot Lon" []
"Not-Cool Loot Con Colt Ono" []
"Not-Dumb Bo Mundt"
"Not-Hungry Thug Ronny"
"Not-Lying Tiny Long"
"Not-Sane Santone"
"Not-Smart Mort Nast"
"Not-Snide Deniston"
"Not-Social [if player is male]Tino Scola[else]Loni Coats[end if]"
"Notary Nat Roy" []
"NRA Arn"
"Number-One Ruben Meno" []
"Numeric Minceur Nic Reum"
"Nut Rob Bruton" []
"Oafish Isa Hof"
"Obeser Bo Rees"
"Obliger Gil Boer"
"Obliger Glib Reo" []
"Obsolete Boots Lee" []
"Occupied Ed Puccio"
"Odd Ben Bodden" []
"Odd-Bile Diebold" []
"Odd Daria Daddario"
"Odd Fran Danford"
"Odd Gale Delgado" []
"Odd Lan Donald" []
"Odd Lew Dowdle"
"Odd Man Mad Don"
"Odd Maren Dearmond"
"Odd Max Maddox"
"Odd Min Dimond"
"Odd Mina Diamond" []
"Odd Monsen Edmondson"
"Odd Myer Dermody"
"Odd Oren Redondo"
"Odd Rina Dinardo" []
"Odd Sina Addison" []
"Odd Tonia Didonato"
"Odorless Del Rosso"
"Offline Flo Fine" []
"Offshore Fresh Foo['] [if player is male]Shef Roof[else]Rose Hoff[end if]"
"Ogle Cat Colgate" []
"Ogling Gong Li"
"Ogre [d-t] DeGroot"
"Ogre Alda Regalado"
"Ogre Alf LaForge" []
"Ogre Ann Gennaro"
"Ogre Avis Gervasio"
"Ogre Bentsen Engebretson"
"Ogre Bernd Rodenberg"
"Ogre Bill Bolliger"
"Ogre Brant Bontrager"
"Ogre Bren Bergeron-Groebner"
"Ogre Brent Rotenberg"
"Ogre Burns Rosenburg"
"Ogre Dan Dragone" []
"Ogre Dana Agredano"
"Ogre Diann Digennaro" []
"Ogre Don Goodner"
"Ogre Embry Borgmeyer"
"Ogre Esau Oseguera"
"Ogre Geri Gregoire"
"Ogre Ian Noriega"
"Ogre Jamel Melgarejo"
"Ogre Lad Geraldo" []
"Ogre Lan Lagrone"
"Ogre Lev Vogeler"
"Ogre Levan Governale"
"Ogre Luis Silguero"
"Ogre Lula Arguello"
"Ogre Man Germano Marengo-Moragne"
"Ogre Marna Garramone"
"Ogre Maud Argumedo"
"Ogre Mila Magloire"
"Ogre Minh Moehring" []
"Ogre Mo Groome"
"Ogre Nell Goellner"
"Ogre Reid Roediger"
"Ogre Ren Goerner"
"Ogre Rob Borrego"
"Ogre Sana Aragones"
"Ogre Saul Salguero"
"Ogre Sean Ragonese"
"Ogre Si Sergio" []
"Ogre Singh Higgerson"
"Ogre Tad DeGroat" []
"Ogre Ted Goedert"
"Ogre Una Noguera"
"Oh-[crap-u] Chopra" []
"Oh-No Hoon"
"Ol['] SOB Sobol" []
"Old Cheat Deloatch" []
"Old Dog Og Dold" []
"Old Fran Randolf" []
"Old Liar Radillo" []
"Old Thumb Humboldt"
"Oleaginous [if player is male]Louis Genoa[else]Sonia Logue[end if]"
"Omerta Tam Roe" []
"Omni-Moni Mino" []
"On-a-Diet [toti] Ade"
"On-Drugs Rod Sung" []
"On-That Hatton"
"On-the-Fly Hefty Lon"
"Once-Dumb Duncombe"
"One-Arm Ramone Merona" []
"One-Flog Flo Egon"
"One-Hat Heaton"
"One-Plant Napleton"
"Oofer Orfeo"
"Operator Art Poore"
"Orange Ned DeGennaro"
"Oregon Gooner Reg Ono" []
"Org-Gro Rog"
"Orgiast Rastogi"
"Ornater Treanor"
"Ornery Ren Roy" []
"Ornery Ron Rey"
"Outland Lout Dan Daulton" []
"Over-Literal Leila Trevor"
"Over-Pitch Petrovich"
"Ox-Quite-Toxique Quixote"
"Paid Art Partida"
"Paid Cal Capaldi"
"Paid Husain Dauphinais"
"Paid Lavon Vialpando"
"Paid Leo DePaoli"
"Paid Leon DeNapoli" []
"Paid Mir DiPrima" []
"Paid Noe Peinado" []
"Paid Nola Paladino" []
"Paid Olsen Espindola" []
"Paid Ren DiPerna"
"Paid Rico Dicaprio"
"Paid Ro Parodi"
"Paid Rosa Paradiso" []
"Paid Sera Paradise" []
"Palau Paula"
"Pallider Del Pilar" []
"Paranoid Pro Aidan" []
"Pardon Vet Davenport" []
"Parsonic Scarpino"
"Pasty Sap Ty"
"Patchy Chap Ty"
"Patriotic Capriotti"
"Pauser Prause"
"Payer Peary"
"Peaked Deepak"
"Pearl 'Nah' Lanphear"
"Pearlier LaPierre"
"Peckish Pischke"
"Peckish Schipke" []
"Peculiar Paul Rice" []
"Peeved Veep Ed"
"Peking Pig Ken"
"Pensioner [if player is male]Enos Perin[else]Irene Pons[end if]"
"Permanent Petermann"
"Permeant Man Peter"
"Pernicious Spice Nouri"
"Peru Prue & Rupe" []
"Perv-Sot Prevost"
"Pettier Peretti"
"Picadore DeCaprio" []
"Pig Deon Pidgeon"
"Pig Detra Patridge" []
"Pig Elsa Glaspie-Legaspi"
"Pig Elsa Legaspi"
"Pig Else Spiegel"
"Pig Lem Gimpel"
"Pig Len Epling"
"Pig Leslie Gillespie"
"Pig Lin Gilpin"
"Pig Lon Poling"
"Pig Luis Puglisi"
"Pig Luna Pauling"
"Pig Neth Thigpen"
"Pig Raye Gariepy"
"Pig Rena Pinegar" []
"Pig Renick Pickering" []
"Pig Seth Speight"
"Pig Son Gipson"
"Pig Wetter Pettigrew"
"Pigpen Epping"
"Pikeman Niekamp" []
"Pillock Pollick"
"Pimply Pip Lym"
"Pink Gil 'King Lip' Kipling" [p]
"Pinstripe Ines Tripp"
"Placatory Playactor Cory Plata"
"Pleasant Pale Stan" []
"Plonker Ren Polk"
"Plottin['] [if player is male]Lon Pitt[else]Lin Pott[end if]"
"Plotzed Petzold"
"Plumber Rep Blum"
"Plying-So-Spongily 'Lips' Yong"
"Pointer Petroni" []
"Pointy No-Pity Ty Pino"
"Polecat Pat Cole" []
"Police-Liar Picariello"
"Polite Rex, Exploiter" []
"Pools Kid Podolski"
"Poorliest Pistolero [if player is male]Sol Prieto[else]Tori Lopes[end if]"
"Pops Rene Epperson" []
"Popular Lou Rapp"
"Porin['] Ripon"
"Porkiest Petroski" []
"Pornier Perrino"
"Pornos-Snoop'r POS Ron" []
"Poseur Prouse"
"Poshnik Kip Sohn" []
"Posturer [if player is male]Rupert So[else]Su Porter[end if]"
"Pot Addict Patti Codd"
"Potent Mel Templeton"
"Pottier Perotti"
"Powder-Blue Pueblo Drew"
"Powerful Rupe Wolf"
"Practical Cart Calip"
"Predator Tad Roper" []
"Predo-Doper Pedro" []
"Pressor Prosser"
"Private Pat Iver"
"Pro-Evil Rip Love" []
"Pro Les Sloper-Spoerl"
"Pro-Life-of-Peril Flip Ore" []
"Pro-Viruses Supervisor Rose Purvis"
"Problematic [if player is male]Bert Campoli[else]Patrice Blom[end if]"
"Promise Imposer Mo Piers"
"Properly-Reply Pro Rory Lepp"
"Punitive Evi Putin"
"Punk Erma Kuperman"
"Punk Isis Supinski"
"Put-Downer Drew Upton"
"Quainter Antiquer [if player is male]Art Quine[else]Teri Quan[end if]" []
"Quasher H-Square"
"The Race Cheater Chet Rea"
"Rackety Ty Acker" []
"Rad Dog Godard"
"Rae 'Nah' Ahearn"
"Rainmaker [if player is male]Ira Kerman[else]Erma Arkin[end if]"
"Rainmaker [if player is male]Mark Neria[else]Kira Erman[end if]" []
"Rakish Shakir"
"Rancid Cardin"
"Rancid Dr. Cain" []
"Rancid Nic Ard" []
"Rancored Dorrance" []
"Rank Elf Falkner"
"Rant-Box Ox Brant Braxton"
"Rash Boy Rob Hays"
"Rash Dolt Stordahl"
"Rash Meg Gresham"
"Rash Roni Harrison" []
"Rat Seth Hastert" []
"Ratlike Talkier Litaker"
"Rattiness-Resistant [if player is male]Trent Issa[else]Tisa Stern[end if]" []
"Ravager Vergara" []
"Rave Boy Overbay"
"Raw Deal Lea Ward" []
"Raw Hood Harwood"
"Ray-Dog O'Grady"
"Re-Dealing Geraldine" []
"Real Quick Alec Quirk"
"Realest Stealer Lee Rast"
"Realtor/Relator Al Torre"
"Reap Dr. Draper"
"Rec-of-Force Cofer" []
"Recidivist Cristi Devi"
"Red 'Nah' Harden-Harned"
"Red Baron Bro Andre" []
"Red Ben Bender"
"Red-Coats DeCastro" []
"Red Dog Dodger" []
"Red Dre Erd"
"Red-Gun Gruden" []
"Red-Line Leidner" []
"Red Wolf Fred Low"
"Reddening Dendinger"
"Redneck Dencker" []
"Reed Holt the Older" []
"Reeve 'Nah' Heavener"
"Reformado Framer Odo"
"Refringed Fred Negri" []
"Regent Genter-Engert"
"Rejected Ced Jeter" []
"Relaxed Rex Dale"
"Relying Ringley"
"Remissory Morrissey"
"Rend-All Darnell Landler"
"Repelling Pellegrin"
"Repo Man Rampone"
"Resetter Streeter"
"Resonant Stan Nero" []
"Restive Sievert"
"Retainer Renteria"
"Retreater Ratterree"
"Revenant Tavenner"
"Revisor Riveros"
"Rex Lew-Wexler"
"Rey 'Nah' Harney-Hayner"
"Rhea-So-Hoarse" []
"Rheumatoid [if player is male]Theo Midura[else]Maudie Roth[end if]"
"Rheumic Murchie"
"Rich-Needs Schneider"
"Rich Sot Christo"
"Rifest Strife Sifter Stef Ri" []
"Rifle Nut [if player is male]Len Fruit[else]Rue Flint[end if]"
"Right-Bank King Barth"
"Rinser Risner"
"Rip-Glands Spradling"
"Ripped Perp Di" []
"Ritz-O Ortiz"
"Roach Arch-O Rocha"
"Roadman Armando" []
"Roaster Serrato" []
"Rob-Con Bronco Bo Corn"
"Rob, ex-Boxer"
"Robust Bro Stu"
"Roll-[']Em Moller"
"Romancer Cranmore"
"Rompish Morphis"
"Rootless Rosselot"
"Ros 'Nah' Sharon"
"Rot-Bag Bogart" []
"Rotten Trent-O Retton" []
"Rottin['] Triton"
"Roughed Red Hugo"
"Routing Guitron"
"Rubbish Bri Bush"
"Rude Al Eluard" []
"Rude Dr. Rudder"
"Rude Sly Dursley"
"Rueing Guerin"
"Rumbliest Stumblier Burt Miles"
"Run-For-Fun Orr"
"Runt Bo 'No Trub' Burton" [p]
"Rushed Alton Southerland" []
"Rushed Otto Osterhoudt"
"Rushed Sol Shoulders"
"Ruthless Les Hurst"
"Sad-Front Stanford" []
"Sad-Wink Dawkins"
"Safe-Con Fonseca" []
"Saintly [if player is female]Sly Tina[else]Tiny Sal[r]"
"Sallow Slow Al"
"Sam 'Nah' Ashman"
"Samesy Massey"
"Sane-Munch Schuneman"
"Sane Pro Pearson"
"Sangfroid [if player is male]Ford Gains[else]Doris Fang[end if]"
"Sanguine Gia Nunes"
"Sardonic Scardino" []
"Sarge Al Lagares"
"Sarge Anh Sanghera" []
"Sarge Case Escarsega" []
"Sarge Diego Georgiades"
"Sarge Elden Greenslade" []
"Sarge Eva Seagrave"
"Sarge Jon Grosjean"
"Sarge Lamont Mastrangelo" []
"Sarge Les Graessle" []
"Sarge Lin Salinger-Aslinger" []
"Sarge Lou Salguero" []
"Sarge Lu Glauser" []
"Sarge Mel Elgersma"
"Sarge Milo Margolies"
"Sarge Ned Snedegar"
"Sarge Noe Ragonese" []
"Sarge Ona Aragones" []
"Sarge Renton Rosengarten"
"Sarge Yuri Ysaguirre"
"Savviest Tessa-Viv"
"Scammin['] McManis"
"Scariest Teri Cass"
"Scary Elbert Castleberry"
"Scary Les Casserly" []
"Scary Sue Syracuse" []
"Scheduler Ed Ruschel"
"Schemin['] Sim Chen" []
"Schmoozer Zoe Schrom"
"Schoolin['] Lois Cohn"
"Scone Kid Dickeson" []
"Scoundrel Elson Curd" []
"Scoundrel Ren DuClos" []
"Scouser Russ Coe" []
"Screw-All Carswell"
"Scum Broker Mosbrucker"
"Scum Cal McLucas"
"Scum Dione Nicodemus"
"Scum Han Cushman-Schuman"
"Scum Hanner Schuermann"
"Scum Ian Mancusi"
"Scum Iona Cusimano"
"Scum Raia Misuraca"
"Scum Reda DeMarcus" []
"Scum Serna Marcussen"
"Scum Signe McGuiness"
"Seamiest Sietsema"
"Seb Holt the Slob"
"Secluded Luc Deeds"
"Secret-Life [if player is male]Eric Feltes[else]Reese Clift[end if]"
"See-Bold Bledsoe" []
"Seedy Syeed" []
"Self-Serving Vig Flessner"
"Semi-Raw Wiersma"
"Senhorita Hortensia"
"Senor Soren Noser" []
"Sensorial Israelson" []
"Separatist Passaretti"
"Shady Dy Ash"
"Shallow Ol['] Walsh" []
"Sham Albert Halberstam" []
"Sham Ann Hansman"
"Sham Art Hamstra" []
"Sham Breana Abrahamsen"
"Sham Celina Aeschliman" []
"Sham Celine Michaelsen"
"Sham Eda Ashmead" []
"Sham Eli Ishmael" []
"Sham Eric Marchesi"
"Sham Erin Shireman"
"Sham Ernie Heiserman" []
"Sham Ida Shimada"
"Sham Katia Takashima"
"Sham Lea Salameh"
"Sham Leann Hanselman"
"Sham Len Shelman"
"Sham Neil Leishman"
"Sham Nell Shellman"
"Sham Nettie Matthiesen"
"Sham Nicole Michaelson" []
"Sham Oren Horseman" []
"Sham Rena Shearman"
"Sham Rene Ehresman"
"Sham Ron Horsman"
"Sham Roni Harmison"
"Sham Star Stramash"
"Sham Teri Hiemstra"
"Sham Tia Mathias" []
"Sham Toni Mathison"
"Sham Ty Mathys"
"Sham Una Hausman"
"Shambolic Milo Basch"
"Shana 'Nah' Shanahan"
"Shanker Kashner" []
"Shark Caleb Blackshear"
"Shark Ione Kaneshiro"
"Shark Les Harkless"
"Shark Lobo Lashbrook"
"Shark Paco Prochaska"
"Sharp Ed Shepard"
"Sharp Kurt Parkhurst"
"Sharp Mace Amspacher"
"Sharp Si Phariss"
"Shifty Ty Fish"
"Shlocky Shylock Sly Koch"
"Shoplifter Trifle-Posh [if player is male]Phil Foster[else]Flor Speith[end if]"
"Short [i-n] Hairston" []
"Short Fuse [if player is male]Foster Hsu[else]Ruth Fosse[end if]"
"Short Man Stan Mohr"
"Shorted Des Hort" []
"Shot Mr. Strohm"
"Shouter Sue Roth"
"Shouting Otis Hung"
"Shrinker Kirshner"
"Shroudy Shy Dour [if player is male]Rudy Soh[else]Dy Roush[end if]"
"Shy-Fort Forsyth"
"Sick Bald Backslid Sid Black"
"Sick Ned Dickens"
"Sick-Rent Stricken Nickster"
"Sickener Ericksen" []
"Silent Al Santelli"
"Silent Alona Santaniello"
"Silent Buena Laubenstein"
"Silent Dee Edelstein" []
"Silent Eda Adelstein"
"Silent Gary Singletary"
"Silent Gerry Singleterry"
"Silent Hong Shingleton" []
"Silent Lora Santorelli" []
"Silent Mi Milstein"
"Silent Nola Antonellis"
"Silent Owen Lowenstein" []
"Silent Ree Esterline"
"Silent Roge Oesterling" []
"Silent-Yawn Winstanley"
"Sin Kid Sin Diskin"
"Sin-Large Salinger"
"Sin-Mouth Humiston"
"Sir Erv Rivers"
"Sir Paul Luprisa"
"Skinned Denkins" []
"Slanderer Red Larsen"
"Slapper Les Rapp"
"Slapper Perp Sal" []
"Slavin['] Lu Sullivan"
"Slavish Shiv Sal"
"Sleazebag Baz LeSage"
"Sleazeball [if player is male]Les Bellaza[else]Zella Sable[end if]"
"Slick Arndt Strickland"
"Slick Evan Vansickle" []
"Slick Luong Gullickson"
"Slick Nemo Mickelson"
"Slick Rheba Blackshire"
"Slick Una Caulkins" []
"Slimeball [if player is male]Ellis Lamb[else]Elba Mills[end if]"
"Slimier Iris Lem"
"Slimy Hack Michalsky"
"Slimy Sy Lim"
"Slithery Trish Ley"
"Slob Ace Belasco"
"Slob Alec Ceballos"
"Slob Ament Bostelman"
"Slob Andre Balderson"
"Slob Arce Barcelos"
"Slob Archie Charlebois" []
"Slob Arendt Balderston" []
"Slob Arment Lambertson" []
"Slob Arnett Rosenblatt"
"Slob Boss Boll"
"Slob Clare Barcellos"
"Slob Dana Sandobal"
"Slob Dee Bledsoe" []
"Slob Ed Sebold"
"Slob Edy Seybold"
"Slob Elsie Boisselle" []
"Slob Euna Banuelos" []
"Slob Ginter Gilbertson" []
"Slob Gryder Goldsberry" []
"Slob Ham Lashomb"
"Slob Janik Jablonski"
"Slob Karol Allsbrook"
"Slob Kiesow Sobolewski"
"Slob Laseter Ballesteros"
"Slob Len Bonsell"
"Slob Leo Belloso"
"Slob Lew Boswell" []
"Slob Lina Bonillas-Sabillon"
"Slob Lore Sorbello"
"Slob Luci Cubillos"
"Slob Man Lambson"
"Slob Maren Rosenbalm" []
"Slob Monroe Rosenbloom" []
"Slob Nack Blackson"
"Slob Nygren Bryngelson"
"Slob Ona Bolanos"
"Slob Ree Ebersol"
"Slob Regina Gabrielson" []
"Slob Rena Alberson"
"Slob Rey Broyles" []
"Slob Sera Labrosse"
"Slob Soroka Alsobrooks"
"Slob Tad Bolstad"
"Slob Trace Belcastro"
"Slob Traci Cristobal" []
"Slob Trena Bartleson" []
"Slob Yanik Yablonski" []
"Sloshed Del Hoss" []
"Sloth Holst"
"Slouchin['] Colin Hsu"
"Slouchy Coy Lush [if player is male]Sly Chou[else]Lucy Soh[end if]"
"Slovenly Lon Selvy"
"Slow-Bike Lebowski"
"Slow-Hater Showalter"
"Slum Con Scum Lon"
"Sly [n-t] Stanley" []
"Sly Abe Basley" []
"Sly Ace Claeys"
"Sly Al Sally"
"Sly Antwine Winstanley" []
"Sly Avi Sylvia"
"Sly Cesar Casserly" []
"Sly Dante Standley"
"Sly Dean Slayden"
"Sly Debera Beardsley" []
"Sly Debra Bardsley" []
"Sly Dedra Drysdale" []
"Sly Dee Sedley-Seydel"
"Sly Dina Lindsay" []
"Sly Dog Sy Gold"
"Sly Eden Densley"
"Sly Elma Smalley"
"Sly Else Lessley"
"Sly Em Myles" []
"Sly Enid Lindsey"
"Sly Erich Chrisley"
"Sly Ethel Heltsley"
"Sly Evan Snavely"
"Sly Eve Selvey"
"Sly Evie Livesey"
"Sly Ewa Wasley"
"Sly Ewan Wansley"
"Sly Ewart Swartley"
"Sly Fae Safley"
"Sly Ike Liskey"
"Sly Ines Nissley"
"Sly Ivan Sylvain"
"Sly Kevin Levinsky"
"Sly Kip Lipsky"
"Sly Lea Lasley"
"Sly Leah Lashley"
"Sly Lee Lesley"
"Sly Leon Ellyson"
"Sly Lu Sully" []
"Sly Luc Scully"
"Sly Mae Masley" []
"Sly Mei Smiley" []
"Sly Nat Stanly"
"Sly Neil Linsley"
"Sly Ol['] Lysol Solly"
"Sly Ora Saylor-Royals"
"Sly Petra Spratley"
"Sly Reeve Eversley"
"Sly Retta Satterly"
"Sly Rosa Saylors"
"Sly Rupe Pursley"
"Sly Sera Salyers"
"Sly Sue Ulysse"
"Sly Tera Slayter"
"Sly Thea Stahley"
"Sly Wade Swadley"
"Sly Wee Wesley"
"Sly Zeke Szekely"
"Smart [if player is female]Ms. Art [end if]Stram" []
"Smasher [if player is male]Mr. Hasse[else]Ms. Shear[end if]"
"Smeary Ramsey" []
"Smelly Sly Mel"
"Smurfy [if player is male]Mr. Sy Fu[else]Ms. Fury[end if]"
"Snag-This Hastings" []
"Snakebird Bednarski" []
"Snazzy Sy Zanz"
"Sneaky Sy Kane" []
"Sneering Ensigner"
"Snickerer [if player is male]Eric Kerns[else]Cris Kreen[end if]"
"Snide Al Daniels" []
"Snide Berto Doberstein"
"Snide Bo DeBonis"
"Snide Chae Deschaine"
"Snide Cher Schneider" []
"Snide Eldora DeLeonardis"
"Snide Gale DeAngelis" []
"Snide Irma DeMarinis"
"Snide Kali Danielski" []
"Snide Lara Saldierna"
"Snide Leta Adelstein" []
"Snide Lora Leonardis" []
"Snide Ma Seidman" []
"Snide Moe DeSimone"
"Snide Neal Danielsen"
"Snide Nola Danielson" []
"Snide Opal Espindola" []
"Snide Pa DeSpain"
"Snide Paz Dispenza"
"Snide Raul Lauridsen" []
"Snide Retha Eisenhardt" []
"Snide Rock Dickerson" []
"Snide Valko Levandoski"
"Snooper Pro Enos"
"Snoopier Poisoner Ines Poor"
"Snorter Torrens"
"Snot Nat Stanton"
"Snout Suton"
"Snow-Hating Washington"
"Snuck-In Nick Sun"
"So-Angry Grayson" []
"So-Bland Sal Bond" []
"So-Brutal [if player is male]Saul Bort[else]Lura Bost[end if]" []
"So-Busy Boss Yu" []
"So-Crazy Scary Oz" []
"So-Dapper [if player is male]Pedro Asp[else]Dora Epps[end if]"
"So-Fiery Sy Fiore"
"So Flat Soft Al" []
"So-Foul Ulf Soo" []
"So-Gaudy Gus O'Day" []
"So-Happy Posh-Pay Pop Hays" []
"So-Manic Nic Amos" []
"So-Meh Moshe" []
"So-Mighty Gio Smyth"
"So-Pretty [if player is male]Rey Potts[else]Rosy Pett[end if]"
"So-Smart Art Moss"
"So-Tall Al Olst" []
"So Tricky Rick Yost"
"So-Ugly Guy Sol"
"So-Wasted Tessa Dow" []
"SOB Al, a slob so bla"
"SOB Al Sabol" []
"SOB Alma Balsamo"
"SOB Anita Sabatino"
"SOB Art Bartos" []
"SOB Carmen Branscome" []
"SOB Dee DeBose"
"SOB Don Dobson"
"SOB Eric Briscoe"
"SOB Erin Briseno"
"SOB Erma Ambrose" []
"SOB Estrella Ballesteros" []
"SOB Len Nobles"
"SOB Leta Seabolt" []
"SOB Mac Bascom" []
"SOB Marion Ambrosino"
"SOB Marna Abramson"
"SOB Nola Bolanos" []
"SOB Oren Osborne" []
"SOB Rena Seaborn" []
"SOB Rey Boyers"
"SOB Ron Osborn"
"SOB Roni Orbison" []
"SOB Tia Tobias" []
"SOB Tom Toombs"
"SOB Trey Boyster"
"SOB Ty Ostby"
"SOB, Well, Slob Lew Bellows" []
"Softest Fossett"
"Softie Dan DiStefano" []
"Softie Ren Firestone"
"Sol 'Ranch' Charlson"
"Son 'Nah' Hanson"
"Sonnet King Kensington"
"Sore [n-t] Senatore" []
"Sore Al LaRose" []
"Sore Alden Rosendale" []
"Sore Alva Arevalos" []
"Sore Ann Arenson"
"Sore Art Serrato" []
"Sore Belle Bellerose"
"Sore Bland Balderson" []
"Sore Bong Borgeson"
"Sore Brad Debarros" []
"Sore Brock Rosebrock"
"Sore Carl Corrales"
"Sore Chin Richeson" []
"Sore Dan Nodarse"
"Sore Dan'l Alderson" []
"Sore Danna Andreason" []
"Sore Delinda DeLeonardis" []
"Sore Don Rosendo" []
"Sore Ed DeRose" []
"Sore Edris Desrosier" []
"Sore Emery Rosemeyer"
"Sore Erin Reierson"
"Sore Flo Roelofs"
"Sore Gena Ragonese" []
"Sore Gilma Margolies" []
"Sore Grant Garretson"
"Sore Grim Grismore" []
"Sore Ham Ashmore" []
"Sore Hunt Southern" []
"Sore Ida Isadore"
"Sore Isabel Labossiere" []
"Sore Kami Kisamore"
"Sore Ken Erekson"
"Sore Kent Koestner"
"Sore Laci Cerasoli" []
"Sore Lan Salerno" []
"Sore Laurice Lacoursiere"
"Sore Lem Melrose" []
"Sore Lev Selover" []
"Sore Li Losier-Sorlie"
"Sore Linda Leonardis" []
"Sore Ling Gorsline-Solinger" []
"Sore Link Sloniker" []
"Sore Luca LaCourse" []
"Sore Man Masoner" []
"Sore Mertie Ostermeier" []
"Sore Mi Mosier"
"Sore Min Romines"
"Sore Minta Sarmiento"
"Sore Morton Monterroso"
"Sore My Smoyer"
"Sore Nat Orantes-Santore" []
"Sore Neff Efferson"
"Sore Nell Ellerson" []
"Sore Nick Erickson" []
"Sore Nilsa Israelson" []
"Sore Nob Osborne" []
"Sore Norah Roanhorse"
"Sore Old Dolores"
"Sore Pat Pastore" []
"Sore Pauley LaPeyrouse"
"Sore Reid Derosier"
"Sore Ren Roesner"
"Sore Rena Reasoner" []
"Sore Ryann Rynearson"
"Sore Sal Rosales" []
"Sore Sam Mesaros"
"Sore Si Rossie" []
"Sore Star Serratos"
"Sore Su Rousse"
"Sore Tank Atkerson"
"Sore Terra Serratore"
"Sore Thu Souther" []
"Sore Tina Restaino" []
"Sore Torie Tesoriero"
"Sore Ty Oyster"
"Sore Una Rosenau"
"Sore Valda Salvadore" []
"Sore Vera Rosevear"
"Sore Verda Verderosa"
"Sore Verona Reasonover"
"Sore Vin Iverson" []
"Sore Vita Evaristo" []
"Sore Von Overson"
"Sore Wm Mowers" []
"Sound-Mind Simon Nudd"
"Sour Alec Lacourse"
"Sour Ed Souder"
"Sour Gale Salguero"
"Sour Les Roussel"
"Sour Man Mansour"
"Sour Sol Lorusso"
"Sour Thad Southard"
"Sourish Ross Hui"
"Spare-No-Persona Pearson" []
"Sparky Sy Karp"
"Spiker Perski"
"Spinout Pontius" []
"Spiritous Pistorius"
"Squinty Nyquist"
"Staci 'Nah' Chastain"
"Stakin-Takins['] Atkins" []
"Stale Rap Palestra"
"Staley's Lysates"
"Stalker Starkel"
"Stalling Stan Gill" []
"Stammerin['] Rammstein"
"Star 'Nah' Strahan"
"Staring Gastrin" []
"Staunch Stan Chu"
"Stealer Laertes" []
"Stealthy Hayslett"
"Stern-Lie Eli Ernst" []
"Stern Ogre Torgersen"
"Stickup Kip Cust"
"Sticky Sick Ty"
"Stinger Gestrin"
"Stingy Earl Singletary" []
"Stinkeroo [if player is male]Oren Sitko[else]Rosi O'Kent[end if]"
"Stinky-Skin Ty"
"Stocky Ty Ocks"
"Stompnik Tompkins" []
"Stone Cold Ced Tolson" []
"Stone-Raw Waterson" []
"Stones-Rich Stones Christeson Stroschein"
"Storm 'Nah' Horstman"
"Stormin['] Ron Smit"
"Storming Mort Sing" []
"Stormy 'My Sort' [if player is male]Mr. Yost[else]Ms. Troy[end if]" [p]
"Stout Ed Testudo"
"Striking Rik Ginst"
"Stud-Was-Wuss Tad" []
"Stumpy Stu Pym"
"Stypto-Spotty Ty Post" []
"Such-a-Jerk Jack Usher"
"Sulker Kusler"
"Sulky Devan Levandusky"
"Superficial [if player is male]Lupe Friscia[else]Felicia Spur[end if]"
"Sure Sal LaRusse"
"Sure-Suer Reus" []
"Swearin['] Waisner" []
"Swearing [if player is male]Geri Swan[else]Si Wagner[end if]" []
"Sweathog Stew Hoag"
"Swen-Ye-Weensy Sweeny"
"Swiggin['] Wiggins"
"Swooner Rosenow"
"Sybarite [ta] Byers"
"Tacky KC Tay" []
"Tana 'Ranch' Carnathan"
"Tank Kant"
"Tarnished [if player is male]Dean Hirst[else]Enid Stahr[end if]"
"Tart Barb Barr-Batt"
"Taskin['] Atkins" []
"Tax Evader Ava Dexter"
"Tea Slob Seabolt" []
"Teamster Matt Rees"
"Technocrat Coach Trent"
"Teflon-Net Flo Felton" []
"Ten-Vice Vicente"
"Tense Pro Peterson" []
"Tercero's secretor"
"Terri 'Nah' Rinehart-Reinhart"
"Testator-Attestor [if player is male]Art Totes[else]Tresa Ott[end if]"
"Tetchier Teichert"
"Tetchy Chetty"
"Thick Art Kithcart"
"Thick Ed, the [dick-u]" []
"Thick Ewan Whitenack" []
"Thick Hoss Hotchkiss-Hotchkiss"
"Thick Leo Eickholt"
"Thick Mason Mackintosh" []
"Thick Mena Mckeithan"
"Thick Milnes Kleinschmit" []
"Thick Oren Cronkhite"
"Thick Orval Kratochvil"
"Thief Feith" []
"Thin Allen Tannehill" []
"Thin Amos Mathison" []
"Thin Ann Hinnant"
"Thin-Beard Derin Bhat"
"Thin Cree Chretien"
"Thin Darell Litherland"
"Thin Earl Hartline" []
"Thin Elana Nathaniel" []
"Thin Greco Creighton" []
"Thin Hower Whitehorn"
"Thin Kong Knighton"
"Thin Lee Thielen"
"Thin Mae Heitman" []
"Thin Maw Whitman" []
"Thin Montag Nottingham"
"Thin Moss Smithson"
"Thin Narcisse Christiansen" []
"Thin Oleg Leighton" []
"Thin Olga Hotaling" []
"Thin Opal Oliphant" []
"Thin Oster Rothstein" []
"Thin Peg Thigpen" []
"Thin Rosa Hairston" []
"Thin Saul Shinault"
"Thinky Ty Kihn"
"Thor 'Nah' Hathorn"
"Thorg Groth"
"Three-Balls Herb Stella"
"Thrifty Ty Firth"
"Thumper Humpert"
"Tie Snob Bo Stein" []
"Tight-End Ted Night"
"Timewaster [if player is male]Matt Weiser[else]Tamie Werst[end if]"
"Tin Brute Brunetti"
"Tired-Gut Tut Ridge"
"Tod 'Nah' Hadnot"
"Toledano's loadstone"
"Tolerant Tarleton" []
"Tom 'Nah' Thoman"
"Tomcat Cottam"
"Tomcat Mac Ott" []
"Tonker Okrent"
"'Tonkings' Kingston"
"Tony 'Nah' Anthony"
"Too-BS Sot Bo" []
"Too-Cross Coot Ross"
"Too-Dark Rod Kato" []
"Too-Drunk Ron Dutko" []
"Too-Dumb Bo DuMot"
"Too-Evil Leo Voit"
"Too-Fancy Coy Afton"
"Too-Hard Hood Rat [d-t] Hora" []
"Too-Heavy Tova Hoye"
"Too-Hungry Thor Young"
"Too-Mad Tom Dao"
"Too-Nervy Tony Rove"
"Too-Nice Toni Coe"
"Too-Slick Otis Lock" []
"Too Tired Otto Reid" []
"Toolman Lomanto"
"Topeka Kat Poe"
"Tortured Ruder Tot Rod Utter"
"Tot Con Cotton"
"Totaler Loretta" []
"Touchy Ty Chou"
"Tough Berlin Lightbourne" []
"Tough Born Broughton" []
"Tough Cannon Connaughton"
"Tough Dyer Dougherty"
"Tough Esta Southgate"
"Tough Guy Ugg Touhy"
"Tough Han Haughton" []
"Tough Lan Laughton"
"Tough Ned Doughten"
"Tough Rod Thurgood"
"Tough Ron Roughton" []
"Tough Shar Hartsough"
"Tough-Skin Shogun Kit"
"Tough Starin['] Rottinghaus"
"Tough Wisher Housewright"
"Townish Whitson" []
"Trains Man Sanmartin"
"Transitive, Revisitant [if player is male]Ivan Sitter[else]Vita Estrin[end if]"
"Treacly [if player is male]Carl Tye[else]Leta Cyr[end if]"
"Tree-Top Repetto"
"Tricky Kit Cyr"
"Troglodyte [if player is male]Goldy Otter[else]Dotty Lorge[end if]"
"Troubling Brit Luong"
"Trouncer Curt Reno"
"Trouncing Curington"
"Trucker Ruckert"
"Truster Surrett" []
"Twangier Weingart" []
"Tweedy Weed Ty" []
"Twisted Twit Des"
"Twisty-Wits Ty"
"Twit Ed DeWitt"
"Two-Bit Twit Bo"
"Tyree Huong the Younger"
"Uber-Fat Faubert"
"Uber-Sly Elsbury"
"Uglier Reg Liu" []
"Ugly [n-t] Gaultney"
"Ugly Bacha Claybaugh"
"Ugly Hector Clougherty" []
"Ugly Lori Guillory"
"Ugly Mace Mcgauley" []
"Ugly Rhea Laughery"
"Ulcer-y Cuyler Curley"
"Un-Drab Dunbar"
"Un-Elated Deneault"
"Un-Fancy Nancy Fu"
"Un-Firm Murfin"
"Un-Freed Dufrene" []
"Un-Tricky Icky Runt, Nut Ricky"
"Unamenable [if player is male]Manuel Bean[else]LeeAnn Baum[end if]"
"Uncaring Cari Gunn"
"Uncool Con Lou"
"Uncool Luc Ono" []
"Under-Age Gene Radu" []
"Unfeeling Glennie Fu"
"Unfriendly Lendin[']-Fury Rudie Flynn"
"Unglibly-Bullying Bill Yung"
"Unholy [if player is male]Lon Huy[else]Lyn Huo[end if]"
"Unkempt Nut Kemp"
"Unlabored Abdelnour" []
"Unloved [if player is male]Eldon Vu[else]Lu Devon[end if]"
"Unmarred Ruder Man Dane Murr"
"Unmovable [if player is male]LeVon Baum[else]Avon Blume[end if]"
"Unpleasant [if player is male]Nat Paulsen[else]Luann Pesta[end if]"
"Unready Daren Yu" []
"Unready Reynaud DuRaney" []
"Unsaved Dave Sun"
"Unsettling Glenn Titus"
"Unsocial [if player is male]Luis Cano[else]Sonia Luc[end if]" []
"Unwelcoming Luni McGowen"
"Unwieldy [if player is male]Delwin Yu[else]Wendy Liu[end if]"
"Ur-Rage Guerra"
"Uraemic Maurice"
"Vain Alec Valencia" []
"Vain Arch Chavarin"
"Vain Artis Arvanitis"
"Vain Celano Valenciano" []
"Vain Claud Advincula"
"Vain Clem Mcelvain-Mcinvale"
"Vain Cosmo Osmanovic"
"Vain Dahl Haviland"
"Vain Del Ledvina" []
"Vain Della Villaneda" []
"Vain Elton Valentino" []
"Vain Gene Angevine"
"Vain Gino Giovanni"
"Vain Jock Jankovic"
"Vain Leo Avelino" []
"Vain Leora Valeriano" []
"Vain Lou Luviano"
"Vain Pok Pivonka"
"Vain Rick Vicknair"
"Vain Rog Gravino"
"Vain Rosa Savarino"
"Vain Rosell Villasenor" []
"Vain Sadie Avedisian"
"Vain Sera Arenivas"
"Vain Shawnta Viswanathan" []
"Vain Sly Sylv[if player is male]ain[else]ina[end if]" []
"Vain Sol Salvino"
"Vain Tor Vitrano"
"Vain Tosha Stavinoha"
"Vain Yates Avetisyan"
"Valued Dave Lu"
"Vapid Nola Vialpando" []
"Vapid Ona Padovani"
"Vaunter Ventura" []
"Velour Voleur Lu Rove"
"Verbal Vrabel"
"Vermin Mervin Mivner" []
"Very-Mean Everyman Evan Remy"
"Vibrant Del Vanderbilt"
"Vidal 'Nah' Haviland"
"Vigneron Novinger"
"Viler-Lot Tolliver"
"Villain Li'l Ivan" []
"Villainous Io Sullivan"
"Violent [toti] Lev"
"Voiders Devisor [if player is male]Edris Vo[else]Vi Erdos[end if]"
"Volatile [if player is male]Al Violet[else]Iva Tolle[end if]"
"Wan Lord Rowland"
"Wankish Nik Shaw-Hawkins"
"Want-Home Mo Wathen" []
"Warmer Mr. Ware"
"Warney Yawner Ray Wen"
"Warped Drew 'Pa' Pardew"
"Warty Raw Ty"
"Warzone Zorwena" []
"Was-Nerd Andrews Swander" []
"Waster Rat Wes"
"Way Fair Waif Ray"
"Weakling Gale Wink" []
"Wealthy Whatley" []
"Weaseling [if player is male]Galen[else]Angel[end if] Wise"
"Weaseling [if player is male]Lewis Egan[else]Elise Wang[end if]" []
"Webb of Few Bob"
"Wee Nik Weinke"
"Weird Fleta Waterfield" []
"Well-Born Brownell" []
"Well-Knit Will Kent"
"Well Ned Wendell" []
"Well-to-Do Lewd Tool Leo Woldt"
"Wendee Weeden"
"Wes 'Ranch' Crenshaw"
"West Side Ted Weiss"
"Whale LaHew"
"Whap-a-Ton Powhatan"
"Wheedler Ed Wehrle"
"Wheedler-Heel Drew" []
"Whomper Morphew"
"Winded Dedwin"
"Winker Kerwin"
"Wired Alf Warfield" []
"Wired Amy Widmayer"
"Wired Gay Ridgeway"
"Wired Genna Winegarden"
"Wired Inge Weidinger"
"Wired Lan Reinwald" []
"Wormer Merrow"
"Wormy Wry Mo"
"Worn Ed Wredon" []
"Worried or Wired Rio Drew" []
"Worsening Niswonger"
"Worst Cathie Crosthwaite"
"Worst Cree Worcester"
"Worst Haley Aylesworth" []
"Worst Hiram Arrowsmith"
"Worst Honey Noseworthy"
"Worst Kim Wikstrom"
"Worst Kina Tarnowski" []
"Worst Kobe Westbrook"
"Worst Leah Showalter" []
"Worst Lu Truslow"
"Worst Mick Wikstrom"
"Worst Rheba Robertshaw"
"Worst Tena Watterson"
"Wrathful Walt Fuhr"
"Wrekin Winker Nik Rew"
"Wuss-Like Sulewski"
"Yakima Mia Kay"
"Ye Con Coyne"
"Yeasty Yatesy"
"Yen-Led Len Dey" []
"Yen Lord Dreylon Reynold-Londrey" []
"Yobling Bony Gil" []
"Yobnik Boykin"
"Yodeler Delorey" []
"Younger NY Rogue Guy Oren" []
"Zeroing Ozinger"
"Zooming Mozingo"

table of prestigious bums [xxv8]
blurb
"The Abe Bethea"
"Ace Alden Encalade"
"Ace Ali Alicea"
"Ace Alton Anacleto"
"Ace Alvin Valencia" []
"Ace Arlinda Candelaria" []
"Ace Arvilla Ciavarella"
"Ace Avril Cavalier" []
"Ace Barr Cabrera-Barreca"
"Ace Brasil Cabriales"
"Ace Brinson Bernasconi"
"Ace Carmon Maccarone"
"Ace Codi Caicedo"
"Ace Dan Cadena"
"Ace Darin Adriance" []
"Ace Darrin Carradine" []
"Ace Dirk Radecki" []
"Ace Don Deacon"
"Ace Dove Acevedo"
"Ace Edris Dicesare"
"Ace Elvira Cavaliere"
"Ace Errol Correale"
"Ace Flo Cefalo"
"Ace Grisel Gilcrease" []
"Ace Harold Delarocha"
"Ace Hines Chianese" []
"Ace Hunt Cauthen"
"Ace Hurst Tauscher" []
"Ace Ines Necaise"
"Ace Inger Carnegie"
"Ace Isis Caissie"
"Ace Jin Janice"
"Ace Kemp Mcpeake"
"Ace Kim Mackie"
"Ace Klos Sealock"
"Ace Kyler Ackerley"
"Ace Kym Mackey"
"Ace Lan Canale-Canela"
"Ace Laurent Laracuente" []
"Ace Lavern Carnevale"
"Ace Lida Alcaide"
"Ace Lin Celani" []
"Ace Lon Celano"
"Ace Lorinda Candelario" []
"Ace Loris Cerasoli" []
"Ace Luba Beaulac"
"Ace Luz Uzelac"
"Ace Ly Lacey-Caley"
"Ace Mark Amacker"
"Ace Marna Camarena" []
"Ace Min Mencia"
"Ace Ming Cangemi"
"Ace Minh Eichman"
"Ace Minor Caminero" []
"Ace Moll Comella"
"Ace Myrl Mcleary" []
"Ace Nat Catena"
"Ace Ned Decena-Candee"
"Ace Ness Senesac" []
"Ace Orr Correa"
"Ace Otis Estacio"
"Ace Ramon Macareno" []
"Ace Rana Aracena"
"Ace Reid Decaire"
"Ace Rhett Charette"
"Ace Rich Recchia"
"Ace Rod Decaro" []
"Ace Rolf Laforce"
"Ace Ron Nocera"
"Ace Ronald Colandrea" []
"Ace Roni Acierno"
"Ace Ros Coreas-Cesaro"
"Ace Rosen Escareno" []
"Ace Rosi Cesario"
"Ace Rush Schauer-Schauer"
"Ace Ruth Taucher"
"Ace Sal Casale"
"Ace Shon Acheson" []
"Ace Sloan Escalona"
"Ace Son Escano"
"Ace Stan Scatena"
"Ace Star Caserta"
"Ace Tona Caetano"
"Ace Toni Atencio"
"Ace Tony Coatney"
"Ace Tonya Cayetano"
"Ace Tran Cantera"
"Ace Ty Tacey"
"Ace Vaughn Cavenaugh"
"The Adams Steadham"
"Al 'Top' Plato" []
"The Al Leath"
"Alana 'Top' Patalano"
"Alden 'FBI' Banfield" []
"Ali 'Top' Pilato"
"Aline 'Top' Lapointe" []
"The Alma Leatham"
"Alton 'Buy' Labounty" []
"Amb. [n-t] Bateman"
"Amb. Chae Beacham"
"Amb. Chan Bachman"
"Amb. Chandler Chamberland"
"Amb. Charline Chamberlain" []
"Amb. Cher Chamber"
"Amb. Chun Buchman" []
"Amb. Cole Lacombe"
"Amb. Comer Macomber"
"Amb. Daron Boardman" []
"Amb. Earl Marable"
"Amb. Ena Beaman" []
"Amb. Erin Bierman" []
"Amb. Erinn Biermann"
"Amb. Erline Lieberman"
"Amb. Gino Gambino"
"Amb. Hearn Haberman" []
"Amb. Huang Baughman" []
"Amb. Jenni Benjamin"
"Amb. Kern Berkman"
"Amb. Laura Arambula"
"Amb. Leech Chamblee"
"Amb. Ling Gamblin"
"Amb. Linh Hamblin"
"Amb. Lon Malbon"
"Amb. Lyle Bellamy"
"Amb. Ned Debnam" []
"Amb. Nell Bellman"
"Amb. Noe Beamon" []
"Amb. Rene Beerman"
"Amb. Rey Mabrey" []
"Amb. Ron Broman" []
"Amb. Rubin Birnbaum" []
"Amb. Sarah Abrahams" []
"Amb. Sha Basham"
"Amb. Tona Boatman"
"Amb. Tyler Tremblay" []
"Amb. Una Bauman"
"Amb. Zeno Bozeman"
"Ana 'FBI' Fabian"
"Ann 'Buy' Bunyan" []
"Ann 'Top' Panton"
"Anna 'Top' Pantano"
"Anton 'FBI' Bonfanti"
"Arron 'Buy' Raybourn"
"Atty. Bree Attebery" []
"Atty. Lesh Hayslett" []
"Atty. Pew Pettway"
"Awesome Don Woodmansee"
"The Barney Abernethy"
"Big Abe Gebbia"
"Big Aron Nobriga"
"Big Ayana Agbayani"
"Big Brad Gibbard"
"Big Brandie Bainbridge"
"Big Caren Brigance" []
"Big Chanell Lingelbach"
"Big Chloe Cobleigh"
"Big Darin Brigandi" []
"Big Deon Boeding"
"Big Earle Gabriele"
"Big Ebony Gibboney"
"Big Efren Fineberg" []
"Big Eli Liebig"
"Big Erinn Breining"
"Big Erma Brimage" []
"Big Ernest Steinberg"
"Big Lee Geibel"
"Big Len Ebling-Bingle" []
"Big Lenard Baldinger" []
"Big Leona Belongia"
"Big Lon Boling" []
"Big Loren Oblinger" []
"Big Mara Giambra"
"Big Nell Belling"
"Big Nick Bicking"
"Big Ola Baglio"
"Big Ora Borgia-Abrigo"
"Big Oren Gerbino"
"Big Orlando Longobardi" []
"Big Remona Giambrone"
"Big Rena Binegar" []
"Big Rene Ebinger"
"Big Rhea Habiger-Bagheri"
"Big Ron Grobin" []
"Big Shaunte Stinebaugh" []
"Big Trena Brigante" []
"Big Trina Briganti"
"Bold Abram Labombard"
"Bold Ali Badillo"
"Bold Ann Blandon"
"Bold Ara Labrado" []
"Bold Chet Bechtold" []
"Bold Eli Leibold-Dibello"
"Bold Farris Brailsford"
"Bold Fran Blanford"
"Bold Ian Baldoni"
"Bold Inger Olberding" []
"Bold Irma Lombardi" []
"Bold Lee Debello"
"Bold Len Leblond"
"Bold Lew Bodwell"
"Bold Loree Rebolledo"
"Bold Maglione Bloomingdale"
"Bold Maw Wambold"
"Bold Nell Blondell"
"Bold Nina Blandino"
"Bold Omar Lombardo" []
"Bold Rae Laborde-Belardo" []
"Bold Ray Bolyard" []
"Bold Raye Boardley"
"Bold Reeve Breedlove"
"Bold Regena Baldenegro"
"Bold Rena Rabenold" []
"Bold Rene Bolender" []
"Bold Rey Bordley"
"Bold Roe Robledo" []
"Bold Skidmore Middlebrooks"
"Bold Uyeda Doubleday"
"Bold Yan Boyland" []
"Born-Leader Oberlander" []
"Boss Aura Bourassa"
"Brain Asa Sanabria"
"Brain Cole Claiborne"
"Brain Doren Bernardino" []
"Brain Ester Barrientes" []
"Brain Lem Liberman"
"Brain Lott Albritton"
"Brain Mchale Chamberlain" []
"Brain Oster Barrientos" []
"Breana 'Top' Bonaparte"
"The Burl Hulbert"
"Busy Hwa Bushway"
"Busy Wert Westbury"
"Callie 'Top' Capetillo"
"The Capra Capehart"
"Caren 'Top' Caperton" []
"The Carlson Charleston"
"The Carri Chartier"
"CEO Ard Decaro" []
"CEO Arlinda Candelario" []
"CEO Arp Pecora"
"CEO Asha Saechao"
"CEO Audet Decoteau"
"CEO Auger Oceguera" []
"CEO Ball Cabello"
"CEO Balls Ceballos" []
"CEO Barr Bracero"
"CEO Blohm Holcombe"
"CEO Burk Roebuck"
"CEO Carl Alcocer"
"CEO Chi Choice" []
"CEO Chmura Carmouche"
"CEO Dahl Deloach" []
"CEO Dan Deacon" []
"CEO Darst Decastro" []
"CEO Dave Acevedo" []
"CEO Denker Eckenrode"
"CEO Dorr Cordero" []
"CEO Fredi Federico" []
"CEO Glover Colegrove"
"CEO Hack Heacock"
"CEO Hans Acheson" []
"CEO Herd Deroche"
"CEO Hinkle Kincheloe" []
"CEO Hol Coelho"
"CEO Hutt Touchet"
"CEO Karns Ackerson"
"CEO Krall Locklear"
"CEO Kremer Creekmore"
"CEO Kyla Coakley"
"CEO Lamb Lacombe" []
"CEO Lenard Calderone" []
"CEO Loy Cooley"
"CEO Ly Coyle"
"CEO Lyn Conley" []
"CEO Myrl Mcelroy-Mcleroy"
"CEO Ned Cedeno"
"CEO Nott Cottone"
"CEO Ok Cooke"
"CEO Pan Capone" []
"CEO Rand Cardone"
"CEO Sina Asencio"
"CEO Siu Soucie"
"CEO Stoll Costello" []
"CEO Suda Saucedo"
"CEO Suder Escudero"
"CEO Sy Cosey"
"CEO Ta Catoe"
"CEO Tina Atencio" []
"CEO Tran Cantero" []
"CEO Trent Cornette"
"CEO Trinh Tichenor"
"CEO Tu Cueto"
"CEO Un Cuneo"
"CEO Ute Coutee"
"CEO Vanish Schiavone" []
"CEO Vella Lovelace"
"CEO Yon Cooney"
"CEO Yu Couey"
"CEO Yun Younce"
"Champ Al Clapham"
"Champ Ali Macphail"
"Champ Soren MacPherson" []
"Cherish 'Top' Christophe" []
"The Clay Atchley"
"Cmdr. Alec Mccardle"
"Cmdr. Beale Delcambre"
"Cmdr. Bey Mcbryde"
"Cmdr. Gay Mcgrady"
"Cmdr. Hana Marchand"
"Cmdr. Kenia Dickerman" []
"Cmdr. Kuo Murdock" []
"Cmdr. Lea Mcardle" []
"Cmdr. Mona Mcdorman"
"Cmdr. Neoma Commander" []
"Cmdr. Yao Mcadory" []
"Coach Al Cachola"
"Coach Carin Cornacchia"
"Coach Lan Canchola"
"Coach Ma Camacho"
"Coach Myna McConahay"
"Coach Myung McConaughy"
"Coach Rod Corchado"
"Col. Abel Cabello"
"Col. Ada Aldaco"
"Col. Adriane Candelario"
"Col. Aldo Collado"
"Col. Alva Cavallo"
"Col. Andre Calderon"
"Col. Angelo Colangelo"
"Col. Barney Clayborne"
"Col. Beam Lacombe"
"Col. Bert Colbert"
"Col. Bertha Batchelor"
"Col. Beth Bechtol"
"Col. Bryan Clayborn"
"Col. Bud Bolduc"
"Col. Cara Larocca"
"Col. Chana Canchola"
"Col. Cora Larocco"
"Col. Diego Coolidge"
"Col. Ed Dolce"
"Col. Edwardo Calderwood"
"Col. Efren Florence"
"Col. Eli Collie"
"Col. Ella Colella"
"Col. Elvis Scoville"
"Col. Emmer McLemore"
"Col. Eryn Conerly"
"Col. Esta Lacoste"
"Col. Gaines Cangelosi"
"Col. Herb Blocher"
"Col. Hines Nicholes"
"Col. Huang Coughlan"
"Col. Ian Nicola"
"Col. Kaye Coakley"
"Col. Ken Conkle"
"Col. Key Cokley"
"Col. Lanny Connally"
"Col. Lenny Connelly"
"Col. Leo Coello"
"Col. Linn Lincoln"
"Col. Lora Carollo"
"Col. Meggan Mcgonagle"
"Col. Mila Mollica"
"Col. Nilsa Callison"
"Col. Noah Calhoon"
"Col. Raina Carolina"
"Col. Rana Alarcon-Carolan"
"Col. Ray Caylor"
"Col. Regan Longacre"
"Col. Rhea Laroche"
"Col. Rina Carlino"
"Col. Sade Salcedo"
"Col. Shani Nicholas"
"Col. Sue Clouse"
"Col. Tessa Costales"
"Col. Theda Deloatch"
"Col. Tiara Talarico"
"Col. Trena Carleton"
"Col. Tyra Claytor"
"Col. Watt Walcott"
"Col. Zola Collazo"
"The Darrin Reinhardt"
"DDS Angie Sandidge"
"DDS Earl Saddler"
"DDS Gena Gadsden"
"DDS Gia Gaddis"
"DDS Inge Giddens-Eddings"
"DDS Iona Addison"
"DDS Noe Seddon"
"DDS Regina Sandridge"
"DDS Una Dundas"
"Dead Larson D'Alesandro"
"Dead Laurel Lauderdale" []
"Dead Lavern Landaverde"
"Dead Luc Delduca"
"Dead Noor Aredondo" []
"Dead Ren Dearden"
"Dead Rob Deboard"
"Dead Ron Denardo" []
"Dead Sol Soledad"
"Dean 'Top' Daponte" []
"Denver 'Top' Devenport" []
"Deon 'Buy' Beydoun"
"Dina 'Top' Pintado" []
"Dir. Abe Beaird" []
"Dir. Al Laird"
"Dir. Alec Cardiel" []
"Dir. Ana Adrian" []
"Dir. Argo Garrido"
"Dir. Aron Riordan"
"Dir. Ash Rashid"
"Dir. Ben Binder" []
"Dir. Berg Bridger"
"Dir. Berna Brainerd" []
"Dir. Brianne Bernardini" []
"Dir. Buck Burdick" []
"Dir. Cora Ricardo"
"Dir. Del Riddle" []
"Dir. Dell Riddell" []
"Dir. Dick Riddick"
"Dir. Dona Dinardo" []
"Dir. Ely Ridley" []
"Dir. Ewen Weidner" []
"Dir. Fay Friday" []
"Dir. Fe Fried-Efird" []
"Dir. Gena Reading" []
"Dir. Gene Edinger" []
"Dir. Gilma Grimaldi" []
"Dir. Glen Grindle-Dingler"
"Dir. Glenn Lindgren"
"Dir. Gooch Goodrich"
"Dir. Green Redinger"
"Dir. Guy Guidry"
"Dir. Hall Hillard"
"Dir. Inger Ridinger"
"Dir. Jean Jardine" []
"Dir. Keach Headrick"
"Dir. Ken Kinder" []
"Dir. Lang Darling" []
"Dir. Langton Darlington" []
"Dir. Lee Riedel" []
"Dir. Len Linder"
"Dir. Leo Delrio"
"Dir. Lew Wilder" []
"Dir. Lina Rinaldi"
"Dir. Loma Milardo" []
"Dir. Lon Ridlon"
"Dir. Mae Merida" []
"Dir. Man Minard"
"Dir. Mana Miranda" []
"Dir. Matt Dittmar"
"Dir. McKean Dickerman" []
"Dir. Mee Diemer"
"Dir. Myna Minyard" []
"Dir. Neal Ireland" []
"Dir. Ned Reddin"
"Dir. Nigel Dreiling"
"Dir. Nola Orlandi" []
"Dir. Olga Giraldo"
"Dir. Reba Berardi" []
"Dir. Red Ridder"
"Dir. Regan Gardiner" []
"Dir. Rolfe Reliford" []
"Dir. Ros Dorris"
"Dir. Sam Simard"
"Dir. Sana Sardina" []
"Dir. Schenk Hendricks" []
"Dir. Shane Sheridan" []
"Dir. Shona Hardison" []
"Dir. Sina Siniard"
"Dir. Snow Windsor" []
"Dir. Stefan Standifer"
"Dir. Wen Widner" []
"Dir. Wes Swider"
"Dir. Wolf Wilford"
"Dir. Yang Ginyard" []
"Dir. Zoe Dozier"
"Doer Al Laredo" []
"Doer Alba Arboleda" []
"Doer Ali Deloria"
"Doer Alma Delamora" []
"Doer Amber Beardmore"
"Doer Ash Rhoades"
"Doer Bess Debrosse"
"Doer Brandi DiBernardo" []
"Doer Brian Berardino" []
"Doer Cami Mordecai" []
"Doer Cher Derocher"
"Doer Cyr Cordrey"
"Doer Dan Denardo" []
"Doer Danilo Dileonardo"
"Doer Daron Arredondo" []
"Doer Don Redondo" []
"Doer Ely Delorey"
"Doer Fran Ferrando"
"Doer Geri Roediger" []
"Doer Glen Delnegro" []
"Doer Hoyt O'Doherty"
"Doer Inez Derienzo"
"Doer Isa Derosia" []
"Doer Lan Leandro" []
"Doer Lance Calderone" []
"Doer Lea Deloera"
"Doer Len Delnero" []
"Doer Li Delrio" []
"Doer Lina Andreoli" []
"Doer Ling Dolinger" []
"Doer Linh Reinhold"
"Doer Liza Elizardo"
"Doer Lyn Reynold" []
"Doer Man Medrano" []
"Doer Mel Delmore"
"Doer Mia Demario"
"Doer Mina Demarino" []
"Doer Nilsa Leonardis" []
"Doer Nina Andreoni" []
"Doer Noah Nearhood"
"Doer Nola Leonardo" []
"Doer Pam Padmore"
"Doer Paz Pedroza"
"Doer Rico Cordeiro"
"Doer Sam Meadors-Derasmo" []
"Doer Sol Dolores" []
"Doer Stan Dorantes"
"Doer Su Souder" []
"Doer Tab Bretado"
"Doer Tim Tidmore" []
"Doer Tuan Tondreau" []
"Doer Una Rondeau" []
"Doer Val Velardo-Velador"
"Doer Zina Darienzo"
"Don 'Buy' Boundy"
"Dorla 'Top' Dalporto"
"The Dorla Aderholt"
"The Dory Doherty"
"Earl 'Top' Platero-Portela"
"Ed 'Buy' Dubey"
"Eden 'Top' Deponte" []
"Elana 'Top' Pantaleo"
"Eldon 'FBI' Bonfield"
"Elene 'FBI' Benefiel"
"Eli 'Buy' Bilyeu"
"Eli 'Top' Polite" []
"The Eli Thiele"
"Elite Drew Detweiler"
"Elite Zahn Hazeltine"
"Elli 'Top' Petillo"
"Ender 'Buy' DeBruyne"
"Enid 'Top' Depinto" []
"Erin 'Top' Petroni" []
"Ernest 'Top' Petterson" []
"The Erwin Whitener"
"Esq. Lui Quiles"
"Esq. Mauro Mosquera"
"Esq. Paula Pasquale"
"Esq. Raul Quarles"
"Eve 'Top' Peveto"
"Exalted Tex Dale"
"Fran 'FBI' Braniff"
"The Gary Hagerty-Hegarty"
"Gen. Al Lange-Nagle"
"Gen. Aldo Dangelo" []
"Gen. Ali Eaglin" []
"Gen. Alta Galante"
"Gen. Alvi Lavigne" []
"Gen. Alvin Langevin"
"Gen. Ara Reagan"
"Gen. Art Garten"
"Gen. Astrid Grinstead"
"Gen. Aura Garneau"
"Gen. Azure Zerangue"
"Gen. Bart Bangert"
"Gen. Bo Bogen"
"Gen. Bristol Gilbertson" []
"Gen. Carlo Longacre"
"Gen. Chu Cheung"
"Gen. Dahl Hegland"
"Gen. Dan Degnan"
"Gen. Delisa Deangelis" []
"Gen. Dona Donegan"
"Gen. Dori Doering" []
"Gen. Dorian Digennaro" []
"Gen. Dorn Gendron"
"Gen. Ed Degen"
"Gen. Eda Deegan" []
"Gen. Elke Engelke"
"Gen. Elsa Angeles"
"Gen. Erica Carnegie" []
"Gen. Inger Greening"
"Gen. Ira Gainer" []
"Gen. Irma Germain" []
"Gen. Irwin Wininger"
"Gen. Isa Gaines" []
"Gen. Karri Kerrigan"
"Gen. Kati Keating"
"Gen. Keli Keeling" []
"Gen. Kitson Stoneking" []
"Gen. Le Engel-Engle"
"Gen. Lea Neagle"
"Gen. Lenita Galentine" []
"Gen. Les Engles-Engels"
"Gen. Lila Gallien"
"Gen. Lis Ingles" []
"Gen. Lisa Gelinas-Sinegal" []
"Gen. Liston Singleton"
"Gen. Lora Lagrone" []
"Gen. Lori Olinger"
"Gen. Lorna Lonergan"
"Gen. Lu Leung"
"Gen. Lyda Gladney"
"Gen. Lyla Langley"
"Gen. Mahan Hagemann" []
"Gen. Man Engman"
"Gen. Marc Mcgrane"
"Gen. Maren Greenman"
"Gen. Mary Germany"
"Gen. Mast Stegman"
"Gen. Mel Mengel"
"Gen. Miller Mellinger"
"Gen. Miss Messing" []
"Gen. Nat Tengan"
"Gen. Ninfa Finnegan"
"Gen. Odis Godines"
"Gen. Ola Angelo" []
"Gen. Ora Orange" []
"Gen. Piper Eppinger"
"Gen. Rae Gerena" []
"Gen. Ray Graney-Garney"
"Gen. Raye Greaney"
"Gen. Reid Deering-Edinger" []
"Gen. Rhea Henegar"
"Gen. Rhoda Hagedorn"
"Gen. Rider Redinger" []
"Gen. Rob Borgen-Bogner"
"Gen. Rod Gorden"
"Gen. Rolf Lofgren"
"Gen. Ron Negron"
"Gen. Root Ortegon"
"Gen. Rose Greeson" []
"Gen. Roy Gorney"
"Gen. Rubi Breunig" []
"Gen. Rubin Bruening" []
"Gen. Ruth Gunther" []
"Gen. Salo Gleason"
"Gen. Sam Manges"
"Gen. Seth Hentges"
"Gen. Sid Dinges"
"Gen. Star Stanger" []
"Gen. Steiner Greenstein"
"Gen. Storm Engstrom"
"Gen. Stotler Longstreet" []
"Gen. Sui Seguin" []
"Gen. Talbert Greenblatt"
"Gen. Terra Gaertner"
"Gen. Twyla Gwaltney"
"Gen. Ula Naugle"
"Gen. Verla Lavergne" []
"Gen. Vi Given"
"Gen. Walter Greenwalt" []
"Gen. Wardle Greenwald" []
"Gen. Will Welling" []
"Gen. Yao Gonyea"
"Gen. Yu Yeung"
"Gen. Yun Nguyen"
"Gertie 'Top' Potteiger"
"Gina 'Top' Pignato"
"Gov. Brush Vosburgh"
"Gov. Corse Cosgrove"
"Gov. Darren Vangorder" []
"Gov. Ena Genova"
"Gov. Lin Loving" []
"Gov. Neese Genovese"
"Gov. Re Grove"
"Gov. Risa Gravois"
"Gov. Rosner Grosvenor"
"Gov. Rude Verdugo" []
"Gov. Sigala Salvaggio"
"Great Barnum Baumgartner" []
"Great Eden Teegarden"
"Great Hui Gauthier"
"Great Hurst Straughter"
"Great Hy Hegarty"
"Great Lehn Englehart" []
"Great Mia Armitage"
"Great Niles Easterling" []
"Great Rhea Gearheart"
"Great Salmon Mastrangelo" []
"Hair Snob Harbison"
"The Harley Heatherly"
"Hero Amy Haymore"
"Hero Ben Boehner"
"Hero Borski Brookshier"
"Hero Cal LaRoche" []
"Hero Charl Horlacher"
"Hero Dann Hernando" []
"Hero Debnam Bodenhamer" []
"Hero Dona Nearhood" []
"Hero Drew Rohweder"
"Hero Elk Koehler"
"Hero Emil Lohmeier"
"Hero Fred Hereford"
"Hero Gill Golliher"
"Hero Iverson Risenhoover"
"Hero Lew Woehler"
"Hero Ling Ohlinger"
"Hero Lise Olheiser"
"Hero Luca Larouche" []
"Hero Mart Mehrotra"
"Hero Meda Morehead"
"Hero Mikel Kohlmeier"
"Hero Ming Moehring" []
"Hero Mister Strohmeier" []
"Hero Neil Reinoehl"
"Hero Ren Hoerner"
"Hero Rich Roehrich"
"Hero Sam Ashmore" []
"Hero Scobee Cheeseboro"
"Hero Sid Doshier"
"Hero Sky Shorkey"
"Hero Sly Horsley" []
"Hero Su Houser"
"Hero Ty Yother"
"Hero Van Hanover" []
"Hero Velma Hovermale"
"Hero Wambolt Bartholomew"
"Hon. Adler Leonhard"
"Hon. Ann Hannon"
"Hon. Ardis Hardison" []
"Hon. Art Harton"
"Hon. Artis Hairston" []
"Hon. Atwell Lowenthal"
"Hon. Bert Bohnert"
"Hon. Berta Rathbone" []
"Hon. Bo Bohon"
"Hon. Boan Bohanon"
"Hon. Bos Hobson" []
"Hon. Brack Hornback"
"Hon. Buckler Hornbuckle"
"Hon. Burge Boughner"
"Hon. Cao Cahoon"
"Hon. Carr Charron"
"Hon. Case Acheson" []
"Hon. Casi Cashion" []
"Hon. Celis Nicholes"
"Hon. Chiu Houchin"
"Hon. Cola Calhoon" []
"Hon. Cris Cornish"
"Hon. Dague Donaghue"
"Hon. Dalgleish Hollingshead"
"Hon. Dall Holland"
"Hon. Damm Hammond"
"Hon. Darell Hollander" []
"Hon. Day Haydon"
"Hon. Del Holden"
"Hon. Delmar Holderman" []
"Hon. DeVries Devonshire"
"Hon. Edgar Hagedorn" []
"Hon. Ek Koehn"
"Hon. Elma Holeman" []
"Hon. Erb Bohner-Hebron"
"Hon. Eric Eichorn"
"Hon. Erich Eichhorn"
"Hon. Etter Etherton"
"Hon. Fife Neihoff"
"Hon. Freda Forehand" []
"Hon. Gaunt Naughton"
"Hon. Gee Goheen"
"Hon. Greig Goehring"
"Hon. Grisel Holsinger"
"Hon. Gros Goshorn"
"Hon. Grout Roughton" []
"Hon. Guilbert Lightbourne"
"Hon. Guill Loughlin" []
"Hon. Hal O'Holohan"
"Hon. Ham Hohman"
"Hon. Hart Hathorn"
"Hon. Hee Hoehne"
"Hon. Hettinger Hetherington"
"Hon. Ira Hirano"
"Hon. Issac Chiasson"
"Hon. Janes Johansen-Johannes"
"Hon. Jansen Johannsen"
"Hon. Jason Johanson"
"Hon. Jed Dejohn"
"Hon. Jessop Josephson"
"Hon. Kaiser Kaneshiro" []
"Hon. Kearns Hankerson"
"Hon. Kera Honaker"
"Hon. Krone Korhonen"
"Hon. Kyra Hornyak"
"Hon. Lam Lohman" []
"Hon. Lan Hanlon"
"Hon. Law Lawhon"
"Hon. Legros Longshore"
"Hon. Leist Holstein" []
"Hon. Lis Hilson"
"Hon. Loma Holoman"
"Hon. Ma Mahon-Ohman" []
"Hon. Mack Hockman"
"Hon. Mae Mahone" []
"Hon. Magan Monaghan"
"Hon. Mana Monahan" []
"Hon. Mar Harmon" []
"Hon. Mart Rothman"
"Hon. Matis Mathison" []
"Hon. Maus Housman"
"Hon. Maye Mahoney"
"Hon. Mccaa Coachman" []
"Hon. Mcnease Schoeneman"
"Hon. Mesta Matheson" []
"Hon. Mick Hickmon"
"Hon. Mila Holiman" []
"Hon. Motta Mantooth-Toothman"
"Hon. Ned Hendon"
"Hon. Nola O'Hanlon"
"Hon. Nutting Huntington"
"Hon. Odea Donahoe"
"Hon. Oster Thoreson" []
"Hon. Palm Pohlman"
"Hon. Rae O'Hearn-Hearon"
"Hon. Rangel Langhorne"
"Hon. Re Horne-Rhone"
"Hon. Red Rhoden-Herdon"
"Hon. Ren Hernon"
"Hon. Resnick Henrickson"
"Hon. Retta Atherton" []
"Hon. Rettig Hottinger" []
"Hon. Rick Hornick" []
"Hon. Rigel Ohlinger"
"Hon. Ring Horning"
"Hon. Risa Harnois"
"Hon. Roe Honore"
"Hon. Rost Thorson"
"Hon. Rust Rushton" []
"Hon. Rust Rushton-Hurston"
"Hon. Sadler Rosendahl" []
"Hon. Scarlet Charleston" []
"Hon. Sender Henderson"
"Hon. Sid Dishon"
"Hon. Sill Hollins" []
"Hon. Sin Hinson" []
"Hon. Sink Hinkson"
"Hon. Sisk Hoskins"
"Hon. Six Hixson"
"Hon. Slater Rosenthal" []
"Hon. Smart Horstman" []
"Hon. Sol Ohlson"
"Hon. Solt Holston"
"Hon. Staci Atchison"
"Hon. Stem Thomsen"
"Hon. Stice Etchison" []
"Hon. Streit Rothstein" []
"Hon. Stu Huston" []
"Hon. Su Huson"
"Hon. Suter Southern" []
"Hon. Tad Donath" []
"Hon. Tal Halton"
"Hon. Tam Thoman" []
"Hon. Tay Hayton"
"Hon. Tea Heaton" []
"Hon. Thacker Heckathorn"
"Hon. Tomas Thomason" []
"Hon. Toms Thomson"
"Hon. Torbert Brotherton" []
"Hon. Tow Howton" []
"Hon. Tower Howerton" []
"Hon. Trice Tichenor" []
"Hon. Tse Heston" []
"Hon. Tut Hutton"
"Hon. Tyler Thornley"
"Hon. Vera Hanover" []
"Hon. Verna Vanhorne"
"Hon. Wald Howland"
"Hon. Wert Worthen" []
"Hon. Witt Whitton" []
"Hon. Ye Honey"
"Hon. Yeoman Mooneyhan"
"Ian 'Top' Patino" []
"Icon Al Nicola"
"Icon Alber Claiborne" []
"Icon Ali Nicolai"
"Icon Art Cortina"
"Icon Asa Casiano"
"Icon Ash Cashion" []
"Icon Case Ascencio"
"Icon Denis Considine"
"Icon Ed Condie" []
"Icon Gala Giancola"
"Icon Gerth Creighton" []
"Icon Gia Ignacio"
"Icon Helms Michelson" []
"Icon Isa Nicosia"
"Icon Kerns Nickerson"
"Icon Lara Carolina"
"Icon Lord Coldiron" []
"Icon Luc Council"
"Icon Mara Marciano"
"Icon Ortis Sciortino"
"Icon Pam Campion"
"Icon Sal Nicolas" []
"Icon Segal Cangelosi"
"Icon Seth Etchison" []
"Icon Shrum Murchison" []
"Icon Stag Costigan" []
"Icon Stanton Constantino"
"Icon Star Cortinas" []
"Icon Stone Cosentino"
"Icon Su Cousin"
"Icon Tash Atchison" []
"Icon Trisha Christiano"
"Icon Watts Wainscott" []
"Ilona 'Top' Politano" []
"In-Demand Ned Mandi" []
"Ines 'Top' Pistone" []
"The Ines Theisen"
"Ira 'Top' Poitra" []
"Iris 'Top' Spirito"
"Jana 'Top' Pantoja"
"Karan 'FBI' Fairbank"
"The Karma Hatmaker"
"Keren 'Top' Petrenko"
"The Kylie Keithley"
"Lady Mae Almeyda" []
"Lady Olga Golladay"
"Lady Otte Aydelott"
"Lady Ree Eardley" []
"Lady Ren Darnley"
"Lara 'Top' Parlato"
"The Larson Rosenthal"
"Leader Fitts Satterfield"
"Leader Jan Alejandre"
"Leanna 'Top' Pantalone"
"Lee 'Buy' Belyeu"
"Lenard 'FBI' Barnfield"
"Leo 'Buy' Bouley"
"Les 'Top' Postel-Postle"
"The Les Stehle"
"The Lewis Whitesel"
"Lila 'Top' Patillo"
"The Lillian Lilienthal"
"Lin 'Top' Lipton" []
"Lise 'Top' Pistole" []
"Liz 'Top' Politz"
"Loida 'Top' Dapolito"
"The Loma Lamothe"
"The Lon Helton"
"Lord Abe Laborde" []
"Lord Alec Cardello" []
"Lord Bay Bolyard" []
"Lord Blair Robillard"
"Lord Ethan Leonhardt" []
"Lord Fang Langford"
"Lord Fitch Litchford" []
"Lord Ian Orlandi" []
"Lord Lan Rolland"
"Lord Neace Calderone" []
"Lord Nigel Dollinger"
"Lord Pal Pollard" []
"Lord Pavone Vanderpool" []
"Lord Sean Alderson" []
"Lord Shane Rosendahl" []
"Lord Shaunte Southerland" []
"Lord Sweetman Westmoreland" []
"Loree 'FBI' Belfiore"
"Louder Doer Lu" []
"The Luna Henault"
"The Ma Mehta"
"The Mack Ketcham"
"Man 'Top' Patmon"
"The Maren Matherne"
"Marg 'Buy' Burgamy" []
"Maria 'Top' Imparato"
"Marie 'Top' Imperato"
"Marlen 'Top' Palmerton" []
"The Marlena Leatherman"
"Mary 'Buy' Maybury"
"The Mason Matheson"
"Master Burr Armbruster"
"Master Ed Demarest" []
"Master Ida Armistead" []
"Master Les Lemasters"
"Master Logan Mastrangelo" []
"Master Minh Smitherman"
"Master Weldon Westmoreland" []
"Mensch Eura Scheuerman" []
"Mensch Gil Schmeling"
"Mensch Iola Michaelson" []
"Mensch Paro Macpherson" []
"Mensch Rohrer Schermerhorn"
"Mensch Tera Manchester"
"The Mina Heitman"
"The Minna Heitmann"
"Miss Ena Messina"
"Miss Noon Simonson"
"Miss Pink Simpkins"
"Mo 'Buy' Boyum"
"The Mo Thome"
"Mogul Bahr Malbrough"
"Mogul Han Loughman" []
"Mogul Linch Mcloughlin"
"Mogul Riel Guillermo" []
"Mr. Abe Brame" []
"Mr. Abel Marble" []
"Mr. Acree Creamer"
"Mr. Agan Garman"
"Mr. Aitken Martinek"
"Mr. Ara Marra"
"Mr. Ariel Larimer"
"Mr. Aron Marron"
"Mr. Asa Armas"
"Mr. Ash Harms" []
"Mr. Asha Sharma"
"Mr. Ashburn Marshburn"
"Mr. Ashton Horstman" []
"Mr. Aubry Marbury"
"Mr. Auten Trueman"
"Mr. Ayon Maynor" []
"Mr. Bacon Cambron"
"Mr. Baine Bierman" []
"Mr. Barney Berryman"
"Mr. Bauch Burcham"
"Mr. Baugh Hamburg"
"Mr. Beane Beerman" []
"Mr. Beau Baumer"
"Mr. Bey Embry"
"Mr. Blouin Milbourn" []
"Mr. Bogan Borgman"
"Mr. Boots Bostrom"
"Mr. Bou Borum"
"Mr. Boyle Bromley-Moberly"
"Mr. Bracey McBrayer"
"Mr. Breen Bremner"
"Mr. Brundage Bumgardner" []
"Mr. Burrage Marburger"
"Mr. Cadel Mcardle" []
"Mr. Cain McNair" []
"Mr. Cane Carmen-Mcnear"
"Mr. Canon Cornman"
"Mr. Casson Crossman"
"Mr. Castelli Mcallister"
"Mr. Castile Mcalister" []
"Mr. Chas Schram" []
"Mr. Chasteen Manchester" []
"Mr. Coady Carmody" []
"Mr. Core Cromer"
"Mr. Cowell Cromwell"
"Mr. Coy Mcroy"
"Mr. Cree Mercer"
"Mr. Cuccia Marcucci"
"Mr. Dana Armand" []
"Mr. Dean Redman-Menard" []
"Mr. Dee Meder"
"Mr. Deeds Medders"
"Mr. Deem Demmer"
"Mr. DeHaan Hardeman" []
"Mr. Delano Moreland" []
"Mr. Deleo Delorme" []
"Mr. Deon Redmon" []
"Mr. Doane Medrano-Dameron" []
"Mr. Dumond Drummond"
"Mr. Ealey Remaley" []
"Mr. Earl Marler"
"Mr. Eason Amerson-Roseman" []
"Mr. Eastin Martines" []
"Mr. Eaton Martone"
"Mr. Ebert Rembert"
"Mr. Edison Dinsmore"
"Mr. Eisen Meiners" []
"Mr. Eley Remley"
"Mr. Eli Imler"
"Mr. Elie Lemire"
"Mr. Elmo Rommel"
"Mr. Eloy Morley"
"Mr. Ely Myler"
"Mr. Erick Merrick"
"Mr. Espana Spearman"
"Mr. Ethan Rethman"
"Mr. Etzel Metzler-Meltzer"
"Mr. Ewin Merwin"
"Mr. Ezell Zellmer"
"Mr. Fodor Morford"
"Mr. Fonda Dorfman"
"Mr. France McFarren"
"Mr. Gale Melgar"
"Mr. Gebo Moberg"
"Mr. Geis Grimes"
"Mr. Genesis Messinger"
"Mr. Geno Monger"
"Mr. Gile Gilmer"
"Mr. Gino Moring"
"Mr. Goley Gormley"
"Mr. Guice McGuire"
"Mr. Hames Hammers"
"Mr. Hanner Herrmann"
"Mr. Hasting Stringham"
"Mr. Hatley Matherly" []
"Mr. Heacock Cockerham"
"Mr. Heap Perham"
"Mr. Hiles Mishler"
"Mr. Hoag Gorham"
"Mr. Hosea Ashmore" []
"Mr. Hyer Rhymer"
"Mr. Ian Marin" []
"Mr. Ivan Marvin"
"Mr. Jemison Jimmerson"
"Mr. Joines Jimerson"
"Mr. Kao Marko-Komar"
"Mr. Kareem Kammerer"
"Mr. Keenan Kennamer"
"Mr. Kogan Krogman"
"Mr. Labonte Lamberton"
"Mr. Lake Markle-Markel"
"Mr. Lance Mclaren"
"Mr. Leech Melcher"
"Mr. Leo Morel-Merlo"
"Mr. Leto Molter"
"Mr. Lubin Milburn"
"Mr. Maisonet Miramontes"
"Mr. Mallet Trammell"
"Mr. Mance Mcnemar"
"Mr. Matheson Smotherman"
"Mr. Mose Sommer"
"Mr. Moses Sommers"
"Mr. Mule Rummel"
"Mr. Nagata Matranga"
"Mr. Nathan Hartmann"
"Mr. Nations Martinson"
"Mr. Neal Lerman"
"Mr. Neil Milner" []
"Mr. Noah Harmon" []
"Mr. O'Neil Merlino"
"Mr. Ochs Schrom"
"Mr. Oller Morrell"
"Mr. Ollie Morelli" []
"Mr. Orear Marrero" []
"Mr. Osby Ormsby"
"Mr. Oster Stormer"
"Mr. Ostlund Lundstrom"
"Mr. Osuna Mansour"
"Mr. Pace Camper"
"Mr. Page Pegram"
"Mr. Palen Perlman"
"Mr. Pare Parmer"
"Mr. Parente Parmenter" []
"Mr. Patel Lampert" []
"Mr. Peter Tremper"
"Mr. Rey Merry-Rymer"
"Mr. Roane Marrone"
"Mr. Rowe Merrow-Mowrer" []
"Mr. Sage Magers"
"Mr. Said Mardis" []
"Mr. Sato Mastro" []
"Mr. Scalia Mariscal" []
"Mr. Shahan Harshman"
"Mr. Shane Sherman" []
"Mr. Shea Rhames" []
"Mr. Sheats Smathers"
"Mr. Shehan Hershman"
"Mr. Sloane Salmeron"
"Mr. Soto Ostrom"
"Mr. Steen Mertens"
"Mr. Tassone Masterson"
"Mr. Tee Emert"
"Mr. Theiss Smithers"
"Mr. Thiede Meredith" []
"Mr. Tien Minter"
"Mr. Tim Trimm"
"Mr. Toon Morton" []
"Mr. Toone Montero" []
"Mr. Tuan Turman-Truman"
"Mr. Tyson Nystrom"
"Mr. Vice McIver"
"Mr. Weil Wilmer"
"Mr. Witcher Mcwhirter"
"Mr. Yao Mayor-Raymo"
"Mr. Yearby Mayberry"
"Mr. Zane Manzer"
"Mr. Zito Moritz"
"Mrs. Ai Maris"
"Mrs. Alica Mariscal" []
"Mrs. Anette Streetman"
"Mrs. Anne Manners"
"Mrs. Arie Ramires" []
"Mrs. At-Smart-Marts" []
"Mrs. Beason Bosserman"
"Mrs. Becha Chambers" []
"Mrs. Blaine Silberman" []
"Mrs. Cain Crisman" []
"Mrs. Cason Crossman" []
"Mrs. Cherish Schrimsher"
"Mrs. China Chrisman" []
"Mrs. Cho Schrom" []
"Mrs. Chu Schrum"
"Mrs. Dede Medders" []
"Mrs. Dee Demers"
"Mrs. Della Ramsdell"
"Mrs. Dione Dinsmore" []
"Mrs. Dorton Nordstrom"
"Mrs. Eaton Osterman" []
"Mrs. Eda Demars" []
"Mrs. Edna Manders" []
"Mrs. Eisen Meissner" []
"Mrs. Elie Mireles"
"Mrs. Elma Lammers" []
"Mrs. Else Smelser"
"Mrs. Elvina Silverman"
"Mrs. Elyse Messerly"
"Mrs. Enos Sermons" []
"Mrs. Erich Schirmer" []
"Mrs. Esta Masters"
"Mrs. Estela Lemasters" []
"Mrs. Etzel Smeltzer"
"Mrs. Eun Sumner"
"Mrs. Garton Armstrong"
"Mrs. Gennie Ensminger"
"Mrs. Giesen Messinger" []
"Mrs. Gobert Bergstrom-Stromberg"
"Mrs. Hae Rhames" []
"Mrs. Hahne Hershman" []
"Mrs. Heitman Smitherman" []
"Mrs. Hite Smither" []
"Mrs. Hye Rhymes" []
"Mrs. Ida Simard" []
"Mrs. Imes Simmers" []
"Mrs. Janie Minjares"
"Mrs. Joane Jamerson"
"Mrs. Jonie Jimerson" []
"Mrs. Ka Marks" []
"Mrs. Kia Makris" []
"Mrs. Leach Chalmers" []
"Mrs. Lehi Mishler" []
"Mrs. Leona Salmeron" []
"Mrs. Lue Sumler"
"Mrs. Lula Sumrall"
"Mrs. Moe Sommer" []
"Mrs. Mose Sommers" []
"Mrs. Muse Summers"
"Mrs. Nation Martinson" []
"Mrs. Neace Cremeans" []
"Mrs. Nees Messner"
"Mrs. Nenita Martinsen" []
"Mrs. Nitta St. Martin" []
"Mrs. Odea Meadors" []
"Mrs. Oja Majors"
"Mrs. Olea Morales"
"Mrs. Ona Ransom" []
"Mrs. Pate Stamper" []
"Mrs. Rio Morris" []
"Mrs. Seaton Masterson" []
"Mrs. See Messer"
"Mrs. Sina Sirmans"
"Mrs. Sona Rossman"
"Mrs. Sue Musser"
"Mrs. Tena Martens"
"Mrs. Tesha Smathers" []
"Mrs. Theis Smithers" []
"Mrs. Tina Martins" []
"Mrs. Tona Marston-Stroman" []
"Mrs. Tonia Stromain"
"Mrs. Tony Nystrom" []
"Mrs. Tu Sturm-Strum"
"Mrs. Ute Sumter" []
"Mrs. Yee Meyers"
"Ms. Aasen Seamans"
"Ms. Adele Ledesma" []
"Ms. Adorno Rosamond" []
"Ms. Ager Magers" []
"Ms. Agnes Magness"
"Ms. Ai Masi-Amis" []
"Ms. Aide Demasi" []
"Ms. Ake Maske"
"Ms. Ali Islam-Smail" []
"Ms. Alla Llamas" []
"Ms. Allen Mansell-Sellman"
"Ms. Alley Smalley" []
"Ms. Angel Mangels" []
"Ms. Ani Manis-Mains"
"Ms. Anise Messina" []
"Ms. Ann Manns"
"Ms. Antone Stoneman"
"Ms. Ara Armas" []
"Ms. Arrington Morningstar" []
"Ms. Asaro Massaro"
"Ms. Au Maus-Saum"
"Ms. Audet Umstead"
"Ms. Bacher Chambers" []
"Ms. Barahona Abrahamson"
"Ms. Bea Beams"
"Ms. Cairns Crissman" []
"Ms. Canales Casselman"
"Ms. Cao Mosca"
"Ms. Capo Campos"
"Ms. Carbone Branscome" []
"Ms. Carin Crisman" []
"Ms. Celinda McDaniels" []
"Ms. Chaffin Schiffman"
"Ms. Chan McShan"
"Ms. Chana Cashman"
"Ms. Cherri Schirmer" []
"Ms. Cherry McSherry"
"Ms. Chi Chism"
"Ms. Chin McNish"
"Ms. Christa Christmas" []
"Ms. Chun Munsch"
"Ms. Coe Cosme-Comes"
"Ms. Cohan Hanscom"
"Ms. Coop Compos"
"Ms. Cora Marcos"
"Ms. Cuellar Marcellus"
"Ms. Dante Stedman"
"Ms. Darell Ramsdell" []
"Ms. Dee Deems"
"Ms. Delfina Mansfield"
"Ms. Diane Seidman" []
"Ms. Dinah Dishman" []
"Ms. Dison Simonds"
"Ms. Doane Mendosa"
"Ms. Dona Madson"
"Ms. Doreen Densmore"
"Ms. Dorine Dinsmore" []
"Ms. Dyson Symonds"
"Ms. Eason Seamons"
"Ms. Eda Meads-Smead-Dames"
"Ms. Eden Mendes" []
"Ms. Eiler Mireles" []
"Ms. Eisen Siemens" []
"Ms. Eisner Meissner" []
"Ms. Elie Meisel"
"Ms. Elli Milles"
"Ms. Elsa Samsel"
"Ms. Elser Smelser" []
"Ms. Ely Myles" []
"Ms. Ena Means-Seman-Manes"
"Ms. Erin Misner"
"Ms. Esta Mestas"
"Ms. Etta Mattes"
"Ms. Eula Samuel"
"Ms. Eury Rumsey"
"Ms. Eyre Meyers" []
"Ms. Foran Forsman"
"Ms. Gena Manges" []
"Ms. Gene Menges"
"Ms. Geri Grimes" []
"Ms. Gillan Smalling"
"Ms. Gina Sigman"
"Ms. Gino Sigmon"
"Ms. Gloria Margolis" []
"Ms. Goris Grissom"
"Ms. Guin Mingus" []
"Ms. Hae Hames" []
"Ms. Hager Gresham"
"Ms. Hai Isham" []
"Ms. Haile Ishmael" []
"Ms. Hana Ashman" []
"Ms. Hance McShane"
"Ms. Hara Sharma" []
"Ms. Harting Stringham" []
"Ms. Harton Horstman" []
"Ms. Hattie Matthies"
"Ms. Haun Shuman-Husman"
"Ms. Hearn Sherman" []
"Ms. Heaton Matheson" []
"Ms. Helena Eshelman-Eshleman"
"Ms. Herma Hammers" []
"Ms. Horne Mershon"
"Ms. Hue Humes"
"Ms. Hyer Rhymes" []
"Ms. Ickes Messick"
"Ms. Ida Dimas" []
"Ms. In Nims"
"Ms. Ione Simeon" []
"Ms. Isa Simas" []
"Ms. Jae James"
"Ms. Jina Jasmin"
"Ms. Joane Jameson"
"Ms. Joanie Jamieson"
"Ms. Joiner Jimerson" []
"Ms. Jonie Jemison"
"Ms. Ka Mask"
"Ms. Kaelin Lemanski"
"Ms. Kali Klimas"
"Ms. Kao Smoak"
"Ms. Kari Makris" []
"Ms. Kee Meeks"
"Ms. Keli Mikels"
"Ms. Kelle Kellems"
"Ms. Kelli Miskell"
"Ms. Kellie Mikesell"
"Ms. Kena Manske"
"Ms. Korte Ekstrom"
"Ms. Lal Small"
"Ms. Lanza Salzman"
"Ms. Lapine Spielman"
"Ms. Laseter Lemasters" []
"Ms. Lathan Stahlman"
"Ms. Latrice McAlister" []
"Ms. Lea Salem" []
"Ms. LeBaron Rosenbalm" []
"Ms. Ledonne Mendelson"
"Ms. Leedy Smedley" []
"Ms. Leila Maselli" []
"Ms. Lemon Lemmons"
"Ms. Lena Selman"
"Ms. Lenahan Hanselman" []
"Ms. Lenita Simental"
"Ms. Leona Anselmo" []
"Ms. Leora Morales" []
"Ms. Lerma Lammers" []
"Ms. Lili Millis"
"Ms. Lorena Salmeron" []
"Ms. Lou Solum"
"Ms. Lue Lemus"
"Ms. Lula Allums"
"Ms. Lunde Lumsden"
"Ms. Magno Gammons"
"Ms. Mahon Hammons" []
"Ms. Mance McMeans"
"Ms. March Schramm"
"Ms. Melcher Schlemmer"
"Ms. Mi Mims"
"Ms. Miers Simmers" []
"Ms. Moen Emmons"
"Ms. Mona Ammons"
"Ms. Monti Timmons"
"Ms. Morefield Sommerfield"
"Ms. Morse Sommers" []
"Ms. Nealon Melanson"
"Ms. Nedra Marsden-Manders" []
"Ms. Neese Meneses"
"Ms. Nenita Steinman"
"Ms. Nichole Michelson" []
"Ms. Nickole Mickelson" []
"Ms. Noe Semon" []
"Ms. Nola Salmon-Lamson"
"Ms. Nona Manson"
"Ms. Noon Monson"
"Ms. Nuno Munson"
"Ms. O'Hare Ashmore" []
"Ms. Ola Lomas"
"Ms. Ona Mason" []
"Ms. Oneil Limones"
"Ms. Ora Ramos" []
"Ms. Pak Kamps"
"Ms. Peel Semple"
"Ms. Petra Stamper" []
"Ms. Pilla Millsap"
"Ms. Pinto Timpson" []
"Ms. Polen Plemons"
"Ms. Raab Abrams"
"Ms. Rachel Chalmers" []
"Ms. Rae Mears"
"Ms. Rains Sirmans" []
"Ms. Raya Ramsay"
"Ms. Raye Ramsey-Mayers" []
"Ms. Reed Demers" []
"Ms. Rees Messer" []
"Ms. Reeve Meserve"
"Ms. Reina Reisman" []
"Ms. Reith Smither" []
"Ms. Remer Remmers"
"Ms. Renetta Testerman" []
"Ms. Renita Martines" []
"Ms. Renna Manners" []
"Ms. Retha Mathers" []
"Ms. Rey Myers" []
"Ms. Rhea Rhames" []
"Ms. Rhee Hermes"
"Ms. Riehl Mishler" []
"Ms. Rio Moris"
"Ms. Roane Amerson" []
"Ms. Roby Ormsby" []
"Ms. Roe Moser" []
"Ms. Rohe Hosmer" []
"Ms. Root Ostrom" []
"Ms. Rose Mosser" []
"Ms. Rosen Sermons" []
"Ms. Rost Storms" []
"Ms. Roye Moyers" []
"Ms. Ruano Mansour" []
"Ms. Rueda DeRamus" []
"Ms. Rule Sumler" []
"Ms. Sarno Rossman" []
"Ms. Sau Asmus"
"Ms. Seaborn Bosserman" []
"Ms. Sean Maness"
"Ms. Seay Massey" []
"Ms. Seyler Messerly" []
"Ms. Signe Messing" []
"Ms. Sim Simms"
"Ms. Sion Simons" []
"Ms. Slane Lessman"
"Ms. Sloan Salmons"
"Ms. Sona Samson" []
"Ms. Spano Sampson"
"Ms. Spino Simpson"
"Ms. Stoehr Smothers"
"Ms. Susan Sussman"
"Ms. Ta Mast-Stam"
"Ms. Tait Mattis"
"Ms. Tam Stamm"
"Ms. Tapley Stampley"
"Ms. Tart Smartt"
"Ms. Tea Mesta"
"Ms. Tee Teems"
"Ms. Tegan Stegman" []
"Ms. Tena Masten"
"Ms. Tera Master" []
"Ms. Thai Mathis" []
"Ms. Thea Thames-Mathes"
"Ms. Thersa Smathers" []
"Ms. Thi Smith-Smtih"
"Ms. Thor Strohm" []
"Ms. Tia Matis"
"Ms. Tiernan Martinsen" []
"Ms. Tina Mastin"
"Ms. To Toms"
"Ms. Tona Matson"
"Ms. Tone Montes"
"Ms. Tonita Mattison"
"Ms. Tora Mastro" []
"Ms. Torain Stromain" []
"Ms. Torre Stormer" []
"Ms. Trena Martens" []
"Ms. Tresa Masters" []
"Ms. Trina Martins" []
"Ms. True Sumter" []
"Ms. Una Manus"
"Ms. Uren Sumner" []
"Ms. Wai Swaim" []
"Ms. Walley Walmsley" []
"Ms. Waneta Sweatman"
"Ms. Weil Wilmes"
"Ms. Wheat Mathews"
"Ms. Wheaton Mathewson" []
"Ms. Wilkie Milewski"
"Ms. Willa Sawmill" []
"Ms. Wille Willems"
"Ms. Willia Willaims" []
"Ms. Woodall Smallwood"
"Ms. Yelle Smelley"
"Ms. Yuen Munsey"
"The Nat Hatten"
"Ned 'Buy' Budney"
"The Neil Thielen"
"Nerissa 'Top' Petrossian" []
"Newport Town Rep Powtner" []
"Ng, Elite Gentile"
"Ola 'Buy' Boulay"
"The Olga Holgate"
"Olin 'Top' Lopinto"
"Ossie 'Top' Esposito"
"Phil 'Top' Philpot-Philpot"
"Pig Trader Partridge"
"Prime Doer Pridemore"
"Pro Akins Parkison"
"Pro Aly Paylor"
"Pro Cai Caprio"
"Pro Cain Carpino"
"Pro Cessna Casperson"
"Pro Chara Chaparro"
"Pro Cort Proctor"
"Pro Diemer Pridemore" []
"Pro Elli Perillo"
"Pro Elma Palermo-Palmore" []
"Pro Gault Portugal"
"Pro Hunt Northup" []
"Pro Ines Pierson"
"Pro Kao Kapoor"
"Pro Kearns Parkerson"
"Pro Lee Lepore"
"Pro Leo Pooler-Looper"
"Pro Leta Laporte" []
"Pro Lux Proulx"
"Pro Nat Parton"
"Pro Shen Pehrson"
"Pro Sneed Pederson"
"Pro Speier Prosperie"
"Pro Staten Patterson" []
"Pro Steen Peterson" []
"Pro Tien Pointer" []
"Pro Tye Torpey" []
"Pro Walt Partlow"
"Pundit Rees Turnipseed" []
"Pundit Sal Duplantis"
"Rae 'Top' Tropea" []
"The Rae Heater"
"The Rakestraw Starkweather"
"Reed 'Top' Depetro"
"Ren 'Buy' Burney"
"Rena 'Top' Paterno" []
"Rene 'Top' Petrone"
"Rep. [n-t] Parente"
"Rep. Al Pearl"
"Rep. Alda Laprade"
"Rep. Aldo Leopard"
"Rep. Alta Peralta"
"Rep. Aly Player"
"Rep. Ament Peterman" []
"Rep. Arie Pereira"
"Rep. Ariel LaPierre" []
"Rep. Art Prater"
"Rep. Beau Beaupre" []
"Rep. Casson Casperson" []
"Rep. Cathrine Charpentier"
"Rep. Caton Caperton" []
"Rep. Chas Schaper"
"Rep. Cho Copher-Porche"
"Rep. Cort Procter"
"Rep. Dick Pedrick"
"Rep. Don Penrod" []
"Rep. Eda Pardee-Pereda"
"Rep. Edson Pederson" []
"Rep. Ella Laperle"
"Rep. Elsa Perales" []
"Rep. Else Sleeper"
"Rep. Elsy Presley"
"Rep. Elva Peavler" []
"Rep. Elza Peralez"
"Rep. Enos Penrose"
"Rep. Erin Perrine"
"Rep. Etchison Stonecipher" []
"Rep. Fife Pfeifer"
"Rep. Gil Pilger"
"Rep. Gina Pinegar" []
"Rep. Hamel Lamphere"
"Rep. Hanscom Macpherson" []
"Rep. Hart Prather"
"Rep. Ian Napier"
"Rep. Ice Pierce"
"Rep. Ida Piedra" []
"Rep. Ike Keiper"
"Rep. Ira Rapier"
"Rep. Isa Arispe-Parise" []
"Rep. Jean Prejean" []
"Rep. Kay Parkey"
"Rep. Ken Kepner"
"Rep. Keo Roepke"
"Rep. Lee Peeler"
"Rep. Leo Lepore" []
"Rep. Ling Pringle"
"Rep. Lois Piersol"
"Rep. Loma Palermo" []
"Rep. Loo Pooler" []
"Rep. Lu Luper"
"Rep. Mac Camper" []
"Rep. Mal Palmer-Marple"
"Rep. Mana Pearman"
"Rep. Marten Parmenter" []
"Rep. Mast Stamper" []
"Rep. Mila Palmeri" []
"Rep. Monaco Cooperman" []
"Rep. Myrna Perryman"
"Rep. Ned Pender"
"Rep. Nell Pernell"
"Rep. Nelli Pellerin" []
"Rep. Ness Spenser"
"Rep. Odom Perdomo" []
"Rep. Olst Polster" []
"Rep. Omara Paramore"
"Rep. Oren Perrone"
"Rep. Oster Restrepo" []
"Rep. Ott Potter"
"Rep. Pan Napper"
"Rep. Pat Tapper"
"Rep. Pei Pieper"
"Rep. Pino Rippeon"
"Rep. Pyle Epperly"
"Rep. Rae Perera-Reaper"
"Rep. Ram Parmer" []
"Rep. Rash Sharper"
"Rep. Raye Pereyra"
"Rep. Renita Trepanier"
"Rep. Rio Pierro"
"Rep. Ro Roper"
"Rep. Ron Perron"
"Rep. Ross Prosser" []
"Rep. Sade Paredes"
"Rep. Santo Paterson"
"Rep. Sato Pastore" []
"Rep. Scot Spector"
"Rep. Scott Prescott"
"Rep. Senecal Lesperance"
"Rep. Sha Sharpe-Phares"
"Rep. Shad Shepard" []
"Rep. Shon Pherson" []
"Rep. Sion Pierson" []
"Rep. Sneed Pedersen"
"Rep. Sona Pearson" []
"Rep. Spano Apperson" []
"Rep. Staton Patterson" []
"Rep. Steen Petersen"
"Rep. Stone Peterson" []
"Rep. Strachan Carstarphen" []
"Rep. Su Purse" []
"Rep. Tal Alpert"
"Rep. Tamela Palmateer"
"Rep. Teston Petterson" []
"Rep. Tina Painter"
"Rep. Toi Prieto"
"Rep. Tone Petrone" []
"Rep. Toni Pointer" []
"Rep. Tony Poynter" []
"Rep. Toy Torpey" []
"Rep. Trula Perrault"
"Rep. Ty Petry"
"Rep. Yip Rippey"
"Rep. Zada Pedraza"
"Rey 'Top' Torpey" []
"Rich Aida Dichiara"
"Rich Al Cihlar"
"Rich Amee Cheramie"
"Rich Ava Chavira"
"Rich Brad Birchard"
"Rich Bull Burchill"
"Rich Dame Demarchi" []
"Rich Detra Reichardt" []
"Rich Earl Charlier" []
"Rich Eddie Diederich"
"Rich Elma Melichar"
"Rich Elmo Melchior"
"Rich Elmore Melchiorre"
"Rich Elsy Chrisley" []
"Rich Ena Cherian" []
"Rich Englebert Lichtenberger"
"Rich Ernst Christner"
"Rich Esteban Steinbacher"
"Rich Ester Streicher"
"Rich Fae Fichera"
"Rich-Fees Schiefer" []
"Rich Fidel Crihfield"
"Rich Genie Eichinger"
"Rich Hans Harnisch"
"Rich Irma Mirarchi"
"Rich Joe Jericho"
"Rich Kam Hamrick"
"Rich Ken Kirchen"
"Rich Lea Charlie" []
"Rich Lee Eichler-Reichle"
"Rich Leeds Scheidler" []
"Rich Leif Freilich"
"Rich Leila Chiarelli" []
"Rich Leola Chiarello" []
"Rich Lew Wilcher"
"Rich Lu Ulrich"
"Rich Lula Churilla"
"Rich Ma Marchi-Hamric-Marich"
"Rich Marti Trimarchi"
"Rich Mina Marchini"
"Rich Naoma Marchiano"
"Rich Neoma Marchione"
"Rich Nestor Chronister" []
"Rich Nigel Reichling"
"Rich Ninfa Franchini"
"Rich Noe Eichorn" []
"Rich Oma Marchio"
"Rich Paris Schirripa"
"Rich Reda Reichard"
"Rich Sam Chismar"
"Rich Sondra Richardson" []
"Rich Stenson Christenson"
"Rich Tanna Tranchina"
"Rich Tera Reichart"
"Rich Tresa Carithers" []
"Rich Ula Laurich"
"Rich Wes Schwier"
"Risa 'Top' Poitras" []
"The Ron Thorne"
"The Ronald Leonhardt"
"The Ros Stoehr"
"Rose 'Top' Stroope" []
"Rosia 'Top' Saporito" []
"Rosina 'Top' Pastorino" []
"The Roy Yother"
"The Russ Shuster"
"Sade 'Top' Podesta"
"Sal 'Top' Postal" []
"Sam 'Top' Postma"
"The Sam Thames-Mathes"
"Sara 'Top' Spataro" []
"Scion Annett Constantine"
"Scion Art Cortinas" []
"Scion Asa Isaacson"
"Scion Ash Chaisson" []
"Scion Enid Considine" []
"Scion Gale Cangelosi" []
"Scion Hal Nicholas" []
"Scion Hamel Michaelson" []
"Scion Herr Richerson"
"Scion Kern Nickerson" []
"Scion Loren Cornelison" []
"Scion Su Cousins"
"Scion Tori Sciortino" []
"Scion Una Asuncion"
"The Sebrina Eisenbarth"
"Sec. Al Cales"
"Sec. Alan Canales"
"Sec. Alaniz Canizales"
"Sec. Aldo Salcedo" []
"Sec. Alla Casella"
"Sec. Alongi Cangelosi" []
"Sec. Altman Castleman"
"Sec. Andra Cardenas" []
"Sec. Ara Caesar" []
"Sec. Arce Caceres"
"Sec. Aron Creason"
"Sec. Art Caster"
"Sec. Arthur Caruthers" []
"Sec. Ash Chasse"
"Sec. Baran Barcenas"
"Sec. Barela Calabrese"
"Sec. Bari Brescia"
"Sec. Baro Escobar"
"Sec. Belk Beckles"
"Sec. Bohr Schober"
"Sec. Borman Branscome" []
"Sec. Conant Constance"
"Sec. Corine Ceniceros"
"Sec. Difranco Defrancisco"
"Sec. Edith Tedeschi"
"Sec. Ehrlich Schleicher"
"Sec. Elva Cleaves"
"Sec. Ethan Chasteen"
"Sec. Eva Aceves"
"Sec. Fran Frances"
"Sec. Frith Fritsche"
"Sec. Hai Chiesa" []
"Sec. Hair Chaires" []
"Sec. Hans Sanches"
"Sec. Harp Schaper" []
"Sec. Hart Charest"
"Sec. Hartl Schlater"
"Sec. Herma Marchese" []
"Sec. Herr Scherer"
"Sec. Herrin Schreiner"
"Sec. Herrod Schroeder"
"Sec. Hilma Michaels"
"Sec. Hunt Chesnut"
"Sec. Hurst Schuster"
"Sec. Ian Caines"
"Sec. Iona Asencio" []
"Sec. Kali Cieslak" []
"Sec. Karon Ackerson" []
"Sec. Karr Rackers"
"Sec. Kay Caskey" []
"Sec. Kell Selleck"
"Sec. Kerin Ericksen" []
"Sec. Kort Stocker"
"Sec. Kory Croskey"
"Sec. Kurt Stucker"
"Sec. Lahr Charles" []
"Sec. Larae Escalera"
"Sec. Leta Casteel"
"Sec. Li Celis"
"Sec. Link Nickles"
"Sec. Lisa Scalise"
"Sec. Lita Castile" []
"Sec. Lo Coles-Close"
"Sec. Lory Crosley"
"Sec. Lou Clouse"
"Sec. Loura Lacourse" []
"Sec. Luna Clausen"
"Sec. Luther Schlueter" []
"Sec. Mara Maresca" []
"Sec. Maren Cremeans" []
"Sec. Marna Creasman" []
"Sec. Meehan Cheeseman"
"Sec. Mink Mickens"
"Sec. Mo Cosme" []
"Sec. Natale Escalante"
"Sec. Neal Senecal"
"Sec. Nina Encinas"
"Sec. Noah Acheson" []
"Sec. Null Cullens"
"Sec. Ora Rascoe" []
"Sec. Pal Caples"
"Sec. Parson Casperson" []
"Sec. Port Spector" []
"Sec. Rae Ceaser"
"Sec. Rains Narcisse" []
"Sec. Rap Casper"
"Sec. Ray Searcy"
"Sec. Raye Creasey" []
"Sec. Reade Decesare" []
"Sec. Rhodes Desroches"
"Sec. Rink Resnick" []
"Sec. Ro Secor-Crose"
"Sec. Rod Cordes"
"Sec. Rohr Schroer"
"Sec. Ron Cosner"
"Sec. Roni Ericson-Recinos" []
"Sec. Rother Rochester-Schroeter" []
"Sec. Rudd Scudder"
"Sec. Sal Cassel" []
"Sec. Sara Casares"
"Sec. Sher Chesser"
"Sec. Sherrod Desrochers"
"Sec. Shirl Schisler"
"Sec. Shon Chesson" []
"Sec. Sol Scoles"
"Sec. Sorin Cisneros" []
"Sec. Speed Cespedes"
"Sec. Ta Cates"
"Sec. Tal Castle" []
"Sec. Tao Coates"
"Sec. Tay Stacey"
"Sec. Trinh Christen" []
"Sec. Trish Sechrist"
"Sec. Trojan Castrejon"
"Sec. Trower Worcester" []
"Sec. Usha Chausse"
"Sec. Vera Versace" []
"Sec. Verena Severance"
"Sec. Whitner Winchester" []
"Sec. Yoko Cooksey"
"Sec. Zahn Sanchez"
"Sec. Zona Cosenza"
"Sera 'Buy' Seabury" []
"Serina 'Top' Petrosian" []
"The Serina Eisenhart"
"Shane 'Top' Stanhope" []
"The Simona Mathieson"
"Sir Alden Sindelar" []
"Sir Allec Carlisle" []
"Sir Beech Scheiber" []
"Sir Bennet Bernstein"
"Sir Benton Bronstein-Bornstein"
"Sir Bert Brister"
"Sir Charon Richarson"
"Sir Dana Sardina" []
"Sir Demeo Medeiros" []
"Sir Demko Skidmore" []
"Sir Ed Dries" []
"Sir Ely Risley" []
"Sir Emory Morrisey"
"Sir Engel Eslinger"
"Sir Enoch Richeson" []
"Sir Evon Iverson" []
"Sir Ewen Wiesner-Weisner" []
"Sir Golson Rossignol" []
"Sir Hank Harkins" []
"Sir Harp Parrish"
"Sir Jame Mijares"
"Sir Kao Sikora"
"Sir Kent Kistner" []
"Sir Lee Seiler-Leiser"
"Sir Les Sisler"
"Sir Lou Soluri"
"Sir Mozee Sizemore"
"Sir Nat Strain-Sartin"
"Sir Natt Tristan"
"Sir Neal Linares" []
"Sir Ned Snider"
"Sir Noah Harnois" []
"Sir Peter St. Pierre-Priester"
"Sir Rod Dorris" []
"Sir Rogan Garrison"
"Sir Slate Lassiter" []
"Slick 'Buy' Cybulski"
"Snob Cleta Constable"
"Snob Cutler Culbertson"
"Snob Doty Boydston"
"Snob Eula Banuelos"
"Snob Gent Bengtson"
"Snob Greer Rosenberg-Bergerson"
"Snob Kori Brookins"
"Snob Mara Abramson"
"Snob Mario Ambrosino"
"Snob Mauer Rosenbaum"
"Snob McRae Branscome"
"Snob Ola Bolanos"
"Snob Rae Seaborn"
"Snob Ron Bronson"
"Snob Roni Robinson"
"Snob Tierra Barrientos"
"Snob Torre Robertson"
"Snob Ulmer Rosenblum"
"Snob Zane Bezanson"
"Solon Chin Nicholson"
"Solon Dan Donalson"
"Solon Felt Tollefson"
"Solon Mo Solomon" []
"Solon Ned Donelson"
"Solon Zora Solorzano"
"Son 'Top' Poston" []
"Sona 'FBI' Bonifas"
"Spry Elite Priestley"
"Super Don Pounders"
"Super Ly Pursley" []
"Super Ngo Spurgeon"
"Super Phil Pulsipher"
"Super Tia Pusateri" []
"Super Tod Sperduto" []
"Supt. Call Stallcup"
"Supt. Diener Turnipseed" []
"Supt. Heck Huckstep" []
"Supt. Linda Duplantis" []
"Supt. Re Petrus" []
"Supt. Rehm Shumpert" []
"Supt. Ro Stroup" []
"Supt. Roe Stroupe" []
"Teri 'Top' Piotter" []
"Terri 'Top' Perrotti"
"The Tori Theriot"
"Tricia 'Top' Capriotti" []
"The Vi Veith"
"VP Antle VanPelt"
"VP Claire Percival" []
"VP Corine Province" []
"VP Earle Peavler" []
"VP Isa Spiva"
"VP Kali Pavlik"
"VP Leo Volpe"
"VP Leonardo Vanderpool" []
"VP Ona Pavon"
"VP Oster Prevost" []
"VP Rina Parvin"
"VP Ruis Purvis"
"VP Rule Pulver" []
"VP Toni Potvin"
"The Weston Whetstone"
"The Wiley Whiteley"
"Winner Bo Winborne"
"Winner Bost Brownstein"
"Winner Cathell Lichtenwalner"
"Winner Dese Neiswender"
"Winner Edgar Winegardner"
"Winner Eva Vanwieren"
"Winner Gose Neiswonger" []
"Winner Greta Weingartner"
"Winner Nga Wanninger"
"Winner Ott Winterton"
"Winner Sage Swearingen"
"Winner Tom Wernimont"
"Wise Al Wailes"
"Wise Anna Waisanen"
"Wise Art Waiters" []
"Wise Beulah Wiebelhaus"
"Wise Dodo Woodside"
"Wise Edith Whiteside"
"Wise Erma Wiersema"
"Wise Ethan Nesheiwat" []
"Wise Garth Seawright"
"Wise Gent Sweeting"
"Wise Gran Wasinger" []
"Wise Link Lewinski"
"Wise Lon Lewison"
"Wise Merchant Schwieterman" []
"Wise Sal Swailes"
"Wren 'Buy' Newbury"
"Yan 'Top' Payton" []
"Zane 'Top' Potenza"
"The Zelina Hazeltine"

table of real estate ads [xxv9]
blurb
"A-Clan Canal"
"Ace-Pal Palace"
"Ah, Acute Chateau" []
"Aliv-Vail"
"Amoretto's Stateroom"
"Armani Airman Marina"
"Avert-Public Private Club"
"away from Draggradgard" [p]
"away from Mo-Hut-Mouth" [p]
"Bayes-by-Sea"
"Bogus-Lawn Bungalows"
"Camus's Sumacs"
"Capel Place"
"Capella LaPlace"
"Cary Tudor's Courtyards"
"Cassandra's Sandaracs"
"Covered Red Cove" []
"Coy Slots So Costly"
"Crime-Pays Pricy Mesa"
"Curb-Yon-Cult Country Club"
"Dampier's Emir Pads"
"Dates-stead"
"De La Pena's Esplanade" []
"Desirable Idler Base"
"Dig-Long Lodging" []
"Doc Harr's Orchards" []
"Epic Clean Nice Place"
"Evans Rad Verandas"
"Furman's Sun Farm"
"Gold-Sign Lodgings" []
"Got-Caste Cottages"
"Hedge Manor Garden Home" []
"High-Set Heights"
"Hope Sunset Penthouses"
"A Hut, Haut"
"I-Arrive Riviera"
"I, Empress Premises"
"I'm-docile Domicile"
"Icon-Set Section"
"Idle-Cat Citadel"
"Interred Trendier"
"Is-Vast Vistas"
"La Paz Plaza"
"Lake Big Bilkage"
"Lancaster Ancestral Rest-Canal"
"Le God-Lodge" []
"Leroux Luxore"
"Leveraged Everglade"
"Live at IT-Vale" []
"Liveliest-Site Ville"
"Lo-Meh-Holme"
"Log Cabin on Lac Big"
"Look-Fine-Life Nook"
"Loose Lips Pool Isles."
"Lustre-Ulster" []
"Macy's YMCAs"
"Marson Manors" []
"Monsour's Sunrooms"
"Mr. Snoot-Morton's"
"New Smooth Townhomes" []
"Nice Solo Colonies" []
"Nicest Tonier Intersection"
"No-Law-Bug Bungalow" []
"No-Quarters-Torn Square"
"No-Recluse Enclosure"
"No-Rube-Bourne"
"Notice-Us/Cut-Noise Counties"
"NOW St. Towns" []
"Obtains-Boastin['] Bastion" []
"Often-Lark Lakefront"
"Okay-Now Nookway"
"One Patch Not Cheap"
"Ooh, Spot Too Posh"
"Overland Rondavel" []
"Pad-to-Adopt"
"Paquita's Aqua-Pits"
"Pascale Palaces"
"Pastore Seaport" []
"Pay-WHAT Pathway"
"Pays-How Shopway"
"Peon-Dream Promenade" []
"Peralta's Palestra" []
"Perma-cool Room Place"
"Petralli's Tall Spire"
"Piccadilly Idyllic Cap"
"Piers-spire" []
"A Place-Palace" []
"Planned-Pen Land"
"Pleasant Pat's Lane" []
"Pleasant Platanes" []
"Plow Into Owl Point Twin Pool"
"Pod at Da Top to Adopt"
"Potherthorpe" []
"Poulson's Sun Pools"
"Priess Spires"
"Private Trip Ave" []
"Relog-Focus Golf Course"
"Republic's Club Spire"
"Rest Homes Most Sheer"
"Riverside Rise Drive"
"Rope Vista So Private"
"Rose-Theme Tree Homes" []
"Rosendale Oleanders" []
"Sales-Paid Palisades/Ideal Pass"
"Sighshire Highrises"
"Sin-Mason Mansions"
"Singular Snug Lair" []
"Slap-Ennui Peninsula"
"Snoot-So-Ton" []
"Snotston" []
"So Private Rope Vista."
"Social-Pro Acropolis" []
"Some Niche Nice Homes"
"Sportsport"
"A Spot So Pat" []
"St. Care-caster" []
"St. Eli Islet"
"Stafford Fad Forts"
"Stephen's Hep Nests"
"Stetler's Trestles"
"Stonesmere: Remoteness"
"Sue Ho's Houses"
"Sullivan Sun Villa" []
"Sunshine Hues Inns"
"Tannest-Tenants St. Annet"
"Tastee-Estate"
"Tons-Hep Hot Pens"
"Tons New Now Nest"
"Too-Plush Pool Huts"
"Top Dens to Spend"
"Top-Floor Roof-Plot/Pool-Fort"
"Trop-Port"
"Truco Court"
"Un-Bore-Bourne" []
"Upscale Capsule"
"Warm Mawr"
"Way-Nice Icy-Anew Wine Cay"
"West-End Dew-Nets New Dest"
"Western St.: Newer"
"Wonder Den Row" []
"Zelinsky Skylinez"

table of self-help bestsellers [xxv0]
blurb
"[if player is male]Fears, Mr[else]Fear, Mrs[end if]? Torn? TRANSFORMER[r], by Storm Ferran"
"Able to Be a Lot[r], by Beata Botello"
"Absolutely All-Best You[r], by [if player is male]Les Baluyot[else]Betsy Ulloa[end if]" []
"Accused of Aced Focus"
"Aches: To Teach So[r], by Chet Sao"
"Aggression: Greasing So[r], by [if player is male]Sergio Gans[else]Agnes Goris[end if]" []
"Ah, I Prep: Happier[r], by Rip Heap"
"Ah, Spur Us: Harp[r], by Pa Rush"
"Aided Anew, Win[r], by Edwina Wieand"
"Aim More: a Memoir[r], by Emma Rio & Mia Rome"
"Aim, Plod, DIPLOMA[r], by Pam Idol" []
"Aim Top Greed: Get Paid More[r], by [if player is male]Moe Patridge[else]Madge Prieto[end if]"
"Al, Be Able[r], by [if player is male]Abe Beall[else]Lea Babel[end if]"
"All-Glib-Now Lowballing[r], by Will Galbon"
"And Lose No Deals[r], by Sane Old [if player is male]Ed Sloan[else]Dena Sol[end if]" []
"Anti-Leprosy Personality[r], by [if player is male]Troy Espinal[else]Alison Petry[end if]"
"Any Greed? Green Day[r], by Randy Gee & Dean Grey" []
"Any Modem? Mad Money[r], by Mandy Moe"
"Ar, Get Great[r], by [if player is male]Garrett Age[else]Tara Eggert[end if]" []
"Astuter Stature: Treat Us[r], by [if player is male]Rus Tate[else]Sue Ratt[end if]" []
"Attain Indeed[r], by Denita Tienda" []
"Autonomy to YOU, Man[r], by Una Mooty" []
"Aw, Don't be Beat Down[r], by Dan Tebow" []
"Aw, Rump, Warm Up[r], by Pa Wurm"
"Back Up to Pot a Buck[r], by Pat Kubco"
"Bad, Weak? Be Waked[r], by Kade Web"
"Barest Ego, Be So Great[r], by Tresa Boge"
"Be a Thing: in the Bag[r], by Beth Nagi" []
"Be a Tot to Beat[r], by Abe Ott & Bo Tate"
"Be Busy, Bub: YES[r], by Sebb Yu"
"Be Doing: Big Done[r], by Ed Bogin" []
"Be Gutsy, Get Busy[r], by [if player is male]Guy Best[else]Betsy Gu[end if]"
"Be Loud: DOUBLE[r], by [if player is male]Bud Leo[else]Deb Lou[end if]"
"Be-Pro Probe: Bop [']Er, Po['] Reb[r], by Beppo Rober"
"Be Rotted? Do Better[r], by Dot Ebert"
"Beat Down a Debt Now[r], by Tad Bowen" []
"Beat Them? That Be Me[r], by [if player is male]Matt Heeb[else]Bette Ham[end if]"
"Being First: Fringe Bits[r], by Brigit Fens"
"Bet, Gain: Begin at Beating[r], by Ben Taig" []
"Birth of a Habit for Faith, Bro[r], by Tobi Fahr"
"Bitter? Me? I'm Better[r], by [if player is male]Tim Ebert[else]Mei Brett[end if]"
"Bold Cue? Could Be[r], by Luc Bode" []
"Bonfire for BEIN['][r], by Rob Fine" []
"Book List to Bilk So[r], by Otis Kolb"
"Bribe, Cuss: Subscribe[r], by [if player is male]Bruce Biss[else]Bess Rubic[end if]" []
"Can You? Ay, Unco[r], by Una Coy"
"Career Goals: Sager Oracles[r], by [if player is male]Roger Casale & Cole Grasser[else]Grace LaRose[end if]"
"Charge It: A Get-Rich Cheat-Rig[r], by [if player is male]Chet Riga[else]Teri Gach[end if]" []
"Chart So to Crash[r], by Star Cho"
"Choir Troop, Poor to Rich[r], by Rocio Thorp"
"Clean Merit, Mercantile[r], by [if player is male]Ira Clement[else]Teri McLean[end if]"
"Coaching: Go, a Cinch[r], by Nag Chico"
"Coin [']Em: Income[r], by Nic Moe"
"Comfy? Fie! My Office[r], by Mico Fyfe"
"Common is Bad, Nomadic Mobs[r], by [if player is male]Bascom Dimon[else]Minda Coombs[end if]"
"Compared-Compadre Doer Camp[r], by [if player is male]Pedro Mac[else]Pam Coder[end if]"
"Dark Hills, Hard Skill[r], by Dirk Halls"
"Darn, Homey: More Handy = Hard Money[r], by [if player is male]Andy Ohmer[else]Norma Hyde[end if]" []
"Dave Can Advance[r], by Ned Vaca"
"Day Job Joy? Bad[r], by AJ Boyd"
"Dear, Got Aged? Rot, Do great[r], by [d-t] Ager" []
"Dirt Cheap: Adept Rich[r], by [if player is male]Thad Price[else]Adi Precht[end if]"
"Distance: Ascend It[r], by Ted Cains"
"Do Drop a Poor Dad[r], by Rodd Pao"
"Do-Income-Coin Demo[r], by Nice-Mood [if player is male]Codi Moen[else]Enid Como[end if]"
"Do OK, Grow: Good Work[r], by Og Kor-Dow" []
"Doing More Mood, REIGN[r], by [if player is male]Ed Mooring[else]Mei Gordon[end if]"
"Don't Fail, Naif Dolt[r], by [if player is male]Don Latif[else]Loni Daft[end if]"
"Doubters, Yo? Do Your Best[r], by [if player is male]Tory DuBose[else]Ruby DeSoto[end if]"
"Dr. Be Un-Burned[r], by [if player is male]Bud Ren[else]Deb Nur[end if]" []
"Drab Then Bent Hard: the Brand[r], by Ned Barth"
"Driven Dr. Vine[r], by Vi Dern"
"Driven Men Never Mind[r], by Ned Mervin"
"Earn Top: Part One[r], by Patreon Pat Reno" []
"Earner Gang Range[r], by Regan Agner"
"Edictal Dialect[r], by Ted Laci" []
"Ee, Grant [']Em Agreement[r], by Gene Marte" []
"Effectiveness: Set Five Fences[r], by Venice Steffes"
"Ego Rusty? Get Yours[r], by Roy Guest & Guy Oster" []
"Eh, Target the Great[r], by Garth Tee"
"End the Now, Then Do New[r], by Newt Hoden"
"Energised Reseeding[r], by [if player is male]Sid Greene[else]Desiree Ng[end if]"
"Exert Any Extra Yen Next Year[r], by Rex Taney & Axe Tyner"
"Fail it New? Win at Life[r], by Twila Fine & Fae Litwin"
"Fear-Slant? Learn Fast: Snarl, Fate[r], by Leta Farns"
"Flowering, Re-Flowing[r], by Inger Wolf"
"Follow Through: Ooh, Full Growth[r], by Thor Wolfghoul"
"Forge Yen of Energy[r], by Geno Frye"
"Found it Fun? Do It[r], by Di Ufton" []
"Freezing, Grief, Zen[r], by Inez Ferg"
"Fuels-Self U[r], by Fufu Essell"
"Gain-Led Leading[r], by [if player is male]Gil Dean[else]Ida Glen[end if]" []
"The Gamut Taught Me[r], by Matt Huge"
"Generate, Teenager[r], by Ena Geter"
"Generating Greatening[r], by [if player is male][n-t] Ginger[else]Nina Eggert[end if]"
"Generic? Bah, Begin, Reach, Be in Charge[r], by [if player is male]Brice Hagen[else]China Grebe[end if]"
"Get Done, Teen-Dog[r], by [if player is male]Ted Goen[else]Dee Tong[end if]" []
"Get Mo[']? Got [']Em[r], by Meg 'OMG' Otte" []
"Get Money, Net My Ego[r], by [if player is male]Monty Gee[else]Toy Menge[end if]"
"Get More to Merge[r], by [if player is male]Tom Eger[else]Meg Rote[end if]"
"Get Rare, Greater[r], by Greg Errera-Tate" []
"Gets-Mine Meetings[r], by [if player is male]Gene Smit[else]Meg Stein[end if]" []
"Give [']Em Vim, Gee[r], by Vi Emge"
"Give a Lot? Vie, Gloat[r], by [if player is male]Vito Gale[else]Leia Vogt[end if]"
"Glummest Mugs, Melt[r], by Lemm Gust"
"Go Potent: Get on Top[r], by Otto Peng"
"Go, Spur Groups[r], by Gus Orso-Grupp"
"Go Trade: Do Great[r], by [if player is male]Tad Gore[else]Georgetta Rodda[end if]" []
"Goal, Gent: Get Along[r], by Teo Gangl" []
"Got Broke? A Great Book[r], by Kao Gobert & Bok Ortega"
"Got Need? Get Done[r], by Ted Goen" []
"Grab Dimes? Big Dreams[r], by [if player is male]Sid Amberg[else]Ma Bridges[end if]"
"Grannies['] Earnings[r], by Erin Gans"
"The Greatest Targets THEE[r], by Esther Tatge"
"Greet Mo['] To Merge, Get More[r], by [if player is male]Tom Eger[else]Meg Rote[end if]" []
"Gripe? Aw, No: Gain Power[r], by Gwen Proia"
"Grit-Girt Trig" [x]
"Grow Thin Right Now[r], by Gwin Roth"
"Halfway? Fa-La, WHY[r], by Fay Wahl" []
"Harried? Nah, Handier? Rah[r], by [if player is male]Darin Hreha[else]Rhea Hardin[end if]"
"Harried? Rah, Ride Hardier[r], by Ira Herd" []
"Heed, Get the Edge[r], by Ted Ghee"
"Hi-Fats: a Shift[r], by Si Haft"
"Hip? Go, Brag[r], by Gia Brophy"
"His Two So With-it Hows to Wish[r], by Otis Show-Whit" []
"Holier? Cruder, Louder, Richer[r], by [if player is male]Ulrich Roeder[else]Corrie Hurdle[end if]"
"Hone Best: Be Honest[r], by [if player is male]Seth Bone[else]Beth Enos[end if]"
"How-Tiny Whiny to Why Not I[r], by Hoyt Win" []
"Hup! Rise, Pushier[r], by Pei Rush"
"I Bash Po['] Phobias[r], by Pia Bosh" []
"I Can! I Can![r] by Nica Cain"
"I Gotta Go at It[r], by Gia Ott" []
"I Groan or Gain[r], by [if player is male]Graig Noorani[else]Irina Gongora[end if]"
"I Kept ETA. Keep At It[r], by Tate Pike"
"I On Top Option[r], by [toti] Po"
"I, Once on Ice[r], by Connie Ocie"
"I Pelt on at Potential[r], by [if player is male]Eli Patton[else]Leona Pitt[end if]" []
"I Prod, O Drip[r], by Dodo Pirrip"
"I Represent Enterprise[r], by [if player is male]Rene Priest[else]Erin Peters[end if]"
"I Snag Gains[r], by Ana Siggins" []
"I'd Org, Rig, Do[r], by Rodd Giorgi"
"I'm-Pert Permit: PR Time[r], by Emmitt Ripper"
"I'm Stuck? Um, STICK[r], by [if player is male]Stu Mick[else]Kim Cust[end if]"
"Ideals: Sad Lie[r], by Dessie Dalila & Alesia Siddle" []
"Ideas Open: an Episode[r], by Sandie Poe"
"If in Lag, Failing[r], by Gil Fina"
"Imagine: Me, I Gain[r], by Mia Inge" []
"Imposs.? So Simp[r], by Pi Moss"
"In a fog of GAIN[r], by Gio Fan"
"Income Nut? Count Me In[r], by [toti] Munce"
"Increased Ardencies[r], by [if player is male]Eric Snead[else]Enid Cesar[end if]"
"Inept Force, Frenetic Op, PERFECTION[r], by Pierce Font"
"It Hones to Shine[r], by [if player is male]Theo Sin[else]Tish Eno[end if]"
"Itch, Chit[r], by Tic Hitch"
"La, Be Able[r], by [if player is male]Abe Beall[else]Lea Babel[end if]"
"Laws: Do Sow, Lad[r], by Sol Daw"
"Lead Yon: No Delay[r], by [if player is male]Dean Loy & Leo Nady[else]Ola Endy[end if]"
"Lo-Debt: Be Told[r], by Deb Olt" []
"Lo! Snap! On, Pals[r], by Sol Sapp-Nolan" []
"Lo, Woken! New Look![r], by Ken Wool"
"Lobby Oddly[r], by Dolby Bloyd-Oldby" []
"Log a Goal[r], by Olga Lago"
"Loiter? Er, Toil[r], by [if player is male]Elliot Tierro[else]Lottie Lorrie[end if]"
"Luck is Fate? Suck at Life[r], by [if player is male]Alf Stuckie[else]Staci Fluke[end if]"
"Machines: I Can Mesh[r], by Mica Shen" []
"Make a Splash? Alphas, Ask Me[r], by Kasha Maples & Shameka Pals"
"Make Grit [']N Marketing[r], by [if player is male]Mike Grant[else]Kim Garnet[end if]"
"Many Plot Not Amply[r], by [if player is male]Tony Lamp[else]Pat Lymon[end if]"
"Me? Or MORE[r], by Moe Romer" []
"Meaningful Gainful Men[r], by [if player is male]Miguel Fann[else]Una Fleming[end if]"
"Means to Steam On[r], by [if player is male]Stan Moe[else]Noe Mast[end if]"
"Meek Bile? Be Like Me[r], by [if player is male]Mike Leeb[else]Mei Belke[end if]"
"Meek, Fair? Make Fire[r], by Mika Reef"
"Mere Oops: Some Rope[r], by Esme Poor"
"Mid-Range Dreaming[r], by [if player is male]Ned Grima[else]Meg Randi[end if]" []
"Mo['] Money Memo Yon[r], by Emmy Ono"
"Money, Power: Weeny Promo, Weepy Moron[r], by Ewen Pomroy"
"Mooninesses['] Noisomeness[r], by [sim] Esson"
"Moored? Demo or Do More[r], by Rod Moe"
"Motiv-Vomit[r], by Vi Tom"
"My Neo-Money[r], by Emmy Nooney"
"My Road's Mad Rosy[r], by Rod Mays"
"Nail Down an Old Win[r], by [if player is male][else]Diann Low, Dawn Olin & Nona Wild[end if]"
"Nearly Earn, Yen, Rally[r], by Arlyne Larney"
"New Haters: the Answer[r], by Stew Ahern"
"New Life? Few Line[r], by Ewin Elf"
"A New-Old Deal Now[r], by [if player is male]Dan Lowe & Lon Wade[else]Lea Down[end if]"
"New Ploy: We Ply On[r], by Lyn Powe"
"No Habits to Banish[r], by [toti] Bash & [if player is male]Ash Tobin[else]Sion Bhat[end if]"
"No-I-Won't Into NOW[r], by Noni Two"
"No Place Once, Pal[r], by Al Ponce"
"No Spite? So Inept! To Spine[r], by Tippie Ostenson" []
"Not Enough? On, TOUGHEN[r], by Teno Huong"
"Not Huge? Toughen[r], by Geo Hunt" []
"Not-Scary CAN Story[r], by [if player is male]Ron Stacy[else]Caryn Tso[end if]"
"Not Sure: to Nurse One's Rut[r], by Ron Suet"
"Now Let's: Lots New[r], by Lon West"
"Oftener, I Grip Profiteering[r], by Rini Goepfert"
"Oh, Acuter Outreach: Euro-Chat, a Retouch[r], by Hector Au"
"Oh, Get the Go HE Got[r], by Theoto Hegg"
"Oi, to It[r], by Tio & Toi Ito"
"OK, Stir to Risk[r], by Kristo Kortis"
"Ol['] Law of Low Loaf[r], by [if player is male]Al Woolf[else]Ola Fowl[end if]"
"Omni-Range Enamoring[r], by Mina Rogen"
"On the Path: ahh, Potent[r], by Ethan Hopt"
"On Turgid Doing-Rut? Grind Out[r], by [if player is male]Rudi Tong[else]Tori Gund[end if]" []
"Once, Louts Uncoolest[r], by [if player is male]Leo Counts[else]Su LoConte[end if]"
"One Hot To-Hone Note, Oh[r], by Theo Eton-Hoon" []
"One Lag? Go Lane[r], by Angelo O'Lange" []
"One Raise: No Easier[r], by [if player is male]Rao Niese[else]Iona Rees[end if]"
"One's Rant, Resonant: EARN TONS[r], by [if player is male]Art Sonne[else]Rose Tann[end if]" []
"Ooh, Weep: Woe, Hope, Whoopee[r], by Howe Poe"
"Oops, Hello Loopholes[r], by Loo Heslop"
"Or Thrice to Richer Rhetoric[r], by [if player is male]Eric Hort[else]Terri Cho[end if]"
"Organized? Zing! A Doer![r], by [if player is male]Ezra Godin & Edgar Zion[else]Zoe Gardin & Zona Ridge[end if]"
"Out, Grhh, Through[r], by [if player is male]Hugh Ort[else]Ruth Goh[end if]"
"Out, Man! AMOUNT![r] by Mo Tuan"
"Outraced, Educator[r], by Ace Tudor" []
"Overcome-More Cove[r], by Em Coover & Eve Croom"
"Overmatched? Devote Charm[r], by Ahmed Vector"
"Pad, Pen and Pep: Append[r], by Dan Epp"
"Parasite? Aspirate![r] by [if player is male]Asa Tripe[else]Pia Tesar[end if]" []
"Parkings? Sparking[r], by [if player is male]Kip Garns[else]Kris Pang[end if]"
"Persisting Springiest[r], by Tessi Pring"
"Petulant? Up, Talent[r], by [if player is male]Paul Nett[else]Lupe Tant[end if]" []
"Phat Me: the Map[r], by Empath Hammett Happe" []
"Plains Zeroes, Lazier Peons: Personalize[r], by [if player is male]Zino Perales & Ron Speziale[else]Roseline Paz & Alison Perez[end if]"
"Plan Oft, Flap Not[r], by Flo Pant"
"Plan This: Hip Slant[r], by Phil Nast"
"Po['], Shot to Posh: Photos[r], by Otto Hoss-Hopp"
"Poke: Do OK, Dope[r], by Ed Koop"
"Poor's Wack: Swap, Crook[r], by Crow Pasko"
"Posit Goal, Apologist[r], by Gita Sloop & Gail Spoto"
"Pot O['] Gold: Good Plot[r], by [d-t] Ploog"
"Power Plays, Lawyer Opps[r], by Apryl Swope"
"Preps to Pre-Post[r], by Tor Epps"
"Presume Supreme[r], by Sue Prem"
"Proactive or Captive[r], by [if player is male]Victor Pea[else]Tova Price[end if]"
"Profitable: a Brief Plot[r], by Felipa Bort"
"Profiteers['] Ripe Fortes[r], by Ferris Pote"
"Prosper, Perps or Propers[r], by Pop Serr"
"Re-Adjust, Adjuster[r], by Stu Jared"
"Reaching? In Charge[r], by [if player is male]Ari Cheng[else]Geri Chan[end if]"
"Reavowing Overawing[r], by Gavin Rowe"
"Redeem? No, Need More[r], by [if player is male]Nemo Reed[else]Renee Dom[end if]" []
"Resonate So Neater[r], by Antos Ree" []
"Richen Up, Punchier[r], by Rupe Chin"
"Right Stuff: Turf Fights, Guff, Thirst[r], by Griff Shutt"
"Risk on or Sink[r], by Rossini Kronk"
"Rotting-Not Grit[r], by Tri Tong"
"The Rules Hurt, Else[r], by [if player is male]Rush Leet[else]Hester Lu[end if]" []
"Run With Hurt, Win[r], by Huw Rint"
"A Rut On To a Run[r], by Nat Ruo"
"Salaries Assailer[r], by [if player is male]Les Arias[else]Ali Sears[end if]"
"Saving Vs. Agin['][r], by Vi Gans" []
"See a Lot to Lease[r], by Leo East"
"See Bills: Less Bile[r], by Lee Bliss"
"Sell Hard, Shred All[r], by Red Halls"
"Sell More Junk? More Sullen (J/K)[r], by Joker Mullens"
"Semi-Private Imperatives[r], by Mavis Petrie"
"Servitude Divesture[r], by Trudi Eves"
"Set, Pup? Step Up[r], by Stu Epp"
"Shlep-Helps[r], by Shepp Shell"
"Shy? Up! Pushy[r], by Sy Phu" []
"Sing Wealth With Angels[r], by [if player is male]Ewing Stahl[else]Twila Sheng[end if]" []
"Sit Free? Sir, Feet: Set Fire[r], by Seifert Siefert"
"Slip [m-e] Simple Impels[r], by [if player is male]Emil Lepp-Sims[else]Ms. Millie Epps[end if]" [x]
"Slouch-Free, So Cheerful[r], by [if player is male]Les Foucher[else]Loree Fuchs[end if]"
"Smarting Wit, Arm Twisting[r], by Matt Wirsing & Grits Witman"
"So Meek? Seem OK? Seek Mo['][r], by Em Seko"
"So Plan On, Pals[r], by Pop & Son Llanas" []
"So Told, Do Lots[r], by [d-t] Los" []
"So, Wealth: Steal How? Late Show[r], by [if player is male]Theo Laws[else]Tosha Lew[end if]" []
"Soap, Stone, Teaspoons[r], by [if player is male]Enos Patos[else]Tessa Poon[end if]"
"Soar Beyond Body, Reason[r], by [if player is male]Enos Broady[else]Sonya Dober[end if]"
"Sob-Mire? Be Mo['], Sir[r], by Rob Mies"
"Soft Rutn to Turfs or Tufts of Trust[r], by [if player is male]Stu Fort[else]Ros Tuft[end if]"
"Sow, Push: How Puss Shows Up[r], by Huw Poss"
"Spriteful Uplifters[r], by Lupe Frist & Lu Pfister"
"Stat, Be at Best[r], by Betta Bassett"
"Stop Being Inept Gobs: Bingo, Step[r], by Pet Gibson"
"Stringiest Grittiness[r], by Stig Estrin"
"Suck, Pal? Up Slack[r], by Cap Lusk & Luc Spak"
"Suffice, Pep: Puff Pieces[r], by Effie Cupps"
"Sullen? Un-sell[r], by Les Lun"
"Sworn: DO. No Words[r], by Don Swor" []
"Task on Me: Make Tons[r], by [if player is male]Kent Amos[else]Mena Kost[end if]"
"Task-Work that Works[r], by [if player is male]Hawk Trost[else]Kath Worst[end if]"
"Tell So to Sell"
"Tenacity's Intact, Yes[r], by [if player is male]Tiny Cates[else]Stacy Tien[end if]"
"THEO's Ethos[r], by Hoot Sheets" []
"Thrice So to Riches[r], by [if player is male]Seth Rico[else]Trish Coe[end if]" []
"Thus, Be In, But Shine[r], by Nib Shute"
"Thy Self Felt Shy[r], by Fly Seth"
"Tiny Doubt? Don't Buy It[r], by Tito Bundy" []
"Tip, Mac: Impact-It Camp[r], by Taci Timm-Capp" []
"A Titan in Attainin['][r], by Tina Tian" []
"To Crank on Track[r], by Nat Rock"
"To Impugn Gumption: Mug Point[r], by Tomi Pung"
"To Plans: No Splat[r], by Sal Pont"
"To Share the SOAR[r], by Sethora Hartsoe"
"To Shine, This One: I, Honest[r], by [tt] Shen" []
"Tons-Real Learns to Earn Lots[r], by [if player is male]Art Olsen[else]Ola Stern[end if]"
"Too Nervy to VERY ON[r], by Troy Evon & Roy Vento" []
"Tradin[']: Dart in, Darn it[r], by Dr. Tina Ridant" []
"Train On: an Intro[r], by [if player is male]Nat Niro[else]Roni Tan[end if]"
"Trained in Trade[r], by [if player is male]Ira Dent[else]Tia Dern[end if]"
"Trend Up: Prudent[r], by Red Punt"
"Try Out as You Start[r], by [if player is male]Ray Stout[else]Toya Rust[end if]"
"Tussler Results: Rutless[r], by Les Rust"
"U Sad Bro? Soar, Bud[r], by [if player is male]Rob Suda[else]Ros Daub[end if]"
"Um, Efforts Must Offer More Stuff[r], by Smet Ruoff" []
"Um, Slap/Slam Up a Slump[r], by [if player is male]Al Sump[else]Su Palm[end if]"
"Unaware? New Aura[r], by Ranae Wu" []
"Up, Lead: Due, Pal[r], by Ed Paul"
"Up, Slam, um, Slap a Slump[r], by Su Lamp"
"Up to Par? Pop a Rut[r], by Art Pupo"
"Using Suing[r], by Suggins Niu" []
"Very Nice Icy Nerve[r], by Vic Neyer"
"Vie, Each: Achieve[r], by Evie Cha"
"Waste Life? Fail, Sweet[r], by [if player is male]Lewis Fate[else]Fleta Wise[end if]" []
"We All Can Claw, Lean[r], by Lance Law"
"Weak No More: O, Remake Now[r], by Ewen Koroma"
"Wealth I'd Deal With[r], by [if player is male]Thad Weil[else]Edith Law[end if]" []
"Wealth, Power: a Whole Twerp[r], by Lew Peaworth"
"Wealth: the Law[r], by Al Thew"
"Wealthy Fame: Meet Halfway[r], by [if player is male]Mathew Faley[else]Fleta Mayhew[end if]"
"Weary Might: Why I'm Great[r], by [if player is male]Gary Withem[else]Margy White[end if]"
"Wee Man? A New Me[r], by Mae Wen"
"Weepy Moron? MONEY! POWER![r] by Ewen Pomroy" []
"Wellness: New Sells[r], by Wes Snell" []
"A Whap, Icy: Chip Away[r], by Yip Wacha"
"What-Ifs? Aw, Shift[r], by Tish Faw"
"Whiner Oft For the Win[r], by Hew Fortin" []
"Whole Heart Wealth Hero[r], by [if player is male]Lee Horwath[else]Heather Low[end if]" []
"Win, Dog: Now, Dig?[r] by Di Wong-Godwin"
"Wins Erase Weariness[r], by [if player is male]Wes Raines[else]Erna Weiss[end if]"
"Yah, Opps! Posh Pay: So Happy[r], by Ash Yopp" []
"Yessy-Do Odyssey[r], by Syed Soy"
"Yo, Bend Beyond[r], by Boyden Dobney" []
"Yo, Click Cockily[r], by Colicky Coy Lick"
"Yo, Meek Man, Make Money[r], by Yankee Mom Emmy O'Kane"
"You Mo['] Often Out of Money?[r] by Mouton Foye"

table of songs you could write [xxvx]
blurb
"A-Holes So Hale"
"A-One St.: So Neat" []
"Ace, Pine in Peace"
"Ach, gut-caught"
"Achin['], Mr. Rich Man"[]
"Ad Men's Amends" []
"Aging Bod Going Bad"
"Ah, Dolts Had Lots" []
"Ah, Gutty, that Guy"
"Ahem, Try my Heart" []
"Aid Me, Media"
"Alive [']N Leavin[']"
"All I Do: Ail, Old"
"Alone by Baloney" []
"Alone by Yob Lane"[]
"An Alto, Atonal"
"Amity is no Animosity"
"Amity, it May, My Tia"
"And Soul Unloads"
"Any Ode One Day"[]
"Arty Mr. Martyr"
"As I Hung Anguish"
"As I Sow, So I Was"
"Askin['], I Sank"
"At Her Heart, eh, Rat" []
"Auldest Saluted"
"Aw, a Fray Far Away"
"Aw, Ah, Fly Halfway"
"Aw, Borin['] Rainbow"
"Aw, Busy Subway"
"Aw, Gee, We Age"
"Aw, Life, We Fail"
"Aw, offer, Wear Off"
"Bad Loss, Sad Slob"
"Bad Luck Duck Lab" []
"Bar Scene, Beer Cans" []
"Barer ol['] Laborer, Real Bro"
"Be Dear, Beer Ad"
"Be Lame, Blamee"
"Be Like Bilkee Kilbee"
"Belt Coy Jive Objectively"
"Belt our Trouble"[]
"Bide Un-Buried Ire, Bud"
"Blessed Bedless"
"Blighted Bedlight"
"Bloody Ol['] Body, Old Boy" []
"Bolder Old Reb"
"The Bones Been Shot" []
"Boney Al, Lean Boy"[]
"Boosts to Sobs"
"Boredom's Somber Do"
"Boss, Lend Boldness" []
"Bottlers['] Blotters" []
"Bred to be Trod"
"Bum-Self Fumbles"
"Bummed, Dumb Me"
"Bump on, Po['], Numb"
"The Bums Hum Best" []
"The Bus Be Thus" []
"But [']S OK to Busk"
"By a Glad Bald Gay Bag Lady"
"A Cad To DataCo"
"Cafe Ad Facade"
"A Call Went Can't We All"
"Can't Do Dat Con"
"A Cancer Can Care"
"Canned [']N Caned"
"Capitol Coal Pit"
"Carsize Crazies"
"Casino is a Con" []
"Cave and Advance"
"A Chance Can Ache"
"Chap, I'm No Champion" []
"Chap, in a Pinch" []
"Charmin['] Rich Man" []
"Cheap St. Hep Cats" []
"Cheater [']til Athleticer"
"Chew fat? Few Chat"
"Chubby Ole Cubbyhole"
"City Runs on No Scrutiny"
"Clochard Doc Crahl" []
"Cloud, Sky, Lucky Sod"
"Club Woes, Blue Cows"
"Co-Try to Cry"
"Coal Miner Marcelino" []
"Codas O['] Cads"
"A Cog in GainCo"
"A Cold Ol['] Cad"
"Cold Row Old Crow"
"Come On, OmenCo CEO, Mon" []
"Compose Mo['] Copes"
"Con Has No Cash" []
"Continuing Unnoticing"
"Could Be Blue, Doc" []
"Country, Cry Unto RuntyCo"
"Croon on, Orc"
"A Crumb-Bum Car"
"Cry On Corny Crony"
"Cute Lorn, Not Cruel"
"Daily Lady I'd Lay"
"Damn Toil's Not Dismal"
"Darcie, I Cared"
"Dark Times['] Risk Tamed"
"Darn Squat Quadrants"
"Dating, Dang it" []
"Delia's Ideals Sailed" []
"Depressing Pre-Designs"
"Dereg Greed"[]
"Derek's Skeer'd"
"Dim Hearts, Hard Times, This Dream" []
"Dinners of No Friends"
"Discharge-Cash Dirge" []
"Do-OK-Rec Rock Ode" []
"Do Soul, So-Loud Sod Lou"
"Do Stay, Todays" []
"The Dog He'd Got" []
"Dog, I Moon, I'm No Good"
"Doodles, Old Odes"
"Dourest Detours, Rousted" []
"Down, Burden, Rundown Bed"
"Drudge On, Underdog"[]
"Dryest Red Sty"
"A Dude's Sad Due" []
"Duet So Used to Ousted"
"DuSable's Sad Blues"
"Each Ache"
"Eh, Tragic Grit-Ache" []
"End Right the Grind"
"End, Smit Mindset" []
"Enfettered Tender Feet"
"Environs Riven, Son"
"Evictors['] Vortices" []
"Evolve, Ol['] Love"
"Ex-Hopin['] Phoenix"
"Fanboys of Any BS"
"Far Out of a Rut"
"Fastin['] Faints"
"Feelin Po['], Peon Life"
"Few Poor of Power"
"Filing a Failing" []
"Flail Song: Falling So"
"Flawed, We Laf'd"
"Flo, Send Fondles"
"Foe, Doing Good, Fine"
"Forbear Fear, Bro" []
"Forgot to, Frog"
"Formal Ol['] Farm" []
"Free Heart Hereafter" []
"Frets of Efforts" []
"Frown to Front, Ow"
"Fundamental Mundane Flat"
"Gad if IDGAF"
"Gamblin['] Ma Bling" []
"Gasberg Beggars"
"Gauchest Gut-Aches"
"Gaudy Ad Guy"
"Gee, Dr. Greed"
"Geein['] Genie"
"Gen-Bliss Blessing"
"Glow Any Long Way"
"Gnashing, Hangings"
"Go, Hours So Rough"
"Go in, Doom, I'm No Good"
"God, Sir, Grid So Disorg" []
"Gold Coast a Clod's Got"
"Gone Lorn No Longer"
"Gone, Tot, Too Gent to Get On"
"Good Start Got So Drat"
"Goodness-Dose Song" []
"Goosed-Ego Sod"
"Got Blue to Bugle" []
"Got No Ire to Ignore"
"Got There Together"
"Graft Ran Fragrant"
"Grand Equal Quadrangle"
"Granma/Ragman" []
"Graspin['] a Spring"
"Greed Log Doggerel"
"Greeed Degree"
"Grim-Hit, I'm Right"
"Grim, Tiny, I'm Trying"
"Grime and Dreaming" []
"Grimly, My Girl"
"Grit, Him? Grim-Hit" []
"Grodiest Stodgier Grist Ode"
"Grooved-In Overdoing" []
"Grouses surge So"
"Grubby By-Burg" []
"Grumble, Mr. Bugle"
"Ha, I Levy Heavily" []
"Had Now and How"
"Handsomest Homestands"
"Hangouts So Naught"
"Hapless Plashes"
"Harp on, Orphan"
"Harsh Dip, Hardship"
"Haste, Go, Age-Shot Hostage"
"Hating a Night" []
"Hating on a Nothing" []
"Her Po['] Hoper"
"Hermits['] Mithers" []
"Hiatus Is a Hut"
"High-Rise Heir Sigh"
"His New Whines" []
"Hollywood, Lowly Hood"
"Hopes, Eh, Sop"
"Hot Soup: Oh, to Sup" []
"How it Hit, Ow"
"A Humble Hale Bum"
"Hunting Nuthing"
"I Admit it, Maid" []
"I Almost Lost Aim"
"I, Another Antihero"
"I, Bland, a Blind Baldin Bin Lad"
"I, Bogged on Being Good"
"I Care, Erica" []
"I Cure, Hop, Euphoric"
"I Drag Da Rig" []
"I Dream I'm Dear" []
"I, Dreg, Re-dig"
"I, Fellow Lowlife"
"I, Fired Up, Purified" []
"I, Going Hurt, Roughing It"
"I, Honest, to Shine" []
"I Hung in, Ugh"
"I Label a Libel Liable" []
"I Made a Dime" []
"I Mull Ill, Um"
"I, Now Owin['], Wino"
"I Phone in Hope"[]
"I, Plenty Ineptly"
"I Raged: a Dirge" []
"I, Runt, in Rut"
"I, Sad One, No Ideas"
"I, Shabby, Babyish"
"I-Sob Bios" []
"I Strove. It's Over" []
"I Swear to Wait, Sore"
"I, Tepid, Pitied"
"I, Un-Rapt Puritan" []
"I Zest Here, Size Three"
"I'd Inspire Insipider"
"I'm Dying in My Dig"
"I'm Past Tips, Ma" []
"I've Loot Too Vile" []
"Iceless Siecles"
"If All Flail, I Fall"
"If I'm Thrown From Within"
"If Named Am Fined"
"If NSF, Sniff"
"If Only I Fly On"
"Ill-Wed, I Dwell"
"Implode, Limp Ode"
"Importunes['] Resumption"
"In Task I Stank" []
"Indeed Not, I Don't Need"
"Inked-Over, Reinvoked"
"Instanter Transient Tenant, Sir" []
"Intern, Rentin['] [']n Inert"
"Ire Tons Stonier" []
"Ironclad Cold Rain" []
"Isle Dome Melodies"
"It's Cool, Ol['] Stoic"
"It's Hell Still, Eh"
"It's How to Wish" []
"Jab on, Banjo"
"Jacob's Co-Jabs"
"Jalopy Joy, Pal"
"J/K Yer Jerky"
"Jokey Stuff Just Off-Key"
"A Knife in Fake"
"The Late Athlete"
"Late Shift: That's Life" []
"Lazy Song, Zany Slog"
"Le Bum [']Umble"
"Le Bus Blues"
"Learning to Go Internal"
"Leave Now a New Love"
"Leet Song So Gentle"
"Let-Down, Dwelt-On"
"Levantine Valentine" []
"Lies Sung, Ugliness"
"Life-Sunk Flunkies"
"Life, Woman, Fail Me Now"
"Life's Ol['] Follies" []
"Lifespan Self-Pain Fail Pens"
"The Line in Lethe" []
"Listen Mr. Minstrel"
"Live Now, Win Love"
"Live on in Love" []
"Lo, Others Lost, Hero"
"Loafing's Fail Song"
"Log Mo['] Gloom"
"Long Lost Song, Toll"
"Long Runs, Sung Lorn"
"Loser Roles, Loser Lores"
"Lostling Gots Nill"
"Lots Bet, Bottles"
"Lou's Soul"
"Loud Aw, Woulda"
"Lovelorn? Aw, All Over Now"
"Lovin['] as Novalis" []
"Low Clerk Rockwell"
"Low-Fear Ear Flow"
"Low Note, Ole Town"
"Lucky Bad Bulky Cad"
"Mac, Uplift Impactful"
"Mailings Misalign"
"Makes Me Ask" []
"Mama, Why a Whammy"
"Man's Dire Dreamins[']"
"Many debts? Stand by me"
"Mate, She Hates Me The Same" []
"Maundering Undreaming"
"Me, a Blot to Blame" []
"Me, Ills I Smell" []
"Me-Too'd, Mooted"
"Measly Mealys" []
"Mediocre Crime Ode"[]
"Mensches, Chessmen"
"Mere Rad Dreamer"
"Min-Age Enigma"
"Minus Sun I'm Musin[']"[]
"Miscoiled Domiciles"
"Mo['] Frailty: Formailty" []
"Mo['] Pads So Damp"
"Mo['] Ruin I Mourn"
"Mold It, I'm Told"
"Moldering Gold Miner"
"A Moment Meant Mo[']" []
"Monroe, Mooner No More" []
"Moodier, I Do More"
"Moon Sets, Mootness"
"Moonstone Monotones"
"Moot-Hewn Hometown" []
"More, Less, Mere Loss"
"More Me or Rome" []
"More My Memory"
"Motherland Enthraldom"
"Mouth to Hum Um Tho" []
"Move Along Among Love"
"Mr. Fear Farmer"
"Mr. Gable, Gambler"
"Mr. I-The-Hermit" []
"Mr. Safe Frames"
"Mundaner, Under, Man"
"Mush-Hums"
"Mustier Semi-Rut" []
"My Cove McEvoy"
"My Horn: a Harmony" []
"My Lone Melony" []
"My Nature Army Tune"
"My Place: Calm, Yep"
"My Po['] Bus So Bumpy"
"My Sub-Bum Sy"
"[']N Swim On, Minnows"
"Nag to Tango"
"Near Bed and Beer"
"Neat Ol['] Lean-To" []
"Neg-Life Feeling" []
"New Aims, Wise Man"
"New Hi When I Whine" []
"Nice Slow Scow Line"
"No Cars or Cans" []
"No-Cash Nochas" []
"No, Ego's So Gone"
"No Gas: a Song"
"No-Gem Gnome" []
"No-Goal Lagoon"
"No Heart on Earth"[]
"No Map? Po['] Man"
"No Mo['] Moon"
"No Smiles, Lone Miss" []
"No Time to Mine Into Me"[]
"No Win in Now"
"No Wiser, I Worsen"
"No Worth: How Torn"
"Nobody's Bonds, Yo"
"Nod Yea, Any Ode"[]
"Nor Fret for Rent"
"Nor Hate Another" []
"Not Small Tolls, Man"
"Now I Slog, Solo-Wing"
"Now Tour Our Town, Worn Out"
"Numb Loose Blue Moons"
"Numb'd [']n Dumb"
"O-Bla-Di, Diablo"
"O Cheer, Cohere, Re-Echo"
"O Clear RealCo Oracle" []
"O Crafty Factory"
"O, Find No Dif"
"O Sing Them Something" []
"O Wired Weirdo"
"Oaf, Pry for Pay" []
"Oft-Poor Rooftop"
"Oh Daily Holiday" []
"Oh, Dirty Thyroid"
"Oh, kint, Think So"
"Oh, Mantra Marathon" []
"Oh, Me, TRY to Rhyme" []
"Oh No, Gouged Good Enough"
"Oh, Seeing He is Gone"
"Ok, Pal, POLKA"
"OK Town to Know"
"Ol['] [a-b] Ebola" []
"Ol['] Alec's Locales" []
"Ol['] Doc's So Cold"
"Ol['] Gent, Mr. Long-Term"
"Ol['] God O['] Gold"
"Ol['] Gut to Lug"
"Ol['] Kept Klepto"
"Ol['] Sod So Old"
"Ol['] Times to Smile" []
"Old, Beat, Bloated" []
"Old Horse, He Drools"
"Old Money, Moldy One" []
"Old Relics['] Dice Rolls" []
"Old-Side Idle Sod"
"Older Now, New Dolor, Lord Owen"
"Oldest, Losted" []
"Ole Guy Eulogy"
"Ole Music Coliseum" []
"Once-Caring Carcinogen" []
"Once-Phat Cenotaph" []
"One Day Done, Ay"
"One Mad Ode, Man" []
"One Memory: More Money"
"One Sky, No Keys"
"One Ugly Lone Guy"
"One Way Now, Aye"
"One Week, Keen Woe"
"One With the Wino" []
"[']Onest Tones" []
"Only Le Lonely" []
"Open it to Pine" []
"Opulence Clue? Nope"
"Outsider Dries Out"[]
"Over-Sad Sod-Rave, Savored"
"Owin['] Wino" []
"Own'd, Down"
"Oww, Li'l Willow"
"Oy, Dat Toady" []
"Oy, Moil'd Moodily, Doomily"
"Paction to Panic" []
"Pain, to a Point" []
"Pal, It's a Split"
"Pal of a Flop"
"Par No Mo['], Poor Man"
"Partitioned Trepidation"
"Passion, Pain, SOS" []
"Paw, I'm a Wimp" []
"Paydirt? I'd Party"
"Pens O['] Peons"
"Penthouse Hopes Tune" []
"Perhaps-Hep Raps"
"Pert old Droplet"
"Pet Hit the Pit"
"Pisser Spires" []
"Placity? Typical City, Pal" []
"Ply Tales, All Types" []
"PM, Dude Dumped"
"Po['] Hero Hooper" []
"Po['] Lean Pa Noel" []
"Po['] Me Mope-Poem"
"Po['] Nigh Hoping"
"Pointiest Petitions"
"Poor, New, No Power"
"Poor, New, Ow, Prone" []
"Poorest Stooper" []
"Pre-Senile, Spleenier"
"Pre-Sliced, Respliced Lip Creeds"
"Prime Agony: Paying More"
"Promise, Po['] Miser" []
"Prosaic Ol['] Acropolis" []
"A Prude's Sad, Pure Rues-Pad"
"A Pudgy-Guy Pad"
"Push Back, Busk-Chap"
"Pushed In, Punished"
"Pushover Hovers Up"
"Ramen Ran Me" []
"Raw-of-Gut Tug-of-War"
"Raw Smog Grows, Ma"
"Re-Naying, Yearning"
"Refuge's Free, Gus"
"Remiss Misers"
"A Repo Opera"
"Ride it Off Fortified"
"Rife Sad Far Side"
"Rigid, I Gird"
"Rube St., Buster"
"Rum-Hit, I'm Hurt"
"Rush Past, Thrupass"
"Rushier Hurries"
"Rust Ruts"
"Rustin['] in Ruts"
"Sack-y Yacks"
"Sad Icky Acid Sky" []
"Sad Lore Reloads" []
"Sad Mop So Damp"
"Sad Pay Day Spa"
"Sad, Rotten, Don't Stare"
"Sage, Never Save Green as Revenge"
"Said My Dismay"
"Sal's Lass"
"Sanity in a Sty" []
"Say-a-Word Roadways"
"Scarce if I Sacrifice"
"Scum, ere I use Crime, I'm Secure"
"Semi-Ragin['] Migraines" []
"Send Ma Amends" []
"Sentimental Entailments"
"Serf-Chain Franchise" []
"Shocking Hick Song" []
"Shoogled Dogholes"
"A Simple Smile, Pa"
"Sing Thru Hurtings"
"The Six Ex-Hits"
"Size-Two Zits, Woe"
"Sky Mo['] Smoky"
"Slumberg Grumbles" []
"Sly Ode Yodels" []
"SMH, Acne? A Mensch Can Mesh" []
"A Smooth Sham Too"
"Smug Arty Smart Guy" []
"A So-Cruel Carousel" []
"So-Empty Mope Sty" []
"So Find No Difs"
"So Go Run: Our Song"
"So Hip-Hop Is"
"So Lame? Me Also" []
"So Long, No Slog"
"So-Mangy May Song"
"So Many May, Son"
"So Well-Off Fools Flew"
"So When Now He's News"
"So, Young Guy, Soon"
"Sob Not, Boston, No Bots" []
"Sob Truly Robustly" []
"Sob, Zip Biz Ops"
"Sod, Un-Sound"
"Sol's Loss"
"Solitaire Oralities"
"Some Drunk Rude Monks"
"Some Hick, Homesick"
"Some Idle Melodies" []
"Some Long Englooms"
"Some Ruin, Monsieur" []
"Someone's Moon Sees"
"Somewhere Homes Were"
"Somnolescent Consolements"
"Son, Ain't No Saint" []
"Song for No Frogs"
"Song of No Fogs"
"Sonless Lessons"
"Soul Be Un-Nebulous"
"Soul-Took Lookouts"
"Southern Unrest, Ho" []
"Sowin['] Winos" []
"Squatter Quartets"
"Staph Paths"
"Staring at Rings" []
"Stay Long, Stony Gal"
"Stayed Steady Yet Sad" []
"Stern Man Remnants"
"Still I Sit Ill"
"Streety Syrette, Rest Yet"
"Sullenness, Nullnesses"
"Sunset Sent Us"
"Suntime Minutes"
"Swallow All Wows"
"Team, I'd Made It" []
"Tearstain Attainers"
"TGIF Gift"
"Tha Raw Hat War"
"Them of Mo['] Heft"
"Theology Got Holey"
"There, Miss Hermitess"
"A Third Hat Rid"
"This City, It's Itchy"
"This Desk the Skids"
"This Kid's Skids-Hit"
"This Pledge Light-Speed"
"This Rut, It Hurts"
"This Un-Shut-In" []
"Tho['] Open, Hope Not to Phone"
"Those Lost, Toothless Hotel Sots"
"Thy Harm a Rhythm"
"Time-Rid, I'm Tired" []
"Timid, Gone, Doing Time"
"Tiny Hero in Theory" []
"Tipsier Pitiers"
"To Dads at Odds"
"To Fail Flat, Oi" []
"To Figure Grief Out" []
"To Find Not Dif"
"To Incur Coin Rut in Court"
"To Know OK Town" []
"To Own Nowt, O" []
"To Savor a TV or So"
"To Stay at Toys, Ay, Tots" []
"To-Write-It Tower" []
"Toiled/Lied-To Lit-Ode"
"Toils--I Lost" []
"Tomorrow's Rootworms"
"Tone Deaf Note, Fade"
"Too down to do now"
"Too Heavy, Yo, Have To" []
"A Town O['] Want"
"Towns O['] E-Z Tow Zones"
"Tributes I'd Distribute"
"Tried, Let, Retitled"
"Trite Games, Great Times"
"Tru-Rut"
"True I'm So Sour, Time"
"Tsk, Hide the Kids"
"[']Tude Duet"
"Two Legs Get Slow" []
"Ug, Fired? Figured"
"An Ugly Any-Lug"
"Um, Depths, the Dumps" []
"Um, Earn Manure" []
"Un-Rich Urchin, I Churn"
"Un-Robust Burnouts"
"Underdog, Dud, Goner" []
"Undoable Alone, Bud" []
"Unions['] Unison"
"Unmarried, Murrained"
"Unsofter Fortunes" []
"Unsweet [']Tween Us"
"Up, Spare Paupers" []
"Us, Bitter Tributes" []
"Vagabonds['] Sad Van Bog"
"Vain Mr. Marvin" []
"A Vendor Raved On and Over"
"Visored Voiders" []
"Wail for Air Flow"
"Was Foul, So Awful"
"Was Not Watson A Town's Wan Sot"
"The Way, Yet? Haw" []
"Wee Gutsy Sweet Guy"
"Went Old, Let Down" []
"Went up Unwept"
"Wet, Sad, Wasted" []
"When I Win, Eh" []
"When Y'Are Anywhere"
"Whosoever, Howsoever"
"Why Not Thy Own"
"Wince Not, New Tonic, Nice Town"
"Wind On Down In"
"Wish Ren Her Wins" []
"Woe, Hurt: How True"
"Woman Mo['] Wan, Man. Ow"
"Won't Lose Low Notes"
"Working King Row" []
"Worldly Wry Doll"
"Worn-Out-Now Rout" []
"Worries-Rise Row"
"Wrote Rot, Ew"
"W/Scorn I'd Crown-Dis In-Crowds"
"Wyoming on My Wig"
"Yawl'n Wanly"
"Yo, Drab Byroad" []
"Yow, Shill, How Silly"
"Yule Boss By Louses" []

book presto

table of bedding brands [xxp1]
blurb
"[if player is male]Mr. Blue's[else]Ms. Ruble[end if] Slumber"
"Artiste Mr. A's Air Mattress"
"Bastien's Bassinet"
"Best-Rig Big Rest"
"Big Nedd's Beddings"
"Blessing-Page Sleeping Bags"
"Bodett Tot-Bed"
"Chiesa Chaise" []
"Comfort-Form Cot"
"Cot-Is-Stoic" []
"Coy-Nap Canopy"
"Davenports Dat's PROVEN" []
"Davin Divan"
"Dweeb-Arts Waterbeds"
"E-Z Do Doze"
"Enteric's Rest-Nice" []
"Fab Dale's Leaf Beds (which gives no bad feels)"
"Gold Zone Long Doze"
"I Catnap Captain"
"Keep-Warm Meek Wrap"
"Knaub-Kuban A-Bunk"
"LAZ-E-BOD DOZABLE"
"Low-Slip Pillows" []
"Mom-Shack Hammocks"
"Mr. Cot-of-Comfort"
"OTC Cot"
"Pan-Nap"
"PEERLESS SLEEPERS"
"Poseur-Fort Four-Poster (for POSTURE)"
"Prep-Now-a-Power-Nap"
"Rest-O-Store"
"Restster" []
"Safe-Bod Sofa-Bed"
"Sal Pelt Pallets"
"Sertin-Restin['] Insert"
"SNOOZE-EZ-SOON" []
"Sure-Lie Leisure" []
"These-Plus Sleep Huts"
"Tucson SunCot"
"Wear-Debt Waterbed"

table of catechism pages [xxp2]
blurb
"A 'touching' article: our kids, Rod, Suki, UI dorks risk duo."
"'817351837 bites I bet' is written on a blank page." [p]
"An ad for Algebra Lab Gear."
"An ad for Hi-Res Shire, which has the lean trim terminal for YOU."
"Add-ins I Disdain, on third-party software."
"Advice from a sod tent and tot dens: don't set dot-nets."
"Alerting that Triangle Altering and Integral Relating lead to the gnarliest integrals."
"Analysis of the Carter Crater Tracer."
"Another I Rethank a Thinker section."
"Another page in a big long boring source course."
"Another page referring to the seminal work [i]Equations: A Question[r], by Otis Quane."
"An article called [i]RSI, Sir[r]: Tips on being by a computer too long."
"An article called Recent Net-Rec Center."
"An article on the founding of the Knowster Networks at Kent's Row."
"Back, HALT, black hat!"
"Basic regular expressions from [i]I Grep to Grope It[r], by Rog Piet."
"Blather about UserLoc Closure."
"Boggling blogging: both good and bad."
"Brigit's Bit Rigs and the big stir they created."
"'C is OK? Sicko!' is written in the margins."
"A call for legislation against slur-URLs."
"A cartoon: by the way, why a byte?"
"A cartoon: hangs, gnash [']n gash."
"A cartoon: I Dub a bad UI, bud, ai!"
"A cartoon is captioned 'Logout, lout! Go!'"
"A cartoon of administrative mistakes called Duos of Doofus of Sudo."
"A cartoon: Psh, I C his PC Chips."
"Cartoons about software personal relations, featuring Emo OEM Moe."
"A cautionary tale of a beery eBayer."
"A cautionary tale of the last boor who programmed toolbars on a barstool."
"A chapter begins: sir, compel compilers!"
"A character named Senor Uric exclaims 'Us, Cornier?' as he explains recursion."
"A character named Winko Owkin shows how saying 'I KNOW' helps you win, ok?" [p]
"Chips Reed Deciphers Chi-Spy's Physics, Fixes Exifs."
"Chips Reed deciphers hip creeds here."
"The coder credo of Dr. Coe."
"A comic: [i]Online Lonnie, El Nino[r], by Noe Lin."
"A comic poem: Yelp! Shrink! Hyperlinks!"
"Comparisons of NetBios: Ben Tsoi or Bo Stein?"
"Confused? Unfocused? Code's Fun!"
"A confusing example of the TreksCo Rockets Stocker."
"A cool fig of logic."
"Cosine, E-coins: So Nice! -- an editorial."
"A creed, so: Ed's Core Recodes."
"Cyber-Bryce's etiquette lesson: Mate, R U mature?"
"Dealing with e-trash haters."
"The debate: piracy v. privacy." [p]
"A deconstruction of the elitism of [i]Boolean Loon [a-b][r], by Bo O'Neal."
"Discussion of a game of GPS'in pings."
"A discussion of how either the Graf-Frag and Menu-Enum software packages gobs all globals."
"A discussion of pluses and minuse of the major EOLNs: Olsen, Slone, and Noles."
"A discussion of whether [i]Pa Huck's Hack-Ups[r] was actually written by Cap Husk."
"Dos, eh? Hosed!"
"Drivel from Fact-Born Bancroft."
"Ed Hart endorses Red Hat, noting the rad hatred thread dearth."
"Ed's GUI Guides come recommended."
"A Ego-Log of LeGoGo's dominance as a search engine over SlyCo and OohYa."
"Esoteric Coteries to join."
"An essay on looking to the future asks, programs or Gramps?"
"Examples of bad UI from Dubai to Baidu."
"Excerpts from [i]Open Source Uprose Once[r], by Enos Couper & Ponce Rouse."
"Excerpts from Pa Grin's Graspin['] Parsing, and an opposite view, Sparing Parsing by Paris Ng."
"A fascinating recap of the most recent Math Cup Matchup."
"Flaccid generalities and aphorimsms under 'Resigned? Re-design, designer!' It credits Sid Green and Desire Ng."
"'FTP? PFT! HTTP? THPT!'"
"The geein['] Eigen-Genie describes how formulas can't figure ANYTHING."
"Grampa's Pragmas."
"Hark Dat Dark Hat, a section on hackers."
"Here's notes on an obscure sub-core of some programming language."
"Here's why a plugin shouldn't cause gulpin."
"Hm, a rant for Fortran."
"How a tech cheat can inspect pectins--with net pics."
"How to be Cred-Rec'd, by Dr. Deccer."
"How to detect a lurid URL ID."
"How to guard yourself from login oglin[']."
"How to put hefts in if-thens."
"How your firewall will fare."
"'I cap a pic,' advice on Internet memes."
"If STR first, RTF is siftr. Whatever."
"Information on how not to mistrace matrices."
"Internet etiquette: Godwin = WIN, dog!"
"An introductory page covers all that can be coined in code."
"'Is derpin['] inspired?' An interesting discussion."
"Know, wonk, know!"
"Knuth-Thunk, a pompous biography of computers."
"A last bit about a StatLib."
"The life story of Sabermetrics Master Scribe [if player is male]Crabtree Sims[else]Cassi Rembert[end if]."
"A list of Elkins-Lenski-Klein's E-Links."
"A lo-tech ol['] etch about Adamant Data Man, a superconducting superhero with the catch phrase 'Ha! Info's fashion!'"
"A long remade readme by Ma Reed. Dear, me!"
"Lord Howell's Hello Worlds."
"Make your Header Adhere."
"Malaise as email: Internet addiction."
"Mentions of tweest tweets."
"Messy lab assembly is no laughing matter."
"The Misc. Chemist Techism explores how computer science applies elsewhere."
"More reference from [i]To Happen on the App[r], by Pop Neath."
"A MS Paint rendering of a spam tin."
"MS Paint tips, man!" []
"Murals of Formulas, drawn by Rolf Maus."
"My VM: YMMV."
"A new shill shows why the WinShell means hell wins."
"Nobody sensible would find a malware war lame."
"A note that tautologies tautologise."
"Notes from Le Prof of Perl, Pop Rolf Freel."
"Notes on webring brewing."
"Notes scrawled: found imp. info dump: Duke CS sucked." [p]
"Nyan So Annoys a Sonny is written in the margins."
"Oi! I/O!"
"On the fall of the Richest Itchers, a computer game company."
"On the Snafu as Fun."
"One look at Figure U: grief."
"One page claims to have a radioactive advice ratio."
"One page features an enumeration mountaineer responsible, likely, for some really painful 300 level courses."
"One page tries to present ye algebra agreeably."
"One picture of a man trying to out-sprint printouts is actually kind of funny stuff."
"Oo! Internet competition advice: 'Blame lag? Ballgame!'"
"Oops, someone previously bored with this book drew up a superheroine named E-Ninja Janine here."
"Ops for pros of proofs."[]
"Ouch, a grisly tale of a hardcoder who got hardcore'd."
"An overview of U-Bag-a-Bug software tracking."
"Overviews of Rex Gee's Regexes."
"Parts of an advice column: Go To Dr. Dot-Org."
"A picture of the broad ROM motherboard."
"A picture of the original Vicuna Univac."
"Pip's Nets Snippets pop up in several places."
"A plug for OldStash, a news website."
"Power is ripe. Sow, wise pro!"
"A primer on OOP, which has been vandalized." [x]
"A print-how section on the Pinthrow-Nipworth-Twiphorn Whiptron."
"A profile of PC Ham, HP/MAC Champ."
"A profile of the computing genius ENIAC Caine."
"Pros of proofs present proofs for ops."
"A PSA. A sap, 'Raster Starer.'"
"A ragged ref to a defragger."
"A rant against sourced ur-codes so crude."
"Red? Cope. Pre-code. Proceed." []
"Redef, deref, defer...freed!"[]
"A rederiving, given drier than you thought possible."
"Refute a feature, rue fate."
"Reproduce Procedure, Dour Creep! -- more on purer code."
"Research, searcher! (Nothing readable on HOW.)"
"A reverse engineering ofrom a codec ace-doc follows."
"A review of [i]APIs, APIS[r], by Issa Paip."
"A review of Fathom of Math, by Mo Fath."
"A review of Mr. Gee's Merges, by Ms. Eger."
"A review of Ow to Woot, Yorpwald's seminal book on programming tricks."
"The sad tale of Cal's Pal, who always used ALL CAPS."
"A sample of Plotnik's Top Links is listed here."
"Samples from the decoding bible Bug Tiffs: Big Stuff."
"Scribbling: U dig GUID I dug?"
"A section labeled Doran's And-Ors."
"Semaphores and why the novice phears em so."
"A short RHost guide."
"So, input spin out? Point us. Sit up on..." []
"Some neat [']PuterSci Pictures."
"Some semi-mathematical proof piles on the epsilon."
"Something about bitmaps baptism."
"Something about to BinHex in the box."
"Spoilt Ol['] tips to slip for List-Op Pilots."
"Step on NetOps? No, pest!"
"Sysadmin says mind, Many Diss, reads a headline."
"The tale of one OS's SOS."
"Tend to Dot net? Not Ted Denton! -- reads some anti-Microsoft propaganda."
"A terribly dull, technical article recital."
"There is a warning against creating a bogus GOSUB or worse, an OS bug."
"A thorough smackdown of [i]Ifdefs? DIE, FFS[r], by Ed Siff."
"A tip for hackers on scooped opcodes here."
"Tips for a glossy syslog."
"Tips for recognizing a hax-o-hoax."
"Tips on not losing logins."
"Tips to avoid the Same Bug Mega-Bus."
"To and-or tornado." []
"To encourage female engineers, Pam Grors is noted as a proficient writer of programs."
"A tribute to Odd Hack Haddock."
"A tribute to Rox Fife, fixer of Firefox."
"A tutorial cartoon! Igg Did Dig GDI!"
"Under Other Books, you see: Gear Thy Grey Hat."
"A unit for 'No fruit: info rut? Or unfit?' as a debate."
"The virtues of process scopers, whatever those are."
"Vito Pacer on Proactive Covert API."
"Ways a flowchart does not cause howlcraft."
"Ways to get brainy with binary."
"What a dip paid for an ipad."
"What's more evil: Prada or DARPA?"
"Why not to dis STDIO do-its like LocalAlloc."
"Why to consider coders in Doc Erin's."
"Why to hold back a bold hack, by Chad Kolb."
"Why WLAN care is trickier than lawn care."
"Word processing reviews from [if player is male]Neil[else]Elin[end if] Le In-Line."
"WTF FTW is a section on creativity and coding."
"You are told you will need to log off of golf if you really want to rock the computer science."
"You flip through multiple instances of someone named Garj on Jargon."
"You note a user ruse."
"You read a brief overview of login lingo."
"You read about the cleverest graph theory lemma I'd ever derive."
"You read tricks for when debug mode won't budge."
"You read why code golf roxorz coed golf."
"You see advice: 'Don't begrudge if your debugger is buggered.'"
"You start reading an exponential explain-note but give up."

table of Leo-Rand chitchat [xxp3]
blurb
"[l-r] admits he couldn't handle the regimen of Thickener Kent Reich-Kitchener."
"[l-r] considers ordering Buffs to Bust Off."
"[l-r] considers re-reading [i]The New You, Thou Weeny[r], by Huey Towne."
"[l-r] considers the methods of Dr. Sweat Steward."
"[l-r] considers the Thin Gym: My Thing workout."
"[l-r] discusses Sweaty-Way Set training."
"[l-r] discusses the plexus-suplex, not willing to practice it on each other."
"[l-r] does a quick-start squat trick to try to get into shape."
"[l-r] feels guilt over a long-gone goonie-noogie."
"[l-r] mutters[if player is female], ignoring your gender,[end if] 'Ugly slam, small guy.'"
"[l-r] recalls good seats at the Limburger Rumble Rig."
"[l-r] recaps favorite quotes from Steroidal Idolaters."
"[l-r] resolves to do abs so bad."
"[l-r] talks of working at a tungsten guns tent."
"[l-r] vows to read My Abs By Sam."
"[l-r] wonders if Invig-Givin['] is too good to be true."
"[lrp] begin construing trouncings, but not anyone. Just abstractly."
"[lrp] both weep 'Machos? A schmo.'"
"[lrp] discuss the wrestling event: Mean Nils's Nine-Slams Manliness."
"[lrp] figure at least they tried, unlike Quit-Goon Quitongo."
"[lrp] grit flesh so. 'Fight losers. Griefs. Sloth.'"
"[lrp] half-heartedly laugh recounting [i]To Crudest Destructo[r]."
"[lrp] half-heartedly recap favorite moments in [i]OK, at a TKO[r]."
"[lrp] mention Police Pec-Oil HAS to work."
"[lrp] moan they're no Brooks KO Bros."
"[lrp] realize they're no Rad Ryno and Rory."
"[lrp] regret picking on Pinko Sal Polanski, Pinko Lis Polinski, Pinko Shon Hopkinson and Pinko Ann Pankonin."
"[lrp] suddenly see the sad side of [i]Sucker-Punch Checkup Runs[r]."
"[lrp] suddenly sympathize with the losers in [i]Booyahs: Oh, Ay, Sob[r]."
"[lrp] try and fail to make that move from Neat-KO Keaton."
"[lrp] wonder if Gus Funk Kung-Fus work THAT well."
"Each wishes he were a gung ho gun hog."
"'Eats gum? Me gusta!'"
"'Galoots also got gals, too. To goals!'"
"'Gawd, dawg,' they say, still unable to believe their defeats."
"Grunts, strung."
"'Hamstrings...stings...harm!'"
"'I'm such a booby.' / 'I'm such a yobbo.'"
"'Imma Maim,' says [l-r], but his heart isn't in it."
"'In my gut, I...gym nut.'"
"'Mo[']-slug moguls? Ol['] mugs!'"
"'Not gross. So strong.' they mutter to each other."
"'Nufyn['] Funny.'"
"'Ow, my teef!' / 'Ow, my feet!'"
"'Oy. Heck. Hockey.'"
"'So weak now. Knows a woe!'"
"They [lrblab] each dislikes Adrena-Andrea's workout routine."
"They [lrblab] each likes GoonLab Bologna."
"They [lrblab] their mutual admiration for Machado Da Macho."
"They [lrblab] their mutual love for Big Nox Boxing."
"They are sure their idol, Diesel Sid Lee (solid ol['] Sid,) would be ashamed of them now."
"They are too beat-up to feel upbeat."
"They argue over the best flavor of U-GOTS-GUSTO energy drink."
"They bemoan being on the wrong side of the GPA gap."
"They both recall reading 'Hi-Fat? Ha? FIT' as kids. It's sort of touching." [p]
"They both reckon they need to do abs so bad."
"They both wish they'd grown up in Far Friff or the Anarch-a-Ranch."
"They compare the Exhil-Helix and To-Scare Coaster rides."
"They continue be-a-lug blague, beached like a beluga."
"They cry how they're no Dyna-Andy Nady."
"They discount the side effects of Brain-Rust NutriBars."
"They discuss favorite flavors of Clobber Cobbler."
"They discuss the training methods of Hard-Way Hayward."
"They discuss their fear of Slice-U Sluice."
"They discuss Tricep-Rip Tec."
"They discuss what to buy from the Sporty Pro Sty."
"They discuss whether Alec's Escal-Laces really add 2 inches to your gym shoes['] vertical."
"They discuss working out at Expend-Pex Den."
"They disparage Monk-Fu by Mo-Funk."
"They dream of violence with Ole Vince."
"They find they both love the song [i]Loud boys? Doubly So[r]."
"They just need to feel okay after that kayo."
"They know how poor Ted Torpedo felt."
"They know they'll never be Typee Petey."
"They manage to misppel pimples."
"They mention there's something off about Mista Vin Vitamins."
"They mumble about some dim lame dilemma."
"They now feel more soft, foremost."
"They pine for Rip-Em-Prime to rip mo['] primo."
"They plot ways from U SOFT to SO TUF."
"They recall friendly dust-ups: Stu, Spud."
"They recap the latest Mach-Boor/Arch-Boom Rochambo tournament, sponsored by Moorbach and won by Hobo Marc."
"They recap the workout routines of Expand-Pex Dan."
"They recap their favorite literary work, Us Was a Wuss."
"They reconsider visiting Sweating Wingate's to bulk up."
"They recount the best of [i]Pissant Pastins[r]."
"They recount the emptying of GimpyNet Inept Gym."
"They recount triple-wrongs in pro wrestling."
"They regret laughing at the comic strip 'U THINK I THUNK.'"
"They regret saying yoga's so gay."
"They remember both being posted at despot depots."
"They remember winning their local Turbo-Bruto contests."
"They reminisce of melee fests, of self esteem."
"They reminisce on moshes with shmoes."
"They rhapsodize about Bruin Rubin and his catch phrase 'I burn!'"
"They share menmost moments."
"They should've gotten a punchage change up or cheap gun from Ape Chung."
"They take time to admire 'Le Plow' Powell." [p]
"They talk favorite flavors of One-Trip Protein, which is no tripe."
"They wish for HamCo Macho-Mocha (ach, mo[']!) so they don't get beaten by a gimpy pigmy. Again."
"They wonde aloud how to exert tidy dexterity."
"They wonder if I'm-Strong-Gro Mints really work."
"They wonder if they need Capt. Boom Boot Camp."
"They worry about nights of no fights."
"Urghs. Shrug."
"'We ain't gonzo-goonz.'"
"'Woomph! Phwoom!' they describe a fight, which is sort of cheating. But they don't need grammar policing."
"You hear [l-r] recount an eco-runt trounce."

table of Leo-Rand idols [xxp4]
blurb
"[n-t] 'Bam' Bateman" []
"[tt] 'Thud' Douthit"
"Abe 'Grr' Garber" []
"Ace 'Grr' Crager"
"Acker 'Wham' Marchewka" []
"Adam 'Bam' Madamba"
"Agile Carl Callegari"
"Agile Don DiAngelo"
"Agile Vern Graveline" []
"Al 'Bam' Lamba"
"Aldo 'Wham' Mahowald"
"Alec 'Bonk' Colebank"
"Aly 'Hook' Holyoak"
"Amazon Ro Zamorano"
"Amie 'Grr' Armiger" []
"Angie 'Grr' Grainger"
"Ann 'Smack' Sackmann"
"Anton 'Blam' Montalban"
"Ardis 'Boom' D'Ambrosio"
"Ardis 'Kapow' Paradowski"
"Ariel 'Blam' Mirabella" []
"Aron 'Bam' Boarman"
"Baird 'Ouch' Robichaud"
"Bari 'Blam' Brambila"
"Barney 'Grr' Granberry"
"Bart 'Hook' Bookhart"
"Battler Talbert-Barlett"
"Beast Chara Bastarache" []
"Beast Rhine Eisenbarth" []
"Beast Sina Sebastian"
"Beau 'Grr' Burrage" []
"Ben 'Rock' Norbeck"
"Bennie 'Grr' Berninger"
"Bernard 'Hook' Hardenbrook"
"Bernie 'Grr' Berringer"
"Bert 'Sock' Rebstock-Storbeck"
"Bette 'Grr' Rettberg"
"Blair 'Bam' Brambila" []
"Bonk-Its Botkins"
"Boomer Lita Bartolomei" []
"Born-Huge Born Boughner"
"Brad 'Ouch' Bouchard"
"Breana 'Ouch' Charboneau"
"Bree 'Rock' Broecker"
"Brenda 'Ouch' Chadbourne"
"Brett 'Blam' Bramblett"
"Bridget 'Sock' Stockbridge"
"Brodie 'Bonk' Bookbinder"
"Brute Al Breault" []
"Brute Annis Braunstein" []
"Brute Caryn Canterbury" []
"Brute Caton Betancourt" []
"Brute Chalk Buckhalter"
"Brute Chet Burchette"
"Brute Ennis Rubenstein"
"Brute Garman Baumgartner" []
"Brute Gil Guilbert"
"Brute Harley Leatherbury"
"Brute Innis Rubinstein"
"Brute Jo Joubert"
"Brute Lach Culbreath" []
"Brute Mars Burmaster"
"Brute Miers Burmeister"
"Brute Rhea Brethauer" []
"Brute Ted Burdette" []
"Brute Ty Buttrey" []
"Brute Tyra Atterbury"
"Brute Wray Waterbury"
"Bud Tony, Body Nut"
"Buff Alsteen Stufflebean"
"Buff Dora Bouffard"
"Buff Maltese Stufflebeam"
"Burly Bry Lu"
"Caleb 'Grr' Carlberg"
"Cari 'Bam' Cambria"
"Cari 'Boom' Ambrocio" []
"Carlo 'Thud' Coulthard"
"Carn 'Bonk' Brannock"
"Chad 'Bam' Dambach"
"Chandler 'Bam' Chamberland" []
"Charline 'Bam' Chamberlain" []
"Chas 'Bonk' Bohnsack"
"Chase 'Grr' Schrager"
"Cher 'Bonk' Hornbeck"
"Cher 'Sock' Schroeck"
"Cherie 'Bam' Bachmeier"
"Chet 'Bam' MacBeth"
"Chi 'Blam' Limbach"
"Chin 'Blam' Chamblin"
"Cho 'Blam' Halcomb"
"Chun 'Bam' Buchman" []
"Clem 'Rock' Mccorkle"
"Cole 'Bam' Lacombe" []
"Coren 'Ouch' Cochenour"
"Curt 'Bonk' Buntrock"
"Dale 'Grr' Gerrald"
"Dan 'Bam' Badman"
"Dana 'Blood' Baldonado"
"Dana 'Grr' Garrand"
"Dara 'Grr' Garrard"
"Darin 'Ouch' Chouinard"
"Daron 'Bam' Boardman" []
"Dean 'Grr' Gardner"
"Debi 'Grr' Bridger" []
"Del 'Sock' Sedlock"
"Delta 'Sock' Stockdale" []
"Denis 'Rock' Dickerson" []
"Devona 'Grr' Vangorder" []
"Devona 'Rock' Vandercook"
"Diane 'Grr' Gardiner" []
"Dina 'Ouch' Chaudoin"
"Dina 'Sock' Dickason" []
"Don 'Bam' Bodman"
"Don 'Blam' Boldman"
"Don 'Wham' Downham"
"Dona 'Grr' Norgard" []
"Dori 'Blam' Lombardi" []
"Dorla 'Pow' Waldroop"
"Doug 'Blam' Goldbaum" []
"Droppin['] Pip Dorn"
"Earl 'Ouch' LaRouche" []
"Earle 'Ouch' Rocheleau"
"Eboni 'Grr' Obringer-Broering"
"Eden 'Rock' Eckenrod"
"Edie 'Grr' Rediger"
"Eli 'Bam' Mabile" []
"Eli 'Grr' Rigler"
"Eli 'Sock' Solecki" []
"Elia 'Bam' Amabile"
"Elia 'Splat' Espaillat"
"Elias 'Bam' Lambiase"
"Elie 'Grr' Riegler"
"Ella 'Grr' Garrell"
"Ella 'Pow' Walpole"
"Ella 'Rock' Locklear" []
"Elma 'Pow' Wampole"
"Elser 'Bam' Belmares"
"Elva 'Sock' Slovacek"
"Ely 'Blam' Bellamy" []
"Ely 'Rock' Lockyer"
"Em 'Thud' DeMuth" []
"Emma 'Grr' Grammer"
"Emmi 'Grr' Grimmer"
"Ena 'Splat' Pleasant" []
"Enid 'Sock' Dickeson" []
"Ennis 'Rock' Nickerson" []
"Enos 'Bam' Boseman"
"Enos 'Whap' Openshaw" []
"Erica 'Grr' Carriger"
"Erin 'Blam' Liberman" []
"Erin 'Ouch' Icenhour" []
"Erin 'Sock' Erickson" []
"Erinn 'Sock' Nickerson" []
"Erma 'Bonk' Bronkema" []
"Ernie 'Blam' Lieberman" []
"Ernie 'Splat' Pearlstein" []
"Erol 'Bam' Lombera"
"Esther 'Rock' Strohecker"
"Etta 'Grr' Garrett"
"Etta 'Ouch' Teachout"
"Eura 'Bam' Rambeau"
"Eva 'Grr' Graver"
"Ezra 'Bam' Zaremba"
"Fit Al Latif"
"Fit Andres Standifer" []
"Fit Earl Telfair" []
"Fit Leclair Fraticelli"
"Fit Lon Loftin"
"Fit Lord Tilford"
"Fit Peter Perfetti"
"Fit Rees Seifert-Siefert-Feister" []
"Fit Rene Neifert"
"Fit Ron Fortin" []
"Fit Sean Stefani" []
"Fit Selden Feldstein-Steinfeld"
"Fit-Self Setliff"
"Fit Sol Loftis" []
"Fit Speer Pfiester"
"Fit Welch Leftwich"
"Flexing Glen Fix"
"Friedl 'Boom' Broomfield"
"Gaines 'Blam' Blasingame"
"Gale 'Bam' Gambale"
"Garth 'Pow' Gawthrop"
"Gary 'Thud' Daughtry" []
"Gaye 'Thud' Daughety" []
"Gene 'Bam' Begeman"
"Gennie 'Grr' Greninger"
"Geri 'Bam' Brimage" []
"Gia 'Rock' Rogacki"
"Giant Ek Keating" []
"Giant Elser Easterling" []
"Giant LaDue Daigneault" []
"Giant Lene Galentine" []
"Giant Ryles Singletary" []
"Giant Su Agustin" []
"Giant Ula Lantigua" []
"Giant Viola Vitagliano"
"Giant Weller Gillenwater"
"Giant Werner Weingartner" []
"Gil 'Blam' Gambill"
"Glen 'Rock' Glockner"
"Hanner 'Bam' Habermann"
"Hardy 'Ouch' Choudhary"
"Hegler 'Bonk' Kohlenberg"
"Heide 'Grr' Herridge"
"Herma 'Sock' Schomaker"
"Huge Ira Higuera"
"Huge Ly Hugley"
"Huge Mccay McCaughey"
"Huge Nat Hungate" []
"Huge Rita Gauthier" []
"Huge Tardy Daugherty"
"Huge Zina Huizenga"
"Hulk Man Kuhlman"
"Hunk Ares Hunsaker"
"Hunk Cruse Hunsucker"
"Hunk Mal Kuhlman" []
"Hunk Sid Hudkins"
"Hurlbert 'Sock' Brocklehurst"
"Hy 'Blam' Hambly"
"I-Be-Ouch Bouchie"
"I-Mash Misha" []
"Ida 'Bam' Badami"
"Ida 'Grr' Girard"
"Ike 'Grr' Kriger"
"India 'Grr' Girardin"
"Ines 'Rock' Erickson" []
"Ione 'Grr' Roering" []
"Ira 'Blam' Mirabal"
"Irma 'Sock' Mocarski" []
"Ivy 'Rock' Vickroy"
"Jan 'Sock' Jackson" []
"Jenni 'Bam' Benjamin" []
"Kandi 'Rock' Kondracki" []
"Kasia 'Wham' Kawashima"
"Kena 'Bam' Bakeman"
"Kena 'Blam' Blakeman"
"Kersti 'Pow' Petrowski"
"Kit 'Sock' Kostick"
"KO-Grind King Rod"
"Kristie 'Pow' Pietrowski"
"LaGarde 'Blam' Gambardella"
"Lan 'Blam' Ballman"
"Lan 'Ouch' Calhoun"
"Lang 'Ouch' Coughlan"
"Large-Bonk Longbrake"
"Larsen 'Thud' Sutherland"
"Layne 'Thud' Delahunty"
"Lea 'Sock' Sealock" []
"Lee 'Bonk' Knoebel"
"Len 'Blam' Bellman" []
"Leona 'Grr' Loranger"
"Les 'Bam' Balmes" []
"Leta 'Ouch' Latouche" []
"Letty 'Boom' Bottomley"
"Lew 'Bam' Wamble"
"Lin 'Blam' Billman"
"Lin 'Sock' Nickols" []
"Lina 'Sock' Nickolas" []
"Ling 'Bam' Gamblin" []
"Ling 'Ouch' Coughlin"
"Linh 'Bam' Hamblin" []
"Linh 'Splat' Stanphill"
"Link 'Sock' Skolnick"
"Lionel 'Grr' Rollinger"
"Lis 'Kapow' Pawloski"
"Lo-Carb Bo Carl"
"Loma 'Bop' Palombo"
"Loreta 'Boom' Bartolomeo"
"Luc 'Boom' Columbo" []
"Luc 'Splat' Stallcup" []
"Luce 'Boom' Coulombe"
"Lucio 'Bam' Columbia"
"Lurie 'Bonk' Kilbourne"
"Ly 'Boom' Lomboy"
"Lyle 'Sock' Locksley"
"Mabel 'Rock' Blackmore"
"Mac 'Bonk' Bockman"
"Mac 'Grr' Mcgarr"
"Mace 'Bonk' Boeckman"
"Marc 'Bonk' Brockman"
"Matt 'Sock' Mattocks"
"Maude 'Grr' Magruder" []
"Maul-Bop Palumbo" []
"Maul Giant Manigault" []
"Meline 'Grr' Remlinger"
"Mercy 'Sock' McCroskey"
"Mina 'Rock' Marcinko" []
"Misti 'Hook' Kishimoto"
"Ms. Ouch-So-Much"
"Mustang Stugman"
"MVP Napier Vipperman" []
"Nat 'Hook' Khatoon"
"Nat 'Ouch' Cauthon"
"Neal 'Smash' Hasselman"
"Neal 'Thud' Delahunt"
"Nestor 'Blam' Lambertson" []
"Nestor 'Sock' Rosenstock"
"Nettie 'Grr' Rettinger"
"Nice-Wham Wiechman"
"Nina 'Ouch' Counihan"
"Noe 'Bam' Beamon" []
"Noe 'Grr' Groner"
"Noemi 'Grr' Rominger" []
"Olsen 'Pow' Powelson"
"Oma 'Bonk' Bookman"
"Omar 'Bonk' Brookman"
"Ona 'Grr' Garron"
"Opal 'Bam' Palomba"
"Oren 'Bam' Boerman" []
"Oren 'Ouch' Cohenour"
"Plain Stud Duplantis" []
"Pro [n-t] Paterno" []
"Pro Ada Porada"
"Pro Agnus Purgason"
"Pro Aldo Lopardo"
"Pro Ali Priola"
"Pro Alina Apolinar" []
"Pro Alma Palomar"
"Pro Alta Laporta-Parlato" []
"Pro Ana Napora"
"Pro Art Parrot"
"Pro Asa Raposa"
"Pro Asia Paraiso"
"Pro Bert Probert"
"Pro Cara Capraro"
"Pro Caron Corporan"
"Pro Cher Porcher"
"Pro Chia Porchia" []
"Pro Cora Porcaro"
"Pro Cordie Cooprider"
"Pro Dale Leopard" []
"Pro Dan Padron" []
"Pro Dean Peardon" []
"Pro Dee Peredo"
"Pro Eda Pardoe"
"Pro Ellie Riopelle"
"Pro Elma Palermo" []
"Pro Ena Perona"
"Pro Erin Perrino" []
"Pro Esta Pastore" []
"Pro Ester Restrepo"
"Pro Gale Pergola"
"Pro Geri Perrigo"
"Pro Ian Arpino"
"Pro Ida Parodi" []
"Pro Isaac Sparacio"
"Pro Kasha Prohaska" []
"Pro Lea Lopera"
"Pro Leah Harpole"
"Pro Leo Looper" []
"Pro Lila Parillo" []
"Pro Lise Piersol" []
"Pro Lucie Lupercio"
"Pro Meda Padmore" []
"Pro Mona Poorman" []
"Pro Nick Pickron"
"Pro Nigel Oplinger" []
"Pro Omar Ramroop"
"Pro Ona Proano"
"Pro Regine Peregrino" []
"Pro Rene Perrone" []
"Pro Retta Perrotta"
"Pro Rina Parrino" []
"Pro Sade Pedrosa"
"Pro Sana Sparano"
"Pro Santa Pastrano" []
"Pro Sean Pearson" []
"Pro Seth Stopher" []
"Pro Stacee Pescatore"
"Pro Sue Prouse" []
"Pro Tamie Imperato" []
"Pro Tara Porrata"
"Pro Tera Portera"
"Pro Teri Portier"
"Pro Tessa Peatross" []
"Pro Tia Poitra" []
"Pro Tisa Poitras" []
"Pro Tonie Petronio" []
"Pro Tony Portnoy"
"Pro Tyra Praytor" []
"Pro Waldo Waldroop" []
"Pro Wes Powers" []
"Pro Zada Podraza"
"Rae 'Blam' Marable-Malerba" []
"Rae 'Wham' Wareham"
"Rees 'Blam' Belmares" []
"Regina 'Grr' Garringer"
"Ren 'Thud' Thunder" []
"Ren 'Wham' Wehrman"
"Rena 'Bam' Bearman"
"Rena 'Sock' Ackerson" []
"Renata 'Bop' Bonaparte" []
"Renate 'Wham' Weatherman"
"Rene 'Bam' Beerman" []
"Rene 'Sock' Eckerson"
"Renne 'Bam' Breneman"
"Renzi 'Blam' Zilberman"
"Retta 'Hook' Toothaker"
"Rey 'Blam' Bramley-Marbley"
"Rey 'Sock' Croskey" []
"Rey 'Splat' Spratley" []
"Rhett 'Bam' Trembath"
"Rita 'Blood' Dibartolo" []
"Rita 'Boom' Morabito" []
"Robt 'Smack' Backstrom"
"Rocio 'Bam' Ambrocio" []
"Rocio 'Splat' Policastro" []
"Rod 'Blam' Lombard-Lombard"
"Rollo 'Bam' Broomall"
"Ron 'Bam' Amborn" []
"Ron 'Blam' Lamborn"
"Ros 'Wham' Worsham"
"Rosa 'Thud' Southard"
"Rose 'Bam' Boersma" []
"Rose 'Bonk' Brookens"
"Rose 'Splat' Spoelstra"
"Rosie 'Bam' Ambroise"
"Rosita 'Bonk' Stainbrook" []
"Rough Abe Orebaugh"
"Rough Ben Boughner" []
"Rough-Blam Malbrough" []
"Rough Dan Draughon"
"Rough Ed Dougher" []
"Rough Gene Greenough"
"Rough Ian Hourigan"
"Rough Lamb Malbrough" []
"Rough Len Loughner"
"Rough Rod Dorrough"
"Rough Tod Thurgood" []
"Rubie 'Bam' Bierbaum"
"Rubin 'Bam' Birnbaum" []
"Ryan 'Bam' Brayman"
"Ryner 'Bam' Berryman" []
"Sal 'Bam' Balsam"
"Santina 'Wham' Swaminathan"
"Santone 'Grr' Rosengrant"
"Sarah 'Bam' Abrahams" []
"Sarina 'Bam' Barsamian"
"Sean 'Rock' Ackerson" []
"Sean 'Splat' Pleasants"
"Seldon 'Thud' Huddleston"
"Senior 'Whap' Spainhower"
"Shane 'Pow' Openshaw" []
"Shaunte 'Sock' Stockhausen"
"Shen 'Ouch' Houchens"
"Shin 'Blam' Shamblin"
"Shin 'Ouch' Houchins"
"Si 'Wham' Wisham"
"Sid 'Bonk' Dobkins"
"Sina 'Ouch' Chiusano"
"Slammer Mel Mars"
"Smack-Hero Schomaker" []
"Smackin['] Mick-San" []
"Smackin['] Nick Sam" []
"Smash-Tot St. Thomas"
"Snap-Him Shipman"
"Sockiner Erickson"
"Son 'Bam' Bosman"
"Son 'Blam' Lambson" []
"Sonia 'Grr' Garrison" []
"Soren 'Blam' Lamberson" []
"Stan 'Bonk' Bankston"
"Star 'Hook' Hartsook"
"Stone 'Blam' Bostelman" []
"Stone 'Wham' Mathewson" []
"Strong Beene Engebretson" []
"Strong Em Engstrom" []
"Strong Hal Langhorst"
"Strong Lieb Gilbertson" []
"Strong Mei Motsinger" []
"Strong Mirna Morningstar" []
"Strong Rae Garretson" []
"Strong Rena Rosengrant" []
"Strong Roe Torgerson"
"Strong Teel Longstreet" []
"Stud Earle Truesdale"
"Stud Harbor Broadhurst"
"Stud Holden Huddleston" []
"Stud Lon Ostlund"
"Stud Perine Turnipseed" []
"Stud Saul Dussault"
"Stud Tarvin Sturdivant"
"Su 'Bam' Mabus-Busam"
"Su 'Whap' Upshaw"
"Tana 'Bam' Manabat"
"Tank Earls Stalnaker"
"Tank Elsy Tanksley"
"Tank Emert Ketterman"
"Tank Erwin Warkentin"
"Tank Ison Atkinson"
"Tank Meri Martinek" []
"Tank Ro Kantor"
"Tank Seyler Tankersley"
"Tank So Stanko"
"Tank Spear Pasternak" []
"Tank Tignor Tarkington" []
"Ted 'Rock' Dockter"
"Teena 'Grr' Gaertner" []
"Tera 'Blood' DeBartolo" []
"Teri 'Blam' Lamberti"
"Teron 'Blam' Lamberton" []
"Terresa 'Bonk' Stonebraker"
"Thea 'Grr' Gerhart"
"Thersa 'Blam' Halberstam" []
"Thug Arie Gauthier" []
"Thug Earl Laughter" []
"Thug Ena Hungate" []
"Thug Noah Haughton" []
"Thug Nona Naughton" []
"Thug Rene Guenther" []
"Tito 'Thud' Douthitt"
"TKO Alan Kantola"
"TKO Ali Kotila"
"TKO Amos Tomasko"
"TKO Amy Motyka"
"TKO Ana Katona-Takano"
"TKO Annis Atkinson" []
"TKO Ara Kotara"
"TKO Bowers Westbrook" []
"TKO Chausse Stackhouse"
"TKO Cher Eckroth"
"TKO Chet Hockett"
"TKO Elsy Stokely" []
"TKO Ena Keaton"
"TKO Ensign Stoneking" []
"TKO Hal Kathol"
"TKO Ken Knotek"
"TKO Lea Ketola"
"TKO Len Kelton"
"TKO Lina Antolik"
"TKO Lon Kolton"
"TKO Mei Miotke" []
"TKO Mi Timko"
"TKO Mo Tomko"
"TKO Naoma Nakamoto"
"TKO Noah Khatoon" []
"TKO Oretha Toothaker" []
"TKO Rae Keator"
"TKO Rasch Hartsock"
"TKO Rees Koester" []
"TKO Rosia Kooistra"
"TKO Sal Kostal"
"TKO Sam Matsko"
"TKO Shera Hoekstra" [] []
"TKO Sima Tomasik"
"TKO Sina Atkison"
"TKO Son Kontos"
"Tona 'Bam' Boatman" []
"Toni 'Ouch' Coutinho"
"Torie 'Blam' Baltimore" []
"Tran 'Bam' Bartman"
"Tran 'Ouch' Cauthorn"
"Tran 'Pow' Prowant"
"Trey 'Blam' Lamberty" []
"Trim Agnes Stgermain"
"Trim Alline Martinelli"
"Trim Ana Martina"
"Trim Celsa McAlister"
"Trim Delana Martindale"
"Trim Diane Demartini"
"Trim Ella Martelli"
"Trim Evie Metivier"
"Trim Haden Meinhardt"
"Trim Ian Martini"
"Trim Lea Latimer"
"Trim Noble Tomberlin"
"Trim Omer Mortimer"
"Trim Sean Martines"
"Trim Soon Ormiston"
"Trim Stan Stmartin"
"Trim Tad Dittmar"
"Trim Ted Dittmer"
"Trim Tora Marriott"
"Trim Zane Martinez"
"Trinh 'Pow' Winthrop" []
"Trish 'Wham' Whitmarsh"
"Tse 'Wham' Mathews" []
"Tuf Aron Fortuna" []
"Tuf Auld Dufault"
"Tuf Cate Faucett"
"Tuf Dora Furtado"
"Tuf-Fears Stauffer"
"Tuf Lon Fulton"
"Tuf Lorena Lafortune" []
"Tuf Maas Mustafa" []
"Tuf Nees Fuentes"
"Tuf Olga Falgout"
"Tuf Oren Fortune" []
"Tuf Rosa Frausto" []
"Tuf Shel Shufelt"
"Tuf Sol Loftus" []
"Tuff Celis Sutcliffe"
"Tuff Lis Sutliff"
"Tuff Rose Stouffer"
"Tuff Sera Stauffer" []
"Ty 'Blam' Maltby"
"Tyler 'Bam' Tremblay" []
"Uhlig 'Bam' Limbaugh" []
"Vast Ann Vansant"
"Vast Ely Stalvey" []
"Vast Leora Salvatore" []
"Vast Normie Viramontes"
"Vast Nutter Sturtevant"
"Vast Ola Salvato"
"Vast Rae Tavares" []
"Walt of Low Fat"
"Walther 'Boom' Bartholomew" []
"Wham-Hit Whitham"
"Wilmer 'Thud' Wildermuth"
"Wm 'Ouch' Muchow"

table of research topics [xxp5]
blurb
"[if player is male]Craig Abel[else]Alica Berg[end if][']s Algebraics"
"abstrusest substrates"
"Achilles helicals" []
"Acme Bros. Macrobes"
"Adriance canaried radiance" []
"Adroit Tirado Ardito"
"adsorb-boards" []
"Agostinelli's legislations"
"Alison's Sialons"
"Allister Literals"
"Almeida's Maladies"
"amateur e-trauma"
"Amico's mosaic"
"Amnestied dementias"
"Analogism magnolias" []
"Ann Scott's constants"
"antic frog go-frantic factoring" []
"antimuons['] mountains" []
"Arqua's Quasar"
"Asbury's sub-rays"
"Asperger's presagers"
"Asselin salines"
"Astorino orations"
"Astrid triads" []
"astringent integrants"
"atom-units mutations"
"Attinger Treating"
"avant-garde graven data"
"average veerage"
"avid protein deprivation"
"Baier's Rabies Ribase"
"Bailly's syllabi"
"Balaguer's arguables"
"Balestra ratables"
"Barbero's absorber"
"Barlage's algebras"
"Bartoli's orbitals"
"Basinger bearings" []
"Bavaleri's Variables"
"Belmares's assembler"
"Ben Chu's bunches"
"Bessing Bigness"
"Blauler Rubella"
"the Blomper Problem"
"bossier riboses" []
"Branco's carbons"
"Brausell's rubellas"
"Briarton brain-rot"
"Broering's Resorbing"
"Bucci's Cubics"
"Bussiere's subseries"
"Camillo's localism"
"Camisso Mosaics"
"Canevari Variance"
"Cansino's scansion"
"Cantley latency"
"Caperton co-parent portance" []
"Caplister Particles"
"Capote's PECOTAs"
"Capsin panics"
"the Capster Spectra"
"Caradine's radiances"
"Casterline centralise-interlaces"
"Castlean analects"
"the centroid doctrine"
"Ceroli's Recoils"
"Cerrato's reactors"
"Chelsie Schiele Helices"
"Chemists['] Techisms"
"Cindie's indices"
"Cittrano Traction"
"Cletrone's electrons"
"clothiers['] chlorites"
"coarsening ignorances"
"Columbo's Coulombs"
"Comic Sans scam coins" []
"coolant octanol"
"Coombs-Boscom Combos" []
"cornitude reduction" []
"Cortesian Creations Reactions" []
"cosseted cestodes"
"cotinine and nicotine"
"Cox-Epstein Exceptions"
"crampiest impacters"
"Creedon's censored seconder encoders" []
"Crevost vectors"
"Crofta's factors" []
"Crombie's Microbes"
"Cudmore's decorums"
"Culligan's callusing"
"Cundrie's inducers"
"Curenton's nocturnes"
"Cureton's Snort-Cue Counters" []
"Cutino's suction"
"Cutrone's counters" []
"cysteines['] necessity"
"D'antonio's donations"
"Dahlheimer's hemihedrals"
"Daidone's anodised adenoids"
"Daigrepont pignorated readopting" []
"Dan Drast's standards"
"Danielson nonideals" []
"Daws wads"
"Dearing's readings"
"Deason anodes" []
"Debrosse bedsores" []
"Deighan's headings" []
"DeMarinis meridians" []
"derivational revalidation"
"Deroche's chordees"
"Desanctis distances"
"Dicenzo's zincodes"
"Dingess Designs"
"Disney's endysis"
"distender dendrites"
"Dorsch chords" []
"Dossiter steroids"
"Dr. Miaga's Diagrams"
"Dragonne's Androgens"
"drama pigs['] paradigms"
"Dreymon's Syndrome" []
"dripstones['] torpidness"
"Duerson's sounders" []
"DuFils fluids"
"Easton neatos"
"Ederra's readers"
"Edilsy's Lysides"
"Egen's Genes"
"Eisenbarth's breathiness"
"Eison-Trent Retentions"
"Eliason's anisoles"
"Emerson's moreness"
"emigrants streaming" []
"Erickson's rockiness"
"Ericsson-Cisneros necrosis" []
"Escalante elastance" []
"Esposito isotopes" []
"Estragon Orangest Negators"
"Etsui's tissue suites" []
"farmost formats" []
"faultiest fistulate"
"Feinstein's finiteness"
"Feldhaus headfuls"
"Ferrentino's interferons"
"Ferriera's rarefiers"
"feudalist disulfate"
"Filbertio's Fibrolites"
"Fingold's Foldings"
"flat-tire filtrate"
"flouriest fluorites"
"Fraioli's airfoils"
"Frist rifts"
"fulminous sulfonium"
"gamma magma"
"the Gant-Hope pathogen"
"Gartman's tangrams"
"Gaspari airgaps" []
"Gaucin's Saucing"
"Geiselman's semiangles"
"Gelinas's sealings" []
"genteelish gehlenites"
"the Geothermal Lag Theorem"
"Geremia's gamesier reimages"
"the Germi-Grime-IMGer"
"Gerrindo Ordering" []
"Giancola's analogics"
"Giardino-Giordani radioing"
"Girton's sorting"
"the Gitlin Tiling"
"Glancy's glycans"
"Glassie-Siegal's ligases"
"glutamine emulating"
"the Gonterman magnetron"
"Goranson argonons['] organons"
"Gosling's glossing"
"Gospodin's spongoids"
"Gosselin lignoses"
"Grady's Dry Gas"
"Grandinetti denitrating"
"the Greenburg-Gruenberg Grub Genre"
"Grinstead astringed gradients-treadings" []
"Groce-Greco Recog"
"Grote-Trego Ergot"
"Guillermo glomeruli" []
"the Gulf Coast focal gust"
"Hardee's sheared headers"
"Hearns's harness"
"Heintz's zeniths"
"Hesseltine's lithenesses"
"Hilgendorf's fingerholds"
"hive boar behavior"
"hologynic ichnology"
"Hopton's Not-Posh Photons"
"Hort-Meyer rheometry"
"housepainter neuropathies"
"houseplants['] sulphonates" []
"Hruska's Kashrus"
"Huettner's untethers"
"Hussong shoguns"
"hypodorian radiophony"
"Hyppolite's psilophyte"
"ice funnel influence"
"incognito cognition"
"Infinger refining"
"Interim REM-Init" []
"intersocietal electrisation"
"intrinsic citrinins"
"ion-fuss fusions"
"ion-stop potions" []
"Ion Storm Monitors"
"ions so IN"
"Ipson Pions"
"Iron Facts/Antics For Fractions"
"iso-ether theories" []
"isothermal thimerosal"
"isotropy porosity"
"an isthmian histamin"
"Iversen's inverses"
"Kaelin's alkines" []
"Keasling snaglike linkages"
"Keelan's alkenes"
"Keeton's ketones"
"the Kiesel-Lieske selkie"
"Kneale's alkenes" []
"Kneisley keylines"
"Koester's restokes"
"Kohlein's Sinkhole" []
"Kugel's Kluges"
"Labarge algebra"
"Labriola's isallobar"
"Lacrosse solacers" []
"Lagace's scalage"
"Laing's signal-lasing"
"Lampson's plasmons"
"Lanterni's Internals" []
"Lapointe's sealpoint antipoles"
"Lapsam plasma"
"Lartigue ligature"
"Lattimer's remittals"
"Lauman's Manuals"
"Lauritsen retinulas" []
"LaVerre's reversal" []
"LeBrock's Blockers"
"leg-mind melding"
"Leiterman's streamline" []
"Lenker's kernels"
"LeScipio Policies" []
"less-epic eclipses"
"Lessing Singles"
"Levenson's nonselves"
"Leverton's resolvent"
"Lienau's Insulae"
"the Limoges semilog"
"Lohan's halons"
"Lon's sol'n"
"Lopeman's neoplasm"
"Losinski oilskins"
"Lucero's closure" []
"the Lucien Clue-in Nuclei"
"Lupercio's supercoil"
"Macgoula's glaucomas"
"Mackenzie's eczema skin"
"Magi's Sigma"
"Manderson's randomness"
"Mangieri's imaginers['] migraines" []
"Manuelito's emulations"
"Marasco's sarcomas"
"Margarett's Tetragrams"
"Mascioli's socialism"
"Mathiasen Haematins" []
"Matsui autism"
"Matsui's Autisms"
"Matsuno-Stouman amounts"
"Matteo's stomate" []
"Maturin's naturism"
"Mcaleer's sclerema" []
"McHale alchem"
"McShea's schemas"
"measurings reassuming"
"Mellor-Dowd's world models"
"Menelaus's un-measles"
"mensural numerals"
"Mersereau's remeasures"
"the Mesech scheme"
"Messed-Up Deep Sums"
"micro-sleep recompiles"
"micron gap comparing" []
"Midura's radiums"
"migrations amortising"
"the mind-noise dimension"
"minor scopes['] compression"
"Miramontes monetarism" []
"a modernised endodermis"
"moisture's misroutes"
"Monasterio's astronomies"
"Monte Xiao's taxonomies"
"the Monterosso Sensomotor"
"moonseeds['] endosomes"
"moorhens['] hormones" []
"Morgani's organism roamings" []
"Morganti's stroaming sigmatron"
"Morgassi Isograms"
"Morisset Trisomes"
"Morneau's neuromas"
"Moses's mosses"
"Moss-Bly Symbols"
"mossier isomers"
"Motte's Totems"
"Mr. Poyle's Polymers"
"Mr. Tice's Metrics" []
"Mubsner Numbers"
"a multi-cell clitellum"
"Murata trauma" []
"Myla's Amyls"
"myoglobin looming by"
"Naomi's Aminos" []
"Naples planes"
"Napolitan's nonspatial planations"
"Narciso's narcosis"
"Narcisse's scariness"
"narcotised draconites"
"Neeson's oneness" []
"Nelfsun funnels"
"neo-virus univores" []
"a neolithic ichnolite"
"Nesheim's inmeshes"
"net-angst tangents"
"neuroleptics['] intercouples"
"Neustadt's unstateds"
"Nichole's Helicons" []
"Nicknamed Dieckmann"
"Nieland's annelids"
"Nimmo's monism"
"Nissley lysines" []
"no-spell pollens"
"No-Sum Muons"
"non-sure neurons"
"nonhistorical chlorinations"
"nonsacred ordnances" []
"the normative movin['] rate"
"Norris cue recursion"
"Nuge's Genus"
"O'Neill's niellos"
"Obringer's resorbing" []
"obscurantist subtractions"
"obstruent buttoners" []
"Oetken's ketones" []
"Ogorman's sonogram"
"old rebus boulders"
"Old Slicer Colliders"
"Olsen-Slone-Noel's enols"
"Orangest negators" []
"orientating integration"
"Ornstein ternions"
"Orton's rotons"
"the Orzinho-Zhirono Horizon"
"Osgood Sod-Goo"
"Osmani-Moisan aminos" []
"Osterlund roundlets" []
"ostriches['] trichoses"
"Ostrum tumors"
"Otis Rhee's theories"
"Otremba's bromates"
"Ox Cline's Lexicons"
"oxidised dioxides"
"Palombi's bioplasm"
"Pandey's Dyspnea"
"Paratore's separator"
"a pathogen heptagon"
"pathogens['] heptagons"
"Pauleri's spirulae"
"Peatross protases" []
"Peccton's concepts"
"Peloni's Epsilon" []
"Pelton's leptons"
"Pendleton's End-Leptons"
"peptides['] deep pits"
"perigones['] progenies"
"periodontal deploration"
"Perlstein's tripleness"
"permafrost preformats"
"Perret perter"
"phenocrystic pyrotechnics"
"Philomena-nemophila"
"phonographist phosphorating"
"Pilotto's tool tips"
"Plotkin's slipknot post-link slipknot"
"plushiest sulphites"
"Pomeroy's pyrosome"
"positional spoilation"
"positron portions['] sorption"
"Poulin's Upsilon Pulsion"
"Poythress's hypostress"
"Preusser pressure" []
"pro-nucleus uncouplers"
"a problematic particle mob"
"Pusateri's prussiate"
"Raase Areas"
"the Radoncic cancroid draconic"
"Rascal's Scalars"
"real fun learn-fu"
"ref-space prefaces"
"refringence referencing"
"Regiment Metering"
"Reinoso's erosions"
"Reinsch's richness"
"Reisman's seminars" []
"Reisse Series" []
"Remaker Kreamer"
"Respicio's iriscopes"
"Restaino's Assertion" []
"restriven inverters"
"Rezac's crazes"
"rhinestone threonines"
"ride count reduction" []
"Rideau's residua"
"rindiest nitrides"
"Ringuette's trusteeing"
"Ripstone Proteins Pointers"
"rites-tiers" []
"Robaina's abrasion"
"Robie's ribose"
"Rocantti Traction" []
"Rosalind-Lorinda's Ordinals" []
"Rosati-Sirota-Satori Ratios"
"Rosenfeld enfolders"
"Rossiter's resistors"
"Rupal's Pulsar"
"the Saito Iotas"
"Salinger-Lerangis aligners" []
"Salminen melanins" []
"Salonga analogs" []
"Sammel lemmas"
"Sandridge's addressing"
"sanguine Guanines" []
"sanitizer triazines"
"Sanpedro operands"
"Sardina radians" []
"Sassone seasons"
"Satcher's starches" []
"Sayles lyases"
"Scalardi Radicals" []
"Scales's classes"
"Scanlon's non-class"
"Scempeidi epidemics"
"scenic e-Science"
"Scuderi's discures"
"Seagrave averages" []
"Sealy's Lyases" []
"Seamster steamers"
"Seaton neatos" []
"Sebastian basanites" []
"Seier's Series"
"Selina's Salines" []
"Semuldo-LeDomus Modules" []
"Serafino's farinoses"
"Serrato's assertor-assorter" []
"Settlemeier telemetries"
"Severin Inverse Veerins"
"Severin's inverses" []
"Severino's eversions"
"sheltering lighteners"
"Shenefield needlefish"
"Shooing Goonish Ion Hogs"
"Shreiker Kreisher"
"Sid Lamp's plasmids"
"Siegman enigmas" []
"Siegmann meanings" []
"Sigman's massing"
"a silicone isocline"
"silkscreen slickeners"
"sincerest secretins"
"Sisemore isomeres"
"Slayden-Danley's adenyls" []
"Sleator's Ore-Salts"
"slick cad ad clicks"
"slipper ripples"
"smithereens['] intermeshes"
"snoop-crimes compression" []
"solenoid eidolons"
"somatic atomics"
"sonar motif-formations"
"Sonic Boom Ion Combos"
"sonicator consortia"
"Sortino isotron torsion"
"sovereign virogenes"
"Spavro Vapors"
"Spectral I-Particles" []
"Spheric Ciphers"
"Spitler Triples"
"Splitter-Terp List"
"the Spoelstra Laser-Post"
"spoiled dipoles" []
"spurling purlings"
"St. Germaine's magnetisers"
"St Pierre's persister"
"Stacey's cytases" []
"Staiger-Agresti Triages" []
"Stancube's Substance" []
"stankier streakin['] keratins" []
"Staptner trap-nest patterns" []
"static ion citations"
"Steadman mandates" []
"Steagall's stallages"
"Steering Integers" []
"Stegman magnets" []
"Stehling's lightness" []
"Stemping Pigments" []
"Stepanek netspeak"
"Stephany phytanes" []
"Sterger-Grester Regrets" []
"steroid editors" []
"Stineman mannites" []
"Stoffer Efforts" []
"Stoma-Atoms"
"Straley raylets" []
"Strange Map Pentagrams"
"Stromer Stormer-Tremors" []
"Strosnider torridness"
"Stu Eger's gestures"
"Sturgeman Arguments" []
"the Stymes System"
"sustinent nuttiness"
"Sutliff's fistfuls"
"Szemeny enzymes"
"tainted ions['] destination" []
"Tallerico's allosteric"
"Teresa's Tessera"
"the TerraCo Reactor"
"Tessi-Estis sites"
"Tessudi tissued studies"
"Theorist Theriot's thorites" []
"Theropodan parenthood"
"Tiedeman dementia"
"Timlin's Int-Lims"
"a tint-proof footprint"
"tiny pearl interplay" []
"the Tirolean relation"
"Tiscareno reactions" []
"Tisdale Details"
"titration attrition"
"toluidin dilution"
"Tomas Stamo-Mota's Atoms" []
"Tomasic's acosmist massicot"
"Tomasic's somatics" []
"Tomasino amotions"
"Torenstein Retentions" []
"Toriano's orations" []
"trans-gene generants"
"trans-sonic constrains"
"transition nitrations"
"Tremaine's antimeres"
"Trisano-Santori Rations"
"Trupiano's supinator"
"Ulf's Flus"
"uncivilnesses['] inclusiveness"
"an undocile nucleoid"
"unlisted diluents"
"unsliced nuclides"
"unstable abluents"
"Urdiales's residuals"
"uremic Cerium"
"urogenital regulation" []
"UV-seen venues"
"vain ions['] invasion"
"Valentino's anti-novels"
"Vascheri archives" []
"VCR use curves"
"Velton's Solvent"
"verrucose overcures"
"Vitner's Inverts"
"Wallace's Scale Law" []
"Winkler's Wrinkles"
"Winterstein intertwines"
"Wrightson ingrowths" []

table of smartypants [xxp6]
blurb
"Acute Arlen Laracuente" []
"Acute Rod Courtade" []
"Acute Sal Lacuesta" []
"Adept Euna Patenaude"
"Adept Giron Daigrepont" []
"Adept Lis Plaisted"
"Analytic [if player is male]Ty Lancia[else]Tina Lacy[end if]" [sourcesz>>blue lacuna]
"Boss Hacker Hassebrock" []
"Collegian [if player is male]Alec Ligon[else]Olga Cline[end if]" []
"Credential-Interlaced [if player is male]Clint Reade[else]Celine Dart[end if]"
"Dev Arlen Lavender" []
"Dev Arvin Vandiver" []
"Dev Callen Cleveland"
"Dev Caren Cavender" []
"Dev Earl Velarde" []
"Dev Elli Deville" []
"Dev Giles Selvidge"
"Dev Huang Devaughn"
"Dev Isa Davies" []
"Dev Leandra Landaverde" []
"Dev Lila Villeda" []
"Dev Lisa Vidales" []
"Dev Loya Loveday"
"Dev Neal Eveland"
"Dev Parton Davenport" []
"Dev Rae DeVera" []
"Dev Raglin Vangilder" []
"Dev Red Vedder"
"Dev Reo Devore" []
"Dev Ro Dover"
"Dev Ronna Vandoren" []
"Dev Sabine Benavides"
"Dev Sal Valdes" []
"Dev Salo Desalvo"
"Dev Sebine Benevides"
"Dev Sera Deavers" []
"Dev Sueann Vandeusen"
"Dev Tia DeVita" []
"Dev Toi DeVito" []
"Dev Tula Devault"
"Dev Verla Valverde" []
"Devster Dr. Steve"
"Dig-Nums Sigmund"
"Doc Alta Cataldo"
"Doc Arlen Calderon" []
"Doc Arlene Calderone" []
"Doc Arner Dorrance" []
"Doc Atlas Castaldo"
"Doc Audra Cuadrado"
"Doc Azar Cardoza"
"Doc Boar Cordoba"
"Doc Earl DeCarlo" []
"Doc Elli Cedillo" []
"Doc Elma Macleod" []
"Doc Elsa Salcedo" []
"Doc Ena Deacon" []
"Doc Erma Mercado" []
"Doc Eryn Condrey"
"Doc Esta Decosta"
"Doc Fearn Defranco" []
"Doc Fishel Schofield"
"Doc Fisk Fosdick"
"Doc Frye Fordyce" []
"Doc Gill Cogdill" []
"Doc Irma Dimarco" []
"Doc Kahl Hadlock" []
"Doc Karl Lockard" []
"Doc Keener Eckenrode" []
"Doc Kelm Medlock"
"Doc Kerri Roderick" []
"Doc Kinser Dickerson" []
"Doc Laraine Candelario" []
"Doc Le Dolce" []
"Doc Leaf Defalco" []
"Doc Leah Deloach" []
"Doc Leif Cofield"
"Doc Letha Deloatch" []
"Doc Lira Dicarlo" []
"Doc Lisa Salcido" []
"Doc Lola Collado" []
"Doc Lu Cloud" []
"Doc Ly Cloyd"
"Doc Mae Macedo" []
"Doc Mana Moncada"
"Doc Mary Carmody" []
"Doc Mel Mcdole" []
"Doc Mia Damico-Modica"
"Doc Nee Cedeno" []
"Doc Noemi Domenico" []
"Doc Oma Mcadoo"
"Doc Palen Copeland"
"Doc Rae Decaro" []
"Doc Rana Cardona"
"Doc Rena Cardone" []
"Doc Rhee Deroche" []
"Doc Roach Corchado" []
"Doc Ron Cordon"
"Doc Rorie Cordeiro" []
"Doc Rosa Cardoso"
"Doc Sherer Schroeder" []
"Doc Stark Stockard" []
"Doc Tresa Decastro" []
"Doc Ute Doucet-DuCote"
"Doc Wehr Cowherd" []
"Doc Wen Cowden"
"Dorla 'Bingo' Longobardi" []
"Dr. [a-b] Beard-Bader" []
"Dr. [if player is male]Enis[else]Ines[end if] Snider" []
"Dr. [if player is male]Euan[else]Euna[end if] Renaud" []
"Dr. [n-t] Arendt" []
"Dr. Abner Bernard" []
"Dr. Ager Gerard"
"Dr. Aguon Garduno" []
"Dr. Ake Drake-Radke"
"Dr. Akin Kinard" []
"Dr. Alec Calder"
"Dr. Alfon Lanford" []
"Dr. Ali Laird" []
"Dr. Alice Cardiel" []
"Dr. Aline Ireland" []
"Dr. Alla Allard"
"Dr. Allan Randall-Darnall"
"Dr. Allee Delreal"
"Dr. Allen Darnell-Randell" []
"Dr. Allene Allender"
"Dr. Amee Meader"
"Dr. Ames DeMars" []
"Dr. Amico Dimarco" []
"Dr. Amie Merida" []
"Dr. Amina Miranda" []
"Dr. Angie Dearing-Reading" []
"Dr. Angla Garland-Ragland" []
"Dr. Anisa Sardina" []
"Dr. Anne Danner"
"Dr. Antone Anderton" []
"Dr. Archie Reichard" []
"Dr. Ater Trader"
"Dr. Aube Bauder" []
"Dr. Aura Arruda"
"Dr. Auten Durante" []
"Dr. Avalos Salvador" []
"Dr. Bade Bedard" []
"Dr. Baer Berard"
"Dr. Baier Berardi" []
"Dr. Bain Bardin" []
"Dr. Banes Brandes"
"Dr. Bao Board" []
"Dr. Barone Bernardo" []
"Dr. Bay Darby-Byard"
"Dr. Beale Baldree" []
"Dr. Bean Braden-Barden-Bednar-Benard"
"Dr. Beane Bearden" []
"Dr. Beasley Beardsley" []
"Dr. Beau Bauder" []
"Dr. Bee Breed"
"Dr. Belen Brendle-Brendel"
"Dr. Belin Brindle"
"Dr. Bella Bellard"
"Dr. Benes Berends"
"Dr. Berna Bernard" []
"Dr. Bey Derby"
"Dr. Beyer Deberry" []
"Dr. Blane Breland" []
"Dr. Bode Debord"
"Dr. Bogan Bragdon"
"Dr. Bogen Brogden"
"Dr. Bolan Borland" []
"Dr. Borgen Nordberg"
"Dr. Bower Browder" []
"Dr. Briana Brainard" []
"Dr. Brose Borders"
"Dr. Buono Bourdon"
"Dr. Cale Calder" []
"Dr. Calvo Colvard"
"Dr. Cane Carden-Dancer"
"Dr. Cano Conrad"
"Dr. Cao Acord"
"Dr. Cari Ricard"
"Dr. Casi Sicard"
"Dr. Ceola Decarlo" []
"Dr. Chanel Chandler" []
"Dr. Charis Richards" []
"Dr. Chiles Childers"
"Dr. Chute Dutcher"
"Dr. Clay Clardy"
"Dr. Coates Decastro" []
"Dr. Cole Cordle"
"Dr. Collis Driscoll"
"Dr. Coon Cordon" []
"Dr. Core Corder-Record"
"Dr. Coria Ricardo" []
"Dr. Corie Derrico"
"Dr. Coyne Condrey" []
"Dr. Crea Carder-Crader"
"Dr. Crowe Crowder"
"Dr. Daigle Aldridge"
"Dr. Dara Dardar" []
"Dr. Dawes Edwards" []
"Dr. Dean Darden" []
"Dr. Deana Andrade-Dandrea"
"Dr. Deann Dennard"
"Dr. Deems Medders" []
"Dr. Delfina Friedland"
"Dr. Deon Rodden" []
"Dr. Dille Riddell" []
"Dr. Duell Ruddell"
"Dr. Eagle Arledge" []
"Dr. Ebling Lindberg" []
"Dr. Ed Redd"
"Dr. Eden Redden"
"Dr. Edington Reddington"
"Dr. Edy Reddy" []
"Dr. Efren Redfern"
"Dr. Elena Learned" []
"Dr. Eli Riedl" []
"Dr. Elie Riedel" []
"Dr. Ella Allred-Ellard"
"Dr. Elli Diller"
"Dr. Elsa Sadler" []
"Dr. Else Elders"
"Dr. Ena Nader-Arden-Arend" []
"Dr. Engel Dengler"
"Dr. Enid Reddin" []
"Dr. Eric Crider"
"Dr. Erick Derrick-Redrick"
"Dr. Eugena Gendreau" []
"Dr. Eun Duren"
"Dr. Eve Verde" []
"Dr. Evin Verdin" []
"Dr. Ewa Dewar"
"Dr. Ewan Andrew" []
"Dr. Eyre Dreyer"
"Dr. Fae Freda"
"Dr. Fason Sanford"
"Dr. Fay Frady"
"Dr. Fe Fred"
"Dr. Fee Freed-Feder" []
"Dr. Fidel Friddle" []
"Dr. Fonda Danford" []
"Dr. Forde Redford"
"Dr. Franco Cranford"
"Dr. Fricke Fredrick"
"Dr. Gaier Gerardi"
"Dr. Gale Gerald"
"Dr. Galli Gillard"
"Dr. Gay Grady"
"Dr. Gena Grande" []
"Dr. Genie Deering" []
"Dr. Geno Gorden" []
"Dr. Gerena Gardener" []
"Dr. Geri Grider"
"Dr. Gertha Gerhardt"
"Dr. Gibson Birdsong"
"Dr. Gilan Darling" []
"Dr. Gile Gilder"
"Dr. Gina Gardin" []
"Dr. Gino Rigdon"
"Dr. Gore Rodger" []
"Dr. Grenier Derringer"
"Dr. Grose Rodgers"
"Dr. Guin Durgin"
"Dr. Habib Hibbard"
"Dr. Hae Heard"
"Dr. Hager Gerhard"
"Dr. Hain Hardin"
"Dr. Haines Sheridan" []
"Dr. Hance Chenard"
"Dr. Hanes Dashner" []
"Dr. Hara Darrah"
"Dr. Haro Harrod"
"Dr. Hasan Hansard" []
"Dr. Hay Hardy"
"Dr. Heaps Shepard" []
"Dr. Heitman Meinhardt" []
"Dr. Hertha Ehrhardt"
"Dr. Hoa Hoard"
"Dr. Hosea Rhoades" []
"Dr. Hua Huard"
"Dr. Huang Draughn"
"Dr. Hye Hyder" []
"Dr. Ian Drain-Nardi"
"Dr. Idell Riddell" []
"Dr. Ilona Orlandi" []
"Dr. Inge Ginder-Reding"
"Dr. Inger Grinder" []
"Dr. Iona Ardoin" []
"Dr. Isa Ardis"
"Dr. Jae Jared" []
"Dr. Janie Jardine" []
"Dr. Jone Jorden"
"Dr. Juana Andujar"
"Dr. Ka Dark"
"Dr. Kalman Markland"
"Dr. Kari Rikard"
"Dr. Kate Radtke"
"Dr. Kenna Kennard"
"Dr. Kia Ikard"
"Dr. Kina Kinard" []
"Dr. Kindra Drinkard"
"Dr. Laboy Bolyard" []
"Dr. Laine Ireland" []
"Dr. Lalli Lillard"
"Dr. Lampley Dalrymple"
"Dr. Lance Candler" []
"Dr. Lane Nadler" []
"Dr. Lavigne Vangilder" []
"Dr. Lawson Rowlands" []
"Dr. Lea Adler-Radel"
"Dr. Leaf Alfred" []
"Dr. Leah Herald"
"Dr. Lee Elder-Edler"
"Dr. Leif Fidler"
"Dr. Lemelin Millender"
"Dr. Leona Leonard-Olander" []
"Dr. Leong Goldner"
"Dr. Leyba Bradley" []
"Dr. Liew Wilder" []
"Dr. Lowe Dowler"
"Dr. Luse Sluder"
"Dr. Lute Trudel"
"Dr. Mae Mader-Demar" []
"Dr. Magali Madrigal" []
"Dr. Maglio Grimaldo" []
"Dr. Malec Mcardle" []
"Dr. Malena Alderman" []
"Dr. Malone Moreland" []
"Dr. Mana Armand" []
"Dr. Manke Denmark"
"Dr. Manno Normand-Nordman"
"Dr. Masi Simard-Mardis" []
"Dr. Mccay Mccrady"
"Dr. Means Marsden-Manders" []
"Dr. Mena Erdman-Marden" []
"Dr. Mina Minard" []
"Dr. Mirella Remillard"
"Dr. Mona Damron" []
"Dr. Monay Raymond" []
"Dr. Moon Ormond-Mondor"
"Dr. Mulan Landrum"
"Dr. Mule Mulder"
"Dr. Na Rand"
"Dr. Nat Arndt"
"Dr. Neal Lander" []
"Dr. Neale Learned" []
"Dr. Nees Endres-Enders"
"Dr. Negri Grinder" []
"Dr. Neil Linder" []
"Dr. Neoma Medrano" []
"Dr. Neyo Rodney" []
"Dr. Nga Grand" []
"Dr. Niesha Sheridan" []
"Dr. Nigel Grindle-Dingler" []
"Dr. Nino Nordin"
"Dr. Nocera Dorrance" []
"Dr. Noe Roden" []
"Dr. Nola Arnold"
"Dr. Noon Rondon"
"Dr. Nyla Landry"
"Dr. Oaks Kardos" []
"Dr. Ochs Dorsch" []
"Dr. Oleg Golder" []
"Dr. Olin Ridlon" []
"Dr. Omega DeGarmo" []
"Dr. Ona Doran" []
"Dr. Oren Norred"
"Dr. Oshea Rhoades" []
"Dr. Oubre Brodeur" []
"Dr. Owen Worden" []
"Dr. Ozie Dozier" []
"Dr. Patti Pittard"
"Dr. Pease Paredes" []
"Dr. Pei Pride" []
"Dr. Pica Picard"
"Dr. Pine Pinder"
"Dr. Pinero Perrodin" []
"Dr. Rae Rader"
"Dr. Rager Gerrard"
"Dr. Regan Gardner" []
"Dr. Regina Gardiner" []
"Dr. Regine Redinger" []
"Dr. Reid Ridder" []
"Dr. Rena Renard" []
"Dr. Rene Render"
"Dr. Retha Erhardt"
"Dr. Rey Dryer" []
"Dr. Rhea Harder"
"Dr. Rhee Dreher" []
"Dr. Rieke Kreider"
"Dr. Rios Dorris" []
"Dr. Riva Rivard"
"Dr. Ro Dorr"
"Dr. Roane Reardon" []
"Dr. Robena Dearborn" []
"Dr. Roesch Schroder"
"Dr. Rube Bruder"
"Dr. Rue Ruder-Duerr"
"Dr. Rutan Durrant"
"Dr. Saenz Zanders"
"Dr. Sansone Sanderson"
"Dr. Sao Rodas" []
"Dr. Savino Arvidson"
"Dr. Seal Sadler" []
"Dr. Seals Lessard"
"Dr. Sean Arends"
"Dr. See Seder" []
"Dr. Selina Sindelar" []
"Dr. Seto Strode-Doster"
"Dr. Shana Hansard" []
"Dr. Shane Dashner" []
"Dr. Sharer Sherrard"
"Dr. Shea Dasher" []
"Dr. Shera Shrader" []
"Dr. Shoaf Ashford"
"Dr. Sima Mardis" []
"Dr. Simone Dinsmore" []
"Dr. Slade Saddler" []
"Dr. Slane Randles" []
"Dr. Slate Stadler"
"Dr. Sloane Landeros" []
"Dr. Staley Stradley" []
"Dr. Stan Strand"
"Dr. Steen Stender" []
"Dr. Stefani Standifer" []
"Dr. Ta Dart"
"Dr. Taube Daubert"
"Dr. Tay Tardy"
"Dr. Thea Dehart-Dearth"
"Dr. Theola Aderholt" []
"Dr. Tonya Drayton" []
"Dr. Toole Deltoro"
"Dr. Tresa Strader" []
"Dr. Tuan Durant" []
"Dr. Tyesha Hardesty" []
"Dr. Una Duran" []
"Dr. Valene Lavender" []
"Dr. Wade Edward"
"Dr. Way Wydra"
"Dr. Wes Drews"
"Dr. Whalen Landwehr"
"Dr. Willa Willard" []
"Dr. Wonda Downard"
"Dr. Woolf Wolford"
"Dr. Yael Radley" []
"Dr. Yang Grandy"
"Dr. Yee Reedy"
"Dr. Yu Rudy"
"Dr. Zane Zander"
"Dunphy Yun, Ph. D"
"Ed 'Bingo' Boeding" []
"Erma 'Bingo' Giambrone" []
"Geek Al Keagle"
"Geek Branch Hackenberg"
"Geek Don Goedken"
"Geek Len Engelke" []
"Geek Lin Keeling" []
"Genius [n-t] Augenstein"
"Genius Bhat Stinebaugh" []
"Genius Brewer Weisenburger"
"Genius Dart Staudinger" []
"Genius Nitta Sanguinetti"
"Gifted Marc McFatridge"
"Gifted Tor Gottfried"
"Gifted Varn Vandegrift"
"Hack Bart Hackbart"
"Hack Bree Habecker"
"Hack Coy Haycock"
"Hack Elston Shackleton"
"Hack Elva Hlavacek"
"Hack Emil Michalek" []
"Hack Joni Hojnacki" []
"Hack Lester Stahlecker"
"Hack Levi Havlicek" []
"Hack Lu Lukach"
"Hack Lyle Chalkley"
"Hack Man Hackman"
"Hack Mila Michalak" []
"Hack Min Machnik" []
"Hack Pam Packham"
"Hack Paulo Chaloupka"
"Hack Rob Chrobak"
"Hack Robt. Bockrath"
"Hack Ruskin Cruikshank"
"Hack Somer Schomaker" []
"Hack Theron Heckathorn"
"Hack Verne Chervenak"
"Hack Wes Schwake"
"Hack Yen Hackney"
"Hacker Deb Hardebeck" []
"Hacker Lev Kercheval"
"Hick-Nerd Hendrick" []
"Innovater [if player is male]Ronan Veit[else]Tina Veron[end if]"
"Innovator Nan Rovito"
"IQ-y Bum Quimby"
"Kresge 'Bingo' Koenigsberg"
"Laureate Lea Tauer"
"Lea 'Bingo' Belongia" []
"Luther 'Bingo' Lightbourne" []
"MFA Erin Freiman" []
"MFA Kerri Freimark" []
"MFA Latonia Amalfitano"
"MFA Lou Malouf"
"MFA Nell Fellman"
"MFA Oren Foreman" []
"MFA Rene Freeman" []
"MFA Rico Formica"
"MFA Rina Fairman"
"MFA Rob Fambro"
"MFA Ron Forman-Froman"
"MFA Tia Fatima" []
"Neat Allison Santaniello" []
"Neat Amy Yeatman"
"Neat Bert Barnette"
"Neat Bo Tabone"
"Neat Celsa Escalante" []
"Neat Coy Coatney" []
"Neat Edgar Teagarden" []
"Neat Elvin Valentine" []
"Neat Flash Shanafelt"
"Neat Gail Tenaglia"
"Neat Grisel Easterling" []
"Neat Guy Gautney" []
"Neat Janis Saintjean"
"Neat Les Alsteen"
"Neat Levi Valiente" []
"Neat Lida DiNatale"
"Neat Lili Litalien"
"Neat Lord Alderton"
"Neat Lu Neault"
"Neat Ma Eatman"
"Neat Mara Amarante" []
"Neat Marcos Sacramento"
"Neat Margo Agramonte" []
"Neat Min Tiemann"
"Neat Minh Heitmann"
"Neat Misha Mathiasen" []
"Neat Mort Tramonte"
"Neat Nigel Galentine" []
"Neat Opal Pantaleo" []
"Neat Oscar Castorena"
"Neat Osmon Montesano"
"Neat Pat Panetta"
"Neat Remi Tremaine" []
"Neat Rey Enyeart"
"Neat Rico Nicotera" []
"Neat Rio Reitano"
"Neat River Tavernier"
"Neat Rob Boatner" []
"Neat Rose Senatore" []
"Neat Rosi Restaino"
"Neat Sam Eastman" []
"Neat Sheri Eisenhart" []
"Neat Sid DeSanti" []
"Neat Spiro Petrosian"
"Neat Su Austen"
"Neat Tam Manetta"
"Neat Thor Atherton"
"Neat Trish Steinhart" []
"Neat Vera Navarete" []
"Neat Vern Tavenner" []
"Neat Zia Atienza"
"Neo-Smart Osterman"
"Nerd Abe Bearden" []
"Nerd Abel Breeland" []
"Nerd Ada Andrade" []
"Nerd Al Ladner" []
"Nerd Alec Calender"
"Nerd Alf Fernald"
"Nerd Ali Ireland" []
"Nerd Alica Cardinale" []
"Nerd Alisa Saldierna" []
"Nerd Alma Alderman" []
"Nerd Amos Soderman" []
"Nerd Angel Greenland-Englander"
"Nerd Ann Drennan"
"Nerd Asa Andreas" []
"Nerd Ash Dashner" []
"Nerd Aviv Vandiver" []
"Nerd Avon VanDoren" []
"Nerd Bart Bertrand"
"Nerd Barth Bernhardt"
"Nerd Bee Breeden"
"Nerd Ben Brenden"
"Nerd Beth Behrendt"
"Nerd Bo Broden" []
"Nerd Bray Bernardy" []
"Nerd Brian Bernardin"
"Nerd Cal Crandle" []
"Nerd Ceola Calderone" []
"Nerd Ciara Carradine" []
"Nerd Cora Dorrance" []
"Nerd Coy Condrey" []
"Nerd Dan Dennard" []
"Nerd Eberling Lindenberger"
"Nerd Ed Derden" []
"Nerd Eli Leidner-Reindel" []
"Nerd Ella Allender" []
"Nerd Elma Melander"
"Nerd Elsa Selander"
"Nerd Elva Lavender" []
"Nerd Emory Nordmeyer"
"Nerd Gage Anderegg" []
"Nerd Gail Aldinger" []
"Nerd Gale Legrande"
"Nerd Gay Gradney" []
"Nerd Gema Gerdeman"
"Nerd Gerri Derringer" []
"Nerd Gia Dearing" []
"Nerd Gil Dingler-Gildner" []
"Nerd Gita Tangredi" []
"Nerd Hal Handler" []
"Nerd Hawk Handwerk"
"Nerd Helga Engelhard" []
"Nerd Hulda Underdahl"
"Nerd Ian Rendina"
"Nerd Ingalls Slingerland"
"Nerd Ingold Dondlinger"
"Nerd Iola Leonardi" []
"Nerd Iona Orendain" []
"Nerd Ira Reinard" []
"Nerd Isa Andries"
"Nerd Jetta Dejarnett" []
"Nerd Jia Jardine" []
"Nerd Jo Jorden" []
"Nerd Kalb Berkland"
"Nerd Kasi Iskander" []
"Nerd Keli Elderkin"
"Nerd Laci Calderin" []
"Nerd Lea Anderle" []
"Nerd Ledvina Vanderlinde"
"Nerd Lee Enderle-Needler" []
"Nerd Leo Olender" []
"Nerd LeSage Greenslade" []
"Nerd Letha Thelander"
"Nerd Lew Wendler" []
"Nerd Lila Nardelli" []
"Nerd Ling Lindgren" []
"Nerd Lips Spindler"
"Nerd Lisa Sindelar" []
"Nerd Lizama Almendariz"
"Nerd Loma Molander" []
"Nerd Lorna Norlander"
"Nerd Lu Rundle"
"Nerd Luisa Lauridsen" []
"Nerd Luke Kluender"
"Nerd Mae Merenda-Deerman" []
"Nerd Marcy Cryderman" []
"Nerd Mason Manderson-Sonderman"
"Nerd Meta Determan"
"Nerd Milan Linderman"
"Nerd Minella Dannemiller"
"Nerd Mose Densmore" []
"Nerd Nigel Denlinger"
"Nerd Nilsa Sanderlin"
"Nerd Noah Hernando" []
"Nerd Noe Nordeen"
"Nerd Noemi Merendino"
"Nerd O'Brian Bernardino" []
"Nerd Oda Denardo" []
"Nerd Ola Leonard" []
"Nerd Oleg Del Negro" []
"Nerd Oma Medrano" []
"Nerd Ozie Derienzo" []
"Nerd Page Pergande"
"Nerd Rae Rearden"
"Nerd Ray Reynard" []
"Nerd Rigel Redlinger"
"Nerd Ro Dorner" []
"Nerd Rob Bordner-Bronder"
"Nerd Roe Orender"
"Nerd Rog Gordner"
"Nerd Rosa Rosander"
"Nerd Rose Renderos" []
"Nerd Sabio Bedrosian"
"Nerd Sage Snedegar" []
"Nerd Sal Landers" []
"Nerd Sam Manders-Ramsden" []
"Nerd Santa Santander"
"Nerd Schinke Hendricksen"
"Nerd Sean Andersen" []
"Nerd Shane Hernandes"
"Nerd Si Risden" []
"Nerd Sloan Erlandson"
"Nerd Soila Leonardis" []
"Nerd Sona Anderson"
"Nerd Su Sudner" []
"Nerd Tahir Reinhardt"
"Nerd Tami Demartin"
"Nerd Tarah Earnhardt" []
"Nerd Tiesha Eisenhardt" []
"Nerd Vi Verdin" []
"Nerd Wei Redwine" []
"Nerd Wilma Wilderman" []
"Nerd Zane Ernandez"
"Nerd Zoe Derenzo"
"Ph. D. Carri Prichard" []
"Ph. D. Coria Pichardo"
"Ph. D. Lorna Randolph"
"Ph. D. Ola Adolph"
"Ph. D. Rees Sheperd"
"Ph. D. Sera Shepard" []
"Ph. D. Shera Shephard"
"Ph. D. Shute Hudspeth"
"Problemist Bo Strimple" []
"Problemist Emil Probst" []
"Prof. Ditch Pitchford"
"Prof. Neal Penaflor"
"Savant Dorn Vanostrand"
"Savant Les Vantassel" []
"Savant Neil Vanalstine"
"Savant Ree Vantrease"
"Savant Sell Vantassell"
"Savant Stein Santistevan"
"Sher 'Bingo' Neighbors" []
"Soren 'Bingo' Bonsignore"
"Tony 'Bingo' Boyington"
"Trella 'Bingo' Bertagnolli"
"Whiz Root Horowitz"
"Whiz Stoker Herskowitz"
"Whiz Tor Horwitz"
"Wiz Amacker Makarewicz"
"Wiz Ament Weitzman"
"Wiz Bolte Lebowitz"
"Wiz Brooks Brozowski"
"Wiz Chester Schweitzer"
"Wiz Earl Walizer"
"Wiz Elswick Wilczewski"
"Wiz Erick Wickizer"
"Wiz Erline Weinzierl"
"Wiz Erma Mierzwa"
"Wiz Ester Sweitzer"
"Wiz Greeson Rosenzweig"
"Wiz Kissel Liszewski"
"Wiz Kissner Wrzesinski"
"Wiz Kraus Zurawski"
"Wiz Reba Wierzba"
"Wiz Ren Winzer"
"Wiz Roth Horwitz" []
"Wiz Ruth Hurwitz"
"Wiz Scheer Schweizer"
"Wiz Ted Dewitz"
"Wonder Geo Greenwood"
"Wonder Sal Rosenwald" []

book oyster

table of aunt tuna chatter [xxy1]
blurb
"asks Tortu why she's tough to hug."
"bangs on some more. If only she were his mother! You could ENTRAP PARENT!"
"begins anti-aint-atin[']."
"bemoans explosive vile poxes."
"bemoans gift-fair graffiti."
"bemoans how people are so babbly or blabby. And don't know the difference."
"bemoans kids hooked on DSL these days." [x]
"bemoans Rich Best saying she and friends should wear britches. Harsh of him."
"bemoans stick-up upticks."
"bemoans the craziest zits care these days."
"bemoans Tortu's pouter's posture."
"calls Mr. O'Steel leer-most."
"can't afford Hi-LCD like the parents of that Dilch child."
"checks her Pred-Derp spray is in her purse."
"claims 'I am sick of hearing Vera's Raves.' She proceeds to babble about Ruth's hurts and serial re-ails."
"claims, at ill-ease, 'I see all! Lea lies!'"
"claims, like a real nut, neutral is un-alert!"
"clucks 'Phases pass, eh?' then 'OK, I scold cool kids.'"
"clucks a few scareful 'carefuls' about the fabled Wholer Howler."
"clucks at what Dustin became." [x]
"confides 'My belief, I'm feebly!'"
"considers starting an evict-civet petition."
"continues groans or nags."
"cries 'Diedre, er... DIED!'"
"cries, 'Gad, sly Gladys!'"
"cries, 'I have a hive!'"
"cries 'Pains! I snap!'"
"cries 'Sheldon called us old hens!'"
"cries 'Slacken, cankles!'"
"decries loud mosh hoodlums."
"details Flo Fink's slink-off."
"discusses a sugared sea-drug that will cause a dinkey kidney."
"explains she can't just go zizap and make Tortu a pizza."
"'Eye-sag? Age? Yes. Gee. Say.'"
"fawns over the Buscher cherubs."
"frets 'Dr. Ace CARED!'"
"frets: 'I smell ills, me!'"
"gives a tut, taut."
"gives unhs. 'Shun huns.'"
"goes back to melodrama, alarm mode."
"has heard bad kids these days snort wasp paws."
"has said before: 'Bernice, be nicer!'"
"heaps scorn on her corns."
"hears parents should hate Napster--it ENTRAPS."
"'Hives on veins, oh!'" []
"'Hobbled bod. Bleh.'"
"hopes she didn't catch fungal nag-flu."
"hopes Tortu can pass the Ax [']Em Exam. Fish schools are so competitive."
"hopes Tortu doesn't become a truant art nut."
"hopes Tortu drinks lots of green tea when he's a teenager."
"hopes Tortu never comes home smelling of caporal crapola."
"is all 'Hormones, eh, morons!' and Tortu is like, 'Oh, sermon.'"
"is glad Tortu daren't visit the Ardent Rat Den. It's been a trend."
"is GLAD Tortu has stayed away from the Rapt Prat Tarp. She has heard rumors."
"is sure the SharkNet Thankers are a bogus charity."
"jokes, with ego/tact, 'Get coat! Tot cage cottage!'"
"knows she's not as un-zen as Suzanne."
"laughs 'So funny of Sunny!'"
"lectures Tortu on the (lack of) nutrition in toast-tatos."
"mentions: 'About me: a bum toe!'"
"mentions a friend who needs a hernial inhaler."
"mentions how more can learn what an author Cameron Mancore is."
"moans 'Bad cons abscond.'"
"moans 'I fear a fire!'"
"moans 'I have told Terrie, RETIRE!'"
"moans 'Malaise ails me. A Malaise!'"
"moans 'Mopy. Dire. My...'" [x]
"moans 'Painful flu! I nap!'"
"moans 'Tendonitis! Distention!'"
"moans for Bed-Lain Belinda."
"mourns 'These times hit esteems.'"
"mumbles 'Dreadful, fad-ruled...'"
"muses, 'Tenser age generates TEENAGERS.'"
"mutters 'Have no oven? Ha!'"
"mutters 'I've eggs, veggies...'"
"mutters 'Slang is sin, gals.'"
"mutters about an insole lesion."
"notes 'Cats ruin curtains!'"
"notes 'So, pigs gossip!'"
"notes 'This ear, it hears. Discretion. Consider it!'"
"notes baking soda makes bad soaking."
"notes it's almost time to watch [i]Wives['] Views[r]."
"notes Shad or Rod Ash hoards so hard."
"notes starch charts for the foods Tortu likes."
"offers PTIs, then tips."
"offers Tortu Astro-Roast for dinner if he learns to be like you."
"praises Tortu's promise so prime!"
"rants: rats in trains."
"reads Tortu the riot act over ricotta."
"recites staler alerts."
"relates what Meredith mithered."
"reminds Tortu to re-read [i]Acin[']: I CAN![r] by Nic A. Cain."
"says 'A C grade is disgrace!'"
"says 'Ahem. Ah, me! Rotten is snottier!'"
"says 'Body fat? Daft boy.'"
"says 'I'd seen Denise denies needs I...'"
"says 'you can't!' Coy aunt!" [p]
"says her gout left her ego hurt but tougher."
"starts a mere nag about Ma Green, which becomes a germane near-gem."
"starts utterin['] nuttier: 'Tut, Erin!'"
"SWEARS men's ego is in their genomes." [p]
"talks about her favorite card game, Spades Passed."
"tells how Tortu once thought a scone was shaped like cones."
"tells Tortu Damp Cay Day Camp is better than scamp-camps."
"tut-tuts things in general with severer reserve than you've seen."
"uncoops a soupcon about coupons."
"warns Tortu 'No party if profanity!'"
"whines forty's frosty and worries about reaching the iffiest fifties."
"wonders why Tortu can't have Edgar's grades and be a hitman in math."
"worries about pliers['] re-slip perils."
"worries about Verne's nerves."
"worries Gro-Vite pills may give Tortu vertigo."
"worries over unstable tan lubes."

table of bar dialogue [xxy2]
blurb
"An abnormal ol['] barman serves up some martini mini-art, and a patron gives an abrupt burp at the pub art."
"'Addie's is dead.'"
"'Ah, Bert? Re-bath breath!' / 'Eh, Bart?'" []
"'Ah, Leo. A hole? Heal, o! Ale, ho!'"
"'Ah, novices! Have coins, anchovies?' ask carps playing craps. 'Parley, player!' / 'Lose, sole, lose!'"
"'Ahab? Baha!'"
"'Alco-cola! Loca!'"
"'Alcohol call! Ooh!'" []
"'Any tip for profanity?'"[]
"'As to a sot, oats!' Worst hangover cure yet."
"'Ashtray?! Ray's hat!'"
"'Bart sucks. His coffee shop, too.'" [x]
"'BastardCo Broadcast sets my system with formulas so [']armful,' moans some paranoid next to you."
"'Bear the beer hat.'" []
"'Beer day: be ready!'"
"'Beer? Gin? Re-binge!'" []
"'Beers! Gin! Bring! See?'"
"'Begin being human? Uh, MAN.'"
"'BEHAVIOR!' / 'Bro, I have!'" []
"'Bettina's ain't best!'" []
"A bogus lardo whines about his blood sugar."
"A bonefish wishes he had the fishbone to talk to that woman across the bar."
"'Boor! Snub Bourbons?'" []
"'Bus stop sots['] pub? [']S sub-opt.'"
"'By darn, brandy!' calls a patron."
"'Champagne, chap? Nag [']em!'"
"'A coke OK, Ace?'"
"'Cost us to cuss? Scouts!' moans a patron."
"'Crikey! Ickyer Rickey!'"
"A customer's leering is turned to reeling."
"'Dan Klum's slam dunk!'" []
"'Dares? ... Arsed? Er, sad.'" []
"Dead Harm Made Hard blasts through the speakers."
"Dolor-drool from a neighboring patron."
"'Don's up pounds.'"
"'Draft?! F-tard.' says a particularly annoying drinker."
"'Drink to Dirk? Not!'"
"'Drinking Gin, Dirk?' / 'I...'"
"Dronier Orderin[']."
"'Each gin nice? Agh!'" []
"'Eh, bars basher? BS, hear?'" []
"'Enos Tam? Mean sot. No mates.'" []
"'Er, [a-b]? A beer?'"
"A factish catfish shows the ladies he's cash-fit, mentioning his Navo-Nova-O-Van."
"'Feel rad, Fred? Ale! Red Leaf Federal!'" []
"Female voices: 'Octo-coot? Friendly nerd? I fly!' / 'Mobs o['] moobs? Sob mo[']!' / 'Her BEAT beer hat!'"
"A fish in a dirty suit yells 'To bar! Abort!' repeatedly in a funny accent."
"Fishmice create mischief."
"'Float to Alf! ... O, flat.'" []
"'Fun bile, bluefin?'"
"'Gee! Brave beverage!'"
"'Gin, Brit? Bring it!'"
"'Gin? Fab. Big fan.'"
"'A gin. I nag.'"
"'Gin, Rob? Big Ron?' / 'Boring.'" []
"'Got any not-gay Tang? Oy!'"
"'Grandi Gin? Rad! Gradin[']: daring!'" []
"A gullible bluegill buys more drinks for ladies out of his league."
"'Had enough?' / 'Uhh...no. Egad!' A honed UGH."
"A halibut continues acting habitual."
"'He dreads redheads. Sadder, eh?'" []
"'Healthy?! Hey! Halt!'"
"'Herb! At the bar!' / 'Eh? ... BART!'" []
"'Herbal? Er, blah.'"
"'Hi, not hit-on?'" []
"'Hot ale to heal? Loathe a lot, eh?'" []
"'Howdy! A kiss? Soda? Whisky?'"
"'Humbler rum? Bleh.'"
"'I LOVES olives!' cries a drunk ordering a martini."
"'I sample a simple lame sip.'" []
"'I'd fry if dry.'"
"'I'll set a li'l seat.'"
"'In no way--ANY--wino!'"
"'IPAs?' / 'A sip.'"
"'Irksome. Smokier.' / 'Sore, Kim?'"
"'Konig gin? OK!'"
"'Latham's malts? Ah!'"
"'Le Bore, Lo-Beer!' someone mumbles."
"'Lo-cal? Us? Callous.'" []
"Lots of drinking around here, but not one kind grin."
"'Low fat? Ow, flat.'" []
"'Man, sick mackins[']!'" []
"Marlins snarl 'I'm...' at pinkos['] ink-ops."
"'Martini! Ram it in!'"
"'Mel's IPA? I sample. Lime sap!'" []
"Menu here doesn't have the safest feasts."
"A mere bore orders more beer."
"'Mid-life file? Dim.'"
"'Mo['] rum, yo!' / 'Your mom!'"
"A moray bemoans Mayor Amory."
"'Mud-bass!' / 'Sad Bums!'"
"Mumblings of unspeakable subsea abuses on Anton, Future Unfortunate."
"'My ale's measly!'"[]
"'My bar, barmy Mabry!'" []
"'My pub's BUMPY'S!'"
"'Nice tan, ancient...'"
"'No grog, gorgon!'" []
"'No vibes? Bovines.'"
"'Nor I'm minor!' yells someone the trolls frisk for IDs." []
"'Oh no! Sick chinooks!'"
"'Oik-Koi! I KO!'"
"'Ok, cry, Rocky.'"
"The ol['] bar labor mistakenly changes a TV to 'A Fish Has Info on Fashion.'"
"'Ole Burt Boulter,' you hear loud-whispered. 'Trouble.'"
"One patron bemoans a hi-tab habit."
"One patron's leering becomes reeling."
"One sip, and someone opines about no pies here."
"Pals slap laps talking about a trip to the Alps."
"'Partner,' says a fish, pre-rant."
"'Patching nightcap?' / 'Natch.' / 'Pig.'"
"A patron heads to the cretin's cistern."
"Patrons compare Buckets Stu Beck, Air Ira, Air Ari and Air Lev's skills at unkind dunkin[']."
"Patrons engage in grudging drugging."
"Patrons migrate as the tune changes to ragtime."
"Patrons snub buns: 'Croissant? No? Racists!'"
"Patrons whisper to bewarre clingfish filchings."
"People discuss the WarpClub Pub Crawl."
"'Phony tee. Neophyte.'"
"'Pink gin, Kingpin?' asks a waitress."
"'Pst! Pal! Need a tough job done? I co-opt octopi!'"
"Rah-rahs and har-hars abound. Drinking games all over."
"A random drinker observes a crouton's contours."
"'Randomly manly, Rod!'"
"A rant by Bryant. 'Ban! Try!'"
"A raw cod yells 'Coward!'"
"'Rec?' / 'Gin.' / 'Cringe.'" []
"A rich sot ostrich praises this hideous id-house."
"A rote bore orders root beer."
"'Rum? Kind. ...I'm drunk!'"
"'Rum shot hurts mo[']? Mush! Rot!'"
"Scorn out. 'Oi! These croutons are corn snot!'"
"'Seven evens? Streak Staker.' ... 'Takers!'"
"A shark harks to a KRASH out of view."
"'Shout, ho? Hush, sot!'"
"'Sip on. POSIN[']!'" []
"'Sips, all?' / 'I'll pass.'"
"'Sit up! Tip us!'"
"'Slim, get gimlets!'"
"'Slow pub blows up!'"
"A smelt melts down over his personal problems."
"A snafu-hit tuna fish babbles and broods."
"'Sneak in Annike's!'"
"Snickers as someone orders Dr. Ice Riced Cider."
"So-Lazy Ol['] Yaz's"
"'Sober up? O, pure BS!'" []
"'Sobriety bites, Roy.'"
"'Soda? Whiskey?' / 'Yikes, shadow!'"
"'Some bar, Ambrose!'" []
"Someone asks if this is a monied-up opium den."
"Someone asks Wendi if she'd like to get wined."
"Someone bemoans some ban. Others sob amen."
"Someone brags about rulin['] a urinal the last twenty minutes."
"Someone explains you can't unpaste peanuts or untape a peanut from a joke bowl."
"Someone expresses a tacit yen that Natty Ice gives Tenacity in this neat city."
"Someone expresses disdain for fashionable abalone fish."
"Someone fails to out-stare a stouter sea trout."
"Someone gets a belchy ale belly ache."
"Someone gets sousier and serious. 'Sure, so I...'"
"Someone kibitzes that XX Ale works like Ex-Lax."
"Someone mentions Dungbury Burgundy is surprisingly tasteful."
"Someone mentions Loki has a kilo."
"Someone mentions Rake Pub is a great place to go to break up."
"Someone orders a bar specialty: Handy's Shandy."
"Someone orders a picante nitecap."
"Someone orders Agin['] Gina a gin."
"Someone orders qualite-tequila."
"Someone orders Umbrella Label Rum."
"Someone refuses to drink Pabst--a tbsp, even."
"Someone remarks this place has so much soul, you can skip Kip's and scram from Marc's."
"Someone saves a bar seat abreast."
"Someone wears plastic catlips as a gag."
"'Sorghum rum? Gosh!'" []
"'Sounds on! Suds!'"
"A sour gent sturgeon mumbles about runt egos."
"Spry male lampreys fish for companionship."
"A squalider real squid walks by."
"A stringy, straying stingray trying as limpest limpets hog the bar."
"A strumpet trumpets pert smut."
"A sturgeon so urgent almost clatters into you. 'Nuts, ogre,' you mumble at it."
"Tales of the dolphins['] spin-hold."
"'Tequila be equitable!' / 'Al, be quiet!'"
"'Tip here, prithee!' / 'Eh, tripe!'"
"'To sip is top!' / 'O, pits!'" []
"'Too drunk! No? OK, turd!'" []
"Tripes show esprit denouncing the ripest spiter."
"The trolls leave people with BYOBs sobby."
"'Um, Ron?' / 'No rum, Munro,' you hear a mourn."
"'Um, sir? ... is rum...?'"
"'Un-flat? Flaunt!'"
"Up-bar, a burp."
"'Up, sport! Support!' a fish yells as he points at the game on TV."
"'Upbeat tea pub? BEAT UP!' yells a patron."
"'Vimto? Vomit.'" []
"You hear a blamer, Mr. Beal, ramble. He's lost a marble."
"You hear a hittin[']-it hint."
"You inch away from a creaky yacker."
"You observe clever flirtation filtration."
"You overhear a train of not fair for/anti ... something."
"You overhear pod things['] dipthongs."
"You see an octopus scoot up and say '[']Sup, coot?' but soon he cops out."
"You watch an unpert punter re-punt."
"'Yuck. Too-Ripe Root Pie. Ucky.'"

table of Casper mumbles [xxy3]
blurb
"[if player is male]Lon Veist[else]Lois Vent[end if], novelist? Vile snot!" []
"Author? Or haut?"
"Bar-Quotes? Art Bosque? Square-bot!" []
"Crates of farces to forecast oft scare. Sore fact. Cost: fear."
"Distraction, sardonic tit? Roast! Indict!"
"Extraordinary intro? Dreary. Ax."
"'Flaubert? Flat rube!'"
"Grey men, my genre."
"I draft, adrift..."
"I Snared a Snider Sardine." []
"Many weigh Hemingway. Enigma: why?"
"Modernism: dim sermon."
"Muser serum...muser serum!"
"My ideas dim easy. I? Mad? Yes!" []
"Not game to nag me!"
"Oy, pert tropey poetry. To pyre!" []
"People's purr: proper pulse? Purple prose!"
"Prosey Osprey Ros Pye? O, pyres!"
"Refuse to wear...evocator overcoat!"
"Rhett Weir, the Writer: Err, Twit, Eh?"
"Rio Demps? Sid Premo? Dim prose, PROMISED!"
"Riveter Town? Woven triter. Overwritten."
"Some poets, pose-smote, emote. SOPS!"
"Speak to a pest? OK." []
"Thoreau? Ah, outre!" []
"Tom Snider? Snot-mired modernist!"
"Undersea, endure as earn dues."
"Vapid prose? Disapprove!"
"Writing. Wring it..." []
"Yep, so-posey Poesy!" []

table of competing bars [xxy4]
blurb
"[a-b]'s Base" [p]
"Absorbing Bingo Bars" []
"Ageless Lesage's" []
"Aimless Ismael's" []
"Ales Dr. Adler's" []
"All-Ales LaSalle's"
"Animistic Caminiti's"
"Anti-Racist Carattini's"
"Arbitrary Rarity Bar"
"Arsenous Rosenau's"
"Artless Slater's"
"As-Foul Fasulo"
"Asserter Terresa's"
"Assured Sauder's"
"Assurer Rauser's"
"Awtrey's Wastery"
"BAL Lab"
"Balfour's Foul Bars"
"Barb-O's Absorb-Sob Bar"
"Bawdier Aid-Brew Wide Bar" []
"Beat-Up Eat-Pub"
"Bent-Up Pub Ten"
"Best-Ever Vets['] Beer"
"Bingo's Hot Gin Booths"
"Bird Ave. Dive Bar"
"Blandisher Hildebran's"
"Blase Abel's"
"Blesser Belser's" []
"Blistering Breitling's"
"Blowers-Breslow Ol['] Brews" []
"Bo Monster-Trombone's"
"Boarded-Up Adored Pub"
"Bod-Surf Buford's"
"Boozing Goon Biz" []
"Brassy Byars's"
"Brit-O's Bistro" []
"Bro Stan Barton's"
"Brownlee's Loners-Web"
"Burnt-Up Runt Pub"
"Busker Burke's"
"Busy Bee Bub Yee's"
"Charmless Chalmers's"
"Charybdis Shady Crib"
"Cheerless Scheeler's"
"Chipster Pitcher's"
"Clawless Caswell's"
"Codi's Disco"
"Converso Conover's"
"Corsair Carrio's"
"Desirer Dreier's"
"Diasporic Dicaprio's"
"Diseur Rudie's"
"Don Lew's Low Dens" []
"Dork Scum Murdock's"
"Dr. Nik's Drinks"
"Drabbish Hibbard's"
"Droogish Hidrogo's"
"Druggiest Gutridge's"
"Drunkest Kundert's" []
"Dweebish Whidbee's"
"Ed Trunk's Drunk Set" []
"Egg-Stink Kent's Gig"
"Egoless Goslee's"
"Elite Snot Leonetti's"
"Elsy Ley's" []
"Embosser Ormsbee's"
"Ersatz Raetz's"
"Escaper Pearce's"
"Ester-Lin Leitner's" []
"Exister Trixee's"
"EZ-Boro Boozer" []
"Feistier Eifert's (it's free)"
"Ferniest Infester Neifert's"
"Fisk [']N Fink's"
"Flask [']N Flanks"
"Foams of Sam"
"Forrest's Fortress"
"Forum of Rum"
"Four-Eyes Rufe Yeo's"
"Garbless Sal Berg's"
"Gekko's OK Kegs"
"Get-Loaded Date Lodge"
"Ghastlier Iglehart's"
"Gigster Tigger's"
"Glassier Sir Gale's"
"A Glug Gulag"
"Go-Dance/No-Cadge Decagon" []
"Goadster Degroat's"
"Gospeler Ploeger's"
"Greasy Yager's"
"Green-Bread Beer Garden"
"Greenbeard's Beer Gardens"
"Gritless Stigler's"
"Harp-Lots Lathrop's"
"Hater Su Huerta's"
"Headless Ales Shed" []
"Headstrong Ned Hartog's"
"Heal-Fast Ale Shaft"
"Hip Castle This Place"
"Hirsute Ruthie's" []
"Hitless Stiehl's"
"Homesick Mike Cho's" []
"Hortense Noether's" []
"In Shark Harkin's" []
"Ineptest Spinette Pettine's"
"Insaner Narine's"
"Investor Trevino's" []
"Islander Erlinda's" []
"Kate's All-Ale Stalk"
"Kay Pease's Speakeasy"
"Ken's Ribald Drinkables"
"Kick-[a-word-u] Kasick's"
"Lawless Sal Lew's" []
"LeBarron's Loners Bar"
"Leia's Aisle" []
"Leo Oden's Loose Den"
"Less-Down Denslow's"
"Lianne's Ales Inn" []
"Lisbeth Blithe's"
"Listener Leitner's" []
"Local Pub Club Opal"
"Loosener Leonore's"
"Loser [']N Loners" []
"Lossmaker Marsolek's"
"Lost Ray Taylor's" []
"Luscious Lucious's"
"Machineless Michaelsen's"
"Mad Swine Weidman's" []
"Matchless Stelmach's"
"May-Lu's Asylum" []
"Meanest Mateen's"
"Measlier Marilee's"
"Mechanist Teichman's"
"Mega-Star Magaret's"
"Minstrel Miltner's" []
"Mintiest Minetti's"
"Miscast Stimac's"
"Miscreant Martinec's" []
"Miscreator Cromartie's"
"Misdealt Matilde's" []
"Misleader Edelmira's"
"Monstrous Snoot-Rums" []
"Moraliser Lairmore's"
"More-Posy Pomeroy's" []
"Mr. Leto's Merlots"
"Ms. Mae-Emma's"
"Ms. Too-Moot's"
"Ms. Top-Con Compton's" []
"Neatest Anette's"
"Newsman Newnam's"
"No-Brats Barton's" []
"No-Class Con Sal's" []
"No-Sides Edison's"
"Nyssa Snay's"
"Oafs['] Sofa" []
"Ole Sot Toole's"
"Once-Sly Conley's"
"Outscorning Courington's"
"Over-sad, Savored Devora's" []
"A Palest Palate's Ale Taps"
"Party'n Pantry"
"Pat Ching's Nightcaps"
"Pet Bear Beer Tap"
"Pissy Ev Spivey's"
"Plastic Cal's Pit"
"Pleasant Pal [n-t]'s" []
"Plenished Delphine's"
"Po['] Blue Ole Pub-Pueblo"
"Politest Pistolet Pilotte's"
"Pollster Portell's"
"Poor-Fish Ship-Roof"
"Porthos Throop's"
"Presidio DiPiero's"
"Pressing Persing's" []
"Primrosed Pridmore's"
"Prisoner Perrino's"
"Pristine Petrini's"
"Prosier Pierro's"
"Prostrate Perrotta's"
"Prostrate Porretta's" []
"Psoriatic Patricio's"
"Pukinest Punk Site"
"Punk-Rid Drink-Up"
"Push-Back Shack-Pub" []
"Quail or a Liquor"
"Quisling Gil Quin's"
"Rainbow Wino Bar" []
"Rammel's Slammer" []
"Rank Scab Snack Bar"
"Rank-Vibes Kevin's Bar"
"Rash Low Warhol's"
"Rasta-Tara's" []
"Really All Rye"
"Reese [']N Renee's" []
"Reinsman Riemann's"
"Reposed Deposer Peredo's"
"Reposer Roeper's"
"Resighted Ethridge's"
"Resigner Greiner's"
"Resister Reisert's"
"Rey's Ryes"
"Risky Ol['] Kilroy's"
"Roadster Rodarte's"
"Rolf-o's Floors" []
"Rookish Hiroko's"
"Roseline-Elinore's"
"Rosy Roy's"
"Rum-Hit Rim-Hut"
"Sad Joker Dark Joe's Soda Jerk"
"Sad Lifer Elfrida's"
"Sad Ol['] Aldo's" []
"Sad Tony Dayton's" []
"Safe Fae's"
"Sandy, Sy and Andy's" []
"Santosh Ashton's"
"Sartorian Orrantia's"
"Satanical Catalina's"
"Savvier Viv Rea's"
"Scumlike Mikulec's"
"Sea Hog Hoage's"
"Sea Hound Donahue's"
"Secluded Lee Cudd's" []
"Senhor Rhone's" []
"Sensist Stiens's"
"Sentry Teryn's"
"Seraphim Ephraim's"
"Sharon Horan's" []
"Sheer Rhee's"
"Shelterin['] Hertline's"
"Shemeka Hakeem's"
"Sherell Heller's"
"Sherron Horner's"
"Shirley Hilyer's"
"Shogun Huong's" []
"Sing-Bad Big Dan's"
"Sir Ban-Brain's Sin Bar" []
"Sir Fink Firkins" []
"Sizable Bazile's"
"Sketchy Ty Heck's"
"Sky Cub Bucky's"
"Sleepy Epley's" []
"Slouching Coughlin's"
"Sloven Levon's" []
"Slumbery Brumley's"
"Slummer Rummel's"
"Sly Cur Curly's"
"Sly PUA Pauly's"
"Smacker Cermak's"
"Sneak Kane's" []
"Sneakish Kenisha's"
"Sneako O'Kane's"
"Sneerful Feulner's"
"Snide Maw Wideman's" []
"Sniggerer Geringer's"
"Sniveler Verline's" []
"Sniveller Renville's"
"Snob Cal Blanco's"
"Snobbish Bob Shin's"
"Snobbish Hobbins's" []
"Snootier Tenorio's" []
"Snore-Bar So Barren"
"Snouty Yount's"
"So-Bubbly Sub-Lobby"
"So-Golden Len Good's" []
"So-Manic Mo Cain's" []
"So-Mental Almonte's" []
"Sobered DeBoer's"
"Sodaless Salsedo's"
"Soggier Georgi's" []
"Soggier Reggio's" []
"Solano's Saloons" []
"Soloist Losito's"
"Soulful Foul Lu's"
"Souser Rouse's" []
"Sparkiest Petrakis's"
"Spatulate Pauletta's"
"Spleeny Penley's"
"Sportin['] Ripton's"
"Squinty Ty Quin's" []
"Starchier Reichart's" []
"Steely Ty Lee's"
"Stonemason Montesano's"
"Stoner Treon's" []
"Stringy Ty Ring's"
"Sweating Wingate's"
"Swindler Drew Lin's"
"Sy and Andy's" []
"Synergist Ty Singer's"
"T'Niche Ethnic"
"Tarnisher Reinhart's"
"Tarnisher Rinehart's" []
"Tay's Stay-a-Sty" []
"Tetanising Giannetti's"
"Thawiest Thwaite's" []
"Timeless Steimel's" []
"Timothy's Hot Misty Mo-Hit Sty"
"Trappist Tart Pip's"
"Trash Man Rathman's"
"Trasher Erhart's"
"Tropical Coral Pit"
"Ty Han's Shanty"
"Ty's Sty"
"Un-Slick Culkin's"
"Un-Smart Truman's"
"Unscarred Durrance's"
"Unscrambled Cumberland's" []
"Unsocial Lou Cain's" []
"Unsocial Luciano's" []
"Unsporting Purington's"
"Uptight Thug Pit"
"Us-R-Lo-IQ Liquors"
"Wan Gin Awning"
"Wardless Sal Drew's"
"Wastin['] Tawni's"
"Wastrel Art Lew's" []
"Webster's Brew Sets"
"Wild Gus Ludwig's"
"Will's Swill"
"Woodbine Wino [']Bode"
"Worthless Elsworth's" []
"Yer Rye"
"Zestful Zufelt's"

table of fish fries [xxy5]
blurb
"'Ain't Fly, Faintly!'"
"'Bad short trash-bod!'"
"'Baited, eh?' / 'I...' / 'Be hated!'"
"'Barfy? By far!'"
"'Bed-wetter! We'd better...'"
"'Bilger Gerbil!'"
"'Boogery ogre-boy!'"
"'Booky boy? KO!'"
"A brief hoodlums['] sumo hold."
"The bulles begin apin['] pain."
"'Cheapos so cheap!' the trout splutters."
"'Crowd-a-coward, crowd-a-coward!' they chant."
"'Crumby bum! Cry!'"
"'Cry mum? Crummy!'"
"A cultural joke that goes over your head. 'Wit at a twit!'"
"'Curse, eh? Cheer us!'"
"'Darkling Lard King!'"
"'Don't dare, toad-nerd!'" []
"'Don't EVER vote, nerd!'"
"'Dood? Odd-o dodo!'"
"'Dull boy? Bully! Do!'"
"'Faky bore! Freak boy!'"
"Fashion tips: 'FILA? Fail!'"
"'FFS, joker!' they cry, trying to bait the trout into a profanity." [x]
"'Fit? STFU! Stuff it!'"
"'Flat-out fat lout! Feca-face! A tool? Total!'"
"'Frowsy sow-fry!'"
"'Fruity!' / 'F U I try!'"
"'A gassy gay-[a-word]!'"
"'Go, ya gayo! Hate a het, frilly lil['] fry!'"
"The goonies threaten noogies."
"'Hesitant hate snit?' they ask, as he gets mad."
"'Him, spry? Shrimpy. Prim. Shy.'"
"The hoods call him a doosh for his spelling skills."
"'Hurtins! His turn!'"
"'Hyurr! Hurry!'"
"'I mean, anime?!'" []
"'I...' / 'Psh, Mr. Shrimp.'"
"'Jerkos? Jokers!' they laugh."
"'Jerks? J/k-ers!'"
"'Le gawkin['] Weakling!'"
"'A lil['] dork! Roadkill!'"
"Lip blast. Spitball."
"'Loner. So?' / 'No! Loser!'"
"Luls by bullys."
"'Math nerd!' Darn them." []
"Mean name. Meaner re-name."
"More unstating tauntings."
"'Mr. Not-a-Matron!'"
"Naif pun. Pain. 'Fun!'"
"'A nerd! Read'n!'" []
"'Nice clothes. Dorkiest-Kid Store?'"
"'Nickname, Manic Ken?' / 'Acne Mink!'"
"'No, lard-[a-word]. No rad lass.'"
"'No rad lass, lardass!'"
"'Notorious? No. Riotous!'"
"One hints 'Ugly! Unsightly!' Rash rahs."
"'Oo! Hm! Homo!'"
"'Out of...? Oo, tuf!'"
"'Pals?! Pals.' ... SLAP!"
"'Pathetic? Teach-tip.'" []
"'Phew, Tim! The wimp wept, him!'"
"'Pinko!' Pokin[']. POINK!" []
"'P.O.[']ed? Dope!'"
"'Popeyed dope! Yep!'"
"'Punch a paunch!'"
"'Punishment! Nine thumps!'"
"'Queen or queer?' / 'NO!'"
"'Rad! KO a dork!' they yell."
"'Re-bait, baiter!' they encourage each other."
"'Reblubber, blubberer!' Crude but sadly effective."
"'Retort us? Tortures!'"
"'Rid ya diary!' they yell."
"'School's cool? Ssh.'"
"A sestet compares part of him to a tsetse."
"'Shabby Baby, Sh!'"
"Shameful, uh, flames."
"'Shouldn't stun hold...' says the trout."
"'Simp!' -- the imps."
"Skeletal eels talk."
"'Smallest! Let's slam!'"
"Sneeriest interesse."
"Snot-laugh onslaught."
"'So daft, da soft fat sod!'"
"'Soap a sop!' they cry, holding their noses at him."
"Someone slaps a Trip-Me Permit on the trout's back."
"'Sore lad! Real sod!' Then, reloads."
"'Spy Us?'" [x]
"'Swarthy, shy wart!'"
"Taunting-attuning." []
"'Tawt!'" [x]
"Their um nots drive him mo['] nuts."
"They accuse him of befriending the big dork Borg kid."
"They accuse him of enjoying Classwork Crosswalk."
"They accuse him of sham ills over a smallish li'l smash."
"They accuse him of talking in queer-[a-word] squarese."
"They are all, you got hit with the acne cane."
"They ask if he's friends with I-Fap Piaf."
"They bait a bit. 'Bullies? Us? Libel! Li'l [']buse!'"
"They begin assessing gassiness."
"They call him a ploated tadpole."
"They call him a schnook. No shock."
"They call him fragile, e.g. frail."
"They claim he knows the Vlasic Slavic Cavils."
"They claim his Aunt Tuna smother-mothers him."
"They claim they're cop kin so they can pick on him."
"They compare him to Ed Chou." [x]
"They compare him to Nerd-[a-word-u] Sanders."
"They develop senso-noses. 'Fart? I? No! Not fair!'"
"They dub him a hokey worm, homeworky."
"They fake-offer him some Renegade Green-Ade."
"They get abusive since he's not wearing IB Suave or USA-Vibe clothes."
"They go haw-haw, making the trout go wah-wah."
"They insinuate he actually likes the school cafeteria's Sorta-Ratso-Roast."
"They keep ganging and nagging."
"They keep him taunted-attuned."
"They knock him down. Then an abrupt 'Up, brat!'"
"They label him naifer and fainer than Fearin['] Efrain."
"They lob BS, calling him one of the slobb-blobs."
"They make fun of him being in the scholar chorals."
"They mention someone's not following Cool-Sport Protocols."
"They mock his computer game Fowl, Wolf, Lowf (lowfat loaf) across the Flow."
"They mock his unsamer surname."
"They note crud-curd in his nose. Or lunchbag."
"They note how scared he is of Nerd-Kick Kendrick."
"They offer a trip to the Dork-KO Dr."
"They put the nice-o on ice."
"They rattle 'Ratlet! Tatler!'"
"They repeat an anti-dork joke from popular comedian Kid C." [x]
"They say another mean name."
"They say he should have a bag hide his big head!"
"They say he's almost as cool as Grody Gordy."
"They say his aunt Tuna is a nut. He agrees but they say 'A rebel? Be real!'"
"They spray him with invisible fake Leper-Repel."
"They start tskin his knits, his stink."
"They treat the lil['] guy uglily."
"'The toad-head tot!'"
"Tons-loud 'Told on us, lout?' Nods."
"'Too-fat oaf tot!'"
"'Tool-guy! Too ugly!'"
"'A trout? Out, rat!'"
"'Trout? Ur-tot!'"
"'Un-erotic! Neurotic!'"
"'Ur-tyke! Turkey!'"
"'We don't care, coward teen! React? Owned!'"
"'We're in tune, weenie runt!'"
"'Weakling! Like Wang!'" []
"'Whip us, mac? Such a wimp!'"
"'Why not sedate when teased?'"
"'Woe-rid, weirdo? Dire!' / 'Ow!'" []
"'Wotta twat-o!'"
"'Yob-boy!'"
"'Yon kid's so dinky!'"
"'You have friends? Nerds, if...'"

table of theses [xxy6]
blurb
"Alert, clown: we can troll!"
"All We Do: ALLOWED!" []
"ARM! RAM! MAR!"
"AUNT TUNA (an unflattering picture, captioned weight: A TUN)" [p]
"Aw, a creep: peace? WAR!"
"Aye for year of fear, yo!"
"Bad ones['] ASBO Den!" []
"Bad Rule = DURABLE!"
"Baseline: lies, bane!"
"Be [']wared! We're bad!"
"Be Horrid? Hired, Bro"
"Be rotten, no better!"
"Being mean? Binge! Amen!"
"But yeah, buy hate!" []
"Comply with my low pitch!"
"Conk them, then mock!"
"Consider nicer? SOD!" []
"Defense? Send fee!"
"Deny Thee the Needy!"
"Depants pedants!"
"Disputer-prude, SIT!" []
"Do bilge? Bile, dog? Obliged!"
"Do not REVIAL ELVIRA!"
"A doc's god good acts? Gad, scoot!"
"Dorks['] Way: Workdays!"
"Down with the Snuf-Funs league!"
"Drub oafs bad for us!"
"Drugs are rad urges!"
"Erudite? True? DIE!"
"Ethics are tire-aches. Scathe! Ire!"
"Exclusivest vices? Exults!"
"A fairy? We fire away!"
"Fear the un-hater, not the haunter!"
"Fib, stump, BUMP FIST!"
"Fie, toss softies!"
"Front us? Snort! F U!"
"Glock-rid? Gridlock!" []
"Go nuclear, rogue clan!"
"Golden Rule? Olden gruel gone duller! On, Greed (LUL)!"
"Good faith? Goof had it!" []
"Grundies? Ding! Sure!"
"Here, bad be heard!"
"Ho, conks? No shock!"
"Huge want? Wage hunt? A new thug!"
"'I donate?' DIE! A TON!" []
"I put down to wind up."
"I support riots, pup."
"Ill tempers melt perils!"
"Inspire sin: I rep!"
"It's our time! Merit is out!"
"Kids, rebel! Risk! Bleed!"
"Kindness-sinks? END!"
"Know math? WHAM! TONK!"
"Lawfulness? Fallen wuss!"
"Legalize the Noisier ioniser!"
"The libe BELIETH!"
"Listen to the Cad-Spot Podcast!"
"Loud music: um, so lucid!"
"Lout, never volunteer!"
"Maim loser memorials!"
"Mercy? KO! Mockery!"
"Mocked? Deck mo[']!" []
"Moralz? LAMZOR!!!!" []
"Nag thou not a gun-oath."
"Nicer? Got to cringe!"
"No group gun-poor!"
"No guts? To guns!" []
"Not crude? TROUNCED!"
"Note Amply: Meany Plot on my Plate."
"Novices? Vie, cons!"
"Obliterate to Liberate!"
"Oh, mean's no shame." []
"Only nuts hear haunters!"
"Oppression? Props! Noise!" []
"OUR DESTINY: IT'S YOUR END!"
"Our life: foul ire!"
"Our snivel unveils our revulsion!"
"Our Trip: Con to Incur Corruption."
"Our way: YOU! WAR!"
"Overthink, ho? Vent! Irk!"
"Permit venom? IMPROVEMENT!"
"Prudes? Us? Derp!"
"Pun, hi? Un-hip!"
"Requests for a Hologram Harm Logo."
"Ron's Den = NO NERDS!"
"Ruffian Funfair coming soon!"
"Saint? No! Sin a ton!"
"Save foul values of love? Us? FA!"
"Shame only holy names!"
"Shut off stuff, ho!" []
"Sir, hate hastier!" []
"So, all get tall egos!" []
"So glum? Slug mo[']!" []
"So, grift? Go first!" []
"Soured? Sure, do so rude. Us: redo!" []
"St. Hug-Thugs!!!"
"Super nice? I pen curse!"
"Support Lout-Set Outlets!"
"Terrorise, roisterer!"
"Think free? THERE, fink!"
"THUD! Fear the fraud, Utah Fred."
"Thud-Prime TRIUMPHED!"
"Thug row? WROUGHT!"
"THUNDER! DETH! RUN!" []
"To envy: yo, vent!"
"Trash pays. Stay sharp, rash patsy!"
"Turn away a wary nut!"
"Upright? HUT, prig!" []
"Us? Base? [']S Abuse!"
"Values? Pah! Upheavals!"
"Violence once. LIVE!" []
"Virtuous? OUT, VIRUS!"
"We hate thee? Aw!"
"We must FIND GUN FUNDING!"
"We post to spew!"
"We Roll Orwell!"
"We toast to waste!" []
"Welcome Mervin's Vermins!"
"Your ideas? Aye, I'd sour."

table of tuna gossip [xxy7]
blurb
"'Annie's insane.'" []
"'Arlette's alertest.'"
"'As to Phil? Hospital!'" []
"Aunt Tuna notes Trina's starin['] strain."
"'Beware Reba. Ew!'" []
"'Birdie? I be rid!'"
"'Cary's scary. Carrie's scarier.'"
"'Catherine's inert aches...'"
"Cathie's achiest."
"'Charmaine? A mean, rich maniac, her!'"
"Cornelia's censorial!" []
"'Demean MANDEE?!'"
"'Dodo's so odd.'" []
"'Doloris's Lordosis...'"
"'Dopy Lora. Poor lady!'"
"'Doreen? Redone.'"
"'Elma is a slime.'" []
"'Elyisa Easily lies, ay.'" []
"'Ilene's senile.'"
"'Kari, she...' a shriek."
"'Karine's snakier.'"
"'Lilith's THIS ill.'"
"'Lilo's so ill.'"
"'Lily's silly.'"
"'Lisa ails!'" []
"'Lise LIES!'" []
"'Maurine's aneurism.'" []
"'Morty's stormy.'"
"'Ms. Elia is lame.'" []
"'Nellie's seen ill.'"
"'Newton went on, not new!'"
"'Oswald was...old.'"
"'Patricia's parasitic.'"
"'Perry's spryer.'"
"'Phyllis? Shy? PILL.'"
"'Prissy is spry.'"
"'Risk Irks Kris.'"
"'Rita, Trish...ARTHRITIS!'"
"'Sammi, a miasma.'"
"'Stacy? A cyst!'"
"'Tania's a saint!'" []
"'There's Hester...' then discusses Evelyn evenly."
"'Thresa's Rashest.'"
"'Tiffy? Fifty.'"
"'Tonya's a stony nasty-o!'"
"'Traci's racist. Crista...'"
"'Treena? Renate, Neater!'"
"'Trina's strain...'" []
"'Trista is tart.'" []
"'Trudy's sturdy.'" []
"'Vi's beau: abusive!'"

table of unpopular girls [xxy8]
blurb
"Achier Charie"
"Acrid Darci Icard"
"Aeriest Teresia"
"Agit-Gita"
"Ailin['] Liani"
"Aimless Melissa"
"Alien Aline" []
"All-Sad Dallas"
"Alpo Opal"
"Anti-Car Catrina"
"Antlike Katelin" []
"Arf'n Fran"
"Babyish Shy Abbi" []
"Blandie Belinda" []
"Borin['] Robin"
"Brained Brandie"
"Canine Nancie"
"Carrion Corrina"
"Catarhine Catherina"
"Creative Traci-Eve" []
"Dandruff Fran Fudd"
"Dazed Zedda"
"Dire Deri Reid" []
"Dull-Airs Drusilla"
"Eat'n Tena" []
"Edema Medea"
"Foliate Teofila"
"[']Fraid Frida"
"Gila Gail"
"Greenish Sherie Ng"
"Haglike Kaleigh"
"Hair-Taken Katharine"
"Hater-Clot Charlotte" []
"Hater Retha"
"Hazard Zardah"
"Hesitant Tina Tesh"
"Hi-Fat Faith"
"Hiss-Cry Chrissy"
"Ickier Rickie"
"Irker Kerri"
"Iron Roni Niro"
"Jello-y Joelly"
"Just-a-Nerd Jean Durst"
"Kate Chow the Wacko"
"Kooky Kyoko"
"Lame Elma"
"Lanky Kalyn"
"Lardo Dorla" []
"Lazy Lyza"
"Leadenly Danyelle"
"Leaky Kaley LaKey"
"Leaky Keyla"
"Liar-[a-word-u] Larissa"
"Loamier Malorie"
"Look-Like-Kook Elli"
"Machine Ami Chen" []
"Mailless Mellissa"
"Manky Mynka"
"Martian Martina"
"Meager Margee" []
"Mealier Marilee"
"Meerkat Tremeka"
"Menacer Marcene"
"Menial Melani" []
"Middler Mildred"
"Minge-O Imogen"
"Narker Karren"
"NASA Math Samantha"
"No-Lays Alyson" []
"Odorate Teodora"
"OK Bore Brooke" []
"Oozey Zooey"
"Piggee Peggie"
"Pop-Eyed Edy Pope" []
"Rabid Darbi" []
"Ranker Karren" []
"Reekin['] Kerein"
"Reeky Kerey"
"Remedial Edelmira" []
"Scarfin['] Francis" []
"Shriller Sherrill"
"Shy-or-Horsy Rosy H"
"Snitchier Christine" []
"So-Scary Coryssa"
"Stare-e Teresa" []
"Stenchier Christene"
"Stinkier Kristine"
"Striky Kristy"
"Tackier Katrice"
"Tankier Katerin"
"Thyroid Dorithy" []
"Tiring Ingrit"
"Too-Flat Loo Taft"
"Too-Weak Kate Woo"
"Too-Weird Teri Wood"
"Trudger Gertrud"
"Turdy Trudy" []
"Unpopular Luan Roupp"
"Unsocial Nicola-Su" []
"Unstable Luna Best" []
"Viral Avril Vilar"
"Yellowish Holly Wise"

book towers

table of gizmo parts [xxw1]
blurb
"a-parted data pre-adapter"
"all-portion pollinator"
"anti-slam talisman"
"Anytime Amenity"
"balanced lace band"
"Barnacle Balancer"
"be-luck buckle"
"bend-or-bonder"
"Boasty-say bot"
"bores-glow snowglobe"
"Boulder Doubler" []
"brindle blinder" []
"bus-pack backups" []
"cel-scan-cancels ace-lens"
"Centroidal Declinator"
"Clasper Placers" []
"clutters scuttler"
"coolant loot-can" []
"CoreOps Scooper"
"Corpsman crampons"
"crackle-clacker"
"dispose-podsies"
"drinkable-bread kiln"
"dry earth hydrater"
"eat-mech machete" []
"Electro-Corelet" []
"epic taints-antiseptic"
"an epulotic poultice"
"errantries restrainer"
"flatiron inflator"
"fragile leaf rig" []
"fur/flesh shuffler"
"Gilleran's Allergins Signaller"
"Grainless Glariness Signalers"
"harmonic ion charm" []
"hi-frets shifter"
"hi-scan chains" []
"hostler holster"
"increm-mincer" []
"Informed-Mo['] Finder" []
"Infra-Depth Pathfinder"
"InReal Linear-Aliner" []
"Knitter Trinket"
"lapsed pedals"
"law awl"
"linear nailer"
"Liters Lister"
"Lo-perish polisher"
"loot tool"
"low-speed seed plow"
"lower-price power-relic"
"masker-makers"
"mod-me modem" []
"Obtrusive Turbo-Vise" []
"panic-leap appliance"
"Parsley Splayer" []
"passive sap-vise"
"Pecs-Spec"
"petroleums pulsometer"
"Pilers['] Pliers"
"pinnacled candlepin"
"Plastic Scalp-It" []
"platinum lamp-unit"
"porcelain ion placer" []
"posterior repositor"
"pre-war warper"
"precise-op periscope"
"Prickle Pickler"
"productive crude pivot"
"pulsing plug-ins"
"quit-errs squirter"
"Rasped Spader"
"raw-prep wrapper"
"reboots-booster"
"Relics Slicer"
"Replica Caliper"
"rheums-musher"
"rhodium humidor"
"Risk-Tec Sci-Trek sticker"
"roster sorter-storer"
"Rusted Duster"
"sapper-papers"
"scalder cradles"
"sectoral locaters"
"silence ice-lens"
"sleeper-peelers" []
"solid-grasp'n load springs"
"spherical share-clip"
"splatter-platters"
"strap-parts"
"surface-car fuse"
"Synchro-chyrons"
"synthetic tiny chest"
"Tech-Art Ratchet" []
"TeksCorp Sprocket"
"temperate tape meter"
"Test-Case Cassette"
"tetramers smatterer"
"too-small salt-loom"
"Torque Quoter"
"trendi-tinder"
"Trifle Lifter"
"twistable waistbelt"
"unplumed pendulum"
"wee stark tweakers"
"winged new dig"
"wrest-it twister"

table of rodney bluster [xxw2]
blurb
"being better and more focused without Clowny Colwyn"
"being in better shape than Bloater Alberto"
"being Le Bad Blade"
"being less demoralizing than Jader Jared"
"being ruthless like Levelin['] Neville"
"being team players like Nobler LeBron"
"doing far better than Dreg Gerd"
"emulating Clasher Charles"
"everyone being a little stouter than Frail Ralfi"
"everyone being more attentive than Lax Axl"
"exhorts his team to be more together than Envier Vernie"
"following the leadership lessons of Steerin['] Steiner"
"getting grittier than Vain Ivan"
"the guy who called him one dry nerd, yo"
"having more discipline than Beerin['] Bernie"
"having more of a clue than Mess-it-Up Septimus"
"keeping sharp unlike Mangier Germain"
"needing to go all Cursy Cyrus on everyone here"
"nobody escaping through a fuel flue"
"nobody getting all 'Do fly' like Foldy Floyd" [p]
"not backstabbing like Rodent Dontre"
"not being Ronins like Snorin['] Sir Ron"
"not demotivating the team like Jader Jared"
"not getting Flayer Farley"
"not mouthing off like Crowin['] Corwin"
"not needing the bulk of Frigate Freitag"
"not stepping out of line like Fool Olof"
"paying more attention than Zonked Zdenko"
"regrets not mandating haircuts like Sheared Rasheed"
"remembering the example of Labor-y Baylor"
"roars they want to stand tall, but not space out like Inert Terin"
"running a tighter ship than Froody Fyodor"
"says it'd be good to be half as brave as Afar Rafa."
"showing the work ethic of No-Flair Florian"
"standing straight like Larchey Charley"
"standing stronger than [']Fraid Farid"
"staying violent unlike Fair Rafi"
"sticking to a regimen unlike Fried Fredi"
"weirdos and rowdies"
"windbags and their big wands swing bad"

book otters

table of animal friends [xxt1]
blurb
"acid-snarl cardinals"
"an agreeable bear-eagle"
"an ambient mine-bat"
"ants of no fats"
"asbo-boas" []
"ashen-pelt elephants"
"aweless weasels"
"a beer-gut tree-bug"
"bold-slug bulldogs"
"a brave ace cave bear"
"bugs of sub-fog"
"a chained echidna"
"the chase cheetahs"
"a chorist ostrich"
"chump-sink chipmunks"
"clans of falcons"
"clingiest sting-lice"
"a condor cordon"
"a cotton coon cat"
"a count-toucan"
"a croon-shire rhinoceros"
"crop-ants ([crap]-tons)"
"delta-ops tadpoles"
"dimming-shrub hummingbirds"
"a dominate nematoid"
"a dry enough young herd greyhound"
"a dull-bog bulldog"
"a dyed-armor dromedary"
"end-o[']-sky donkeys" []
"enshrouded deerhounds"
"an ent real eternal"
"epic-nested centipedes"
"a fabled xeno-oxen"
"a fury-flit fruit fly"
"a giant tiang"
"glad busy ladybugs"
"glint-show sloth-wing night owls"
"a gloating goatling"
"go-quash quahogs"
"a go-sure grouse"
"green-forest-gone ferrets"
"a greet-egret"
"headstrong gnat hordes" []
"a hero-within white rhino"
"hip [']n old dolphin"
"a hoedown woodhen"
"horse-flies so fleshier"
"horsin['] rhinos (horns shorn)"
"a husky shy auk"
"a hybrid haybird"
"a hypnot-python"
"icier-horn rhinoceri"
"an in-place pelican"
"a lakeside-dike seal"
"a lawmonger angleworm"
"a legate-eaglet"
"life-medic field mice"
"a lightning thing-a-ling"
"a linoleum mule-lion"
"a locust, talcous"
"a log-lair gorilla"
"a lone-rook onlooker"
"a marbled red lamb"
"marrowish hairworms"
"a master-mo['] marmoset"
"mo['] smart marmots"
"a mugwort gut-worm"
"mush-den mudhens"
"next-door-trod oxen" []
"a night owl with long thin glow"
"a nip-hold dolphin"
"nosher herons" []
"not-asleep antelopes"
"a noticed ctenoid"
"now-starker worker ants"
"an ok-mood komodo"
"an old-timer dirt mole"
"oscheal-ol[']-aches loaches"
"an osculatory cotylosaur"
"painless spaniels"
"pal-comrades camelopards"
"a pencil pelican" []
"a pest-made stampede"
"a pholdin['] dolphin"
"pig-nose pigeons"
"popish hippos"
"a pretty cold pterodactyl"
"a previously lousy viper" []
"a pro-wars sparrow"
"a pumpkin mink-pup"
"a pun copier porcupine"
"Quasimodo, a moo-squid"
"a rad-buzz buzzard"
"re-denier reindeer"
"real-wuss walruses"
"a retirer terrier"
"a riffage giraffe"
"a rip-pounce porcupine"
"rooster toreros"
"roostiest tortoises" []
"a rough ur-hog"
"rust-hen hunters" [p]
"a salty pup platypus"
"scolding codlings"
"score-uppin['] porcupines"
"a screwball swell crab"
"a sea urchin sure chain"
"a shellack-clash elk"
"a shrived dervish"
"shy bird hybrids"
"side-armored dromedaries"
"sledging geldings"
"a slim work silkworm"
"a sloggin['] gosling"
"a slowly-sly owl"
"smear-mares" []
"smooth-o-moths" []
"a sneak snake"
"snug pine penguins"
"solo-ire orioles"
"some goon mongoose"
"some goon's mongoose"
"spar-it tapirs"
"stag-o-goats"
"a stag tags"
"stalker rat-elks"
"stalling li'l gnats" []
"star-bib rabbits"
"startler rattlers"
"strategic tiger-cats"
"stulter-turtles"
"a sure-doom dormouse"
"a swollen-lens owl"
"a T-Rex extra-taxer"
"a ten-pieced centipede"
"a tender red ent"
"testudo-duettos" []
"torties so trite" []
"Toto [']n Tonto"
"a trailing ringtail"
"trash-pen panthers"
"a trek-worn worker ant"
"a trendo-rodent and his followers"
"true-sky turkeys"
"tuskier turkies"
"an ugly-win wily gnu"
"an un-tame tan emu"
"a very odd dry dove"
"a vestigal live stag"
"a workload woodlark"
"yearlings, er, slaying searingly"
"a yonked donkey"
"zeal-legs gazelles"
"a zz-more mozzer"

table of Elmer and Merle squabbles [xxt2]
blurb
"[e-m] berates Cauled Claude's magic ability."
"[e-m] berates laymen meanly, namely, Mel Yan."
"[e-m] berates lesser citadels['] dialects."
"[e-m] blabs about the top-secret Infrared Dna Frier at the Nerd Fair."
"[e-m] cackles, 'Son, mini-minions,' before his friend quiets him."
"[e-m] chafes at his exclusion from counsel XI."
"[e-m] claims they're top-stair patriots, not some po['] artist with a riot past."
"[e-m] details more POS ops, like a sop."
"[e-m] gets all 'Is she evil? Is she vile?! She is live!'"
"[e-m] mentions he once liked polarimetry. Temporarily."
"[e-m] mumbles 'Tailor my morality.'"
"[e-m] pours a box of false fleas down his friend's back."
"[e-m] says, 'Add iron: android!'"
"[e-m] says something and his pal says 'Exactly!' No response to that."
"[e-m] snaps his fingers. 'Er, Lem? ... Er, Mel?'"
"[e-m] starts lawyering wearily about how bad is good and good is bad, so he's right when he's wrong--or when he's right."
"[e-m] starts up some fudgein['] feuding."
"[e-m] tries and fails at castin['] antics."
"[e-m] whisper reverentially about the Lab-Gen Bengal Elvira's creating."
"'Ego, twit? We got it!'"
"'My tic's MYSTIC!' [e-m] lashes back at his companion."
"'Stormy [if player is female]Toys, Mr.[else]Toy, Mrs.[end if]' says [e-m], looking at your inventory."
"Talk stops. Morose Mooers wait for their Romeos, getting mo['] sore then moreso."
"'You [d-word]ed... you demand, you madden,' says [e-m]."

table of Elvira battle cries [xxt3]
blurb
"Arr, aww! Raw war"
"A belting, tangible" []
"Blotted. Bottled"
"Dead poser! Desperado"
"Defame me? FADE! Mad fee"
"A dirty aid try" []
"Drat. Seem mastered" []
"Drubbing! Burn'd big"
"A duress, assured! Rude [a-word]"
"Extend furies? Six feet under" []
"A foe, utmost: out of steam"
"Foul demise, field mouse"
"Grr, an a-ok Ragnarok"
"Hour is come, choir-mouse. Um, so heroic"
"I, intact, TITANIC"
"I, super, rise up"
"Life lost, still foe"
"Life's gone, single foe" []
"Me--super--SUPREME" []
"Mind power! Primed now! Wonder, imp"
"Not enough. One-nought" []
"Oh, boy! A booyah"
"Oh, hateful to out of health"
"Onslaught! Gnash, lout" []
"Pet, not potent" []
"Primo, I romp" []
"Pull off? Flopful"
"R U fab? FUBAR" []
"Ripe now, in power"
"Ruler is surlier"
"Shoo-in is on, ho"
"Snooper so prone" []
"A surety, too: You're toast"
"Surrender surer, nerd"
"Terminated, inert, tamed" []
"Thrown! Nth row"
"Too far! Rot, oaf" []
"A tootle? Too late"
"Toughen? No, not enough" []
"Troublin['] runt, boil"
"Try hovers, very short"
"A try so stray, o! Roasty, roasty!"
"Un-loser rules on" []
"Woo! Tense! Now to see woe onset"
"A worthy try, whoa"
"Zaps! Iced! Capsized"

table of Elvira machines [xxt4]
blurb
"all-techs hellcats"
"baser Sabre Bears" []
"a blast-soar albatross"
"a blubber bubbler"
"a boil-em-mobile"
"a caustic accus-it"
"a cut-so scout"
"defensive feed-vines"
"a doom-angel megalodon"
"a DuPont's Stun-Pod"
"a frog-leg flogger"
"gagmost maggots" []
"a gouge-o-gauge"
"a harm-set hamster"
"holistic hit-coils" []
"horrendous dour herons" []
"I-stun units" [p]
"less-brat blasters"
"literaliser artilleries"
"a masher-shamer" []
"a mend-o-demon"
"mess-tron monsters" []
"a mobile oil beam"
"a mordant mad-tron"
"a morto-motor"
"an oranger groaner"
"a perchin['] phrenic pincher"
"peril-set reptiles"
"a postural pulsator"
"a pound-em-up demon"
"a PrisonCo Scorpion"
"a pro-tec copter"
"a proctal caltrop"
"a pure-snag speargun"
"a purple pulper"
"rayless slayers"
"re-bustin['] site-burn turbines" []
"re-cursed reducers"
"a reloading girandole"
"the Repeatedly-Deplete Ray"
"rimless slimers"
"robust ur-bots" []
"a Samsung mass-gun"
"a schmoes-SOS mech"
"scorp-procs"
"shred-herds"
"skanker krakens"
"smashter hamsters" []
"snort-trons"
"snotrag/gas-tron"
"a sore-rot rooster"
"spam-U pumas"
"a spambot tomb-asp"
"splitter triplets" []
"the Stalnaker LaserTank"
"a stinger-nets rig"
"stubborn burn-bots"
"a tan-block (not black) clank-bot"
"a tartar rat"
"technos-o-stench"
"termless smelters" []
"ultrasound undulators"

table of Elvira taunts [xxt5]
blurb
"'[if player is male]His foot hoofs it[else]Her foot, oft hero of other[end if]!'" []
"'Act bold, bad clot!'"
"'Adroit? Oaf, too afraid!'"
"'Amscray mas racy!'"
"'At blows? Last bow!'"
"'Aw, danger raged now? Go wander!'"
"'Bad nerves? Send brave!'"
"'Be a hero? Eh, a bore.'"
"'Bye, elf! Flee by, feebly!'"
"'Bye now. Web...yon!'" []
"'Cameo mo['] ace!'"
"'Come, pet, compete!'"
"'Courage, a cure: GO!'"
"'Courage's a scourge!'"
"'Coy AWOL? Way cool!'" []
"'Crisply slip. Cry?'"
"'Cut in, choke, chicken out!'"
"'Dastardly? Drat, sadly.'"
"'Desertin['], nerdiest?'"
"'Detachin[']? Can't hide!'"
"'A detour?! Our DATE!'"
"'A dodge! A dodge! ... Goaded?'" []
"'Drift away, tardy waif!'"
"'Dry bolt? Bold try.'"
"'Dueler eluder!'"
"'Ego slit? Leg it so!'" []
"'Eh, valour overhaul?'" []
"'Emigrate it? Meager!'"
"'Exit meant a Next Time!'"
"'Fear nigh? Hang fire!'"
"'Feint, wail--a fine wilt!'" []
"'Final-go loafing?'" []
"'Flee! Be feeble!'" []
"'Fleeing legs? Fine!'"
"'Flight set? Let's fight!'"
"'A foul serf so fearful!'"
"'Funk it so! Fink-outs!'"
"'Furtive turf-vie?'"
"'Given war, wavering!'"
"'Goal: hide, dig a hole!'"
"Going? I gong!"
"'Gosh! Ruff shrug off!'"
"'Har, feet! The fear!'" []
"'Hastily alit. Shy?'"
"'A hasty stay, ha!'"
"'Head over, evader! Ho!'"
"'Honour? Ooh...run.'"
"'A hurry? Hurray!'"
"'I, abler bailer!'"
"'I stunk of fink-outs!'" []
"'In check? Chicken?'"
"'Leavin[']? Venial!'" []
"'A legion? Ego lain! Go alien!'"
"'Lo! Retire, loiterer!'"
"'A low AWOL!'"
"'March out, our match? Macho rut! Humor, cat!'"
"'Must go? Mo['] guts!'" []
"'My foe, mo['] fey!'"
"'Nearly meet? Later, enemy! Elementary!'"
"'Need a while? Denial! Whee!'"
"'Nerve? NEVER!'"
"'No wit to win? Own it!'" []
"'Not a swell stonewall!'" []
"'Not ready yet? O darn! Tread yon!'" []
"'Not up to it option? Tut!'"
"'O, a runt ran out!'" []
"'Of course! Scour, foe!'"
"'Oy, far foray for ya!'"
"'A patsy! We step away!'"
"'A perfect farce, pet!'" []
"'Petulant, late punt!'" []
"'Postponing? No stopping!'"
"'A ramble, yet, bleary mate? Maybe later!'"
"'Ran? Tut! Truant!'"
"'Recede-decree?'"
"'Retreat, tree-rat!'"
"'Retreating? Get trainer!'"
"'Retreating? Inert? Great!'" []
"'Return, un-rent!'" []
"'Riddance--and cried! Acid, nerd? Candider!'"
"'The road--or DEATH!'" []
"'Roam on, maroon!'" []
"'Scape-paces?'"
"'[']Scapin! Panics!'" []
"'Scared now, and cowers? Answer, doc! Awed? Scorn!'"
"'Set you a easy out?'"
"'Skeer'd? Re-sked!'" []
"'Slip [']way waspily!'"
"'A smoove vamoose!'"
"'Sneak away, weak as any...'"
"'So, backbone! Be back soon!'"
"'So I fade of ideas...'" []
"'Sod's gone. Goodness!'" []
"'Sortie's rosiest!'" []
"'Spaciest escapist!'"
"'Stagnation, antagonist?'"
"'Take us on? Sneak out!'"
"Taking off? Oft faking!"
"'Tasked? Skated!'"
"'Time outs? Titmouse!'" []
"'Too scared? Scoot, dear!'"
"'Tough? Shot! Thought so! Thou ghost!'"
"'Toughen? Huge NOT! Uh, get on!'" []
"'Toughness gushes not!'" []
"'Try, fail, frailty!'"
"'Um, be [if player is male]Mr. Bummer[else]Mrs. Bummers[end if]?'" []
"'Un-torn? Run not.'" []
"'Unprepared? Run, dear! Pep!'"
"'Veritably viable try!'"
"'Walking out? Know a guilt!'"
"'Wary, clod? Cowardly!'" []
"'We gone now, gee?'"
"'Whoops! Po['] show!'"
"'Win, fool? Low-info foil, now!'"
"'Ye cards, descry a scaredy!'"
"'Yep, a weak keep-away!'"
"'Yo, coot! Too coy!'"

book others

table of political slogans [xxh1]
blurb
"'Bureaucrat's a curt abuser!'"
"'Coup d'etat pact: outed!'"
"'Darn woeful? A wonderful law founder!'"
"'Dim-led middle? I'd meld!'"
"'Eh, reform from here!'"
"'Ensure it reunites us entire!'"
"'Ever solid, I RESOLVED!'"
"'Hear from reform, ah!'"
"'A hell-proof hope for all!'"
"'Here's my plan. Many helpers?'"
"'Hm, we're for reform! Hew! From where? Me! Feh! Rowr!'"
"'Idle nag? Leading-aligned, I'd angle...DEALING!'" []
"'Inept mop up? I'm no puppet!'"
"'Last, yet STATELY!'"
"'The machine hath icemen!'"
"'Me, I'd unite in due time!'"
"'Mo['] debates: BEAST MODE!'"
"'The party...they TRAP!'"
"'PROMISE SO PRIME!'" []
"'Promissive improvisers miss. I PROVE!'"
"'Reformist firestorm!'"
"'Resorting to ringers? I: stronger!'"
"'Right off. Fight for...'"
"'Solon? LOONS!'" []
"'Solutions: Toil's on Us!'"
"'Stumpier, impurest imputers!'"
"'Trickless Slickster-Sticklers!'"
"'Try. Ignite.' You point to your rivals. 'Tiring yet? INTEGRITY!'"
"'The turned need TRUTH!'"
"'Up, not-put-on!'" []

table of selly yells [xxh2]
blurb
"'All deserve deals. Revel!'"
"'Aw, yep, we pay.'"
"'Bargain! Baring a grin, bag!'"
"'Best price!' / 'Creeps bit!'"
"'Bilge as big sale? Base, Gil!'"
"'Boonies! Soon, I be...'"
"'Buy em!' / 'Um, bye!'"
"'Buy, sell? Yes!' / 'Bull.'"
"'Cauliflower? Our face will recoil! Awful!'" []
"'Cheap bulk!' / 'Buck, eh, pal?'"
"'Cheap bum! Be a chump!'" []
"'Conspire on prices? Nice, pros!'"
"'Deal-bot? A bolted, bloated, beat old...'"
"'Deliver tons! Send it over!'"
"'Earnhardt? Trader? Nah.'"
"'Ever sold? Resolved.'" []
"'Extra value! A rave! Exult!'"
"'Foul offers? Suffer, fool!'"
"'Freebie beer? Fie!'"
"'He fronts! Not fresh!'"
"'Ho, any hay?' / 'No.' / 'Ah, yon!'"
"'Hog, glean no haggle!'"
"'Honeydew? How needy!'"
"'Let's haggle, eh? Tell gags.'"
"'Loaned? No deal!' / 'Lad, one...'" []
"'Lost head? Deal shot!'"
"'Low deal!' / 'Allowed!'" []
"Low prices relic swop!"
"'A melon mo['] lean? No, lame!'" []
"'Miss, a free...?' / 'Seems fair.'"
"'Money back!' / 'My, a beckon!'"
"'No-credit doctrine, tired con!'"
"'No wallets? STONEWALL!'" []
"'Oafs fled. Deal's off.'"
"'On sale!' / 'No seal!'" []
"'One pound's sound?' / 'Nope.'"
"'Onions in soon?' / 'No is no.'"
"'Peaches! See, chap!'" []
"'A pony. Pay? No? Yap on!'" []
"'Price up?' / 'No, porcupine.'"
"'Purchase? Sure, chap!'"
"'Read fail! Fair deal!'" []
"'Ready to trade, yo!'"
"'Sale has hassles.'"
"'See if fee is...'"
"'Size four fez? I sour.'"
"'Splendid peddlins[']!'"
"'Spree, per se?'" []
"'Sprocket!' / 'Pet rocks!' / 'Stock rep?'" []
"'Stall gone. Lost, angel. Legal?' 'Tons.'"
"'Super deal!?' / 'Sure!' / 'PLEAD.'" []
"'Ten pounds?' / 'Dunno, pest.'"
"'Three pounds? Thou spender!'" []
"'Two pounds. Put down, so.'"
"'Un-bilk in bulk!'"
"'Well, son? Sell now!'" []
"'What soup, southpaw! Swap thou...?'"
"'Yo, um, once you con me...'"


Roiling Random Text ends here.

---- DOCUMENTATION ----