# stale-tales-slate

Source, binaries and test files for Shuffling Around and A Roiling Original, two text adventures with similar themes. You may guess what they are by the titles or, indeed, the title of this repository.

They were conceived in March of 2012. Shuffling Around was written for the 2012 IFComp (9/29/2012) and Roiling for Spring Thing (4/1/2013). Since then they have gone through several revisions.

The directory structure has scripts used by both games at the top. Shuffling and Roiling are the subdirectories, with further testing subdirectories.

firsts.txt and lasts.txt compiled with the help of mongabay.com as well as http://stackoverflow.com/questions/1803628/raw-list-of-person-names.

I forgot where I got brit-1word from, but it's been terribly useful to me.

All other programs should be interpreted with PERL. Some do not use strict/warnings.

Testing uses a modification of Zarf's python script. My tweaked version is/will be at https://github.com/andrewschultz/plotex/. The original is at https://github.com/erkyrath/plotex/.

Inform files are compiled with 6G95.

Shuffling Around cover art is copyright Wade Clarke.

All PERL files should run with any version of PERL. There should be little need for extension. I make no claims for readability and really should use strict;use warnings on some of them.

cheapbotsdonequick.com hosts both anagram bots found in Roiling: @AnagramBookBot has books from Roiling's 3 shelves. @AnagramTauntBot has taunts from both Shuffling (crowd and Red Bull Burdell) and Roiling (8 places where the game heckles you).

Note for if I modify a puzzle, which is unlikely, but I need to write it somewhere. Check the following files:
* \writing\dict\wmet.txt (run wmet.pl)
* Roiling specific
**(roiling)-logic.txt (if cheat gives ?)
**(roiling-thruc.txt (if cheat gives ?)
** roi.txt (invisiclues)
** settler.txt
* Shuffling specific
** sa.txt (invisiclues)
** rg.txt
** shuf-walkthrough.txt
