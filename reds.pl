#reds.pl
#
# usage: reds.pl reds.txt (for all the files)
# reds.pl knob bonk (to check individual reds)
# requires: reds.txt
#
# this determines whether things that clue red do so properly
# e.g. red knob would clue BONK but red skis should not clue KISS
#
# can read in file name or word-arguments
#

use Algorithm::Permute;

use strict;
use warnings;

my %dupHash;
my %statFin;

my @letArray;
my @array;
my @onematch;
#####changed later
my @poss, my @perm;

my $printResults = 0;

my $myMax      = 1000;
my $maxLetters = 20;

my $showPoss   = 1;
my $showRemain = 1;

my $checkForDup = 0;

my $cur = 0;

my $fileName      = "";
my $firstString   = 0;
my $sectionIgnore = 0;
my $settler       = 0;

while ( $cur <= $#ARGV ) {
  for ( $ARGV[$cur] ) {

    #/^-?a$/ && do { $lookDif = 1; $cur++; next; };
    #the above is an option I don't know what it's for
    /^-?f$/ && do { $fileName = $ARGV[ $cur + 1 ]; $cur += 2; next; };
    /^-?y$/
      && do { $fileName = "c:/writing/dict/reds.txt"; $settler = 1; $cur++; next; };
    /^-?n$/
      && do { $fileName = "c:/writing/dict/reds.txt"; $settler = 0; $cur++; next; };
    /^-?l$/ && do { $maxLetters = $ARGV[ $cur + 1 ]; $cur += 2; next; };
    /^-?m$/ && do { $myMax      = $ARGV[ $cur + 1 ]; $cur += 2; next; };
    /^-?np$/ && do { $showPoss   = 0; $cur++; next; };
    /^-?nr$/ && do { $showRemain = 0; $cur++; next; };
    /^-?\?$/ && do { usage(); exit(); };
    /\./ && do {
      print
"Just to check, period means file name to search, not wild card. Use comma (,) for wild card.\n";
      $fileName = $ARGV[$cur];
      $cur++;
      next;
    };
    /^[a-z]/ && do {
      if ( $firstString eq "" ) { $firstString = $cur; }
      $cur++;
      next;
    };
    $cur = $#ARGV + 1;
  }
}

if ( !$fileName ) {
  if ( $#ARGV == -1 ) {
    usage();
    exit();
  }
  $printResults = 1;
  @letArray     = split( //, "$ARGV[$firstString]" );
  @array        = @ARGV;
  for ( 1 .. $firstString ) { shift(@array); }
  oneRed();
}
else {
  $printResults = 0;
  open( A, $fileName ) || die("No $fileName");
  while ( $a = <A> ) {
    chomp($a);
    if ( $a =~ /^\|/ ) { $sectionIgnore = !$sectionIgnore; next; }
    if ( $a =~ /^#/ )  { $sectionIgnore = 0;               next; }
    if ( $a =~ /^;/ )  { last; }
    if ($sectionIgnore) { next; }
    @array = split( /,/, $a );
    if ($settler) {
      my $foundPct = 0;
      for (@array) {
        if ( $_ =~ /%/ ) { $foundPct = 1; }
      }
      if ( !$foundPct ) { @array = ( @array, "%" ); }
    }
    @letArray = split( //, $array[0] );
    oneRed();
  }
  close(A);
}

sub oneRed {

  my $i, my $j, my $x, my $z;    # iterator variables

  my $succ = 0;

  my @lets = sort(@letArray);

  my $p_iterator = Algorithm::Permute->new( \@letArray );

  my $checkForDup = 0;

  for ( 0 .. $#lets - 1 ) {
    if ( $lets[$_] eq $lets[ $_ + 1 ] ) { $checkForDup = 1; }
  }

  @perm = split( //, "$array[0]" );

  for $j ( 1 .. $#array ) {
    if ( $array[$j] eq "%" ) {
      $array[$j] = "";
      for $i ( 0 .. $#perm ) {
        if    ( $perm[$i] =~ /[aeiou]/ ) { $array[$j] .= "!"; }
        elsif ( $perm[$i] eq "y" )       { $array[$j] .= "Y"; }
        else                             { $array[$j] .= "#"; }
      }
    }
  }

  for $j ( 1 .. $#array ) {
    if ( $array[$j] =~ /^1-/ ) { $array[$j] =~ s/^1-//g; $onematch[$j] = 1; }
    else                       { $onematch[$j] = 0; }

    #if ($array[$j] =~ /[^0-9%]/) { die ("Bad input $j, $array[$j]"); }
  }

  if ( my $temp = isOops( $array[0] ) ) {
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

  while ( @perm = $p_iterator->next ) {
    $j = join( "", @perm );
    if ( $checkForDup == 1 ) {
      if   ( $dupHash{$j} ) { next; }
      else                  { $dupHash{$j} = 1; }
    }

    if ( !isOops($j) ) {
      $succ++;

      for ( 0 .. $#perm ) { $statFin{"$perm[$_]-$_"}++; }
      if ( $succ <= $myMax ) {
        if ($printResults) { print "$succ: $j is ok.\n"; }
      }
    }

  }

  if ( ( $succ > $myMax ) || ( !$printResults ) ) {
    print "$array[0]: $succ found total.\n";
  }

  if ($printResults) {
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
            ( my $temp = $y ) =~ s/-.//;
            $thisString .= $temp;
          }
        }
        print( length($thisString) > 1 ? "($thisString)" : uc($thisString) );
      }

      if ($showRemain) {
        print "\n";
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

sub usage {
  print <<EOT;
Examples:
reds.pl abcde %
    Should give 12 possibilities (% means we know where the vowels/consonants/y are)
reds.pl abcd bcda
    Should give 9
reds.pl abcdef bcdeaf
    Should give an error since the f's match up
EOT
  exit();
}
