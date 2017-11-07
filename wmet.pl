########################################
#
#wmet.pl
#
#Work out METrics of how many possibilities there are for each STS game
#
#one possible bug fix is to scan through for minimums and maxes

use POSIX;

use strict;
use warnings;

#####constants
my $inFile  = "c:\\writing\\dict\\wmet.txt";
my $outFile = "c:\\writing\\dict\\metrics.htm";

#####options
my $printSettler = 0;
my $settlerToo   = 1;
my $debug        = 0;
my $launch       = 1;

#####vars
my @fact;    # factorial array so don't have to keep recalculating
my $lg, my $t1, my $t2;    # t1 = length sum,  t2 = length square sum for RMS
my $poss;
my $k;
my $sett;                  # settler possibilities
my $thislog, my $thisset;
my $header;
my $inHere = 0;

my %notedYet;
my %thisTime;

my $count = 0;

while ( $count <= $#ARGV ) {
  my $arg = $ARGV[$count];

  for ($arg) {
    /^-?e$/ && do { `$inFile`; exit(); };
    /^-?d$/  && do { $debug  = 1; $count++; next; };
    /^-?nd$/ && do { $debug  = 1; $count++; next; };
    /^-?l$/  && do { $launch = 1; $count++; next; };
    /^-?nl$/ && do { $launch = 0; $count++; next; };
    print
"USAGE\n================\n-e = edit data file\n-d=debug text\n-l=launch\n-nl=don't launch\n";
    exit();
  }
}

open( A, $inFile ) || die("Can't open $inFile.");
open( B, ">$outFile" );

print B
"<html>\n<title>Stale Tales Slate Difficulty Metrics</title><body>\n<center><font size=+3>Stale Tales Slate Possibilities Metrics (RMS = root mean square)</font><br><font size=+2>Shuffling Around</font><table border=1>\n";

print B
"<tr><th>test run<th>Anagrams<th>Letters<th>&Sigma;Letters^2<th>Average<th>RMS<th>&Sigma;Log(poss., no device)<th>Average<th>&Sigma;Log(poss. with gadget)<th>Average\n";

$fact[0] = 1;
for ( 1 .. 20 ) { $fact[$_] = $_ * $fact[ $_ - 1 ]; }

