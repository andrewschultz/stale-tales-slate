#weed.pl
#this detects possible false anagrams or bad anagrams or duplicates in the random tables
#
#Usage flags:
#-r -s -2 = roiling, shuffling, both
#
#[] in the source indicates to ignore duplicates
#It only focuses on table text
#Time to run:
#Shuffling = 5 seconds
#Roiling =

use POSIX;
use File::stat;
use Math::BigInt;

use strict;
use warnings;

my @localLineNums;

#print Math::BigInt::bgcd((8,12,18,27));
#print Math::BigInt::bgcd((12,18,27));
#print Math::BigInt::bgcd((8,12,18));

#$teststring = "\"accustor curators\""; die(cromstring($teststring) . " " . offstring($teststring));

my @color = ( "#ffffff", "#dddddd", "#bbbbbb" );

########################
# options
my $flipIt       = 0;
my $upPosLimit   = 0;
my $upBadLimit   = 0;
my $launch       = 0;
my $remains      = 0;
my $notWeirdYet  = 0;
my $weirdLine    = 0;
my $showNums     = 0;
my $read2nd      = 0;
my $ignoreBefore = 0;
my $ignoreHours  = 0;

######################
# arrays
my @badPos;
my @false;
my @quik;
my @rev;
my @roots;
my @rt;
my @z;
my @smallStuff;

########################
# hashes
my %ary;
my %dupCount;
my %dupes;
my %exp;
my %fapo;
my %ln;
my %pbad;
my %quik;
my %repl;

########################
# globals which yeah but
#
my $numberYet = 0;
my $tableYetC = 0;
my $line      = 0;
my $hadPoss   = 0;
my $thisTable = "";

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

$repl{"d-word-u"} = "damn";
$repl{"d-word"}   = "damn";
$repl{"a-word"}   = "ass";
$repl{"a-word-u"} = "ass";
$repl{"crap"}     = "crap";
$repl{"crap-u"}   = "crap";
$repl{"dick"}     = "dick";
$repl{"dick-u"}   = "dick";
$repl{"a-b"}      = "abe";
$repl{"d-t"}      = "dot";
$repl{"n-t"}      = "nate";
$repl{"i-n"}      = "ian";
$repl{"sim"}      = "simeon";
$repl{"toti"}     = "toni";
$repl{"tt"}       = "toi";
$repl{"ta"}       = "tai";
$repl{"t-w"}      = "watt";
$repl{"s-w"}      = "this";
$repl{"f-w"}      = "ukcf";

my $badAnaSoFar;
my $breakNum = 50;

my $di = my $sm = my $badans = my $posBad = my $falsePos = 0;

my $badana = 1;

$upBadLimit = -1;
$upPosLimit = -1;

my $sta = time();

$exp{"roi"} = $exp{"ro"} = $exp{"r"}  = $exp{"-r"} = "roiling";
$exp{"sa"}  = $exp{"s"}  = $exp{"-s"} = $exp{""}   = "shuffling";

my $roi = "c:/games/inform/roiling.inform/Source";
my $sa  = "c:/games/inform/shuffling.inform/Source";

my $pwd = getcwd();

my @weedDir = ();

my $divider = 5000;

my $count = 0;

