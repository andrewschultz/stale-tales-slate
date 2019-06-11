Version 1/151226 of Shuffling Nudges by Andrew Schultz begins here.

volume nudges

[remember to sort with nud.pl after changes or, perhaps, before release. NUD.PL organizes the "to say" and "rule" in the same order they appear in the table.]

[nuch.py makes sure that all the nudges have a test case assigned]

[Nudges are organized in roughly the order you see them going through each region. In some cases, certain rooms take random priority over others. For instance, you can go west or east from Self-ID Fields, or north or south from Undesired Underside.]

book nudge tables

table of Ordeal Loader nudges
this-cmd	hashval	this-room	this-item	this-rule	this-clue
"busiest"	591981617	Busiest Subsite	--	--	"[loc-rej]." [start Busiest Subsite]
"noentry"	650766775	Busiest Subsite	--	--	"You notice the NO ENTRY sign is misspelled, and you wonder what else--eh, nothing. Still, it might be fun to enter..."
"slim"	259155804	Busiest Subsite	--	--	"[name-list]."
"neat"	302011453	Busiest Subsite	--	--	"[name-list]."
"name"	262976588	Busiest Subsite	--	--	"[name-list]."
"list"	298190669	Busiest Subsite	--	--	"[name-list]."
"elevator"	681565093	Busiest Subsite	--	--	"[word-games]."
"terraces"	646837211	Busiest Subsite	--	--	"[word-games]."
"banner"	371551651	Busiest Subsite	--	--	"[word-games]."
"oafs"	199329257	Busiest Subsite	--	--	"[sofa-there]."
"oaf"	103055291	Busiest Subsite	--	--	"[sofa-there]."
"rested"	561349094	Rested Desert	--	--	"[loc-rej]." [start Rested Desert]
"improbable"	570855914	Rested Desert	--	--	"You do some calculations--then you think, if things are this hard early on, MAN. It's got to be simpler."
"breeze"	610130653	--	odor	--	"[nope-odor]."
"smlel"	395782906	--	odor	--	"[nope-odor]."
"musical"	385455014	--	OR DO Door	--	"[com-chor]."
"chord"	236993353	--	OR DO Door	--	"[com-chor]."
"horn"	265866187	--	bugle	--	"No, the bugle is a bugle, not just a horn. It's been changed enough."
"thickets"	584514019	Thickest Thickets	--	--	"[loc-rej]." [start Thickest Thickets]
"thicket"	488240053	Thickest Thickets	--	--	"[loc-rej]"
"darnel"	359068166	Thickest Thickets	--	--	"[if darn-slan is true]You already got mad at all the darnels. You need to move on[else]If it were just one darnel, there'd be no point in getting mad. But there are a bunch[end if]."
"shrub"	342404780	Thickest Thickets	--	--	"The [if goat is visible]remains of the [end if]shrub and brush waver, then point towards the [if toga is visible]toga[else]opening in the thickets[end if]."
"darnels"	455342132	--	darnels	--	"[darnels-inst]."
"notices"	534448609	Notices Section	--	--	"[loc-rej]." [start Notices Section]
"borda"	201312192	Notices Section	--	--	"The broad board is just there to read."
"newland"	450586644	Notices Section	--	--	"You will have to change the new land one item at a time."
"tmi"	212178017	Notices Section	--	--	"The TMIs are there to help you."
"tmis"	308451983	Notices Section	--	--	"The TMIs are there to help you."
"warpy"	399271605	Notices Section	--	--	"[no-warpy]."
"old"	149195505	Notices Section	--	--	"[no-warpy]."
"doll"	203009344	Notices Section	--	--	"[stat-at]."
"house"	440820758	Notices Section	--	--	"[stat-at]."
"warmup"	446093313	Notices Section	--	--	"You can't change what's in the gateway. You just have to trust whatever is(n't) in there won't harm you."
"gateway"	498185490	Notices Section	--	--	"Nothing changes. Maybe you just need to walk through it, if and when you're prepared."
"oldman"	284365984	--	gateman	--	"He's too old to change. At least, in his present form."
"dollhouse"	643830102	--	doll house	--	"Thinking that doesn't do much, but the [if static is visible]static changes[else]attics seem to glow a bit[end if].[one of][paragraph break]You reflect it might be a bit too much to have to deal with nine letters so early, anyway[or][stopping]."
"attic"	272406285	--	attics	--	"You feel nothing from either attic. Perhaps you need to consider both the attics--though really, you don't see why you'd want to bring the static back."
"ordeal"	364513235	--	--	degen-true rule	"[reg-rej]." [end-ordeal-loader]

table of Stores nudges
this-cmd	hashval	this-room	this-item	this-rule	this-clue
"trips"	411166592	Trips Strip	--	--	"[loc-rej]." [start Trips Strip]
"tepid"	378404021	Trips Strip	--	--	"[tid]."
"tepidicon"	585662537	Trips Strip	--	--	"[tid]."
"icon"	207258516	Trips Strip	--	--	"[tid]."
"badge"	202041623	Trips Strip	--	--	"The badge just has general information. It's not useful on its own."
"masll"	270164615	Trips Strip	--	--	"[say-which]."
"mall"	173890649	Trips Strip	--	--	"[say-which]."
"lots"	327550400	Trips Strip	--	--	"You can manipulate each individual store."
"lot"	231276434	Trips Strip	--	--	"[lotmaso]."
"lotb"	249695339	Trips Strip	--	--	"[lotmaso]."
"lota"	233464252	Trips Strip	--	--	"[lotmaso]."
"lotc"	250282019	Trips Strip	--	--	"[lotmaso]."
"lotd"	252305523	Trips Strip	--	--	"[lotmaso]."
"lote"	359082543	Trips Strip	--	--	"[lotmaso]."
"lotf"	257791330	--	store f	--	"[lotmaso]."
"lotg"	263876136	Trips Strip	--	--	"[lotmaso]."
"loth"	268558733	Trips Strip	--	--	"[lotmaso]."
"loti"	276269280	--	store i	--	"[lotmaso]."
"lotj"	280236959	Trips Strip	--	--	"[lotmaso]."
"lotk"	284209612	Trips Strip	--	--	"[lotmaso]."
"lotl"	285090273	Trips Strip	--	--	"[lotmaso]."
"lotm"	295351587	--	store m	--	"[lotmaso]."
"lotn"	300183942	Trips Strip	--	--	"[lotmaso]."
"loto"	305629011	Trips Strip	--	--	"[lotmaso]."
"lotp"	312742393	Trips Strip	--	--	"[lotmaso]."
"lotq"	315682051	Trips Strip	--	--	"[lotmaso]."
"lotr"	316600237	--	store r	--	"[lotmaso]."
"lott"	334386452	Trips Strip	--	--	"[lotmaso]."
"lotu"	336382241	Trips Strip	--	--	"[lotmaso]."
"lotv"	338441254	Trips Strip	--	--	"[lotmaso]."
"lotw"	339211207	Trips Strip	--	--	"[lotmaso]."
"lotx"	344044515	Trips Strip	--	--	"[lotmaso]."
"loty"	353635686	Trips Strip	--	--	"[lotmaso]."
"lotz"	354246052	Trips Strip	--	--	"[lotmaso]."
"malla"	176078467	Trips Strip	--	--	"[lotmaso]."
"mallb"	192309554	Trips Strip	--	--	"[lotmaso]."
"mallc"	192896234	Trips Strip	--	--	"[lotmaso]."
"malld"	194919738	Trips Strip	--	--	"[lotmaso]."
"malle"	301696758	Trips Strip	--	--	"[lotmaso]."
"mallf"	200405545	--	store f	--	"[lotmaso]."
"mallg"	206490351	Trips Strip	--	--	"[lotmaso]."
"mallh"	211172948	Trips Strip	--	--	"[lotmaso]."
"malli"	218883495	--	store i	--	"[lotmaso]."
"mallj"	222851174	Trips Strip	--	--	"[lotmaso]."
"mallk"	226823827	Trips Strip	--	--	"[lotmaso]."
"malll"	227704488	Trips Strip	--	--	"[lotmaso]."
"mallm"	237965802	--	store m	--	"[lotmaso]."
"malln"	242798157	Trips Strip	--	--	"[lotmaso]."
"mallo"	248243226	Trips Strip	--	--	"[lotmaso]."
"mallp"	255356608	Trips Strip	--	--	"[lotmaso]."
"mallq"	258296266	Trips Strip	--	--	"[lotmaso]."
"mallr"	259214452	--	store r	--	"[lotmaso]."
"malls"	270164615	Trips Strip	--	--	"[lotmaso]."
"mallt"	277000667	Trips Strip	--	--	"[lotmaso]."
"mallv"	281055469	Trips Strip	--	--	"[lotmaso]."
"mallu"	278996456	Trips Strip	--	--	"[lotmaso]."
"mallw"	281825422	Trips Strip	--	--	"[lotmaso]."
"mallx"	286658730	Trips Strip	--	--	"[lotmaso]."
"mally"	296249901	Trips Strip	--	--	"[lotmaso]."
"mallz"	296860267	Trips Strip	--	--	"[lotmaso]."
"storea"	489054291	--	store a	--	"[no-cand]."
"storec"	505872058	--	store c	--	"[no-cand]."
"stored"	507895562	--	store d	--	"[no-cand]."
"storee"	614672582	--	store e	--	"[no-cand]."
"storeg"	519466175	--	store g	--	"[no-cand]."
"flier"	338451493	--	store g	--	"The flier's just there to tell you if you're done or not."
"storeh"	524148772	--	store h	--	"[no-cand]."
"storej"	535826998	--	store j	--	"[no-way]."
"storek"	539799651	--	store k	--	"[no-way]."
"storel"	540680312	--	store l	--	"You search for a magic word but feel, er, lost."
"storen"	555773981	--	store n	--	"[no-cand]."
"storeo"	561219050	--	store o	--	"Nothing happens. You consider going through the other 358 possibilities, but that'd be so rote."
"storep"	568332432	--	store p	--	"[no-mb]."
"storeq"	571272090	--	store q	--	"Nothing happens. You didn't really expect it to since, hey, no u with the q."
"stores"	583140439	--	store s	--	"[no-cand]."
"storet"	589976491	--	store t	--	"[no-mb]."
"storeu"	591972280	--	store u	--	"[no-mb]."
"storev"	594031293	--	store v	--	"[no-mb]."
"storew"	594801246	--	store w	--	"[no-mb]."
"storex"	599634554	--	store x	--	"[no-way]."
"storey"	609225725	--	store y	--	"[no-mb]."
"storez"	609836091	--	store z	--	"[no-way]."
"marquee"	596710416	Trips Strip	--	--	"You don't need to change the marquee[unless sorbet is moot], but maybe it'd be fun to see what's inside[else] now that you figured what it means[end if]."
"depot"	407763752	--	posted depots	--	"You can't do anything to the depots besides ENTER them."
"depots"	504037718	--	posted depots	--	"You can't do anything to the depots besides ENTER them."
"scented"	563938384	--	scented descent 	--	"No way. It's your way down to the forest."
"trade"	339456837	--	trade tread	--	"No, you can just FOLLOW or ENTER the trade tread."
"trades"	435730803	--	trade tread	--	"No, you can just FOLLOW or ENTER the trade tread."
"roadsign"	425667309	--	store f	--	"[road-sign]."
"road"	182893287	--	store f	--	"[road-sign]."
"sign"	242774022	--	store f	--	"[road-sign]."
"subway"	452280521	--	store m	--	"[no-store-m]."
"subwaymap"	600009451	--	store m	--	"[no-store-m]."
"hubs"	257080977	--	hubs bush	--	"[hub-stur]."
"buh"	160807011	--	hubs bush	--	"[hub-stur]." [end-stores]

