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

use lib "c:/writing/scripts";
use i7;

use File::Compare;
use File::Copy;
use Math::Prime::Util::GMP qw(gcd);
use Algorithm::Combinatorics qw(combinations);
use Array::Utils qw(array_diff);

#####constants
my $inFile       = "c:\\writing\\dict\\wmet.txt";
my $adjustFile   = "c:\\writing\\dict\\wmet-a.txt";
my $outFile      = "c:\\writing\\dict\\metrics-temp.htm";
my $outFinalFile = "c:\\writing\\dict\\metrics.htm";

#####options
my $printSettler  = 0;
my $settlerToo    = 1;
my $debug         = 0;
my $launch        = 0;
my $showMaxMin    = 0;
my $checkRegScore = 0;

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

my %maxes;
my %mins;

my %adjustSourceMax;
my %adjustSourceMin;
my %sourceMax;
my %sourceMin;

my $count = 0;

initFactorial();

while ( $count <= $#ARGV ) {
  my $arg = $ARGV[$count];
  my $arg2 = ( $count <= $#ARGV ? $ARGV[ $count + 1 ] : "" );

  for ($arg) {
    /^-?p$/ && do {
      my @argAry = split( /,/, $arg2 );
      for (@argAry) {
        printf( "%13s %13s %13s\n", $_, perm_set($_), perms($_) );
        if ( $_ =~ /ly$/i ) {
          my $ly = $_;
          $ly =~ s/ly$//;
          printf( "%13s %13s %13s LY ASSUMED\n",
            $ly, perm_set($ly), perms($ly) );
        }
      }
      exit();
    };
    /^-?e$/ && do { `$inFile`; exit(); };
    /^-?ec$/ && do { my $f = __FILE__; npx($f); exit(); };
    /^-?ea$/ && do { `$adjustFile`; exit(); };
    /^-?d$/         && do { $debug         = 1;  $count++; next; };
    /^-?nd$/        && do { $debug         = 0;  $count++; next; };
    /^-?cs$/        && do { $checkRegScore = 1;  $count++; next; };
    /^-?(ncs|csn)$/ && do { $checkRegScore = 0;  $count++; next; };
    /^-?l$/         && do { $launch        = 1;  $count++; next; };
    /^-?nl$/        && do { $launch        = -1; $count++; next; };
    /^-?sm(m)?$/    && do { $showMaxMin    = 1;  $count++; next; };
    /^-?nm(m)?$/    && do { $showMaxMin    = 0;  $count++; next; };
    /^-?tow$/ && do { towers_analyze(); exit(); };
    print "Invalid flag $arg.\n\n";
    usage();
    exit();
  }
}

open( A, $inFile ) || die("Can't open $inFile.");

checkAdjust() if $checkRegScore;
getScores()   if $checkRegScore;

open( B, ">$outFile" );

print B
"<html>\n<title>Stale Tales Slate Difficulty Metrics</title><body>\n<center><font size=+3>Stale Tales Slate Possibilities Metrics (RMS = root mean square)</font><br><font size=+2>Shuffling Around</font><table border=1>\n";

print B
"<tr><th>test run<th>Anagrams<th>Letters<th>&Sigma;Letters^2<th>Average<th>RMS<th>&Sigma;Log(poss., no device)<th>Average<th>&Sigma;Log(poss. with gadget)<th>Average\n";

while ( $a = <A> ) {
  chomp($a);    #$a = lc($a);
  if ($debug)       { print "$a\n"; }
  if ( $a =~ /^;/ ) { last; }
  if ( $a =~ /^#/ ) { next; }
  if ( $a =~ /^====/ ) {
    %notedYet = ();
    print "Resetting the hash\n" if $debug;
  }
  if ( $a !~ /^[a-z]+/ )    #Regions are in CAPS or === means starting Roiling
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
	  $a =~ s/ //;
    my @b = split( /[\/,]/, $a );

    # print "$a = " . (scalar @b) . " total.\n";
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

if ($showMaxMin) {
  print "List of stuff under the heat map:\n";
  print "$_: $mins{$_} to $maxes{$_}\n" for ( sort keys %maxes );
}

my $changesThisTime = 0;

if ( !compare( $outFile, $outFinalFile ) ) {
  print "No changes since last update.\n";
}
else {
  $changesThisTime = 1;
  copy( $outFile, $outFinalFile );
}
if ( ( $launch == 1 ) || ( $launch == 0 && $changesThisTime == 1 ) ) {
  `$outFinalFile`;
}
else {
  print "Not launching. ";
  print "Use -l to force a launch.\n" if $launch == 0;
  print
"Don't use -nl if you want to launch on any changes. Or use -l to force a launch.\n"
    if $launch == -1;
}

unlink $outFile;

############################################
#subroutines
#

sub evaluate {
  if ( !$inHere ) { return; }
  my $t1a = $t1 / $inHere;
  my $t2a = $t2 / $inHere;
  my $t2b = $t2a**.5;
  ( my $h2 = $header ) =~ s/[0-9]//g;

  if ( $t1 > 0 ) {
    my $tla = $thislog / $inHere;
    my $tlb = $thisset / $inHere;

    if ($checkRegScore) {

      my $temp;
      my $max = ( $header =~ /max/i );
      my $min = ( $header =~ /min/i );
      my $delta;

      ( my $headChop = lc($header) ) =~ s/ *\((min|max)\).*//i;

      # print "$header/$h2 -> $headChop\n";

      if ($min) {
        $adjustSourceMin{$headChop} = 0
          if !defined( $adjustSourceMin{$headChop} );
        $temp  = $inHere + $adjustSourceMin{$headChop};
        $delta = $sourceMin{$headChop} - $temp;
        print
"Minimums wrong for $header/$headChop: source = $sourceMin{$headChop} wmet.txt = $inHere+$adjustSourceMin{$headChop}=$temp. Delta=$delta.\n"
          if ($delta);
      }
      elsif ($max) {
        $adjustSourceMax{$headChop} = 0
          if !defined( $adjustSourceMax{$headChop} );
        $temp  = $inHere + $adjustSourceMax{$headChop};
        $delta = $sourceMax{$headChop} - $temp;
        print
"Maximums wrong for $header/$headChop: source = $sourceMax{$headChop} wmet.txt = $inHere+$adjustSourceMax{$headChop}=$temp. Delta=$delta.\n"
          if ($delta);
      }
    }
    print "$h2 $inHere\n";
    my $toB = sprintf(
"<tr><td>%s<td %s>%2d<td %s>%3d<td %s>%4d<td %s>%4.2f<td %s>%4.2f<td %s>%6.2f<td %s>%4.2f<td %s>%6.2f<td %s>%4.2f\n",
      $h2,
      torgb( $inHere, 3, 54.01, "total puzzles in region" ),
      $inHere,
      torgb( $t1, 18, 367, "total letters in puzzles" ),
      $t1,
      torgb( $t2, 97, 2876, "puzzle letter square sum" ),
      $t2,
      torgb( $t1a, 4, 7.84, "average letters in puzzle" ),
      $t1a,
      torgb( $t2b, 4, 8.14, "root mean square of letters in puzzle" ),
      $t2b,
      torgb( $thislog, 16.65, 423.5, "sum of logs of possibilities, no settler" ),
      $thislog,
      torgb( $tla, 4, 9.53, "average of logs of possibilities, no settler" ),
      $tla,
      torgb( $thisset, 8, 237, "sum of logs of possibilities with settlers" ),
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

  # print "$_[0], $_[1], $_[2]: $x\n";
  if ( $x < 0 ) {
    print
"WARNING $_[3] ($header) gives $_[0] not within $_[1]-$_[2] for rgb of $x < 0, rounding greenness coefficient to 0\n";
    $x = 0;
  }
  if ( $x > 255 ) {
    print
"WARNING $_[3] ($header) gives $_[0] not within $_[1]-$_[2] for rgb of $x > 255, rounding greenness coefficient to 255\n";
    $x = 255;
  }
  if ( $header =~ /^ZZZ/i ) {
    $retStr = sprintf( "td bgcolor=c0%02x40", $x );
  }
  else {
    $retStr = sprintf( "td bgcolor=ff%02x00", $x );
  }
  if ( $maxes{ $_[3] } ) {
    $mins{ $_[3] }  = $_[0] if $_[0] < $mins{ $_[3] };
    $maxes{ $_[3] } = $_[0] if $_[0] > $maxes{ $_[3] };
  }
  else {
    $mins{ $_[3] }  = $_[0];
    $maxes{ $_[3] } = $_[0];

    # torgb( $inHere, 3, 47.01, "total puzzles in region" ),
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
    $sett = perm_set( $_[0] );

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

# given an array of letters, this gives all unique combinations

sub perms {
  my $retVal = $fact[ length( $_[0] ) ];
  my @x = split( "", $_[0] );
  my %countage;
  $countage{$_}++ for (@x);

  $retVal /= $fact[ $countage{$_} ] for ( keys %countage );

  return $retVal;
}

sub perm_set {
  ( my $vowels = $_[0] ) =~ s/[^aeiou]//g;
  ( my $cons   = $_[0] ) =~ s/[aeiouy]//g;
  return perms($vowels) * perms($cons);
}

sub towers_analyze {

  # note that we can replace NERDIEST with PUNIER
  # and FLUSTER with ORGANISED to see what it would've been previously

  my @words = sort {
         length($a) <=> length($b)
      || perm_set($a) <=> perm_set($b)
      || $a cmp $b
    } (
    "clumsy",   "rinsed",   "pastier",  "himself", "drained", "fluster",
    "released", "nerdiest", "grailman", "sweatier"
    );

  # for (@words) { print "$_ " . perm_set($_) . "\n"; }
  # exit();

  my $my_length = 0;
  for (@words) { $my_length += length($_); print "$_ $my_length\n"; }

  my %withSet;
  my %noSet;

  my $nsfudge = 120;
  my $wsfudge = 24;

  $noSet{$_}   = perms($_) / $nsfudge    for (@words);
  $withSet{$_} = perm_set($_) / $wsfudge for (@words);

  my $iter = combinations( \@words, 5 );

  my $count = 0;
  my $x;

  my $totalLength = 0;
  $totalLength += length($_) for @words;

  my $totalProd = 1;
  $totalProd *= $noSet{$_} for @words;

  my $totalCheat = 1;
  $totalCheat *= $withSet{$_} for @words;

  # print "$_ $noSet{$_} $withSet{$_}\n" for ( sort @words );
  while ( my $c = $iter->next ) {
    my @d = sort {
           length($a) <=> length($b)
        || perm_set($a) <=> perm_set($b)
        || $a cmp $b
    } array_diff( @$c, @words );

    # print "$count @$c\n";
    my $product      = 1;
    my $lengths      = 0;
    my $cheatProduct = 1;
    for (@$c) {
      $product      *= $noSet{$_};
      $cheatProduct *= $withSet{$_};
      $lengths += length($_);
    }
    my $dlength = 0;
    $dlength += length($_) for (@d);

    if ( $product > 10000000000000 ) {
      print("Skipping product of $product for @$c\n");
      next;
    }
    $lengths -= $dlength;
    my @temp  = frac( $product, $totalProd, 1 );
    my $nume  = $temp[0];
    my $denom = $temp[1];
    next if $nume < $denom;
    $count++;
    printf( "%3d", $count );
    printf("@$c VS @d");
    ( $nume, $denom ) = ( $denom, $nume ) if $nume < $denom;
    printf( " REG: " . join( "/", @temp ) . " " );
    @temp = frac( $cheatProduct, $totalCheat, 1 );
    printf( "CHEAT: " . join( "/", @temp ) . " " );
    @temp = sort { $b <=> $a } (@temp);
    $nume  *= $temp[0];
    $denom *= $temp[1];
    @temp = frac( $nume, $denom, 0 );
    printf( "total fraction: " . join( "/", @temp ) . " " );
    printf( abs($lengths) . "\n" );
  }
  print "no settler fudge=$nsfudge with settler fudge=$wsfudge\n";
  print "$_ $noSet{$_} $withSet{$_}\n" for ( sort @words );
}

sub frac {
  my $gcd = gcd( $_[0], $_[1] );
  my $t1  = $_[0] / $gcd;
  my $t2  = $_[1] / $gcd;

  return ( $t1, $t2 ) if !$_[2];

  $t1 = $_[0] * $t1;
  $gcd = gcd( $t1, $t2 );

  return ( $t1 / $gcd, $t2 / $gcd );
}

sub initFactorial {
  $fact[0] = 1;
  for ( 1 .. 20 ) { $fact[$_] = $_ * $fact[ $_ - 1 ]; }
}

sub difference {
  my @x = @{ $_[0] };
  my @y = @{ $_[1] };
  my %y_not_x_hash;
  my @retAry = ();

  $y_not_x_hash{$_}++ for (@y);
  $y_not_x_hash{$_}++ for (@x);
  for ( keys %y_not_x_hash ) {
    push( @retAry, $_ ) if ( $y_not_x_hash{$_} == 1 );
  }
  return @retAry;
}

sub checkAdjust {
  open( X, "$adjustFile" ) || die("No adjust file.");
  while ( $a = <X> ) {
    chomp($a);
    next if $a =~ /^#/;
    last if $a =~ /^;/;
    my @ar = split( /,/, lc($a) );
    $adjustSourceMin{ $ar[0] } = $ar[1];
    $adjustSourceMax{ $ar[0] } = $ar[2];
  }
}

sub getScores {
  my @sts = ( "shuffling", "roiling" );
  my $line;
  my @regDef;
  my $reg;
  my $min;
  my $max;
  for my $pr (@sts) {
    print "$pr\n";
    open( X, "c:/games/inform/$pr.inform/source/story.ni" )
      || die("No source file for $pr");
    while ( $line = <X> ) {
      if ( $line =~ /\. *min-score of / ) {
        chomp($line);
        @regDef = split( /\. */, $line );
        for (@regDef) {
          if ( $_ =~ /region$/i ) {
            ( $reg = lc($_) ) =~ s/ is.*//;
            if ( defined( $sourceMax{$reg} ) ) {
              my $count = 1;
              while ( defined( $sourceMax{"$reg$count"} ) ) {
                $count++;
              }
              $reg = "$reg$count";
            }
          }
          elsif ( $_ =~ /max-score/i ) {
            ( $max = lc($_) ) =~ s/.*is *//;
          }
          elsif ( $_ =~ /min-score/i ) {
            ( $min = lc($_) ) =~ s/.*is *//;
          }
        }
        $sourceMax{$reg} = $max;
        $sourceMin{$reg} = $min;
        if ( $reg eq "otters"
          ) # this isn't great code, but there's only one case where we need adjusted stuff
        {
          $sourceMax{"$reg adjusted"} = $max;
          $sourceMin{"$reg adjusted"} = $min;
        }
        print "$reg $min-$max\n";
      }
    }
    close(X);
  }
}

sub usage {
  print <<EOT;
USAGE
================
-e = edit data file
-d=debug text
-l=launch
-nl=don't launch
-p=print possibilities (settler and non)
EOT
  exit();
}
