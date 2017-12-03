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

use List::Util qw(reduce);
use File::Compare;

use Algorithm::Permute;

use strict;
use warnings;

my %dupHash;
my %statFin;

my $reds = "c:/writing/dict/reds.txt";

my @letArray;
my @array;
my @onematch;
#####changed later
my @poss, my @perm;

my $printResults = 0;

my $permMod = 5000;

my $myMax      = 1000;
my $maxLetters = 20;

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

my @wordArray;

while ( $cur <= $#ARGV ) {
  my $arg = $ARGV[$cur];
  my $arg2 = ( defined( $ARGV[ $cur + 1 ] ) ? $ARGV[ $cur + 1 ] : "" );
  for ($arg) {

    #/^-?a$/ && do { $lookDif = 1; $cur++; next; };
    #the above is an option I don't know what it's for
    /^-?(fr|rf)$/
      && do { $fileName = $reds; $cur++; next; };
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
    /^-?e$/ && do { `$reds`; exit(); $cur++; next; };
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

  for $aryIdx ( 0 .. $iter ) { oneRed($aryIdx); }
}
else {
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
        if ( ( index( lc($a), "$auditString," ) == -1 )
        && ( index( lc($a), ",$auditString" ) == -1 ) );
      $gotAnyAna = 1;
      if ( index( lc($a), lc($auditString) ) > 0 ) {
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
      goto PRINTRESULTS;
    }

    if ($sectionIgnore) { next; }

    $a =~ s/ //g;
    @array = split( /,/, $a );
    if ($settler) {
      my $foundPct = 0;
      for (@array) {
        if ( $_ =~ /%/ ) { $foundPct = 1; }
      }
      if ( !$foundPct ) { @array = ( @array, "%" ); }
    }
    @letArray = split( //, $array[0] );
    @perm     = split( //, $array[0] );
    for my $q ( 1 .. $#array ) {
      die("Unequal lengths $array[0] vs $array[$q] at line $.")
        if length( $array[0] ) != length( $array[$q] );
      my @a2 = split( //, $array[$q] );
      for my $idx ( 0 .. $#letArray ) {
        if ( $letArray[$idx] eq $a2[$idx] ) {
          print(
"Line $. has $array[0] vs $array[$q] letters shouldn't match but do at position $idx\n"
          );
        }
        if ( ( ord( $a2[$idx] ) <= 90 )
          && ( ord( $a2[$idx] ) >= 65 )
          && ( lc( $a2[$idx] ) ne $letArray[$idx] ) )
        {
          print(
"Line $. has $array[0] vs $array[$q] letters should match but don't at position $idx\n"
          );
        }
      }
    }

  }
  close(A);
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

  my $checkForDup = 0;

  my %theDups;

  for $j ( 1 .. $#array ) {
    next if $array[$j] eq "%";
    next if length( $array[$j] ) eq length( $array[0] );
    next
      if ( length( $array[$j] ) eq length( $array[0] ) + 2 )
      && ( $array[$j] =~ /^1-/ );
    die(
"$array[$j] (word #$j) has wrong number of characters. Use .'s to fill out a word. Bailing."
    );
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

  print "Removing arg # $_[0] $array[$_[0]]: " if ( $_[0] );

  @perm = split( //, "$array[0]" );
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

  if ( my $temp = isOops( $array[0], $_[0] ) ) {
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

    # print "@perm / $j / $_[0] / $array[$_[0]]\n";
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
    if ( $a =~ /^table of readables/ ) {
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

sub usage {
  print <<EOT;
Examples:
reds.pl abcde %
Should give 12 possibilities (% means we know where the vowels/consonants/y are)
reds.pl abcd bcda
Should give 9
reds.pl abcdef bcdeaf
Should give an error since the f's match up
reds.pl -fr
Looks at c:/writing/dict/reds.txt
-x/-nx turns on/off checking if you exclude one of the strings (default is on)
reds.pl rs runs the reds-in-source. v=verbose, b=redo base file, c=redo compare file
reds.pl -a STRING looks for a string. reds.pl -a+GRINTS STRING adds GRINTS as a potential red.
  l = LY in otters, n = no additional settler clues
EOT
  exit();
}