table of Forest nudges
this-cmd	hashval	this-room	this-item	this-rule	this-clue
"conifer"	446903324	--	--	first-two-forest rule	"[no-con]." [START OF SOFTER FOREST]
"conifers"	543177290	--	--	first-two-forest rule	"[no-con]."
"rambling"	370319574	--	rambling shout	--	"[guider-content]."
"whiff"	243239710	--	whiff of stew	--	"[guider-content]."
"aroma"	228127169	--	aroma of teas	--	"[guider-content]."
"leaves"	515052661	--	leaves	--	"You have no time to play with leaves."
"south"	416124667	--	--	first-two-forest rule	"[forest-no]."
"north"	368976205	--	--	first-two-forest rule	"[forest-no]."
"west"	435124866	--	--	first-two-forest rule	"[forest-no]."
"east"	329377911	--	--	first-two-forest rule	"[forest-no]."
"eat"	233103945	--	teas	--	"[forest-no]. Anyway, it doesn't smell like just one tea."
"rest"	412513896	rf	--	--	"[loc-rej]." [START OF REST OF FOREST]
"selfid"	370430745	self-id	--	--	"[loc-rej]." [START SELF-ID FIELDS]
"selves"	609138809	self-id	--	--	"The selves vessel is much too sturdy to manipulate."
"vesel"	512864843	self-id	--	--	"The selves vessel is much too sturdy to manipulate."
"line"	295520302	self-id	--	--	"They're dead and not interfering with you."
"life"	253127690	self-id	--	--	"They're dead and not interfering with you."
"lineof"	396387775	self-id	--	--	"They're dead and not interfering with you."
"undead"	346065420	self-id	--	--	"[no-un]."
"undeads"	442339386	self-id	--	--	"[no-un]."
"crosse"	499036006	--	Corses Crosse	--	"[crosse-to-you]."
"cross"	371229897	--	Corses Crosse	--	"[crosse-to-you]."
"crose"	402762040	--	Corses Crosse	--	"[crosse-to-you]."
"triangles"	615015609	Gnarliest Triangles	--	--	"The triangles need no alterings." [start Gnarliest Triangles]
"triangle"	518741643	Gnarliest Triangles	--	--	"No triangle needs altering."
"shell"	368990052	Gnarliest Triangles	--	--	"[in-sort of dashes]."
"bucket"	426379602	Gnarliest Triangles	--	--	"[in-sort of ones]."
"bubble"	341982470	Gnarliest Triangles	--	--	"[in-sort of noughts]."
"elegy"	464385011	Gnarliest Triangles	--	--	"The elegy doesn't need to be twisted any more."
"tacks"	273510565	Gnarliest Triangles	--	--	"[tack-heap]."
"tack"	177236599	Gnarliest Triangles	--	--	"[tack-heap]."
"notes"	470450178	Gnarliest Triangles	--	--	"The notes are just for reading."
"note"	374176212	Gnarliest Triangles	--	--	"The notes are just for reading."
"stick"	316315593	Gnarliest Triangles	--	--	"[vand-art]."
"figure"	422343163	Gnarliest Triangles	--	--	"[vand-art]."
"figures"	518617129	Gnarliest Triangles	--	--	"[vand-art]."
"zeros"	506726073	--	noughts	--	"They're noughts, not zeros."
"zeroes"	634532182	--	noughts	--	"They're noughts, not zeroes."
"eon"	271066194	--	ones	--	"They're ones, not a one."
"naught"	349193152	--	noughts	--	"[nau-zer-enuf]."
"naughts"	445467118	--	noughts	--	"[nau-zer-enuf]."
"nought"	421357911	--	noughts	--	"There's more than one nought."
"muzzle"	596740144	--	shotgun	--	"You don't want to mess the muzzle up. You can fire bullets through it, and that's good enough."
"shelf"	341691109	Flesh Shelf	--	--	"The shelf is frozen that way. Ba dum bum." [FLESH SHELF START]
"skin"	263107498	Flesh Shelf	--	--	"The skin sink is frozen that way. Ba dum bum."
"ink"	166833532	Flesh Shelf	--	--	"The skin sink is frozen that way. Ba dum bum."
"cities"	436181370	Flesh Shelf	--	--	"some text"
"city"	289467701	Flesh Shelf	--	--	"some text"
"sandwich"	397613884	--	sandwich	--	"It would be easier to just pick it apart physically, without anything fancy."
"canister"	547607653	--	grinder	--	"The canister [if canister is not broken]is too solid[else]has suffered enough abuse. No need to break it further[end if]."
"grinder"	465982860	--	grinder	--	"The grinder is too solid."
"grin"	231823859	--	grinder	--	"The ring does not bend."
"hams"	199819236	--	canister	--	"You think 'Hm, as...' but don't know what to do. Maybe that is just writing, and [if canister is broken]in any case, you broke the canister, anyway[else]you just put stuff in the canister[end if]."
"bleads"	319529726	Flesh Shelf	--	--	"The blades, buried in the grinder, remain lifeless."
"meat"	297179098	--	--	see-meats rule	"[spec-meat]."
"meats"	393453064	--	--	see-meats rule	"[spec-meat]."
"liver"	419101417	--	--	liv-vis rule	"[if River Ville liver is moot or viler liver is moot]C'mon, you have it half right, don't futz with the remaining liver[else if River Ville liver is not visible or viler liver is not visible]Your thoughts go to the other liver[else][bothlivers][end if]."
"ville"	387591453	--	river ville liver	--	"[rivliv]."
"river"	450611381	--	river ville liver	--	"[rivliv]."
"cruel"	391055143	Cruel Ones' Enclosure	--	--	"[loc-rej]." [START OF CRUEL ONES ENCLOSURE]
"ones"	367340160	Cruel Ones' Enclosure	--	--	"[loc-rej]."
"enclosure"	758395303	Cruel Ones' Enclosure	--	--	"[loc-rej]."
"cloth"	287564318	--	--	spread-drapes rule	"No, the material of the [if spread is visible]spread[else]drapes[end if] isn't important, here."
"doorway"	487539889	--	doorway	--	"You can just go through. You don't want it to change any more, really."
"cylinder"	543238031	--	silver	--	"It's the shape it should be. You don't need to make a key, or a charm."
"snow"	347468824	Frost Forts	--	--	"[froz-ha-ha]."
"slough"	399428190	Ghouls' Slough	--	--	"[loc-rej]." [START OF GHOULS' SLOUGH]
"marsh"	285143039	Ghouls' Slough	--	--	"[marsh-lake]."
"lake"	236740944	Ghouls' Slough	--	--	"[marsh-lake]."
"frost"	385575260	frost	--	--	"[loc-rej]." [START OF FROST FORTS]
"capital"	306763883	--	vowels	--	"You need to deal with all the capitals. And they're specific letters."
"capitals"	403037849	--	vowels	--	"They aren't just any capitals. They're specific letters."
"icecap"	294463902	Frost Forts	--	--	"[froz-ha-ha]."
"bumps"	365339790	Frost Forts	--	--	"[froz-ha-ha]."
"iced"	212833629	--	iced dice	--	"[froz-ha-ha]."
"ice"	191804540	--	iced dice	--	"[froz-ha-ha]."
"sleet"	508810041	Frost Forts	--	--	"[froz-ha-ha]."
"werewolves"	1016216878	--	wolves	--	"They won't be changed with magic. Thankfully, you've got something more direct."
"lupine"	482092068	--	wolves	--	"They are the lupine lineup from your notes, but for your purpose, they're wolves."
"forest"	513381369	--	--	degen-true rule	"[if Self-ID Fields is visited][reg-rej][else][loc-rej][end if]." [end-f]

