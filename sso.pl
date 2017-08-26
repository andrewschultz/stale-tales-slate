###########################
#sso.pl
#scratch sort, does a trivial sort of the anagram ideas I have written down for both SA and ARO
#
# comments at the start of sso.txt
# anagrams can be in any order
#
# to check: 1 check anagrams 2 check done before 3 check sorting into order
#
# to do: take ^ to clipboard

use lib "c:/writing/scripts";
use strict;
use warnings;
use i7;

use File::Copy qw(copy);
use Math::Prime::Util "gcd";
use Win32::Clipboard;

####################################constants
my $roil = "c:\\games\\inform\\roiling.inform\\source";
my $inc =
  "c:\\Program Files (x86)\\Inform 7\\Inform7\\Extensions\\Andrew Schultz";

my $orig = "$roil\\tosort.txt";
my $mod  = "$roil\\tosort2.txt";
my $raw  = "$roil\\tosort-conv.txt";
my $test = "$roil\\sso-test.txt";
my $stat = "$roil\\sso-stat.txt";
my $dump = "$roil\\sso-dump.txt";

my $readIn = $orig;

########################uncomment below for testing
my $rrf = "Roiling Random Text.i7x";
my $srf = "Shuffling Random Text.i7x";

my $rr = "$inc\\$rrf";
my $sr = "$inc\\$srf";

my $rtemp = "$roil\\$rrf";
my $stemp = "$roil\\$srf";

##########################txtfile is the list of regexes after the 2nd quote
my $txtfile = __FILE__;
$txtfile =~ s/pl$/txt/;    # in other words c:\writing\dict\sso.txt
my $code = __FILE__;

# todo: 4 hashes have any keys in common?

###################################globals
my %failClue;
my %secondDefault;
my %tableTo;
my %tableAdd;
my $warnings = 0;

#added before

my %regex;
my %hash;
my %details;
my %runoff;
my @roughname = ();
my @tabname   = ();
my $line, my $line2;
my $count = 0;

my %caps;
my %punc;
my %quotes;
my %dupes;

##################################options
my $showCrib        = 0;
my $dieOnWarnings   = 0;
my $fullDebug       = 0;
my $writeAdded      = 0;
my $maxWarnShow     = 25;
my $showAdd         = 0;
my $postProcess     = 0;
my $openUndone      = 0;
my $launchTitleCase = 0;

#added before

my $unsorted  = 0;
my $blanksYet = 0;
my $idx       = 0;
my $y;
my $copyBack       = 0;    # this default can change
my $compare        = 0;
my $numbers        = 0;
my $statsOpen      = 0;
my $wob            = 0;
my $moveToHeader   = 1;
my $copyHeaderBack = 0;
my $compareRoil    = 0;
my $compareShuf    = 0;
my $useTestFile    = 1;    # mostly covered by copyBack but we can check

