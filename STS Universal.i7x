Version 1/211107 of STS Universal by Andrew Schultz begins here.

[this is a collection of hashes and trivial stubs common to all three Stale Tales Slate games. Stale Tales Slate Common captures the code that applies only to the two main games.]

volume stuff all three games have

include Punctuation Stripper by Andrew Schultz.

include STS I6 hash stuff by Andrew Schultz.

volume i6 based hashing

book command hashes

to decide which number is i6cmdhash:
	(- i6hash(true) -)

to decide which number is i6fwhash:
	(- i6hash(false) -)

to decide which number is i6cmdrough:
	(- i6rough(true) -)

to decide which number is i6fwrough:
	(- i6rough(false) -)

volume command hashing -- thanks to Uncle David

part hash codes and values

book hashcodes for words

[ This is so the computer can determine if we have an anagram without doing crazy string manipulations. The precise numbers aren't important. It's been verified that only 16 word-pairs have overlapping hash values, and none of them appear in puzzles. Hashes are much faster than manipulating and sorting a string with regexes, so the tradeoff is worth it. ]

Table of Hashcodes
Letter(indexed text)	Code
"a"	2187818
"b"	18418905
"c"	19005585
"d"	21029089
"e"	127806109
"f"	26514896
"g"	32599702
"h"	37282299
"i"	44992846
"j"	48960525
"k"	52933178
"l"	53813839
"m"	64075153
"n"	68907508
"o"	74352577
"p"	81465959
"q"	84405617
"r"	85323803
"s"	96273966
"t"	103110018
"u"	105105807
"v"	107164820
"w"	107934773
"x"	112768081
"y"	122359252
"z"	122969618

to decide what indexed text is the filtered name of (t - a value of kind K):
	let s be t in lower case;
	replace the regular expression "<^abcdefghijklmnopqrstuvwxyz>" in s with "";	[ a-z would include accented characters]
	decide on s;

to decide what number is the hash of (t - a value of kind K):
	let s be the filtered name of t;
	let hash be 0;
	repeat with c running from 1 to the number of characters in s:
		increase hash by the Code corresponding to a Letter of character number c in s in the Table of Hashcodes;
	decide on hash;

book hashcodes for present letters

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

to decide which number is the rough-hash of (t - a value of kind K):
	let s be indexed text;
	now s is the filtered name of t;
	let hash be 0;
	repeat through table of presentness hashes:
		if S matches the text "[Letter entry]":
			increase hash by Code entry;
	decide on hash;

volume game order/name abbreviation stubs

sts-sequence is a number that varies. [ 1 = shuffling 2 = roiling 3 = torus ]

to say gm-short: say "[if sts-sequence is 1]Shuffling[else if sts-sequence is 2]Roiling[else]Torus[end if]"

to decide whether is-roiling:
	if sts-sequence is 2, yes;
	no;

to say sts: say "[i]Stale Tales Slate[r]";

to say tsts: say "the [sts]";

to say aro: say "[i]A Roiling Original[r]"

to say roi: say "[i]A Roiling Original[r]"

to say shuf: say "[i]Shuffling Around[r]"

to say trt: say "[i]Tours Roust Torus[r]"

volume STS

chapter stsing

stsing is an action out of world.

understand the command "sts" as something new.

understand "sts" as stsing.

carry out stsing:
	say "The [sts] consists of three games.[line break]";
	say "[shuf] was conceived in April 2012 and entered in IFComp 2012. The fifth release, which likely had the final puzzle assortment, was published in May 2022. It placed seventh of twenty-six entries. It is on itch.io at https://andrewschultz.itch.io/shuffling-around.";
	say "[roi] was conceived along with [shuf], but it was too big for IFComp, so it was pushed to Spring Thing 2013. It placed second of three entries. The fourth release will hopefully occur in June 2022. It will be on itch.io at https://andrewschultz.itch.io/shuffling-around.";
	say "[trt] was conceived in October 2022 and planned for Spring Thing 2022. The post-comp release was in May 2022.";
	say "[line break]Note that this may not be up-to-date in every game, only ones which have a significant release. As before, my itch.io site should have the details.";
	say "[line break]Also, https://github.com/andrewschultz/stale-tales-slate/ will have development information, source code, etc.";
	say "[line break]Rough metrics on size, from smallest to largest:[line break]";
	say "[trt] has a minimum of eight anagram puzzles to solve and a maximum of thirteen.";
	say "[shuf] has a minimum of 62 anagram puzzles to solve and a maximum of 78. If you use an area-skip device, the minimum drops to 41.";
	say "[roi]'s main part has a minimum of 150 anagram puzzles to solve and a maximum of 248. There is an additional area with 23/45. If you use an area-skip device, there is a minimum of 70.";
	say "[line break]Details for a specific game may be found with the [b]RELEASE[r] command.";
	the rule succeeds;

STS Universal ends here.