table of Sortie nudges
this-cmd	hashval	this-room	this-item	this-rule	this-clue
"part"	272087598	Trap Part	--	--	"You don't need to change this room[if kitchen is visited], and you don't want to change it BACK to the Trap Part." [start Trap Part]
"sortie"	531859319	--	--	degen-true rule	"[reg-rej]."
"centrifuge"	741172383	--	--	b4-cent rule	"[loc-rej]."
"frenetic"	603466874	--	--	b4-cent rule	"[loc-rej]."
"dial"	122023592	Trap Part	--	--	"[if centrifuge-stopped is false]Messing up the dial would leave you trapped here[else]The dial did its part for you[end if]."
"sextien"	681664637	--	--	cent-spin rule	"The spinning seems to slow a bit."
"exitsnw"	661793301	--	--	cent-spin rule	"The room seems almost ready to start to slow down. Maybe the exits aren't quite that way."
"exitssw"	689159759	--	--	cent-spin rule	"The room seems to spin faster, as if you are totally on the wrong track."
"exitsse"	709031095	--	--	cent-spin rule	"The room seems almost ready to start to slow down. Maybe the exits aren't quite that way."
"exits"	484951020	--	--	cent-spin rule	"You can't do much to the exits when you don't even know which way they are."
"sixteen"	681664637	--	--	nick-visit rule	"You don't need to re-stop the centrifuge."
"aroundden"	574649308	--	--	af-cent rule	"[loc-rej]."
"graffiti"	366236825	the nick	--	--	"The graffiti's etched in solidly. But it seems like a decent clue, if you just want to read it."
"greta"	351027450	the nick	--	--	"The grate remains impassive." [start the nick]
"nick"	185839117	the nick	--	--	"Maybe there is a way out of the nick. Not of nick, but the nick. It's probably too much to think yourself in K.C."
"kitchne"	454037543	kitchen	--	--	"[if moor is unvisited]Nothing happens. Well, you didn't really want to go back to the nick, and there's probably no third room to look for between the two. Maybe you need to escape this bunker from another room[else]There's no room between the nick and kitchen. You already found a better way out, anyway[end if]." [start kitchen]
"kitchen"	454037543	--	--	kitch-visit rule	"You can just walk to the kitchen, there's no need to revisit the nick, and there's no third location."
"rendin"	416966863	kitchen	--	--	"You don't need to change the red inn. It [if taco is off-stage]will support[else]supported[end if] your cooking efforts."
"ditties"	541314892	kitchen	--	--	"Don't let the songs distract you from your mission."
"fridge"	338266445	kitchen	--	--	"[fridge-abuse]."
"grief"	317237356	kitchen	--	--	"[fridge-abuse]."
"mud"	190210049	--	--	drop-mud rule	"The mud is just there. You can't change it."
"cult"	281035249	--	cult tee	--	"The whole t-shirt."
"tee"	358722236	--	cult tee	--	"The whole t-shirt."
"were"	448870794	--	cask	--	"[if sack is abrod]There's no other way to change the cask than to and from the sack[else]The cask is changeable, but not like that[end if]. WERE-EWER just clue[if sack is abrod]d[else]s[end if] it can be changed."
"pan"	152561285	--	cake pan	--	"[ck-p]."
"cake"	201932690	--	cake pan	--	"[ck-p]."
"cause"	350379285	--	HOTSAUCE	--	"No need to do more with the hot sauce."
"packet"	386508667	--	hotsauce	--	"Fiddling with sauce packets is so awful! Until it's easy. And it should be, here. Just PUT the sauce on any food."
"cheesy"	530533320	--	spearman	--	"It's more that he's a spearman--but maybe his cheesiness is a clue."
"spear"	393057655	--	spearman	--	"The spearman is what's important."
"perfume"	618097836	--	perfume	--	"[perf-brand]."
"bottle"	480611466	--	perfume	--	"[perf-brand]."
"act"	124303421	--	CATHOUSE	--	"[perf-brand]."
"houes"	440820758	--	CATHOUSE	--	"[perf-brand]."
"cutup"	413793176	--	steak	--	"The steak's just right as is."
"cutupsteak"	796104265	--	steak	--	"The steak's just right as is."
"lamina"	236164982	--	manila animal	--	"It actually looks pretty nice on the fridge."
"burlap"	346316131	--	sack	--	"The sack itself seems pliable, but its individual fibers aren't."
"wart"	298556412	--	warts	--	"Why zap just one wart? Go for all of them!"
"trellis"	565134420	Stiller Trellis	--	--	"[if trel-priv is in Stiller Trellis][loc-rej].[else]You can't seem to start to reconstruct the trellis. You only hope your work in Sacred Cedars is done.[end if]" [start Stiller Trellis]
"arching"	290299561	--	crashing archings	--	"Neither arching shakes. They're probably too sturdy, and you're probably not meant to go back."
"crashing"	386573527	--	crashing archings	--	"[loc-rej]."
"hay"	161829369	--	hay	--	"Hay is not terribly magical. It's more for trading or building."
"wall"	217750269	--	scraped wall	--	"[hway-hint]."
"scraped"	433092329	--	scraped wall	--	"[hway-hint]."
"rubble"	408887368	--	crashing archings	--	"The rubble is too dense to rearrange, physically or magically. You should have as much of the oils as you need."
"shoe"	335714951	--	hoses	--	"There's more than one hose here." [start room]
"pair"	213970426	--	hoses	--	"Many things can be a pair, but these hoses--well, a pair of HOSES is kind of odd."
"sheo"	335714951	--	--	got-shoes rule	"But you're wearing the shoes. That might cause problems."
"shoes"	431988917	--	--	got-shoes rule	"But you're wearing the shoes. That might cause problems."
"room"	298104110	--	--	rm-or-moor rule	"You almost feel something picking you up and pulling you somewhere else[if moor is visited and player is in roomroom]--you got here and can figure how to get back[else if moor is unvisited]--there are only so many ways to figure a new place[else]--you've been there and back, though, so you should know what to do[end if]." [?? does this get found] [start moor]
"mire"	322197911	Moor	--	--	"You can't change the rime-mire. You probably don't need to go wandering off, anyway. There's enough to do here."
"woefulpat"	682291796	--	pat	--	"[woe-all]."
"woeful"	495528001	--	Woeful Pat	--	"[woe-all]."
"afwul"	295557133	--	pat	--	"[woe-all]."
"peto"	386734663	--	pat	--	"[woe-all]."
"roda"	182893287	--	roadblock	--	"No, the full roadblock."
"block"	218524084	--	roadblock	--	"No, the full roadblock."
"blakc"	146359325	--	black door	--	"The black door is good as it is."
"droo"	255058046	--	black door	--	"The black door is good as it is."
"expo"	396392726	--	expo flier	--	"[expo-or-anapest]."
"expoflier"	734844219	--	expo flier	--	"[expo-or-anapest]."
"flire"	338451493	--	expo flier	--	"[expo-or-anapest]."
"anapests"	578213162	--	anapest	--	"Well, there are many, but the poem is [i]in[r] anapest."
"pome"	347699798	--	poem	--	"[peas-poe]."
"poetyr"	594417718	--	poem	--	"[peas-poe]."
"peom"	347699798	--	pat	--	"[pat-poe]."
"poerty"	594417718	--	pat	--	"[pat-poe]."
"folded"	324545599	--	--	got-plane rule	"It's a plane, now, for sure."
"paper"	378249648	--	--	got-plane rule	"It's a plane, now, for sure."
"papers"	474523614	--	--	got-plane rule	"It's a plane, now, for sure."
"graffiit"	366236825	--	red graffiti	--	"Hm, there has to be a clue in it."
"redgraffiti"	600395826	--	red graffiti	--	"Hm, there has to be a clue in it."
"warhead"	383751709	--	missile	--	"You don't want to change the missile's message, which seems rather nice."
"wires"	462331497	--	wires	--	"[no-wire]."
"wire"	366057531	--	wires	--	"[no-wire]."
"buttons"	569278799	--	--	panel-in-silo rule	"[but-but]."
"button"	473004833	--	--	panel-in-silo rule	"[but-but]."
"leftbutton"	784249695	--	--	panel-in-silo rule	"[what-b-says]."
"rightbutton"	776313501	--	--	panel-in-silo rule	"[what-b-says]."
"letf"	311244862	--	--	panel-in-silo rule	"[what-b-says]."
"rigth"	303308668	--	--	panel-in-silo rule	"[what-b-says]."
"tree"	444046039	--	trees button	--	"No, the trees button is plural."
"hoot"	289097471	--	hoots button	--	"No, the hoots button is plural."
"shootbutton"	858376270	--	--	panel-in-silo rule	"No, you're overthinking it. Just the text."
"treesbutton"	1013324838	--	--	panel-in-silo rule	"No, you're overthinking it. Just the text."
"cedars"	351626370	Sacred Cedars	--	--	"[loc-rej]." [start Sacred Cedars]
"cedar"	255352404	Sacred Cedars	--	--	"[loc-rej]."
"drawing"	362975539	Sacred Cedars	--	--	"[best-not-defile]."
"drawings"	459249505	Sacred Cedars	--	--	"[best-not-defile]."
"verse"	544374807	Sacred Cedars	--	--	"[best-not-defile]."
"spout"	460308327	Sacred Cedars	--	--	"[best-not-defile]."
"pout"	364034361	Sacred Cedars	--	--	"[best-not-defile]."
"minerva"	500458057	Sacred Cedars	--	--	"[best-not-defile]."
"chalice"	304094081	Sacred Cedars	--	--	"[best-not-defile]."
"candle"	292749948	Sacred Cedars	--	--	"[best-not-defile]."
"lance"	271720859	Sacred Cedars	--	--	"[best-not-defile]."
"idols"	290462317	Sacred Cedars	--	--	"[best-not-defile]."
"cliche"	301906263	Sacred Cedars	--	--	"[best-not-defile]."
"oil"	173159262	--	oils	--	"[if caskfillings > 2]They're OILS, but you're done with them, anyway[else if caskfillings is 2]Really, they're oils. There's so much more you can do with oils than oil. Well, one more thing YOU can do[else]Really, they're oils. There's so much more you can do with oils than oil. Well, two things YOU can do[end if]." [end-i]

