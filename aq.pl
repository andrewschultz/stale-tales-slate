my $game = "roiling";

while ($count <= $#ARGV)
{
  $a = @ARGV[$count];
  if ($a =~ /^[0-9]/)
  {
    @temp = split(/,/, $a);
	@lines = (@lines, @temp);
  }
  if ($a =~ /-s/) { $game = "sa"; }
  if ($a =~ /-a/) { $sortAuto = 1; }
  if ($a =~ /-d/) { $delete = 1; }
  if ($a =~ /-x/) { $inString = "x"; }
  $count++;
}

if ($#lines == -1) { print ("Nothing done.\n"); exit; }

$lastLine = 0;
for (0..$#lines)
{
  if ((@lines[$_] < $lastLine) && (!$sortAuto)) { die("Out of numerical order at item " . ($_+1) . " or @lines[$_]. Use -a to sort."); }
  $lastLine = @lines[$_];
}

doLines();

sub doLines
{
  my $fileString = "c:/Program Files (x86)/Inform 7/Inform7/Extensions/Andrew Schultz/$game Random Text.i7x";
  $fileString =~ s/\//\\/g;
  print "Do lines " . join(",", @lines) . "\n";
  open(A, "$fileString") || die ("No $fileString");
  open(B, ">$fileString.bak");
  while ($a = <A>)
  {
    $line++;
    chomp($a);
    if ($line == @lines[0]) { processLine(); } else { print B "$a\n"; }
  }
  close(A);
  close(B);
  if (! -f "$fileString.bak") { die; }
  if (! -f "$fileString") { die; }
  if (((-s "$fileString.bak") < (-s "$fileString")) && (!$delete)) { die ("Oops, data got deleted.\n"); }
  $cmd = "xcopy /y /q \"$fileString.bak\" \"$fileString\"";
  print "Copying over...\n$cmd\n";
  $output = `$cmd`;
  print "$output";
}

sub processLine
{
  if ($delete)
  {
    if ($a !~ / ?\[\]/) { print "Oops, no \[\].\n"; }
	else
	{ $a =~ s/ ?\[\]//i; }
	print B "$a\n";
	shift(@lines);
  }
  else
  {
  if ($a =~ / \[$inString\]/) { print "@lines[0] $a already commented\n"; print B "$a\n"; }
  else
  {
  print "$a \[$inString\]\n";
  print B "$a \[$inString\]\n";
  }
  shift(@lines);
  print "@lines\n";
  }
}