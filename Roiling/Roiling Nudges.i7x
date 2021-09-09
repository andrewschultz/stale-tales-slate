Version 1/151226 of Roiling Nudges by Andrew Schultz begins here.

volume table of nudges

[rorg.py sorts the "to say" and rules in the order they appear in the table]
[nuch.py makes sure that all the nudges have a test case assigned]
[stsv.py verifies the hash values with the strings]
[all this should be in the post-commit hooks]
[the chapter names may matter if I divide tables up not just by region but also by room to speed things up.]

[Nudges are organized in roughly the order you see them going through each region. In some cases, certain rooms take priority over others. There's a combination of most immediate stuff to do and the most efficient walkthrough. Then I just loop clockwise from the direction you entered. For Routes and Troves, it's pretty much a one-way shot, though exploring the Cleric Circle is the most natural way through, and the Deli and Adobe have equal priority..
With Oyster, I first go east from Anger Range, then north, then west, which is the most efficient way to get through that region.
For Presto, the maze, which is unnecessary, comes right after the gyre so I don't forget it. Also, you can kill it off right away. Then west of the Gyre, because there's only one thing to do. Then you need to go south to see what's east.
Towers goes south-to-north then east-to-west, picking off side rooms like Lost Lots as they open up, because it's sort of a grid anyway.
Otters is stll a bit messy, but the way through is Midden/Brunt, Downside, Pool (easier than barn), Barn, north/south rooms, Inclosure, Rancho.
Others leaves Gates Stage for last, the last room to visit, with the Swell Wells below being second-last. The Field and Clearing are both equally critical, but since the Field's puzzles are more tightly themed, I put it first.
]

book nudge tables

chapter ordeal reload nudges

table of Ordeal Reload nudges
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"manse"	359250554	--	degen-true rule	"[not-the-reg]."
"ordeal"	364513235	--	degen-true rule	"[not-the-reg]."
"closets"	570636060	closets	--	"The closets are there to warp space a bit. You don't need to mess with them."
"closet"	474362094	closets	--	"The closets are there to warp space a bit. You don't need to mess with them."

table of dusty study nudges
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"study"	447878132	--	--	"[locname]."
"rove"	394647309	--	perrot-yet rule	"That's not a way to sneak around and avoid [if stuff-found >= 3 and Report Porter Perrot is off-stage]the[else]any future[end if] knock at the door."
"pin"	195366313	giant pin	--	"It's one big giant pin."
"giant"	251797892	giant pin	--	"It's one big giant pin."
"isolani"	385521400	--	--	"You don't need to rearrange the isolani liaison. It's all that protects you from the outside world."
"abstract"	429617931	abstract painting	--	"That is probably overthinking the painting's abstract-ness. It's really just good for examining."
"latch"	215399559	latches	--	"Not one latch. All of them."
"table"	305336689	--	--	"A bleat: 'tableS!'"
"ceiling"	392118435	--	--	"[if niche is touchable]You wouldn't want to collapse the whole ceiling, but maybe the MY NICHE words could be changed[else]You already built the chimney. If the ceiling caved, you'd be buried[end if]."
"subpoena"	574518649	--	perrot-left rule	"Subpoenas are subpoenas. The law is the law. You don't know any lawyers good enough to wiggle out with THEIR form of word-twisting. The bean soup is just a smell."
"gape"	244059588	dope op ed	--	"You feel like you physically want to crumple up the page, but you just stare blankly at it."
"nitro"	376686752	--	x-oped rule	"[vs-oped]."
"questin"	630601871	--	x-oped rule	"[vs-oped]."
"moneyco"	550858761	--	x-oped rule	"[vs-oped]."
"shatter"	555094031	--	x-oped rule	"[vs-oped]."
"itrash"	369170750	--	x-oped-m rule	"[vs-oped]."
"herarts"	537307816	--	x-oped-f rule	"[vs-oped]."
"billy"	293398681	--	x-oped rule	"[vs-oped]."
"beams"	308761951	meet bans	--	"Not even one of the beams rattles. You count them up again--there are ten."
"ten"	299823635	meet bans	--	"You change neither the number nor the makeup of the ten beams."
"notice"	438174643	notice	--	"You can flip everything on the diorama except the notice."
"diorama"	294149104	diorama	--	"Gateman Nat Egam assured you you couldn't change it by accident when he gave it to you. The stuff hanging from it, though..."
"bookshelf"	561748346	bookshelf	--	"The bookshelf is too massively immovable. If you could magick it, all those books would probably create an avalanche, anyway."
"books"	316331203	--	--	"[the-books]."
"book"	220057237	--	--	"[the-books]."
"shelf"	341691109	--	--	"[the-books]."
"dark"	161473888	--	dark-study rule	"[dark-palm]."
"darkness"	550735437	--	dark-study rule	"[dark-palm]."
"bowling"	401020150	giant pin	--	"[g-pin]."
"bowlingpin"	596386463	giant pin	--	"[g-pin]."
"oped"	304653734	dope op ed	--	"You're not going to change this--deed. Or Elvira's opinion. Better to change Yorpwald."
"niche"	297994347	niche	--	"It's not any old niche. It's your niche. And by your niche, I mean you see it as 'my niche.'"
"tenbeams"	608585586	--	study-see-basement rule	"You probably just want to go DOWN to the [if Largely All Grey Gallery is visited]gallery[else]basement[end if]."
"stable"	401610655	--	study-see-stable rule	"You probably just want to go IN to the stable."
"chair"	188792351	rich chair	--	"The chair is built too sturdily to be changed into anything else. You made sure of that when you bought it, for practical reasons. You can't make it more or less hi-arc, either. But it's still soft enough to be relaxing."
"rich"	186604533	rich chair	--	"The chair may be an unnecessary luxury, but you shouldn't feel bad about that."
"sad"	119490873	sad ads	--	"[w-twi]."

table of farming framing nudges
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"framing"	324601726	--	--	"[locname]."
"ridging"	330445496	--	--	"If you collapsed the girding ridging, which you can't, the shouty youths would hear something and be after you."

table of highest heights nudges
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"highest"	479347239	--	--	"[locname]."
"height"	383073273	--	--	"[locname]."

table of largely all-grey gallery nudges
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"gallery"	477904362	--	--	"[locname]."
"all"	109815496	--	--	"[locname-part]."
"grey"	368088866	--	--	"[locname-part]."
"evac"	256164332	--	--	"The evac-cave is your way out. It'd be a bad idea to change it."
"bni"	132319259	--	--	"[if ISBN bins are reflexed]You already fixed the bins[else]No, all the bins[end if]."
"high"	152157146	high sign	--	"[hisin]."
"highsign"	394931168	high sign	--	"[hisin]."
"sign"	242774022	high sign	--	"[hisin]."
"arifle"	340639311	rifle	--	"Just the rifle, well, not THE rifle, or JUST, rifle, but RIFLE."
"hostage"	473612489	rifle	--	"It's not you that needs changing but the rifle."
"ugn"	206613017	rifle	--	"It's not a gun but a rifle."
"flier"	338451493	--	elmo-chat rule	"Better to pump Elmo for information."
"elmo"	320047678	Elmo	--	"Changing Elmo won't work. It's his rifle[if rifle is moot] that needed changing[end if]."

table of carven cavern nudges
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"cavern"	410395643	--	--	"[locname]."
"terrain"	517651905	--	--	"Hm... 'retrain terrain' is a bit circular, as anagrams go. The [if stapler is touchable]stapler[else]plaster psalter[end if] and [if plates are touchable]palest pastel plates[else]staple[end if] probably hold the key to leaving."
"plate"	368383743	plates	--	"You have no idea which plate to focus on, so maybe you should focus on the plates."
"tapler"	453707546	plaster	--	"What you need is singular, but you sense it's all the plaster that matters."
"act"	124303421	act ruin curtain	--	"[curtain-block]."
"ruin"	304329964	act ruin curtain	--	"[curtain-block]."
"curtain"	428633385	act ruin curtain	--	"[curtain-block]."

chapter stores nudges

table of stores nudges
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"storse"	583140439	--	--	"[not-the-reg]."

table of strip of profits nudges
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"strip"	411166592	--	--	"[locname]."
"profits"	512034065	--	--	"[locname]."
"profit"	415760099	--	--	"[locname]."
"window"	425151566	windows	--	"Sadly, trying to change the windows wouldn't actually change the stores enough to find somewhere new."
"windows"	521425532	windows	--	"Sadly, trying to change the windows wouldn't actually change the stores enough to find somewhere new."
"storea"	489054291	store a	--	"[no-cand]."
"storec"	505872058	store c	--	"[no-cand]."
"stored"	507895562	store d	--	"[no-cand]."
"storee"	614672582	store e	--	"[no-cand]."
"storef"	513381369	forest	--	"[so-last]!"
"storeg"	519466175	store g	--	"[no-cand]."
"storei"	531859319	sortie	--	"[so-last]!"
"storej"	535826998	store j	--	"[no-way]."
"storel"	540680312	store l	--	"You search for a magic word but feel, er, lost."
"storem"	550941626	metros	--	"[so-last]!"
"storeo"	561219050	store o	--	"Nothing happens. You consider going through the other 358 possibilities, but that'd be so rote."
"storeq"	571272090	store q	--	"Nothing happens. You didn't really expect it to since, hey, no u with the q."
"storer"	572190276	resort	--	"The resort and Store R led to the Means Manse last game. It won't go anywhere new, and you don't need or want to go back, right now[if roved is false]. You wouldn't be safe there[end if]."
"stores"	583140439	store s	--	"[no-cand]."
"storex"	599634554	store x	--	"[no-way]."
"shell"	368990052	store y	--	"[shell-no]."
"shells"	465264018	store y	--	"[shell-no]."
"storez"	609836091	store z	--	"[no-way]."
"store"	486866473	store a	--	"You'll want to focus on a specific store."
"montage"	473038885	magneto montage	--	"It's probably counterproductive to change--it's more an information booth."
"toker"	443525685	tokers	--	"They already lost one of their collective, man. It'd be a bummer if [if nestor is off-stage]they lost another[else]someone had to replace Nestor again[end if]."
"someone"	633573999	engravings	--	"[engs]."
"nouned"	466108598	engravings	--	"[engs]."
"route"	495698314	course source	--	"[just-in-routes]."
"course"	507867847	course source	--	"[just-in-routes]."
"courses"	604141813	course source	--	"[just-in-routes]."
"tastee"	560294038	Tastee Estate	--	"[tastee-there]."
"tasty"	427041072	Tastee Estate	--	"[tastee-there]."
"turret"	609779558	--	--	"[turrets-ok]."
"turrets"	706053524	--	--	"[turrets-ok]."
"ivy"	274516918	truster turrets	--	"[turrets-ok]."
"ivory"	434193298	truster turrets	--	"[turrets-ok]."
"otter"	493702525	solid idols	--	"[idols-no]."
"idol"	194188351	solid idols	--	"[idols-no]."
"solid"	290462317	solid idols	--	"[idols-no]."
"odorant"	429263390	odorant tornado	--	"But you already changed Store P."
"engraving"	570489816	engravings	--	"The engraving is meant to be read. You can modify it with other actions."
"engravings"	666763782	engravings	--	"You can only change the enrgavings by working through the other stores."
"patcher"	456181591	patcher	--	"The patcher doesn't need to be changed. It does the changing if you point it."
"mangiest"	539953120	mangiest steaming	--	"You can't do anything with the mangiest steaming other than enter it for a side adventure."
"husb"	257080977	hubs bush	--	"[hub-stur]."
"bhu"	160807011	hubs bush	--	"[hub-stur]."

table of cruelest lectures nudges
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"lecture"	621971270	--	--	"[locname]."
"lectures"	718245236	--	--	"[locname]."
"seating"	475877967	--	--	"That might cause a bit too much commotion. Maybe you can pay attention to a common thread that will dispose of the blabber babbler and the Rehabs Basher."
"mangiets"	539953120	--	--	"You can't see the way high highway any more. You're stuck dealing with the Rehabs Basher and blabber babbler. Tedious."
"blabber"	324388284	--	--	"[blab-un]."
"example"	569923068	--	--	"[blab-un]."
"ian"	116088172	--	--	"[ian-un]."
"guardian"	362334391	--	--	"[ian-un]."
"pamphlets"	647481120	--	--	"[pamph-ana]."
"pamphlet"	551207154	--	--	"[pamph-ana]."
"rehab"	271018934	--	--	"[rehab-no]."
"rehabs"	367292900	--	--	"[rehab-no]."
"parkee"	477522976	--	--	"[no-park]."
"parkees"	573796942	--	--	"[no-park]."

chapter routes nudges

table of routes nudges
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"storeu"	591972280	--	degen-true rule	"[not-the-reg]."
"rouet"	495698314	--	degen-true rule	"[not-the-reg]."
"reagent"	547741067	--	has-reag rule	"[fol-reag]."
"reagents"	644015033	--	has-reag rule	"[fol-reag]."
"along"	231861444	--	am-along rule	"You suspect you have a little way to go before finding clues of No-Lag Logan."
"pipesoot"	683820011	--	in-horbert-quest rule	"[horb-magic of pipe soot]."
"pipe"	335730873	--	in-horbert-quest rule	"[horb-magic of pipe soot]."
"soot"	348089138	--	in-horbert-quest rule	"[horb-magic of pipe soot]."
"stupor"	545632130	--	in-horbert-quest rule	"[horb-magic of stupor sprout]."
"boko"	220057237	--	in-horbert-quest rule	"[horb-magic of U NERD]."
"runedbook"	628229553	--	in-horbert-quest rule	"[horb-magic of U NERD]."
"spoon"	395352587	snoop spoon	--	"Instead of bending the spoon, use it to help your magic powers if need be."
"summary"	539400952	summary	--	"[rev-sum]."
"ummary"	443126986	summary	--	"[rev-sum]."
"mum"	233256113	summary	--	"[rev-sum]."
"rays"	306144839	summary	--	"[rev-sum]."
"ray"	209870873	summary	--	"[rev-sum]."

table of same mesa nudges
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"mesa"	290343046	--	--	"[locname]."
"circle"	349947767	--	--	"[if cleric circle is visited]You already found a way INSIDE[else]You may need to read the scripture picturers to figure how to enter the Cleric Circle[end if]."
"orcas"	277143749	--	--	"[if regalia is reflexed]No, you found the way in, with the extra s[else]Hm, it's Oscar'S[end if]."
"towards"	490212044	--	got-towards rule	"You search around for the worst ad some more, but you can't find it, or anything else you could do to or with it."
"uhh"	179670405	--	--	"[name-worry of adobe abode]."
"tut"	311325843	--	--	"[name-worry of adobe abode]."
"scripture"	748407896	--	--	"[picturer-change]."
"cripture"	652133930	--	--	"[picturer-change]."
"picture"	566810127	--	--	"[picturer-change]."
"pictures"	663084093	--	--	"[picturer-change]."
"lairage"	348911935	--	--	"Lairage regalia is already tailored to the resident's style. So it's not yours to change[if regalia is reflexed], and you don't need to, now you've visited Oscar[else], but maybe noting what's on it will help you get in[end if]."
"sos"	266900509	--	--	"[sos-arc]."
"arc"	106517206	--	--	"[sos-arc]."
"satin"	315472156	--	--	"The church's name is not as important as its mission."
"worst"	466995137	worst ad	--	"If you change the ad from the worst, maybe you won't make it better. Maybe you'll make something else even worse. So, focus on the whole."
"adsorbing"	444086214	--	--	"[board-change]."
"ings"	242774022	--	--	"[board-change]."
"board"	201312192	--	--	"[board-change]."
"giatn"	251797892	Gast	--	"[Gast] is too old and set in [his-her] ways. You may just need to listen to [him-her] from [if nuder is touchable]one more angle[else]several different angles[end if]."
"ides"	290102010	side art	--	"[whole-side]."
"tra"	190621639	side art	--	"[whole-side]."
"gast"	234171504	Gast	--	"You can't change [gast] permanently. You just have to work around [him-her]."
"tirade"	384449683	Gast	--	"[if side art is reflexive]There's more than one tirade[else]You've sort of dealt with the (first) tirades, but there's still more than one, and you need another way to deal[end if]."
"bench"	271420406	sit a nag	--	"The [sit a nag] is too sturdy. You can't do anything with it, but you may be able to do something with or around it."
"anti"	219198190	--	--	"[whole-sitanag]"
"sag"	131061486	--	--	"[whole-sitanag]"
"die"	193828044	--	--	"[die-sin]."
"sin"	210174320	--	--	"[die-sin]."
"poison"	440345433	--	--	"[not-stripe]."
"stripe"	538972701	--	--	"[not-stripe]."
"poisonstripe"	979318134	--	--	"[not-stripe]."
"pat"	186763795	--	--	"[if Idle Deli is visited]No, you already went PAST to Pat's[else]That's not how to get into Pat'S, you reflect[end if]."
"resto"	486866473	--	--	"[name-worry of idle deli]."
"woe"	310093459	WOE BOW BELL	--	"[whole-woe]."
"bow"	200706255	WOE BOW BELL	--	"[whole-woe]."
"bell"	253852692	WOE BOW BELL	--	"[whole-woe]."
"rude"	339264808	nuder	--	"That's not quite the book's whole title."
"bev"	253389834	be ova	--	"[whole-bev]."
"ova"	183705215	be ova	--	"[whole-bev]."
"bean"	217320340	THE BEAN	--	"THE BEAN has too much gravitas to be just a bean."