table of Metros nudges
this-cmd	hashval	this-room	this-item	this-rule	this-clue
"metros"	550941626	--	--	degen-true rule	"[reg-rej]."
"metro"	454667660	--	--	degen-true rule	"[reg-rej]."
"undesired"	698274326	Undesired Underside	--	--	"[loc-rej]." [Undesired Underside]
"titling"	451526777	Undesired Underside	--	--	"No, the tilting titling is unstable enough."
"friend"	374574251	Undesired Underside	--	--	"[finder-cond]."
"sensor"	548937929	Undesired Underside	--	--	"[finder-cond]."
"metallic"	468805207	Undesired Underside	--	--	"[on-finder]."
"signers"	552177900	Undesired Underside	--	--	"[on-finder]."
"signer"	455903934	Undesired Underside	--	--	"[on-finder]."
"door"	255058046	Undesired Underside	--	--	"[on-finder]."
"optical"	378928642	Undesired Underside	--	--	"Changing the beam is way out of your league."
"beam"	212487985	Undesired Underside	--	--	"Changing the beam is way out of your league."
"building"	389860542	Undesired Underside	--	--	"[no-hot]."
"special"	425546122	Undesired Underside	--	--	"[if Esoteric Coteries is visited]You don't need to perform any tricks, now you've gotten to the Esoteric Coteries[else]That's not the way to get to the special place. You need special ID[end if]."
"theol"	396364842	Undesired Underside	--	--	"[no-hot]."
"tonr"	331693906	--	torn cue	--	"The torn cue is just there to direct you to the brocade."
"cue"	251917501	--	torn cue	--	"The torn cue is just there to direct you to the brocade."
"etch"	287204011	--	tech etch	--	"The tech-etch is pretty securely, um, etched on."
"reading"	382846875	--	a reading	--	"It's *A* reading you need to worry about."
"cramped"	400893516	Undesired Underside	--	--	"You can't do much with or to the camp, here or north."
"camp"	166734515	Undesired Underside	--	--	"You can't do much with or to the camp, here or north."
"roarings"	489962023	Roarings Garrison	--	--	"[loc-rej]." [Roarings Garrison]
"roaring"	393688057	Roarings Garrison	--	--	"[loc-rej]."
"tent"	402933653	--	tents	--	"As anti-personal property as the beatniks/moonies are, that'd still annoy them."
"tents"	499207619	--	tents	--	"As anti-personal property as the beatniks/moonies are, that'd still annoy them."
"deadbeat"	423574955	--	deadbeat	--	"[ded-chg]."
"dead"	172052105	--	deadbeat	--	"[ded-chg]."
"beat"	251522850	--	deadbeat	--	"[ded-chg]."
"buttosn"	569278799	--	lost corn	--	"[kern-push]."
"yellow"	540080389	--	lost corn	--	"[kern-push]."
"kernels"	612864512	--	lost corn	--	"[kern-push]."
"kernel"	516590546	--	lost corn	--	"[kern-push]."
"control"	478865907	--	controls	--	"You've already changed the lost corn into the controls, and you don't need to do more."
"leavse"	515052661	--	clover	--	"It's the whole clover you need to change."
"fuzzy"	499919191	--	clover	--	"The fuzziness seems to be part of the clover. It might be, even if you're able to change the clover."
"string"	431207843	--	Velcro	--	"No need to mess with the string joining the Velcro mittens."
"cordoned"	491806337	Roarings Garrison	--	--	"[condo-visit]."
"condo"	257647336	Roarings Garrison	--	--	"[condo-visit]."
"redtents"	733366620	Roarings Garrison	--	--	"Not nice. It's the only home the deadbeats have."
"harps"	302533845	Roarings Garrison	--	--	"[harp-annoy]."
"harp"	206259879	Roarings Garrison	--	--	"[harp-annoy]."
"reedings"	604739132	--	deadbeat	--	"[beat-man]."
"reeding"	508465166	--	deadbeat	--	"[beat-man]."
"lost"	327550400	--	lost corn	--	"It's not just that it's lost, it's CORN[dead-help]."
"corn"	247589473	--	lost corn	--	"It's not just that it's corn, it's LOST too[dead-help]."
"glove"	395737047	--	Velcro	--	"[mits-are]."
"gloves"	492011013	--	Velcro	--	"[mits-are]."
"mitten"	512001652	--	Velcro	--	"[mits-are]."
"mittens"	608275618	--	Velcro	--	"[mits-are]."
"library"	412420266	Roarings Garrison	--	--	"The library could use renovation, but that's out of the scope of your quest, now."
"boastin"	408243638	Obtains Boastin' Bastion	--	--	"[loc-rej]." [boastin-obtains bastion]
"obtain"	311969672	Obtains Boastin' Bastion	--	--	"[loc-rej]."
"candelabra"	400868292	Obtains Boastin' Bastion	--	--	"Interior decorating is not your strength."
"carpets"	515173258	Obtains Boastin' Bastion	--	--	"Interior decorating is not your strength."
"carpet"	418899292	Obtains Boastin' Bastion	--	--	"Interior decorating is not your strength."
"talkers"	521448731	Obtains Boastin' Bastion	--	--	"You can't change who they are. They probably can't, either. It's sad."
"talker"	425174765	Obtains Boastin' Bastion	--	--	"You can't change who they are. They probably can't, either. It's sad."
"caek"	201932690	--	dry cake	--	"It isn't just any cake. It's dry cake."
"dry"	228712144	--	dry cake	--	"It isn't just any cake. It's dry cake."
"rental"	441149095	Obtains Boastin' Bastion	--	--	"[if antlers are in Obtains Boastin' Bastion]One antler seems to twitch a bit and pull towards you. Curious--it doesn't look completely relevant, but it'd be funny to see something happen to the antlers[else]No point bringing those tacky antlers back, or thinking about them any more[end if]."
"thelo"	396364842	The Ol' Hotel	--	--	"[loc-rej]." [the ol hotel]
"bottel"	480611466	The Ol' Hotel	--	--	"[no-ketch]."
"ketchup"	526708955	The Ol' Hotel	--	--	"[no-ketch]."
"catsup"	407149153	The Ol' Hotel	--	--	"You think of how to make the ketchup slightly classier. [no-ketch]."
"mattress"	678160851	The Ol' Hotel	--	--	"Nothing to change the mattress to[if night thing is visible], even if you could move the night thing off[else if emitter is off-stage], but something might be inside it[else], and you already looted it[end if]."
"thing"	286892373	--	night thing	--	"The night thing is twisted beyond redemption."
"potato"	438578967	--	night thing	--	"The night thing would probably still be big and terrifying even if it changed its form. You need to find a way to get rid of it."
"lucre"	391055143	--	ulcer	--	"You're a wordplayer, not a doctor, sadly. But that ulcer was the night thing's own fault, anyway."
"emitter"	656224056	--	emitter	--	"Whatever icky stuff is/was in there might come out. Eww."
"ganst"	303079012	--	--	angst rule	"You don't get rid of angst with just a word."
"bile"	245031699	Bile Libe	--	--	"[loc-rej]."
"librayr"	412420266	Bile Libe	--	--	"[loc-rej]."
"plaque"	454785149	Bile Libe	--	--	"It's more, it's A MOTTO."
"word"	288640242	--	words	--	"You'd need to do something to all the words."
"hilt"	239199002	--	sword	--	"The hilt serves a purpose, and besides, there's not much to change it to."
"bump"	269065824	--	bump	--	"Just search the bump instead."
"motto"	419000343	--	motto	--	"It's labeled A MOTTO. So you probably have to respect the creative license, such as it is, of whoever wrote it."
"potaot"	438578967	--	motto	--	"The author twisted words enough. Perhaps you could concentrate on the motto."
"florae"	369999042	Fo' Real Florae	--	--	"some text"
"real"	269131569	Fo' Real Florae	--	--	"some text"
"fare"	241832626	Fo' Real Florae	--	--	"some text"
"fairies"	428092284	Fo' Real Florae	--	--	"They could CERTAINLY out-magic you back, and give a little extra for your misspelling, even if anagramming could have an effect on them."
"flower"	475745997	Fo' Real Florae	--	--	"[loc-rej]."
"fairy"	281378615	Fo' Real Florae	--	--	"The faeries would mangle you back worse."
"faery"	364191878	Fo' Real Florae	--	--	"The faeries would mangle you back worse."
"trounce"	583611407	Fo' Real Florae	--	--	"You don't need to do anything to the counter, and it's probably protected by a spell, anyway."
"faeries"	510905547	Fo' Real Florae	--	--	"They could CERTAINLY out-magic you back, even if anagramming could have an effect on them."
"heath"	307668543	--	heaths	--	"[if player does not have heaths]Probably best not to do stuff to even one heath while the faeries have them[else]They are multiple heaths--so you should try to change just one[end if]."
"stems"	487539212	--	heaths	--	"Deal with the whole flower, not just the stems."
"begonia"	369265465	--	begonias	--	"[if player does not have begonias]Probably best not to do stuff to even one begonia while the faeries have them[else]They are multiple begonias--so you should try to change just one[end if]."
"noise"	412333006	--	noise bag	--	"Even if you could do anything, that'd rip the noise bag open."
"bag"	53206425	--	noise bag	--	"Even if you could do anything, that'd rip the noise bag open."
"anticool"	440722768	Esoteric Coteries	--	--	"[loc-rej]."
"esoteric"	678671013	Esoteric Coteries	--	--	"[coterie-no]."
"coterie"	582397047	Esoteric Coteries	--	--	"[coterie-no]."
"nerd"	303066509	Esoteric Coteries	--	--	"[nerd-nah]."
"nerds"	399340475	Esoteric Coteries	--	--	"[nerd-nah]."
"dorks"	329912613	Esoteric Coteries	--	--	"[nnww]."
"geeks"	437419064	Esoteric Coteries	--	--	"[nnww]."
"dork"	233638647	Esoteric Coteries	--	--	"[nnww]."
"geek"	341145098	Esoteric Coteries	--	--	"[nnww]."
"asknerds"	550735437	Esoteric Coteries	--	--	"The nerds look at you, then remark they can't decipher THAT. But maybe if you rearranged things a bit..."
"asknerd"	454461471	Esoteric Coteries	--	--	"'You can ask us all!' one nerd blurts. 'We can pool our collective knowledge in a data cloud and stuff or something!'"
"tulip"	388488469	--	tulip	--	"[if player has tulip]It's handy as is. It gives light. You can't ask for much more[else]The nerds would gang up on you and take it back, if anything worked, which it won't[end if]."
"tramline"	550217094	Elm Train Terminal	--	--	"[loc-rej]." [start tramline terminal]
"lairs"	282592272	Elm Train Terminal	--	--	"[fix-rail]."
"lair"	186318306	Elm Train Terminal	--	--	"[fix-rail]."
"track"	262560402	Elm Train Terminal	--	--	"[fix-rail]."
"tracks"	358834368	Elm Train Terminal	--	--	"[fix-rail]."
"psa"	179927743	Elm Train Terminal	--	--	"[psa-vand]."
"pass"	276201709	Elm Train Terminal	--	--	"[psa-vand]."
"art"	190621639	Elm Train Terminal	--	--	"There aren't many ways to look at THIS art, and none are constructive, you sense."
"cafe"	175514408	Elm Train Terminal	--	--	"The cafe face can't transform into anything."
"faded"	198567001	Elm Train Terminal	--	--	"[faded-ad]."
"fadedad"	221783908	Elm Train Terminal	--	--	"[faded-ad]."
"fad"	49731803	Elm Train Terminal	--	--	"[faded-ad]."
"deda"	172052105	Elm Train Terminal	--	--	"[faded-ad]."
"none"	339973702	--	neon pig	--	"It's not just that it's neon, it's that it's a pig."
"pgi"	159058507	--	neon pig	--	"It's not just that it's a pig, it's that it's neon."
"nope"	352532153	--	gin nope opening	--	"[nope-gin]."
"gin"	146500056	--	gin nope opening	--	"[nope-gin]."
"recess"	552489538	--	gin nope opening	--	"You've already made nothing out of something, and instead of reversing that, [if controls are in gin nope opening]you did what you needed[else]you may need to put something in the opening[end if]."
"irwin"	352151776	--	gin nope opening	--	"You don't want to mess with the wirin['] [if controls are in gin nope opening]any further[else]that way[end if]."
"beats"	347796816	--	--	no-beats rule	"The beats are still ringing in your head, yeah, and it's hard not to think about them, even though they're not here."
"beta"	251522850	--	beats	--	"This racket isn't just one beat."
"bassy"	335513907	Bassy Abyss	--	--	"[loc-rej]." [start Bassy Abyss]
"aligns"	298775679	Bassy Abyss	--	--	"[aligns-no]."
"align"	202501713	Bassy Abyss	--	--	"[aligns-no]."
"resin"	423304232	--	--	resin-lala rule	"The dust is dust now." [end-m]

