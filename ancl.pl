###########################################
#ancl.pl
#
#this looks for strings in tables with similar anagram classes (ANagram CLasses)

use lib "c:/writing/dict";
use wutil;

fiPro("shuffling");
fiPro("roiling");

for $x (sort keys %dupes) { $count++; print "$x: ($count)\n$classes{$x}"; }

sub fiPro
{
  $toread = "c:/Program Files (x86)/Inform 7/Inform7/Extensions/Andrew Schultz/$_[0] Random Text.i7x";
  open(A, "$toread") || die ("No $toread.\n");
  my $line = 0;

  print "Starting $toread\n";

  while ($a=<A>)
  {
    $line++;
    if ($a =~ /^table of.*xx/)
	{
	  $b = <A>;
	  $line++;
	  if ($b =~ /^blurb/) { $inTable = 1; next; }
	}
	if ($a !~ /[0-9a-z]/i) { $inTable = 0; }

	if ($inTable)
	{
	  $temp = wutil::cromstring($a);
	  if ($classes{$temp}) { $dupes{$temp} = 1; }
	  $classes{$temp} .= "  ($line-$_[0]) $a";
	}
  }

  close(A);
}