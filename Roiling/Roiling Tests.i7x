Version 1/190606 of Roiling Tests by Andrew Schultz begins here.

"This header file has tests used for A Roiling Original. They were moved here to de-clutter the main story.ni file."

volume testing - not for release

book basic tests

[* this is simply stuff to make sure features work. Test NOUNS to see nouns.]

chapter oddverbs

[* this tests retry, for starters]

test rtr with "ts/presto/in/s/drat/rats/retry/in"

chapter randtext

[* this tests all possibilities of random text, by region. Generic possibilities are included in rand-i.]

test twi with "lamp/x shelf/db/open door/1/4/4/4/4/4/lamp/x trash/g/g/g/g/g/g/g/g/d/staple/stapler/put staple in stapler/ts/troves/in/x pa/gonear upscale capsule/deserve/bolster/last/resign/otwin/deeply/quickly/w/e/w/e/w/e/w/7/play whistle"

test rand-i with "cap 3/x bookshelf/g/g/g/g/g/g/attack it/g/g/g/lamp/open door/1/1/1/1/1/1/1/1/2/lamp/x art/g/g/g/g/g/g/g/g/hint/n/y/g/g/g/n/g/g/g/shit/g/g/g/x ads/g/g/g/listen/g/g/g/basement/d/satchel/x settler/in/flier/2/2/1/1/1/1/1/1/8/8/8/10/10/staple/stapler/staple wall/z/z/z/z/////in"

test rand-sto with "tokers/nestor/enter smoke/z/z/z/z/x ian/g/g/g/outside"

test rand-p with "blam/s/rats/drat/s/ole/darn/z/z/z/z/whassup/n/n/umph/phooey/e/bleep/e/bingo/put dart in gun/w/n/mazeltov/there/n/syke/tough/later/n/x catechism/g/g/g/g/g/g/g/retry"

test rand-r with "past/ask pat about food/g/g/despite/out/across/opposite/out/inside/out/in/out/in/out/in/out/in/z/z/z/z/x pious/y/x pious/g/g/g/retry"

