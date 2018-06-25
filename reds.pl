#reds.pl
#
# usage: reds.pl -f reds.txt (for all the files)
# reds.pl knob bonk (to check individual reds)
# requires: reds.txt
#
# this determines whether things that clue red do so properly
# e.g. red knob would clue BONK but red skis should not clue KISS
#
# can read in file name or word-arguments
#
# todo: let people go past the == command line arg

use List::Util qw(reduce);
use File::Compare;

use Algorithm::Permute;

use strict;
use warnings;
use lib 'c:/writing/scripts';
use i7;

my %dupHash;
my %statFin;

my $redsource = __FILE__;
my $reds      = $redsource;
$reds =~ s/pl$/txt/;

my @letArray;
my @array;
my @onematch;
#####changed later
my @poss, my @perm;

my $printResults = 0;

my $permMod = 5000;

my $myMax      = 1000;
my $maxLetters = 20;

my $bad_reverse_matches = 0;

my $launchErrors = 0;
my $lineToOpen   = 0;

my $showPoss   = 1;
my $showRemain = 1;

my $checkForDup = 0;

my $cur = 0;

my $disableSettler = 0;
my $fileName       = "";
my $firstString    = 0;
my $sectionIgnore  = 0;
my $settler        = 0;
my $checkExclude   = 1;
my $verbose        = 0;
my $onlyCheckReds  = 0;
my $auditString    = "";
my @extraArray     = ();
my $includeLY      = 0;

my $skipped_whatif = 0;

my $setQYet = 0;

my @wordArray;

my @av;

for (@ARGV) {
  @av = ( @av, split( ",", $_ ) );
}

while ( $cur <= $#av ) {
  my $arg = $av[$cur];
  my $arg2 = ( defined( $av[ $cur + 1 ] ) ? $av[ $cur + 1 ] : "" );
  for ($arg) {

    #/^-?a$/ && do { $lookDif = 1; $cur++; next; };
    #the above is an option I don't know what it's for
    /^-?(fr|rf)(o)?$/
      && do {
      $fileName = $reds;
      if ( $arg =~ /o/ ) { $launchErrors = 1; }
      if ( $arg =~ /n/ ) { $launchErrors = 0; }
      $cur++;
      next;
      };
    /^-?f$/ && do { $fileName = $arg2; $cur += 2; next; };
    /^-?y$/
      && do {
      $fileName = $reds;
      $settler  = 1;
      $cur++;
      next;
      };
    /^-?n$/
      && do {
      $fileName = $reds;
      $settler  = 0;
      $cur++;
      next;
      };
    /^-?rs[cbv]*$/ && do {
      $verbose |= ( $arg =~ /v/ );
      my $whatToDo = 0;
      if ( $arg =~ /b/ ) { $whatToDo = 2; }
      if ( $arg =~ /c/ ) { $whatToDo = 1; }
      die("Can't define both base and checkoff.")
        if ( $arg =~ /b/ ) && ( $arg =~ /c/ );
      redSource( "shuffling", $whatToDo );
      redSource( "roiling",   $whatToDo );
      exit();
    };
    /^-?a[nl]*(\+[a-z,%]*)?$/ && do {
      my $prefix = $arg;
      $prefix =~ s/\+.*//;
      $disableSettler = ( $prefix =~ /n/i );
      $includeLY      = ( $prefix =~ /l/i );
      if ( $arg =~ /\+/ ) {
        my $a2 = $arg;
        $a2 =~ s/.*\+//;
        @extraArray = split( ",", $a2 );
      }
      $auditString = lc($arg2);
      $fileName = $reds if !$fileName;
      $cur += 2;
      next;
    };
    /^-?e$/ && do {
      open_right_line($arg2) if $arg2;
      `$reds`;
      exit();
    };
    /^-?ef$/ && do { `np $redsource`; exit(); $cur++; next; };
    /^-?l$/ && do { $maxLetters = $arg2; $cur += 2; next; };
    /^-?m$/ && do { $myMax      = $arg2; $cur += 2; next; };
    /^-?np$/ && do { $showPoss     = 0; $cur++; next; };
    /^-?nr$/ && do { $showRemain   = 0; $cur++; next; };
    /^-?nx$/ && do { $checkExclude = 0; $cur++; next; };
    /^-?x$/  && do { $checkExclude = 1; $cur++; next; };
    /^-?nv$/ && do { $verbose      = 0; $cur++; next; };
    /^-?v$/  && do { $verbose      = 1; $cur++; next; };
    /^-?\?$/ && do { usage(); exit(); };
    /\.txt/ && do {
      print
"Just to check, period means a blank space, not a file name. Use -f for a file.\n";
    };
    /^[roygbv\?]+=/i && do {
      die("Redefined a settler clue $arg over $av[$setQYet]") if $setQYet;

      # print("Q-settler clue $arg\n");
      push( @wordArray, $arg );
      $setQYet = $cur;
      $cur++;
      next;
    };
    /^[\.%a-z]/i && do {
      push( @wordArray, $arg );
      if ( $firstString eq "" ) { $firstString = $cur; }
      $cur++;
      next;
    };
    $cur = $#ARGV + 1;
  }
}