while ( $count <= $#ARGV ) {
  my $arg = lc( $ARGV[$count] );
  my $arg2 = defined( $ARGV[ $count + 1 ] ) ? $ARGV[ $count + 1 ] : "";

  for ($arg) {
    /^[0-9]/ && do { doAnagrams( $ARGV[0] ); };
    /\?/ && do { usage(); exit(); };
    /^-?cl[nx]*$/ && do {
      clipboardRearrange();
      exit() if ( $arg !~ /x/i );
      $launchTitleCase = ( $arg !~ /n/ );
      $count++;
      next;
    };
    /^-?uq$/        && do { dumpUnquoted(); exit(); };
    /^-?e$/         && do { `$orig`;        exit(); };
    /^-?(c|ce|ec)$/ && do { np($code);      exit(); };
    /^-?o$/         && do { outputLast();   exit(); };
    /^-?e?r$/       && do { `$txtfile`;     exit(); };   # forcing options first
    /^-?d$/ && do { $copyBack = 0; $count++; next; };
    /^-?o[0-9]+$/ && do { $arg =~ s/^-?o//; openThis( $arg, 0 );    exit(); };
    /^-?a[0-9]+$/ && do { $arg =~ s/^-?a//; openThis( 0,    $arg ); exit(); };
    /^-?ol$/      && do { openThis(-1);     exit(); };
    /^-?f$/  && do { $copyBack    = 1; $count++; next; };
    /^-?p$/  && do { $postProcess = 1; $count++; next; };
    /^-?n$/  && do { $numbers     = 1; $count++; next; };
    /^-?sa$/ && do { $showAdd     = 1; $count++; next; };
    /^-?dw(l)$/
      && do { $dieOnWarnings = 1 + ( $arg =~ /l/ ); $count++; next; };
    /^-?mw$/ && do { $maxWarnShow = $arg2; $count++; next; };
    /^-?s$/  && do { $statsOpen   = 1;     $count++; next; };
    /^-?te$/ && do {
      $useTestFile = 1;
      $readIn      = $test;
      $copyBack    = 0;
      $count++;
      next;
    };
    /^-?m$/  && do { $moveToHeader = 1; $count++; next; };
    /^-?fd$/ && do { $fullDebug    = 1; $count++; next; };
    /^-?wa(l)$/
      && do { $writeAdded = 1 + ( $arg =~ /l/ ); $count++; next; };
    /^-?cr$/ && do { $compareRoil = 1; $count++; next; };    #testing
    /^-?cs$/ && do { $compareShuf = 1; $count++; next; };    #testing
    /^-?cb$/
      && do { $compareShuf = $compareRoil = 1; $count++; next; };    #testing
    /^-?t$/ && do { $inc = $roil; $count++; next; };                 #testing
    /^-?c$/
      && do
    { #I'd put the options in alphabetical order, but I want comparing to overrule copy back
      $compare = 1;
      if ($copyBack) {
        print "Turning off copyBack.\n";
        $copyBack = 0;
      }
      $count++;
      next;
    };
    print "Invalid parameter: $ARGV[0]\n===============\n";
    usage();
  }
}

if ( ( $readIn eq $test ) && ( $copyBack == 1 ) ) {
  die("Can't/won't copy back when the file to process is the test file $test");
}

dupget("$rr");
dupget("$sr");

print "Read mapping file...\n";
####################################open the mapping file
open( A, $txtfile ) || die();

my %lump;

while ( $line = <A> ) {
  if ( $line =~ /^;/ ) { last; }
  if ( $line =~ /^#/ ) { next; }
  if ( ( $line =~ /^!/ ) ) {
    print $line if ($showCrib);
    next;
  }
  chomp($line);
  if ( $line eq "" ) {
    print "Blank line $.\n";
    next;
  }
  if ( $line =~ /~/ )    # e.g. table=FALSE
  {
    my @hashy = split( /~/, $line );
    die("$hashy[0] defined at line $lump{$hashy[0]}, redefined at line $.")
      if ( $lump{ $hashy[0] } );
    $lump{ $hashy[0] }          = $.;
    $secondDefault{ $hashy[0] } = $hashy[1];
    next;
  }
  if ( $line =~ /\*/ )    # e.g. something doesn't work
  {
    my @hashy = split( /\*/, $line );
    die("$hashy[0] defined at line $lump{$hashy[0]}, redefined at line $.")
      if ( $lump{ $hashy[0] } );
    $lump{ $hashy[0] }     = $.;
    $failClue{ $hashy[0] } = $hashy[1];
    next;
  }
  my @hashy = split( /\t/, $line );
  $hashy[0] = lc( $hashy[0] );
  if ( $#hashy < 1 ) { print "Line $. in $txtfile needs a tab.\n"; }
  for ( 1 .. $#hashy ) {
    die("$hashy[$_] defined at line $lump{$hashy[$_]}, redefined at line $.")
      if ( $lump{ $hashy[$_] } );
    $lump{ $hashy[$_] } = $.;

    $tableTo{ $hashy[$_] } = $hashy[0];
    if ( $hashy[$_] =~ /^xx/i ) {
      $hashy[$_] =~ s/^xx//i;
      $tableTo{ $hashy[$_] } = $hashy[0];
      die("$hashy[$_] defined at line $lump{$hashy[$_]}, redefined at line $.")
        if ( $lump{ $hashy[$_] } );
      $lump{ $hashy[$_] } = $.;
    }
  }

}

close(A);

open( A, $readIn ) || die();

my $unusedString = "";

my $outputChunk;
my $anagramChunk;
my $tableAbbr;

my $quo;
my %warn;
my $warnLine      = 0;
my $majorWarnLine = 0;
my $addSecondCol  = 0;
my $anagramLine   = 0;

OUTER:
while ( $line = <A> ) {
  if ( $line !~ /^\"/ ) { $unusedString .= $line; next; }
  $quo = () = $line =~ /"/g;
  if ( $quo != 2 ) {
    print "WARNING bad quotes in line $., $line";
    $warnings++;
    print "Reached maximum, only showing major errors\n"
      if $warnings == $maxWarnShow;
    $majorWarnLine = $. if ( !$majorWarnLine );
    $unusedString .= $line;
    next;
  }
  $outputChunk = $line;
  chomp($outputChunk);
  $tableAbbr = $outputChunk;
  $tableAbbr =~ s/^\".*\"([^ \t]*).*/$1/;
  $outputChunk =~ s/(^\".*\")([^ \t]*)(.*)/$1$3/;
  if ( $line =~ /\\/ ) {
    my $i = 0;
    my @chunks = split( /\\/, $line );
    if ( $#chunks % 2 ) {
      $majorWarnLine = $. if ( !$majorWarnLine );
      $unusedString .= $line;
      chomp($line);
      print "$line wrong # of backslashes";
      next;
    }
    my @c2 = grep { $i++ % 2 } @chunks;
    $outputChunk = join( " ", @c2 );
  }
  else {
    $anagramChunk = $outputChunk;
    $anagramChunk =~ s/\"[^\"]*$/\"/;
  }
  if ( checkAnagram( $anagramChunk, 0 ) == -1 ) {
    $anagramLine = $.;
    $unusedString .= $line;
    next;
  }
  if ( !$tableAbbr ) { $unusedString .= $line; next; }
  if ( defined( $failClue{$tableAbbr} ) ) {
    print
"WARNING $tableAbbr doesn't work, but it has clue $failClue{$tableAbbr}, line $.\n"
      if $warnings <= $maxWarnShow;
    print "Reached maximum, only showing major errors\n"
      if $warnings == $maxWarnShow;
    $warn{$tableAbbr}++;
    $warnings++;
    $warnLine = $. if ( !$warnLine );
    $unusedString .= $line;
    next;
  }
  if ( !defined( $tableTo{$tableAbbr} ) ) {
    print
      "WARNING $tableAbbr after $outputChunk doesn't map anywhere, line $.\n"
      if $warnings <= $maxWarnShow;
    print "Reached maximum, only showing major errors\n"
      if $warnings == $maxWarnShow;
    $warn{$tableAbbr}++;
    $warnings++;
    $warnLine = $. if ( !$warnLine );
    $unusedString .= $line;
    next;
  }
  if ( ( $outputChunk !~ /\t/ )
    && defined( $secondDefault{ $tableTo{$tableAbbr} } ) )
  {
    print
"Adding default at line $.: $secondDefault{$tableTo{$tableAbbr}} to $outputChunk which needs 2nd entry--no need to change in source\n"
      if $showAdd;
    $outputChunk .= "\t$secondDefault{$tableTo{$tableAbbr}}";
    $addSecondCol++;
  }
  $tableAdd{ $tableTo{$tableAbbr} } .= "$outputChunk\n";

  #print "$idx vs $#x\n";
}

$warnLine = $majorWarnLine if ($majorWarnLine);

my $x;

print "$warnings total warnings.\n" if $warnings;

print "$addSecondCol default second columns added.\n"
  if $addSecondCol && !$showAdd;

if ( $dieOnWarnings && $warnings ) {
  for $x ( sort { $warn{$a} <=> $warn{$b} } keys %warn ) {
    print "$x: $warn{$x}\n";
  }
  if ( $dieOnWarnings == 2 ) {
    my $cmd = "$npo $orig -n$warnLine";
    system($cmd);
    exit();
  }
  die("Clear all warnings before exporting to i7x files.");
}

if ( $dieOnWarnings && $anagramLine ) {
  if ( $dieOnWarnings == 2 ) {
    my $cmd = "$npo $orig -n$anagramLine";
    system($cmd);
    exit();
  }
  die(
"Clear all anagrams before exporting to i7x files. If they encompass part of the line, use backslashes."
  );
}

my $addText = "";

for ( sort keys %tableAdd ) {
  $addText .= "$_\n$tableAdd{$_}\n";
}

print $addText if ($fullDebug);

if ($writeAdded) {
  open( B, ">$raw" );
  print B $addText;
  close(B);
  `$raw` if ( $writeAdded == 2 );
}

print "$warnings warnings.\n" if $warnings;

close(A);

moveOver( $rr, $rtemp );
moveOver( $sr, $stemp );

if ( scalar keys %tableAdd > 1 ) {
  die( "Oops, not everything to files: " . join( ", ", sort keys %tableAdd ) );
}

open( B, ">$mod" );

print B $unusedString;
close(B);

if ($numbers) {
  open( A, "$orig" );
  close(A);
  my $warnings     = 0;
  my $quotedLeft   = 0;
  my $unquotedLeft = 0;
  while ( $a = <A> ) {
    if ( $a =~ /^;/ ) { last; }
    if ( $a =~ /^\".*\"[a-z0-9]/i ) {
      $warnings++;
    }
    elsif ( $a =~ /^\".*\"[a-z0-9]/i ) {
      $quotedLeft++;
    }
    elsif ( $a !~ /^[;#]/ ) {
      $unquotedLeft++;
    }
  }
  close(A);

  my (
    $second,     $minute,    $hour,
    $dayOfMonth, $month,     $yearOffset,
    $dayOfWeek,  $dayOfYear, $daylightSavings
  ) = localtime(time);
  my $out = sprintf(
    "QUO %d, UNQUO %d, WARN %d,%d-%02d-%02d %02d:%02d:%02d\n",
    $quotedLeft,        $unquotedLeft, $warnings,
    $yearOffset + 1900, $month + 1,    $dayOfMonth + 1,
    $hour,              $minute,       $second
  );
  open( B, ">>$stat.txt" );
  printf B $out;
  close(B);
}

if ($postProcess) {
  system("tsh.pl -b");
  system("weed.pl -2 -ib 24");
}

if ($statsOpen) { `$stat`; }

if ( !$copyBack ) { print "Did not copy tosort2.txt back to tosort.txt.\n"; }
else {
  my $aroi = meaningful($orig);
  my $a2   = meaningful($mod);
  if ( ( $aroi == $a2 ) || ($moveToHeader) ) {
    print "Copying back over.\n";
    copy $mod, $orig;
  }
  else { print "Mismatch of meaningful lines: $aroi to $a2.\n"; }
}

if ($compare) { `wm $orig $mod`; }

####################################################################
#
# functions below
#

sub alfPrint {
  my ($q) = @_;
  if ( !$_[0] ) { return; }
  my @ary = @$q;
  @ary = sort {
         wordsIn($a) <=> wordsIn($b)
      || length($a) <=> length($b)
      || lc($a) cmp lc($b)
  } (@ary);
  print B join( "\n", @ary );
}

sub wordsIn {
  my @x = split( / /, $_[0] );
  return $#x;
}

sub meaningful {
  open( C, "$_[0]" );
  my $mea = 0;
  while ( $line = <C> ) {
    if ( $line =~ /[a-z]/i ) { $mea++; }
  }
  close(C);
  $mea++;
}

sub checkAnagram {
  my %freq;
  if ( ( $_[1] == 0 ) && ( $_[0] !~ /^\"/ ) ) { return 0; }
  my $ags = lc( $_[0] );
  $ags =~ s/^\"//;
  $ags =~ s/\".*//;
  $ags =~ s/\[d-word(-u)?\]/damn/i;
  $ags =~ s/\[a-word(-u)?\]/ass/i;
  $ags =~ s/\[r\].? by//;
  $ags =~ s/\[toti\]/tio/g;
  #############################get rid of between paren, non ascii below
  $ags =~ s/\[[^\]]*\]//g;
  $ags =~ s/[^a-z ]//g;
  my $firstBad = "";
  my @ang = split( //, $ags );
  for (@ang) {
    $freq{$_}++ if ( $_ ne " " );
  }
  my $gcd = 0;
  for my $k ( sort keys %freq ) {
    if ( $gcd > 0 ) {
      $gcd = gcd( $gcd, $freq{$k} );
      if ( ( $gcd == 1 ) && $firstBad eq "" ) { $firstBad = $k; }
    }
    else { $gcd = $freq{$k}; }
  }
  if ( $gcd == 1 ) {
    my $tempAna = $ags;

    if ( $tempAna =~ /^(a|the|an) /i ) {
      $tempAna =~ s/^(a|an|the) //i;

      # print "Sub-anagram $tempAna\n";
      return 0 if checkAnagram( $tempAna, 1 ) == 0;
    }

    # todo: multiple backslashes
    if ( $_[0] =~ /\[(p|x|px)\]/ ) { return 0; }
    if ( $_[1] == -1 )             { return -1; }
    $wob++;
    print "Wobbly anagram $wob/$ags line $., probably $firstBad: $_[0]: ";
    for my $k ( sort keys %freq ) { print "$k$freq{$k}"; }
    print ".\n";
    return -1;
  }
  return 0;
}

sub dupget {
  open( A, "$_[0]" ) || die("No file $_[0]");
  my $line;

  my $inTable = 0;

  while ( $line = <A> ) {
    if ( $line =~ /^table.*xx/ ) {

      #print "Table start at $.\n";
      <A>;
      $inTable = 1;
      next;
    }
    if ( $line !~ /[a-z]/i ) {

      #if ($inTable) { print "Table end at $.\n"; }
      $inTable = 0;
    }
    if ($inTable) {
      $line = wordsonly($line);
      chomp($line);
      $dupes{$line} = "$.-$_[0]";

      #if ($line =~ /froth/) { print "$line at line $. in $_[0].\n"; }
    }
  }
  close(A);
}

sub wordsonly {
  my $temp = lc( $_[0] );
  $temp =~ s/^\"//;
  $temp =~ s/\".*//;
  $temp =~ s/['\.\!\-\?]//g;
  return $temp;
}

sub moveOver {
  open( A, "$_[0]" );
  open( B, ">$_[1]" );

  my $line;
  my $tabname;
  my $volYet = 0;

  while ( $line = <A> ) {
    print B $line;
    $volYet = 1 if $line =~ /\[vrt\]/i;
    if ( !$volYet ) { next; }
    if ( $line =~ /^table of .*\[xx/i ) {
      $tabname = lc($line);
      chomp($tabname);
      $tabname =~ s/[ \t]*\[.*//;
      if ( defined( $tableAdd{$tabname} ) ) {
        my $l = <A>;
        print B $l;
        print B $tableAdd{$tabname};
        delete $tableAdd{$tabname};

        # next;
      }
    }
  }

  close(A);
  close(B);

}

sub doAnagrams {
  my $str;
  my $str2;
  my $endYet = 0;
  my $count  = 0;

  open( A, $orig );
  while ( $a = <A> ) {
    if ( ( !$endYet ) && ( $a =~ /^[a-z]/i ) ) { $endYet = 1; }
    if ( !$endYet ) { next; }
    $str = lc($a);
    chomp($str);
    $str2 = $str;
    $str2 =~ s/ //g;
    print "gr $str\nanan.pl $str2\nmyan.pl $str2";
    $count++;
    if ( $count >= $_[0] ) { last; }
  }
  die();
}

sub openThis {
  my $lineToOpen = 0;
  my $foundSoFar = 0;
  my $totalDone  = 0;
  $_[0] = 1 if ( $_[0] == 0 && $_[1] == 0 );
  open( A, $orig ) || die("Uh oh... $orig didn't open. That's bad.");
  while ( $a = <A> ) {
    if ( $a =~ /^\".*\"($| |\t)/ ) {
      $foundSoFar++;
      next if $_[0] < $foundSoFar && !$_[1];
      next if $_[1] && ( $lineToOpen || $_[1] > $. );
      print "Passing $...."
        . ( ( $. - $lineToOpen == 1 ) ? "*****" : $. - $lineToOpen ) . "\n"
        if $_[0] > $foundSoFar && !$_[1];
      $lineToOpen = $.;
    }
    elsif ( $a =~ /^\"/ ) {
      $totalDone++;
    }
  }
  close(A);

  print
"Oh hey you overestimated the task left: $foundSoFar vs $_[0]. That's probably good.\n"
    if $foundSoFar < $_[0];

  print "$foundSoFar total undone, $totalDone total done.\n";

  die("Yay, all done!") if !$lineToOpen;
  print "Opening line $lineToOpen.\n";
  np( $orig, $lineToOpen );
}

sub clipboardRearrange {
  my $newClip = Win32::Clipboard::new();
  my $clipStr = "";
  my $mainStr = "";
  open( A, "$orig" );
  my $line;
  my $lastLine;
  while ( $line = <A> ) {
    if ( $line =~ /\"\^/ ) { $line =~ s/\^//; $clipStr .= $line; }
    else {
      $mainStr .= $line;
    }
    $lastLine = $line;
  }
  close(A);
  if ( !$clipStr ) { print("No ^ found."); return; }
  my $addCr = ( $lastLine !~ /\n/ );
  open( B, ">$orig.bak" );
  print B $mainStr;
  print B "\n" if $addCr;
  print B $clipStr;
  close(B);

# die("Oops, $orig.bak not same size as $orig.") if (-s "$orig.bak" != -s "$orig");
  copy( "$orig.bak", "$orig" );
  print "Left $orig.bak in case something horrible happened to $orig.";
  $newClip->Set($clipStr);
  print "To clipboard:\n$clipStr\n";
  system("start https://titlecase.com") if $launchTitleCase;
}

sub dumpUnquoted {
  open( A,  $orig );
  open( A2, ">$orig.bak" );
  open( B,  ">$dump" );
  my $maxTries = 5;
  my $tries    = 0;
  my $length;

  my @temp;
  my $procString;

  while ( $a = <A> ) {
    if ( ( $a =~ /^[a-z]/i ) && ( $tries < $maxTries ) ) {
      print B "====================$a";
      chomp($a);
      my @temp = split( / /, $a );
      if ( $#temp > 1 ) {
        $length = 0;
        for (@temp) {
          if ( length($_) > $length ) {
            $length     = length($_);
            $procString = $_;
          }
        }
      }
      else {
        $procString;
      }
      $tries++;
    }
    else {
      print A2 $a;
    }
  }
  close(A);
  close(B);
}

sub usage {
  print <<EOT;
SSO roughly sorts out anagrams into categories: biopics, regular books, movies, shouty ads, and ALL CAPS entries.
You can also specify the store area at the end of the quotes. X means the name list to start SA.

Sorted always remain on top, non-sorted on bottom, so ctrl-home/end work. Sorting within is by word then letter length.

-c is compare post-run
-d is demo mode. The file doesn't change.
-e edits tosort.txt, -ec edits source code, -er/r edits suffix-to-table file
-f is force copy.
-o1/ol opens 1st or last quoted undone
-n adds a line of numbers to the stats file.
-s opens the stats after.
-dw dies on warnings e.g. an invalid has at the end of quoted text
-^ converts title case
-mw is maximum warnings
-sa is show default column add details
-p post processes
-uq dump unquoted
SPECIFIC USAGE:
dns is good for doing the stats etc
c is good for testing
EOT
  exit;
}
