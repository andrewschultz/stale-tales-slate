Version 1/211107 of STS Hashes by Andrew Schultz begins here.

[this is a collection of hashes common to the Stale Tales Slate games, with basic hashing functions.]

volume command hashing -- thanks to Uncle David

part hash codes and values

book hashcodes

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

STS Hashes ends here.