while ( $count <= $#ARGV ) {
  $a = $ARGV[$count];
  $b = $ARGV[ $count + 1 ];
  for ($a) {
    / / && do { my $word = $a; die( cromstring( $word, 1 ) ); $count++; next; };
    /^-?b$/ && do { $upBadLimit = $b; $count++; next; };
    /^-?p$/ && do { $upPosLimit = $b; $count++; next; };
    /^-?f$/ && do { $flipIt     = 1;  $count++; next; };
    /^-?g$/ && do { $read2nd    = 1;  $count++; next; };
    /^-?l$/ && do { $launch     = 1;  $count++; next; };
    /^-?!$/ && do { $remains    = 1;  $count++; next; };
    /^-?ib$/ && do { $ignoreBefore = 1; $ignoreHours = $b; $count += 2; next; };
    /^-?n$/ && do { chdir("c:/writing/dict/nightly"); next; };
    /^-?sn$/ && do { $showNums = 1; $count++; next; };
    /^-?w$/ && do { $weirdLine = $b; $notWeirdYet = 1; $count++; next; };
    /^-?(r|ro|roi)$/
      && do { @weedDir = ( @weedDir, "roiling" ); $count++; next; };
    /^-?(s|sa)$/
      && do { @weedDir = ( @weedDir, "shuffling" ); $count++; next; };
    /^-?2$/
      && do { @weedDir = ( @weedDir, "shuffling", "roiling" ); $count++; next; };
    usage();
  }
}

`copy badana.txt badana.bak`;

if ( !$weedDir[0] ) {

  if ( $pwd =~ /(shuffling|roiling)\.inform/ ) {
    my $temp = $pwd;
    $temp =~ s/\.inform.*//g;
    $temp =~ s/.*[\\\/]//g;
    $weedDir[0] = $temp;
  }
}

if ( !$weedDir[0] ) { die "No suitable directory found. -s, -r or -2."; }

my $s1  = "";
my $s2  = "";
my $s3  = "";
my $s2a = "";
my $thisDir;

my $triedSomething = 0;

for $thisDir (@weedDir) {
  if ( !skipProcessing($thisDir) ) {
    print "No updates in last $ignoreHours hours for $thisDir, skipping.\n";
    next;
  }

  $triedSomething = 1;

  open( A2, ">dupes-$thisDir.htm" );
  open( A3, ">dshort-$thisDir.txt" );
  open( B,  ">oddmatch-$thisDir.txt" );
  open( B2, ">falsepos-$thisDir.txt" );
  open( C,  ">badana-$thisDir.txt" );

  print A2 "<html><body>\n";

  weedOneSource( $thisDir, 1 );

  if ($remains) { weedOneSource("!!"); }

  if ( $di + $sm ) {
    $s1 =
"<br>(DUPES.HTM/DSHORT.TXT) $di total differences (disable with \[\]). $sm size mismatches.\n";
  }
  else { $s1 = "DUPES.HTM/DSHORT.TXT will be blank. Hooray!\n"; }
  if   ($posBad) { $s2 = "(ODDMATCH.TXT) $posBad interesting cases.\n"; }
  else           { $s2 = "ODDMATCH.TXT has nothing. Wow!\n"; }
  if   ($falsePos) { $s2a = "(FALSEPOS.TXT) $falsePos \[\]'s.\n"; }
  else             { $s2a = "FALSEPOS.TXT has nothing. Good!\n"; }
  if ($badans) {
    $s3 =
      "(BADANA.TXT) $badans total likely bad anagrams, disable with \[x\].\n";
  }
  else { $s3 = "You have no bad anagrams. Well done!\n"; }

  print
"TEST RESULTS:$thisDir bad anagrams,10,$badans,0,<a href=\"badana-$thisDir.txt\">The Culprits</a>\n";
  print
"TEST RESULTS:$thisDir soft duplicates,100,$di,0,<a href=\"dupes-$thisDir.htm\">The Culprits</a> <a href=\"dshort-$thisDir.txt\"short vers\">Short Vers</a>\n";
  print
"TEST RESULTS:$thisDir false positives,100,$falsePos,0,<a href=\"falsepos-$thisDir.txt\">The Culprits</a>\n";
  print
"TEST RESULTS:$thisDir odd matches,100,$posBad,0,<a href=\"oddmatch-$thisDir.txt\">The Culprits</a>\n";

  print A2 "$s1";

  print B "$s2";

  if ( keys %pbad > 0 ) {
    print B "Missing stuff by table:\n";
    for my $tname ( sort keys %pbad ) { print B "$tname : $pbad{$tname}\n"; }
  }

  print B2 "$s2a";

  print C "$s3";

  close(A);

  print A2 "</table></body></html>";

  for ( sort keys %dupCount ) { print A3 "$_: $dupCount{$_}\n"; }

  close(A2);
  close(B);
  print B2 "aq.pl -d " . join( ",", @false ) . "\n";
  close(B2);
  close(C);
  close(A3)

}