while ( $a = <A> ) {
  chomp($a);    #$a = lc($a);
  if ($debug)       { print "$a\n"; }
  if ( $a =~ /^;/ ) { last; }
  if ( $a =~ /^#/ ) { next; }
  if ( $a =~ /^====/ ) {
    %notedYet = ();
    print "Resetting the hash\n" if $debug;
  }
  if ( $a !~ /^[a-z]+/ )    #ignore if there is just one item on a line
  {
    %thisTime = ();
    evaluate();
    $header = $a;
    if ( $a =~ /^==/ ) {
      print B
        "</table>\n<font size=+2>A Roiling Original</font><table border=1>\n";
      print B
"<tr><th>test run<th>Anagrams<th>Letters<th>&Sigma;Letters^2<th>Average<th>RMS<th>&Sigma;Log(poss., no device)<th>Average<th>&Sigma;Log(poss. with settler)<th>Average\n";
    }
  }
  else {
    my @b = split( /[\/,]/, $a );
    for (@b) {
      $lg = length($_);
      $t1 += $lg;
      $t2 += $lg**2;    #print "To $t1 $t2\n";
      ( $poss, $sett ) = combos($_);
      $thislog += log($poss);
      $thisset += log($sett);
      $inHere++;
    }
  }
}

evaluate();

print B
"</table></center>\n(NOTE 1: more logical possibilities does not mean something is tougher, especially since there may be alternate clues elsewhere, so this is only meant as an estimate. Some areas' themes are more restrictive than others'.)\n<br>(NOTE 2: Store T's theme helps cut possibilities, and H's theme should be a big hint)\n<br>(NOTE 3: Some maximum averages may be higher than minimum averages due to side quests or LLPs that are easier than the main puzzles.)</body>\n</html>\n";

close(B);

if ($launch) { `$outFile`; }

############################################
#subroutines
#

sub evaluate {
  if ( !$inHere ) { return; }
  my $t1a = $t1 / $inHere;
  my $t2a = $t2 / $inHere;
  my $t2b = $t2a**.5;

  if ( $t1 > 0 ) {
    my $tla = $thislog / $inHere;
    my $tlb = $thisset / $inHere;
    my $toB = sprintf(
"<tr><td>%s<td %s>%2d<td %s>%3d<td %s>%4d<td %s>%4.2f<td %s>%4.2f<td %s>%6.2f<td %s>%4.2f<td %s>%6.2f<td %s>%4.2f\n",
      $header,
      torgb( $inHere, 3, 42.01, "total puzzles in region" ),
      $inHere,
      torgb( $t1, 18, 321.1, "total letters in puzzles" ),
      $t1,
      torgb( $t2, 97, 2715, "puzzle letter square sum" ),
      $t2,
      torgb( $t1a, 4, 8, "average letters in puzzle" ),
      $t1a,
      torgb( $t2b, 4, 8.14, "root mean square of letters in puzzle" ),
      $t2b,
      torgb( $thislog, 16.65, 392, "sum of logs of possibilities, no settler" ),
      $thislog,
      torgb( $tla, 4, 9.53, "average of logs of possibilities, no settler" ),
      $tla,
      torgb( $thisset, 8, 225, "sum of logs of possibilities with settlers" ),
      $thisset,
      torgb( $tlb, 2, 5.5, "average of logs of possibilities with settlers" ),
      $tlb
    );
    print B $toB
      ; #note if any of these give a warning above, we can tweak them, but it's probably not critical. It just says how red/yellow an entry should be.
    $t1      = 0;
    $t2      = 0;
    $inHere  = 0;
    $thislog = 0;
    $thisset = 0;
  }
}

sub torgb {
  my $x = 255 - floor( ( $_[0] - $_[1] ) * 255 / ( $_[2] - $_[1] ) );
  my $retStr;
  if ( $x < 0 ) {
    print
"WARNING $_[3] ($header) gives $_[0] not within $_[1]-$_[2] for rgb of $x < 0, rounding to 0\n";
    $x = 0;
  }
  if ( $x > 255 ) {
    print
"WARNING $_[3] ($header) gives $_[0] not within $_[1]-$_[2] for rgb of $x > 255, rounding to 255\n";
    $x = 255;
  }
  if ( $header =~ /^ZZZ/i ) {
    $retStr = sprintf( "td bgcolor=c0%02x40", $x );
  }
  else {
    $retStr = sprintf( "td bgcolor=ff%02x00", $x );
  }
  return $retStr;
}

sub combos {
  my @ary    = split( //, lc( $_[0] ) );
  my $vowels = 0;
  my $cons   = 0;
  my $ys     = 0;
  my %let;

  my $poss = perms( $_[0] );
  my $sett = 0;
  if ( $header =~ /^sa/ ) {
    ( my $tempWord = $_[0] ) =~ s/^.//;
    $tempWord =~ s/.$//;

# Technically, $sett refers to the tagged gadget's better setting, CERTIFY, and not RECTIFY, which is too tricky to calculate anyway
    $sett = perms($tempWord);
    print( "%s/%s=%6d/%6d", $tempWord, $_[0], $poss, $sett )
      if $printSettler && !defined( $notedYet{ $_[0] } );
  }
  else {
    ( my $vowels = $_[0] ) =~ s/[^aeiou]//g;
    ( my $cons   = $_[0] ) =~ s/[aeiouy]//g;
    $sett = perms($vowels) * perms($cons);

    # we don't need to track Y's, because the Y's must be fixed
    printf( "%-13s= %6d/%9d/%.2f\n", $_[0], $sett, $poss, $poss / $sett )
      if ( $printSettler && !defined( $notedYet{ $_[0] } ) );
  }

  print "$_[0] duplicated in $header.\n" if ( defined( $thisTime{ $_[0] } ) );
  $notedYet{ $_[0] } = 1;
  $thisTime{ $_[0] } = 1;

  #print "$_[0] -> $poss $sett\n";
  return ( $poss, $sett );
}

sub perms {
  my $retVal = $fact[ length( $_[0] ) ];
  my @x = split( "", $_[0] );
  my %countage;
  $countage{$_}++ for (@x);

  $retVal /= $fact[ $countage{$_} ] for ( keys %countage );

  return $retVal;
}