table of Resort nudges
this-cmd	hashval	this-room	this-item	this-rule	this-clue
"resort"	572190276	--	--	degen-true rule	"[reg-rej]."
"astral"	342897262	Astral Altars	--	--	"[loc-rej]." [start astral altars]
"altar"	246623296	Astral Altars	--	--	"[loc-rej]."
"flare"	295646465	--	feral flare	--	"The feral flare crackles menacingly. You doubt you can change it for the better."
"tile"	329722812	Astral Altars	--	--	"No, all the tiles."
"leis"	322886760	Leis Isle	--	--	"[loc-rej]." [start Leis Isle]
"lie"	226612794	Leis Isle	--	--	"[loc-rej]."
"woodland"	423607270	Leis Isle	--	--	"[loc-rej]."
"sand"	188398381	Leis Isle	--	--	"[the-sand]."
"and"	92124415	Leis Isle	--	--	"[the-sand]."
"sands"	284672347	Leis Isle	--	--	"[the-sand]."
"islet"	425996778	Leis Isle	--	--	"Nothing happens. You may need to deal with something specific on the Leis Isle to leave."
"eter"	444046039	Leis Isle	--	--	"The tree sits there[if swing is visible], but the swing rocks a bit[end if]."
"oflat"	259979148	Leis Isle	--	--	"[if cork is visible and wings are visible]You can just use either the cork or the wings to leave to the east[else if cork is visible or wings are visible]You have a way off this island to the east, though you can make the other for fun, too[else if tree is examined or rock is examined]Mangling the word you read did nothing. Maybe go with what it's written on[else]You notice writing on the rock and swing similar to what you just said. Or tried to say[end if]. Also, no need to make anything lo-fat here."
"drive"	386316667	Rived Drive	--	--	"[loc-rej]." [start Rived Drive]
"blow"	254520094	Rived Drive	--	--	"You don't need to make any blow bowl more chaotic."
"tool"	305629011	--	tool shed	--	"Hm, no, the whole tool shed."
"shed"	282391463	--	tool shed	--	"Hm, no, the whole tool shed."
"ashed"	284579281	--	tool shed	--	"A shed may provide shade, but you need a way up."
"pole"	337438484	--	poles	--	"Only changing one pole would still leave a vertical barrier."
"window"	425151566	--	tool shed	--	"They remain still. Maybe the toolshed itself."
"windows"	521425532	--	tool shed	--	"They remain still. Maybe the toolshed itself."
"ulock"	305210986	--	tool shed	--	"Nope. That lock's secure."
"lock"	200105179	--	tool shed	--	"Nope. That lock's secure."
"rope"	368948448	--	ropes	--	"Those are already useful."
"grip"	244382310	--	grips	--	"Those are already useful."
"hotsopt"	569947414	Potshot Hotspot	--	--	"[loc-rej]." [start Potshot Hotspot]
"ransom"	391120825	Potshot Hotspot	--	--	"You don't need to change the manors. You just need to be able to get there."
"manor"	294846859	Potshot Hotspot	--	--	"You don't need to change the manors. You just need to be able to get there."
"rioters"	617183122	--	riot	--	"[simple-riot]."
"rioter"	520909156	--	riot	--	"[simple-riot]."
"people"	546710552	--	riot	--	"[simple-riot]."
"horde"	345793877	--	riot	--	"[simple-riot]."
"uprisers"	722566259	--	riot	--	"[simple-riot]."
"protesters"	980846328	--	protest	--	"They're just a simple protest."
"potter"	575168484	--	potters	--	"Picking one person out of a crowd never works."
"clay"	197366494	--	--	hotspot-no-kilns rule	"No, the clay is a clue to what the [if riot is visible]protest[else]trio[end if] really wants to do."
"three"	481328338	--	--	riot-gone rule	"The trio remains unmoved. Perhaps you can [if potters are in Potshot Hotspot]get the potters something to work with[else]give the protest more constructive aims[end if]?"
"chainlinks"	489297393	--	chain links	--	"You're overthinking it. Or you hope you are. It's both a chain, and links."
"tugtoe"	546084231	--	red bull burdell	--	"Red Bull Burdell snickers, but a bit uneasily, at--whatever you just said."
"red"	234159001	--	red bull burdell	--	"Burdell's laugh echoes. 'You think you can change ME?!'"
"bull"	231152390	--	red bull burdell	--	"Burdell's laugh echoes. 'You think you can change ME?!'"
"burdell"	465311391	--	red bull burdell	--	"Burdell's laugh echoes. 'You think you can change ME?!'"
"boot"	270234077	--	red bull burdell	--	"The boot is already a little--modified. You can see its toe. Maybe that is a weakness."
"toe"	305268704	--	red bull burdell	--	"But what to do with Red Bull Burdell's toe now that he's yelling GET OUT?"
"scar"	202791172	--	red bull burdell	--	"No time for cosmetic changes."
"crass"	299065138	--	red bull burdell	--	"No time for cosmetic changes."
"cutlery"	616524413	--	red bull burdell	--	"Red Bull Burdell laughs at your puny attempt. There's no weakness in the cutlery--maybe somewhere, or something, else?"
"tshirt"	470092950	--	red bull burdell	--	"You slur out a few consonants--maybe you should work with something closer, lower down."
"manse"	359250554	Means Manse	--	--	"You like your manse just fine now. No need to change it. It's just all the EXITS you don't want to worry about." [start Means Manse]
"extis"	484951020	Means Manse	--	--	"That's not quite the right sort of nothing."
"marble"	351625627	Means Manse	--	--	"[ennui]."
"spire"	435862683	Means Manse	--	--	"[ennui]."
"toaster"	592164309	Means Manse	--	--	"[ennui]." [end-r]

