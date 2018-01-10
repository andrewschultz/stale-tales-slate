#############################################
#stsx.pl
#no arguments needed
#dumps random text into the appropriate tables and goes to a dump file if any is unaccounted for
#
#also checks to see how many local updates to go through
#
#deprecated in favor of sso.pl
#

use strict;
use warnings;

my $anaIdeas = "c:\\writing\\dict\\sts.txt";

open( A, $anaIdeas ) || die("No ideas file $anaIdeas.");

my $stsGame = "A Roiling Original";

#options
my $justPrintCmds  = 0;
my $runTableSort   = 1;
my $runTableChomp  = 1;
my $debug          = 0;
my $updatesToCheck = 0;
my $badLines;

my %bytesAdded;
my %toAdd;
my %toFiles;

######################variables
my $adAds = 0;
my $line;
my $count        = 0;
my $bail         = 0;
my $inUpdates    = 0;
my $currentTable = 0;
my $totalAdded   = 0;

while ( $count <= $#ARGV ) {
  $line = $ARGV[$count];
  for ($line) {
    /^-?d$/  && do { $debug         = 1; $count++; next; };
    /^-?n$/  && do { $runTableSort  = 0; $count++; next; };
    /^-?jp$/ && do { $justPrintCmds = 1; $count++; next; };
    usage();
  }

}

