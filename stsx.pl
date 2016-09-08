#############################################
#stsx.pl
#no arguments needed
#dumps random text into the appropriate tables and goes to a dump file if any is unaccounted for
#
#also checks to see how many local updates to go through

$anaIdeas = "c:\\writing\\dict\\sts.txt";

open(A, $anaIdeas) || die ("No ideas file $anaIdeas.");

my $stsGame = "A Roiling Original";

my $runTableSort = 1;
my $runTableChomp = 1;
my $debug = 0;
my $updatesToCheck = 0;
my $badLines;

while ($count <= $#ARGV)
{
  $a = @ARGV[$count];
  for ($a)
  {
  /^-d/ && do { $debug = 1; $count++; next; };
  /^-n/ && do { $runTableSort = 0; $count++; next; };
  usage();
  }

}

while ($a = <A>)
{
  if ($a =~ /^\\ro3/) { $inUpdates = 1; next; }
  $thisLine++;
  if ($a =~ /^table of/)
  {
	if ($currentTable) { print "WARNING no space between tables in line $thisLine: $a"; $bail = 1; $badLines .= "$a"; };
    chomp($a);
    $currentTable = $a; $currentTable =~ s/ *\[[^\]]*\]$//;
	#print "Current table now $currentTable.\n";
	next;
  }
  if ($a =~ /=shuffling/i) { $stsGame = "Shuffling Around"; }
  if ($currentTable)
  {
    my @c = split(/\"/, $a);
    if ($a =~ /“/) { err(); print "$a($thisLine) has smart quotes, which you may not want.\n"; $bail++; }
	if (($a !~ /^\"/) || ($a !~ /[a-z0-9]/i)) { $currentTable = ""; next; }
	if ($#c > 2) { $badLines .= "$a"; print "WARNING too many quotes in line $thisLine ($#c) table $currentTable: $a"; $bail++; }
    if (($a =~ /\"/) && ($a !~ /\".*\"/)) { $badLines .= "$a"; print "WARNING need more than one quote line $thisLine table $currentTable: $a"; $bail++; }
    if ($a =~ /^['`]/) { $badLines .= "$a"; chomp($a); print "WARNING $a not properly quoted, line $thisLine table $currentTable\n"; $bail++; }
    if ($a =~ /^[a-z0-9]/i) { $badLines .= "$a"; chomp($a); print "WARNING $a does not start with a quote, line $thisLine table $currentTable\n"; $bail++; }
    if (($currentTable =~ "table of biopics") && ($a !~ /\t(true|false)/)) { $badLines .= "$a"; print "WARNING biopics entry line $thisLine needs true or false!\n"; $bail++; }
    if (($currentTable =~ /^table of ad slogans/) && ($a !~ /\t(true|false)/)) { $a =~ s/(^\"[^\"]*\")/$1\tfalse/; $adAds++; }
  }
  if ($inUpdates) { if ($a !~ /[a-z]/i) { $inUpdates = 0; next; }  $updatesToCheck++; next; }
  if ($bail) { next; }
  if ($currentTable)
  {
    #print "$currentTable gets $a";
    $toAdd{$currentTable} .= $a; $totalAdded++; $bytesAdded{$stsGame} += length($a);
  }
}

if ($adAds) { print "Added FALSE to ads without them.\n\n"; }

print "TEST RESULTS:update ideas,3,$updatesToCheck,0,nothing\n";

if ($bail)
{
  $badLines =~s/\n/\n<br \/>/g;
  print "TEST RESULTS:sts.txt corruption,0,1,0,$badLines\n";
  die("Fix mistakes before continuing.");
}

if ($totalAdded)
{
addIdeas("roiling", 0);
addIdeas("shuffling", 1);
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

  #for $x (sort keys %toAdd) { print "$x :: $toAdd{$x}\n"; } die;
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
	  printDebug ("Adding $b, $toAdd{$b}\n");
      print B $c;
      print B $toAdd{$b};
	  @x = split(/\n/, $toAdd{$b});
	  delete $toAdd{$b}; printDebug("$b hash deleted.\n");
	  $toFiles{$_[0]} += $#x + 1;
	  print "$b added " . ($#x + 1) . " ";
	  if ($#x == 0) { print "entry"; } else { print "entries"; }
	  print ".\n";
    }
  }
  

  close(A);
  close(B);
  $cmd = "copy \"$addedFile\" \"$storyFile\"";
  print "$cmd\n";
  `$cmd`;
  print "File copied\n";
  my $unsorted = 0;
  open(A, "$undone");
  while ($a = <A>) { if ($a =~ /^\"/) { $unsorted++; } }
  close(A);
  print "TEST RESULTS:$_[0] unsorted,0,$unsorted,0,<a href=\"$undone\">Culprits</a>\n";
  if ($_[1] == 0) { print "Not processing results til both files are written.\n"; return; }
  $undone = "c:/writing/dict/sts-undone.txt";
  for $x (keys %toAdd) { print "$x hash not deleted. This should never happen, but it did. Look in $undone."; open(C, ">>$undone"); print C "$x:\n$toAdd{$x}\n"; close(C); }
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

sub printDebug
{
  if ($debug) { print $_[0]; }
}