table of general nudges
this-cmd	hashval	this-room	this-item	this-rule	this-clue
"aprep"	378249648	--	prep paper	--	"[no-2]."
"papesr"	474523614	--	prep paper	--	"[no-2]."
"prep"	376061830	--	prep paper	--	"[no-2]."
"sheet"	492278501	--	prep paper	--	"[no-2]."
"firm"	220906698	--	prep paper	--	"FIMR is just a mnemonic for the [if Trips Strip is unvisited]places[else]stores[end if] you need to explore[if cur-score of stores is 0], somehow[end if]."
"tinfoil"	416684530	--	info-lit	--	"You can't change paranoid ramblings."
"tagged"	319332438	--	gadget	--	"Bad idea to mess with electronics you don't understand."
"lemon"	388955186	--	gadget	--	"That's just an example, for CERTIFY."
"paste"	410843870	--	gadget	--	"That's just an example, for RECTIFY."
"tip"	229568823	--	gadget	--	"You can just switch the gadget instead."
"phail"	219742761	--	phail phial	--	"[chem-bad]."
"blue"	305144660	--	phail phial	--	"[chem-bad]."
"arrow"	355122774	--	gadget	--	"[gad-part]."
"hows"	315843615	--	gadget	--	"[gad-part]."
"blurb"	281081259	--	gadget	--	"[gad-part]."
"tag"	137897538	--	gadget	--	"[gad-part]."
"certify"	529112509	--	gadget	--	"There's no extra setting besides CERTIFY and RECTIFY."
"secure"	561321379	--	gadget	--	"There's no extra setting besides SECURE, and you can't do anything besides RECUSE once you SECURE."
"screen"	525123080	--	gadget	--	"[gad-part]."
"buttno"	473004833	--	gadget	--	"[gad-part]."
"handle"	311026662	--	gadget	--	"[gad-part]."
"example"	569923068	--	gadget	--	"[gad-part]."
"examples"	666197034	--	gadget	--	"[gad-part]."
"tightknot"	620398164	--	gadget	--	"[titenot]."
"tight"	321094883	--	gadget	--	"[titenot]."
"knot"	299303281	--	gadget	--	"[titenot]."
"salient"	497092104	--	salient saltine	--	"The saltine's there to help you. Changing it might work against you."
"point"	372828908	--	--	know-point rule	"There's no secret cheat between NO TIP and OPT IN."
"parse"	393057655	--	--	can-i-parse rule	"There's no inbetween for the PARSE and SPARE commands for the gadget."
"angle"	285314976	--	phail phial	--	"There's nothing between ANGLE and GLEAN that you can do with the blue lube."
"yorpwald"	548467110	--	--	past-loader rule	"[if player is in Notices Section][no-warpy][else]You'll need to change Yorpwald one anagram at a time[end if]."
"retry"	523922985	--	--	past-strip rule	"Being able to RETRY is good enough. You don't want to do anything too weird. It could backfire."
"notepad"	478859078	--	--	degen-true rule	"[what-for]."
"dope"	304653734	--	--	degen-true rule	"[what-for]."
"tan"	174205344	--	--	degen-true rule	"[what-for]."
"toad"	200679502	--	--	degen-true rule	"[no-pen]."
"pen"	278179576	--	--	degen-true rule	"[no-pen]."
"northwest"	804101071	--	--	degen-true rule	"[diag-dir-rej]."
"northeast"	698354116	--	--	degen-true rule	"[diag-dir-rej]."
"southeast"	745502578	--	--	degen-true rule	"[diag-dir-rej]."
"southwest"	851249533	--	--	degen-true rule	"[diag-dir-rej]."
"down"	272223947	--	--	degen-true rule	"[dir-rej]."
"norht"	368976205	--	--	degen-true rule	"[dir-rej]."
"souht"	416124667	--	--	degen-true rule	"[dir-rej]."
"eats"	329377911	--	--	degen-true rule	"[dir-rej]."
"ewst"	435124866	--	--	degen-true rule	"[dir-rej]."
"xyyzz"	603425821	--	--	degen-true rule	"[xyzzys]"
"plugh"	310267606	--	--	degen-true rule	"[xyzzys]"
"plover"	529927107	--	--	degen-true rule	"[xyzzys]"
"iths"	281659129	--	--	degen-true rule	"[cussy]!"
"kcuf"	203559466	--	--	degen-true rule	"[cussy]!"
"mand"	156199568	--	--	degen-true rule	"[cussy]!"
"lelh"	272716086	--	--	degen-true rule	"[cussy]!"
"parc"	187983165	--	--	degen-true rule	"[cussy]!"
"heck"	237027171	--	--	degen-true rule	"[cussy]!"
"smell"	395782906	--	--	degen-true rule	"Your sense of smell doesn't change."
"writing"	487861496	--	--	degen-true rule	"You don't need to do anything with writing besides EXAMINE or READ it for possible hints."
"pockets"	554947392	--	--	degen-true rule	"[no-pock]."
"pocket"	458673426	--	--	degen-true rule	"[no-pock]."
"jump"	299607444	--	--	degen-true rule	"You consider the benefits of collapsing in an impressively uncoordinated heap, then decide against doing so."
"verb"	338713637	--	--	degen-true rule	"[no-special-verb]."
"verbs"	434987603	--	--	degen-true rule	"[no-special-verb]."
"think"	307225849	--	--	degen-true rule	"Whenever you just try to too hard to think, things always get jumbled."
"score"	402762040	--	--	degen-true rule	"[no-scram]."
"scores"	499036006	--	--	degen-true rule	"[no-scram]."
"about"	303175125	--	--	degen-true rule	"There's no special addition to the 'about' section, but I'm flattered you looked for it."
"credits"	497541416	--	--	degen-true rule	"[no-cred-spec]."
"credit"	401267450	--	--	degen-true rule	"[no-cred-spec]."
"sites"	468456905	--	--	degen-true rule	"[meta-rej]"
"tech"	287204011	--	--	degen-true rule	"[meta-rej]"
"son"	239534051	--	--	degen-true rule	"[meta-rej]"
"spaceon"	469999522	--	--	degen-true rule	"[meta-rej]"
"spaceson"	566273488	--	--	degen-true rule	"[meta-rej]"
"spaces"	423013403	--	--	degen-true rule	"[meta-rej]."
"space"	326739437	--	--	degen-true rule	"[meta-rej]."
"access"	360553029	--	--	degen-true rule	"[meta-rej]"
"opts"	355202520	--	--	degen-true rule	"[meta-rej]"
"options"	543455451	--	--	degen-true rule	"[meta-rej]"
"version"	604821629	--	--	degen-true rule	"[meta-rej]"
"something"	649400178	--	--	degen-true rule	"Instead of messing with SOMETHING, maybe you can examine what the something is on."