if ($launch) { `dupes.htm`; }

die("No checks run.") if ( !$triedSomething );

my $totTime = time() - $sta;

print
"$totTime total seconds. Output to dupes.htm, dshort-?.txt and badana-?.txt and oddmatch-?.txt.\n$s1$s2$s3";

#cmp would put 93 above 111
for $_ ( sort { $dupCount{$b} <=> $dupCount{$a} } keys %dupCount ) {
  print "$_ had $dupCount{$_}\n";
}

if ($flipIt) {
  open( A, "dupes.htm" );

  my $hdr = <A>;

  while ( $a = <A> ) { push( @rev, $a ); }
  @rev = reverse(@rev);
  close(A);

  open( B, ">dupes-f.htm" );
  print B $hdr;
  for ( 1 .. $#rev ) { print B $_; }
  print B $rev[0];

  print "Reverse file in dupes-f.htm.\n";
}
###################
#cutDown: this breaks down the punctuation in a possible anagram and also replaces test like toti -> Tio. So fewer false positives are reported.
#

sub cutDown {
  my $x;
  my $temp = $_[0];
  $temp =~ s/\"\s.*/\"/g;
  $temp =~ s/(\[r\]),? +by / /g;
  $temp =~ s/\&//g;
  $temp =~ s/[,\?!:]//g;
  if ( $temp =~ /\[if/ ) {

#so that an if statement with 2 different texts doesn't put them both into the anagram.
#this obviously neglects the problem of what if the [if] and [else] don't anagram, but I think that's a minor one
    if ($read2nd) {
      $temp =~ s/\[if player is (fe)?male\][^\]]*\]//gi;

      #$temp =~ s/\[if[^\]]*\]*\[else\]//g;
    }
    else {
      $temp =~ s/\[else\][^\[]*\[end if\]//gi;
    }
  }

  #if ($temp =~ /may undo/) { print "!!!!$temp\n"; }
  if ( $temp =~ /\[[a-z-]+\]/ ) {
    for $x ( sort keys %repl ) {
      if ( $temp =~ /\[$x\]/ ) {    #print "$x to $repl{$x} in $temp\n";
        $temp =~ s/\[$x\]/$repl{$x}/g;
      }
    }
  }
  $temp =~ s/\[[^\]]*\]//g;
  return $temp;

}

sub checkFullAna {
  my $fullAna = 0;
  $fullAna |= quikAna( $_[0] );
  if ($fullAna) { return $fullAna; }
  if ( $_[0] =~ /^\"(the|an|a) /i ) {
    $b = $_[0];
    $b =~ s/^\"(the|an|a) //gi;
    $fullAna |= quikAna($b);
    if ($fullAna) { return $fullAna; }
  }
  return 0;
}

######################
#quikAna: this simply checks if the GCD of the # of different letters is more than 1. If it is, something probably anagrams something else. If not, error.

