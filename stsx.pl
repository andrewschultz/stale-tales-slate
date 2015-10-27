$anaIdeas = "c:\\writing\\dict\\sts.txt";

open(A, $anaIdeas) || die ("No ideas file $anaIdeas.");

while ($a = <A>)
{
  if ($a =~ /^table of/) { chomp($a); $currentTable = $a; next; }
  if ($a !~ /[a-z0-9]/i) { $currentTable = ""; next; } # could also check for no start quote
  if ($currentTable)
  {
    #print "$currentTable gets $a";
    $toAdd{$currentTable} .= $a; $totalAdded++;
  }
}

addIdeas("roiling");
addIdeas("sa");

cleanUpLoneFile();

printStats();

##################################
#addIdeas
#
#this simply adds ideas from the idea file to the appropriate table
#

sub addIdeas
{
  $storyFile = "c:\\games\\inform\\$_[0].inform\\Source\\story.ni";
  $addedFile = "c:\\games\\inform\\$_[0].inform\\Source\\story.add";

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
      print B $c;
      print B $toAdd{$b};
	  @x = split(/\n/, $toAdd{$b});
	  $toFiles{$_[0]} += $#x + 1;
	  print "$b added " . ($#x + 1) . " entries.\n";
    }
  }

  close(A);
  close(B);
  $cmd = "copy \"$addedFile\" \"$storyFile\"";
  print "$cmd\n";
  `$cmd`;
}

################################
#cleanUpLoneFile
#
#this cleans up the lone idea file
#

sub cleanUpLoneFile()
{
  my $anaDel = "c:\\writing\\dict\\sts-bak.txt";
  my $inTable = 0;

  open(A, "$anaIdeas");
  open(B, ">$anaDel");
  
  if ($justPrintCmds) { print "copy $anaDel $anaIdeas"; return; }

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
}