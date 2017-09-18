#########################
#
# stsv.pl
#
# this verifies hash values of the anagram and nudge tables.
#

use strict;
use warnings;

my $verbose  = 0;
my $showGood = 0;
my %ary;

$ary{"a"} = 2187818;
$ary{"b"} = 18418905;
$ary{"c"} = 19005585;
$ary{"d"} = 21029089;
$ary{"e"} = 127806109;
$ary{"f"} = 26514896;
$ary{"g"} = 32599702;
$ary{"h"} = 37282299;
$ary{"i"} = 44992846;
$ary{"j"} = 48960525;
$ary{"k"} = 52933178;
$ary{"l"} = 53813839;
$ary{"m"} = 64075153;
$ary{"n"} = 68907508;
$ary{"o"} = 74352577;
$ary{"p"} = 81465959;
$ary{"q"} = 84405617;
$ary{"r"} = 85323803;
$ary{"s"} = 96273966;
$ary{"t"} = 103110018;
$ary{"u"} = 105105807;
$ary{"v"} = 107164820;
$ary{"w"} = 107934773;
$ary{"x"} = 112768081;
$ary{"y"} = 122359252;
$ary{"z"} = 122969618;

# default is to do both. There's little good reason just to do one, but just in case...

my $doShuf = 1;
my $doRoil = 1;
my $reg;

my $count = 0;

while ( $count <= $#ARGV ) {
  my $arg = lc( $ARGV[$count] );
  $doShuf  = 0 if ( $arg eq "roi" );
  $doRoil  = 0 if ( $arg eq "sa" );
  $verbose = 1 if ( $arg eq "v" );
  $verbose = 0 if ( $arg eq "b" );
  $count++;
}

my @roilingArray = (
  "means manse", "stores", "routes", "troves", "presto", "oyster",
  "towers",      "otters", "others"
);

my @shufflingArray =
  ( "Intro", "Stores", "Forest", "Sortie", "Metros", "Resort" );

if ($doShuf) {
  for $reg (@shufflingArray) {
    hashVer( "shuffling", 0, 1, "table of $reg nudges", 5, "nudges" );

    # hashVer("shuffling", 3, 6, "table of $reg anagrams", 0, "");
  }
}
if ($doRoil) {
  for $reg (@roilingArray) {
    hashVer( "roiling", 0, 1, "table of $reg nudges", 5, "nudges" );

    # hashVer("roiling", 3, 6, "table of $reg anagrams", 0, "");
  }
}

sub hashVer {
  my $file =
"c:/program files (x86)/inform 7/inform7/extensions/andrew schultz/$_[0] $_[5].i7x";
  if ( $_[5] eq "" ) { $file = "c:/games/inform/$_[0].inform/source/story.ni"; }
  open( A, "$file" ) || die("Can't open $file.");
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
    if ( $a =~ /^$_[3]/ ) { $everTable = 1; $inTable = 1; <A>; next; }
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
        my $dif = $hashVal - $txtHash;
        my $errMsg =
"$idx[$_[1]] has hash of $idx[$_[2]] but should have $txtHash instead, a difference of $dif at line $. of $file.";
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

sub myHash {
  my @let = split( //, lc( $_[0] ) );
  my $total = 0;

  for (@let) {
    $total += defined( $ary{$_} ) ? $ary{$_} : 0;
  }
  return $total;
}
