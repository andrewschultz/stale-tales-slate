#bma.pl
#this simply tries all book anagrams and checks them. These are the most likely to fail.

open(A, "c:/Program Files (x86)/Inform 7/Inform7/Extensions/Andrew Schultz/Roiling Random Text.i7x");

$cc = 0;

while ($count <= $#ARGV)
{
  $a = @ARGV[$count];
  for ($a)
  {
    /-x/ && do { $lines = 1; $count++; next; };
	/-[0-9]/ && do { $maxNum = $a; $maxNum =~ s/^-//g; $count++; next; };
	usage();
  }
}

#############################################
# the order of books is biopics, random books, self-help
# well, in the source anyway. So that's why they're in the order they're in, below.
#

while ($a = <A>)
{
  $totalLines++;
  chomp($a);
  if ($a =~ /^table of biopics \[/) { $books = 1;  <A>; next; }
  if ($a =~ /^table of random books \[/) { $books = 2; printTest("Roiling biopics"); <A>; next; }
  if ($a =~ /^table of self-help bestsellers \[/)
  {
    $books = 3;
	printTest("Roiling random books"); <A>; next; }
  if ($a !~ /[a-z]/) { $books = 0; next; }
  if ($books)
  {
    if (($a !~ /\[r\]/) && ($books == 2)) { print "$a has no [r].\n"; $cc++; next; }
    if ($a =~ /\[x\]/) { next; } # [x] is a skip because something was too odd to parse
	$a =~ s/\[else\]/\//g;
	$a =~ s/\[end if\]//g;
	$a =~ s/\[if player is male\]//g;
    $a =~ s/\[a-b\]/Abe/g;
    $a =~ s/\[i-n\]/Ian/g;
    $a =~ s/\[n-t\]/Nate/g;
    $a =~ s/\[tt\]/Tio/g;
    $a =~ s/\[ta\]/Tia/g;
	$a =~ s/\[a-word(-u)?\]/ass/gi;
	$a =~ s/\[crap(-u)?\]/crap/gi;
	$a =~ s/\[d-word(-u)?\]/damn/gi;
    $a =~ s/\[d-t\]/Dot/g;
    $a =~ s/\[sim\]/Simone/g;
    $a =~ s/\[toti\]/Tino/g;
	$a =~ s/^\"//g;
	$a =~ s/\".*//g;
    $start = $a; $start =~ s/\[r\].*//g; $s2 = $start;
    $start = sortit($start);
    $end = $a; $end =~ s/.*\[r\]//g; $end =~ s/,? by //g; $end = sortit($end);
    $match = 0;
    for (1..8)
    {
      if ($start eq sortit($end x $_)) { $match = 1; last; }
    }
    if (!$match)
    {
    for (1, 3, 5, 7)
    {
      if (sortit($start x 2) eq sortit($end x $_)) { $match = 1; last; }
    }
    }
    if (!$match)
    {
    for (1, 2, 4, 5)
    {
      if (sortit($start x 3) eq sortit($end x $_)) { $match = 1; last; }
    }
    for (1, 2, 3, 5)
    {
      if (sortit($start x 4) eq sortit($end x $_)) { $match = 1; last; }
    }
    }

    $count++;
    if (!$match)
	{ $cc++;
	if ((!$maxNum) || ($cc < $maxNum))
	{
	if ($lines) { print "$count ($cc) ($totalLines): "; }
	$sp = wout($start);
	$ep = wout($end);
	print "$a: $sp vs $ep\n";
	}
	}
	else { $success++; }
  }

}

printTest("Roiling self-help books");

sub printTest
{
  print "TEST RESULTS:$_[0],3,$cc,$success,$lineConc\n";
  if ($cc) { print "$cc to clean up.\n";  } else { print "Everything looks good!\n"; }
  $cc = 0; $success = 0; $count = 0;
}


sub sortit
{
  my $x = $_[0]; $x = lc($x); $x =~ s/[^a-z]//g;
  @y = split(//, $x);
  @y = sort(@y);
  $x = join('', @y);
  return $x;
}

sub wout
{
  my $temp = $_[0];
  my $out = "";
  for ('a' .. 'z')
  {
  $total = $temp =~ s/$_//g;
  if ($total) { $out .= "$_"; if ($total > 1) { $out .= $total; } }
  }
  return $out;
}

sub usage
{
print <<EOT;
-x is the only flag right now. It shows line numbers.
EOT
exit;
}