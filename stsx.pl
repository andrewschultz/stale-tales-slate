$anaIdeas = "c:\\writing\\dict\\sts.txt";

open(A, $anaIdeas) || die ("No ideas file $anaIdeas.");

$stsGame = "A Roiling Original";

$runTableSort = 1;

$runTableChomp = 1;

while ($count <= $#ARGV)
{
  $a = @ARGV[$count];
  for ($a)
  {
  /^-n/ && do { $runTableSort = 0; $count++; next; };
  usage();
  }

}

while ($a = <A>)
{
  $thisLine++;
  if ($a =~ /^table of/) { chomp($a); $currentTable = $a; $currentTable =~ s/ *\[[^\]]*\]$//; print "Current table now $currentTable.\n"; next; }
  if ($a =~ /=shuffling/i) { $stsGame = "Shuffling Around"; }
  if ($currentTable)
  {
    if ($a =~ /^['`]/) { chomp($a); print "WARNING $a not properly quoted, line $thisLine table $currentTable\n"; $bail = 1; }
    if ($a =~ /^[a-z0-9]/i) { chomp($a); print "WARNING $a does not start with a quote, line $thisLine table $currentTable\n"; $bail = 1; }
  }
  if (($a !~ /^\"/) || ($a !~ /[a-z0-9]/i)) { $currentTable = ""; next; }
  if ($bail) { next; }
  if ($currentTable)
  {
    #print "$currentTable gets $a";
    $toAdd{$currentTable} .= $a; $totalAdded++; $bytesAdded{$stsGame} += length($a);
  }
}

if ($bail) { die("Fix mistakes before continuing."); }

if ($totalAdded)
{
addIdeas("roiling");
addIdeas("sa");
}
else
{
print("No ideas to add.\n");
exit;
}

cleanUpLoneFile();

if ($runTableSort) { `tsh.pl -b`; }
if ($runTableChomp) { `notab.pl -b`; }

printStats();

##################################
#addIdeas
#
#this simply adds ideas from the idea file to the appropriate table
#

sub addIdeas
{
  #$storyFile = "c:\\games\\inform\\$_[0].inform\\Source\\story.ni";
  #$addedFile = "c:\\games\\inform\\$_[0].inform\\Source\\story.add";
  $storyFile = "c:\\Program Files (x86)\\Inform 7\\Inform7\\Extensions\\Andrew Schultz\\$_[0] Random Text.i7x";
  $addedFile = "c:\\Program Files (x86)\\Inform 7\\Inform7\\Extensions\\Andrew Schultz\\temp.i7x";

  if ($justPrintCmds) { print "copy $addedFile $storyFile\n"; return; }

  open(A, $storyFile) || die ("Can't open $storyFile!");
  open(B, ">$addedFile") || die ("Can't open $addedFile!");
  binmode(B);

  while ($a = <A>)
  {
    $b = $a; chomp($b);
    print B $a;
    if ($toAdd{$b})
    {
      $c = <A>;
	  print "Adding $c, $toAdd{$b}\n";
      print B $c;
      print B $toAdd{$b};
	  @x = split(/\n/, $toAdd{$b});
	  delete $toAdd{$b}; print "$b hash deleted.\n";
	  $toFiles{$_[0]} += $#x + 1;
	  print "$b added " . ($#x + 1) . " entries.\n";
    }
  }
  
  $undone = "c:/writing/scripts/sts-undone.txt";
  for $x (keys %toAdd) { print "$x hash not deleted. This should never happen, but it did. Look in $undone."; open(C, ">$undone"); print C "$x:\n$toAdd{$x}\n"; close(C); }

  close(A);
  close(B);
  $cmd = "copy \"$addedFile\" \"$storyFile\"";
  print "$cmd\n";
  `$cmd`;
  print "File copied\n";
}

################################
#cleanUpLoneFile
#
#this cleans up the lone idea file
#

sub cleanUpLoneFile()
{
  my $anaDel = "c:\\writing\\dict\\sts-bak.txt";
  my $anaLast = "c:\\writing\\dict\\sts-last.txt";
  my $inTable = 0;

  if ($justPrintCmds) { print "copy $anaDel $anaIdeas"; return; }

  `copy $anaDel $anaLast`;

  open(A, "$anaIdeas");
  open(B, ">$anaDel");

  while ($a = <A>)
  {
    if ($inTable)
    { #do it here so we get the carriage return at the end of a table in
      if ($a !~ /^\"/) { $inTable = 0; print B $a; } else
      {
        #print "Deleting $a";
      }
    }
    else
    {
    print B $a;
    }
    if ($a =~ /^table/) { $inTable = 1; }
  }

  close(A);
  close(B);
  
  $cmd = "copy $anaDel $anaIdeas";
  print "$cmd\n";
  `$cmd`;
}

sub printStats
{
  print "$totalAdded total names/ideas added.\n";
  for $x (sort keys %toFiles)
  {
    print "$x had $toFiles{$x} entries.\n";
  }
  for $x (sort keys %bytesAdded)
  {
    print "$x gained $bytesAdded{$x} bytes.\n";
  }
}

sub usage
{
print<<EOT;
The only current flag for stsx.pl is -n.
Otherwise it automatically runs tsh.pl -b.
EOT
exit;
}