book auxiliary text and rules

section ordeal loader auxiliary

to say loc-rej:
	say "You won't need to do anything to the whole room unless you are trapped in a room. Or it is just a room, and you need to get outside[if player has gadget]. Your gadget would probably start acting up then, anyway[else if player is in notices]. There's a hint device here that'll help, then[else if gadget is off-stage]. You'll find a hint device for that soon enough[end if]"

to say name-list:
	say "You could get in trouble for mucking with a list of potential job competitors. You're not sure if you're ready for a new job, yet"

to say word-games:
	say "A voice in your head tells you that sort of mental wandering is what got you canned in the first place. Maybe it'd disappear if you could somehow, well, leave"

to say sofa-there: say "The Oafs['] Sofa is there, and there's nothing you can do about it"

to say nope-odor:
	say "You try to think of it that way, but--nope, it's an odor. Not a very complex one, but an odor"

to say com-chor:
	say "It's a pretty complex chord[if cur-score of ordeal loader is 3]. But you don't seem to need to deal with it[else]. Maybe you can work with something simpler[end if]"

to say darnels-inst:
	say "You [if darn-slan is true]already messed with the darnels[else]might be able to clear the darnels a bit, but they're not as thick as, well, the thicket[end if]"

to say no-warpy:
	say "You can't change Old Warpy. You have to just trust it";

to say stat-at:
	say "[if static is visible]The static crackles[else]The attics shake slightly[end if]."

to say reg-rej:
	say "You don't want to change a region drastically while you're in it"

section stores auxiliary

to say tid:
	say "The depiction is there as a hint, not as a puzzle";

to say say-which:
	say "You'll need to pick out a store to work with. Mall or Malls is too unspecific. Also, changing Mall A to a Llama or whichever doesn't work--it's store X"

to say lotmaso:
	say "You need to manipulate each store as a store, not a mall or a lot"

to say no-cand:
	say "Nothing happens. You'd think that store could be a good candidate to change, but it isn't"

to say no-way:
	say "Nothing happens. The store remains impassive and dark"

to say no-mb:
	say "Nothing happens. Maybe if Yorpwald were in even more danger, it would";

to say road-sign:
	say "Hmm...you get the feeling the store itself holds more adventure"

to say no-store-m:
	say "No, it's a map of something behind Store M, it looks like."

to say hub-stur:
	say "The hubs bush is too sturdy. You can't escape the Trips Strip"

section forest auxiliary

this is the first-two-forest rule:
	if player is in sf or player is in rf, the rule succeeds;
	the rule fails;

to say no-con:
	say "No conifers appear. Maybe you can just use your senses, and it's easier than that"

to say guider-content:
	say "No, that's not the [i]essence[r] of the thing."

to say forest-no:
	say "Your compass feels extra jumbled, but--well, you must be close"

to say no-un:
	say "You can't do much to change the undead. You're not THAT powerful. Well, maybe specific undead, a bit later";

to say crosse-to-you:
	say "Whatever you could do to Corses Crosse, it might do worse to you"

to say in-sort of (q - a thing):
	say "[if q is moot]You already got [the q] from there[else]It doesn't rattle, but [the q] seem to[end if]"

to say tack-heap:
	say "No need to try to turn the stack into a heap. Ho ho ho"

to say vand-art:
	say "Don't vandalize the art, man"

to say nau-zer-enuf:
	say "The naughts, err, noughts seem zero-y enough to contain an o";

this is the see-meats rule:
	if River Ville is visible or Spam is visible or viler liver is visible or player is in Flesh Shelf, the rule succeeds;
	the rule fails;

to say spec-meat:
	say "You'll need to be more specific about the meat to poke at"

this is the liv-vis rule:
	if number of carried glopmeats > 0, the rule succeeds;
	if player is in Flesh Shelf and number of glopmeats in Flesh Shelf > 1, the rule succeeds;
	the rule fails;

to say bothlivers:
	say "The one liver seems inactive by itself"

to say rivliv:
	say "It's just a liver. No need to parse the brand name"