[this one actually wins, so I don't retry.]

test rand-v with "z/z/z/z/x ethics/g/g/g/hate/care/l/l/l/l/observe/spot/reason/believe/recall/glare/gape/x lead/deal/x brochure/g/g/g/desire/aspire/strive/ponder/deserve/x desk/g/g/g/x sked/g/g/g/bolster/master/last/x divorces/g/g/g/discover/last/decide/y"

test rand-y with "ask casper about xyz/g/g/g/g/g/g/g/sing/inset/remap/stroll/calm/run/boast/leap/z/z/z/z/z/z/z/z/spike/e/scan cans/seek/ask tuna about tuna/g/g/g/g/g/g/g/tutor/eat/w/w/warp/search/n/x theses/g/g/g/retry"

test rand-w with "z/z/z/z/gonear unripe/punier/n/rinsed/e/himself/n/sewed/get all/s/w/weirder/w/put dagger in repair/x dagger/g/g/g/g/g/retry"

[capturing Elvira's text is done in test twi]

test rand-t with "gonear elmer/honestly/z/z/z/z/retry"

[this wins the game, so...no retry, either]

test rand-h with "gonear len craig/z/z/z/z/purloin passport/w/n/research/review/n"

chapter combos

[* this tests combinations of big tests e.g. going through each area]

test win-quick with "test roman/test stores/test routes/test troves/switch patcher/test otters"

test win-q-patchstore with "ts/y/zap store u/zap store w/zap store y/zap store v/zap store p/zap store t/test otters"

test win-q-patchport with "ts/y/routes/towers/oyster/troves/presto/otters/zap routes/zap towers/zap oyster/zap troves/zap spot/zap otters/test otters"

test win-all with "test roman/test stores/test routes/test troves/test presto/test oyster/test towers/test otters"

test win-plus with "test roman/test stores/test routes/test troves/test presto/test oyster/test towers/a5/test otters/y/test others"

test win-dial with "cap 2/test win-plus"

test oops-plus with "test roman-oops/test stores-oops/test towers-oops/test routes-oops/test oyster-oops/test troves-oops/test presto-oops/test otters-oops/y/test others-oops"

chapter quickerr

[* this tests quick errors]

test err-trout with "gonear range/ff/tutor/spike/spike carps/spike pikes/scrap/scrap carps/scrap pikes/ff"

chapter roman

[* this includes tests for roman, roman with mistakes, roman min-points and roman max-points]

test diora with "test 1st/satchel/scan platform/scan pavement/scan pedestal/scan crabgrass/pad diorama/event map/farm plot/steel pad/brass crag/scan map/scan plot/scan pad/scan crag/pad diorama"

test elmq with "purloin settler/gonear basement/x settler/in/flier"

test elmo with "test 1st/basement/satchel/d/x settler/in/flier"

test elmox with "rom/test 1st/satchel/stable/painting/basement/chimney/u/ramp/d/stair/x settler/in/flier"

test roman3 with "test 1st/chimney/u/ramp/d/satchel/x settler/in/flier/0/y/staple/stapler/put staple in stapler/staple wall/in"

test roman2 with "test 1st/basement/d/satchel/x settler/in/flier/0/y/staple/stapler/put staple in stapler/staple wall/in/coff"

test roman1 with "test 1st/stable/in/sitar/d/satchel/x settler/in/flier/0/y/staple/stapler/put staple in stapler/staple wall/in/coff"

test 1st with "x shelf/lamp/x pad/pad red/open door/1/5/lamp"

test toe with "x shelf/lamp/x pad/pad red/open door/1/0/lamp/basement/d/satchel/x settler/in"

test means with "test 1st/satchel/basement/stable/chimney/u/ramp/enter closets/painting/in/stair/d/x settler/in/flier/0/y/staple/stapler/put staple in stapler/staple wall/in/coff"

test manse with "test means"

test roman-oops with "pmal/lamp/pmal/lehctas/satchel/lehctas/tnemesab/basement/tnemesab/elbats/stable/elbats/yenmihc/chimney/yenmihc/u/pmar/ramp/pmar/enter closets/gnitniap/painting/gnitniap/in/riats/stair/riats/d/in/reilf/flier/reilf/0/elpats/staple/elpats/relpats/stapler/relpats/put staple in stapler/staple wall/in/ffoc/coff/ffoc"

[test roman2 with "lamp/stable/out/stapler/d/get all/x treatise/out"]

test j with "gonear strip/purloin settler"

test means-dia with "x shelf/lamp/open door/1/1/1/1/1/1/1/1/1/1/1/1/1/1/1/1/1/1/1/1/1/1/1/1/lamp/x ads/listen/basement/d/satchel/x settler/in/flier/1/1/1/1/1/1/1/1/1/1/1/1/1/1/1/1/1/1/1/1/1/1/1/1/1/1/1/1/1/1/staple/stapler/put staple in stapler/staple wall/in"

test randum with "sing//z/damn/hint/n/sleep"

chapter towers

[* this includes tests for towers, towers with mistakes, towers min-points and towers max-points]

test towers with "seed 1/towers/enter towers/y/z/snared/warned/achier/nearby/bleak/bored/cricked/lardy/timider/weedy/wined/olden/tenser/gone/godly/learned/calmer/normal/pronest/eggier/coyer/ashen/recreant/stony/awed/yonder/out/get tarts/creaky/n/rusty/weirder/clumsy/rinsed/n/punier/pastier/coiled/n/married/weariest/angstier/n/s/e/marginal/s/himself/sewed/mined/resealed/w/s/w/put dagger in rapier repair/x gizmo/e/e/unreal/drained/e/naivest/grandiose/broken/e/wordy/push retape/pearly/go to duck/push repeat/go to yow/unlocked/w/n/holiest/n/hastiest/ask agnostic about doctor/s/s/e/attentive/rowdy/w/n/n/give gizmo to kid/robust/enter boat/nearest/present/dingy/w/greyed/give flowerpot/e/spectacular/coff 1"

test towers-nogo with "towers/towers/enter towers/y/rustled/docile/n/pastier/clumsy/rinsed/n/punier/weirder/coiled/n/married/weariest/angstier/e/marginal/s/himself/sewed/mined/resealed/get all/w/s/w/put dagger in rapier repair/e/e/unreal/drained/e/rusty/grandiose/broken/e/wordy/push retape/pearly/w/w/w/n/n/n/push repeat/s/s/s/e/e/e/unlocked/w/n/holiest/n/creaky/ask agnostic about doctor/s/s/e/attentive/rowdy/w/n/n/give gizmo to kid/robust/enter boat/nearest/snared/warned/achier/nearby/bleak/bored/cricked/lardy/timider/weedy/wined/olden/tenser/foldy/gone/godly/learned/calmer/normal/pronest/eggier/yonder/coyer/ashen/recreant/stony/awed/yonder/out/unable/w/dingy/e/spectacular/coff 1"

test towers-oops with "srewot/towers/srewot/srewot/towers/srewot/enter towers/deltsur/rustled/deltsur/elicod/docile/elicod/n/denim/mined/denim/reitsap/pastier/reitsap/deyerg/greyed/deyerg/reinup/punier/reinup/n/ysmulc/clumsy/ysmulc/redriew/weirder/redriew/reitsim/reitsim/n/deirram/married/deirram/tseiraew/weariest/tseiraew/reitsgna/angstier/reitsgna/e/lanigram/marginal/lanigram/s/flesmih/himself/flesmih/elbanu/unable/elbanu/delaeser/resealed/delaeser/get all/w/s/w/put dagger in rapier repair/e/e/laernu/unreal/laernu/deniard/drained/deniard/e/ytsur/rusty/ytsur/esoidnarg/grandiose/esoidnarg/nekorb/broken/nekorb/e/ydrow/wordy/ydrow/push retape/w/w/w/n/n/n/push repeat/s/s/s/e/e/e/dekcolnu/unlocked/dekcolnu/w/n/tseiloh/holiest/tseiloh/n/enicrop/porcine/enicrop/ask agnostic about doctor/s/s/e/evitnetta/attentive/evitnetta/ydwor/rowdy/ydwor/w/n/n/give gizmo to kid/tsubor/robust/tsubor/enter boat/tseraen/nearest/tseraen/derans/snared/derans/denraw/warned/denraw/reihca/achier/reihca/ybraen/nearby/ybraen/kaelb/bleak/kaelb/dekcirc/cricked/dekcirc/ydral/lardy/ydral/redimit/timider/redimit/ydeew/weedy/ydeew/deniw/wined/deniw/nedlo/olden/nedlo/resnet/tenser/resnet/ydlof/foldy/ydlof/enog/gone/enog/yldog/godly/yldog/denrael/learned/denrael/remlac/calmer/remlac/lamron/normal/lamron/tsenorp/pronest/tsenorp/reigge/eggier/reigge/reyoc/coyer/reyoc/nehsa/ashen/nehsa/tnaercer/recreant/tnaercer/ynots/stony/ynots/dewa/awed/dewa/rednoy/yonder/rednoy/rednoy/yonder/rednoy/gniyd/dying/gniyd/tuo/out/tuo/ralucatceps/spectacular/ralucatceps/coff 1"

test towers-h with "fixtow/poss/towers/towers/enter towers/docile/n/punier/n/weirder/e/get all/e/resealed/e/grandiose/s/married/e/wordy/push retape/w/n/w/w/clumsy/n/unable/n/push repeat/s/s/e/e/s/e/unlocked/w/n/pastier/n/ask agnostic about doctor/s/s/e/attentive/rowdy/w/n/n/stabler/robust/take skis/nearest/gone/lardy/bleak/olden/yonder/out/spectacular"

test towers-i with "fixtow/poss/towers/towers/enter towers/docile/n/greyed/e/himself/n/get all/s/drained/e/married/e/wordy/push retape/w/w/n/marginal/n/weariest/w/unable/n/push repeat/s/e/s/s/e/e/unlocked/w/w/n/n/holiest/e/ask agnostic about doctor/w/s/s/e/e/attentive/rowdy/w/w/n/n/e/robust/enter boat/eastern/gone/lardy/bleak/olden/yonder/out/spectacular"

test towers-part with "towers/towers/enter towers/docile/n/poncier/greyed/punier/n/clumsy/weirder/n/unable/weariest/angstier/e/marginal/s/himself/resealed/get dagger and saver/w/s/w/put dagger in rapier repair/e/e/drained/e/rusty/grandiose/married/e/wordy/push retape/w/w/w/n/n/n/push repeat/s/s/s/e/e/e/unlocked/w/n/pastier/n/holiest"

test towers-alt with "towers/towers/enter towers/docile/n/poncier/greyed/e/himself/n/get all/s/drained/e/married/wordy/e/push retape/w/w/n/marginal/n/holiest/weariest/w/unable/n/push repeat/s/e/s/s/e/e/unlocked/w/w/w/w/put dagger in repair/e/e/n/n/e"

chapter troves

[* this includes tests for troves, troves with mistakes, troves min-points and troves max-points as well as alt ways through]

test troves with "troves/enter troves/x egg/z/gape/hate/care/l/observe/spot/reason/believe/recall/despair/decide/glare/master/bolster/x lead/deal/z/x reside/desire/aspire/strive/ponder/deserve/last/x desk/x divorces/discover/resist/ramble/recant/coff"

test troves-err with "troves/enter troves/pega/gape/peag/haet/hate/caer/care/obserev/observe/spto/spot/reasno/reason/belieev/believe/reclal/recall/glaer/glare/despari/despair/dela/deal/desier/desire/aspier/aspire/striev/strive/pondre/ponder/ignoer/deserve/lats/last/mastre/master/bolstre/bolster/discovre/discover/lats/last/resing/resign/coff"

test troves-alt with "troves/enter troves/haet/hate/caer/care/obserev/observe/spto/spot/reasno/reason/belieev/believe/deriev/derive/glaer/glare/despari/despair/dela/deal/desier/desire/aspier/aspire/striev/strive/pondre/ponder/ignoer/deserve/lats/last/mastre/master/bolstre/bolster/discovre/discover/lats/last/decied/decide/coff"

test troves-oops with "sevort/troves/sevort/enter troves/teah/haet/teah/etah/hate/etah/reac/caer/reac/erac/care/erac/veresbo/obserev/veresbo/evresbo/observe/evresbo/otps/spto/otps/tops/spot/tops/onsaer/reasno/onsaer/nosaer/reason/nosaer/veeileb/belieev/veeileb/eveileb/believe/eveileb/lalcer/reclal/lalcer/llacer/recall/llacer/realg/glaer/realg/eralg/glare/eralg/irapsed/despari/irapsed/riapsed/despair/riapsed/aled/dela/aled/laed/deal/laed/reised/desier/reised/erised/desire/erised/reipsa/aspier/reipsa/eripsa/aspire/eripsa/veirts/striev/veirts/evirts/strive/evirts/erdnop/pondre/erdnop/rednop/ponder/rednop/reongi/ignoer/reongi/erongi/deserve/erongi/stal/lats/stal/tsal/last/tsal/ertsam/mastre/ertsam/retsam/master/retsam/ertslob/bolstre/ertslob/retslob/bolster/retslob/ervocsid/discovre/ervocsid/revocsid/discover/revocsid/stal/lats/stal/tsal/last/tsal/gniser/resing/gniser/ngiser/resign/ngiser/coff 1"

test troves-0 with "lamp/gonear strip of profits/troves/enter troves/eth/hate/care/observe/spot/reason/believe/recall/despair/deal/desire/aspire/strive/ponder/deserve/glare/last/master/bolster/last"

test troves-1 with "lamp/gonear strip of profits/troves/enter troves/eth/hate/care/observe/spot/believe/recall/despair/deal/desire/strive/ponder/deserve/master/last/resign"

test troves-2 with "lamp/gonear strip of profits/troves/enter troves/eth/hate/care/observe/spot/reason/derive/despair/deal/desire/aspire/ponder/deserve/bolster/last/decide"

chapter routes

[* this includes tests for routes, routes with mistakes, routes min-points and routes max-points as well as alt ways through]

test fixed with "ts/routes/in/inside/x list/pad/pad reagents/pad"

test routes with "routes/enter routes/towards/inside/x list/out/against/astride/below/under/past/despite/exit/across/opposite/exit/inside/exit/from/beneath/until/around/along/amidst/athwart/without/between/through/beyond/coff"

test routesord with "routes/enter routes/towards/astride/inside/x list/out/under/below/astride/against/under/below/astride/under/below/under/past/despite/exit/across/opposite/exit/inside/exit/from/beneath/until/around/along/aboard/within/through/coff"

test routes-oops with "setuor/routes/setuor/enter routes/sdrawot/towards/sdrawot/edisni/inside/edisni/x list/tuo/out/tuo/tsniaga/against/tsniaga/edirtsa/astride/edirtsa/woleb/below/woleb/etisoppo/opposite/etisoppo/tsap/past/tsap/etipsed/despite/etipsed/tixe/exit/tixe/ssorca/across/ssorca/rednu/under/rednu/tixe/exit/tixe/edisni/inside/edisni/tixe/exit/tixe/morf/from/morf/htaeneb/beneath/htaeneb/litnu/until/litnu/dnuora/around/dnuora/gnola/along/gnola/draoba/aboard/draoba/nihtiw/within/nihtiw/hguorht/through/hguorht/coff"

test routes-alt with "gonear strip of profits/routes/enter routes/against/below/astride/opposite/inside/exit/past/despite/exit/across/under/exit/inside/exit/from/beneath/until/around/along/aboard/behind/between"

test r2 with "routes/enter routes" in Strip of Profits

chapter otters

[* this includes tests for otters, otters with mistakes, otters min-points and otters max-points as well as alt ways through]

test ottelv with "otters/enter otters/barely/rescind/reedily/w/shadily/martially/coitally/1/3/n/n/because/else/s/s/although/however/n/e/n/angrily/brutely/n/slow/paroled/coolest/artsy/garbed/s/s/s/loathingly/tersely/s/parrot/snail/hornets/snipe/racoon/n/n/w/w/honestly/raptor/deeply/w/"

test otters with "otters/enter otters/barely/rescind/reedily/w/shadily/martially/coitally/1/3/n/n/because/else/s/s/although/however/n/atom/e/n/angrily/brutely/n/slow/paroled/coolest/artsy/garbed/s/s/s/loathingly/tersely/s/parrot/snail/hornets/snipe/racoon/n/n/w/w/honestly/raptor/deeply/quickly/w/7/e/w/play whistle"

test otters-pow with "seed 1/in/barely/reedily/w/tearily/snidely/nastily/1/3/n/n/else/because/s"

test otters-cur with "otters/enter otters/barely/reedily/w/shadily/martially/coitally/1/3/w/e/s/db/although/however/n/n/because/else/s/e/n/angrily/brutely/n/slow/paroled/coolest/artsy/garbed/s/s/s/loathingly/tersely/s/parrot"
[/snail/hornets/snipe/racoon/n/n/w/w/seriously/raptor/w/play whistle/quickly]

test otters-oops with "sretto/otters/sretto/enter otters/ylerab/barely/ylerab/dnicser/rescind/dnicser/ylideer/reedily/ylideer/w/ylidahs/shadily/ylidahs/yllaitram/martially/yllaitram/yllatioc/coitally/yllatioc/w/e/n/esuaceb/because/esuaceb/esle/else/esle/s/s/hguohtla/although/hguohtla/revewoh/however/revewoh/n/e/n/ylirgna/angrily/ylirgna/yleturb/brutely/yleturb/n/wols/slow/wols/delorap/paroled/delorap/tselooc/coolest/tselooc/ystra/artsy/ystra/debrag/garbed/debrag/s/s/s/ylgnihtaol/loathingly/ylgnihtaol/ylesret/tersely/ylesret/s/torrap/parrot/torrap/lians/snail/lians/stenroh/hornets/stenroh/epins/snipe/epins/noocar/racoon/noocar/n/n/w/w/yltsenoh/honestly/yltsenoh/rotpar/raptor/rotpar/dleepy/deeply/dleepy/ylkciuq/quickly/ylkciuq/w/7/play whistle"

[w/w/s/s/parrot/n/w/bleah/e/e/bleah/w/u/bleah/d/n/n/u/coolest/d/w/paroled/e/n/garbed/s/s]

test owl-die with "test intro/towers/towers/barely/reedily/e/shadily/martially/coitally/e/because/else/w/w/n/n"

test raptor-die with "test intro/towers/towers/barely/reedily/e/shadily/martially/coitally/e/because/else/w/w/s/s/d/n/w/w/quickly"

chapter oyster

[* this includes tests for oyster, oyster with mistakes, oyster min-points and oyster max-points ]

test oyster with "oyster/enter oyster/y/z/z/z/ask casper about casper/sing/sing/spit/inset/stroll/calm/run/enter raft/fart/soar/scrap/z/z/e/scan cans/seek/eat tea/tutor/tend/swipe/z/z/w/n/kiss skis/trace/react/bonk knob/splain/in/bust/drop prod/sweat/clean lance/shape/out/s/w/warp/n/w/bury/e/s/e/unearth/assuage/w/search arches/enlarge/n/x theses/w/e/patrol/x gleaner/in/y/tan ant/prepay/revel/derail/pull lever/redial/coff 1"

test oy1 with "oyster/enter oyster/spit/sing/inset/stroll/calm/run".
test oy2 with "boast/leap/scrap/e/scan/seek/tend/swipe/tutor/eat".
test oy3 with "w/n/trace/react/kiss skis/bonk knob/span/splain/in".
test oy4 with "bust/drop/sweat/clean/shape/out/s/w".
test oy5 with "w/warp/search/enlarge/x gleaner/n/w/bury/e/s/e".
test oy6 with "unearth/ask about ruby/patrol/in/prepay/trample/psalm/tan".
test oy7 with "derail/spin/revel/redial".

test oyster-min with "oyster/enter oyster/spill pills/y/calm/run/boast/leap/scrap/n/kiss skis/bonk knob/trace/react/in/bust/out/s/e/seek/eat tea/tutor/tend/w/w/warp/n/bury/s/e/unearth/assuage/w/search arches/enlarge/n/x gleaner/patrol/enter portal/revel/derail/pull lever"

test oyster-oops with "retsyo/oyster/retsyo/in/gnis/sing/gnis/gnis/sing/gnis/tips/spit/tips/tesni/inset/tesni/llorts/stroll/llorts/mlac/calm/run/mlac/enter raft/traf/fart/traf/raos/soar/raos/parcs/scrap/parcs/e/kees/seek/kees/eat tea/rotut/tutor/rotut/drawer/reward/drawer/epiws/swipe/epiws/w/n/kiss skis/ecart/trace/ecart/tcaer/react/tcaer/bonk knob/in/tsub/bust/tsub/drop prod/taews/sweat/taews/clean lance/epahs/shape/epahs/tuo/out/tuo/s/w/praw/warp/praw/n/w/yrub/bury/yrub/e/s/e/htraenu/unearth/htraenu/egaussa/assuage/egaussa/w/search arches/egralne/enlarge/egralne/n/w/e/lortap/patrol/lortap/x gleaner/in/y/tan ant/yaperp/prepay/yaperp/lever/revel/lever/liared/derail/liared/pull lever/laider/redial/laider/coff 1"

[pill spilling test start below]

test oypill with "ts/oyster/in/y/produce redo cup/spill pills/y/spill pills/spill pills"

chapter presto

[* this includes tests for presto, presto with mistakes, presto min-points and presto max-points and the alt way through]

test presto with "presto/enter spot/blam/mazeltov/umph/phooey/e/s/drat/rats/s/ole/darn/z/whassup/n/n/bleep/e/bingo/put dart in popgun/w/n/there/n/syke/later/so long/n/caps lock/mug/leaf/casserole/skid/push skid s/g/g/put leaf on skid/push skid s/cola/pour cola in mug/futon/keyboard/screen/put screen on table/disk/rom sticks/put disk in drive/put keyboard on table/push reboot/put caps lock in keyboard/tab/sleep/compile/debug/sub/coff 1"

test presto-a with "presto/enter spot/blam/mazeltov/umph/phooey/e/s/drat/rats/s/ole/darn/z/whassup/n/n/bleep/e/bingo/put dart in popgun/w/n/there/n/syke/later/so long/n/caps lock/mug/leaf/skid/push skid s/g/g/put leaf on skid/push skid n/g/g/cola/pour cola in mug/futon/keyboard/screen/put screen on table/disk/rom sticks/put disk in drive/put keyboard on table/push reboot/put caps lock in keyboard/tab/sleep/compile/debug/sub/y/coff 1"

test presto-b with "presto/enter spot/blam/mazeltov/umph/phooey/e/s/drat/rats/s/ole/darn/z/whassup/n/n/bleep/e/bingo/put dart in popgun/w/n/there/n/syke/later/so long/n/caps lock/mug/leaf/skid/get all/push skid s/g/g/put leaf on skid/show bad book to yak/disk/y/get all/cola/pour cola in mug/futon/keyboard/screen/put screen on table/rom sticks/put disk in drive/put keyboard on table/push reboot/put caps lock in keyboard/tab/sleep/compile/debug/sub/y/coff 1"

test presto-c with "presto/enter spot/blam/mazeltov/umph/phooey/e/s/drat/rats/s/ole/darn/z/whassup/n/n/bleep/e/bingo/put dart in popgun/w/n/there/n/syke/later/so long/n/caps lock/mug/leaf/skid/get all/push skid s/g/g/put leaf on skid/show day broke to yak/show ebay dork to yak/show bred okay to yak/show dear koby to yak/disk/y/get all/cola/pour cola in mug/futon/keyboard/screen/put screen on table/disk/rom sticks/put disk in drive/put keyboard on table/push reboot/put caps lock in keyboard/tab/sleep/compile/debug/sub/y/coff 1"

test presto-s with "presto/enter spot/blam/mazeltov/umph/phooey/e/s/drat/rats/s/ole/darn/z/whassup/n/n/bleep/e/bingo/put dart in popgun/w/n/there/n/syke/later/so long/"

test presto-oops with "otserp/presto/otserp/enter spot/malb/blam/malb/votlezam/mazeltov/votlezam/hpmu/umph/hpmu/phyooe/poho/phooey/nrudlog/e/s/tard/drat/tard/star/rats/star/s/elo/ole/elo/nrad/darn/nrad/pussahw/whassup/pussahw/n/n/peelb/bleep/peelb/e/ognib/bingo/ognib/put dart in popgun/w/n/ereht/there/ereht/n/ekys/syke/ekys/retal/later/retal/so long/n/caps lock/gum/mug/gum/fael/leaf/fael/diks/skid/diks/push skid s/g/g/put leaf on skid/push skid n/g/g/aloc/cola/aloc/pour cola in mug/notuf/futon/notuf/show catechism to yak/draobyek/keyboard/draobyek/neercs/screen/neercs/put screen on table/ksid/disk/ksid/rom sticks/put disk in drive/put keyboard on table/push reboot/put caps lock in keyboard/bat/tab/bat/peels/sleep/peels/elipmoc/compile/elipmoc/gubed/debug/gubed/bus/sub/bus/coff 1"

chapter hint clashes

[* to make sure HINT, EAT CRUST and PREEF don't clash]

test clash-u with "routes/enter routes/against/past/out/across/out/inside/x list/out/x spoon/y"

test clash-v with "troves/enter troves/hate/care/spot/observe/eat truffle/sopt/reason/recall/hint/hint/hint/hint/eat truffle/y"

test clash-p with "presto/enter spot/w/e/s/hint/hint/hint/hint/eat crust/star/dart/n/umph/blam/eat crust"

test clash-y with "oyster/enter oyster/get pills/remap/sing/scrape/stroll/calm/hint/hint/hint/spill pills/n/run/boast/leap/spike/w/search arches/e/e/scan/seek/tutor/eat/w/w/warp/spill pills"

test clash-w with "fixtow/towers/enter towers/gone/awed/bleak/olden/godly/lardy/yonder/n/creaky/get toaster/rustled/n/rinsed/e/drained/e/broken/e/unlocked/fussier/eat strudel/xray fissure/w/w/w/hint hulk/g/g/g/xray hulk"

test clash-t with "a5/otters/enter otters/barely/reedily/w/snidely/tearily/n/because/else/discern/s/tediously/s/hint ghoul hat/g/g/g/discern"

chapter others

[* this includes tests for others, others with mistakes, others min-points and others max-points and the alt way through]

test qw1 with "ts/y/a5/otters/test otters"

test qw2 with "gonear gates/purloin settler/purloin passport/review/research/n"

test others with "others/in/tamarind/maraschino/plums/pears/grapes/blueberries/cranberries/x stand/limes/pomegranate/cantaloupe/compass/persimmon/n/apples/apricot/mulberries/gooseberry/d/go near/nab an a/reversed/rhubarb/u/w/blackberries/pineapple/watermelon/grapefruit/strawberries/raspberry/e/s/n/e/listen/among/solemn/solemn/argentine/ancienter/cheap/cinque/cripes/papayas/w/s/icons/sonic/n/d/give dollar to trader/u/put icons in slot/review/research/n/n/coff"

test others-oops with "srehto/others/srehto/in/dniramat/tamarind/dniramat/onihcsaram/maraschino/onihcsaram/smulp/plums/smulp/sraep/pears/sraep/separg/grapes/separg/seirrebeulb/blueberries/seirrebeulb/seirrebnarc/cranberries/seirrebnarc/x stand/persimmon/nommisrep/semil/limes/semil/etanargemop/pomegranate/etanargemop/epuolatnac/cantaloupe/epuolatnac/ssapmoc/compass/ssapmoc/n/selppa/apples/selppa/tocirpa/apricot/tocirpa/mulberrsei/mulberries/mulberrsei/yrrebesoog/gooseberry/yrrebesoog/d/go near/nab an a/desrever/reversed/desrever/brabuhr/rhubarb/brabuhr/u/w/seirrebkcalb/blackberries/seirrebkcalb/elppaenip/pineapple/elppaenip/awtermelno/awtermelno/tiurfeparg/grapefruit/tiurfeparg/seirrebwarts/strawberries/seirrebwarts/yrrebpsar/raspberry/yrrebpsar/e/e/gnoma/among/gnoma/nmelos/solemn/nmelos/nmelos/solemn/nmelos/enitnegra/argentine/enitnegra/retneicna/ancienter/retneicna/paehc/cheap/cinqeu/cinque/paehc/sepirc/cripes/sepirc/w/s/snoci/icons/snoci/cinos/sonic/cinos/n/d/give dollar to trader/u/put icons in slot/weiver/review/weiver/research/hcraesern/n/coff"

[currently o04 is not possible without cheating]

test o04 with "rove over/others/in/tamarind/plums/pears/grapes/blueberries/cranberries/x stand/limes/compass/n/apples/apricot/gooseberry/d/go near/nab an a/rhubarb/u/w/blackberries/raspberry/pineapple/grapefruit/strawberries/e/purloin melon/purloin lemons/s/n/d/give dollar/u/n/sonic/icons/put icons in slot/review viewer/research searcher/n/coff"

test o034 with "rove over/others/in/tamarind/plums/pears/grapes/blueberries/cranberries/x stand/limes/compass/n/apples/apricot/gooseberry/d/go near/nab an a/rhubarb/u/w/blackberries/raspberry/pineapple/grapefruit/strawberries/e/s/n/e/solemn/solemn/w/s/n/d/give dollar/u/n/sonic/icons/put icons in slot/review viewer/research searcher/n/coff"

test o024 with "rove over/others/in/tamarind/plums/pears/grapes/blueberries/cranberries/x stand/limes/compass/n/apples/apricot/gooseberry/d/go near/nab an a/rhubarb/u/s/n/w/blackberries/raspberry/pineapple/grapefruit/strawberries/e/e/solemn/solemn/w/s/n/d/give dollar/u/n/icons/sonic/put icons in slot/review viewer/n/prep/n/coff"

test o014 with "rove over/others/in/tamarind/plums/pears/grapes/blueberries/cranberries/x stand/limes/maraschino/compass/n/e/argentine/solemn/solemn/ancienter/cheap/cripes/w/apples/gooseberry/apricot/d/go near/nab an a/rhubarb/u/s/icons/sonic/put icons in slot/n/d/give dollar/u/n/put icons in slot/n/prep/research searcher/n/coff"

test o01234 with "rove over/others/in/tamarind/plums/pears/grapes/blueberries/cranberries/x stand/limes/maraschino/compass/cantaloupe/pomegranate/n/apples/apricot/gooseberry/s/icon/n/w/blackberries/pineapple/raspberry/grapefruit/strawberries/e/s/sonic/n/d/go near/rhubarb/nab an a/u/s/n/d/give dollar/u/n/put icons in slot/review/research/n"

test o0134 with "rove over/others/in/tamarind/plums/pears/grapes/blueberries/cranberries/x stand/limes/maraschino/compass/cantaloupe/pomegranate/n/apples/apricot/gooseberry/w/blackberries/pineapple/raspberry/e/s/n/icon/coin/sonic/e/solemn/solemn/cripes/cheap/w/s/n/d/give dollar/u/n/icons/put icons in slot/review/research/n"

test min1 with "rove over/others/in/x stand/limes/grapes/pears/plums/tamarind/maraschino/compass/n/apricot/apples/d/rhubarb/banana/orange/u/w/pineapple/grapefruit/raspberry/strawberries/blackberries/e/s/sonic icons/n/d/give dollar/u/n/review/n/coff"

test min2 with "rove over/others/in/plums/tamarind/maraschino/blueberries/cantaloupe/pomegranate/compass/compass/n/gooseberry/e/among/solemn/solemn/ancienter/argentine/cheap/cripes/w/d/reversed/u/s/sonic/n/d/give dollar/icons/u/n/review/n/coff"

test min3 with "rove over/others/in/limes/grapes/pears/blueberries/cantaloupe/pomegranate/compass/n/goosebery/apricot/apples/e/among/solemn/solemn/ancienter/argentine/cheap/cripes/w/s/icons/n/d/give dollar/sonic/u/n/review/n/coff"

[/cheap/reversed/argentine/ancienter/solemn/solemn/w/s/put pear in chimney/push megaton/pomegranate/among/e/put peach in slot/eat tarts/n]

[oops.pl allows me to test oops-scripts.]

chapter stores

[* this is a simple test to go through all the STORES possibilities, of which there are not many not covered in other tests.]

test stores with "tokers/nestor/attack tokers/z/enter smoke/z/outside/sorbet/x c/g/g/g"

test see-c with "cap 7/ts/x c/g/g/g/g/g/g/g/g/g/g/g/g"

chapter demo dome

[* basic tests. Not much to see here.]

test dome-xp with "x it/x it/x it/x it/x it/x it/x it/x it/x it/x it"

test dome-inlet with "in/x calendar/test dome-xp/test dome-xp/x thesis/out"

test dome-show with "n/x tools wall/test dome-xp/test dome-xp/x owl wall/test dome-xp/test dome-xp/s"

test dome-dens with "w/x chronicle/test dome-xp/test dome-xp/e"

test dome-nov with "e/rr/rr/rr/rr/rr/rr/rr/rr/rr/rr/rr/w"

test dome-spares with "d/x clasper/x bolt case/x ladder/x filter/x dustpan/x plastic/x placer/x duster/u"

test dome-all with "demo dome/x ad shelf/test dome-inlet/test dome-show/test dome-dens/test dome-nov/test dome-spares"

volume definitions

definition: a thing (called th) is mass-hint-appropriate: [this is a definition that the STS test file needs]
	unless th is touchable, no;
	yes;

volume verbs

chapter coffing

[* COFF 1 tests if you are in the Strip of Profits, handy if you want to test if something's solved, and forces you to the strip so you can do another test. It logs things, too.]

coffing is an action applying to one number.

understand the command "coff" as something new.

understand "coff [number]" as coffing.

coff1ing is an action applying to nothing.

understand "coff" as coff1ing.

carry out coff1ing: [disambig to 1 doesn't work]
	try coffing 1 instead;

carry out coffing:
	if number understood is 1:
		if location of player is not Strip of Profits:
			append "Test failed for [mrlp] with [cur-score of mrlp] in [location of player], carried [list of carried things], unchanged [list of visible flippable things] reflexive [list of visible reflexive things].[line break]" to the file of debuggery;
			move player to Strip of Profits;
		else:
			append "Test passed for [last-solved-region].[line break]" to the file of debuggery;
	else if number understood is 2:
		if cur-score of mrlp is max-score of mrlp:
			append "Test passed for [mrlp]: maximum score achieved![line break]" to the file of debuggery;
		else if cur-score of mrlp < max-score of mrlp:
			append "Test failed for [mrlp]: only got [cur-score of mrlp] of [max-score of mrlp] points![line break]" to the file of debuggery;
		else:
			append "Test failed for [mrlp]: somehow got a whopping [cur-score of mrlp] of [max-score of mrlp] ponts![line break]" to the file of debuggery;
	else if number understood >= 10 and number understood < 20:
		if curtis-level is number understood - 10:
			append "Test succeeded for Curtis's level: it is and should be [curtis-level][line break]." to the file of debuggery;
		else:
			append "Test failed for Curtis's level: it is [curtis-level] and should be [number understood - 10][line break]." to the file of debuggery;
		append "[number understood] not a valid test." to the file of debuggery;
	the rule succeeds;

chapter sccing

sccing is an action out of world.

understand the command "scc" as something new.

understand "scc" as sccing.

[* SCC tracks the scan text of things.]

carry out sccing:
	let unscan be 0;
	let myl be a list of things;
	repeat with Z running through not unspoilable things:
		if Z is uncluing:
			say "[Z] is not not-easy but it is uncluing. Fix this.";
	repeat with Z running through not uncluing things:
		if a-text of Z is "":
			say "[Z] needs a-text.";
			add Z to myl;
			increment unscan;
		if b-text of Z is "":
			say "[Z] needs b-text.";
		unless a-text of Z is "" or b-text of Z is "":
			say "[Z]: [a-text of Z] [b-text of Z]. [Z] is [if Z is auxiliary]auxiliary[else]flippable[end if]. ";
			say "[Z] is [if Z is unspoilable]unspoilable[else if z is any-spoilable]any-spoilable[else if Z is cheat-spoilable]cheat-spoilable[else]parse-spoilable[end if].";
	if unscan > 0:
		say "[unscan] things left to ID: [myl].";
	else:
		say "A-text/b-text complete!";
	the rule succeeds;

chapter hashchecking

[* HASHCHECK makes sure that hashes check okay]

hashchecking is an action out of world.

understand the command "hashcheck" as something new.

understand "hashcheck" as hashchecking.

carry out hashchecking:
	let my-bool be false;
	let this-hash be 0;
	repeat with QQ running through regions:
		if QQ is not demo dome:
			repeat through regana of QQ:
				now this-hash is the hash of right-word entry;
				 if hashkey entry is not this-hash:
					say "Bad flip hash for [the-from entry]/[right-word entry]: [hashkey entry] should be [this-hash].";
					now my-bool is true;
	if my-bool is false:
		say "Hooray! No bad hashes in tables of anagrams.";
	now my-bool is false;
	repeat through regnud of mrlp:
		now this-hash is the hash of this-cmd entry;
		if this-hash is not hashval entry:
			say "Bad nudge hash for [this-cmd entry]: [hashval entry] should be [this-hash].";
	if my-bool is false:
		say "Hooray! No bad hashes in table of nudges.";

chapter haing

hinteachmove is a truth state that varies.

haing is an action out of world.

[* HA toggles hinting each move. In particular, hinting everything visible. ]

understand the command "ha" as something new.

understand "ha" as haing.

carry out haing:
	if hinteachmove is false:
		now hinteachmove is true;
	else:
		now hinteachmove is false;
	say "Showing hintability of all items in room each move is now [hinteachmove].";
	the rule succeeds;

every turn when hinteachmove is true:
	try heing;

chapter heing

[* HE verifies that everything in the current room is hinted. Versus, say, hintall/hintvis, which tries to go hint a ton of stuff.]

heing is an action out of world.

understand the command "he" as something new.

understand "he" as heing.

carry out heing:
	let ZXQ be false;
	repeat with QXZ running through visible things:
		if there is a hint-entry of QXZ in the table of hintobjs or QXZ is useless or QXZ is cluey:
			do nothing;
		else:
			all-say "BUG: [QXZ] needs to be a hint-entry in the table of hintobjs. Or deemed useless, cluey or amusing.";
			now ZXQ is true;
	if ZXQ is false:
		all-say "This room is all clear!";
	the rule succeeds;

chapter ceming

[* CEM makes you curse every move. ]

ceming is an action out of world. ["curse every move"]

understand the command "cem" as something new.

understand "cem" as ceming.

carry out ceming:
	if cuss-every-turn is false:
		now cuss-every-turn is true;
	else:
		now cuss-every-turn is false;
	the rule succeeds;

cuss-every-turn is a truth state that varies.

every turn when cuss-every-turn is true and mrlp is presto (this is the cheat and swear rule) :
	now swears is 2;
	if curst crust is moot:
		now player has curst crust;
	try eating curst crust;

chapter whiing

[* WHI tracks hinting stuff in one region. It seems obsolete.]

whiing is an action out of world.

understand the command "whi" as something new.

understand "whi" as whiing.

carry out whiing:
	repeat with ZQ running through things:
		if map region of location of ZQ is mrlp:
			if ZQ is not useless:
				unless there is a hint-entry of ZQ in table of hintobjs:
					d "You need to look at [ZQ].[line break]";
	the rule succeeds;

chapter fixtowing

[* FIXTOW fixes certain picaros in Loftier Trefoil. The easiest ones. geno daryl blake eldon wade goldy]

fixtowing is an action out of world.

understand the command "fixtow" as something new.

understand "fixtow" as fixtowing.

carry out fixtowing:
	if Loftier Trefoil is visited:
		say "Note: you've visited the Trefoil, so anything goofy that happens is not really fixable. It's best to use this before doing so, so you can access trickier parts of Towers.";
	repeat with WA running through picaros:
		if WA is not rodney:
			moot WA;
	now geno is in Loftier Trefoil;
	now wade is in Loftier Trefoil;
	now goldy is in Loftier Trefoil;
	now daryl is in Loftier Trefoil;
	now blake is in Loftier Trefoil;
	now eldon is in Loftier Trefoil;
	the rule succeeds;

chapter lsing

[* LS toggles listen and smell every turn]

lsing is an action out of world.

understand the command "ls" as something new.

understand "ls" as lsing.

ls is a truth state that varies.

carry out lsing:
	if ls is false:
		now ls is true;
		say "Listen/smell is now on.";
	else:
		now ls is false;
		say "Listen/smell is now off.";

every turn (this is the stop and hear the roses rule):
	if ls is true:
		say "[b]LISTEN:[r]";
		try listening;
		say "[b]SMELL:[r]";
		try smelling;

chapter mising

[* MIS shows what the player missed after visiting an area]

mising is an action out of world.

understand the command "mis" as something new.

understand "mis" as mising.

carry out mising:
	carry out the showing what the player missed activity;
	the rule succeeds;

chapter ieming

ieming is an action out of world.

[* IEM toggles inventory tracking every move, which creates a lot of debug garbage]

understand the command "iem" as something new.

understand "iem" as ieming.

inv-every-move is a truth state that varies.

every turn when inv-every-move is true:
	try taking inventory;

carry out ieming:
	if inv-every-move is false:
		say "Tracking inventory.";
		now inv-every-move is true;
	else:
		say "No longer tracking inventory.";
		now inv-every-move is false;
	the rule succeeds;

chapter liliing

[* LILI lets you show a list by number in-game. LILI0 lets you see the list of activities. ]

understand the command "lili" as something new.

understand "lili" as lili0ing.

understand "lili [number]" as liliing.

section extra diagnostic

[* extra diagnostic: this adds a line to track lists the player does not need to see ]

section crusting

[* CRU tracks what happens if you eat the crust every move, useful in PRESTO ]

cruing is an action out of world.

understand the command "cru" as something new.

understand "cru" as cruing.

carry out cruing:
	now track-crust is whether or not track-crust is true;
	say "Now tracking crust is [on-off of track-crust].";
	the rule succeeds;

section saeing

[* SAE toggles scanning the location every turn]

saeing is an action out of world.

sae is a truth state that varies.

understand the command "sae" as something new.

understand "sae" as saeing.

carry out saeing:
	now sae is whether or not sae is true;
	say "Scanning location every turn is now [on-off of sae].";
	the rule succeeds;

every turn when sae is true and player has settler:
	say "AIR SCAN: [no line break]";
	try scaning the location;

chapter tuting

[* TUT allows you to see Elmo and alter the scannedness of everything. 1 = no more scans and 2 = all scans. Should change to 0 for no scans, 1=ncscan, 2=cscan, 3=allscan]

tuting is an action applying to one number.

understand the command "tut" as something new.

understand "tut [number]" as tuting.

carry out tuting:
	let zzzz be { tables, niche, giant pin, meet bans, beams, pram, sitar, stria };
	if player is not in Dusty Study:
		say "Too late to use the Elmo tutorial. Restart and try again." instead;
	if number understood is 1:
		do nothing;
	else if number understood is 2:
		repeat with zzzzz running through zzzz:
			moot zzzzz;
			now zzzzz is ncscanned;
			now zzzzz is cscanned;
	else:
		say "tut 1 (no scans) or tut 2 (all scans) are the only numbers that work." instead;
	now player has settler;
	now player has treatise;
	now player has purse;
	move player to Carven Cavern;
	now Elmo is in Carven Cavern;
	try fliptoing rifle;
	the rule succeeds;

chapter sssing

[* this tests settler tracking every move]

sssing is an action applying to nothing.

understand the command "sss" as something new.

understand "sss" as sssing.

carry out sssing:
	if sss is false:
		now sss is true;
	else:
		now sss is false;
	say "Every-turn settler tracking is [on-off of sss].";
	the rule succeeds;

chapter fruiing

[* tests where all the fruits are]

fruiing is an action out of world.

understand the command "fruits" as something new.
understand the command "fruit" as something new.
understand the command "frui" as something new.
understand the command "fru" as something new.
understand the command "fr" as something new.

understand "fruits" as fruiing.
understand "fruit" as fruiing.
understand "frui" as fruiing.
understand "fru" as fruiing.
understand "fr" as fruiing.

definition: a fruit (called fr) is in-play:
	if fr is moot or fr is off-stage, no;
	if fr is held, no;
	yes;

to say f-and-rev of (fr - a fruit):
	say "[fr] ([if rev-item of fr is fr]magic word[else]from [rev-item of fr][end if])"

carry out fruiing:
	if mrlp is not others, say "Fruit tracking is not useful outside the others region." instead;
	repeat with fru running through moot fruits:
		say "[f-and-rev of fru] has been returned to Curtis. From room = [frroom of fru].";
	if number of moot fruits > 0, say "========================================[line break]";
	repeat with fru running through off-stage fruits:
		say "[f-and-rev of fru] is still off-stage. From room = [frroom of fru].";
	if number of off-stage fruits > 0, say "========================================[line break]";
	repeat with fru running through in-play fruits:
		say "[f-and-rev of fru] is still in-play, in [location of fru][if location of fru is location of player] [b](HERE)[r].";
	if number of in-play fruits > 0, say "========================================[line break]";
	repeat with fru running through held fruits:
		say "[f-and-rev of fru] is held.";
	if number of held fruits > 0, say "========================================[line break]";
	let got-error be false;
	repeat with fru running through fruits:
		let rev-itm be rev-item of fru;
		let frr be frroom of fru;
		if frr is Rustic Citrus:
			if rev-itm is listed in rustic-hard-items or rev-itm is listed in rustic-easy-items, next;
			say "[rev-itm] not in [rustic-hard-items] or [rustic-easy-items].";
			next;
		if frr is Swell Wells and rev-itm is listed in wells-hintables, next;
		if frr is Clangier Clearing and rev-itm is listed in clearing-hintables, next;
		if frr is Filed Field and rev-itm is listed in field-hintables, next;
		if frr is Scape Space and rev-itm is listed in scapespace-hintables, next;
		say "[fru], in [frr], does not have [rev-itm] in a hint list. It doesn't need one, but it'd be nice to have one.";
		now got-error is true;
	if got-error is true, say "========================================[line break]";
	say "[number of fruits] total fruits. [number of moot fruits] to Curtis, [number of off-stage fruits] not here yet, [(number of fruits - number of moot fruits + number of off-stage fruits)] in the area.";
	the rule succeeds;

to decide which thing is rev-item of (f - a fruit):
	repeat through table of others anagrams:
		if the-to entry is f, decide on the-from entry;
	decide on nothing;

chapter xring

understand the command "xr" as something new.

understand "xr" as xring.
understand "xr [something]" as xring.

carry out xring:
	now xraytrump is true;
	try xraying the noun;
	the rule succeeds;

chapter xaing

xaing is an action out of world.

understand the command "xa" as something new.

understand "xa" as xaing.

carry out xaing:
	now xraytrump is true;
	repeat with xc running through all touchable things:
		if xc is not curst palace and xc is not the player:
			say "[xc]:[line break]";
			try xraying xc;
	now xraytrump is false;
	the rule succeeds.

chapter scaming

[* SCAM enables scams for areas with hints that should only work once. Spoon Crust Pills Cinders (?) Xray (?) ]

scaming is an action applying to nothing.

understand the command "scam" as something new.
understand the command "scams" as something new.

understand "scam" as scaming.
understand "scams" as scaming.

carry out scaming:
	now scams is whether or not scams is false;
	say "Scams is [on-off of scams].";
	the rule succeeds;

chapter mowing

[* MOW allows you to mow through all the options you haven't used yet in a dialogue]

mowing is an action out of world.

understand the command "mow" as something new.

understand "mow" as mowing.

carry out mowing:
	let count be 0;
	repeat through qbc_litany:
		if response entry is not mowered and enabled entry is 0:
			increment count;
			if count is 6:
				say "More than 5 choices still left. You may need to rerun.";
				the rule succeeds;
			now enabled entry is 1;
	say "Enabled [count] new choice[if count is not 1]s[end if].";
	the rule succeeds;

chapter halling

[* this hints everything that is still useful and not realized]

halling is an action out of world.

understand the command "hall" as something new.

understand "hall" as halling.

carry out halling:
	repeat with thisthing running through visible not realized things:
		say "[thisthing]: [run paragraph on]";
		try objhinting thisthing;
	the rule succeeds;

chapter orfing

[* ORF detects conversational orphans]

orfing is an action out of world.

understand the command "orf" as something new.

understand "orf" as orfing.

carry out orfing:
	let this-found be false;
	repeat with qi running through quips:
		now this-found is false;
		let qa be qi;
		repeat through table of Elmo comments:
			if response entry is qa:
				now this-found is true;
		repeat through table of Elvira comments:
			if response entry is qa:
				now this-found is true;
		repeat through table of Gunter comments:
			if response entry is qa:
				now this-found is true;
		if this-found is false:
			say "[qa] is orphaned.";

chapter romscan

[* ROM scans everything you can scan in the manse. It doesn't, however, flip them. ]

roming is an action out of world.

understand the command "rom" as something new.

understand "rom" as roming when mrlp is Ordeal Reload.

carry out roming:
	oscan niche;
	oscan meet bans;
	oscan beams;
	oscan pram;
	oscan giant pin;
	oscan sitar;
	oscan stria;
	oscan tables;
	repeat with rb running through ramabits:
		oscan rb;
	say "All things in Ordeal Reload are now scanned both ways.";

chapter picpicing

picpicing is an action applying to nothing.

understand the command "picpic" as something new.
understand the command "warwar" as something new. ["warrior" backwards compatibility]

understand "picpic" as picpicing when player is in Loftier Trefoil.
understand "warwar" as picpicing when player is in Loftier Trefoil.

carry out picpicing:
	repeat with pic running through not leaderly picaros in Loftier Trefoil:
		try fliptoing pic;
	try fliptoing Rodney;
	the rule succeeds;

chapter gforceing

gforceing is an action applying to one visible thing.

understand "gf [any room]" as gforceing.

definition: a room (called rm) is deadendy:
	let temp be 0;
	repeat with DI running through cardinal directions:
		unless the room DI of rm is nowhere, increment temp;
	if temp is 1, yes;
	no;

carry out gforceing:
	if mrlp is not towers, say "GFORCE only works in TOWERS." instead;
	if map region of noun is not towers, say "GFORCE only works moving to another room in TOWERS." instead;
	if progval of noun is not 2, say "[noun] is not a mainland room." instead;
	if noun is deadendy, say "[noun] is a dead end room. The only way to get there is to remove its only guardian." instead;
	repeat with QQ running through guardians:
		unless QQ gendermatches:
			if QQ is in noun, now QQ is off-stage;
			next;
		if gualoc of QQ is noun or far-room of QQ is noun:
			move QQ to noun;
		else:
			now QQ is off-stage;
	move the player to noun;
	choose-new-hint-guardian;
	say "(You may wish to UNDO once you see the debug text.)";

chapter spbing

spbing is an action out of world.

understand the command "spb" as something new.

understand "spb" as spbing.

carry out spbing:
	now spill-block is whether or not spill-block is false;
	say "Blocking the consequences of SPILL is now [on-off of spill-block].";
	the rule succeeds.

chapter otwin

[* OTWIN almost-wins otters]

otwining is an action out of world.

understand the command "otwin" as something new.

understand "otwin" as otwining.

carry out otwining:
	if player is in Reclusion Inclosure:
		now adjsolve is 2;
		now nounsolve is 2;
	else:
		now player has whistle;
		now player wears medals;
		moot hydra;
		moot parrot;
		moot raptor;
		moot Merle;
		moot Elmer;
		now adjsolve is 3;
		now nounsolve is 3;
		now player is in Reclusion Inclosure;
	say "Otters endgame cheats are invoked! You may wish to QUICKLY before attacking Elvira, although of course the instadeath if you forget is relevant too. Also, you need to play the whistle DEEPLY or it won't work in Rancho Archon Anchor.";
	the rule succeeds;

chapter mf

[* MF checks who is male or female]

mfing is an action out of world.

understand the command "mf" as something new.

understand "mf" as mfing.

carry out mfing:
	repeat with mf running through people:
		say "[mf] ";
		say "[if mf is plural-named]are[else]is[end if] ";
		say "[if mf is male]M[else if mf is female]F[else]neutered AFAIK[end if][if mf is animal] and animal too[end if].";
	the rule succeeds;

chapter misc

[* shows all flippable nonreflexive e.g. what you can muck with]

miscing is an action out of world.

understand the command "misc" as something new.

understand "misc" as miscing.

carry out miscing:
	if number of flippable nonreflexive things > 0:
		say "Flippable nonreflexive: [list of flippable nonreflexive things].";

chapter puh

[ * PUH pickup-hints everything ]

chapter puhing

puhing is an action out of world.

understand the command "puh" as something new.

understand "puh" as puhing.

carry out puhing:
	repeat with X running through pickup-lines:
		say "[X]: disrupt the [pla-ma]s [if pickup-description of X is empty]BLANK, FIX THIS[else][pickup-description of X][end if].";
		say "Make the [pla-ma]s talk more [pickup-spoil of X].";
	the rule succeeds.

chapter ploping

[* PLOP seeds the towers/otters with everything ]

ploping is an action out of world.

understand the command "plop" as something new.

understand "plop" as ploping.

carry out ploping:
	let any-good be false;
	if uber-rand-cheat is true:
		say "You already dumped everyone in the Trefoil and Disowned Downside.";
		the rule succeeds;
	if Loftier Trefoil is visited and Disowned Downside is visited:
		say "You already went to the Trefoil and Disowned Downside, so I'm going to make you restart, because reasons. It might break too much.";
		the rule succeeds;
	if Loftier Trefoil is visited:
		say "Skipping the Trefoil as you've been there.";
	else:
		now all picaros are in Loftier Trefoil;
		say "Dumping every warrior in the Trefoil.";
		say "ts, towers, in, y for towers.";
	if gretta-score > 0:
		say "Skipping the Disowned Downside as you've already messed with the players/macks/pickup lines a bit.";
	else:
		now all pickup-lines are in Disowned Downside;
		say "Dumping every pickup line idea in the Disowned Downside.";
		say "a5, in, barely, reedily, w for otters.";
	now uber-rand-cheat is true;
	the rule succeeds;

after fliptoing when uber-rand-cheat is true:
	process the uber-towers rule;
	process the uber-otters rule;
	continue the action;

every turn when player is in Disowned Downside and parleys splayer players are in Disowned Downside and uber-rand-cheat is true (this is the uber-otters rule):
	say "Adverbs available:";
	repeat with QQ running through pickup-lines in Disowned Downside:
		choose row with the-from of QQ in table of otters anagrams;
		say " [right-word entry in upper case]";
	say ".";

every turn when player is in Loftier Trefoil and uber-rand-cheat is true (this is the uber-towers rule):
	say "Adjectives available:";
	repeat with QQ running through picaros in Loftier Trefoil:
		choose row with the-from of QQ in table of towers anagrams;
		say " [right-word entry in upper case]";
	say ".";

chapter seed

[* SEED seeds the towers or otters with option #N in a list]

seeding is an action applying to one number.

understand the command "seed" as something new.

understand "seed [number]" as seeding.

to place-warrior (myp - a number) and (myi - a number):
	let temp-ord be 0;
	let cur-war be Rodney;
	let max-pod be 0;
	repeat with QQ running through picaros:
		if pod-num of QQ is myp:
			if pod-ord of QQ > max-pod:
				now max-pod is pod-ord of QQ;
	let myi2 be myi;
	if myi2 > max-pod:
		say "[b]Cutting [myi2] to [max-pod] for pod [myp]:[r] ";
		now myi2 is max-pod;
	repeat with QQ running through picaros:
		if pod-num of QQ is myp and pod-ord of QQ is myi2:
			if QQ is in Loftier Trefoil:
				say "Oops, we placed [QQ] twice. [myp] [myi2].";
			now QQ is in Loftier Trefoil;
			say "[QQ] to Loftier Trefoil.";
			the rule succeeds;

to place-idea (myp - a number) and (myi - a number):
	let temp-ord be 0;
	let cur-idea be t-despairingly;
	let max-pod be 0;
	let myi2 be myi;
	repeat with QQ running through pickup-lines:
		if pod-num of QQ is myp:
			if pod-ord of QQ > max-pod:
				now max-pod is pod-ord of QQ;
	if myi2 > max-pod:
		say "[b]Cutting [myi2] to [max-pod] for pod [myp]:[r] ";
		now myi2 is max-pod;
	repeat with QQ running through pickup-lines:
		if pod-num of QQ is myp and pod-ord of QQ is myi2:
			if QQ is in Disowned Downside:
				say "Oops, placed [QQ] twice. [myp] [myi2].";
			now QQ is in Disowned Downside;
			say "[QQ] to Disowned Downside.";
			the rule succeeds;
	say "BUG: didn't get anything for pod [myp] index [myi2].";

carry out seeding: [100 = ordering players, 200 = skip trefoil, 400 = skip Disowned Downside. Most of the time we'll just need the non hundreds.]
	let temp be 0;
	let G be Rodney;
	let found-yet be false;
	let act-index be the remainder after dividing number understood by 100;
	let seedflags be number understood / 100;
	say "USAGE NOTES:[line break]1=Balmer 2=Mr Beal[line break], 10 * the pod number (1..8) for the players, 1=the pod number(1..5) for the picaros.[paragraph break]Seed flags can be anything up to 4.";
	if act-index > 8:
		say "[b]WARNING: this is probably out of range, but we are rounding down.[r][line break]";
	if act-index < 1:
		say "Need a positive act index.";
		the rule fails;
	if Upscale Capsule is visited and sister tressi is not off-stage:
		say "We can't randomly allocate the marble blamer.";
	else:
		if the remainder after dividing seedflags by 2 is 1:
			now mbb is Marble Blamer Balmer;
		else:
			now mbb is Marble Blamer Mr Beal;
	if seedflags <= 4:
		if Disowned Downside is visited and gretta-score > 0: [next, seed the players' pickup lines in OTTERS]
			say "Skipping Disowned Downside seeding because you already started wiping the players/macks out.";
		else:
			now all pickup-lines are off-stage;
			repeat with J running from 1 to max-pod-num:
				place-idea J and act-index;
			if the remainder after dividing seedflags by 2 is 0:
				assign-random-pickup-priority;
			else:
				assign-fixed-pickup-priority;
	if the remainder after dividing seedflags by 4 < 2:
		if Loftier Trefoil is visited and number of moot picaros > 0: [first, seed the start of TOWERS]
			say "Skipping Trefoil seeding as you've already disposed of [number of moot picaros] warrior[if number of moot picaros > 1]s[end if]. Restart if you wish to re-seed.";
		else:
			if act-index > 5:
				say "Decreasing index to 5 for the Trefoil.";
				now act-index is 5;
			now all picaros are off-stage;
			repeat with J running from 1 to 7:
				place-warrior J and act-index;
			pick-a-picaro;

chapter palling

[* PALL lets you see all the pad]

palling is an action out of world.

understand the command "pall" as something new.

understand "pall" as palling.

carry out palling:
	now player has pedanto notepad;
	repeat through table of pad-stuff:
		now known entry is true;
	say "Pad is now fully stocked. Have fun.";

chapter gsing

[* GS switches your sex.]

gsing is an action out of world.

understand the command "gs" as something new.

understand "gs" as gsing.

carry out gsing:
	if player is male:
		choose-female;
	else:
		choose-male;
	say "Player is now [if player is female]fe[end if]male, and all associated NPCs['] genders have been swapped, too.";
	the rule succeeds;

chapter gzing

[* GZ zaps all the guardians.]

gzing is an action out of world.

understand the command "gz" as something new.

understand "gz" as gsing.

carry out gzing:
	repeat with myg running through guardians:
		moot myg;
		increment cur-score of towers;
	now min-score of towers is 31;
	if strudel is reflexed:
		increment min-score of towers;
	if old ice is reflexed:
		increment min-score of towers;
	if sporties ripostes are reflexed:
		increment min-score of towers;

chapter diing

[* DI regains your powers in Otters.]

diing is an action out of world.

understand the command "di" as something new.

understand "di" as diing.

carry out diing:
	if power-back is true:
		say "You're now inhibited.";
		now power-back is false;
	else:
		say "You're now uninhibited.";
		now power-back is true;
	the rule succeeds

chapter misseding

[* MISSED shows what this area missed, and in the strip you get an added bonus of alternate ways through]

misseding is an action out of world.

understand the command "missed" as something new.

understand "missed" as misseding.

carry out misseding:
	say "[miss-types]";
	now mrlp is solved;
	carry out the showing what the player missed activity;
	now mrlp is unsolved;
	the rule succeeds;

chapter missalt

[* MISSALT shows alternate routes]

missalting is an action out of world.

understand the command "missalt" as something new.
understand the command "alt" as something new.

understand "missalt" as missalting.
understand "alt" as missalting.

carry out missalting:
	say "[miss-types].";
	carry out the showing alternate routes activity;
	the rule succeeds;

to say miss-types:
	say "MISSED = all (solved) regions['] misses--not including the current region.";
	say "MISSES = this region's misses (may provide nonsense/spoilers).";
	say "MISSALT = show alternate mutually exclusive routes for solved regions.";
	say "THISALT = show alternate mutually exclusive routes for this region (may provide nonsense/spoilers)";
	say "[paragraph break]========================Real stuff below";

chapter thisalting

[ * THISALT shows the alternate paths so far ]

thisalting is an action out of world.

understand the command "thisalt" as something new.

understand "thisalt" as thisalting.

carry out thisalting:
	say "Looking at alternate routes, [mrlp] using [altroutes of mrlp]...";
	process the altroutes of mrlp;
	the rule succeeds;

chapter elving

[* what's everyone saying about Elvira?]

elving is an action out of world.

understand the command "elv" as something new.

understand "elv" as elving.

a person can be blah, elvonly, unelvy or elvy. a person is usually blah.

carry out elving:
	let elvies be true;
	repeat through table of subject-blather:
		if person-subj entry is Elvira:
			if him-who entry is unelvy:
				now him-who entry is elvy;
			if him-who entry is blah:
				now him-who entry is elvonly;
		else:
			if him-who entry is blah:
				now him-who entry is unelvy;
			else if him-who entry is elvonly:
				now him-who entry is elvy;
	repeat with PE running through unelvy people:
		say "[PE] has nothing to say about Elvira.";
		now elvies is true;
	if elvies is false:
		say "Everyone talks about Elvira.";
	say "Elvy people: [list of elvy people].";
	say "Blah people: [list of blah people].";
	say "Elvonly people: [list of elvonly people].";
	the rule succeeds.

chapter skiing

[* this puts you near the other side of the water.]

skiing is an action out of world.

understand the command "ski" as something new.

understand "ski" as skiing.

carry out skiing:
	if mrlp is not towers:
		say "You need to be in Towers for this test command.";
	else:
		mootl list of all guardians;
		now agnostic is in Actionless Coastlines;
		moot gizmo;
		now bot boat is in Actionless Coastlines;
		move player to Actionless Coastlines;
		ital-say "moving south or west from here will make the game kind of goofy. Also, the score is wrong, because this is a test command. You pretty much want to get on the bot-boat once the Coasting Agnostic creates it." instead;
	the rule succeeds;

chapter tkturbo

[* TAKE ALL is allowed & applies to scenery as well]

talling is an action out of world.

understand the command "tall" as something new.

understand "tall" as talling.

carry out talling:
	say "Now you can[if take-test is true]'t[end if] take all the things.";
	now take-test is whether or not take-test is false;
	the rule succeeds;

take-test is a truth state that varies.

check taking:
	if take-test is true:
		if noun is scenery, say "DEBUG: [noun]: Can't take scenery.";
		if noun is fixed in place, say "DEBUG: [noun]: Fixed in place.";
		if noun is a person, say "DEBUG: [noun]: Person.";

The can't take what's fixed in place rule is not listed in the check taking rulebook.
The can't take scenery rule is not listed in the check taking rulebook.

[The exclude scenery from take all rule is not listed in the for deciding whether all includes rulebook.
The exclude fixed in place things from take all rule is not listed in the for deciding whether all includes rulebook.
The exclude people from take all rule is not listed in the for deciding whether all includes rulebook.

Rule for deciding whether all includes scenery:
	if take-test is true, it does;
	it does not;

Rule for deciding whether all includes people while taking:
	if take-test is true, it does;
	it does not;

Rule for deciding whether all includes fixed in place things while taking:
	if take-test is true, yes;
	it does not;]

chapter rfxing

[* sees all reflexive things ]
rfxing is an action out of world.

understand the command "rfx" as something new.

understand "rfx" as rfxing.

carry out rfxing:
	repeat with RF running through reflexive things:
		say "[RF] is reflexive.";
	the rule succeeds;

chapter repling

[* replaces guardians in TOWERS, otherwise, reject]

repling is an action out of world.

understand the command "repl" as something new.

understand "repl" as repling.

carry out repling:
	if mrlp is towers:
		now all red guardians are off-stage;
		now all blue guardians are off-stage;
		now atheists are off-stage;
		now the-hostile is off-stage;
		say "All red and blue guardians reinitialized. Side guardians (necessary or not) are still there.";
		reposition-guardians;
		the rule succeeds;
	say "Doesn't apply here.";

chapter wwscaning

[* scans wonga wagon every move in troves]

wwscan is a truth state that varies.

wwscaning is an action out of world.

understand the command "wwscan" as something new.

understand "wwscan" as wwscaning.

carry out wwscaning:
	if wwscan is false:
		now wwscan is true;
	else:
		now wwscan is false;
	say "[if wwscan is true]Scanning wonga wagon every move[else]No longer scanning each move[end if].";
	the rule succeeds;

every turn when wwscan is true:
	say "Results of scanning wonga wagon:[line break]";
	try scaning wonga wagon;

chapter coping

[* repositions guardians, sends you to Scope Copse]

coping is an action out of world.

understand the command "cop" as something new.

understand "cop" as coping.

carry out coping:
	move player to Scope Copse;
	reposition-guardians;
	the rule succeeds;

chapter eaing

[* this checks for all exits displayed]

eaing is an action out of world.

understand the command "ea" as something new.

understand "ea" as eaing.

exitall is a truth state that varies.

carry out eaing:
	if exitall is false:
		now exitall is true;
		say "Now tracking exits every move.";
	else:
		now exitall is false;
		say "Now not tracking exits every move.";
	the rule succeeds;

every turn when exitall is true:
	try exitsing;
	continue the action;

after fliptoing when exitall is true:
	try exitsing;
	continue the action;

chapter nuding

nuding is an action out of world.

understand the command "nud" as something new.

understand "nud" as nuding.

to show-nudges (ta - a table name):
	if ta is Table of No Nudges, continue the action;
	repeat through ta:
		if there is a this-item entry and this-item entry is not touchable, next;
		if there is a this-rule entry:
			process the this-rule entry;
			unless the rule succeeded, next;
		say "[this-cmd entry] can be nudged.";

carry out nuding:
	let nudges be 0;
	let showit be false;
	show-nudges regnud of mrlp;
	show-nudges roomnud of location of player;
	if nudges is 0, say "Nothing can be nudged. Oh dear, that's wrong!";
	else say "total nudge(s) [nudges]"

chapter rejching

[* this checks for adequate rejects]

rejching is an action out of world.

understand the command "rejch" as something new.

understand "rejch" as rejching.

temp-reg is a region that varies.

carry out rejching:
	repeat with QQ running through regions:
		if QQ is not demo dome:
			now temp-reg is QQ;
			repeat through regana of QQ:
				rej-analyze the-from entry;

to rej-analyze (x - a thing):
	choose row with the-from of x in regana of temp-reg;
	let y be the-to entry;
	unless x is an xtrhelp listed in table of spechelp:
		say "Whoops, [x] could also be in table of spechelp, to [y].";
	unless x is a specdone listed in table of done rejects:
		if x is reflexive:
			say "Strong possibility: [x] could also be in table of done rejects, to [y].";
		else if x is not vanishing:
			say "Weak possibility: [x] could also be in table of done rejects, to [y].";

chapter deprefing

[ * removes all prefiguring, for testing purposes]
deprefing is an action out of world.

understand the command "depref" as something new.

understand "depref" as deprefing.

carry out deprefing:
	if number of not unfigured things is 0:
		say "Nothing is prefigured.";
	else:
		say "De-prefiguring [list of prefigured things].";
		now all prefigured things are unfigured;
	the rule succeeds;

chapter mbbing

[ * this changes who the Marble Blamer is ]

mbbing is an action applying to nothing.
mbbnuming is an action applying to one number.

understand the command "mbb" as something new.

understand "mbb" as mbbing.
understand "mbb [number]" as mbbnuming.

this is the blamer-moot rule:
	if mbb is moot, say "Already mooted [mbb]." instead;

carry out mbbing:
	abide by the blamer-moot rule;
	now mbb is off-stage;
	say "[mbb] moved off-stage, and ";
	if mbb is Marble Blamer Mr Beal:
		now mbb is Marble Blamer Balmer;
	else:
		now mbb is Marble Blamer Mr Beal;
	move mbb to upscale capsule;
	now not-mbb is off-stage;
	say "[mbb] moved to [location of mbb].";
	the rule succeeds.

carry out mbbnuming:
	abide by the blamer-moot rule;
	if number understood is 1:
		now mbb is Marble Blamer Balmer;
	else if number understood is 2:
		now mbb is Marble Blamer Mr Beal;
	else:
		say "1 = Balmer, 2 = Mr Beal." instead;
	move mbb to Upscale Capsule;
	now not-mbb is off-stage;
	say "Moved [mbb] to Upscale capsule, [not-mbb] off-stage." instead;
	the rule succeeds;

chapter srqing

[ * solve region quick ]

srqing is an action out of world.

understand the command "srq" as something new.

understand "srq" as srqing.

carry out srqing:
	if mrlp is stores:
		say "Need to do stores manually." instead;
	if mrlp is demo dome:
		say "Unsolvable." instead;
	if mrlp is otters:
		now otters is solved;
		end the story finally saying "A MONSTER ROTS. AMEN.";
		follow the shutdown rules instead;
	if mrlp is others:
		end the story finally saying "A Giddy Route: You Did Great";
		follow the shutdown rules instead;
	solve-region mrlp;
	the rule succeeds;

chapter hring

hring is an action applying to nothing.

understand the command "hr" as something new.

understand "hr" as hring.

carry out hring:
	say "Recharged slider headaches to 50.";
	now headaches is 50;
	the rule succeeds.

chapter palcluing

palcluing is an action applying to nothing.

understand the command "palclu" as something new.

understand "palclu" as palcluing.

carry out palcluing:
	say "Moving all palace clue items to Mislit Limits: [nextclue].";
	repeat with NC running through nextclue:
		now NC is in Mislit Limits;
	the rule succeeds.

chapter twiding

[* this lets the user twiddle a table early on to see how it roughly looks. It does not place it in context. ]

twiding is an action out of world applying to one number.

twid0ing is an action out of world.

understand the command "twid" as something new.

understand "twid" as twid0ing.

understand "twid [number]" as twiding.

cur-twid is a number that varies. cur-twid is usually 1.

carry out twid0ing:
	repeat with tempnum running from cur-twid + 1 to number of rows in table of megachatter:
		choose row tempnum in table of megachatter;
		if go-ahead entry is bzzt rule and reps entry > 1:
			now cur-twid is tempnum;
			try twiding tempnum instead;
	now cur-twid is 40;
	try twiding 40 instead;

carry out twiding:
	let chatrow be number of rows in table of megachatter;
	if number understood > chatrow:
		say "Number must be 1-[chatrow]." instead;
	if debug-state is true:
		say "(Turning debug state off)";
		now debug-state is false; [for grepping, this is to see how a table looks earlier.]
	choose row number understood in table of megachatter;
	if go-ahead entry is not bzzt rule:
		say "That does not follow the BZZT rule. Try one of [list-of-randos]." instead;
	let temp-tab be mytab entry;
	say "[twiddle of temp-tab and 3]";
	the rule succeeds;

to say list-of-randos:
	let comma-yet be false;
	repeat with XX running from 1 to number of rows in table of megachatter:
		choose row XX in table of megachatter;
		if go-ahead entry is bzzt rule and reps entry > 1:
			say " [if comma-yet is true],[end if][XX]";
			now comma-yet is true;

Roiling Tests ends here.

---- DOCUMENTATION ----
