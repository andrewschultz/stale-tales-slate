use lib "c:/writing/dict";
use wutil;

fiPro("sa");
fiPro("roiling");

for $x (sort keys %dupes) { $count++; print "$x: ($count)\n$classes{$x}"; }

sub fiPro
{
  $toread = "c:/games/inform/$_[0].inform/source/story.ni";
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