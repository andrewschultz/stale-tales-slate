$anaIdeas = "c:/writing/dict/sts.txt";

open(A, $anaIdeas) || die ("No ideas file $anaIdeas.");

while ($a = <A>)
{
  if ($a =~ /^table of/) { chomp($a); $currentTable = $a; next; }
  if ($a !~ /[a-z0-9]/) { $currentTable = ""; next; }
  if ($currentTable)
  {
    #print "$currentTable gets $a";
    $toAdd{$currentTable} .= $a;
  }
}

addIdeas("roiling");
addIdeas("sa");

cleanUpLoneFile();

##################################
#addIdeas
#
#this simply adds ideas from the idea file to the appropriate table
#

sub addIdeas
{
  $storyFile = "c:/games/inform/$_[0].inform/Source/story.ni";
  $addedFile = "c:/games/inform/$_[0].inform/Source/story.add";
  open(A, $storyFile) || die ("Can't open $storyFile!");
  open(B, ">$addedFile") || die ("Can't open $storyFile!");

  while ($a = <A>)
  {
    $b = $a; chomp($b);
    print B $a;
    if ($toAdd{$b})
    {
      $c = <A>;
      print B $c;
      print B $toAdd{$b};
    }
  }

  close(A);
  close(B);
  
}

################################
#cleanUpLoneFile
#
#this cleans up the lone idea file
#

sub cleanUpLoneFile()
{
  my $anaDel = "c:/games/inform/roiling.inform/Source/lones.bak";
  my $inTable = 0;

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
}