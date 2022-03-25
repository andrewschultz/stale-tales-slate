# stale-tales-slate

This repository contains source, binaries and test files for Shuffling Around, A Roiling Original and Tours Roust Torus, two text adventures with similar themes. You may guess what they are by the titles or, indeed, the title of this repository.

Trivia: looking back, my nitpicking side tells me I should maybe have named Shuffling "A Roiling Original" and Roiling "Ordeal Reload." But I like the names. Shuffling Around stuck.

The first two games were conceived in March of 2012. Shuffling Around was written for the 2012 IFComp (9/29/2012) and Roiling for Spring Thing (4/1/2013). Since then they have gone through several revisions.

Tours Roust Torus was originally going to be part of a far too ambitious EctoComp Petite Mort game, but I split it in two. You can see the results with Psyops, Yo. The Torus was originally a hexagon beneath the main area, and the idea of words with an even amount of each letter were similar to Psyops Yo's "two letter sequences in a row" requirements, sort of. I'd always wanted to write a third entry in the series, and I knew it wouldn't be big, but I didn't know what the puzzle would be.

The directory structure has scripts and extension files used by all games at the top. Shuffling, Roiling and Torus are the game subdirectories, with further testing subdirectories. Utils has utilities.

I learned Python soon after starting this repo, so the utilities are a blend of Perl and Python. Some were first in perl then rewritten in Python.

All other programs should be interpreted with PERL. Some do not use strict/warnings.

Testing uses a modification of Zarf's python script. My tweaked version is/will be at https://github.com/andrewschultz/plotex/. The original is at https://github.com/erkyrath/plotex/. You should probably go with his official version, though I'd like to think I've found interesting tweaks.

Inform files are compiled with 6G95.

Shuffling Around cover art is copyright Wade Clarke.

Perl files should run with Perl 5.8. Python files are generally compiled under 3.9. I think I've put in use strict;use warnings on some Perl files, but the main utilities are all now done in Perl.

cheapbotsdonequick.com hosts both anagram bots found in Roiling: @AnagramBookBot has books from Roiling's 3 shelves. @AnagramTauntBot has taunts from both Shuffling (crowd and Red Bull Burdell) and Roiling (8 places where the game heckles you).
