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

use File::Compare;
use File::Copy qw(copy);
use Math::Prime::Util "gcd";
use Win32;
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
my $rrshort = "Roiling Random Text.i7x";
my $srshort = "Shuffling Random Text.i7x";

my $rr = "$inc\\$rrshort";
my $sr = "$inc\\$srshort";

my $rtemp = "$roil\\$rrshort";
my $stemp = "$roil\\$srshort";

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
my %tableAdd2;
my $warnings              = 0;
my $warningsBeforeBailing = 0;

my %lump;

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

my $unquotedToDump = 5;

##################################options
my $showCrib        = 0;
my $dieOnWarnings   = 0;
my $fullDebug       = 0;
my $popupOnEmpty    = 0;
my $writeAdded      = 0;
my $rawOnly         = 0;
my $postPuncProc    = 0;
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
    /^\+/ && do { addString($arg); exit(); };
    /^[0-9]/ && do { doAnagrams($arg); };
    /\?/ && do { usage(); exit(); };
    /^-?cl[nx]*$/ && do {
      clipboardRearrange();
      exit() if ( $arg !~ /x/i );
      $launchTitleCase = ( $arg !~ /n/ );
      $count++;
      next;
    };
    /^-?u([dq])?l?[0-9]*$/ && do {
      next if $arg2 eq "";
      my $uq = $arg2;
      $uq =~ s/.*u([a-z])?//;
      $unquotedToDump = $uq if $uq =~ /^[0-9]+$/;
      dumpUnquoted( $unquotedToDump, $arg =~ /l/ );
      exit();
    };
    /^-?=$/ && do { openThis( -2, 0, 1 ); exit(); };
    /^-?e$/         && do { `$orig`;    exit(); };
    /^-?(c|ce|ec)$/ && do { np($code);  exit(); };
    /^-?(e?)r$/     && do { `$txtfile`; exit(); };    # forcing options first
    /^-?d$/ && do { $copyBack = 0; $count++; next; };
    /^-?o(f)?[0-9]+$/ && do {
      my $temp = $arg =~ /f/;
      $arg =~ s/^-?o(f)?//;
      openThis( $arg, 0, $temp );
      exit();
    };
    /^-?a[0-9]+$/ && do {
      my $temp = $arg =~ /f/;
      $arg =~ s/^-?a(f)?//;
      openThis( 0, $arg, $temp );
      exit();
    };
    /^-?ol$/ && do { openThis(-1); exit(); };
    /^-?q$/ && do { readMapFile(); quickCheck($arg2); exit(); };
    /^-?f$/ && do { $copyBack    = 1; $count++; next; };
    /^-?p$/ && do { $postProcess = 1; $count++; next; };
    /^-?n$/ && do { $numbers     = 1; $count++; next; };
    /^-?nf$/ && do { $readIn = $arg2; $count += 2; next; };
    /^-?sa$/ && do { $showAdd = 1; $count++; next; };
    /^-?dw(l)$/ && do {
      $dieOnWarnings = 1 + ( $arg =~ /l/ );
      $count++;
      next;
    };
    /^-?mw$/ && do { $maxWarnShow = $arg2; $count += 2; next; };
    /^-?s$/ && do { $statsOpen = 1; $count++; next; };
    /^-?te$/ && do {
      $useTestFile = 1;
      $readIn      = $test;
      $copyBack    = 0;
      $count++;
      next;
    };
    /^-?m$/  && do { $moveToHeader = 1; $count++; next; };
    /^-?fd$/ && do { $fullDebug    = 1; $count++; next; };
    /^-?pu$/ && do { $popupOnEmpty = 1; $count++; next; };
    /^-?wa[lop]*$/
      && do {
      $writeAdded   = 1 + ( $arg =~ /l/ );
      $rawOnly      = ( $arg =~ /o/ );
      $postPuncProc = ( $arg =~ /p/ );
      $count++;
      next;
      };
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
    print "Invalid parameter: $arg\n===============\n";
    usage();
  }
}

if ( ( $readIn eq $test ) && ( $copyBack == 1 ) ) {
  die("Can't/won't copy back when the file to process is the test file $test");
}

dupget("$rr");
dupget("$sr");

print "Read mapping file...\n";

readMapFile();

open( A, $readIn )
  || open( A, "$roil/$readIn" )
  || die("Couldn't find $readIn in current or Roiling directory.");

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
my $x;