if ( !$fileName ) {
  if ( $#wordArray == -1 ) {
    usage();
    exit();
  }
PRINTRESULTS:
  $printResults = 1;
  @letArray     = split( //, "$wordArray[$firstString]" );
  @array        = @wordArray;
  for ( 1 .. $firstString ) { shift(@array); }

  my @la = (@letArray);
  my $aryIdx;

  my $iter = ( $checkExclude ? $#array : 0 );

  for $aryIdx ( 0 .. $iter ) {
    oneRed($aryIdx);
  }
}
else {
  my $thisLineErrs = 0;
  my $errs         = 0;
  my $succ         = 0;

  my $gotAnyAna  = 0;
  my $roilingYet = 0;
  $printResults  = 0;
  $onlyCheckReds = 1;
  $checkExclude  = 0;
  open( A, $fileName ) || die("No $fileName");
  print "Searching $fileName for (errant) red text...\n";
  while ( $a = <A> ) {
    chomp($a);
    if ( $a =~ /^\|/ )          { $sectionIgnore = !$sectionIgnore; next; }
    if ( $a =~ /^##/ )          { $sectionIgnore = 0;               next; }
    if ( $a =~ /^#roil-start/ ) { $roilingYet    = 1;               next; }
    if ( $a =~ /^#/ )           { next; }
    if ( $a =~ /^;/ )           { last; }
    if ($auditString) {
      next
        if ( $a !~ /\b$auditString\b/ );
      $gotAnyAna = 1;
      if ( $a !~ /^$auditString/ ) {
        print("$auditString found in $a at line $. but is not main anagram.\n");
        next;
      }
      print "Found something at line $.: $a\n";
      close(A);
      $a =~ s/ //g;
      @wordArray     = split( /,/, $a );
      $firstString   = 0;
      $checkExclude  = 1;
      $onlyCheckReds = 0;
      @wordArray     = ( @wordArray, @extraArray );
      push( @wordArray, "" . ( "." x ( length( $wordArray[0] ) - 2 ) ) . "LY" )
        if $includeLY;
      push( @wordArray, "%" ) if $roilingYet && !$disableSettler;

      for my $temp ( 0 .. $#wordArray ) {
        if ( $wordArray[$temp] =~ /^[ROYGBV\?]+=/ ) { $setQYet = $temp; }
      }
      goto PRINTRESULTS;
    }

    if ($sectionIgnore) { next; }

    $thisLineErrs = 0;

    $a =~ s/ //g;
    @array = split( /,/, $a );
    if ($settler) {
      my $foundPct = 0;
      for (@array) {
        if ( $_ =~ /%/ ) { $foundPct = 1; }
      }
      if ( !$foundPct ) { @array = ( @array, "%" ); }
    }
    ( my $sol = $array[0] ) =~ s/\/.*//;
    @letArray = split( //, $sol );
    @perm     = split( //, $sol );

    if ( $#array < 1 ) {
      $lineToOpen = $. if !$lineToOpen;
      print( $array[0] =~ /=/
        ? "WARNING line $. needs a comma before the question clue.\n"
        : "WARNING line $. has only one argument.\n"
      );
    }

    if ( $array[0] =~ /\// ) {
      my $this_reverse_ok = reverse_match( $array[0], $array[1] );
      $lineToOpen = $. if !$lineToOpen;
      $errs += $this_reverse_ok;
      next;
    }
    for my $q ( 1 .. $#array ) {

      if ( questionClue( $array[$q] ) ) {
        if ( quesMatch( $array[0], $array[$q] ) == -1 ) {
          print
            "$array[0]/$array[$q] matches question-clues badly at line $..\n";
          $errs++;
        }
        next;
      }
      die("Unequal lengths $array[0] vs $array[$q] at line $.")
        if length( $array[0] ) != length( $array[$q] );
      if ( $q =~ /^[rygpob\?]*$/i ) {
        die("$q conflicts with cheat settings $setQYet $array[$setQYet]")
          if $setQYet;
        $setQYet = $q;
        next;
      }
      my @a2 = split( //, $array[$q] );
      for my $idx ( 0 .. $#letArray ) {
        if ( $letArray[$idx] eq $a2[$idx] ) {
          print(
"Line $. has $array[0] vs $array[$q] letters shouldn't match but do at position $idx\n"
          );
          $thisLineErrs++;
        }
        if ( ( ord( $a2[$idx] ) <= 90 )
          && ( ord( $a2[$idx] ) >= 65 )
          && ( lc( $a2[$idx] ) ne $letArray[$idx] ) )
        {
          print(
"Line $. has $array[0] vs $array[$q] letters should match but don't at position $idx\n"
          );
          $thisLineErrs++;
        }
      }
    }

    $errs += $thisLineErrs;
    $succ += !$thisLineErrs;
  }
  close(A);
  print( $errs == 0
    ? "EVERYTHING WORKED! YAY!"
    : "$errs errors, $succ successes.\n"
  ) if !$auditString;
  print "$auditString turned up nothing.\n" if ( $auditString && !$gotAnyAna );
}

###########################################
# subroutines
#

sub oneRed {
  my $permCount = 0;
  my $i, my $j, my $x, my $z;    # iterator variables

  my $succ = 0;

  my @lets = sort(@letArray);
  ( my $sol = $array[0] ) =~ s/\/.*//;
  my $ls = length($sol);

  my $checkForDup = 0;

  my %theDups;

  for $j ( 1 .. $#array ) {
    next if $j == $setQYet;
    next if $array[$j] eq "%";
    next if length( $array[$j] ) eq $ls;
    next
      if ( length( $array[$j] ) eq $ls + 2 )
      && ( $array[$j] =~ /^1-/ );
    if ( $array[$j] =~ /=/ ) {
      my @eqAry = split( /=/, $array[$j] );
      for ( 0 .. $#eqAry ) {
        my $eq = $eqAry[$_];
        die(
          "$eq (word $_) of argument $j/$array[$j] is the wrong length. It is "
            . length($eq)
            . " and should be "
            . $ls )
          if length($eq) != $ls;
      }
      next;
    }
    die(  "$array[$j] (word #$j) has wrong number of characters: "
        . length( $array[$j] ) . " vs "
        . $ls
        . ". Use .'s to fill out a word. Bailing." );
  }
  if ($onlyCheckReds) {
    print join( "/", @_ ) . " parsed okay\n" if $verbose;
    return;
  }

  for ( 0 .. $#lets ) {
    $checkForDup = 1 if defined( $theDups{ $lets[$_] } );
    $theDups{ $lets[$_] }++;
  }
  my $poss = factorial( scalar(@lets) );
  for ( keys %theDups ) {
    $poss /= factorial( $theDups{$_} );
  }

  return if $_[0] == 1 && $#array < 2;

  if ( $array[0] =~ /\// ) {
    print(
"Skipping what-if searches since there is a ? which mucks things up. This can be done better but it's good enough for now.\n"
    );
    return if $skipped_whatif;
    $skipped_whatif = 1;
  }
  print "Removing arg # $_[0] of $array[$_[0]]: " if ( $_[0] );

  @letArray = split( //, $sol );
  @perm     = split( //, "$sol" );
  for $j ( 1 .. $#array ) {
    next if $j eq $_[0];
    if ( $array[$j] eq "%" ) {
      $array[$j] = "";
      for $i ( 0 .. $#perm ) {
        if    ( $perm[$i] =~ /[aeiou]/ ) { $array[$j] .= "!"; }
        elsif ( $perm[$i] eq "y" )       { $array[$j] .= "Y"; }
        else                             { $array[$j] .= "#"; }
      }
    }
  }

  assign_onematches();

  if ( my $temp = isOops( $sol, $_[0] ) ) {
    die("Settler/questioning test failed.") if ( $temp == -1 );
    die "Test failed at word "
      . ( $temp & 0xff )
      . " character "
      . ( ( $temp >> 8 ) + 1 )
      . ".\n$array[0]\n"
      . ( ' ' x ( $temp >> 8 ) )
      . "*\n$array[$temp & 0xff]\n";
  }

  if ( length( $array[0] ) > $maxLetters ) {
    print "$array[0] too long.\n";
    return;
  }

  for $x (@perm) {
    for $z ( 0 .. $#perm ) {
      $statFin{"$x-$z"} = 0;
    }
  }

  my @la         = @letArray;
  my $p_iterator = Algorithm::Permute->new( \@la );

  %dupHash = ();
  while ( @perm = $p_iterator->next ) {
    $j = join( "", @perm );
    if ( $checkForDup == 1 ) {
      if   ( $dupHash{$j} ) { next; }
      else                  { $dupHash{$j} = 1; }
    }

    if ($verbose) {
      $permCount++;
      if ( $permCount % $permMod == 0 ) {
        print "...$permCount/$poss total\n";
      }
    }

    if ( !isOops( $j, $_[0] ) ) {
      $succ++;

      for ( 0 .. $#perm ) { $statFin{"$perm[$_]-$_"}++; }
      if ( $succ <= $myMax ) {
        if ( ( $_[0] == 0 ) && $printResults ) {
          print "$succ: $j is ok.\n";
        }
      }
    }

  }

  if ( ( $succ > $myMax ) || ( !$printResults ) || ( $_[0] != 0 ) ) {
    print "$array[0] ($array[$_[0]]): $succ found total.\n";
  }

  if ( ( $_[0] == 0 ) && $printResults ) {
    if ( $succ > 1 ) {
      print "Stats:";

      my $firstLet = "";
      my $thisLet;
      for $x ( sort keys %statFin ) {
        $thisLet = $x;
        $thisLet =~ s/^(.).*/$1/;
        if ($showPoss) {
          if   ( $firstLet ne $thisLet ) { print "\n"; }
          else                           { print " | "; }
          print "$x: $statFin{$x}";
        }
        if ( $statFin{$x} ) {
          my @x = split( /-/, $x );
          if ( defined( $poss[ $x[1] ] ) && ( $poss[ $x[1] ] !~ /$x[0]/ ) ) {
            $poss[ $x[1] ] .= $x[0];
          }
          else {
            #print "\n$poss[$x[0]]: Not adding $x[0] to $x[1].\n";
          }
        }
        $firstLet = $thisLet;
      }
      print "\n";
      my $y;

      print "Possibilities: ";
      for $x ( 0 .. length( $array[0] ) - 1 ) {
        my $thisString = "";
        for $y ( sort keys %statFin ) {

          # print "$y\n";
          if ( ( $y =~ /-$x$/ ) && ( $statFin{$y} ) ) {
            ( my $temp = $y ) =~ s/-[0-9]+//;
            $thisString .= $temp;
          }
        }
        print( length($thisString) > 1 ? "($thisString)" : uc($thisString) );
      }

      print "\n";
      if ($showRemain) {
        for ( 0 .. $#poss ) { print "" . ( $_ + 1 ) . ": $poss[$_] "; }
      }

    }
    elsif ( $succ == 0 ) {
      print "Oops, somehow I found no successes.\n";
    }
    else {
      print("Unique solution. Yay!\n");
    }

  }
}

sub isOops # does this contradict the clues we are given e.g. ARGV[1] ... ARGV[ARGC]?
{
  my $count;
  my $gotone;
  my $this;
  my $l;

  for ( $count = 1 ;
    $count <= $#array ;
    $count++
    ) # remember to start at 1 because we want to disqualify the first entry as it's the one we want to solve
  {
    next if ( $count == $_[1] );

    if ( $setQYet == $count ) {
      return ( quesMatch( $_[0], $array[$setQYet], $array[0] =~ /\// ) );
    }

    $gotone = 0;

    #print "$_[0]: THIS: $this PERM(L) $perm[$_[0]]\n";

    for $l ( 0 .. length( $array[0] ) - 1 ) {
      $this = substr( $array[$count], $l, 1 );

      #print "Comparing char $l: THIS $this <-> $perm[$l] PERMU.\n";
      if ( $perm[$l] eq $this ) {
        if ( !$onematch[$count] )
        { # print "Fail at arg $count, char $l $perm[$l] vs " . substr($array[$count], $l, 1) . " $array[$count]\n";
          return ( $count + ( $l << 8 ) );
        }
        else { $gotone = 1; }
      }
      elsif ( ( $this =~ /[A-Z]/ ) && ( $perm[$l] ne lc($this) ) ) {
        return $count + ( $l << 8 );
      }
      elsif ( ( $this eq "#" ) && ( $perm[$l] =~ /[aeiou]/i ) ) {
        return $count;
      }
      elsif ( ( $this eq "!" ) && ( $perm[$l] !~ /[aeiouy]/i ) ) {
        return $count;
      }
      elsif ( ( $this eq "y" ) && ( $perm[$l] eq "y" ) ) { return $count; }
      else {
#if ($this eq "#") { print "# implies consonants." }
#if ($perm[l] eq "[aeiou]") { print "vowelly." }
#print "Pass at arg $count, char $l $j $perm[$l] vs " . substr($array[$count], $l, 1) . " $array[$count]\n";
      }
    }
    if ( ( $onematch[$count] == 1 ) && ( !$gotone ) ) {

      #print "Failed any match $_[0] <-> $array[$count].\n";
      return -1;
    }
  }
  return 0;
}

sub quesMatch {
  my @matchAry = split( //,  $_[0] );
  my @argsAry  = split( /=/, $_[1] );
  my @qAry     = split( //,  $argsAry[0] );
  my $pos;
  my $arg;
  my @sums;

  my $beNice = 0;
  if ( defined( $_[2] ) ) { $beNice = $_[2]; }

  push( @sums, 0 ) for ( 0 .. $#matchAry );
  for $arg ( 1 .. $#argsAry ) {
    my @tAry = split( //, $argsAry[$arg] );
    for $pos ( 0 .. $#tAry ) {

      # print "$argsAry[$arg], @tAry, $pos\n";
      if ( $qAry[$pos] eq '?' ) {
        $sums[$pos] += ( $tAry[$pos] eq $matchAry[$pos] );
      }
      elsif ( $qAry[$pos] eq 'R' ) {
        return -1 if ( $matchAry[$pos] eq $tAry[$pos] );
        return -1 if ( $matchAry[$pos] =~ /[aeiouy]/ );
      }
      elsif ( $qAry[$pos] eq 'Y' ) {
        return -1 if ( $matchAry[$pos] eq $tAry[$pos] );
        return -1 if ( $matchAry[$pos] !~ /[aeiou]/ );
      }
      elsif ( $qAry[$pos] eq 'O' ) {
        return -1 if ( $matchAry[$pos] eq $tAry[$pos] );
        return -1 if ( $matchAry[$pos] ne 'y' );
      }
      elsif ( $qAry[$pos] eq 'P' ) {
        return -1 if ( $matchAry[$pos] ne $tAry[$pos] );
        return -1 if ( $matchAry[$pos] =~ /[aeiouy]/ );
      }
      elsif ( $qAry[$pos] eq 'G' ) {
        return -1 if ( $matchAry[$pos] ne $tAry[$pos] );
        return -1 if ( $matchAry[$pos] !~ /[aeiou]/ );
      }
      elsif ( $qAry[$pos] eq 'B' ) {
        return -1 if ( $matchAry[$pos] ne $tAry[$pos] );
        return -1 if ( $matchAry[$pos] ne 'y' );
      }
    }
  }
  for $pos ( 0 .. $#matchAry ) {
    if ( ( $qAry[$pos] eq "?" ) && ( !$beNice ) ) {
      return -1 if ( ( $sums[$pos] == 0 ) || ( $sums[$pos] == $#qAry ) );
    }
  }
  return 0;
}

sub questionClue {
  return 0 unless $_[0] =~ /^[roygbp\?=]+/i;
  my @ary = split( /=/, $_[0] );
  for ( 1 .. $#ary ) {
    die(
      sprintf(
        "$_ not equal to length of clue: %d vs %d(arg $_)",
        length( $ary[0] ),
        length( $ary[$_] )
      )
    ) if length( $ary[$_] ) != length( $ary[0] );
  }
  return 1;
}

sub factorial {
  my $fact = reduce { $a * $b } 1 .. $_[0];
  return $fact;
}

# 0 = STDOUT
# 1 = red-base
# 2 = red-var

sub redSource {
  my $file    = "c:/games/inform/$_[0].inform/source/story.ni";
  my $base    = "c:/games/inform/$_[0].inform/source/red-base.txt";
  my $compare = "c:/games/inform/$_[0].inform/source/red-var.txt";
  my $line;
  my $count = 0;
  my %wordAfter;
  my $outString;
  my $inReadables = 0;

  print "" . ( "=" x 40 ) . "Trying $file\n";
  open( A, $file ) || die("No file $file");
  while ( $line = <A> ) {
    if ( $inReadables && $line !~ /[a-z]/i ) {
      $inReadables = 0;
      $outString .= "" . ( "=" x 40 ) . " END READABLES\n";
      next;
    }
    if ( $line =~ /^table of readables/ ) {
      <A>;
      $inReadables = 1;
      next;
    }
    if ($inReadables) {
      $count++;
      $outString .= "$count: $line";
      next;
    }
    if ( $line =~
/\bred\b (?!(camp|condo|bull|wire|guardian|guardians|rat|asp|ring|drawer)\b)/i
      )    # red objects are specifically removed from consideration
    {
      $count++;
      $outString .= "$count: $line";
      chomp($line);
      my @reds = split( /red[^a-z]*/, $line )
        ; # note that this may pick up "red"'s flagged above, but it isn't a really big deal
      for (@reds) {
        $_ =~ s/[^a-z].*//i;
        $wordAfter{$_}++ if ($_);
      }
    }

  }

  close(A);

  $outString .= "$count total.\n";

  if ( $_[1] == 0 )    # stdout
  {
    print $outString;
  }
  elsif ( $_[1] == 1 )    # to VAR file
  {
    print "Writing to compare file $compare\n";
    open( A, ">$compare" );
    print A $outString;
    close(A);
    if ( compare( $compare, $base ) ) {
      print("Warning $compare != $base\n\n");
      system("wm $compare $base");
    }
    else {
      print("No changes in red text since last.\n\n");
    }
  }
  elsif ( $_[1] == 2 )    # to BASE file
  {
    print "Writing to base file $base\n";
    open( A, ">$base" );
    print A $outString;
    close(A);
  }
  else {
    die(
      "Bad parameter passed to redSource function. Check script and try again."
    );
  }

  if ($verbose) {
    print "$_ -> $wordAfter{$_}\n" for ( sort keys %wordAfter );
  }
}

sub assign_onematches {
  my $j;
  for $j ( 1 .. $#array ) {
    if ( $array[$j] =~ /^1-/ ) {
      $array[$j] =~ s/^1-//g;
      $onematch[$j] = 1;
    }
    else { $onematch[$j] = 0; }

    #if ($array[$j] =~ /[^0-9%]/) { die ("Bad input $j, $array[$j]"); }
  }

}

sub reverse_match {
  my @possibles = split( /\//, $_[0] );
  my @inputs    = split( "=",  $_[1] );
  my $settler_stuff = $inputs[0];
  shift(@inputs);

  my @matched   = (0) x length( $possibles[0] );
  my @unmatched = (0) x length( $possibles[0] );
  my @set_read  = ('!') x length( $possibles[0] );

  my @first_poss = split( //, $possibles[0] );

  for my $q1 ( 0 .. $#first_poss ) {
    $set_read[$q1] = misser( $first_poss[$q1] );
  }

  for my $q1 ( 0 .. $#possibles ) {
    my @base_ary = split( //, $possibles[$q1] );
    for my $q2 ( 1 .. $#possibles ) {
      my @comp_ary = split( //, $possibles[$q2] );
      for my $q3 ( 0 .. $#set_read ) {
        $set_read[$q3] = '?'
          if misser( $comp_ary[$q3] ) ne misser( $base_ary[$q3] );
      }
    }
  }

  for my $q1 ( 0 .. $#possibles ) {
    my @base_ary = split( //, $possibles[$q1] );
    for my $q2 ( 0 .. $#inputs ) {

      #print ">>>>>>$q1/$q2/$possibles[$q1]/$inputs[$q2]\n";
      my @comp_ary = split( //, $inputs[$q2] );
      for ( 0 .. $#base_ary ) {
        $matched[$_]   = 1 if ( $base_ary[$_] eq $comp_ary[$_] );
        $unmatched[$_] = 1 if ( $base_ary[$_] ne $comp_ary[$_] );
      }
    }
  }

  # print "@matched///@unmatched\nPoss @possibles\nInputs @inputs\n";

  for ( 0 .. $#matched ) {
    if ( $matched[$_] && $unmatched[$_] ) {
      $set_read[$_] = '?';
    }
    elsif ( $matched[$_] ) {
      $set_read[$_] = 'G' if $set_read[$_] eq 'Y';
      $set_read[$_] = 'P' if $set_read[$_] eq 'R';
      $set_read[$_] = 'B' if $set_read[$_] eq 'O';
    }
  }

  my $my_str = join( "", @set_read );
  ( my $scan = $array[1] ) =~ s/=.*//;
  return 0 if $my_str eq $scan;
  print
"Uh oh mismatch for reverse match of $_[0]/$_[1] at $.: $my_str vs $scan.\n";
  return 1;
}

sub misser {
  return 'Y' if lc( $_[0] ) =~ /[aeiou]/i;
  return 'O' if lc( $_[0] ) eq 'y';
  return 'R';
}

sub open_right_line {
  open( A, $reds ) || die("No file $reds");
  my $line;
  while ( $line = <A> ) {
    if ( $line =~ /$_[0]/i ) {
      my $lineNum = $.;
      close(A);
      npx( $reds, $lineNum );
    }
  }
  die("Could not find a match for string $_[0].");
}

sub usage {
  print <<EOT;
==================USAGE FOR REDS.PL==================
Examples:
-e = open reds.txt, -ef = open source file. -e can take an argument to open at the right line number.
reds.pl abcde %
Should give 6*2 12 possibilities (% means we know where the vowels/consonants/y are and we have 3 consonants, 2 vowels))
reds.pl abcd bcda
Should give 9 (bcda can't match anything)
reds.pl abcdef bcdeaf
Should give an error since the f's match up
reds.pl -fr
Looks at c:/writing/dict/reds.txt
reds.pl -a(nl)+(auditstring) audits a specific puzzle-answer string to look for
-x/-nx turns on/off checking if you exclude one of the strings (default is on)
reds.pl rs runs the reds-in-source. v=verbose, b=redo base file, c=redo compare file
reds.pl rf runs through the reds.txt file, rfo = open first error, rfn = suppress, default = off
reds.pl -a STRING looks for a string. reds.pl -a+GRINTS STRING adds GRINTS as a potential red.
  l = LY in otters, n = no additional settler clues
EOT
  exit();
}
