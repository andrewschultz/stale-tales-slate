#########################
#
# stsv.pl
#
# this verifies hash values of the anagram and nudge tables.
#

use strict;
use warnings;

# options
my $anagramCheck = 0;
my $verbose      = 0;
my $showGood     = 0;
my $tryDetail    = 0;
my $maxLetters   = 6;
my $showEveryX   = 1000000;

# default is to do both. There's little good reason just to do one, but just in case...
my $doShuf   = 1;
my $doRoil   = 1;
my $byLength = 0;

my $clue_text_col = 4;

# the hash
my %ary = (
  "a" => 2187818,
  "b" => 18418905,
  "c" => 19005585,
  "d" => 21029089,
  "e" => 127806109,
  "f" => 26514896,
  "g" => 32599702,
  "h" => 37282299,
  "i" => 44992846,
  "j" => 48960525,
  "k" => 52933178,
  "l" => 53813839,
  "m" => 64075153,
  "n" => 68907508,
  "o" => 74352577,
  "p" => 81465959,
  "q" => 84405617,
  "r" => 85323803,
  "s" => 96273966,
  "t" => 103110018,
  "u" => 105105807,
  "v" => 107164820,
  "w" => 107934773,
  "x" => 112768081,
  "y" => 122359252,
  "z" => 122969618
);

my %quickHashRef;

my @revHashOrd = sort { $ary{$b} <=> $ary{$a} } keys %ary;
my $foundSomething = 0;

# variables

my $reg;

my $lengthBail     = 0;
my $gotAnyBad      = 0;
my $showEveryCount = 0;
my $count          = 0;

while ( $count <= $#ARGV ) {
  my $arg = lc( $ARGV[$count] );
  $arg =~ s/^-//;
  usage() if ( $arg eq "?" || $arg eq "-?" );
  if ( $arg eq "roi" ) { $doRoil = 0; $doShuf = 1; }
  if ( $arg eq "sa" )  { $doRoil = 1; $doShuf = 0; }
  $verbose      = 1 if ( $arg eq "v" );
  $verbose      = 0 if ( $arg eq "b" );
  $anagramCheck = 1 if ( $arg eq "a" || $arg eq "ay" );
  $anagramCheck = 0 if ( $arg eq "an" );
  $tryDetail    = 1 if ( $arg eq "td" );
  $byLength     = 1 if ( $arg eq "bl" );
  if ( $arg eq "m" ) {
    $maxLetters = $arg;
    $maxLetters =~ s/.*m//;
    die("Max letters must be a number!") if ( $maxLetters !~ /^[0-9]+/ );
  }
  if ( length($arg) > 3 ) {
    $lengthBail = 1;
    print "$arg -> " . myHash($arg) . "\n";
  }
  $count++;
}

exit() if $lengthBail;

seedHashesInSource() if $tryDetail;

my @roilingArray = (
  "Ordeal Reload", "stores", "routes", "troves",
  "presto",        "oyster", "towers", "otters",
  "others"
);

my @shufflingArray =
  ( "Ordeal Loader", "Stores", "Forest", "Sortie", "Metros", "Resort" );

if ($doShuf) {
  $gotAnyBad = 0;
  for $reg (@shufflingArray) {
    hashVer( "shuffling", 0, 1, "table of $reg nudges",
      $clue_text_col, "nudges" );

    hashVer( "shuffling", 3, 6, "table of $reg anagrams", 0, "tables" )
      if $anagramCheck;
  }
  print "No hash value errors for Shuffling Around.\n" if !$gotAnyBad;
}
if ($doRoil) {
  $gotAnyBad = 0;
  for $reg (@roilingArray) {
    hashVer( "roiling", 0, 1, "table of $reg nudges", $clue_text_col,
      "nudges" );

    hashVer( "roiling", 3, 6, "table of $reg anagrams", 0, "tables" )
      if $anagramCheck;
  }
  print "No hash value errors for A Roiling Original.\n" if !$gotAnyBad;
}