table of cleric circle nudges
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"cleric"	349947767	--	--	"[locname]."
"list"	298190669	--	--	"[follow-the-list]."
"toils"	372543246	--	--	"[follow-the-list]."
"kyries"	529689154	--	--	"You can't change the music, but you don't need to."
"kyrie"	433415188	--	--	"You can't change the music, but you don't need to."
"granos"	359645374	--	--	"You can't change the music, but you don't need to."
"grano"	263371408	--	--	"You can't change the music, but you don't need to."
"pews"	413480807	--	--	"No vandalizing church property."
"pew"	317206841	--	--	"No vandalizing church property."
"lament"	419900445	--	--	"You can't change stuff like that by brute force. But you don't need to."
"chants"	326767194	--	--	"[chanty]."
"chant"	230493228	--	--	"[chanty]."
"litany"	395371281	--	--	"[chanty]."
"rebroth"	531617514	--	--	"It's not Brother Horbert who needs changing but the Same Mesa."
"poisno"	440345433	--	--	"[no-poi]."
"striep"	538972701	--	--	"[no-poi]."

table of idle deli nudges
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"idle"	247641883	--	--	"[locname]."
"pta"	186763795	--	--	"You don't need to do anything with Pat[if stupor sprout is off-stage], but maybe you can get by him to that seed pit[else], especially now you got the stupor sprout[end if]."
"seed"	372915273	--	--	"[pit-full]."
"pit"	229568823	--	--	"[pit-full]."
"putcries"	663084093	--	--	"The pictures aren't here, and they're not what you need[if stupor sprout is not off-stage]ed[end if] to deal with, anyway."
"carvings"	456456048	--	--	"[no-carv]."
"carving"	360182082	--	--	"[no-carv]."

table of adobe abode nudges
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"adobe"	243794498	--	--	"[locname]."
"oscar"	277143749	--	--	"You don't need to do anything with Oscar[if pipe soot is in Adobe Abode and list o toils is examined], but maybe you can sneak the pipe soot away[else if pipe soot is not in Adobe Abode], and you already got the pipe soot[end if]."
"ashtray"	448724974	ashtray	--	"[ash-soot]."
"trashy"	446537156	ashtray	--	"[ash-soot]."

table of harms marsh nudges
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"marsh"	285143039	--	--	"[locname]."
"harm"	188869073	--	--	"[locname]."
"null"	281640993	--	--	"The whole NULL IT unit."
"unit"	322116179	--	--	"The whole NULL IT unit."
"darknses"	550735437	darkness	--	"[dark-been]."
"dakr"	161473888	darkness	--	"[dark-been]."
"sheol"	389528790	--	--	"[sheol-c]."
"hole"	293254824	--	--	"[sheol-c]."
"aura"	194805246	odd run on aura	--	"The whole odd run on aura."
"run"	259337118	odd run on aura	--	"The whole odd run on aura."
"odd"	116410755	odd run on aura	--	"The whole odd run on aura."
"pyrites"	661331953	pyrites	--	"[py-glow]."
"pyrite"	565057987	pyrites	--	"[py-glow]."

table of ripe pier nudges
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"pier"	339588717	--	--	"[locname]."
"mist"	308451983	--	--	"[all-dim]."
"dim"	130097088	--	--	"[all-dim]."
"data"	128514743	--	--	"[all-dim]."
"mists"	404725949	--	--	"[all-dim]."

table of cripple clipper nudges
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"clipper"	493874100	--	--	"[locname]."
"reef"	367450917	--	--	"The reef is not changed. Perhaps you can deal with what's on it."
"sketchin"	550311509	--	--	"No need to alter them. Worth looking at, though."
"sketchins"	646585475	--	--	"No need to alter them. Worth looking at, though."
"mess"	384429194	--	--	"[spume-no]."
"spume"	474726994	--	--	"[spume-no]."
"spumes"	571000960	--	--	"[spume-no]."

table of sonancy canyons nudges
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"canyon"	355720248	--	--	"[locname]."
"canyons"	451994214	--	--	"[locname]."
"patter"	503003725	raptest patters	--	"[pat-cont]."
"patters"	599277691	raptest patters	--	"[pat-cont]."
"spheric"	492150567	--	--	"The ciphers cannot be dispelled."
"cipher"	395876601	--	--	"The ciphers cannot be dispelled."

chapter troves nudges

table of troves nudges
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"spoiloplis"	701798374	--	degen-true rule	"[no-spoil]."
"spoil"	350899187	--	degen-true rule	"[no-spoil]."
"pagepage"	488119176	Pa Egg	--	"[ei2pg]."
"egg"	193005513	Pa Egg	--	"[ei2pg]."
"pea"	211459886	Pa Egg	--	"[ei2pg]."
"peg"	241871770	Pa Egg	--	"You pause, then note the author's middle initial, which seems annoyingly important."
"truffle"	528189368	truffle	--	"You can't change the truffle. It can help you change things, though. Or how you see things."
"poverty"	701582538	--	degen-true rule	"There's no shortcut from poverty to the very top, but there's no definable state in between, due to the shrinking Yorpwald middle class. I'll spare the details."
"troev"	497757327	--	degen-true rule	"[not-the-reg]."
"storev"	594031293	--	degen-true rule	"[not-the-reg]."

table of Loather Rathole nudges
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"rathole"	483876463	--	--	"[locname]."
"hurt"	330821927	--	--	"[no-hurt]."
"hurts"	427095893	--	--	"[no-hurt]."
"pothole"	552183378	--	--	"[p-hole]."
"potholes"	648457344	--	--	"[p-hole]."

table of Bustle Sublet nudges
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"bustle"	504528644	--	--	"[locname]."
"messhole"	677684018	--	--	"A messhole is a messhole. You need to concentrate on thinking your way out."
"reastier"	672824472	--	--	"[artery-no]."
"artery"	526110803	--	--	"[artery-no]."
"boor"	252447862	--	--	"[boor-grub]."
"grub"	241448217	--	--	"[boor-grub]."
"observe"	637146289	--	lot-observed rule	"You're already observing by reflex now. No need to tweak things."
"asidewalk"	509159436	--	--	"[sidewalk-oops]."
"askew"	387135844	--	--	"[sidewalk-oops]."
"sidewalk"	506971618	--	--	"[sidewalk-oops]."
"sob"	189045448	sob ever verbose	--	"No, you'll want to zone out the whole verbose distraction."
"veer"	448100841	sob ever verbose	--	"No, you'll want to zone out the whole verbose distraction."
"laid"	122023592	--	--	"[sidewalk-oops]."

table of Boarded Roadbed nudges
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"roadbed"	350147390	--	--	"[locname]."
"stop"	355202520	--	--	"The stop post is in the past. No need to p.s. tweaking it."
"live"	333777614	evil bee	--	"The bee's description isn't important. It's how you see the bee that matters."
"bee"	274031123	evil bee	--	"But it's not just any bee. It's a[if bee-score is 0]n[end if] [evil bee][if bee-score is 2]! Though, really, you've already given it the business.[else]![end if]"
"snore"	452663963	--	--	"[if SNORE SO ARENA is reflexive]Hmm. Nothing at all. It must be [i]a[r] snore[else]You already managed to REASON with a snore. Nothing else to do[end if]."
"arena"	286413056	--	--	"[if SNORE SO ARENA is reflexive]Nothing happens. You may need to look at the full SNORE SO ARENA[else]You already managed to REASON your way around the SNORE SO ARENA[end if]."

