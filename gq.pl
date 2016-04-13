#gq.pl: stands for "grep quick"
#this shows where certain text I may've already used pops up in Roiling or Shuffling. It pegs them both as Shuffling << Roiling.
#-tb1 = table random, start with that word
#-tb = table random
#-t = table only
#usage
#gq.pl -tb rosco coors (matches both)
#gq.pl -tb rosco (matches one)
#gq.pl -tb1 rosco (matches starting with rosco)
#gq.pl -m 10 yes (matches 1st 10 yes's)
#
#

use POSIX;

@thisAry = @ARGV;

$count = 0;

$printTabbed = 1;
$printUntabbed = 1;

$pwd = getcwd();

if ($pwd =~ /oafs/) { $oafs = 1; $roiling = 0; }
elsif ($pwd =~ /(threed|fourd)/) { $threed = 1; $roiling = 0; $compound = 0; }
elsif ($pwd =~ /Compound/) { $compound = 1; $roiling = 0; $threed = 0; }
elsif ($pwd =~ /slicker/) { $compound = 1; $roiling = 0; $threed = 0; }
else
{ $roiling = 1; }

while (@ARGV[$count])
{
  $a = @ARGV[$count];
  
  for ($a)
  {
  if (@thisAry[0] =~ /^\//) { @thisAry[0] =~ s/^\///g; $onlyTables = 1; $onlyRand = 1; $firstStart = 1; $count++; next; };
  if (@thisAry[0] eq "-a") { $threed = 1; $roiling = 1; $oafs = 1; $compound = 1; shift(@thisAry); $count++; next; }; # oafs?
  if (@thisAry[0] eq "-o") { $oafs = 1; shift(@thisAry); $count++; next; }; # oafs?
  if (@thisAry[0] eq "-3") { $threed = 1; shift(@thisAry); $count++; next; }; # oafs?
  if (@thisAry[0] eq "-as") { $compound = 1; shift(@thisAry); $count++; next; }; # oafs?
  if (@thisAry[0] eq "-r") { $roiling = 1; shift(@thisAry); $count++; next; }; # roiling original? (default)
  if (@thisAry[0] eq "-h") { $showHeaders = 1; shift(@thisAry); $count++; next; };
  if (@thisAry[0] eq "-p") { $headersToo = 1; shift(@thisAry); $count++; next; };
  if (@thisAry[0] eq "-nt") { $printTabbed = 0; shift(@thisAry); $count++; next; };
  if (@thisAry[0] eq "-ft") { $printUntabbed = 0; shift(@thisAry); $count++; next; };
  if (@thisAry[0] eq "-m") { $maxFind = @thisAry[1]; @thisAry = @thisAry[2..$#thisAry]; $count+= 2; next; };
  if (@thisAry[0] eq "-t") { $onlyTables = 1; shift(@thisAry); $count++; next; }; #not perfect, -h + -t = conflict
  if (@thisAry[0] eq "-tb") { $onlyTables = 1; $onlyRand = 1; shift(@thisAry); $count++; next; }; #not perfect, -h + -t = conflict
  if (@thisAry[0] eq "-tb1") { $onlyTables = 1; $onlyRand = 1; $firstStart = 1; shift(@thisAry); $count++; next; }; #not perfect, -h + -t = conflict
  if (@thisAry[0] =~ /^[a-z]/i) { $count++; } else { print "Argument @thisAry[0] failed.\n"; usage(); }
  }

}
if (!@thisAry[0]) { die ("Need an argument."); }

if ($oafs)
{
processStory("uglyoafs");
}
elsif ($threed)
{
processStory("threediopolis");
processStory("fourdiopolis");
}
elsif ($compound)
{
processStory("compound");
processStory("c:/games/inform/triz/mine/compound-directors-cut.trizbort");
processStory("slicker-city");
processStory("c:/games/inform/triz/mine/slicker-city.trizbort");
}
elsif ($roiling)
{
processStory("sa", 0);
processStory("sa", 1);
processStory("roiling", 0);
processStory("roiling", 1);
processNotes("games.otl");
processNotes("sts.txt");
#processNotes("lists.otl");
}

sub processNotes
{
  open(A, "c:/writing/$_[0]") || open(A, "c:/writing/dict/$_[0]") || open(A, "c:/games/inform/roiling.inform/source/$_[0]") || die ("Can't open $_[0] file.");
  print "In notes file $_[0]:\n"; $foundSomething = 0;
  $section = "";
  $lines = 0;
  while ($a = <A>)
  { # all headers for ARO?
    if ($readStuff) {
	  $lines++;
	}
    if ($a =~ /^\\ana/i) { $readStuff = 1; $header = $a; $header =~ s/.*=//g; chomp($header); $foundSomething = 0; }
    if ($a =~ /^\\ifupdate/i) { $readStuff = 1; $header = $a; $header =~ s/.*=//g; chomp($header); }
	if ($a !~ /[a-z\"]/i) { if ($readStuff && !$foundSomething) { print "NOTHING in $lines lines of $header.\n"; } $readStuff = 0; $lines=0; }
	if ($a =~ /^\\/) { $section = $a; chomp ($section); $section =~ s/.*=//g; }
    if ($a =~ /^#/) { next; }
    if ($readStuff)
    {
      if (cromu($a)) { print "In $section: $a"; $foundSomething = 1; }
    }
  }
}

sub cromu
{
  if ($firstStart)
  {
    if (($_[0] !~ /^\"@thisAry[0]/i) && ($_[0] !~ /'@thisAry[0]'/i)){ return 0; }
  }
  
  if ($_[0] =~ /^test|volume|chapter|book|part|section/) { return 0; }
  #lumped together
  if ($#thisAry)
  {
  if ($_[0] =~ /\b@thisAry[0]@thisAry[1]\b/i) { return 1; }
  if ($_[0] =~ /\b@thisAry[1]@thisAry[0]\b/i) { return 1; }
  if ($_[0] =~ /\b@thisAry[0]@thisAry[1]s\b/i) { return 2; }
  if ($_[0] =~ /\b@thisAry[1]@thisAry[0]s\b/i) { return 2; }
  if (($_[0] =~ /\b@thisAry[0]/) && ($_[0] =~ /@thisAry[1]s\b/i)) { return 2; }
  if (($_[0] =~ /\b@thisAry[0]s/) && ($_[0] =~ /@thisAry[1]\b/i)) { return 2; }
  }
  elsif ($#thisAry == 0)
  {
  if ($_[0] =~ /\b@thisAry[0]s\b/i) { return 2; }
  if ($_[0] =~ /\b@thisAry[0]\b/i) { return 1; }
  }
  
  #words apart
  for $tomatch (@thisAry)
  {
    if ($_[0] !~ /\b$tomatch\b/i) { if (($headersToo) && ($myHeader =~ /\b$tomatch\b/i)) { next; } return 0; }
  }
  return 1;
}

sub processStory
{
  if ($_[0] =~ /trizbort/i)
  {
    $fileName = $_[0];
  }
  else
  {
  $shortName = $_[0];
  if ($_[1] == 1) { $fileName = "c:/Program Files (x86)/Inform 7/Inform7/Extensions/Andrew Schultz/$_[0] Random Text.i7x"; } else { $fileName = "c:/games/inform/$_[0].inform/Source/story.ni"; }
  }
  open(A, "$fileName") || die ("No $fileName.");
  $foundSomething = 0;
  $count = 0;
  while ($a = <A>)
  {
    chomp($a);
	if (($a =~ /^[a-z].*: *$/i) || ($a =~ /^table/)) { $myHeader = $a;  $tabrow = 0; $blurby = 0;}
	if ($a =~ /^blurb/) { $blurby = 1; }
    $count++; $tabrow++;
    if ($a =~ /`/) { print "WARNING: Line $count has back-quote!\n$a"; }
	if ($a =~ /^table of /i) { $a =~ s/ *\[[^\]]*\].*//g; $thisTable = "($a) "; } elsif ($a !~ /[a-z]/i) { $thisTable = ""; }
	my $tmp = cromu($a);
    if ($tmp)
    {
      if ($a =~ /list of text variable/i)
      { processList($a); }
      else
      {
	    if ($showHeaders)
		{
		  if ($myHeader ne $lastHeader)
		    { print "======================$myHeader\n"; $lastHeader = $myHeader; }
		}
		if (isPrintable())
		{ if (!$foundSomething) { print "In $fileName:\n"; }
		print "$shortName L$count ";
		$totalFind++;
		  if ($thisTable)
		  { $tr2 = $tabrow - 2; print "/$tr2"; }
		  if ($showHeaders) { print ": $a\n"; }
		  else
		  {
		  print ": $thisTable$a";
		  if ($tmp == 2) { print "****PLURAL****"; }
		  print "\n";
		  }
		if ($maxFind == $totalFind) { print "Hit the limit.\n"; }
		  $foundSomething = 1;
		}
	  }
    }
  }

  close(A);
  if (!$foundSomething) { print "Nothing in $fileName.\n"; }

}

sub isPrintable
{
  if (($maxFind) && ($maxFind <= $totalFind)) { return 0; }
  if (!$onlyTables) { return 1; }
  if (($onlyRand) && ($thisTable) && ($blurby) && tabCheck($a)) { return 1; }
  if (tabCheck($a) && ($thisTable) && (!$onlyRand)) { return 1; }
  return 0;
}
sub tabCheck
{
  if (($_[0] =~ /^\t/) && ($printUntabbed)) { return 1; }
  if (($_[0] !~ /^\t/) && ($printTabbed)) { return 1; }
  return 0;
}

sub processList
{
  $listName = $a; $listName =~ s/.is a list of.*//gi;
  $yep = 0;
  if ($a =~ /\{/)
  {
    $a =~ s/^[^\"]*.//g; $a =~ s/\" *\}.*//g;
    @b = split(/\", \"/, $a);
    for (@b)
    {
	  my $temp = cromu($_);
      if ($temp)
      { $yep = 1; $foundSomething = 1; print "$listName (L$count): $_"; if ($temp == 2) { print " (PLURAL)"; } print "\n"; }
    }
    return;
  }
  print "$a\n";
  if (!$yep) { print "$shortName had @ARGV[0]/@ARGV[1] but not in same entry.\n"; }
}

sub usage
{
print<<EOT;
-h = show headers
-p = headers too
-nt = print tabbed
-ft = print untabbed
-t = only in tables
EOT
exit;
}