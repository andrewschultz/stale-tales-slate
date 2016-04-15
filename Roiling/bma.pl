#bma.pl
#this simply tries all book anagrams and checks them. These are the most likely to fail.

open(A, "c:/Program Files (x86)/Inform 7/Inform7/Extensions/Andrew Schultz/Roiling Random Text.i7x");

$cc = 0;

print "Remember Tio=tt and Tino=toti\n";

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
  if ($a =~ /^table of biopics \[/) { $books = 1;  printTest(); next; }
  if ($a =~ /^table of random books \[/) { $books = 2; printTest("Roiling biopics"); next; }
  if ($a =~ /^table of self-help bestsellers \[/)
  {
    $books = 3;
	printTest("Roiling random books"); next; }
  if ($a !~ /[a-z]/) { $books = 0; next; }
  if ($books)
  {
    $count++;
	$orig = $a;
    checkBookString($a);
  }
}

printTest("Roiling self-help books");

sub checkBookString
{
    if (($_[0] !~ /\[r\]/) && ($books == 2)) { print "$_[0] has no [r].\n"; $cc++; next; }
    if ($_[0] =~ /\[x\]/) { next; } # [x] is a skip because something was too odd to parse
	if ($_[0] =~ /\]\[(end if|else)/) { print "$_[0] BLANK IF CLAUSE\n"; $cc++; next; }
	if ($_[0] =~ /\[if/)
	{
	  my $b = $_[0];
	  my $c = $_[0];
	  if ($_[0] =~ /if player is male/)
	  {
	    $c =~ s/\[if player is male.*?\[else\]//g;
	    $c =~ s/\[end if\]//g;
	    $b =~ s/\[else\].*?\[end if\]//g;
	    $b =~ s/\[if.*?\]//g;
	    checkBookString($b, 1);
	    checkBookString($c, 1);
	    #if ($books == 1) { print "$_[0]\n--B=$b\n--C=$c\n"; }
	    return;
	  }
	  $c =~ s/\[if.*?\[else\]//;
	  $c =~ s/\[end if\]//;
	  $b =~ s/\[else\].*?\[end if\]//;
	  $b =~ s/\[if.*?\]//;
	  #print "$_[0]\n--$b\n--$c\n"; die;
	  checkBookString($b, 1);
	  checkBookString($c, 1);
	  return;
	}
    $_[0] =~ s/\[a-b\]/Abe/g;
    $_[0] =~ s/\[i-n\]/Ian/g;
    $_[0] =~ s/\[n-t\]/Nate/g;
    $_[0] =~ s/\[tt\]/Tio/g;
    $_[0] =~ s/\[ta\]/Tia/g;
	$_[0] =~ s/\[a-word(-u)?\]/ass/gi;
	$_[0] =~ s/\[crap(-u)?\]/crap/gi;
	$_[0] =~ s/\[d-word(-u)?\]/damn/gi;
    $_[0] =~ s/\[d-t\]/Dot/g;
    $_[0] =~ s/\[sim\]/Simone/g;
    $_[0] =~ s/\[toti\]/Tino/g;
	$_[0] =~ s/^\"//g;
	$_[0] =~ s/\".*//g;
	my $ratio = 0;
	my %stl;
	my %el;
	my $errorString;
	my $flagError = 0;
    $start = lc($_[0]); $start =~ s/\[r\].*//g; $s2 = $start;
    $start;
    $end = lc($_[0]); $end =~ s/.*\[r\]//g; $end =~ s/,? by //g;
	for ('a'..'z')
	{
	  $stl = () = $start =~ /$_/g;
	  $el = () = $end =~ /$_/g;
	  if ($stl && $el)
	  {
	    if (!$ratio) { $ratio = $stl / $el; }
		else { if ($ratio != $stl / $el) { $flagError = 1; $errorString .= " $_ $stl/$el != $ratio"; } }
	  } elsif ($stl || $el) { $errorString = "$_(missing)"; }
	}

    if ($flagError)
	{ $cc++;
	if ((!$maxNum) || ($cc < $maxNum))
	{
	if ($lines) { print "$count ($cc) ($totalLines): "; }
	print "$_[0]: $errorString";
	if ($_[1]) { print " (from $orig)"; }
	print "\n";
	}
	}
	else { $success++; }
}

sub printTest
{
  $totalLines++; <A>;
  if (!$_[0]) { return; }
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