Version 1/211107 of Stale Tales Slate Universal by Andrew Schultz begins here.

"This is a deprecated collection of I7 hash tables once used by all three Stale Tales Slate games. It has been superseded by Stale Tales Slate I6 Hash Stuff.i7x, which speeds things up, since it is lower-level code."

volume command hashing counting repeated letters -- thanks to Uncle David

[David White aka Uncle David has helped a lot of authors with tricky technical stuff. And he's helped well! One such effort he helped with is Chandler Groover's Midnight. Swordfight. So his help is, indeed, helpful!

His giving me hash tables and tipping me off to why there wasn't much overlap was a big piece of the puzzle. While I went with i6 10+ years later, I'd never have gone down that path without his initial help, and I kept the hash values for each letter in the initial table.

This is legacy code now, but it's important enough to me. So I want it saved in some form, especially if something goes wrong with my own code.]

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

to decide what number is the hash of (t - a value of kind K):
	let s be the filtered name of t;
	let hash be 0;
	repeat with c running from 1 to the number of characters in s:
		increase hash by the Code corresponding to a Letter of character number c in s in the Table of Hashcodes;
	decide on hash;

volume command hashing counting repeated letters

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