table of Drain Nadir nudges
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"nadir"	222441064	--	--	"[locname]."
"spider"	456891772	diapers	--	"The diapers, the Ires Pad--the spider only fits in as *a* spider."
"ires"	354396724	--	--	"It's an ires PAD."
"pad"	104682866	--	--	"It's an IRES pad."
"song"	272133753	Id Cede	--	"[id-cede-full]."
"cede"	295646892	Id Cede	--	"[id-cede-full]."
"diapers"	459079590	Id Cede	--	"Don't twist yourself into knots to/from REAL despair." [this relies on I'd Cede replacing the diapers before you move on to the bedroom]
"eddie"	342663242	Id Cede	--	"[id-cede-full]."
"glare"	301731271	--	glaring-futile rule	"You stare into space some more but get distracted."

table of Boredom Bedroom nudges
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"bedroom"	465358213	--	--	"[locname]."
"amrest"	478776867	--	master-moot rule	"[boredom-move-on]."
"bloters"	559099217	--	lobster-moot rule	"[boredom-move-on]."
"shmoe"	399790104	--	--	"[shmoe-homes]."
"home"	303516138	--	--	"[shmoe-homes]."
"leaper"	478403637	--	--	"You'll probably want to deal with all the pleaser leapers at once."

table of Browse Bowers nudges
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"bowers"	510110133	--	--	"[locname]."
"bower"	413836167	--	--	"[locname]."
"mire"	322197911	--	--	"[mires-no]."
"mires"	418471877	--	--	"[mires-no]."
"rotunda"	460016620	--	--	"[rotun]."
"dour"	285811276	--	--	"[rotun]."
"tan"	174205344	--	--	"[rotun]."
"eder"	361965110	--	--	"It's Si Reed's full name."

table of Econ Cone nudges
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"cone"	290071779	--	--	"[cone-rec]."
"ave"	237158747	--	--	"No sense changing the Save Aves. You must change yourself."
"aves"	333432713	--	--	"No sense changing the Save Aves. You must change yourself."
"recent"	531959132	--	--	"[cone-rec]."
"skyline"	567086698	--	--	"You don't want to mess with the skyline. You want to get in the godlings['] lodgings!"
"godling"	328295263	--	--	"[scrapery]!"
"godlings"	424569229	--	--	"[scrapery]!"
"statue"	537593736	Trevis Vister	--	"The statue can and should be changed for aesthetic purposes, but Trevis Vister's lawyers would be on you for sure. [if rivets are reflexed]You did what you could, anyway[else]Maybe there's a lesson from Trevis Vister himself in here[end if]."
"edn"	217742706	--	--	"[full-pod]."
"proner"	523179759	--	--	"[full-pod]."
"pod"	176847625	--	--	"[full-pod]."
"card"	127546295	r cad card	--	"The card's writing is more important."
"cad"	42222492	r cad card	--	"The card's writing is more important."

table of Upscale Capsule nudges
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"upscale"	485659083	--	--	"[locname]."
"office"	319186909	--	--	"[locname]."
"fief"	225828747	--	--	"[locname-part]."
"divorce"	479674829	DIVORCES	--	"If it was just one divorce, you could blow it off. Or there would not be enough to learn from. But there is so much drivel."
"magazine"	465726572	DIVORCES	--	"It's not just any magazine. It's DIVORCES!"
"wagon"	285982378	wonga wagon	--	"You really don't need to rearrange the wonga wagon."
"cark"	159450384	cark rack	--	"The cark rack is built to be sturdy. No need to change it."
"vote"	412433524	--	--	"[stove-symbolic]."
"vetos"	508707490	--	--	"[stove-symbolic]."
"phasor"	376886422	pharos phasor	--	"[pha-light]."
"pharo"	280612456	pharos phasor	--	"[pha-light]."
"shaker"	401807173	salt	--	"It's, well, St. Al's salt. Which is a relief, that you can simplify things a bit."
"fern"	308552316	--	--	"The fern is mentally, if not physically, unmalleable."
"sked"	298042342	--	--	"The checklist was built to be especially stable and singular of purpose. So, nothing happens."
"salt"	255385641	--	salt-gone rule	"You've lasted long enough. There are new things to look at, now."
"likeness"	668807521	--	tressi-or-mbb rule	"It's whoever's in the likeness that matters--[if Sister Tressi is moot][mbb][else if mbb is moot]Sister Tressi[else]Sister Tressi and [mbb][end if], here."
"beal"	202226671	Marble Blamer Mr Beal	--	"It's MR. Beal, the Marble Blamer! He seems to stare extra sternly at your fauxx pas."
"marble"	351625627	--	marble-gone rule	"[mbb-no]."
"siter"	457506742	Sister Tressi Siters	--	"All the siters."
"siters"	553780708	--	siters-gone rule	"The Sister Tressi Siters are gone. Trying to re-defeat them would be protesting too much."
"divorces"	575948795	--	divorces-gone rule	"No! Not another second thinking about that rubbish."

chapter presto nudges

table of presto nudges
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"storep"	568332432	--	degen-true rule	"[not-the-reg]."
"crust"	408819179	curst crust	--	"You should eat your food, not play with it. Yes, even if it's only MARGINALLY food."
"mazeltov"	655479952	--	maze-gone rule	"The volt maze is gone. Re-forming it would not be fun."
"ether"	481328338	--	ether-gone rule	"The ether is gone. You can just go [if Saps Pass is visited]back [end if]north."
"mazeroom"	615142808	--	in-mazeroom rule	"[if player is in Nowt Town]This is just the entry. You may want to tackle the whole maze[else]You can't think of any way to tackle this one room. Perhaps it is the whole maze you need to tackle[end if]."
"earring"	447141589	angrier earring	--	"The earring pulses a bit more, but you doubt you can do anything with it on your own."
"floor"	314357692	big-let	--	"You think about doing something to the floor. But making it disappear would probably be fatal. Best find another angle."
"serial"	410398381	popgun	--	"[is-boing]."
"number"	469637285	popgun	--	"[is-boing]."
"popgun"	443897512	popgun	--	"[boing-clue]."
"spoilt"	454009205	popgun	--	"[boing-clue]."
"lcao"	149359819	--	cola-in-mug rule	"The mug is already somehow generating infinite cola. Don't want to mess with that."
"dreidl"	353994775	--	dreidl-dread rule	"You won't be able to do anything to the dreidl to see it, but it'll be so horrifying once you do, you won't be able to focus. Catch-22."
"leonard"	433420743	Rand	--	"[if lawl wall is moot][l-n-r] need to be together, but by themselves, for themselves. They've done enough for you[else if Rand is eager]You don't need to combine them physically, but their physical strengths combined could be a help[else if Rand is washed up]You need to concentrate on them being washups. Combining them would mean they couldn't have a friend[else]You don't need to face double the strength[end if]."

table of Grey Gyre nudges
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"grye"	368088866	--	--	"[locname]."
"hump"	287929218	--	hump-gone rule	"You search for the hump you overcame. You can't find it now. But it's not relevant."
"entry"	507506690	zany meter	--	"[mz-chg]."
"mazeentry"	824545388	zany meter	--	"[mz-chg]."
"zany"	316424196	zany meter	--	"[mz-chg]."
"meter"	508121192	zany meter	--	"[mz-chg]."
"volt"	338441254	--	can-see-volt-maze rule	"That can't be it. It's a volt MAZE."
"maze"	317038698	--	can-see-volt-maze rule	"That can't be it. It's a VOLT maze."

table of Nowt Town nudges
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"bigl"	149825292	--	--	"The big L may be some sort of clue, but you can't do anything with it."

table of r10 nudges
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"bigm"	160086606	--	--	"[just-letter]."

table of r00 nudges
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"bign"	164918961	--	--	"[just-letter]."

table of r01 nudges
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"bigo"	170364030	--	--	"[just-letter]."

table of r02 nudges
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"bigp"	177477412	--	--	"[just-letter]."

table of r12 nudges
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"bigq"	180417070	--	--	"[just-letter]."

table of r22 nudges
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"bigr"	181335256	--	--	"[just-letter]."

table of r32 nudges
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"bigs"	192285419	--	--	"[just-letter]."

table of r33 nudges
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"bigt"	199121471	--	--	"[just-letter]."

table of r23 nudges
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"bigu"	201117260	--	--	"[just-letter]."

table of unwary runway nudges
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"unwary"	491818961	--	--	"[locname]."
"bigv"	203176273	--	--	"[just-letter]."
"avlez"	413942204	Tom Avlez	--	"No, his full name is the clue, here."
"tom"	241537748	Tom Avlez	--	"No, his full name is the clue, here."
"mavelt"	458157757	Zo Mavelt	--	"No, his full name is the clue, here."
"lev"	288784768	Lev Tzoma	--	"No, his full name is the clue, here."
"tzoma"	366695184	Lev Tzoma	--	"No, his full name is the clue, here."

table of Char Arch nudges
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"char"	143799505	--	--	"[locname]."
"mad"	87292060	--	--	"[no-scen]."
"maddam"	174584120	--	--	"[no-scen]."
"amaddam"	176771938	--	--	"[no-scen]."
"amad"	89479878	--	--	"[no-scen]."
"themad"	355490486	--	--	"[no-scen]."
"gasp"	212527445	--	--	"You try, but fail, to make something out of nothing."
"gpa"	116253479	--	--	"You try, but fail, to make something out of nothing."
"cretin"	449145869	--	--	"[cistern-to-dart]."
"cistern"	545419835	--	--	"[cistern-to-dart]."
"tar"	190621639	tars	--	"The tars remain heterogeneous. And very sticky. And the same size."
"yak"	177480248	yak	--	"The yak doesn't seem to react to three plain letters thrown around like that. Its look indicates not only that it is bored, but it wants to let people know it's bored, too bored to do so actively. The drab yoke it is wearing probably does not help."
"yoke"	377451116	drab yoke	--	"It's not just any yoke. It's a drab yoke. I mean, a particularly drab yoke. On the bored yak."
"drab"	126959615	drab yoke	--	"It's not just drab. It's a drab yoke. On the bored yak."
"scratchings"	604963096	drab yoke	--	"You may wish to decipher the scratchings, instead."
"scratching"	508689130	drab yoke	--	"You may wish to decipher the scratchings, instead."

table of Dirge Ridge nudges
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"dirge"	311751549	--	--	"[locname]."
"liev"	333777614	--	--	"The vile veil is impassive. It--kind of protects you, actually."
"whasup"	430250622	--	Rand-sad rule	"Maybe something like that'd work with just one washup. But there are two."

table of Austerer Treasure nudges
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"austerer"	732937433	--	--	"[locname]."

table of Marines Seminar Remains nudges
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"marines"	489567203	--	--	"[locname]."
"marine"	393293237	--	--	"[locname]."
"port"	344252357	--	--	"[if sport ports are reflexive]But there is more than one port[else]You already observed all the ports. No need to try to single one out[end if]."

table of Saps' Pass nudges [because you advance after the hogs are gone, no this-item is needed.]
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"ssap"	276201709	--	--	"[locname]."
"phat"	224046094	mutism summit	--	"[locname]."
"hog"	144234578	hogs	--	"The three hogs are pretty indistinguishable, but they're still, well, more than one. Deal with them all."
"key"	303098539	keys	--	"You aren't sure which key would work, so you need a plan to get them all."
"lawl"	217750269	lawl wall	--	"The lawl wall is too expansive for you to constructively (destructively?) use any mental energy on."
"mount"	415551063	--	--	"Mount Um, Not silently disposes of your attempts to manipulate it."
"deil"	247641883	--	--	"[d-sli]."
"deils"	343915849	--	--	"[d-sli]."
"yrnet"	507506690	YrNet Entry	--	"The YrNet entry is secure. You wouldn't know where to start hacking it. [if hacks shack is visited]Besides, you've already been north to the [shack], and it let you by[else if leo is touchable]But it won't let you by until [l-n-r] are gone[else]It only seemed to stop [l-n-r], so you should be able to bypass it easily[end if]."
"clump"	323466343	hawt thaw	--	"No, it's not just any clump, but hawt thaw."
"summit"	477632943	mutism summit	--	"The mutism summit is meant to be stable. You'll need to go [if Hacks Shack is visited]back [end if]north to do what you need, in peace and quiet."
"harpings"	449033901	harpings phrasing	--	"[harphr]."
"harping"	352759935	harpings phrasing	--	"[harphr]."
"chart"	246909523	starch charts	--	"But there is more than one chart to twiddle."

table of Hacks' Shack nudges
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"shakc"	207682846	--	--	"[locname]."
"hack"	111408880	--	--	"[locname]."
"algorithm"	497738055	--	--	"[no-txtbk]."
"algorithms"	594012021	--	--	"[no-txtbk]."
"recs"	328409463	censer	--	"[full-cens]."
"rec"	232135497	censer	--	"[full-cens]."
"labs"	170694528	labs slab	--	"The labs slab remains sturdy. Technology [slab-score], Wordplay Magic 0."
"alb"	74420562	labs slab	--	"The labs slab remains sturdy. Technology [slab-score], Wordplay Magic 0."
"dead"	172052105	flea	--	"There must be a more eco-friendly way to reincarnate the flea."
"clack"	146946005	Clack Ops Locs Pack	--	"[full-pack]."
"ops"	252092502	Clack Ops Locs Pack	--	"[full-pack]."
"locs"	243445967	Clack Ops Locs Pack	--	"[full-pack]."
"pack"	155592540	Clack Ops Locs Pack	--	"[full-pack]."
"caps"	198933328	caps lock	--	"[caps-no]."
"lock"	200105179	caps lock	--	"[caps-no]."
"tbakey"	426815280	TBA key	--	"[tba-key-jazz]."
"yke"	303098539	TBA key	--	"[tba-key-jazz]."
"pile"	308078753	coal	--	"It's not just any pile--it's a pile of coal."
"stikc"	316315593	gum	--	"It's just gum."
"stickofgum"	618963728	gum	--	"It's just gum."
"catechism"	513739379	--	--	"[no-txtbk]."
"textbook"	666851463	--	--	"[no-txtbk]."
"bkoo"	220057237	--	--	"[no-txtbk]."
"drive"	386316667	--	--	"Since there's both Drive A and Drive E, that's ambiguous. [if drive-score is 2]But it doesn't matter. You did what you could with both, anyway[else if drive-score is 0]You could tweak each individually if you wanted, though[else]You can still tweak [a-or-e], though[end if]."
"rebuff"	389684416	--	--	"The rebuff-buffer is too technical for you, but even if it weren't, removing its protection would be unwise."
"magnetic"	462684739	--	--	"The magnetic magic-net is too technical for you, but even if it weren't, removing its protection would be unwise."
"computer"	660245011	--	--	"You need to fix the program in the computer[if number of things on labs slab < 4], well, once you get it running[end if]."
"button"	473004833	--	--	"[shackbut]."
"buttons"	569278799	--	--	"[shackbut]."
"escarole"	586569806	escaroles	--	"All the escaroles."
"local"	203173658	ALocalCo cola	--	"The cola has already been reprocessed enough. You'll drink it when the time comes."
"rope"	368948448	skid	--	"You don't need to do anything tricky with the skid's rope."
"soda"	193843450	--	my-cola rule	"[cola-is-cola]."
"pop"	237284495	--	my-cola rule	"[cola-is-cola]."
"trim"	297501820	trim socks	--	"[trimsox]."
"sock"	242565306	trim socks	--	"[trimsox]."
"socks"	338839272	trim socks	--	"[trimsox]."
"trimsock"	540067126	trim socks	--	"[romstix]."
"sticks"	412589559	rom sticks	--	"[romstix]."
"rom"	223751533	rom sticks	--	"[romstix]."
"stick"	316315593	rom sticks	--	"[romstix]."
"bub"	141943617	BUB DUDE EGG	--	"[budge-note]."
"dude"	274970094	BUB DUDE EGG	--	"[budge-note]."
"geg"	193005513	BUB DUDE EGG	--	"[budge-note]."
"dongle"	378508824	dongle	--	"It's built to be sturdy. You don't want to mess with it."
"boredyak"	504410731	--	bookvis rule	"The book is unchangeably bad. Sure, there are probably good parodies to be written, but that's not your area of wordsmithing. [kboard-det]"
"fountain"	494078978	fount	--	"It's too small to be a fountain--really, just a fount."

chapter oyster nudges

table of oyster nudges
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"storey"	609225725	--	degen-true rule	"[not-the-reg]."
"jar"	136472146	pills	--	"You suspect it's what's in the jar that's important."
"spill"	330360449	pills	--	"You seem to be fumbling what to do with the pills.[slider-activate]" [slider test spill]
"digger"	344351251	rigged digger	--	"It's already been, err, rigged, enough."
"howler"	486513400	sausage	--	"A howler or haunter is not specific enough. This is a big ol['] SAUSAGE, here."
"bubble"	341982470	paw r wrap	--	"It's just wrap, really."
"bubblewrap"	618894823	paw r wrap	--	"It's just wrap, really."
"pearl"	350597528	paler pearl	--	"The pearl is too jagged to change easily, but it seems like it was roughly cut in half. Maybe if you find the other bit..."

table of posh hops shop nudges
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"posh"	289374801	--	--	"[locname]."
"tine"	344816481	stein	--	"Just one tine doesn't seem up to much."
"troll"	370414076	--	--	"Dealing with just one troll would cause the rest to call you a bully and beat you up. Gotta take [']em all, somehow."
"vets"	434354913	--	--	"[tro-clo]."
"vet"	338080947	--	--	"[tro-clo]."
"recap"	315789274	--	--	"Casper glares at you, as if he knows you're thinking all his recaps are the same. No. You [if recaps are reflexive]need to deal[else]already dealt[end if] with them all."
"pesty"	531015304	--	--	"[no-pesty]."
"type"	434741338	--	--	"[no-pesty]."
"tune"	404929442	tunes	--	"Eh, you know how jukeboxes are. One tune quashed, another pops up. Get rid of [']em all."
"pti"	229568823	tips pits	--	"You [if tips pits are reflexed]already dealt with the tips pits[else]can't pick out which pit to do something to. Maybe there's an action to apply to all of them[end if]."
"jukebox"	540345182	--	--	"[if tunes are in posh hops shop]You can't work on the jukebox as a whole, but maybe you could meddle with its two main parts: the tunes and perma-amper[else]The jukebox is already temporarily out of commission[end if]."
"remap"	360858842	--	--	"[jukebox-overkill]."
"unset"	501203408	--	--	"[jukebox-overkill]."

table of Olde Lode nudges
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"lode"	277001614	--	--	"[locname]."
"calm"	139082395	--	clam-gone rule	"Odd! Now, you feel a need to panic and flee after calming the clam."
"braes"	330010601	--	--	"The baser braes can't be changed. There is enough to do in the Olde Lode."
"brae"	233736635	--	--	"The baser braes can't be changed. There is enough to do in the Olde Lode."

table of Disease Seaside nudges
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"seaside"	516369903	--	--	"[locname]."
"streamlet"	763506833	--	--	"[strmlet]."
"streamlets"	859780799	--	--	"[strmlet]."
"canoe"	292259597	--	--	"The canoe sways alarmingly. Maybe it isn't the best vessel for crossing the river."
"soak"	225747539	--	--	"[raft-is]."
"oak"	129473573	--	--	"[raft-is]."
"fish"	205064007	--	--	"T'fish won't shift nowt."
"herring"	482236070	--	--	"Nothing doing. It is, after all, a RED herring. Ba dum bum."
"sculpture"	777010893	--	--	"[sculpt]."
"cult"	281035249	--	--	"[sculpt]."
"super"	495975644	--	--	"[sculpt]."
"river"	450611381	--	--	"[saccade-no]."
"rivera"	452799199	--	--	"[saccade-no]."
"saccade"	287495970	--	--	"[saccade-no]."
"oar"	161864198	--	--	"If you looked at just one oar, the raft would do no better than go in circles."
"boat"	198069318	--	--	"No one boat seems better than the others. Maybe you should widen your focus to all the boats."
"interlocking"	776745519	--	--	"Whoah, they're just oars. Think simpler. Much simpler."

table of Fighter Freight nudges
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"freight"	457629673	--	--	"[locname]."
"bota"	198069318	--	--	"[dest-esc]."
"boats"	294343284	--	--	"[dest-esc]."
"crays"	325150424	--	--	"[no-cray]."
"cray"	228876458	--	--	"[no-cray]."

table of Anger Range nudges
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"anger"	316824940	--	--	"[locname]."
"hoser"	421038754	--	now-shore rule	"[hero-er-oh]."
"hero"	324764788	--	now-shore rule	"[hero-er-oh]."
"scrawl"	364539784	HUNTER HUNT AREA	--	"It's a HUNTER HUNT AREA, which seems more important."
"pike"	307198092	pikes	--	"[all-fish]."
"carp"	187983165	carps	--	"[all-fish]."

table of Hardest Trashed Dearths nudges
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"hardest"	473013102	--	--	"[locname]."
"hardet"	376739136	--	--	"[locname]."
"spark"	318184724	--	--	"You don't need or want to destabilize the spark parks."
"park"	221910758	--	--	"You don't need or want to destabilize the spark parks."
"can"	90100911	cans	--	"Getting rid of one can would still leave a mess. Maybe you can deal with them all."
"cans"	186374877	cans	--	"You glance at your settler, wondering what to do with the cans. Maybe you've overlooked something obvious."
"eek"	308545396	eeks	--	"You try to eke out an eek, but you only have one data point, and that's not enough."

table of Lean Lane nudges
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"lean"	252715274	--	--	"You would upset countless people named Lena or Neal."
"reward"	429605395	drawer	--	"[if wrap is off-stage]Aunt Tuna would probably open the drawer if you helped poor Tortu the Trout[else]There's nothing else in the drawer and no way to get in by yourself[end if]."
"dent"	320852724	--	dent-gone rule	"You already fixed the dent. It's gone."
"tuna"	279311151	tuna	--	"She is a bit fussy, but she is more than okay as she is."
"wipe"	362199687	wipes	--	"[unless player has wipes]It'd be easier to steal all the wipes at once. Pulling them out and so forth--tiring[else]You will need to use them all at once, and on something else[end if]."

table of Lapsin' Plains nudges
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"plain"	251367970	--	--	"[if bogus-plains is reflexed]You had your say.[else]'I...plan,' you think, then in a fit of confidence, 'I...PLANS!'[end if]"
"polyp"	413457586	--	--	"[polyp-no]."
"polyps"	509731552	--	--	"[polyp-no]."
"inthere"	595228692	span pans	--	"The words on the pans don't change. They are just a generic taunt."
"pna"	152561285	span pans	--	"There are two pans."
"isk"	194199990	skis	--	"But you need to remove both skis."
"open"	352532153	span pans	--	"The words on the pans don't change. They are just a generic taunt."
"doorknob"	469670214	knob	--	"It's just a knob. Which thankfully cuts down the possibilities."
"acters"	433707299	--	--	"Hmm, no, it[if crate is reflexed] was[else]'s[end if] only one crate at a time[if crate is reflexed], and you dealt with things, anyway[end if]..."
"debris"	393844718	crate	--	"You can't learn much from the debris. You're pretty sure it's from a crate."
"fragments"	606798973	fragments	--	"[crate-frag]."
"fragment"	510525007	fragments	--	"[crate-frag]."
"shut"	341772090	--	--	"[hutzy]."
"hut"	245498124	--	--	"[hutzy]."

table of shuttle hutlets nudges
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"hutlet"	530228090	--	--	"[locname]."
"hutlets"	626502056	--	--	"[locname]."
"shadier"	414895930	--	--	"The Shadier Airshed is immovable and unchangeable."
"heap"	248742185	heaps	--	"[if heaps are reflexed]You don't need or want to futz with one heap to make things super-extra-perfect.[else]Change ALL the heaps![end if]"
"ubt"	226634730	tubs	--	"Clear ALL the tubs!"
"waste"	437312684	--	waste-gone rule	"The heaps are still technically waste, but you cleaned them up enough."

table of Sclerous Closures nudges
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"closure"	561681686	--	--	"[locname]."
"closures"	657955652	--	--	"[locname]."
"hedron"	414701385	--	--	"You'll probably need to destroy the hedron from within."
"arch"	143799505	--	--	"[ache-plur]."
"acher"	271605614	--	--	"[ache-plur]."
"sardine"	446521139	sardine	--	"The sardine gives you a weird look, as if you need to stop mumbling. You're not sure you can do anything to him directly."

table of Horned Hedron nudges
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"hedrno"	414701385	--	--	"[locname]."
"theses"	588552467	theses sheets	--	"The hedron's spirit will remain intact even if you meddle there. You must go into its heart."
"these"	492278501	theses sheets	--	"It'd be fun to rip up even one, but it'd be worse if you got caught. Take down the hedron, instead."
"tarp"	272087598	ol trap	--	"You think of changing the trap--maybe even a tarp! But maybe the trap IS a tarp that enfolds you. Scary. No, thinking of it as an ol['] trap would make it less intimidating."
"walleye"	595721739	walleyes	--	"Just tacking one walleye won't change the crowd. They're past redemption, anyway."
"walleyes"	691995705	walleyes	--	"The walleyes are a bad crowd, past redemption."

table of Rascal Craals nudges
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"craals"	258792829	--	--	"[locname]."
"craal"	162518863	--	--	"[locname]."
"hint"	254292671	thin hint	--	"The thin hint doesn't reveal anything else. You've hidden the ruby well enough."

table of End Den nudges
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"end"	217742706	--	--	"[locname]."

table of Plasm Lamps nudges
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"plam"	201542769	--	--	"[if bogus-psalm is reflexed]You did enough[else]Maybe riff on ALL the lamps. But only for fun[end if]."

table of den loft nudges
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"tenfold"	475534036	--	--	"[locname]."
"loft"	257791330	--	--	"[locname-part]."
"den"	217742706	--	--	"[locname-part]."
"jumble"	418180338	--	--	"It's the words on the jumble you need to mess with. With which you need to mess[if yapper is in Tenfold Teflond Den Loft]. Well, once the yapper's out of the way[end if]."
"stupid"	451977685	yapper	--	"[its-msg]."
"papre"	378249648	yapper	--	"[its-msg]."
"necklace"	471465731	yapper	--	"[its-msg]."
"intercom"	587573599	intercom	--	"[i-com]."
"not"	246370103	intercom	--	"Changing the intercom to a ton-crime intercom would be the opposite of what you want to do."
"crime"	341203496	intercom	--	"[i-com]."
"spin"	291640279	--	pins-moot rule	"You don't need to bring the pins back."

chapter towers nudges

table of towers nudges
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"storew"	594801246	--	degen-true rule	"[not-the-reg]."
"torew"	498527280	--	degen-true rule	"[not-the-reg]."
"wildest"	554960640	--	degen-true rule	"[wi-wi]."
"wilted"	458686674	--	degen-true rule	"[wi-wi]."
"curst"	408819179	--	degen-true rule	"It's not just that it's curst, it's a PALACE, too."
"palace"	286467128	--	degen-true rule	"It's not just that it's a palace, it's CURST, too."
"castle"	402197335	--	degen-true rule	"Not just any castle. Castle Apcur."
"apcur"	293088972	--	degen-true rule	"Not, like, swamp Apcur or hut Apcur. Castle Apcur."
"lake"	236740944	--	degen-true rule	"[if player is in Rawest Waters]Nothing you think of could get you out of this mess, and even if it could, you'd totally have upset the ecosystem.[else if Mislit Limits is visited]You're beyond the lake now.[else if leak lake is touchable]You can't drain the lake. It would probably upset the ecosystem anyway. People would be without water![else]You can't see Leak Lake from here, and you couldn't do anything with it, anyway.[end if]"
"pot"	258928554	top opt pot	--	"The best--well, the only--way to change the top opt pot is to put something in it, but you haven't seen anything suitable yet."
"blub"	195757456	blub bulb	--	"Your anagramming prowess alone cannot change the blub bulb. Maybe somewhere along your journey, it can change into something new."
"renato"	461687833	--	got-pot rule	"You don't have time to think about, or change, Renato. [if top opt pot is moot]You got his present to his friend[else if Tetris Sitter is reflexed]You've found and made his friend a bit happier, but maybe you can do even more[else if Mesprise Premises is visited]His friend is still unreceptive, though[else]You haven't yet found anyone who might want the top opt pot, anyway[end if]."
"toaster"	592164309	toaster	--	"It's a pretty sturdy toaster, a useful appliance as-is. Nothing you do or think seems to change it."
"pastry"	490720816	--	pas-vis rule	"You need to be specific about which pastry--or you would, if any could be changed. All you can do with a pastry is eat it, once it's warmed."
"start"	390005623	start tarts	--	"[eat-pastry]." [pastry rejects]
"tart"	293731657	start tarts	--	"[not-singular-hp]."
"scalier"	429403966	Eclairs	--	"[eat-pastry]."
"eclair"	333130000	Eclairs	--	"[not-singular-hp]."
"brownie"	527736521	brownies	--	"[not-singular-hp]."
"brownies"	624010487	brownies	--	"[eat-pastry]."
"owers"	491691228	brownies	--	"[eat-pastry]."
"bin"	132319259	brownies	--	"[eat-pastry]."
"solve"	459411311	solve a loaves	--	"[eat-pastry]."
"loaves"	461599129	solve a loaves	--	"[eat-pastry]."
"loaf"	156869130	solve a loaves	--	"[not-singular-hp]."
"adder"	257375908	dreads adders	--	"You need to take care of all the adders." [guardian rejects]
"butler"	493578481	bluster butlers	--	"You need to deal with all the butlers. Not just one."
"diner"	348059355	diners	--	"[plutry of diners]There's more than one diner blocking you."
"pirate"	444886553	pirates	--	"[plutry of pirates]Changing just one pirate would not, you sense, do much. It might even ostracize him among his peers. Perhaps there's a way to deal with the lot of them. By adding an s."
"wait"	258225455	wait seer	--	"[wait-see]."
"seer"	437209987	wait seer	--	"[wait-see]."
"rampant"	407258077	mardier admirer	--	"No, just a mardier admirer, really."
"womantrap"	589545427	--	see-female-admirer rule	"No, just a mardier admirer, really."
"tailer"	417234433	realist tailers	--	"No, you need to deal with all the tailers."
"liam"	165069656	grailman	--	"[grail-name]."
"garn"	189018831	grailman	--	"[grail-name]."
"lars"	237599426	lars eede	--	"[reed-name]."
"eede"	404447416	lars eede	--	"[reed-name]."
"elsa"	280081732	elsa erde	--	"[reed-name]."
"erde"	361965110	elsa erde	--	"[reed-name]."
"reeds"	458239076	Reeds Ale	--	"[reed-ale]."
"reed"	361965110	Reeds Ale	--	"[reed-ale]."
"ale"	183807766	Reeds Ale	--	"[reed-ale]."
"reedale"	545772876	Reeds Ale	--	"[reed-ale]."
"sere"	437209987	Reeds Ale	--	"[reed-ale]."
"deal"	204836855	Reeds Ale	--	"[reed-ale]."
"lone"	324880033	lone duck	--	"It's not just any lone animal. It's a lone DUCK."
"duck"	198073659	lone duck	--	"It's not just any duck. [if duck is returned]But it's served its purpose[else]It's a LONE duck[end if]."
"idtag"	203919473	ID Tag	--	"ID tag: dig at it? Gad."
"unlocked"	522953692	--	duck-cant rule	"The lone duck looks around for something to do but can't find anything. Well, not here. And not like that."
"maturation"	653353366	natatorium	--	"The natatorium can't be changed. You need to save all your energy for the Curst Palace, anyway"
"thearchy"	534357183	hatchery	--	"The hatchery can't be changed. You need to save all your energy for the Curst Palace, anyway"
"coasting"	441430020	agnostic	--	"[Agnostic] looks at you curiously. You probably don't need to change [his-her] name or intelligence."
"scot"	292742146	--	agnostic-male rule	"[smart-agnostic-no]."
"agin"	148687874	--	agnostic-male rule	"[smart-agnostic-no]."
"staci"	265570233	--	agnostic-female rule	"[smart-agnostic-no]."
"ong"	175859787	--	agnostic-female rule	"[smart-agnostic-no]."
"save"	333432713	raves saver	--	"[no-fril]."
"saver"	418756516	raves saver	--	"[no-fril]."
"recorder"	625970878	raves saver	--	"[no-fril]."
"tape"	314569904	raves saver	--	"[no-fril]."
"buttosn"	569278799	raves saver	--	"The raves saver's minimal capabilities are enough...just..."
"buttno"	473004833	raves saver	--	"The raves saver's minimal capabilities are enough...just..."
"retape"	527699816	raves saver	--	"The raves saver has limited functionality, alas."
"dagger"	301546223	dagger	--	"You feel no energy from the dagger. Perhaps it needs to be repaired mechanically."
"gizmo"	338989896	gizmo	--	"[giz-tex]."
"zomg"	293997050	gizmo	--	"[giz-tex]."
"occurs"	399067323	succor crocus	--	"Changing the blub bulb to a succor crocus was good enough. Why risk more?"

table of Loftier Trefoil nudges [0 0]
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"trefoil"	515914088	--	--	"[towersloc]."
"picaro"	307328588	--	--	"[picaro-note]."
"picaros"	403602554	--	--	"[picaro-note]."
"deny"	340101958	--	--	"[all-rodney]."
"rend"	303066509	--	--	"[all-rodney]."

table of Topside Deposit nudges [1 0]
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"deposit"	549030564	--	--	"[towersloc]."
"fire"	284637654	--	--	"[ftf]."
"torn"	331693906	--	--	"[ftf]."
"frontier"	616331560	--	--	"[ftf]."
"htu"	245498124	--	--	"[no-hut]."
"south"	416124667	--	--	"[no-hut]."

table of Scope Copse nudges [1 1]
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"copse"	398904196	--	--	"[cop-sco]."
"spec"	324551619	--	--	"[cop-sco]."
"yurt"	415898880	yurts	--	"There's more than one yurt there."

table of Outer Route nudges [0 1]
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"roeut"	495698314	--	--	"[towersloc]."
"sway"	328755809	--	--	"You don't need to change the sway-ways. They are dangerous enough, and they don't lead anywhere useful"
"camp"	166734515	--	--	"[gosh-camp]!"
"site"	372182939	--	--	"[gosh-camp]!"
"campiest"	538917454	--	--	"[gosh-camp]!"
"repair"	427100338	--	--	"[rapier-mach]."
"machine"	364257318	--	--	"[rapier-mach]."
"shiny"	369815871	--	--	"[rapier-mach]."

table of Baldest Blasted Saltbed nudges [1 2]
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"baldest"	422639744	--	--	"[towersloc]."
"twes"	435124866	--	--	"[wets-no]."
"twe"	338850900	--	--	"[wets-no]."
"old"	149195505	old ice	--	"No, all the old ice."
"ice"	191804540	old ice	--	"No, all the old ice."

table of Anemic Cinema nudges [1 3]
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"cinema"	326975019	--	--	"[towersloc]."
"theater"	586626174	--	--	"You don't need to go looking for screens to stare at right now. You have a world to save."
"ingrate"	464927804	ingrates	--	"[plutry of ingrates]There's more than one ingrate blocking you." [the ingrates can only guard west of Anemic Cinema]

table of Fringe Finger nudges [0 3]
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"finger"	386144864	--	--	"[towersloc]."
"sled"	298923003	sled rut	--	"Work on the whole sled rut."
"rut"	293539628	sled rut	--	"Work on the whole sled rut."

table of Shaven Havens nudges [1 4]
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"shaven"	439622520	--	--	"[towersloc]."
"haven"	343348554	--	--	"[towersloc]."
"ravages"	453544036	--	--	"[rav-chao]."
"ravage"	357270070	--	--	"[rav-chao]."

table of Leveraged Everglade nudges [2 1]
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"leveraged"	685537398	--	--	"[towersloc]."
"leverage"	664508309	--	--	"[towersloc]."
"screech"	512503456	--	--	"[no-creche]."
"creech"	416229490	--	--	"[no-creche]."
"ego"	234758388	ego drains	--	"[ego-dr]."
"drains"	318715030	ego drains	--	"[ego-dr]. Plus, if they were boring old drains, you could just step around them."
"egodrain"	457199452	ego drains	--	"[ego-dr]."
"drain"	222441064	ego drains	--	"[ego-dr]. Plus, if it was a boring old drain, you could just step around."
"organized"	580169070	organised	--	"Nothing seems to happen. Then you remember organized can be spelled with an s and not a z."

table of Treading Gradient nudges [2 2]
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"gradient"	485956893	--	--	"[gradient-rej]."
"mended"	430653057	mended mini denim	--	"[prob-denim]."
"mini"	222968353	mended mini denim	--	"[prob-denim]."
"weed"	384576080	weeds	--	"Gumming up one weed wouldn't get the others."

table of Salted Deltas nudges [2 3]
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"salted"	404220839	--	--	"[towersloc]."
"delta"	307946873	--	--	"[towersloc]."
"shoals"	360184465	shoals	--	"[shoaly]."
"shoal"	263910499	shoals	--	"[shoaly]."
"atheist"	514763074	atheists	--	"Changing only one atheist would only help you so long. The rest would shortly restore their companion's (lack of) faith and conformism with their anticonformist ways."

table of Danger Garden nudges [3 1]
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"gander"	337854029	--	--	"[towersloc]."
"native"	454169119	natives site van	--	"[plutry of natives site van]You'll need to deal with more than one native to make your way south."
"geese"	512291995	--	bonker-gone rule	"The geese are fine as they are. They're just there for scenery, and stuff."

table of Lost Lots nudges [3 0]
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"lost"	327550400	--	--	"[towersloc]."
"lot"	231276434	--	--	"[towersloc]."
"gasfield"	405218265	--	--	"[gasgad]."
"gadfly"	258504596	--	--	"[gasgad]."
"gadflie"	308944299	--	--	"[gasgad]."
"riposte"	613325278	sporties ripostes	--	"You may find it easier to deal with all the ripostes at once."

table of Obscurest Subsector nudges [4 1]
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"obscurest"	725670736	--	--	"[towersloc]."
"locked"	348940377	--	--	"Nothing needs to be locked here, certainly not the gaol which [if Dr Yow is in ropins]already is[else]you unlocked[end if]."
"gol"	160766118	--	--	"[if luck node is not moot]The gaol is too sturdy to defeated by a three-word combination. Or a four-word one[else]You opened the gaol, and there's not much else to do with it[end if]."
"gaol"	162953936	--	--	"The gaol can't be changed, [if luck node is not moot]but maybe you could solve the luck node[else]and all you really needed to do was release Dr. Yow[end if]."
"loggaol"	323720054	--	--	"Nah, you're pretty sure you're overthinking things now. You [if duck is returned]opened[else]may want to open[end if] the prison."
"jail"	149955028	--	--	"It's not just any jail--but prison ropins."
"ropin"	355042693	--	--	"[no-ropin]."
"ropins"	451316659	--	--	"[no-ropin]."
"yow"	304646602	Dr Yow	--	"[he-she-c]'s a doctor! Have some respect when you try to scramble [him-her] up."
"doctor"	377173649	Dr Yow	--	"That is too formal. Plus, Dr. Yow worked hard for a Ph.D., and changing that would be kind of mean."
"wordy"	410999494	Dr Yow	--	"[wordy-rowdy-nudge]"
"tentative"	788195264	--	agnostic-can-learn rule	"[agnostic-first] is fully attentive. Don't ruin a good thing!"

table of Artist Traits Strait nudges [3 2]
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"strati"	434998469	--	--	"[towersloc]."
"trait"	338724503	--	--	"[could-cloud]."
"could"	273306897	--	--	"[could-cloud]."
"coulds"	369580863	--	--	"[could-cloud]."

table of Actionless Coastlines nudges [3 3]
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"actionless"	686724232	--	--	"[towersloc]."
"coastline"	590450266	--	--	"[towersloc]."
"bot"	195881500	bot boat	--	"[fix-boat-parts]."
"baot"	198069318	bot boat	--	"[fix-boat-parts]."
"boatbot"	393950818	bot boat	--	"[fix-boat-parts]."
"turbo"	386311110	turbos	--	"You [if turbos are reflexed]already dealt[else]need to deal[end if] with both turbos."
"wire"	366057531	weirder red wire	--	"The wires are okay. They're just organized WEIRDER."
"wires"	462331497	weirder red wire	--	"The wires are okay. They're just organized WEIRDER."

table of Rawest Waters nudges [4 3]
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"waster"	522636487	--	--	"Ew. Rats. You do feel like a waster, doing something with the waters. The [neaters] still seem to want to help you, though."
"spray"	387610798	--	--	"The spray will still drown you if you don't figure a way to move somewhere."
"water"	426362521	--	--	"The water is too elemental and generic to change. Plus the Wildest Wilteds are dry enough. How to get closer to the [neaters]?"
"neater"	515141365	--	--	"You need more than one Neater to help you."

table of Mislit Limits nudges [4 4]
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"mislit"	407258668	--	--	"[towersloc]."
"clays"	293640460	--	--	"[clay-pal]."
"caly"	197366494	--	--	"[clay-pal]."
"enip"	323172422	unripe ur pine	--	"It's officially an ur-pine, not a pine."
"repent"	594419506	repents serpent	--	"You're probably better of dispelling all the things to repent about at once, not just one."
"present"	690693472	--	serpent-hiding rule	"The serpent is taken care of."
"accurst"	430012582	accurst leap	--	"[focus-castle]."
"leap"	265273725	accurst leap	--	"[focus-castle]."
"clear"	288137154	clear catsup	--	"[focus-castle]."
"catsup"	407149153	clear catsup	--	"[focus-castle]."
"pest"	408656052	accrual	--	"[focus-castle]."
"accrual"	286630255	accrual	--	"[focus-castle]."
"cactus"	344688779	--	cppc rule	"[focus-castle]."
"pealr"	350597528	--	cppc rule	"[focus-castle]."
"capsule"	485659083	capsule cart	--	"[focus-castle]."
"cart"	209627224	capsule cart	--	"[focus-castle]."
"accu"	145304795	accu plaster	--	"[focus-castle]."
"plaster"	549981512	accu plaster	--	"[focus-castle]."
"last"	255385641	last acre cup	--	"[focus-castle]."
"race"	234323315	last acre cup	--	"[focus-castle]."
"cup"	205577351	last acre cup	--	"[focus-castle]."
"talc"	178117260	talc spa cure	--	"[focus-castle]."
"aps"	179927743	talc spa cure	--	"[focus-castle]."
"cure"	337241304	talc spa cure	--	"[focus-castle]."

table of Mesprise Premises nudges [3 4]
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"mesprise"	724017911	--	--	"[towersloc]."
"emprise"	627743945	--	--	"[towersloc]."
"teri"	361232776	--	teri-reflexed rule	"St. Teri is fine as-is. If she needs more changing, it will come from life experience."

table of Dire And Arid Den nudges
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"nerd"	303066509	Nerd Aid	--	"[nerd-a]."
"aid"	68209753	Nerd Aid	--	"[nerd-a]."
"bottles"	576885432	Nerd Aid	--	"They're not just bottles! They're bottles of NERD-AID!"

table of Dourest Detours nudges
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"detour"	516727403	--	--	"This may technically be a detour, but since the area name is 'detours,' you need some way to negate ALL the detours."
"samiel"	389149731	--	--	"There is more than one samiel to deal with, here."

chapter otters nudges

table of otters nudges
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"ly"	176173091	--	degen-true rule	"Yup, that's the idea here in Otters[if power-back is true], even with your powers back[end if]."
"cinder"	367064940	cinders	--	"You'll need to change more than one cinder."
"cinders"	463338906	--	cinders-gone rule	"The cinders are gone for good."
"citadel"	371945304	Edictal Citadel	--	"The whole Citadel? No, you [if power-back is false]couldn't do much with it at full strength[else]can't do much[end if]. [if Rancho Archon Anchor is visited]You need to tackle Elvira in there[else]Maybe you can surprise Elvira in there[end if], with help[if power-back is false] and your powers back[end if]. Plus, Elvira checked to make sure you couldn't do anything drastic to the Citadel."
"iq"	129398463	medals	--	"[both-medals]."
"lucky"	353217661	medals	--	"[both-medals]."
"medal"	268912008	medals	--	"It's what the medals say that makes them special."
"medals"	365185974	medals	--	"It's what the medals say that makes them special."
"vow"	289452170	vow here	--	"The [i]whole[r] vow here."
"here"	378218320	vow here	--	"The [i]whole[r] vow here."
"hydra"	268182261	--	hydra-know rule	"[if player has whistle]The hydra's toast. Elvira is not. Deal with her[else]You try, but that doesn't do anything with, or to, the hydra to the west[end if]."
"coma"	159621133	--	midden-n-s rule	"The coma camo remains as-is. It's probably made by A-COM, and all their products are quality."
"weltish"	571213850	whistle	--	"You [if whistle is reflexed]already figured how to play the whistle[else if player does not have whistle]can't do anything to the whistle until you have it[else]don't see anything happen. Then you note red writing on the whistle which might tell more about it[end if]."
"ottre"	493702525	--	degen-true rule	"[not-the-reg]."
"storet"	589976491	--	degen-true rule	"[not-the-reg]."

table of Minded Midden nudges
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"midden"	347839794	bleary barley	--	"[locname]."
"bare"	233736635	bleary barley	--	"[add-ly]."
"burtn"	380866041	nude dune	--	"[locname]."
"dune"	322848513	nude dune	--	"You can't really shift the dune, but you don't need to."
"lyier"	434295849	Ed Riley	--	"Ed's full name, please!"
"reedi"	406957956	Ed Riley	--	"[add-ly]."
"reedy"	484324362	Ed Riley	--	"[add-li]."
"steward"	543665576	Ed Riley	--	"Hm, you only managed to deal with adverbs so far, and steward doesn't have an L or Y. Maybe look at him for clues? Remember his name?"
"asteward"	545853394	Ed Riley	--	"Hm, you only managed to deal with adverbs so far, and steward doesn't have an L or Y. Maybe look at him for clues? Remember his name?"
"rye"	335489164	deli rye	--	"[del-ry]."
"lied"	247641883	deli rye	--	"[del-ry]."
"sandwich"	397613884	deli rye	--	"[del-ry]."

table of Disowned Downside nudges
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"downside"	562325957	--	--	"[locname]."
"sample"	425622844	--	--	"[maples-no]."
"maple"	329348878	--	--	"[maples-no]."
"bossy"	407678666	t-bossily	--	"[add-li]."
"bossi"	330312260	t-bossily	--	"[add-ly]."
"nasti"	315472156	t-nastily	--	"[add-ly]."
"nasty"	392838562	t-nastily	--	"[add-li]."
"seedi"	417908119	t-seedily	--	"[add-ly]."
"seedy"	495274525	t-seedily	--	"[add-li]."
"terse"	540320005	t-tersely	--	"[add-ly]."
"angri"	234011677	t-angrily	--	"[add-ly]."
"angry"	311378083	t-angrily	--	"[add-li]."
"shadi"	201766018	t-shadily	--	"[add-ly]."
"shady"	279132424	t-shadily	--	"[add-li]."
"snide"	359009518	t-snidely	--	"[add-ly]."
"stark"	339828783	t-starkly	--	"[add-ly]."
"tacit"	272406285	t-cattily	--	"[add-ly]."
"catty"	349772691	t-cattily	--	"[add-li]."
"teari"	363420594	t-tearily-irately	--	"[add-ly]."
"teary"	440787000	t-tearily-irately	--	"[add-li]."
"bleayr"	409909726	t-blearily	--	"[add-li]."
"bleari"	332543320	t-blearily	--	"[add-ly]."
"ribald"	225766300	t-ribaldly	--	"[add-ly]."
"formal"	306268086	t-formally	--	"[add-ly]."
"coital"	297462683	t-coitally	--	"[add-ly]."
"modest"	486646912	t-modestly	--	"[add-ly]."
"shabbi"	217574739	t-shabbily	--	"[add-ly]."
"shabby"	294941145	t-shabbily	--	"[add-li]."
"shoddi"	294959866	t-shoddily	--	"[add-ly]."
"shoddy"	372326272	t-shoddily	--	"[add-li]."
"silent"	494904286	t-silently	--	"[add-ly]."
"steami"	438445910	t-steamily	--	"[add-ly]."
"steamy"	515812316	t-steamily	--	"[add-li]."
"sudden"	440151568	t-suddenly	--	"[add-ly]."
"stupdi"	451977685	t-stupidly	--	"[add-ly]."
"martial"	355691295	t-martially	--	"[add-ly]."
"sincere"	570115926	t-sincerely	--	"[add-ly]."
"sobbing"	353964409	t-sobbingly	--	"[add-ly]."
"tedious"	572670412	t-tediously	--	"[add-ly]."
"wearing"	469752559	t-wearingly	--	"[add-ly]."
"desperate"	772808980	t-desperately	--	"[add-ly]."
"drawling"	416789378	t-drawlingly	--	"[add-ly]."
"emotional"	613598445	t-emotionally	--	"[add-ly]."
"reactive"	617397108	t-reactively	--	"[add-ly]."
"despairing"	605579646	t-despairingly	--	"[add-ly]."
"indiscreet"	739247879	t-indiscreetly	--	"[add-ly]."
"parley"	472956780	players	--	"You need[if players are reflexed]ed[end if] to deal with all the players to knock them back a peg."
"amck"	138201734	--	players-macked rule	"If you messed with one [pla-ma], the others would gang up on you. Work on the argument, instead."
"amcks"	234475700	--	players-macked rule	"Hm, you probably can't change the [pla-ma]s. They're dead set in their ways. Perhaps you can reframe what they are saying[if gretta-score > 0] some more[end if]."
"gretta"	454137468	Gretta	--	"Enough people are trying to manipulate Gretta. [if parleys splayer players are touchable]Deal with them directly[else]Listen to what she has to say, instead[end if]."

table of Shiner Shrine nudges
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"shiner"	460586531	--	--	"[locname]."
"simply"	462981015	sly imp	--	"It's acting simply, but it can't be gotten rid of that simply. At least, nothing happens when you try. Maybe you need to consider more specific ways it's moving."
"sly"	272447057	sly imp	--	"[imp-sly]."
"imp"	190533958	sly imp	--	"[imp-sly]."
"averts"	521866534	sly imp	--	"You need to focus on HOW the imp averts, vaster."
"avert"	425592568	sly imp	--	"You need to focus on HOW the imp averts, vaster."
"brute"	439764642	butlery	--	"[add-ly]."
"enraged"	465660138	legendary	--	"[add-ly]."
"remote"	582473769	motleyer	--	"[add-ly]."

table of Clarthead Cathedral nudges
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"cathedral"	451746378	--	--	"[locname]."
"whiner"	472247338	--	--	"[whiney]."
"whiners"	568521304	--	--	"[whiney]."
"loathing"	417246607	tallyhoing	--	"[add-ly]."
"stoic"	337734992	callosity	--	"Usually, you'd need to add two letters, but here you'd need to add four."
"stoical"	393736649	callosity	--	"[add-ly]."
"jolti"	325229805	--	--	"[add-ly]."
"jolty"	402596211	--	--	"[add-li]."

table of Loop Pool nudges
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"pool"	283984952	--	--	"[locname]."
"allot"	287278091	--	--	"[if eels are reflexed]You already made it there, and you don't need to go back[else]You don't need to change it, and the eels might not like it if you did[end if]."
"wier"	366057531	--	--	"The wire weir doesn't need to be changed."
"sea"	226267893	sea cube	--	"[cube-whole]."
"cube"	270336406	sea cube	--	"[cube-whole]."

table of Bran Barn nudges
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"barn"	174838034	--	--	"[locname]."
"infidel"	388057133	--	--	"The infidel infield is Mr. Lee's, and it expresses things from his perspective. So it doesn't need changing."

table of Lamer Realm nudges
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"lamer"	333206722	--	--	"[locname]."
"blest"	399422837	--	realm-saved rule	"[locname]."
"belt"	303148871	--	realm-saved rule	"[locname]."
"ocelot"	452440705	ocelots	--	"The ocelots are sticking together. You don't want or need to pick one off."
"low"	236101189	owls	--	"You probably want the owls not to swoop low. And you'll want to take care of them all."
"saturnic"	524907351	--	--	"The curtains are too solid to change."
"aturnic"	428633385	--	--	"Even one curtain is too solid to change."
"shades"	380853247	--	--	"You're not here to mess with fashion. Plus, the shades were last game."
"clipons"	438812280	slopinc	--	"The ocelots would still be awkward even if they lost the clip-ons."
"kool"	255452171	Look Kool	--	"You're not here to mess with fashion."

table of Perverse Preserve nudges
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"preserve"	838970678	--	--	"[locname]."
"uprate"	504999514	--	preserve-saved rule	"[locname]."
"uprates"	601273480	--	preserve-saved rule	"[locname]."
"lit"	201916703	a lit tail	--	"[lit-no]."
"tail"	204104521	a lit tail	--	"[lit-no]."
"pine"	323172422	pines	--	"So many pines, hard to pick one. Might as well take care of them all."
"nail"	169902011	nails	--	"So many nails, hard to pick one. Might as well take care of them all."
"critters"	664946148	--	--	"[restrictr]."
"critter"	568672182	--	--	"[restrictr]."
"raccoon"	343135453	--	--	"[if corona is touchable]The corona seems to waver, the 'c' in it vanishing and reappearing, as if it isn't really important.[slider-activate][else]No need to tweak the rac(c)oon again. It's fine as is.[end if]" [slider test raccoon]
"throne"	496782314	thrones	--	"There's more than one throne, but it doesn't matter, really, for what you need to do."

table of Reclusion Inclosure nudges
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"inclosure"	675582040	--	--	"[locname]."
"enclosure"	758395303	--	--	"[locname]."
"alcoves"	480604714	--	--	"[whole-citadel of 2]."
"alcove"	384330748	--	--	"[whole-citadel of 1]."
"idea"	196015862	Merle	--	"[if aside-llp is moot]You already pushed them aside[else]You might be able to disrupt both of them, not just one[end if]."
"ideas"	292289828	--	aside-yet rule	"[e-n-m] aren't the type to get fooled that way again. [if holy nest is moot]You got them twice, and that's enough[else]Maybe there's another way to pull their chain, though[end if]."
"monstery"	742208386	--	--	"[w-change]."
"monastery"	744396204	--	--	"[w-change]."
"eelmr"	458825013	--	eelmr rule	"[eelmry]."
"sober"	402175360	Merle	--	"[e-m-aux]."
"bored"	326930483	Merle	--	"[e-m-aux]."
"bore"	305901394	Merle	--	"[e-m-aux]."
"scowl"	351380740	Merle	--	"[e-m-aux]."
"cowl"	255106774	Merle	--	"[e-m-aux]."
"laminas"	332438948	--	--	"[no-lam]."
"lamina"	236164982	--	--	"[no-lam]."
"forces"	429276936	--	--	"[fresc]."
"forec"	333002970	--	--	"[fresc]."
"hidings"	346078256	--	hidings-dishing rule	"[locname]."
"hiding"	249804290	--	hidings-dishing rule	"[locname]."

table of Rancho Archon Anchor nudges
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"crone"	375395582	--	--	"You can't do much with Elvira's 'real' name. Or her ex-hydra's. You need to act."
"archon"	287059590	--	--	"It can't be as easy as changing the Rancho. Elvira wouldn't be so careless to allow THAT. You figure you probably need help."
"tripod"	410274292	--	--	"[rancho-scen]."
"becharm"	354099672	--	--	"[rancho-scen]."
"nacht"	230493228	--	--	"It's annoying and unswayable, like most chants."
"stocked"	494510522	--	--	"[no-stockade]."
"vats"	308736622	--	--	"[rancho-scen]."
"vat"	212462656	--	--	"[rancho-scen]."
"moisture"	701040279	--	--	"[rancho-scen]."
"pyre"	416955123	--	--	"[rancho-scen]."
"stockade"	496698340	--	--	"[no-stockade]."
"warship"	455461464	--	--	"[elv-mach]."
"amulet"	456098744	--	--	"[one-toy]."
"ultimate"	604201608	--	--	"[one-toy]."
"shaper"	430339954	--	--	"[one-toy]."
"purple"	534981476	--	--	"[elv-mach]."
"oranger"	476501320	--	--	"[elv-mach]."

["disrupt"	537301488	--	--	"You can never fight stupid. You don't need to, here."]
["studip"	451977685	--	--	"You can never fight stupid. You don't need to, here."]

chapter others nudges

table of others nudges
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"other"	427874806	--	--	"[not-the-reg]."
"storeh"	524148772	--	--	"[not-the-reg]."
"needle"	527168763	compass	--	"The needle is working fine. No need to meddle."
"tekno"	427109390	tekno token	--	"There's enough credit on the token. Don't get greedy."
"icon"	207258516	coins	--	"Hmm. You could probably do something with just one coin, or you could do something with all of them."
"singed"	391609220	singed design	--	"The design is sort of glommed onto the [coin-icon]. So you should figure what to do, there."
"designs"	487883186	singed design	--	"The design doesn't need changing. It's what the design's on."
"lots"	327550400	So Great storage	--	"[slot-no]."
"storage"	521653993	So Great Storage	--	"You might break what is in the storage."
"great"	351027450	So Great Storage	--	"You might break what is in the storage. Then it would be neither great nor so great."
"passport"	620454066	passport	--	"The passport is fine as it is, full of practical knowledge to look at it. You wonder if perhaps the [if viewer is reflexed]searcher[else if searcher is reflexed]viewer[else]viewer or searcher[end if] might contain more information."
"popstar"	524180100	passport	--	"You don't know whose passport it was, but it's yours now, and you need to study it, not just hope to be a pop star."
"bluer"	390468463	tekno token	--	"That doesn't really describe the Tekno-Token."
"repp"	376061830	--	perp-moot rule	"You don't want to bring back that fleeing feeling whispering 'PERP.' Not in any form. [if gate-level is 1]There's got to be another way or two to prep, though[else]Just go north through the gates[end if]."
"lola"	184168073	dr lola	--	"[count-enuf]."
"drol"	234519308	lord al	--	"[count-enuf]."
"droll"	288333147	dollar	--	"[count-enuf]."
"dollar"	290520965	dollar	--	"[count-enuf]."
"guava"	249245965	guava	--	"The guava doesn't need to be changed. Curtis will be happy with it."
"kumquat"	516923398	kumquat	--	"The kumquat is in good enough shape. Just return it to Curtis."
"feeling"	482441009	fleeing feeling	--	"You can't shake the fleeing feeling, and it's not just a general one. It says to you, PERP, PERP, PERP."

table of Rustic Citrus nudges
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"rustic"	453812025	--	--	"You can't change this clearing or Curtis, but you don't need to."
"greenish"	620992342	--	--	"The greenish sheering can't be changed. Killing all those trees and plants would be bad for the environment, anyway. [if compass is off-stage]Perhaps if you had a sense of direction, you could figure how to leave[else]So you can only exit to the north[end if]."
"arugula"	386324594	arugula	--	"The arugula is just for eating, so you can change something else that's been stumping you."
"pear"	296783689	spear	--	"[plur-fruit]."
"plum"	304460758	lumps	--	"[plur-fruit]."
"pager"	329383391	pagers	--	"[plur-fruit]."
"lime"	290687947	slime	--	"[plur-fruit]."
"harmonica"	398315407	harmonicas	--	"The harmonicas seem stuck together, so you probably have to deal with both of them."
"circuit"	421536490	--	--	"[ru-ci]."
"circuits"	517810456	--	--	"[ru-ci]."
"rtu"	293539628	--	--	"[ru-ci]."
"ruts"	389813594	--	--	"[ru-ci]."
"eerie"	513734976	eerie blurbs	--	"[whole-item]."
"blurbs"	377355225	eerie blurbs	--	"[whole-item]."
"megaton"	473038885	mopeage rant	--	"[part-of-pom]."
"pera"	296783689	mopeage rant	--	"[part-of-pom]."
"magenta"	400874126	mopeage rant	--	"[part-of-pom]."
"roep"	368948448	mopeage rant	--	"[part-of-pom]."
"rampage"	395646362	mopeage rant	--	"[part-of-pom]."
"note"	374176212	mopeage rant	--	"[part-of-pom]."
"mopeage"	510293427	mopeage rant	--	"[part-of-pom]."
"rant"	259529147	mopeage rant	--	"[part-of-pom]."
"omen"	335141347	omen prism	--	"[full-omen-prism]."
"prism"	372131727	omen prism	--	"[full-omen-prism]."
"dam"	87292060	mad train	--	"[whole-item]."
"train"	304521993	mad train	--	"[whole-item]."
"peanut"	488583219	peanut cola	--	"[whole-item]."
"cola"	149359819	peanut cola	--	"[whole-item]."
"moss"	330975662	moss cap	--	"[whole-item]." [stuff gotten from Curtis]
"cap"	102659362	moss cap	--	"[whole-item]."

table of Swell Wells nudges
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"well"	343368560	--	--	"[locname]."
"wells"	439642526	--	--	"[locname]."
"mound"	333470134	--	--	"The mound is just for descending. You don't need to change it."
"riot"	307779244	riot cap	--	"[whole-item]."
"elp"	263085907	Elp PSA	--	"The whole [']Elp PSA."
"pas"	179927743	Elp PSA	--	"The whole [']Elp PSA."
"sorer"	469080258	sorer bogey	--	"[whole-item]."
"bogey"	375536545	sorer bogey	--	"[whole-item]."
"stucco"	416853538	stucco	--	"Stucco? No. ScoutCon, the message... (You see red recognizing what you should be chasing)."
"tangerine"	661641421	green stain	--	"The green stain could make just one fruit, but why not think bigger? It could become many."
"green"	442443231	green stain	--	"[whole-item]."
"stain"	315472156	green stain	--	"[whole-item]."
"cpa"	102659362	riot cap	--	"[whole-item]."
"miser"	418471877	miser ruble	--	"[whole-item]."
"ruble"	390468463	miser ruble	--	"[whole-item]."

table of Filed Field nudges
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"fidle"	274156779	--	--	"[locname]."
"foliage"	362267787	foliage	--	"Alas, the foliage also blocks your magical powers and not just your explorations, but [if number of flippable things in Filed Field > 0]there's plenty else to work at[else]no big deal. You took care of everything else[end if] here."
"fail"	127509399	--	--	"There's no way to chop the foliage down, but you don't need to."
"eog"	234758388	--	--	"There's no way to chop the foliage down, but you don't need to."
"barriers"	545651053	barriers west	--	"The barriers['] westness is important."
"barber"	337479343	barber sickle	--	"[whole-item]."
"sickle"	394825523	barber sickle	--	"[whole-item]."
"buried"	402676559	buried raft	--	"[whole-item]."
"raft"	217136535	buried raft	--	"[whole-item]."
"liepen"	504792370	pipe panel	--	"[whole-item]."
"lieapp"	391732530	pipe panel	--	"[whole-item]."
"penapp"	443299312	pipe panel	--	"[whole-item]."
"lie"	226612794	pipe panel	--	"[whole-item]."
"pen"	278179576	pipe panel	--	"[whole-item]."
"app"	165119736	pipe panel	--	"[whole-item]."
"piep"	335730873	pipe panel	--	"[whole-item]."
"panel"	334181233	pipe panel	--	"[whole-item]."
"drupelet"	705460733	pryer bars	--	"[no-pryer]."
"drupelets"	801734699	pryer bars	--	"[no-pryer]"
"pryerbar"	608209452	pryer bars	--	"No, it's [i]both[r] pryer bars."
"pryer"	502278926	pryer bars	--	"[whole-item]."
"bars"	202204492	pryer bars	--	"[whole-item]."
"rapt"	272087598	rapt figure	--	"[whole-item]."
"figure"	422343163	rapt figure	--	"[whole-item]."
"utensil"	600010093	rapt figure	--	"[rapt-glare]."
"spono"	395352587	rapt figure	--	"[rapt-glare]."
"jagged"	265182945	jagged spoon	--	"[rapt-glare]."
"briar"	236247175	briar screen	--	"[whole-item]."
"briars"	332521141	briar screen	--	"[whole-item]."
"screen"	525123080	briar screen	--	"[whole-item]."

table of Clangier Clearing nudges
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"clearing"	434637210	--	--	"[locname]."
"len"	250527456	--	--	"[len-part]."
"craig"	184109754	--	--	"[len-part]."
"price"	358594302	--	--	"[if kumquat is off-stage]Hm, no, the pattern of prices[else]No, you already helped correct the prices precis[end if]."
"overpriced"	774270700	peach	--	"[if peach is reflexed]No need to change now, and that's not the right way[else]That's over-thinking it. It's just a peach[end if]."
"lemon"	388955186	--	lemnomel rule	"You can't focus on just one of the lemons, but you don't need to." [this needs to be here if you got LEMON but not MELONS]
"nameless"	637144468	--	--	"You can't do anything other than listen to the nameless salesmen, and you don't need to move them out of the way."
"superstore"	982842117	--	--	"It's an eyesore, but unlike the Curst Palace, people are still in it--so destroying it would mean big problems. Best to concentrate on the open-air market."
"auction"	417662159	caution	--	"[papay]."
"banner"	371551651	caution	--	"[papay]."

table of Scape Space nudges
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"space"	326739437	--	--	"[locname]."
"pace"	230465471	--	trader-gone rule	"[locname]." [once reeves appears it is the Paces Space]
"trader"	424780640	--	--	"[greedy-s] is tarred real good. That's the point of tarring. But [if storage is not in scape space]you got what you wanted[else][he-she] might trade that So-Great Storage[end if]."
"drawing"	362975539	--	--	"The drawing can't be changed. It's stuck to the wall as a warning."
"art"	190621639	Art Erd	--	"[1st-name]."
"red"	234159001	Art Erd	--	"[1st-name]."
"tera"	318427748	Tera Darter	--	"[1st-name]."
"brrhub"	349873522	a brr hub	--	"[hub-a]."
"banna"	160609557	banna	--	"It's [i]a[r] banna[']. The puzzle here is criminally corny, but it's not criminal like [greedy-person]."
"severe"	672180916	Dr Severe	--	"You need to change Dr. Severe, title and all."

table of Gates Stage nudges
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"gates"	361977613	--	--	"[no-gate]."
"gate"	265703647	--	--	"[no-gate]."
"sagest"	458251579	--	--	"[no-gate]."
"halt"	196393974	--	--	"[if player has passport]The halt lath is ineffective, now you have the passport[else]The halt lath remains firm. Maybe you actually need some old-fashioned key-in-lock action[end if]."
"arean"	286413056	--	--	"[val-chg]."
"nera"	284225238	--	--	"[val-chg]."
"valence"	506691788	--	--	"[val-chg]."
"roping"	387642395	--	--	"You don't need to grapple with the roping, and you don't need the roping to grapple with you."

chapter demo dome nudges

table of demo dome nudges
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"demo"	287262928	--	degen-true rule	"Museums are designed to be impassive and impermeable, for the most part. This is full of exhibits--your questing days are over."

table of Peek Keep nudges
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"peek"	390011355	--	--	"[dome-rm]."
"flashed"	364908016	--	--	"[its-a-museum]."
"shefl"	341691109	--	--	"[its-a-museum]."
"design"	391609220	--	--	"[its-a-museum]."
"deign"	295335254	--	--	"[its-a-museum]."
"sgni"	242774022	--	--	"[no-mess]."
"ertyn"	507506690	--	--	"[no-mess]."
"unfold"	349723716	--	--	"[no-mess]."
"memoir"	460625641	--	--	"[no-mess]."
"shall"	243371761	--	--	"You can't get near the shall halls, although you still have the nonmagical ability to change the future. Well, some day you will."
"greta"	351027450	--	--	"It was tested to make sure even you couldn't magic it open."
"talks"	308318819	--	--	"[its-a-museum]."
"talk"	212044853	--	--	"[its-a-museum]."
"spce"	324551619	--	--	"[its-a-museum]."
"speca"	326739437	--	--	"[its-a-museum]."
"display"	422122769	spy dial display	--	"[no-fig-code]."
"spy"	300099177	spy dial display	--	"[no-fig-code]."
"dial"	122023592	spy dial display	--	"[no-fig-code]."

table of disport tripods nudges
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"tripods"	506548258	--	--	"[its-a-museum]."
"tripdo"	410274292	--	--	"[its-a-museum]."

table of Evoc Cove nudges
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"evoc"	328329091	--	--	"[dome-rm]."
"novella"	488046510	--	--	"[no-no]"
"lol"	181980255	--	--	"[no-no]."
"neva"	306066255	--	--	"[no-no]."

table of Hows Show nudges
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"hows"	315843615	--	--	"[dome-rm]."
"chest"	383477977	--	--	"[its-a-museum]."
"raised"	377613631	--	--	"[its-a-museum]."
"aider"	281339665	--	--	"[its-a-museum]."
"coder"	327517163	--	--	"[its-a-museum]."
"tech"	287204011	--	--	"[its-a-museum]."

table of Ned's Dens nudges
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"neds"	314016672	--	--	"You suddenly feel a desire to play an entirely different Andrew Schultz game. But you don't know which one! There are so many awesome ones!"
"chicloner"	530490151	--	--	"[no-no]!"
"icch"	120286315	--	--	"[no-no]!"
"ernol"	410203836	--	--	"[no-no]!"

table of Intel Inlet nudges
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"intel"	398630320	--	--	"[dome-rm]."
"calendar"	380261569	--	--	"[these-docs]."
"thesis"	505739204	--	--	"[these-docs]."
"passe"	404007818	--	--	"[passe-control]."
"apse"	307733852	--	--	"[passe-control]."

table of Sparse Spares nudges
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"sparse"	489331621	--	--	"[dome-rm]."
"spare"	393057655	--	--	"[dome-rm]."
"boltcase"	494968817	--	--	"[its-a-museum]."
"best"	345608998	--	--	"[its-a-museum]."
"calo"	149359819	--	--	"[its-a-museum]."
"btol"	249695339	--	--	"[its-a-museum]."
"case"	245273478	--	--	"[its-a-museum]."
"trifle"	441561511	--	--	"[its-a-museum]."
"dustpan"	478080165	--	--	"[its-a-museum]."
"scalpit"	400850031	--	--	"[its-a-museum]."
"clasp"	252747167	--	--	"[its-a-museum]."
"placer"	369603113	--	--	"[its-a-museum]."
"scalper"	465877079	--	--	"[its-a-museum]."
"rudest"	538648792	--	--	"[its-a-museum]."
"ladder"	311189747	--	--	"[its-a-museum]."
"bulk"	230271729	--	--	"Bulk-Klub's credibility took a hit once Elvira got on their board of directors, and it may need some fundamental reorganization, but you vowed to use your wits and not your wordplay power for that."

chapter general nudges

table of general nudges
this-cmd	hashval	this-item	this-rule (rule)	this-clue
"elvira"	421289235	--	elvira-here rule	"Changing Elvira is impossible, [if player is in Rancho Archon Anchor]even now you've resisted her first attack[else]and you certainly don't want to summon her[end if]."
"yorpwald"	548467110	--	degen-true rule	"You can't just unjumble Yorpwald with just one word. You need to deal with individual things."
"settler"	697243862	settler	--	"[no-set]."
"mark"	204519952	settler	--	"[no-set]."
"recoded"	476352361	settler	--	"[no-set]."
"deviser"	610396742	settler	--	"[no-set]."
"backside"	382647496	settler	--	"[no-set]."
"decla"	223842440	settler	--	"[no-set]."
"buntot"	473004833	settler	--	"[no-set]."
"receptor"	704193963	settler	--	"[no-set]."
"receptors"	800467929	settler	--	"[no-set]."
"output"	572250186	settler	--	"[no-set]."
"displya"	422122769	settler	--	"[no-set]."
"equals"	469593156	settler	--	"[no-set]."
"logo"	235118695	settler	--	"[no-set]."
"which"	246497802	settler	--	"[no-set]."
"whichs"	342771768	settler	--	"[no-set]."
"teach"	289391829	settler	--	"Aw, man, a third option for the settler wouldn't be fair. [if Elmo is off-stage]Trust me, i[else]I[end if]t's powerful enough as-is."
"igns"	242774022	settler	--	"You don't need to mess around with the sign on the settler, or any sign, except maybe one place[if hops shop is unvisited], which you'll know when you see it[else if gins sign is reflexed], and you already did something[else], where you took the chance[end if]."
"slider"	429239652	settler	--	"You can just switch the slider if you want to manipulate it."
"purse"	495975644	super purse	--	"The purse is just fine as it is."
"sacep"	326739437	super purse	--	"You don't want to mess with the space-capes. They work."
"treatise"	690610687	treatise	--	"The treatise [if settler is off-stage]is[else]was[end if] there as help to discover [if settler is off-stage]what's in the latches[else]the satchel. It has only sentimental value, now[end if]."
"gird"	183945440	gird grid	--	"The grid already contains pretty much everything Elmo was able to find out."
"writing"	487861496	red writing	--	"[red-wri]."
"redwriting"	722020497	red writing	--	"[red-wri]."
"edr"	234159001	red writing	--	"[red-wri]."
"lalw"	217750269	--	in-innie rule	"[innies]."
"walls"	314024235	--	in-innie rule	"[innies]."
"terry"	523922985	--	past-strip rule	"You don't have any special tricks with RETRYing. Just do so if you're in a store and stuck."
"northwest"	804101071	--	degen-true rule	"[diag-dir-rej]."
"northeast"	698354116	--	degen-true rule	"[diag-dir-rej]."
"southeast"	745502578	--	degen-true rule	"[diag-dir-rej]."
"southwets"	851249533	--	degen-true rule	"[diag-dir-rej]."
"down"	272223947	--	degen-true rule	"This game doesn't usually require you to mess with directions you can go."
"norht"	368976205	--	degen-true rule	"[dir-rej]."
"souht"	416124667	--	degen-true rule	"[dir-rej]."
"eats"	329377911	--	degen-true rule	"[dir-rej]."
"ewts"	435124866	--	degen-true rule	"[dir-rej]."
"pedanto"	478859078	--	degen-true rule	"You don't need to change the pedanto-notepad, except maybe by filling it up with ideas[if-no-pad]."
"warning"	410853958	--	degen-true rule	"You can't change warnings. Warnings are there to protect you. Even offer hints if you read them."
"gadget"	319332438	--	degen-true rule	"[so-last]."
"xyyzz"	603425821	--	degen-true rule	"[xyzzys]"
"plugh"	310267606	--	degen-true rule	"[xyzzys]"
"plover"	529927107	--	degen-true rule	"[xyzzys]"
"iths"	281659129	--	degen-true rule	"[major-swear]!"
"kcuf"	203559466	--	degen-true rule	"[major-swear]!"
"mand"	156199568	--	degen-true rule	"[major-swear]!"
"lelh"	272716086	--	degen-true rule	"[major-swear]!"
"parc"	187983165	--	degen-true rule	"[major-swear]!"
"heck"	237027171	--	degen-true rule	"[major-swear]!"
"curses"	529789236	--	degen-true rule	"[mild-swear]!"
"bother"	446293711	--	degen-true rule	"[mild-swear]!"
"bastard"	328531417	--	degen-true rule	"[mild-swear]!"
"ground"	387318486	--	degen-true rule	"Changing the ground beneath your feet is too dangerous a proposition."
"jump"	299607444	--	degen-true rule	"You consider the costs and benefits of collapsing in an impressively uncoordinated heap, then decide against doing so."
"point"	372828908	--	know-point rule	"There's no secret cheat between NO TIP and OPT IN."
"parse"	393057655	--	can-i-parse rule	"There's no in-between for the PARSE and SPARE commands for the settler."
"verb"	338713637	--	degen-true rule	"[no-special-verb]."
"verbs"	434987603	--	degen-true rule	"[no-special-verb]."
"think"	307225849	--	degen-true rule	"Whenever you just try to too hard to think, things always get jumbled."
"score"	402762040	--	degen-true rule	"There's no way to scramble your score. And scoring another point won't help you solve things, anyway."
"poss"	348366468	--	degen-true rule	"You can't jumble the possible scores any other way."
"listen"	494904286	--	degen-true rule	"Trying to change how you listen gives no intels."
"about"	303175125	--	degen-true rule	"The 'about' [dir-cut]."
"credits"	497541416	--	degen-true rule	"The 'credits' [dir-cut]."
"credit"	401267450	--	degen-true rule	"The 'credits' [dir-cut]."
"history"	563694761	--	degen-true rule	"The 'history' [dir-cut]."
"hush"	275944371	--	degen-true rule	"[meta-rej]."
"spaceson"	566273488	--	degen-true rule	"[meta-rej]"
"spaceon"	469999522	--	degen-true rule	"[meta-rej]."
"spaces"	423013403	--	degen-true rule	"[meta-rej]."
"paces"	326739437	--	degen-true rule	"[meta-rej]."
"son"	239534051	--	degen-true rule	"[meta-rej]."
"hitn"	254292671	--	degen-true rule	"[meta-rej]."
"hints"	350566637	--	degen-true rule	"[meta-rej]."
"access"	360553029	--	degen-true rule	"[meta-rej]."
"exit"	388677054	--	degen-true rule	"[meta-rej]."
"exits"	484951020	--	degen-true rule	"[meta-rej]."
"opts"	355202520	--	degen-true rule	"[meta-rej]"
"options"	543455451	--	degen-true rule	"[meta-rej]"
"version"	604821629	--	degen-true rule	"[meta-rej]"
"something"	649400178	--	degen-true rule	"Instead of messing with SOMETHING, maybe you can examine what the something is on."

book auxiliary text and rules

chapter ordeal reload auxiliary

to say not-the-reg:	say "Trying to change the current region you're in all at once would be risky, or useless, or maybe both"

section dusty study auxiliary

to say locname: say "You don't need to riff on any location names to win the game, unless there's not that much else to see[if bogus-plains is reflexive and oyster is unsolved]. You may get a last lousy point from doing so in one place, if you're observant, though[end if]"

this is the perrot-yet rule:
	if player is in Dusty Study and knockage is true, the rule succeeds;
	the rule fails;

this is the perrot-left rule:
	if player is in Dusty Study and Report Porter Perrot is moot, the rule succeeds;
	the rule fails.

this is the x-oped rule:
	if dope op ed is examined, the rule succeeds;
	the rule fails;

to say vs-oped: say "You try and twist Elvira's words or poke holes where they're wrong...and you can't. Sheesh"

this is the x-oped-m rule:
	if the player is female, the rule fails;
	if dope op ed is examined, the rule succeeds;
	the rule fails;

this is the x-oped-f rule:
	if the player is male, the rule fails;
	if dope op ed is examined, the rule succeeds;
	the rule fails;

to say the-books: say "The books could use some changing. But you're better off making Yorpwald itself safe for art, good or bad, first"

this is the dark-study rule:
	if player is in Dusty Study and study is dark, the rule succeeds;
	the rule fails.

to say dark-palm: say "[one of]You punch your fist as you realize DARK has no anagrams...right into the palm[or]Oh no, not again. Concentrate on the palm[stopping]"

to say g-pin: say "It's more that it's a giant pin and not, like, a safety pin";

this is the study-see-basement rule:
	if player is in Dusty Study and meet bans is not in Dusty Study, the rule succeeds;
	the rule fails;

this is the study-see-stable rule:
	if player is in Dusty Study and tables are not in Dusty Study, the rule succeeds;
	the rule fails;

to say w-twi: say "The ads have probably gone through enough word-twisting"

section largely all-grey gallery auxiliary

to say locname-part: say "You should never need to riff on part of a location name[if bogus-plains is reflexive and oyster is unsolved], though you may get a last lousy point from doing so if you're observant[end if][one of], so that's one less thing to worry about, I hope[or][stopping]"

to say hisin: say "The high sign is a clue. Bad idea to change it"

this is the elmo-chat rule:
	if qbc_litany is table of elmo comments, the rule succeeds;
	the rule fails;

section carven cavern auxiliary

to say curtain-block: say "The act-ruin curtain is unmoved. Maybe the stuff that blocked it could help you more, here";

chapter stores auxiliary

section strip of profits auxiliary

to say no-cand: say "Nothing happens. You'd think that store would be a good candidate to change, but it isn't"

to say so-last: say "That was soooo last game! Not that Shuffling Around was lame. I mean, I wrote it, and all. Just, I got even better at writing since then, and I wrote in newer awesomer adventures";

to say no-way: say "Nothing happens. The store remains impassive and dark. It doesn't look worth meddling with, anyway"

to say shell-no: say "The shells don't move. Perhaps they are just a clue of what Store Y can become"

to say engs: say "Nothing happens. The engravings on the montage stay as they are. You probably need to worry about the stores and/or what they become, instead"

to say just-in-routes: say "You don't need to do anything with an individual route. Just go in"

to say tastee-there: say "The Tastee Estate can't be changed and doesn't need to be. Just ENTER"

to say turrets-ok: say "You don't need to adjust the truster turrets further. They're, well, big enough for a pretty huge quest if you ENTER"

to say idols-no: say "The solid idols, being solid, are unchanged. They won't let you ENTER unless you're, well, ready"

to say hub-stur: say "The hubs bush is too sturdy. You can't escape the Strip of Profits"

section cruelest lectures auxiliary

to say blab-un: say "The blabber babbler is unchangeable, but perhaps indirectly moving [him-her] will work"

to say ian-un: say "Ian is unchangeable, but maybe he is movable"

to say pamph-ana: say "You're probably overthinking it. The I-USED-TO examples are just plain tedious"

to say rehab-no: say "The Rehabs Basher seems too strong to move directly. Perhaps deal with how tedious it is here instead"

to say no-park: say "The speaker parkees aren't what, or who, you need to change, here. It'll still be tedious"

chapter routes auxiliary

this is the has-reag rule:
	if list o toils is examined:
		if player is in Cleric Circle, the rule succeeds;
		if number of touchable quest-items > 0, the rule succeeds;
	the rule fails;

to say fol-reag: say "[if player is in Cleric Circle][follow-the-list][else]Brother Horbert will do [i]his[r] magic on the reagents at the right time";

this is the am-along rule:
	if be ova is off-stage, the rule fails;
	if noon gag is not off-stage, the rule fails;
	the rule succeeds;

this is the in-horbert-quest rule:
	if list o toils is unexamined, the rule fails;
	if brother horbert is moot, the rule fails;
	the rule succeeds;

to say horb-magic of (tt - a thing): say "[if tt is touchable]Brother Horbert will work his magic with that[else]Nothing happens. I mean, less than nothing. Perhaps you need to find a way to sneak around to get that[end if]";

to say rev-sum: say "That document is the stone truth! It doesn't need revisionism or embellishment"

section same mesa auxiliary

this is the got-towards rule:
	if worst ad is moot, the rule succeeds;
	the rule fails;

to say name-worry of (rm - a room): say "[if rm is visited]You did well enough[else]Perhaps it's better and simpler[end if] to focus on the proper names instead"

to say picturer-change: say "It's more likely that scripture can change you[if picturers are reflexive], or help you see something a bit simpler to say[else], and it already has, whether or not you believe[end if]";

to say sos-arc: say "[if Adobe Abode is visited]You already figured how to get into Oscar's. There's nothing else to do[else]You need to figure out what the whole SOS ARC in the lairage regalia can become[end if]"

to say board-change: say "It's what's on the board you need[if signboard is reflexed]ed[end if] to fix"

to say whole-side: say "It's the whole side art you need[if side art is reflexed]ed[end if] to deal with"

to say whole-sitanag: say "The whole [sit a nag]."

to say die-sin: say "[if Cleric Circle is visited]The words themselves do nothing. You found the way in[else]Nothing happens. You twiddle both words for a moment, then realize it's probably them, combined[end if]"

to say not-stripe: say "The poison stripe is too incorporeal to do bend to your will"

to say whole-woe: say "It seems best to deal with the whole WOE BOW BELL"

to say whole-bev: say "The whole beverage name must be where it's at"

section cleric circle auxiliary

to say follow-the-list: say "Maybe you can use your powers to get what's on the list, but you don't need to use them on it";

to say chanty: say "The chant doesn't change. Chants are good at that"

to say no-poi: say "The [if player is in Same Mesa]poison stripe[else]oopsin['] priest[end if] can't be changed that easily. You'll have to search around for better ways to poke at things"

section idle deli auxiliary

to say pit-full: say "[if stupor sprout is off-stage]The whole seed pit[else]You already got the stupor sprout[end if]"

to say no-carv: say "It's not the carvings that need changing[if stupor sprout is not off-stage]. You got the stupor sprout from the seed pit, and that's what's important[end if]"

section adobe abode auxiliary

to say ash-soot: say "It's one solid ashtray. You try aha's to do something, but you wind up all, yah, rats[if soot is in adobe]. Maybe it's the pipe soot you want[else]. Well, you got pipe soot from it, and that's enough[end if]"

section harms marsh auxiliary

to say dark-been: say "The darkness has always been there and always will be. You need to find a way to say it was dark"

to say sheol-c: say "You can't change the Sheol Holes. There are too many. You can only hope to work past them. Or, well, some other preposition. Brother Horbert's advice you wrote in your notepad may help"

to say py-glow: say "The pyrites seem to glow, momentarily forming an arrow as if to say, get on with it and stop worrying about treasure. You do still need to nag ol['] No-Lag Logan"

section ripe pier auxiliary

to say all-dim:
	say "You'll have to deal with the whole data-dim mists"

section cripple clipper auxiliary

to say spume-no: say "The mess-up spumes are too chaotic. You'll need to work your way around them another way besides focusing on them"

section sonancy canyons auxiliary

to say pat-cont: say "It's more the content of the patters that you could deal with, if you wanted"

chapter troves auxiliary

to say no-spoil: say "[if cur-score of troves is 0]You've got the right idea...sort of...but you're not worthy of big thoughts, yet[else]You can change Spoiloplis by thinking, but not like that. One idea at a time[end if]"

to say ei2pg: say "It's good to be on anagramming terms with the book's title, but [if Pa Egg Pea is reflexive]maybe you would be better off feeling in tune with the author, because the author does seem to have a personal anecdote for every general principle[else]your session soaking in the book's 'knowledge' was 'useful' enough[end if]"

section loather rathole auxiliary

to say no-hurt: say "No way you could change even one hurt thru on your own. You just need to get by"

to say p-hole: say "City Hall can't fix potholes, and neither can you. You feel a bit of lost hope as you try. You need to look out for, and look within, yourself, here"

section bustle sublet auxiliary

to say artery-no: say "The reastier arteris cannot be changed. They cannot even change you positively if you follow them"

to say boor-grub: say "You can't change a whole suburb. Better to change yourself"

this is the lot-observed rule:
	if player is in Bustle Sublet and sob ever verbose is moot, the rule succeeds;
	the rule fails;

to say sidewalk-oops: say "The sidewalk's condition can't be changed. For better or worse"

section drain nadir auxiliary

to say id-cede-full: say "It's the full song name--[Id Cede]"

this is the glaring-futile rule:
	if player is in Drain Nadir and lager is moot, the rule succeeds;
	the rule fails;

section boredom bedroom auxiliary

this is the master-moot rule:
	if ME ARTS is moot, the rule succeeds;
	the rule fails;

to say boredom-move-on: say "[if me arts are moot]The ME ARTS nourished you spiritually. [end if][if lobster is moot]The lobster nourished you physically. [end if]Time to move on[if lobster is touchable], though you could poke at the lobster[else if me arts are touchable], though you could poke at the ME ARTS[end if]"

this is the lobster-moot rule:
	if BORTLES lobster is moot, the rule succeeds;
	the rule fails;

to say shmoe-homes: say "The people living in them don't want to change. You can't make them. You need to change something for YOU"

section browse bowers auxiliary

to say mires-no: say "The [mires] are, well, mired. You need to focus on something else, or you might get mired, too"

to say rotun: say "The dour tan rotunda is passe and hasn't been knocked down yet, but that's not your job, here"

section econ cone auxiliary

to say cone-rec: say "You think about the econ-cone being the recent center, but theorizing doesn't work. You need to look forward in other ways, to think of more concrete things, like [if praise is reflexed and rivets are reflexed]how to enter [the lodgings][else if praise is reflexive and rivets are reflexive]that statue, or the praise floating in the air[else]entering [the lodgings] or being sure you deserve to[end if]"

to say scrapery: say "The godlings['] lodgings are a testament to the immovable power of the rich. They can't be changed so easily. And if you did, Elvira's thugs would surely find and arrest you";

to say full-pod: say "You must deal with the full END PRONER POD"

section upscale capsule auxiliary

to say stove-symbolic: say "The votes vetos stove is just symbolic. The real voter suppression happens in the corridors of power, making it very hard for, well, certain people to vote"

to say pha-light: say "You need all that light for late-night work sessions"

this is the salt-gone rule:
	if st al salt is moot, the rule succeeds;
	the rule fails;

this is the tressi-or-mbb rule:
	if player is in Upscale Capsule and mbb-sis-points < 2, the rule succeeds;
	the rule fails;

this is the marble-gone rule:
	if player is in Upscale Capsule and mbb is moot, the rule succeeds;
	the rule fails;

to say mbb-no: say "You already stopped thinking too much about [mbb]. If you try too hard to keep ignoring [mbb], you'll start thinking about [mbb], again"

this is the siters-gone rule:
	if player is in Upscale Capsule and Sister Tressi is moot, the rule succeeds;
	the rule fails;

this is the divorces-gone rule:
	if player is in Upscale Capsule and divorces is moot, the rule succeeds;
	the rule fails;

chapter presto auxiliary

this is the maze-gone rule:
	if player is in Grey Gyre and maze is moot, the rule succeeds;
	the rule fails;

this is the ether-gone rule:
	if player is in Grey Gyre and ether is moot, the rule succeeds;
	the rule fails;

this is the in-mazeroom rule:
	if location of player is mazeroom or location of player is Nowt Town, the rule succeeds;
	the rule fails;

to say is-boing: say "[if boing is reflexive]The number's got more numerals than letters[else]You got the boing-go bin working[end if]";

to say boing-clue: say "[if boing is reflexive]Hmm. It's not the popgun itself that's cracked but the boing-go bin inside[else]The popgun is just fine[end if]"

this is the cola-in-mug rule:
	if mug is touchable and ALocalCo Cola is moot, the rule succeeds;
	the rule fails;

this is the dreidl-dread rule:
	if Zo Mavelt is off-stage, the rule fails;
	if ether is off-stage, the rule succeeds;
	the rule fails;

section grey gyre auxiliary

this is the hump-gone rule:
	if player is in Grey Gyre and hump is moot, the rule succeeds;
	the rule fails;

to say mz-chg: say "It's the maze you need to change, not the zany meter"

this is the can-see-volt-maze rule:
	if ether is off-stage and player is in Grey Gyre, the rule succeeds;
	if player is in a mazeroom or player is in Unwary Runway, the rule succeeds;
	the rule fails.

section r10 auxiliary

to say just-letter: say "It's just one letter in the maze. You may want to focus on the whole volt maze"

section char arch auxiliary

to say no-scen: say "Here in the Char Arch, you don't need to mess with the scenery. Especially scenery farther away and nicer looking than the cretins['] cistern";

to say cistern-to-dart: say "[if dart is in cistern]You won't change the cistern, but maybe you can track down the dart[else]You got the dart from the cistern. No need to futz further[end if]"

section dirge ridge auxiliary

this is the Rand-sad rule:
	if Rand is washed up and player is in Dirge Ridge and Leo is in Dirge Ridge, the rule succeeds;
	the rule fails;

section saps' pass auxiliary

to say d-sli: say "Despite being dangerous to walk into, Deil's Slide serves an important ecological purpose I can't explain here. So, best not to meddle";

to say harphr: say "Concentrate on the words of the harpings phrasing"

section hacks' shack auxiliary

to say no-txtbk: say "The catechism would be more likely to scramble YOU up. [if usb is touchable]It's way more complex than what you need to do now[else]It'll be there when you need to gloss over it[end if]";

to say full-cens: say "It's the censer that's important, not the brand name"

to say slab-score:
	if slab-pts < 10, increment slab-pts; [prevent rollover]
	say "[if slab-pts > 5]+++ (tired yet?)[run paragraph on][else][slab-pts][end if]";

to say full-pack: say "You need to deal with the full [locs pack]"

to say caps-no: say "It'd sort of stink if a caps lock button broke in real life, so, no"

to say tba-key-jazz: say "[if TBA key is reflexive]Nothing happens. It's probably just the TBA you need to work with, which certainly cuts things down[else]You already did enough with the TAB key[end if]"

to say a-or-e: say "Drive [if Drive A is reflexive]A[else]E[end if]"

to say shackbut: say "There are buttons all over the shack, but they should remain that way. You may have to figure or change their functions, though"

this is the my-cola rule:
	if cola-around, the rule succeeds;
	the rule fails;

to say cola-is-cola: say "It's cola, not soda or pop. And you can just drink it"

to say trimsox: say "They're not just socks, or trim. They're trim socks"

to say romstix: say "You'll know what to do with the sticks when you're ready to program";

to say budge-note: say "Nothing happens. 'Budge, BUDGE!' you mutter, turning red and reading the whole message"

this is the bookvis rule:
	if number of touchable badbooks > 0, the rule succeeds;
	the rule fails;

to say kboard-det:
	if the player's command matches "keyboard" or the player's command matches "key board":
		if keyboard is not prefigured:
			say "That seems like a decent idea for later, though.[line break]";
			preef-nol keyboard;
			continue the action;
		if keyboard is not off-stage:
			say "Besides, you already made a perfectly good keyboard.[no line break]";
		else:
			say "You need to find something less awful that could make a keyboard. That book would probably arrange the letters worse than QWERTY.[no line break]";

chapter oyster auxiliary

to say slider-activate:
	if slider is switched on:
		say "[line break]";
		now read-slider-after is true;

section posh hops shop auxiliary

to say tro-clo: say "Focus on the trolls, not their clothes"

to say no-pesty: say "The pesty types resist change. Not that they wouldn't mind a bit of drinking tales for next time. Maybe you could provide that. Maybe the only way to change them is by changing society"

to say jukebox-overkill: say "You already got a temporary escape from the bad music. You can't really do any more, there"

section olde lode auxiliary

this is the clam-gone rule:
	if player is in Olde Lode and clam is not in Olde Lode, the rule succeeds;
	the rule fails;

section disease seaside auxiliary

to say strmlet: say "The streamlets change, and don't change, at the same time. But that's just because they're water, not because of you. You don't need to do anything"

to say raft-is: say "No, best concentrate on what the raft is"

to say sculpt: say "That sculpture is pretty firm and stuck as-is. Better to go off and do something cooler than Shoer Osher ever got credit for"

to say saccade-no: say "That would cause serious injury to people and property, even if it could work"

section fighter freight auxiliary

to say dest-esc: say "Destroying the boat would be a bad idea. You need to escape it"

to say no-cray: say "No way. You're not changing the crays--and if you changed one, the others would get you. You need a way out"

section anger range auxiliary

this is the now-shore rule:
	if player is in Anger Range and sausage is moot, the rule succeeds;
	the rule fails;

to say hero-er-oh: say "You give a few Er-ohs, oh-ers, Or Ehs. Not very heroic, but your actions have worked better"

to say all-fish: say "You need to deal with all the bullies at once, somehow, not just one at a time"

section lean lane auxiliary

this is the dent-gone rule:
	if dent is moot, the rule succeeds;
	the rule fails;

section lapsin' plains auxiliary

to say polyp-no: say "You're a bit worried anything you did to unstabilize the polyps would make the plains lapse further"

to say crate-frag: say "[if crate is reflexed]Not worth messing with the fragments any more[else]They're fragments of a crate--this may or may not help[end if]"

to say hutzy: say "[if Shuttle Hutlets is visited]You found the hut you needed to[else]The huts are too secure, but maybe you can go by the pans[end if]"

section shuttle hutlets auxiliary

this is the waste-gone rule:
	if waste is moot, the rule succeeds;
	the rule fails;

section sclerous closures auxiliary

to say ache-plur: say "[if arches are reflexive]There's not just one arch, there's two. And they've made more than one person ache[else]You already dealt with both arches--no need to deal with one[end if]"

section den loft auxiliary

to say its-msg: say "You may have more luck with the necklace's message. Not that it's very clever, it just--fits in more with the papery yapper"

to say i-com: say "The intercom crackles a bit, but you hear a louder buzz from the dialer. Maybe work on that instead"

this is the pins-moot rule:
	if pins are moot, the rule succeeds;
	the rule fails;

chapter towers auxiliary

to say wi-wi: say "[if Mislit Limits is not visited and waters are not visited]The Wildest Wilteds can't be changed on their own. They must be trekked through[else]You're beyond the Wildest Wilteds now[end if]"

this is the got-pot rule:
	if top opt pot is not off-stage, the rule succeeds;
	the rule fails;

this is the pas-vis rule:
	if number of touchable hintpastries > 0, the rule succeeds;
	the rule fails;

to say eat-pastry: say "The pastry is for eating, not for changing[if toaster is not touchable]. It might be more edible if you heated it up, though[end if]"

to say not-singular-hp: say "Neither the singular nor the plural version of a pastry can change it. They're for helping you with other things, anyway";

to say plutry of (pg - a guardian): now pg is plurtry

to say wait-see: say "The wait-seer shrugs patiently, unfazed you did not understand their full being. This is most certainly for you to fix."

this is the see-female-admirer rule:
	if player is female and mardier admirer is touchable, the rule succeeds;
	the rule fails;

to say nerd-a: say "Concentrate on the Nerd-Aid. In the dandier arid den"

to say grail-name: say "His full name, Liam Garn"

to say reed-name: say "No, [el-la-first]'s full name. [el-la-full]. With Reed's Ale"

to say reed-ale: say "Not just Reed's, or Ale, or Reed, or Reed Ale. Reed's Ale"

this is the duck-cant rule:
	if player is not in Obscurest Subsector and location of duck is location of player, the rule succeeds;
	the rule fails;

this is the agnostic-male rule:
	if agnostic is touchable and agnostic is male, the rule succeeds;
	the rule fails;

to say smart-agnostic-no: say "[agnostic-first] looks at you curiously. You probably don't need to change [his-her] name or intelligence";

this is the agnostic-female rule:
	if agnostic is touchable and agnostic is female, the rule succeeds;
	the rule fails;

to say no-fril: say "The saver is hopelessly no-frills. It'll never be anything better. But [if saver is reflexed]you made it look a bit nicer[else if saver is attempted]you might've been onto something looking at its brand name[else]maybe you could revisit its brand name to make it look nicer[end if]. Not that looks ultimately matter"

to say giz-tex: say "It's so technically detailed, you worry you might break it by thinking at it wrong. So you don't. A more science-ly type might be able to deal with it better"

section loftier trefoil auxiliary

to say towersloc:
	say "It's not this location you need to change, but Castle Apcur, the Curst Palace [if location of player is Mislit Limits]right by you[else if location of player is Mesprise Premises]nearby[else]across Leak Lake[end if]";
	if number of touchable guardians > 0, say ". You might also want to try to deal with [the list of touchable guardians]";

to say picaro-note: say "[if here-picaros is 1]There's only one picaro left, and his name is Rodney[else if moot-picaros > 0]You've already thinned the picaros['] ranks a bit--it can't be bad to tackle the others one at a time, by name[else]One at a time, by name. Each has his own weakness[end if]";

to say all-rodney: say "Deal with Rodney, not any part of his chosen sub-names"

section topside deposit auxiliary

to say ftf: say "The fire-torn frontier has been changed enough. Maybe if you change the curst palace, it and other parts of the Wildest Wilteds will come back to life"

to say no-hut: say "The Shout-So Hut is built to resist words. You aren't getting through, or past, it, and you don't want to go back, anyway"

section scope copse auxiliary

to say cop-sco: say "The copse and the Spec-O-Scope are both fine as-is[if yurts are touchable], though maybe you can do something about the yurts[end if]"

section outer route auxiliary

to say gosh-camp: say "Gosh! The campsite's about as swell as can be, as is. No need to rearrange anything"

to say rapier-mach: say "The machine is complicated enough. You [if gizmo is off-stage]probably just need to figure what to put in it[else]already got something from it[end if]"

section baldest blasted saltbed auxiliary

to say wets-no: say "You can't really do anything about the stew wets. Maybe once Elvira's gone, you can lobby to make them livable or farmable if you need, but that's way in the future"

section shaven havens auxiliary

to say rav-chao: say "The ravages are chaotic enough. Changing them is a fight you'd lose"

section leveraged everglade auxiliary

to say no-creche: say "You can't change the screech creches. Well, not until you defeat Elvira"

to say ego-dr: say "Until you see the ego-drains themselves as organised, you probably won't see how to get past them"

section treading gradient auxiliary

to say gradient-rej:
	if number of touchable guardians is 0 and weeds are moot and denim is moot:
		say "You already tweaked so much here in the Treading Gradient. You don't need to change the place itself";
	else if weeds are touchable:
		say "While you can't change the Treading Gradient, perhaps you can deal with the weeds";
	else if number of touchable guardians > 0:
		say "You can't change the treading gradient, but maybe you can get [random touchable guardian] out of the way";
	else:
		say "The gradient itself can't be changed, but you can change the last thing that's here: the denim"

to say prob-denim: say "You look at the denim and it's probably the denim you want to deal with, not its properties"

section salted deltas auxiliary

to say shoaly: say "That might cause some bizarre erosion and risk dumping YOU in Leak Lake"

section danger garden auxiliary

this is the bonker-gone rule:
	if player is in Danger Garden and bonker is moot, the rule succeeds;
	the rule fails;

section lost lots auxiliary

to say gasgad: say "You can't change the gadflies. There are too many"

section obscurest subsector auxiliary

to say no-ropin: say "[if duck is returned]No need to mess with the ropins any more[else]The prison ropins are built for...wait for it...no rips. You'll have to focus on a part that might open[end if]";

to say wordy-rowdy-nudge:
	if slider is switched on:
		if dr yow has been wordy and dr yow has not been rowdy:
			match-process the player's command and "rowdy"; [slider test rowdy]
			continue the action;
		if dr yow has been rowdy and dr yow has not been wordy:
			match-process the player's command and "wordy"; [slider test wordy]
			continue the action;
		if dr yow has been rowdy and dr yow has not been wordy:
			say "The slider is silent. There is no third option, it appears";
			continue the action;
		say "The slider makes some funny up-and-down noises which suggests it doesn't know what to gauge. Thankfully, Dr. Yow doesn't have a long name.";
		continue the action;
	say "Dr. Yow seems to ponder something for a second but then shakes [his-her] head[if Dr Yow has been rowdy and Dr Yow has been wordy]--[he-she]'s probably shown [his-her] full range of emotions[else if Dr Yow has not been rowdy and Dr Yow has not been wordy]--[he-she] can't break out of [his-her] shell[else]--maybe there's one more way for [him-her] to be, to talk[end if].";

this is the agnostic-can-learn rule:
	if player is in Obscurest Subsector and agnostic is in Obscurest Subsector and ag-atten is true, the rule succeeds;
	the rule fails.

section artist traits strait auxiliary

to say could-cloud: say "You can't manipulate the clouds, and you don't need to. It's really more fun to watch them pass by and change form on their own"

section actionless coastlines auxiliary

to say fix-boat-parts: say "[if blaster is reflexed and turbos are reflexed]You fixed what you can of the boat[else if turbos are reflexed]You fixed the turbos, so maybe you can tackle the blaster[else if blaster is reflexed]You fixed the blaster, so maybe you can tackle the turbos[else]Hmm. It might be better to fix parts of the boat--the turbos and blaster[end if]";

section mislit limits auxiliary

to say clay-pal: say "Changing the clays would cause the curst palace to come tumbling down, since it's built on them. Change the palace instead"

this is the serpent-hiding rule:
	if player is in Mislit Limits and serpent is moot, the rule succeeds;
	the rule fails.

to say focus-castle: say "That might help you figure what to do with the curst palace, but it can't be important by itself"

this is the cppc rule:
	if player is in Mislit Limits:
		if cactus pearl is in Mislit Limits or pearl cactus is in Mislit Limits, the rule succeeds;
	the rule fails.

section mesprise premises auxiliary

this is the teri-reflexed rule:
	if player is in Mesprise Premises and Tetris Sitter is reflexed, the rule succeeds;
	the rule fails;

chapter otters auxiliary

this is the cinders-gone rule:
	if cinders are moot, the rule succeeds;
	the rule fails.

to say both-medals: say "No, it's a combination of what's on both medals"

this is the hydra-know rule:
	if the player has the weltish whistle, the rule succeeds;
	if the player is in Reclusion Inclosure and hydra-known is true, the rule succeeds;
	the rule fails.

this is the midden-n-s rule:
	if player is in Clarthead Cathedral or player is in Shiner Shrine, the rule succeeds;
	the rule fails;

section minded midden auxiliary

to say add-ly: say "[adv-help-1][adv-help-2]"

to say add-li: say "[adv-help-1], but not the usual ones[adv-help-2]"

to say del-ry: say "The sandwich isn't just deli, or rye, or a sandwich. It's deli rye"

section disowned downside auxiliary

to say maples-no: say "No need to change the maples. They are the least dreary part of the Downside"

this is the players-macked rule:
	if players are not touchable, the rule fails;
	if players are reflexed, the rule succeeds;
	the rule fails;

section shiner shrine auxiliary

to say imp-sly: say "The imp's too sly to get tricked by a word THAT short"

section clarthead cathedral auxiliary

to say whiney: say "You can't change who whiners are, but maybe you can make them whine [if whiner-score > 0]even [end if]less...effectively"

section loop pool auxiliary

to say cube-whole: say "The sea cube is unmoved. You may need to concentrate on the whole thing";

section lamer realm auxiliary

this is the realm-saved rule:
	if player is in Lamer Realm and adjsolve >= 3, the rule succeeds;
	the rule fails;

section perverse preserve auxiliary

this is the preserve-saved rule:
	if player is in Perverse Preserve and nounsolve >= 3, the rule succeeds;
	the rule fails;

to say lit-no: say "It's a nice tail, and the racoon seems proud of it, so it'd be kind of mean to change it"

to say restrictr: say "The RESTRICT-CRITTERS can't be changed by your own will. Elvira made sure of that"

section reclusion inclosure auxiliary

to say whole-citadel of (citplur - a number):
	say "It'll take more to destroy the whole citadel and not just the alcove[plur of citplur] or coeval[plur of citplur]"

this is the aside-yet rule:
	if aside-llp is reflexed and Merle is touchable, the rule succeeds;

to say w-change: say "You can't change the inclosure. It's what's to the west that needs changing" [ic]

this is the eelmr rule:
	if player is in Reclusion Inclosure and Elmer is in Reclusion Inclosure, the rule succeeds;
	if player is in Bran Barn and mr lee is in Bran Barn, the rule succeeds;
	if player is in Loop Pool, the rule succeeds;
	the rule fails;

to say eelmry:
	if player is in Bran Barn:
		say "[if gore ogre is moot]You managed to help Mr. Lee enough[else if eels are reflexed]It would be better to show Mr. Lee, but you don't need to, since you talked with Le Mer[else]You just need to show Mr. Lee, not change him[end if]";
		continue the action;
	if player is in Loop Pool:
		say "[if eels are reflexed]You managed to help Le Mer enough[else if gore ogre is moot]It would be better to show Le Mer, but you don't need to, since you talked with Mr. Lee[else]You just need to show Le Mer, not change it[end if]";
		continue the action;
	if player is in Reclusion Inclosure and Merle is in Reclusion Inclosure:
		say "You can't fully change [e-n-m], [if elmer-merle-bonus is 0]but there are ways[else if elmer-merle-bonus is 1]but there's another way[else]and you've really done all you can[end if] to shut them up for a bit. Maybe you could find a way to get rid of them";
		continue the action;
	if Bran Barn is unvisited and Loop Pool is unvisited and Reclusion Inclosure is unvisited:
		say "You shouldn't know about Merle, Elmer et al yet";
	else:
		say "You think back to whom you've met so far once past the Disowned Downside"

to say e-m-aux: say "That's just focusing on the trappings of [e-n-m] being ideas aides[if aside-llp is reflexed], and anyway, you pushed [e-n-m] aside, already[end if]"

to say no-lam: say "You can't change them, and even if you could, Elvira would probably be alerted"

to say fresc: say "Some art is just out there to troll people. The forces fresco is such. Even if you could vandalize it, Elvira might be on you in a second"

this is the hidings-dishing rule:
	if elmer is moot, the rule succeeds;
	the rule fails;

section rancho archon anchor auxiliary

to say rancho-scen: say "You can't just muck around with one part of Elvira's army. You need a way to find allies"

to say no-stockade: say "You can't release any prisoners from the stockade THAT easily. You'd need an army"

to say elv-mach: say "You have enough to think about without one more of Elvira's machines"

to say one-toy: say "Disable one of Elvira's toys, and there's still the other. Oh, and the army, too. You need your own army"

chapter others auxiliary

to say coin-icon:
	if player has coin:
		say "coin";
	else if player has icon:
		say "icon";
	else if player has icons or player has s-i:
		say "icons";
	else if player has s-c or player has coins:
		say "coins";
	else:
		say "BUG. The singed design should be a part of something you're holding but isn't"

to say slot-no: say "[if lost slot is off-stage]Nothing close to anagramming LOST is on the box right now. You may need to use something entirely different to get the slot to appear[else]After all that work getting it to appear, you don't want to make the lost slot vanish[end if]"

this is the perp-moot rule:
	if fleeing feeling is moot, the rule succeeds;
	the rule fails;

to say count-enuf: say "It's counterfeit enough as-is. You probably need to just find someone who'd actually accept it"

section rustic citrus auxiliary

to say plur-fruit: say "Well, you don't technically need plurals for this, but you're on the right track"

to say ru-ci: say "[if ruts circuits are moot]You found enough in the ruts circuits. No need to bring them back[else]Nothing happens. The ruts circuits seem pretty dead, but EXAMINEing them might turn something up[end if]"

to say whole-item: say "Nothing happens. Perhaps it's the whole item that's important"

to say part-of-pom: say "No, the [i]whole[r] thing. You see several...similar...items here right now"

to say full-omen-prism: say "Not just omen, or prism. It's an omen prism"

section filed field auxiliary

to say no-pryer: say "No, it's the whole pryer bars"

to say rapt-glare: say "The rapt figure almost seems to glare at you--or maybe its smile seems a little fake. IT seems worth changing more than the spoon"

section clangier clearing auxiliary

to say len-part: say "Len Craig doesn't change, and even if you messed with his full name, he wouldn't"

this is the lemnomel rule:
	if lemons are touchable and melon is not touchable, the rule succeeds;
	the rule fails;

to say papay: say "[if auction caution is reflexive]You're probably over-thinking it--just pay attention to what it says, instead[else]You've taken the banner's advice well enough[end if]";

section scape space auxiliary

this is the trader-gone rule:
	if art erd is moot or dr tera is moot, the rule succeeds;
	the rule fails;

to say 1st-name: say "You're not sure you want to be on a first-name basis with [greedy-s]. Okay, you're sure you don't want to be, especially since you [if So Great Storage is in Scape Space]want to get [else]got[end if] that So-Great Storage";

to say hub-a: say "It's a burr hub, not the burr hub. A small but important distinction"

section gates stage auxiliary

to say no-gate: say "The gate needs to be unlocked some other way"

to say val-chg: say "The Valence Enclave doesn't need modifications. Especially with people potentially inside. Maybe you can get inside, too"

chapter demo dome auxiliary

section peek keep auxiliary

to say dome-rm: say "You don't need to flip anything here, really. Certainly not a room"

to say its-a-museum: say "This is a museum! Messing with the exhibits would be very bad form"

to say no-mess: say "No need to mess with the helpful sign";

to say no-fig-code: say "You won't figure the code. There isn't one. Muahaha"

section evoc cove auxiliary

to say no-no: say "You can't change the book's writing. Well, you could, I guess. But this is a museum"

section intel inlet auxiliary

to say these-docs: say "These are documents of historical records! Revisionism is so Elvira"

to say passe-control: say "I have full creative control over the Passe Apses, and I'm not giving it up"

chapter general auxiliary

this is the elvira-here rule:
	if otters is not solved, the rule succeeds;
	the rule fails;

to say no-set: say "You won't gain anything trying to magic the settler, or parts of it, about. All its technical tools and features are already in place";

to say red-wri: say "Red writing is a just clue of what to change. It can't be changed, itself";

this is the in-innie rule:
	if location of player is innie, the rule succeeds;
	the rule fails;

to say innies: say "You don't need to, and can't, do anything drastic to the walls when inside. That'd be kind of dangerous, anyway"

this is the past-strip rule:
	if Strip of Profits is visited, the rule succeeds;
	the rule fails;

to say diag-dir-rej: say "This game doesn't require you to mess with diagonal directions[if player is in Rawest Waters], so maybe you should consider the other shores[else], so I hope that's a relief[end if]";

to say dir-rej: say "This game almost never requires you to mess with cardinal directions";

to say if-no-pad:
	if player does not have pedanto notepad:
		now player has pedanto notepad;
		say ". But to do that, you need to take it, first. And you do";

to say xyzzys: say "A hollow voice booms, 'Lo! Of...'[no line break]"

to say major-swear: say "[if mrlp is presto and cur-score of presto > 0]Curiously enough, you can't do anything with the major swears, and neither could I[else][cussy][end if]";

to say mild-swear: say "[if mrlp is presto and cur-score of presto > 0]This region has some lame swears, but that's not one of them[else][cussy][end if]";

this is the know-point rule:
	if cur-score of Ordeal Reload > 1, the rule succeeds;
	the rule fails;

this is the can-i-parse rule:
	if elmo is moot, the rule succeeds;

to say no-special-verb: say "There's no secret verb or verbs to find trying that"

to say dir-cut: say "section has no easter eggs[if mrlp is demo dome], though you're at the director's cut bit right now[end if]"

to say meta-rej: say "Meta-commands don't have any easter eggs, sadly"

book support rules and quotes

[These are used elsewhere throughout the nudges file, but they are not main rules listed in a table.]

to say adv-help-1: say "No, you need a couple more letters"

to say adv-help-2: say ". [if power-back is true]Even with your powers back, you still need to get the adverb right[else]Ones that make a word weak enough to control[end if]"

slab-pts is a number that varies.

to say cussy: say "You're not fooling ME. Shame on you"

Roiling Nudges ends here.

---- DOCUMENTATION ----