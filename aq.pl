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
  if ($a =~ /-d/) { $delete = 1; }
  $count++;
}

if ($#lines == -1) { print ("Nothing done.\n"); exit; }

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
    $a =~ s/ ?\[\]//i;
	print B "$a\n";
	shift(@lines);
  }
  else
  {
  print B "$a \[\]\n";
  shift(@lines);
  }
}