sub hashVer {
  my $file =
"c:/program files (x86)/inform 7/inform7/extensions/andrew schultz/$_[0] $_[5].i7x";
  if ( $_[5] eq "" ) { $file = "c:/games/inform/$_[0].inform/source/story.ni"; }
  open( A, "$file" ) || die("Can't open $file.");
  print "Reading $file for $_[3]\n" if $verbose;
  my $inTable   = 0;
  my $goof      = 0;
  my $everTable = 0;
  my @msgs      = ();
  my $theMsg    = "";
  my @idx       = ();
  my $txtHash   = 0;
  my $hashVal   = 0;

  print "Looking at $_[3] in $file:\n" if $verbose;

  while ( $a = <A> ) {
    if ( $a =~ /^$_[3]/i ) { $everTable = 1; $inTable = 1; <A>; next; }
    if ( ($inTable) && ( $a !~ /^[a-z\"]/i ) ) { close(A); last; }
    if ($inTable) {
      chomp($a);
      if ( $a =~ /\t\t/ ) { print "WARNING double-tabbed $a\n"; }
      @idx = split( /\t/, $a );
      $idx[ $_[1] ] =~ s/\" or.*//g;
      $idx[ $_[1] ] =~ s/\/.*//g;
      if ( !$idx[ $_[4] ] ) { print "Line $.: NEEDS ITEM $_[4]: $a\n"; }
      $txtHash = myHash( $idx[ $_[1] ] );
      $hashVal = $idx[ $_[2] ];

      if ( $txtHash != $hashVal ) {
        $gotAnyBad = 1;
        my $dif = $hashVal - $txtHash;
        my $errMsg =
"At line $. of $file: $idx[$_[1]] has hash of $hashVal, should have $txtHash, ";
        my $temp = quickDif($dif);
        if ($temp) {
          $errMsg .= "$temp letter adjustment";
        }
        elsif ( !$tryDetail ) {
          $errMsg .= "try -td for more detail, -bl for by length";
        }
        else {
          $foundSomething = "";
          if ( defined( $quickHashRef{$hashVal} )
            && ( $quickHashRef{$hashVal} =~ /,/ ) )
          {
            print
"$hashVal ($_[0] $.) may be mapped to $quickHashRef{$hashVal}, no detailed searching.\n";
            next;
          }
          print
"No occurrence of $hashVal in source or nudges, starting detailed searching for $hashVal/$idx[$_[1]]...\n";
          my $b4 = time();
          $byLength
            ? detailSearch( "", $hashVal )
            : byLengthNum( "", $hashVal );
          $errMsg .= "detailed search gives "
            . (
            $foundSomething
            ? anagram_try($foundSomething)
            : "nothing I could find"
            );
          $errMsg .= "(took " . ( time() - $b4 ) . " seconds)";
        }
        print "$errMsg\n";
        @msgs = ( @msgs, $errMsg );
        $goof = 1;
      }
      elsif ($showGood) { print "$idx[$_[1]] matches $hashVal.\n"; }
    }
  }
  if ( !$everTable ) {
    print "Didn't find any $_[3] in $file, check table name.\n";
    return;
  }
  print "All checked okay!\n" if $verbose && $goof == 0;
  $theMsg = join( "<br>", @msgs );
  print "TEST RESULTS:$_[0] $_[3] hash values,0,$goof,0,$theMsg\n"
    if $verbose || $goof > 0;
}

sub quickDif {
  my $a1;
  my $a2;
  my $a3;
  my $a4;
  my $dif = abs( $_[0] );
  for ( 'a' .. 'z' ) {
    return $_ if ( $dif == $ary{$_} );
  }

  for $a1 ( 'a' .. 'z' ) {
    for $a2 ( 'a' .. 'z' ) {
      return "$a1-$a2" if $ary{$a2} - $ary{$a1} == $dif;
    }
  }

  for $a1 ( 'a' .. 'z' ) {
    for $a2 ( 'a' .. 'z' ) {
      for $a3 ( 'a' .. 'z' ) {
        return "$a1$a2-$a3" if $ary{$a3} - $ary{$a2} - $ary{$a1} == $dif;
        for $a4 ( 'a' .. 'z' ) {
          return "$a1$a2-$a3$a4"
            if $ary{$a4} + $ary{$a3} - $ary{$a2} - $ary{$a1} == $dif;
        }
      }
    }
  }
  return "";
}

# string, then number
sub detailSearch {
  return if length( $_[0] ) > $maxLetters;
  for (@revHashOrd) {
    $foundSomething = "$_[0]$_" if ( $_[1] eq $ary{$_} );
    return $foundSomething if $foundSomething;

    if ($showEveryX) {
      $showEveryCount = $showEveryCount + 1;
      print("$_[0]$_ $_[1] ($showEveryCount)\n")
        if $showEveryCount % 1000000 == 0;
    }
    detailSearch( "$_[0]$_", $_[1] - $ary{$_} ) if $_[1] - $ary{$_} > 0;
  }
  return "";
}

sub myHash {
  my @let = split( //, lc( $_[0] ) );
  my $total = 0;

  for (@let) {
    $total += defined( $ary{$_} ) ? $ary{$_} : 0;
  }
  return $total;
}

# string, then number
sub byLengthNum {
  return if length( $_[0] ) > $maxLetters;
  for (@revHashOrd) {

    if ($showEveryX) {
      $showEveryCount = $showEveryCount + 1;
      print("$_[0]$_ $_[1] ($showEveryCount)\n")
        if $showEveryCount % 1000000 == 0;
    }
    $foundSomething = "$_[0]$_" if ( $_[1] eq $ary{$_} );
    return $foundSomething if $foundSomething;
  }
  for (@revHashOrd) {
    byLengthNum( "$_[0]$_", $_[1] - $ary{$_} ) if $_[1] > $ary{$_};
  }
  return "";
}

sub seedHashesInSource {
  combHashes("roiling");
  combHashes("shuffling");
}

sub combHashes {
  my $source = "c:/games/inform/$_[0].inform/Source/story.ni";
  my $nudge =
"c:/Program Files (x86)/Inform 7/Inform7/Extensions/Andrew Schultz/$_[0] nudges.i7x";

  my $hashAvailable = 0;
  my @theAry        = ();
  my $line;

  open( A, $source ) || die("No $source");
  while ( $line = <A> ) {
    if ( $line !~ /[a-z]/i ) { $hashAvailable = 0; next; }
    if ( $line =~ /^table of .*anagrams/ ) { $hashAvailable = 1; <A>; next; }
    if ($hashAvailable) {
      chomp($line);
      @theAry = split( /\t/, $line );
      $quickHashRef{ $theAry[3] } =
        defined( $quickHashRef{ $theAry[3] } )
        ? $quickHashRef{ $theAry[3] } . ", $_[0]-source-$.-$theAry[5]"
        : "$_[0]-source-$.-$theAry[5]";
      next;
    }
  }
  close(A);
  open( A, $nudge ) || die("No $nudge");
  while ( $line = <A> ) {
    if ( $line !~ /[a-z]/i ) { $hashAvailable = 0; next; }
    if ( $line =~ /^table of .*nudges/ ) { $hashAvailable = 1; <A>; next; }
    if ($hashAvailable) {
      chomp($line);
      @theAry = split( /\t/, $line );
      $quickHashRef{ $theAry[1] } =
        defined( $quickHashRef{ $theAry[1] } )
        ? $quickHashRef{ $theAry[1] } . ", $_[0]-nudge-$.-$theAry[0]"
        : "$_[0]-nudge-$.-$theAry[0]";
      next;
    }
  }
  close(A);
}

sub anagram_try {
  my $line;
  my $x            = alfo( $_[0] );
  my $match_string = "";
  open( A, "c:/writing/dict/brit-1word.txt" );
  while ( $line = <A> ) {
    chomp($line);
    if ( alfo($line) eq $x ) {
      $match_string .= "~" . lc($line);
    }
  }
  return $match_string
    ? "$_[0]$match_string"
    : "$_[0] (no one-word anagrams found)";
}

sub alfo {
  return join( '', sort( split( '', lc( $_[0] ) ) ) );
}

sub usage {
  print <<EOT;
USAGE
=====================================
-? gives this
roi/sa = only roiling/only shuffling
an/(ay/a) = turn off/on anagram checking (more stable than nudge checking). Default is on.
td = try detailed check for bad hashes
bl = try the td check via length instead of by hash value, highest value letter to lowest
Any word will print out its hash value.
EOT
  exit();
}
