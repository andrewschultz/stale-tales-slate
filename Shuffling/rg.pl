#######################################################
#rg.pl
#
#Reads rg.txt and prints out the code that should be in the game
#rg.txt is for Shuffling/Roiling, meaning red and green texts
#
# it determines length (yeah ok easy), rgtext for the CERTIFY mode, and gpos/rpos (green/red) for RECTIFY
#

use strict;
use warnings;

open(A, "c:/writing/dict/rg.txt") || die("No c:/writing/dict/rg.txt.");

while ($a = <A>)
{
  chomp($a);
  $a =~ s/ //g;
  my @q = split(/[,]/, $a);
  for my $x (@q) { rg (@q[0], $x); }
}

sub rg
{
  if ($_[0] eq $_[1]) { return; }
  print "$_[0] vs $_[1]:\n";
  my @b = split(//, $_[0]);
  my @c = split(//, $_[1]);
  print "rgtext of $_[1] is \"";
  for (0..$#b)
  { if ($b[$_] eq $c[$_]) { print "\[gc\]"; } else { print "\[rc\]"; } }
  print "\". ";
  print "lgth of $_[1] is " . ($#b+1) . ".";
  for (0..$#b)
  {
    if ($b[0] eq $c[$_]) { print " gpos of $_[1] is " . ($_+1) . ". "; last; }
  }
  for (0..$#b)
  {
    if ($b[$#b] eq $c[$_]) { print "rpos of $_[1] is " . ($_+1) . ".\n"; last; }
  }
}
