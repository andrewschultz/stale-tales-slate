##################
#
# mkbot.pl
#
# this originally just converted books in Inform 7 from my random bookshelf to plain text
#
# it now takes taunts and converts to plain text/json if you add the "taunt" parameter
#
# mainly to help with the bookbot
#

use strict;
use warnings;

#constants, unless "taunt"
my @arstr = ( "biobook", "litbook", "motbook" );
my @toAlt =
  ( "a-b", "d-t", "i-n", "m-e", "mle", "n-t", "sim", "ta", "toti", "tt" );

my $readShuffling = 0;
my $class         = "book";
my $matches       = "self-help bestsellers|random books|biopics";

my @genStr    = ();
my @failLines = ();
my $line;
my $l2;

if ( defined( $ARGV[0] ) ) {
  if ( $ARGV[0] eq "taunt" ) {
    @arstr = (
      "cussing", "singing", "sleeping",  "mob1",
      "griping", "dissin",  "just-mean", "political",
      "mob2",    "final-fight"
    );
    $class = "taunt";
    $matches =
"singing rejects|sleep rejects|mob chants|riot slogans|red bull taunts|cussing rejects|mantle laments|fish fries|theses|political slogans";
    $readShuffling = 1;
  }
  else { die("Only cmd line option is taunt."); }
}

my $failures = 0;
my $success  = 0;    # not used, but maybe we will track it later
my $arind    = 0;

readBeforeAfter();

#die($initstring);

my $alf = "c:/games/inform/roiling.inform/source/alf-$class.txt";

open( B, ">$alf" );
print B $genStr[0];

readInFile("Roiling");
if ($readShuffling) { readInFile("Shuffling"); }

print B $genStr[1];
close(B);

my $fh;
open( $fh, "+<$alf" ) or die;

seek $fh, -6, 2;
print $fh "\n}\n";
truncate $fh, ( -s $alf ) - 3;
close($fh);

my $outStr = join( "\n", @failLines );
if ( !$outStr ) { $outStr = "all successful"; }
print "TEST RESULTS:json $class errors,0,$failures,0,$outStr\n";

#############################################
#
#readInFile does the main stuff
#it's a function because I'm copying over to the taunt2txt file as well
#
sub readInFile {
  my $inFile =
"C:/Program Files (x86)/Inform 7/Inform7/Extensions/Andrew Schultz/$_[0] Random Text.i7x";
  my $notTheFirst = 0;
  my $inTable     = 0;

  open( A, $inFile ) || die("can't open $inFile");

  while ( $line = <A> ) {
    if ( ( $line =~ /^table of ($matches) / ) && ( $line !~ /\t/ ) ) {
      print "$line\n";
      print B "\t\"$arstr[$arind]\": \[";
      $arind++;
      <A>;
      $inTable     = 1;
      $notTheFirst = 0;
      n ext;
    }
    if ($inTable) {
      if ( $line =~ /\[x\]/ )       { next; }
      if ( $line =~ /\[[ts]-w\]/i ) { next; }    #ignore super swears
      if ( $line !~ /[0-9a-z]/i ) { $inTable = 0; print B " ],\n"; next; }
      chomp($line);
      $l2 = $line;
      $l2 =~ s/^\"//g;
      $l2 =~ s/\".*//g;

####GUY/GIRL
      $l2 =~ s/\[if (player is male|censor-minor is true)]/\(/g;
      $l2 =~ s/\[else]/\//g;
      $l2 =~ s/\[end if]/\)/g;

####NAMES
      for my $q (@toAlt) { $l2 =~ s/\[$q\]/#$q#/g; }

####Special for Dr. Stu Durst
      $l2 =~ s/\[sturd\]/TURDS/g;

####NON TEXTY STUFF. CENSOR SWEARS
      $l2 =~ s/\[b\]//g;
      $l2 =~ s/\['\]/'/g;
      $l2 =~ s/\[(r|x|)]//g;
      $l2 =~ s/\[a-word(-u)?\]/\*\*\*/gi;
      $l2 =~ s/\[(crap|dick)(-u)?\]/\*\*\*/g;
      $l2 =~ s/\[.-word(-u)?\]/\*\*\*\*/g;
      if ( $line =~ /\tfalse/ ) { $l2 = "(-) $l2"; }
      if ( $line =~ /\ttrue/ )  { $l2 = "(+) $l2"; }
      if ( length($l2) > 135 )  { print "LENGTH WARNING: $l2\n"; }
      if ( $l2 =~ /\[/ ) {
        print "TITLE WITH BRACKETS: $l2\n";
        $failures++;
        push( @failLines, $line );
      }
      else {
        if   ($notTheFirst) { print B ","; }
        else                { $notTheFirst = 1; }
        print B "\n";
        print B "\t\"$l2\"";
      }
    }
  }

  close(A);

}

#########################
#sub readBeforeAfter
#reads the strings before and after the random text
#
#genStr[0] = prefix, genStr[1] = postfix
#

sub readBeforeAfter() {
  my $json = "c:/games/inform/roiling.inform/source/$class-json.txt";
  open( A, $json ) || die("Couldn't read json file $json.");
  my $idx = 0;
  while ( $line = <A> ) {
    if   ( $line =~ /=====/ ) { $idx++; }
    else                      { $genStr[$idx] = $genStr[$idx] . $line; }
  }
  close(A);
}