OUTER:
while ( $line = <A> ) {
  next if ( $maxWarnShow > 0 ) && ( $wob >= $maxWarnShow );
  if ( $line !~ /^\"/ ) { $unusedString .= $line; next; }
  $quo = () = $line =~ /"/g;
  if ( ( $quo == 0 ) && ( $line =~ /[\[\]]/ ) ) {
    print "WARNING bracketed text without proper # of quotes in line $., $line";
    $warnings++;
    print "Reached maximum, only showing major errors\n"
      if $warnings == $maxWarnShow;
    $majorWarnLine = $. if ( !$majorWarnLine );
    $unusedString .= $line;
    next;
  }
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
  my $useSlashComments = 0;
  if ( $line =~ /[\\`]/ ) {
    my $i = 0;
    my @chunks = split( /[\\`]/, $line );
    if ( $#chunks % 2 ) {
      $majorWarnLine = $. if ( !$majorWarnLine );
      $unusedString .= $line;
      chomp($line);
      print "$line wrong # of backslashes\n";
      next;
    }
    my @c2 = grep { $i++ % 2 } @chunks;
    $outputChunk =~ s/[\\`]//g;
    $anagramChunk = join( " ", @c2 );
    $useSlashComments = 1;
    $outputChunk =~ s/$/ \[x: $anagramChunk\]/;

    # print "> Chunk $. = $anagramChunk\n";
  }
  elsif ( $line =~ />/ ) {
    $anagramChunk = $outputChunk;
    $anagramChunk =~ s/.*>//;
    $anagramChunk =~ s/\".*//;

    # print "> Chunk $. = $anagramChunk\n";
    $outputChunk = $anagramChunk;
  }
  elsif ( $line =~ /</ ) {
    $anagramChunk = $outputChunk;
    $anagramChunk =~ s/^\"//;
    $anagramChunk =~ s/<.*//;

    # print "< Chunk $. = $anagramChunk\n";
    $outputChunk = $anagramChunk;
  }
  else {
    $anagramChunk = $outputChunk;
    $anagramChunk =~ s/\"[^\"]*$/\"/;
    $outputChunk = $anagramChunk;
  }
  $anagramChunk =~ s/(\[r\]|')(,)? by//;
  if ( checkAnagram( $anagramChunk, $useSlashComments ) == -1 ) {
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
"WARNING $tableAbbr after $outputChunk doesn't map anywhere (check $txtfile), line $. best guess = "
      . bestGuess($tableAbbr) . "\n"
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
  $tableAdd{ $tableTo{$tableAbbr} }  .= "$outputChunk\n";
  $tableAdd2{ $tableTo{$tableAbbr} } .= "$outputChunk ($.)\n";

  #print "$idx vs $#x\n";
}

$warnLine = $majorWarnLine if ($majorWarnLine);

print "$wob wobbly anagrams.\n"     if $wob;
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
  $addText .= "$_\n$tableAdd2{$_}\n";
}

print $addText if ($fullDebug);

if ($writeAdded) {
  open( B, ">$raw" );
  print B $addText;
  close(B);
  `$raw` if ( $writeAdded == 2 );
}

print `punc.pl alt sts` if $postPuncProc;

if ($rawOnly) {
  die("Remove -o flag from -wa(l) to disable only-raw feature.");
}

print "$warnings warnings.\n" if $warnings;

close(A);

moveOver( $rr, $rtemp );
moveOver( $sr, $stemp );

if ( scalar keys %tableAdd > 1 ) {
  die( "Oops, not everything added to files: "
      . join( ", ", sort keys %tableAdd ) );
}

if ($copyBack) {
  copy( $rtemp, $rr ) if ( compare( $rr, $rtemp ) );
  copy( $stemp, $sr ) if ( compare( $sr, $stemp ) );
  print "Copying back and running tsh.\n";
  print `tsh.pl b`;
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

if ( !$copyBack ) {
  print "Did not copy tosort2.txt back to tosort.txt. Set -f to do this.\n";
}
else {
  my $aroi = meaningful($orig);
  my $a2   = meaningful($mod);
  if ( ( $aroi == $a2 ) || ($moveToHeader) ) {
    print "Copying back over, $mod to $orig.\n";
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
      return checkAnagram( $tempAna, 1 );
    }

    # todo: multiple backslashes
    if ( $_[0] =~ /\[(p|x|px)\]/ ) { return 0; }
    if ( $_[1] == -1 )             { return -1; }
    $wob++;
    print "Wobbly anagram $wob line $. = $ags, probably $firstBad: $_[0]: ";
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
  binmode(B);

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
  my $count = 0;

  open( A, $orig );
  while ( $a = <A> ) {
    if ( $a =~ /^[a-z]/i ) {
      $str = lc($a);
      chomp($str);
      $str2 = $str;
      $str2 =~ s/ //g;
      print "gr $str\nanan.pl $str2\nmyan.pl $str2\n";
      $count++;
      if ( $count >= $_[0] ) { last; }
    }
  }
  close(A);
  if ( $count < $_[0] ) { print "Only got $count of $_[0].\n"; }
}

sub openThis {
  my $lineToOpen = 0;
  my $foundSoFar = 0;
  my $totalDone  = 0;
  my $numQuotes  = 0;
  my $line;
  my $x;
  my $uncommentYet = 0;

  $_[0] = 1 if ( $_[0] == 0 && $_[1] == 0 );

  open( A, $orig ) || die("Uh oh... $orig didn't open. That's bad.");
  while ( $line = <A> ) {
    $lineToOpen = $. if $lineToOpen == 0 && ( $line !~ /^#/ );
    if ( $_[0] eq -2 ) {
      if ( $line =~ /^[a-z]/i ) {
        $lineToOpen = $.;
        last;
      }
    }
    if ( $line !~ /^#/ ) {
      $x = lc($line);
      $x =~ s/[^a-z]//gi;
      print "Duplicate line $. ($dupes{$x}) in raw file: $x.\n"
        if ( $dupes{$x} );
      $dupes{$x} = $.;
    }
    if ( $line =~ /^\".*\"($| |\t)/ ) {
      $numQuotes = () = $line =~ /"/g;
      print "WARNING line $. has the wrong number of quotes, $numQuotes.\n"
        if $numQuotes != 2;
      $foundSoFar++;
      next if $_[0] < $foundSoFar && !$_[1];
      next if $_[1] && ( $lineToOpen || $_[1] > $. );
      print "Passing $...."
        . ( ( $. - $lineToOpen == 1 ) ? "*****" : $. - $lineToOpen ) . "\n"
        if $_[0] > $foundSoFar && !$_[1];
      $lineToOpen = $.;
    }
    elsif ( $line =~ /^\"/ ) {
      $totalDone++;
    }
  }
  close(A);

  print
"Oh hey you overestimated the task left: $foundSoFar vs $_[0]. That's probably good.\n"
    if $foundSoFar < $_[0];

  print "$foundSoFar total undone, $totalDone total done.\n" if $totalDone;

  die("Yay, all done!") if !$lineToOpen && !$_[2];
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
  open( B,  ">>$dump" );
  my $maxTries = $_[0];
  my $tries    = 0;
  my $length;
  my $bak = "$orig.bak";

  my @temp;
  my $procString;
  my $squash;
  my $spawnPopup = 0;

  while ( $a = <A> ) {
    $tries++ if ( $a =~ /^[a-z]/i );
    if ( ( $a =~ /^[a-z]/i ) && ( $tries <= $maxTries ) && ($maxTries) ) {
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
        $procString = $a;
      }
      $procString = lc($procString);
      $procString =~ s/[,\.!]//g;
      for my $anaWord ( toAry($procString) ) {
        print B "====================$a/$procString/$anaWord\n";
        print "Processing $anaWord"
          . ( ( $anaWord ne $procString ) ? " (changed from $procString)" : "" )
          . ", #$tries at line $....\n";
        print B `anan.pl $squash`;
        print B `myan.pl 3 $squash`;
        print B `gr $procString`;
      }

    }
    else {
      print A2 $a;
    }
  }
  close(A);
  close(B);
  close(A2);
  $spawnPopup = $popupOnEmpty && $maxTries && ( $tries < $maxTries ) && $tries;
  print "popup $popupOnEmpty maxtries $maxTries tries $tries\n";

  if ( compare( $orig, "$bak" ) ) {
    print "Recopying over...";
    copy( "$bak", $orig )
      || die("Something went wrong. Keeping $bak.");
    unlink "$bak";
  }
  `$dump` if $_[1];
  Win32::MsgBox( "Look for other files with stray text, if they're there.",
    0, "SSO.PL raw text file is emptied" )
    if ($spawnPopup);
}

sub quickCheck {
  print "Quick checking matches for $_[0]:\n" . ( "=" x 50 ) . "\n";
  my $gotOne = 0;
  for my $x ( sort keys %tableTo ) {
    if ( $x =~ /$_[0]/ ) {
      $gotOne = 1;
      print "$_[0] =~ $x for $tableTo{$x}\n";
    }
  }
  die("No matches") if !$gotOne;
  exit();
}

sub readMapFile {
####################################open the mapping file
  open( A, $txtfile ) || die();

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
      die(
"$hashy[$_] already defined at line $lump{$hashy[$_]} in $txtfile: $line"
      ) if ( $lump{ $hashy[$_] } );
      $lump{ $hashy[$_] } = $.;

      $tableTo{ $hashy[$_] } = $hashy[0];
      if ( $hashy[$_] =~ /^xx/i ) {
        $hashy[$_] =~ s/^xx//i;
        $tableTo{ $hashy[$_] } = $hashy[0];
        die(
          "$hashy[$_] defined at line $lump{$hashy[$_]}, redefined at line $.")
          if ( $lump{ $hashy[$_] } );
        $lump{ $hashy[$_] } = $.;
      }
    }

  }

  close(A);
}

sub bestGuess {
  my $you       = $_[0];
  my $minLength = 999;
  my $minString = "";

  for $x ( keys %tableTo ) {
    $you = $_[0];
    my $me = $x;
    for $y ( 'a' .. 'z' ) {
      while ( ( $me =~ /$y/i ) && ( $you =~ /$y/i ) ) {
        $me =~ s/$y//i;
        $you =~ s/$y//i;
      }
    }
    if ( length("$me$you") < $minLength ) {

      # print "$y new min string $x/$you\n";
      $minString = "$x";
      $minLength = length("$me$you");
    }
    elsif ( length("$me$you") < $minLength ) {
      $minString .= " $x";
    }
  }
  return "$minString ($minLength)";
}

sub addString {
  my $temp = $_[0];
  my $bkup = "$orig.bak";
  my $line;
  my $last;

  $temp =~ s/^\+//;
  $temp =~ s/-/ /g;

  open( A, "$orig" )  || die("Can't open $orig");
  open( B, ">$bkup" ) || die("Can't write to backup");
  while ( $line = <A> ) {
    $last = $line;
    print B $line;
  }
  print B "\n" if ( $last !~ /\n/ );
  print B "$temp\n";
  close(B);
  close(A);
  copy( $bkup, $orig ) if compare( $bkup, $orig );
}

sub toAry {
  my $temp;
  if ( $_[0] =~ /\+/ ) {
    $temp = $a;
    $temp =~ s/\+//;
    return ( $temp, $temp + "s" );
  }
  return ( $_[0] ) if ( $_[0] !~ /\// );
  my @ary = split( "/", $_[0] );
  my @retAry = ( $_[0] );
  my $suffix;
  for $suffix ( 1 .. $#ary ) {
    push( @retAry, $_[0] + $suffix );
  }
  return @retAry;
}

sub usage {
  print <<EOT;
SSO roughly sorts out anagrams into categories: biopics, regular books, movies, shouty ads, and ALL CAPS entries.
You can also specify the store area at the end of the quotes. X means the name list to start SA.

Sorted always remain on top, non-sorted on bottom, so ctrl-home/end work. Sorting within is by word then letter length.

+ adds string to tosort.txt (- = space)
-c is compare post-run
-d is demo mode. The file doesn't change.
-f is force copy. It is the opposite of demo mode.
-o1/ol opens 1st or last quoted undone
-n adds a line of numbers to the stats file.
-s opens the stats after.
-pu gives a popup if the sorting file has removed all its unevaluated text
-dw dies on warnings e.g. an invalid hash at the end of quoted text, l launches
-^ converts title case
-mw is maximum warnings
-sa is show default column add details
-p post processes
-nf (file name) defines a new file
-q quick checks for a pattern for a character
-u(dq)(l)(#) dump unquoted, l = launch, d/q = any flags
SPECIFIC USAGE:
dns is good for doing the stats etc
c is good for testing
wa is writeadded, l = launch, o = only.
-e edits tosort.txt, -ec edits source code, -er/r edits suffix-to-table file
=============popular use
sso.pl -nf xes.txt -mw 50 for 50 warnings in an auxiliary file
sso.pl pu uql 20 is good for a day's work to check
sso.pl WALPO = good general test before copy over
sso.pl wa f = process sorted/sortable anagrams
EOT
  exit;
}