sub quikAna {
  my $strg = lc( $_[0] );
  $strg =~ s/[^a-z]//gi;

  my @x = split( //, $strg );

  for ( 'a' .. 'z' ) { $quik{$_} = 0; }

  for (@x) { $quik[ ord($_) - 97 ]++; }

  my %roots;
  my $retStr;
  my $temp = lc( $_[0] );

  my $let;
  my $idx;
  my $t2;

  #print "$temp: $a $b $c\n";
  for $let ( 'a' .. 'z' ) {
    $idx         = ord($let) - 97;
    $t2          = () = ( $temp =~ /$let/g );
    $roots[$idx] = $t2;
  }

  return ( Math::BigInt::bgcd(@roots) > 1 );

}

sub mash {
  my %roots;
  my $retStr;
  my $temp = lc( $_[0] );

  my $idx;
  my $let;
  my $t2;

  #print "$temp: $a $b $c\n";
  for $let ( 'a' .. 'z' ) {
    $idx         = ord($let) - 97;
    $t2          = () = ( $temp =~ /$let/g );
    $roots[$idx] = $t2;
  }

  my $q = Math::BigInt::bgcd(@roots);
  if ( $q > 1 ) {
    for (@roots) { $_ /= $q; }
  }
  elsif ( gotAna( $_[0] ) ) {
    print B "SOME-ANA: $_[0]\n";
  }
  elsif ( ($badana) && ( $_[0] !~ /\[\]/ ) ) {
    if ( !$hadPoss ) {
      $badans++;
      if ( !$tableYetC ) {
        print C "==$thisTable\n";
        $tableYetC = 1;
      }
      if ($showNums) { print C "$badans "; }
      $badAnaSoFar = 1;
      print C "$_[0] ($line): "
        . cromstring( $_[0] ) . " "
        . offstring( $_[0] ) . "\n";
    }
    else {
      $pbad{$thisTable}++;
      $posBad++;
      push( @badPos, $line );
      if ( !$notWeirdYet ) {
        print B "$posBad ($line) $_[0]: " . cromstring( $_[0] ) . "\n";
      }
    }
    $hadPoss = 0;
  }

  #die ($mess . $_[0]	);
  return join( "", @roots );
}

sub lets {
  my $temp = $_[0];
  $temp =~ s/[^a-z]//gi;
  return length($temp);
}

##########################
#offstring returns the "what's off" from an anagram that doesn't quite work
#

sub offstring {
  my $x = lc( $_[0] );
  $x =~ s/[^a-z]//gi;
  my @lets = ();
  my @z = split( //, $x );
  my @which;

  my $rem;
  my $retString;

  for (@z) {

    #print "Adding $_: @which\n";
    $which[ ord($_) - 97 ]++;
  }
  my $lowestInt = 0;
  for ( 0 .. 25 ) {
    if ( $which[$_] ) {
      if    ( !$lowestInt )             { $lowestInt = $which[$_]; }
      elsif ( $which[$_] < $lowestInt ) { $lowestInt = $which[$_]; }
    }
  }
  $retString = "Culprit(s): ";
  if ( $lowestInt == 1 ) {
    for ( 0 .. 25 ) {
      if ( $which[$_] == 1 ) {
        $retString .= chr( $_ + 97 );
        $retString .= " (1-iso) ";
      }
    }

    #die("$_[0] -> $resString");
  }
  else {
    for ( 0 .. 25 ) {
      if ( $which[$_] % $lowestInt ) {
        $rem = $which[$_] % $lowestInt;
        $retString .= chr( $_ + 97 );
        $retString .= "($rem) ";
      }
    }
  }
  return $retString;
}

##########################
# cromstring returns the "cromulence string"
# this is => h1i2s2t1

sub cromstring {
  my $x = lc( $_[0] );
  $x =~ s/[^a-z]//gi;
  my $cromString = "";
  if ( $x !~ /[a-z]/ ) { return 1; }    #trivially true
  my @z = split( //, $x );
  my @which;

  my $bgcd;
  my $rem;

  for (@z) {

    #print "Adding $_: @which\n";
    $which[ ord($_) - 97 ]++;
  }
  if ( defined( $_[1] ) && ( ( $_[1] == -1 ) || ( $_[1] == 0 ) ) ) {
    $bgcd = Math::BigInt::bgcd(@which) . "=GCD...";
    for ( 0 .. 25 ) {
      if ( $which[$_] ) {
        $which[$_] /= $bgcd;
      }
    }
    die();
  }
  for ( 0 .. 25 ) {
    if ( $which[$_] ) {
      $cromString .= chr( $_ + 97 ) . "$which[$_]";
    }
  }
  if ( defined( $_[1] ) && ( $_[1] == 1 ) ) {
    $bgcd = Math::BigInt::bgcd(@which) . "=GCD...";
    if ( $bgcd == 1 ) {
      print "not perfect anagram";
      my $lowestInt = 0;
      for ( 0 .. 25 ) {
        if ( $which[$_] ) {
          if    ( !$lowestInt )             { $lowestInt = $which[$_]; }
          elsif ( $which[$_] < $lowestInt ) { $lowestInt = $which[$_]; }
        }
      }
      print "\nCulprit(s): ";
      for ( 0 .. 25 ) {
        if ( $which[$_] % $lowestInt ) {
          $rem = $which[$_] % $lowestInt;
          print chr( $_ + 97 ) . "($rem) ";
        }
      }
      print "\n";

    }
    else {
      print "Perfect anagram";
    }
  }
  return $cromString;
}

sub gotAna {
  my $temp = $_[0];
  $temp =~ s/\[[^\]]*\]//g;
  $temp =~ s/^[^a-z0-9]*//gi;
  my @divs = split( /[ -\.]+/, $temp );
  my %totes;
  my @tmp;
  my @words;
  my $mayDupe  = 0;
  my $showDupe = 0;
  my $anaStr;
  my $q;
  my $i;
  my $j;
  my $x;    # for loop vars
  $hadPoss = 0;

  for $q ( 0 .. $#divs ) {
    @tmp = split( //, $divs[$q] )
      ;     # ?? @tmp = split(//, @divs[$q]); gives warsum fits
    $x = 0;
    for $i ( 0 .. $#tmp ) { $x = $x + $ary{ $tmp[$i] }; }
    $words[$q] = $x;
  }

  #die(join("/", @words));
  my $partAna = 0;
  for $i ( 0 .. $#words ) {
    my $runTote = 0;
    for $j ( $i .. $#words ) {
      $runTote += $words[$j];

 #if ($totes{$runTote} =~ /^0/) { print B "$totes{$runTote}: $i, $j, $_[0]\n"; }
      if ( !defined( $totes{$runTote} ) || ( $totes{$runTote} !~ /[0-9]/ ) ) {
        if ( $i == $j ) {
          $totes{$runTote} = "$i";    #print "New hash $runTote\n";
        }
        else {
          $totes{$runTote} = "$i-$j";    #print "New hash $runTote\n";
        }
      }
      else {
        @rt = split( /-/, $totes{$runTote} );
        if ( !$rt[1] ) { $rt[1] = $rt[0]; }

        if ( $i <= $rt[1] ) { $mayDupe = 1; }

        my $combo = ( $i == $j ) ? $i : "$i-$j";

        if ( $mayDupe && $showDupe ) { print B "(DUPE WORDS?) "; }
        if ( ( $mayDupe == 0 ) || ( $showDupe == 1 ) ) {
          $anaStr = "PART-ANA:";

          #note it'd be nice to reject if one word is the other.
          if ( ( $i == $j )
            && ( $rt[0] == $rt[1] )
            && ( $divs[$i] eq $divs[ $rt[0] ] ) )
          {
          }
          else {
            for ( $i .. $j ) { $anaStr .= " $divs[$_]"; }
            $anaStr .= " <->";
            for ( $rt[0] .. $rt[1] ) { $anaStr .= " $divs[$_]"; }
            if ( !$notWeirdYet ) {
              print B "$anaStr\n";
              $partAna = 1;
            }
          }

          #print B "$_[0] $combo maps to $runTote : $totes{$runTote}\n";
        }
        $hadPoss = 1;
      }

      #if ($die) { print "Tried $i-$j, total = $runTote\n";}
    }
  }
  if ( !$partAna ) { print B "The below may have nothing at all.\n"; }

#if ($die) { for $g (sort keys %totes) { print B "$_[0]: $g $totes{$g}\n"; } $g = "0-0"; print "0=$totes{$g}"; die; }
}

sub stillWorth {
  if ( $badans == $upBadLimit ) { return 0; }
  if ( $posBad == $upPosLimit ) { return 0; }
  return 1;
}

sub skipProcessing {
  return 0 if !$ignoreBefore;
  my $myfi =
"C:/Program Files (x86)/Inform 7/Inform7/Extensions/Andrew Schultz/$_[0] Random Text.i7x";
  my $t1 = stat($myfi)->mtime;
  my $t2 = time();
  return $t2 - $t1 < $ignoreHours * 3600;
}

sub weedOneSource {

  my $acrom;
  @localLineNums = ();
  my %ta;    # not used but maybe it will be

  my $myfi;
  if ( $_[0] =~ /!!/ ) {
    $myfi = "c:/games/inform/roiling.inform/source/lones.txt";
  }
  else {
    $myfi =
"C:/Program Files (x86)/Inform 7/Inform7/Extensions/Andrew Schultz/shuffling Random Text.i7x";
    if ( $_[1] == 1 ) {
      $myfi =
"C:/Program Files (x86)/Inform 7/Inform7/Extensions/Andrew Schultz/$_[0] Random Text.i7x";
    }
  }

  open( A, "$myfi" ) || die("No $_[0]/$myfi.");
  print "Weeding out $myfi\n";

  my $ch = chr(0xe2);
  my $first;
  my $second;

  $line = 0;

  my $dupeRows   = 0;
  my $tableYetA2 = 0;
  my $curA2Table = 0;
  $tableYetC = 0;
  my $inTable = 0;

  while ( ( $a = <A> ) ) {
    $line++;
    if ( $line % $divider == 0 ) { print "At line $line\n"; }
    if ( $a =~ /$ch/ ) {
      print("BIG WARN line $line has a smart quote or apostrophe.\n");
    }
    if ($notWeirdYet) {
      if ( $line == $weirdLine ) { $notWeirdYet = 0; }
    }
    chomp($a);
    $a = lc($a);

    if ( $a =~ /^table of.*xx/ ) {
      if ($dupeRows) { $dupCount{$thisTable} = $dupeRows; $dupeRows = 0; }
      $curA2Table = 0;
      $inTable    = 1;
      $tableYetC  = 0;
      $thisTable  = $a;
      $thisTable =~ s/\[.*//g;
      chomp($thisTable);
      print B "==$thisTable\n";
      next;
    }
    if ( !$inTable ) { next; }

    $a =~ s/[��]/e/g;
    if ( $a !~ /[a-z]/ ) { $inTable = 0; next; }
    if ( $a =~ / \[x\]/ ) {
      next;
    } # deliberately ignore. This is not perfect, as bad punctuation stuff may avoid bad anagrams, and vice versa, but it gets close.
    if ( ( $a =~ /^\"/ ) && ( $a !~ /\t/ ) && ( $a =~ /[a-z]/ ) ) {
      $acrom = cromstring( cutDown($a) );
      if ( $a =~ /\[\]/ ) {
        if ( !$dupes{$acrom} ) {
          $falsePos++;
          print B2 "false \[\] line $line $falsePos on $a\n";
          $fapo{$acrom} = "$a-$line";
          push( @false, $line );
        }
        next;
      } #move this after mash ($a) or back to the top to see about duplicated stuff
      elsif ( $fapo{$acrom} ) {
        print B2"----($line) $a not \[\] vs $fapo{$acrom}\n";
      }
      $badAnaSoFar = 0;
      $a           = cutDown($a);
      if ( !checkFullAna($a) ) {
        mash($a);
      }
      $b = cromstring($a);
      if ( $dupes{$b} && ( !$badAnaSoFar ) ) {
        my $q  = lets($a);
        my $q2 = lets( $dupes{$b} );
        if ( $q2 != $q ) {
          my $z = Math::BigInt::bgcd( ( $q2, $q ) );
          $q2 /= $z;
          $q  /= $z;

          #print A2 "SZ $q2 $q: "; $sm++;
          $sm++;
        }
        if ( !$tableYetA2 ) {
          $tableYetA2 = 1;
          checkFinalLineNums();
          $numberYet = 0;
        }
        $first = $a;
        $first =~ s/ .*//g;
        $second = $dupes{$b};
        $second =~ s/ .*//g;
        $first =~ s/^\"//g;
        $second =~ s/(SA:)?\"//g;
        if ( $first eq $second ) { print A2 "<i>"; }
        print A2
          "$a ($line) =? $dupes{$b} ($ln{$b}) (FIRSTS: $first vs $second)";
        if ( $first eq $second ) { print A2 "</i>"; }
        print A2 "<br />\n";
        $di++;
        $curA2Table++;
        $dupeRows++;

        #old way
        #print A3 "$a ($line)\n";
        push( @localLineNums, $line );
        $dupCount{"$thisTable"}++;
        if ( $curA2Table % $breakNum == 0 ) {
          print A2 "<hr>run of 50, "
            . ( $#localLineNums - $breakNum + 1 )
            . " to $curA2Table: <b>aq.pl \n";
          print A2 join( " ",
            $localLineNums[ ( $#localLineNums - $breakNum + 1 )
              .. $#localLineNums ] );
          print A2 "</b>\n<br />\n";
        }
      }
      else {
        $dupes{$b} = $a;
        if ( $_[0] eq "shuffling" ) { $dupes{$b} = "<b>SA:</b>$dupes{$b}"; }
        $ln{$b} = $line;
        $ta{$b} = $thisTable;
      }

      #print "$b -> $a\n";
    }
    last if !stillWorth();
  }

  print "$#localLineNums this go round for $thisTable.\n";

  if ( $#localLineNums > -1 ) {
    my $roundDown = $curA2Table - ( $curA2Table % $breakNum );
    if ($roundDown) {
      print A2 "Going from $roundDown to $#localLineNums.<br />\n";
      $roundDown--;
      print A2 "<br>"
        . ( $#localLineNums + 1 )
        . " elements:<br /><font size=+3><b>aq.pl "
        . join( " ", $localLineNums[ $roundDown .. $#localLineNums ] )
        . "</b></font>\n<br />\n";
    }
  }

  $thisTable = "";
  checkFinalLineNums();
  if ( @smallStuff > -1 ) {
    print A2 "<br><b>BITS AND PIECES:</b> aq.pl "
      . join( " ", @smallStuff )
      . "<br>\n";
  }
}

sub checkFinalLineNums {
  if ($numberYet) { print A3 "\n"; }
  if ( $#localLineNums > -1 ) {
    my $roundDown = $#localLineNums - ( $#localLineNums % $breakNum );
    my $remain = $#localLineNums % $breakNum;
    if ( $remain < $breakNum - 1 ) {
      print A2 "<br>"
        . ( $#localLineNums + 1 )
        . " elements, showing last "
        . ( $remain + 1 )
        . ":<br /><font size=+3><b>aq.pl "
        . join( " ",
        $localLineNums[ ( $#localLineNums - $remain ) .. $#localLineNums ] )
        . "</b></font>\n";
    }
  }
  if ( $#localLineNums < 10 ) { @smallStuff = ( @smallStuff, @localLineNums ); }
  if ($thisTable) {
    print A2 "<font size=+4><center>$thisTable</center></font>\n";
  }
  @localLineNums = ();
  print A3 "==$thisTable\n";
}

###########################
#usage stuff
#
sub usage {
  print <<EOT;
weed.pl splits things into three files
dupes.htm = possible duplicates without [], dupes-f.htm is reverse
oddmatch.txt = odd matches
badana.txt = bad anagrams
options include -r=roiling -s=shuffling -2=both
-g = flip genders
-f=flip the final file (may be easier to read)
-sn = show nums
-ib = ignore before X hours
MAIN USAGE CASE: weed.pl -2 -ib 24
EOT
  exit;
}
