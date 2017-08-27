#myan.pl
#short for "my anagram"
#
#usage: myan.pl (word)
#
#this finds all possible anagrams of a word or sequence of letters, without having to rely on wordsmith.org/anagram. I've drained enough server time from them!

use strict;
use warnings;

my @wordAry = ();
my $anno    = "c:/writing/dict/anagram-notes.txt";

use Time::HiRes qw(time);
use POSIX qw(strftime);

my $toFile     = 1;
my $checkAfter = 1;
my $checkNames = 1;

#global initializations
my @isWord;
my $myBase     = "";
my $cmdToAn    = "";
my $minWords   = 2;
my $maxWords   = 2;
my $maxAn      = 1000;
my $count      = 0;
my $printTimer = 1;
my $hashy;
my $calls;
my $curMax;

while ( $count <= $#ARGV ) {
  $a = $ARGV[$count];
  $b = $ARGV[ $count + 1 ];
  for ($a) {
    /^-?a$/ && do { `$anno`;     exit; };
    /^-?t$/ && do { noteCheck(); exit; };
    /^-?ma$/ && do { $maxAn = $b; $count += 2; next; };
    /^-?nn$/ && do { $checkNames = 0; $count++; next; };
    /^-?cn$/ && do { $checkNames = 1; $count++; next; };
    /^-?nc$/ && do { $checkAfter = 0; $count++; next; };
    /^-?c$/  && do { $checkAfter = 1; $count++; next; };
    /^-?np$/ && do { $printTimer = 0; $count++; next; };
    /^-?p$/  && do { $printTimer = 1; $count++; next; };
    /^-?f$/  && do { $toFile     = 1; $count++; next; };
    /^-?nf$/ && do { $toFile     = 1; $count++; next; };
    /^-?r$/  && do {
      my @mma = split( /,/, $b );
      $minWords = $mma[0];
      $maxWords = $mma[1];
      $count++;
      next;
    };
    /^-?m[0-9]$/
      && do { $maxWords = $a; $maxWords =~ s/^-?m//; $count++; next; };
    /^-?[0-9]$/ && do { $maxWords = $a; $maxWords =~ s/^-?//; $count++; next; };
    /^-?m$/ && do { $maxWords = $b; $count += 2; next; };
    /^-?mm$/ && do { $minWords = $maxWords = $b; $count += 2; next; };
    /^[a-z]/i && do {
      if   ($cmdToAn) { die("2 possible words, bailing.\n"); }
      else            { $cmdToAn = lc($a); $count++; next; }
    };
    usage();
  }
}

if ( !$cmdToAn ) { die("I need a word to anagram."); }

if ( ( length($cmdToAn) > 16 ) && ( $cmdToAn !~ /,/ ) ) {
  die("16 chars or fewer please.");
}

if ( $cmdToAn =~ /[^,a-z=\+]/i ) {
  print "Wiping out non-letter characters.\n";
  $cmdToAn =~ s/[^,a-z]//gi;
}

$cmdToAn = lc($cmdToAn);

if ( $cmdToAn !~ /,/ ) {
  $myBase  = $cmdToAn;
  @wordAry = ($myBase);
}
else {
  @wordAry = split( /,/, $cmdToAn );
}

my $lastOne;

for my $inList (@wordAry) {
  $myBase = $inList;
  if ( $inList =~ /=/ ) {
    $myBase =~ s/=//g;
    $inList =~ s/=//g;
    print "= indicates plurals, trying both.\n";
    anfind($myBase);
    $myBase = "s$inList";
    anfind( $myBase . "s" );
  }
  if ( $inList =~ /\+/ ) {
    $myBase = $inList;
    $myBase =~ s/\+/$lastOne/g;
    print "Tacking on $inList.\n";
    anfind($myBase);
  }
  else { anfind($myBase); }
  $lastOne = $myBase;
}

sub noteCheck {
  open( A, "$anno" );
  my $toGet = 0;
  while ( $a = <A> ) {
    if ( $a =~ /^=/ ) { $toGet++; }
  }
  close(A);
  print "TEST RESULTS:10,$toGet,0,<a href=\"$anno\">results</a>\n";
}

sub anfind {
  open( A, "c:/writing/dict/brit-1word.txt" ) || die("No dictionary file.");

  my $hashy = 0;

  print "Trying $_[0]...$myBase\n";

  open( C, ">>$anno" );

  while ( $a = <A> ) {
    $a = lc($a);
    chomp($a);
    if ( contains( $myBase, $a ) ) {
      $isWord[ length($a) ]{$a} = alf($a);
      $hashy++;
    }
  }
  if ($printTimer) { print "$hashy total hashes.\n"; }

  open( B, ">c:/writing/dict/latest-anagram.txt" );
  print B "========$myBase========\n";

  my $b4 = time();
  my $af;

  $curMax = $minWords;

  while ( $curMax <= $maxWords ) {
    my $prev = time();
    findAna( $myBase, "", "", 0 );

    $af = time() - $prev;
    if ($printTimer) { printf( "\n$curMax Took %.3f seconds.\n", $af ); }
    $curMax++;

    if ($toFile) {
      if ($checkAfter) {

        # my $searchIt = `anin.pl $myBase`;
        # print C "\n$searchIt";
      }
      else {
        print "\n";
      }
      if ($checkNames) {
        my $getNames = `anan.pl $myBase=`;
        print C "\n$getNames";
      }
      print C "\n=================$myBase\n";
    }

  }
  close(C);

  if ($printTimer) {
    $af = time() - $b4;
    printf( "\nTook %.3f seconds.\n", $af );
  }
}

sub printUp {
  if ($toFile) { print C $_[0]; }
  print $_[0];
}

sub findAna
{    # $_[0] = what's left, $_[1] = current, latest word, # of words so far
  my $x;

  #print B "Parameters $_[0],$_[1],$_[2],$_[3] vs $curMax\n";
  if ( $count >= $maxAn ) { return; }
  my $anag;
  if ( ( !$_[0] ) && ( $_[3] == $curMax ) ) {
    $anag = $_[1];
    $anag =~ s/^-//g;
    if    ( $count % 10 ) { printUp(" "); }
    elsif ($count)        { printUp("\n"); }
    $count++;
    printUp("$anag, $_[3]");
    print B "$anag\n";
    return;
  }
  if ( $_[3] >= $curMax ) { return; }
  my $maxlength;
  $maxlength = length( $_[0] );
  my $lo2 = length( $_[2] );

  if ( ($lo2) && ( $lo2 < $maxlength ) ) {
    $maxlength = $lo2;
  } # this makes sure that we don't search for cowpies-cow-pies and cowpies-pies-cow

  if ( $_[3] == $curMax ) {
    for my $x ( keys %{ $isWord[$lo2] } ) {
      print B "Poking $x with parameters $_[0],$_[1],$_[2],$_[3]:\n";
      if ( alf($x) eq alf( $_[0] ) ) {
        $anag = $_[1];
        $anag =~ s/^-//g;
        if    ( $count % 10 > 0 ) { printUp(" "); }
        elsif ($count)            { printUp("\n"); }
        $count++;
        printUp("$anag, $_[3]");
        print B "FORCE $anag\n";
        return;
      }
    }
    return;
  }

  for ( my $l = $maxlength ; $l >= 1 ; $l-- ) {
    for my $x ( sort keys %{ $isWord[$l] } ) {
      $calls++;
      if ( ( $l != $lo2 )
        || ( $x le $_[2] )
        ) # this makes sure that we don't search for coward-war-doc and coward-doc-war
      {
        if ( contains( $_[0], $x ) ) {
          findAna( wd( $_[0], $x ), "$_[1]-$x", $x, $_[3] + 1 );
        }
      }
    }
  }
}

sub contains {
  if ( length( $_[0] ) < length( $_[1] ) ) { return 0; }
  my @g = split( //, $_[1] );
  my $retVal;
  for my $x (@g) {

    #print "$_[0] vs $_[1]\n";
    my $a = () = $_[0] =~ /$x/g;
    my $b = () = $_[1] =~ /$x/g;

    #print "$a $x in $_[0], $b $x in $_[1].\n";
    if ( $a < $b ) { return 0; }
    $retVal += ( $a - $b );
  }
  return 1;
  return $retVal;
}

sub alf {
  return lc( $_[0] );
  my @x = sort( split( //, $_[0] ) );
  return join(@x);
}

sub wd {
  my $temp = $_[0];
  my @g = split( //, $_[1] );
  for my $x (@g) { $temp =~ s/$x//; }
  return $temp;
}

sub usage {
  print <<EOT;
You need to have a CSV of anagrams.
+ = tack on to previous
= = do plural as well
EOT
  exit;
}