while ( $line = <A> ) {
  if ( $line =~ /^\\ro3/ ) { $inUpdates = 1; next; }
  if ( $line =~ /^table of/ ) {
    if ($currentTable) {
      print "WARNING no space between tables in line $.: $line";
      $bail = 1;
      $badLines .= "$line";
    }
    chomp($line);
    $currentTable = $line;
    $currentTable =~ s/ *\[[^\]]*\]$//;

    #print "Current table now $currentTable.\n";
    next;
  }
  if ( $line =~ /=shuffling/i ) { $stsGame = "Shuffling Around"; }
  if ($currentTable) {
    my @c = split( /\"/, $line );
    if ( $line =~ /“/ ) {
        err ();
      print "$line($.) has smart quotes, which you may not want.\n";
      $bail++;
    }
    if ( ( $line !~ /^\"/ ) || ( $line !~ /[a-z0-9]/i ) ) {
      $currentTable = "";
      next;
    }
    if ( $#c > 2 ) {
      $badLines .= "$line";
      print
        "WARNING too many quotes in line $. ($#c) table $currentTable: $line";
      $bail++;
    }
    if ( ( $line =~ /\"/ ) && ( $line !~ /\".*\"/ ) ) {
      $badLines .= "$line";
      print
        "WARNING need more than one quote line $. table $currentTable: $line";
      $bail++;
    }
    if ( $line =~ /^['`]/ ) {
      $badLines .= "$line";
      chomp($line);
      print "WARNING $line not properly quoted, line $. table $currentTable\n";
      $bail++;
    }
    if ( $line =~ /^[a-z0-9]/i ) {
      $badLines .= "$line";
      chomp($line);
      print
"WARNING $line does not start with a quote, line $. table $currentTable\n";
      $bail++;
    }
    if ( ( $currentTable =~ "table of biopics" )
      && ( $line !~ /\t(true|false)/ ) )
    {
      $badLines .= "$line";
      print "WARNING biopics entry line $. needs true or false!\n";
      $bail++;
    }
    if ( ( $currentTable =~ /^table of ad slogans/ )
      && ( $line !~ /\t(true|false)/ ) )
    {
      $line =~ s/(^\"[^\"]*\")/$1\tfalse/;
      $adAds++;
    }
  }
  if ($inUpdates) {
    if ( $line !~ /[a-z]/i ) { $inUpdates = 0; next; }
    $updatesToCheck++;
    next;
  }
  if ($bail) { next; }
  if ($currentTable) {

    #print "$currentTable gets $line";
    $toAdd{$currentTable} .= $line;
    $totalAdded++;
    $bytesAdded{$stsGame} += length($line);
  }
}

if ($adAds) { print "Added FALSE to ads without them.\n\n"; }

print "TEST RESULTS:update ideas,3,$updatesToCheck,0,nothing\n";

if ($bail) {
  $badLines =~ s/\n/\n<br \/>/g;
  print "TEST RESULTS:sts.txt corruption,0,1,0,$badLines\n";
  die("Fix mistakes before continuing.");
}

if ($totalAdded) {
  addIdeas( "roiling",   0 );
  addIdeas( "shuffling", 1 );
}
else {
  print("No ideas to add.\n");
  exit;
}

cleanUpLoneFile();

if ($runTableSort)  { `tsh.pl -b`; }
if ($runTableChomp) { `notab.pl -b`; }

printStats();

##################################
#addIdeas
#
#this simply adds ideas from the idea file to the appropriate table
#

sub addIdeas {

  #$storyFile = "c:\\games\\inform\\$_[0].inform\\Source\\story.ni";
  #$addedFile = "c:\\games\\inform\\$_[0].inform\\Source\\story.add";
  my $storyFile =
"c:\\Program Files (x86)\\Inform 7\\Inform7\\Extensions\\Andrew Schultz\\$_[0] Random Text.i7x";
  my $addedFile =
"c:\\Program Files (x86)\\Inform 7\\Inform7\\Extensions\\Andrew Schultz\\temp.i7x";

  if ($justPrintCmds) { print "copy $addedFile $storyFile\n"; return; }

  #for $x (sort keys %toAdd) { print "$x :: $toAdd{$x}\n"; } die;
  open( A, $storyFile )    || die("Can't open $storyFile!");
  open( B, ">$addedFile" ) || die("Can't open $addedFile!");
  binmode(B);

  my @x;
  my $c;

  while ( $line = <A> ) {
    $b = $line;
    chomp($b);
    print B $line;
    if ( $toAdd{$b} ) {
      $c = <A>;
      printDebug("Adding $b, $toAdd{$b}\n");
      print B $c;
      print B $toAdd{$b};
      @x = split( /\n/, $toAdd{$b} );
      delete $toAdd{$b};
      printDebug("$b hash deleted.\n");
      $toFiles{ $_[0] } += $#x + 1;
      print "$b added " . ( $#x + 1 ) . " ";
      if   ( $#x == 0 ) { print "entry"; }
      else              { print "entries"; }
      print ".\n";
    }
  }

  close(A);
  close(B);
  my $cmd = "copy \"$addedFile\" \"$storyFile\"";
  print "$cmd\n";
  `$cmd`;
  print "File copied\n";
  my $unsorted = 0;
  my $undone   = "c:/writing/dict/sts-undone.txt";
  open( A, "$undone" );

  while ( $line = <A> ) {
    if ( $line =~ /^\"/ ) { $unsorted++; }
  }
  close(A);
  print
"TEST RESULTS:$_[0] unsorted,0,$unsorted,0,<a href=\"$undone\">Culprits</a>\n";
  if ( $_[1] == 0 ) {
    print "Not processing results til both files are written.\n";
    return;
  }
  for my $x ( keys %toAdd ) {
    print
"$x hash not deleted. This should never happen, but it did. Look in $undone.";
    open( C, ">>$undone" );
    print C "$x:\n$toAdd{$x}\n";
    close(C);
  }
}

################################
#cleanUpLoneFile
#
#this cleans up the lone idea file
#

sub cleanUpLoneFile {
  my $anaDel  = "c:\\writing\\dict\\sts-bak.txt";
  my $anaLast = "c:\\writing\\dict\\sts-last.txt";
  my $inTable = 0;

  if ($justPrintCmds) { print "copy $anaDel $anaIdeas"; return; }

  `copy $anaDel $anaLast`;

  open( A, "$anaIdeas" );
  open( B, ">$anaDel" );

  while ( $line = <A> ) {
    if ($inTable)
    {    #do it here so we get the carriage return at the end of a table in
      if ( $line !~ /^\"/ ) { $inTable = 0; print B $line; }
      else {
        #print "Deleting $line";
      }
    }
    else {
      print B $line;
    }
    if ( $line =~ /^table/ ) { $inTable = 1; }
  }

  close(A);
  close(B);

  my $cmd = "copy $anaDel $anaIdeas";
  print "$cmd\n";
  `$cmd`;
}

sub printStats {
  print "$totalAdded total names/ideas added.\n";
  for my $x ( sort keys %toFiles ) {
    print "$x had $toFiles{$x} entries.\n";
  }
  for my $x ( sort keys %bytesAdded ) {
    print "$x gained $bytesAdded{$x} bytes.\n";
  }
}

sub usage {
  print <<EOT;
The only current flag for stsx.pl is -n.
Otherwise it automatically runs tsh.pl -b.
-jp = just print commands, don't run them.
EOT
  exit;
}

sub printDebug {
  if ($debug) { print $_[0]; }
}
