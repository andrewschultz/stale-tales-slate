Version 1/211107 of Stale Tales Slate Universal by Andrew Schultz begins here.

"This is a collection of trivial stubs common to all three Stale Tales Slate games. Stale Tales Slate Common captures the code that applies only to the two main games."

volume stuff all three games have

include Punctuation Stripper by Andrew Schultz.

include Stale Tales Slate I6 hash stuff by Andrew Schultz.

[include Stale Tales Slate I7 deprecated hashes by Andrew Schultz.]

volume filtered name stub

[this isn't used for Shuffling, but it is used for the slider in Roiling and by-character match checking in TRT. So it can go here.]

to decide what indexed text is the filtered name of (t - a value of kind K):
	let s be t in lower case;
	replace the regular expression "<^abcdefghijklmnopqrstuvwxyz>" in s with "";	[ a-z would include accented characters]
	decide on s;

volume i6 based hashing

book command hashes

to decide which number is i6cmdhash: [hash of whole command]
	(- i6hash(true) -)

to decide which number is i6fwhash: [hash of first word]
	(- i6hash(false) -)

to decide which number is i6cmdrough: [hash of unique letters of whole command]
	(- i6rough(true) -)

to decide which number is i6fwrough: [hash of unique letters of first word]
	(- i6rough(false) -)

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

Stale Tales Slate Universal ends here.
