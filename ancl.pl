###########################################
#ancl.pl
#
#this looks for strings in tables with similar anagram classes (ANagram CLasses)
#
#It's been mostly superseded but is still a decent program

use strict;
use warnings;

use lib "c:/writing/dict";
use wutil;

my %classes;
my %dupes;

###################variables
my $count = 0;
my $inTable = 0;
my $temp = "";
my $toread = "";

if ((defined$ARGV[0]) && ($ARGV[0] =~ /\?/)) { print "No arguments.\n"; }

print "OK, this will take a while...\n ";

fiPro("shuffling");
fiPro("roiling");

for my $x (sort keys %dupes) { $count++; print "$x: ($count)\n$classes{$x}"; }

sub fiPro
{
  $toread = "c:/Program Files (x86)/Inform 7/Inform7/Extensions/Andrew Schultz/$_[0] Random Text.i7x";
  open(A, "$toread") || die ("No $toread.\n");

  print "Starting $toread\n";

  while ($a=<A>)
  {
    if ($a =~ /^table of.*xx/)
	{
	  $b = <A>;
	  if ($b =~ /^blurb/) { $inTable = 1; next; }
	}
	if ($a !~ /[0-9a-z]/i) { $inTable = 0; }

	if ($inTable)
	{
	  $temp = wutil::cromstring($a);
	  if ($classes{$temp}) { $dupes{$temp} = 1; }
	  $classes{$temp} .= "  ($.-$_[0]) $a";
	}
  }

  close(A);
}