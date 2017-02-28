#rcl.pl
#
#pseudo command line interface to test lots of anagrams
#
#usage: 1 word = tries to anagram names (anan.pl) and searches through with gq
#2 words = looks through only gq

use strict;
use warnings;

if (defined($ARGV[0])) { die ("No arguments please!"); }

my $x;

while (1)
{
print "\nInsert stuff to anagram>>>";

$a = <STDIN>; chomp($a);

if ($a =~ / /) { $x .= `gq.pl -tb $a`; } else { $x .= `gq.pl -tb1 $a`; $x .= `anan.pl "$a\="`; }

print "Results: $x";
}