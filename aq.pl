my $game = "roiling";

while ($count <= $#ARGV)
{
  $a = @ARGV[$count];
  if ($a =~ /^[0-9]/)
  {
    @temp = split(/,/, $a);
	@lines = (@lines, @temp);
  }
  if ($a =~ /-s/) { $game = "shuffling"; }
  if ($a =~ /-a/) { $sortAuto = 1; }
  if ($a =~ /-d/) { $deleteBracket = 1; }
  if ($a =~ /-x/) { $inString = "x"; }
  $count++;
}

if ($#lines == -1) { print ("Nothing done.\n"); exit; }

$lastLine = 0;
for (0..$#lines)
{
  $temp = @lines[$_]; $temp =~ s/d//g;
  if (($temp < $lastLine) && (!$sortAuto)) { die("Out of numerical order at item " . ($_+1) . " or @lines[$_]. Use -a to sort."); }
  $lastLine = $temp;
}

doLines();

if ($itemDeleted)
{
  print "Re-running nightly since you deleted something\n";
  `c:/writing/dict/nitely.pl -t ana`;
}

sub doLines
{
  my $fileString = "c:/Program Files (x86)/Inform 7/Inform7/Extensions/Andrew Schultz/$game Random Text.i7x";
  $fileString =~ s/\//\\/g;
  print "Do lines " . join(",", @lines) . "\n";
  open(A, "$fileString") || die ("No $fileString");
  open(B, ">$fileString.bak");
  binmode(B);
  $curLine = @lines[0]; $curLine =~ s/[a-z]//g;
  while ($a = <A>)
  {
    $line++;
    chomp($a);
    if ($line == $curLine) { processLine(); } else { print B "$a\n"; }
  }
  close(A);
  close(B);
  if (! -f "$fileString.bak") { die; }
  if (! -f "$fileString") { die; }
  if (((-s "$fileString.bak") < (-s "$fileString")) && (!$deleteBracket) && (!$itemDeleted)) { die ("Oops, data got deleted.\n"); }
  $cmd = "xcopy /y /q \"$fileString.bak\" \"$fileString\"";
  print "Copying over...\n$cmd\n";
  $output = `$cmd`;
  print "$output";
}

sub processLine
{
  if (@lines[0] =~ /d/) { print "Deleting line $line.\n"; $itemDeleted = 1; return; }
  if ($deleteBracket)
  {
    if ($a !~ / ?\[\]/) { print "Oops, no \[\].\n"; }
	else
	{ $a =~ s/ ?\[\]//i; }
	print B "$a\n";
	shift(@lines);
	$curLine = @lines[0]; $curLine =~ s/[a-z]//g;
  }
  else
  {
  if ($a =~ / \[$inString\]/) { print "@lines[0] $a already commented\n"; print B "$a\n"; }
  else
  {
  #print "$a \[$inString\]\n";
  print B "$a \[$inString\]\n";
  }
  shift(@lines);
  $curLine = @lines[0]; $curLine =~ s/[a-z]//g;
  #print "@lines\n";
  }
}