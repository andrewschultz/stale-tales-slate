# stale-tales-slate

This repository contains source, binaries, support scripts and test files for *Shuffling Around*, *A Roiling Original* and *Tours Roust Torus*, three text adventures written in Inform 7 with similar themes. You may guess what they are by the titles or, indeed, the title of this repository, as together, they make the *Stale Tales Slate*. To give a much starker hint, let's just say that if I had to rename them, I'd rename *Shuffling Around* to *A Roiling Original* and *A Roiling Original* to *Ordeal Reload*. But the names have stuck, and I do like *Shuffling Around*.

The first two games were conceived in March of 2012, at which time I started writing scripts to find which words anagrammed with which others. *Shuffling Around* was written for the 2012 IFComp (9/29/2012) and *A Roiling Original* dropped on Spring Thing of the next year (4/1/2013). Since then they have gone through several revisions. *Tours Roust Torus* is the third game, originally released for Spring Thing 2002 (3/31/2022).

To get an idea of the various sizes:

* *Shuffling Around* has 34 rooms and 91 points
* *A Roiling Original* has 90 rooms, not including a semi-joke maze, and 300 points
* *Tours Roust Torus* has 8 rooms and 13 points

The directory structure has scripts and extension files used by all games at the top. Shuffling, Roiling and Torus are the game subdirectories, with further testing subdirectories. Utils has utilities.

I learned Python soon after starting this repo, so the utilities are a blend of Perl and Python. Some were first in Perl then rewritten in Python. Python is much better.

Many of my Perl scripts do not use strict/warnings, which is bad, I know, but I was just writing simple test scripts.

Testing uses a modification of Zarf's python script. My tweaked version is/will be at https://github.com/andrewschultz/plotex/. The original is at https://github.com/erkyrath/plotex/. You should probably go with his official version, though I'd like to think I've found interesting tweaks.

Inform files are compiled with 6G60.

*Shuffling Around* cover art is copyright Wade Clarke. *Tours Roust Torus* cover art is copyright J. J. Guest. Their making such cool cover art was a big boost for me nailing technical stuff down. (Yes, *A Roiling Original*'s cover art is by me.)

Perl files should run with Perl 5.8. Python files are generally compiled under 3.9..

cheapbotsdonequick.com hosts both anagram bots found in Roiling: @AnagramBookBot has books from Roiling's 3 shelves. @AnagramTauntBot has taunts from both Shuffling (crowd and Red Bull Burdell) and Roiling (8 places where the game heckles you). The bot may no longer work. But it was fun to try.

More information on the various games is/will be in the subdirectories: Shuffling, Roiling and Torus.

You may notice some \*.i7x files on the top directory. These contain code used by more than one game. Universal is for all three games, and Common is for just Shuffling and Roiling.