this is the spread-drapes rule:
	if player is in Cruel Ones' Enclosure:
		if drapes are in Cruel Ones' Enclosure or spread is in Cruel Ones' Enclosure:
			the rule succeeds;
	the rule fails;

to say froz-ha-ha:
	say "The scenery here's mostly frozen that way. Ha ha ha[if vowels are visible]. Except those vowels[end if]";

to say marsh-lake:
	say "The marsh and lake are symptoms of--whatever evil is beyond here"

section sortie auxiliary

this is the b4-cent rule:
	if player is in Trap Part and centrifuge-stopped is false, the rule succeeds;
	the rule fails;

this is the cent-spin rule:
	if the player is in Trap Part and centrifuge-stopped is false, the rule succeeds;
	the rule fails;

this is the nick-visit rule:
	if nick is visited, the rule succeeds;
	the rule fails;

this is the af-cent rule:
	if player is in Trap Part and centrifuge-stopped is true, the rule succeeds;
	the rule fails;

this is the kitch-visit rule:
	if player is in kitchen:
		the rule fails;
	if kitchen is visited, the rule succeeds;
	the rule fails;

to say fridge-abuse: say "The fridge has taken enough abuse and can't be changed for the better[if cake pan is not moot or grist is not moot], but maybe you can fix something inside it[end if]"

to say ck-p: say "It's not a cake, and it's not quite a pan--it's a cake pan";

to say perf-brand: say "It's the full name brand that really catches your eye"

to say hway-hint: say "The scraped wall doesn't respond or come any closer to being a hallway"

this is the got-shoes rule:
	if shoes are moot, the rule succeeds;
	the rule fails;

this is the rm-or-moor rule:
	if player is in room or player is in moor, the rule succeeds;
	the rule fails;

to say woe-all: say "Pat will always be woeful. He sort of likes it that way. Focus on his poetry"

to say expo-or-anapest: say "Thinking of the flier leads you back to the anapest";

to say peas-poe: say "The peasant's poem is about as good as it can be, for what it is. It's better than Pat's"

to say pat-poe: say "Pat won't react kindly to modifications of his poem"

this is the got-plane rule:
	if the player has the poem and the poem is folded, the rule succeeds;
	the rule fails;

to say no-wire: say "Despite the magic you can do, electricity still feels like, well, total magic. Plus you don't want to mess those wires up";

this is the panel-in-silo rule:
	if player is in moor and panel is part of the silo, the rule succeeds;
	the rule fails;

to say but-but: say "It's the buttons['] purposes that need[if steer button is visible and shoot button is visible]ed[end if] changing";

to say what-b-says:
	say "Hm, no, that'd be too abstruse. It's what the button [i]says[r], probably."

to say best-not-defile:
	say "Best not defile this shrine. Or even try to. The oils from the spout are gift enough";

section metros auxiliary

to say finder-cond: say "You don't [if esoteric coteries is visited]need to futz further with[else]have the skill to hack[end if] the friend finder."

to say on-finder: say "[if esoteric coteries is visited]You got to the Esoteric Coteries. You don't need any tricks like that[else]The signers['] ingress looks forbidding, but it looks hooked up to the friend finder too. Maybe put something on the friend finder[end if]."

to say no-hot:
	say "You can't change the hotel, ";
	if night thing is not in The Ol' Hotel:
		say "and you got rid of the night thing, anyway";
	else:
		say "but you could have a[if The Ol' Hotel is visited]nother[else] look around[end if]";

to say ded-chg: say "The deadbeat may mumble about change, but changing oneself? Not so fast"

to say kern-push: say "The buttons and kernels don't need pushing. Or they won't until they're a part of something useful"

to say condo-visit: say "[if dry cake is in Obtains Boastin' Bastion]You should probably just go north to look at the [n-of-garrison] instead[else]You've done enough to the condo/bastion. Time to move on[end if]"

to say harp-annoy: say "The harps are kind of annoying, but they've got nothing on the beats"

to say beat-man: say "He hasn't let the MAN change his designer reedings, and he won't let you. Besides, it could be "

to say dead-help: if bastion-evac is true, say ". Perhaps you can ask the deadbeat about the lost corn for more help";

to say mits-are: say "The mittens are as comfortable as they're going to be"

to say no-ketch: say "It [if night thing is moot]isn't useful now with the night thing gone[else]doesn't bend, but maybe it's a clue what the night thing likes to eat[end if]"

this is the angst rule:
	if player has emitter and emitter is angstgnatted, the rule succeeds;
	the rule fails;

to say coterie-no: say "You don't need to explore the coteries[if player has tulip]. The tulip is good enough[else]. Maybe the nerds could help you another way, though[end if]"

to say nerd-nah: say "The nerds are a little obnoxious, but they've had people trying to change them all their life. You may be better off ASKing the nerds"

to say nnww: say "Nah, they know what's what. They're not dorks or geeks but nerds. You can ask them about stuff, and they'll know more"

to say fix-rail: say "[if controls are in gin nope opening]You fixed the rail[else]You need to fix the rails electronically[end if]";

to say psa-vand: say "Vandalism! Hmph. Yes, Yorpwald should be safe for civil disobedience. But that's down the road"

to say faded-ad: say "The ad and the PSA are just silly. What's to the east is quite possibly evil, so you need to find your way there"

to say nope-gin: say "You already transformed the neon pig to the gin-nope opening. [if controls are in gin nope opening]And you put the controls in. Better not do any more[else]Might be better to see if anything fits there[end if]"

this is the no-beats rule:
	if player is in Esoteric Coteries or player is in Obtains Boastin' Bastion, the rule succeeds;
	the rule fails;

to say aligns-no: say "No use messing with the aligns signal when the [b-b] needs to be dealt with"

this is the resin-lala rule:
	if resin is moot, the rule succeeds;
	the rule fails.

section resort auxiliary

to say the-sand:
	say "The sand and sands and sands are just--well, sand. They won't help you get off the island";

to say simple-riot:
	say "Perhaps it's best to keep it simple and cut down the riot"

this is the hotspot-no-kilns rule:
	if player is in Potshot Hotspot:
		if kilns are not in Potshot Hotspot:
			if protest is in Potshot Hotspot or riot is in Potshot Hotspot, the rule succeeds;
	the rule fails;

this is the riot-gone rule:
	if player is in Potshot Hotspot and riot is moot, the rule succeeds;
	the rule fails;

to say ennui:
	say "You don't even want to TRY any more anagrams. You just want to BE...and not even take any of the [i]exits[r] here";

section general auxiliary

to say no-2:
	say "You can't really second-guess the help on the prep paper";

to say chem-bad:
	say "Bad idea to mess with chemical compounds you don't understand"

to say gad-part:
	say "You don't need to mess with the gadget or any part of it. It's probably better not to try"

to say titenot:
	say "It's a bit too thick to mess with. Both because of the consonants, and, well...you don't need to remove the knot, anyway";

this is the know-point rule:
	if pointcue is true, the rule succeeds;
	the rule fails.

this is the can-i-parse rule:
	if hows tag is moot, the rule fails;
	if player has gadget:
		the rule succeeds;
	the rule fails.

this is the past-loader rule:
	if Notices Section is visited, the rule succeeds;
	the rule fails;

this is the past-strip rule:
	if Self-ID Fields is visited or underside is visited or Trap Part is visited, the rule succeeds;
	the rule fails;

to say what-for:
	say "[if Notices Section is unvisited]You mess around with all the possibilities for a bit[else]You don't want to make your notepad vanish. It might be more useful to take notes on what to change[end if]"

to say no-pen:
	say "If you changed the pen, you'd have nothing to write with";

to say diag-dir-rej:
	say "This game doesn't require you to mess with diagonal directions, or even go that way, so I hope that's a small relief";

to say dir-rej:
	say "This game usually doesn't require you to mess with cardinal directions";

to say xyzzys:
	say "A hollow voice booms, 'Lo! Of...'[no line break]"

to say cussy:
	say "You're not fooling ME. Shame on you";

to say no-pock:
	say "You don't need to mess with your pockets"

to say no-special-verb:
	say "There's no secret verb or verbs to find trying that"

to say no-scram:
	say "There's no way to scramble your score. And scoring another point won't help you solve things, anyway"

to say no-cred-spec:
	say "There's no special addition to the 'credits' section, but I'm flattered you looked for it"

to say meta-rej:
	say "Meta-commands don't have any easter eggs, sadly"

book support rules

Shuffling Nudges ends here.

---- DOCUMENTATION ----