#hv.pl
#this is probably one of the odder utilities. It simply searches for if an anagram is accounted for in my tables--of nudges, anagrams, etc.
#it dumps output to hv.txt
#
#usage:
#
#hv.pl mack macks
#hv.pl -p mack macks
#(to force output. It does not duplicate output)
#
#test for hv.txt file being clean
#hv.pl -c
#
#Prints out a sample line for the table of nudges
#
#

use strict;
use warnings;

my %regHash;
my %rmHash;
my %inLong;
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

my $scratch_file  = "c:/writing/dict/hv.txt";
my $printIfThere  = 0;
my $forceNoLaunch = 0;

my @alf = (
  "e", "z", "y", "x", "w", "v", "u", "t", "s", "r", "q", "p", "o", "n",
  "m", "l", "k", "j", "i", "h", "g", "f", "d", "c", "b", "a"
);

#This was when I got odd hash values and didn't have any way to reverse engineer them. I found out what they were.
#foreach $q (sort {$ary{$b} <=> $ary{$a} } keys %ary)
#{ print "$q $ary{$q}\n"; }
#fhbig(179927743, 11); die; ASP
#fhbig(442566855, 11); die; RATTED
#findHash(1096162197) #canoflargeregallager
#findHash(234323315)  #race
#findHash(583551280); #oldhat daltho

#foreach $qq (sort {$ary{$b} <=> $ary{$a} }keys %ary) { print "$qq : $ary{$qq}\n"; } die;

open( B, ">>$scratch_file" );

# globals
my $doShuf = 1;
my $doRoil = 1;
my $doLoc  = 1;

my $openPost     = 1;
my $anyFound     = 0;
my $worthOpening = 0;
my $forcePost    = 0;
my $lineNum      = 0;
my $hash         = 0;

my $myRegion = "";

###############probably obsolete with tables broken by regi9on
$regHash{"-rf"} = "forest";
$rmHash{"-rf"}  = "fields";
$regHash{"-ri"} = "sortie";
$rmHash{"-ri"}  = "moor";
$regHash{"-rm"} = "metros";
$rmHash{"-rm"}  = "underside";

$regHash{"-ru"} = "routes";
$rmHash{"-ru"}  = "mesa";
$regHash{"-rp"} = "presto";
$rmHash{"-rp"}  = "gyre";
$regHash{"-rv"} = "troves";
$rmHash{"-rv"}  = "rathole";
$regHash{"-rw"} = "towers";
$rmHash{"-rw"}  = "trefoil";
$regHash{"-ry"} = "oyster";
$rmHash{"-ry"}  = "hops shop";
$regHash{"-rt"} = "otters";
$rmHash{"-rt"}  = "inclosure";

my $region = "myreg";
my $rm     = "myrm";

#helper vars
my $cmd       = "";
my $tabString = "";
my $line;
my $inTable      = 0;
my $currentTable = 0;
my $found        = 0;

if ( $#ARGV == -1 ) { usage(); exit; }

my @toHash = ();

for my $idx ( 0 .. $#ARGV ) {
  my $this = lc( $ARGV[$idx] );
  for ($this) {
    /^-?[e!]$/ && do {
      $cmd =
"start \"\" \"C:/Program Files (x86)/Notepad++/notepad++.exe\" c:/writing/dict/hv.pl";
      `$cmd`;
      exit;
    };
    /^-?o$/ && do {
      $cmd =
"start \"\" \"C:/Program Files (x86)/Notepad++/notepad++.exe\" c:/writing/dict/hv.txt";
      `$cmd`;
      exit;
    };
    /^-?(c|cl|clean)$/ && do { cleanUp();  exit; };
    /^-?(d|dc)$/       && do { dupCheck(); exit; };
    /^-?r[a-z]$/       && do {
      $region = $regHash{$this};
      if ( !$region ) { $region = "myreg"; }
      $rm = $rmHash{$this};
      if ( !$rm ) { $rm = "myrm"; }
      next;
    };
    /^-?p$/ && do { $printIfThere  = 1; next; };
    /^-?x$/ && do { $forceNoLaunch = 1; next; };
    /^[0-9]+$/ && do { wordit($this); next; };

#  /-o/ && do { $myRegion = $this; $myRegion =~ s/^-o//g; if ($myRegion eq "") { die("Need to munge the region with -o."); } next; } # deprecated
    /^-?ff$/ && do { $openPost = 1; $forcePost = 1; next; };
    /^-?f$/  && do { $openPost = 1; next; };
    /^-?s$/  && do { $doShuf   = 1; $doRoil    = 0; next; };
    /^-?r$/  && do { $doShuf   = 0; $doRoil    = 1; next; };
    /^-?m$/ && do { matchHash("shuffling"); matchHash("roiling"); exit; };
    /\\/ && do {
      $tabString = $this;
      $tabString =~ s/\//\t/g;
      $tabString =~ s/_/ /g;
      next;
    };
    /^-?\?$/ && do { usage(); exit; };

    #print "$idx $this\n";
    /^-?t$/ && do {
      print B
        "TEMPLATE string hashval region room? whatseen? rule? gametext:\n";
      next;
    };
    if ( $this =~ /^[a-z]+\// ) {
      $this .= "s" if $this =~ /\/$/;
      my @these = split( /\//, $this );
      my $i;
      my $j;
      for $i ( 0 .. $#these ) {
        push( @toHash, $these[$i] ) if length( $these[$i] ) >= 3;
        for $j ( $i + 1 .. $#these ) {
          push( @toHash, join( '', @these[ $i .. $j ] ) );
        }
      }
    }
    else {
      push( @toHash, $this );
    }
  }
}

for my $this (@toHash) {
  my $force = 0;
  if ( $this =~ /\+$/ || ( $this =~ /^\+/ ) ) {
    $this =~ s/\+//g;
    $force = 1;
  }

  $tabString = "$rm\t--\t--";

  #if ($this > 0)
  #{
  #$found = 0;
  #print "$this:\n";
  #findHash($this, "", $ary{"e"}); print "\n"; next; }

  my @these = split( /,/, $this );
  my $temp;
  for $temp (@these) {
    if ( $temp =~ /\/$/ )    # plural syntax
    {
      $temp =~ s/\/$//;
      push( @these, "${temp}s" );
    }
  }

  if ( @these > -1 ) { print "Checking CSV of list.\n"; }

  for my $hword (@these) {

    if ( length($hword) < 3 ) {
      print "$hword has length < 3, skipping.\n";
      next;
    }

    my @x = split( //, $hword );

    $hash = 0;

    for my $q (@x) {

      #print "$q $ary{$q}\n";
      $hash += $ary{$q};
    }

    if ($doShuf) { lookBoth( $hash, "shuffling" ); }
    if ($doRoil) { lookBoth( $hash, "roiling" ); }
    if ($doLoc) { lookFor( $hash, "c:\\writing\\dict\\hv.txt" ); }

    if ( ($printIfThere) || ( $anyFound == 0 ) || $force ) {
      print "Adding $hword ($hash) to raw hash file.\n";
      print B "\"$hword\"\t$hash\t$tabString\t\"some text\"\n";
      $worthOpening = 1;
    }
    else {
      print
"Instance of *$this* found in file, not printing externally. Use -p or add a + to the string to force it into the hash file.\n";
    }
    $anyFound = 0;
  }

}

close(B);

if ( $worthOpening && $forceNoLaunch ) {
  print
"There is new stuff added, but launching is disabled. Use -ff or -o to open the auxiliary file.\n";
  exit();
}
if ( $worthOpening && $openPost ) {
  print "Opening post-processing. Use -x to disable this.\n";
  `c:/writing/dict/hv.txt`;
}
elsif ( $forcePost && $openPost ) {
  print "Nothing new but forcing opening anyway.\n";
}
elsif ($openPost) { print "Use -ff to open the auxiliary file. Or just -o.\n"; }

##########################################################
# subroutines
#

sub wordit {
  my $total = 0;
  open( A, "c:/writing/dict/brit-1word.txt" );
  while ( $line = <A> ) {
    $total = 0;
    chomp($line);
    $line = lc($line);
    my @q = split( //, $line );
    for (@q) { $total += $ary{$_}; }
    if ( $total == $_[0] ) { print "FOUND WORD: $line =~ $total\n"; return; }

    #if ($line eq "thing") { print "$line $total\n"; }
  }
  close(A);
  print "No matches for $_[0]. Trying findHash.";
  findHash( $_[0] );
}

#####################################
#compare story.ni with nudges to check overlap
sub matchHash {
  my %inFile;
  print "Matching hashes for $_[0].\n";
  my $fi =
"c:/Program Files (x86)/Inform 7/Inform7/Extensions/Andrew Schultz/$_[0] tables.i7x";
  open( A, $fi ) || die("No source file");
  while ( $line = <A> )    #first read in the source with table of anagrams
  {
    if ( $line =~ /^table of anagrams/ ) { $inTable = 1; }
    if ( $inTable && ( $line =~ /\t[0-9]/ ) ) {
      chomp($line);
      $b = $line;
      $b =~ s/.*\t//g;
      $b =~ s/[^0-9].*//g;
      $inFile{$b} = $.;
      $inLong{$b} = $line;
    }
    if ( $line !~ /[a-z]/i ) { $inTable = 0; }
  }
  close(A);
  $fi =
"c:/Program Files (x86)/Inform 7/Inform7/Extensions/Andrew Schultz/$_[0] nudges.i7x";
  open( A, $fi ) || die("No nudge/table file");
  while ( $line = <A> )    #first read in the source with table of anagrams
  {
    if ( $line =~ /^table of nudges/ ) { $inTable = 1; }
    if ( $inTable && ( $line =~ /\t[0-9]/ ) ) {
      my @tabary = split( /\t/, $line );
      my $c = $tabary[1];
      if ( $inFile{$c} ) {
        print
"We have a potential duplicate with hash value $c:\n--$inLong{$c}\n--$line\n";
      }
    }
    if ( $line !~ /[a-z]/i ) { $inTable = 0; }
  }

}

sub lookBoth    #save some code looking for source and side file
{
  lookFor( $_[0],
"c:/Program Files (x86)/Inform 7/Inform7/Extensions/Andrew Schultz/$_[1] tables.i7x"
  );
  lookFor( $_[0],
"c:/Program Files (x86)/Inform 7/Inform7/Extensions/Andrew Schultz/$_[1] nudges.i7x"
  );
}

sub lookFor {
  open( A, "$_[1]" ) || die("Can't open $_[1].\n");
  $line = 0;
  if ( $_[1] =~ /hv/ ) { $currentTable = "scrapwork"; }

  my $lineCount = 0;
  my $foundyet  = 0;
  while ( $line = <A> ) {
    $lineCount++;
    if ( $line =~ /^table of/i ) {
      $currentTable = "($line";
      chomp($currentTable);
      $currentTable = "$currentTable)";
      next;
    }
    if ( ( $line !~ /^\"?[a-z]/ ) || ( $line !~ /\t/ ) ) {
      if ( $currentTable ne "scrapwork" && ( $line !~ /^this-cmd/ ) ) {
        $currentTable = "";
      }
    }
    if ( $line =~ /$hash/ ) {
      if ( ($myRegion) && ( $line !~ /$myRegion/ ) ) {
        print "REGION-IGNORING\n$line";
      }
      else {
        if ( !$foundyet ) { print "Found in $_[1] $currentTable:\n"; }
        print "($lineCount) $line";
        $foundyet = 1;
        $anyFound = 1;
      }
    }
  }
  close(A);
}

sub fhbig {
  for my $i ( 3 .. 11 ) {
    print "Checking $_[1] <-> $i\n";
    findHash( $_[0], "", $i );
    if ($found) { last; }
  }
}

sub findHash {
  my $temp;
  my $q;
  my $maxlength = $_[2];
  my $starting  = $_[3];
  my $l         = length( $_[1] );

  #print "Parameters: $_[0] $_[1] $_[2] $_[3]...\n";

  if ( !$maxlength ) { $maxlength = 11; }
  if ( ( $l < 0 ) || ($found) ) { return; }

  #print "Trying $_[0]/$_[1]/$_[2]\n";
  if ( $_[0] == 0 ) { print "Found hash $_[1]!"; $found = 1; return; }
  elsif ( $_[0] < 0 ) { return; }
  else {
    for my $idx ( $starting .. $#alf )

    {    #if ($ary{$q} > $_[3]) { next; }
          #print "$q $ary{$q}\n";
      $q = $alf[$idx];
      my $temp = $_[0];

#print "$temp vs ($maxlength - $l) * $ary{$q} = " . ($maxlength - $l) * $ary{$q} . "\n";
      if ( $temp > ( ( $maxlength - $l ) * $ary{$q} ) ) { last; }
      if ( $temp < $ary{$q} ) { next; }

      findHash( $temp - $ary{$q}, "$_[1]$q", $maxlength, $idx );
    }
  }
}

sub cleanUp {
  my $toClean = 0;
  open( A, $scratch_file )
    || do { print "TEST RESULTS:HV.TXT wasn't read,grey,0.0\n"; return; };
  while ( $line = <A> ) {
    if ( $line =~ /\t[0-9]/ ) { $toClean++; }
  }
  print "TEST RESULTS:HV.TXT clean,3,$toClean,0\n";
}

sub dupCheck {
  open( A, $scratch_file );
  my %hvhash;
  my %hvword;
  my %the_dup;
  my $indup;
  while ( $line = <A> ) {
    my @x = split( /\t/, $line );
    if ( $#x > 1 ) {
      my $num = $x[1];
      if ( exists( $hvhash{$num} ) ) {
        print
          "INTERNAL DUPLICATE $num $x[0] line $. copies line $hvhash{$num}.\n";
        $indup++;
      }
      else {
        $hvhash{$num} = $.;
        $hvword{$num} = $x[0];
      }
    }
  }
  close(A);
  print "NO INTERNAL DUPLICATES IN $scratch_file\n" if ( !$indup );
  for my $proj ( "shuffling", "roiling" ) {
    for my $hdr ( "nudges", "tables" ) {
      my $my_file =
"c:/Program Files (x86)/Inform 7/Inform7/Extensions/Andrew Schultz/$proj $hdr.i7x";
      open( A, $my_file );
      while ( $line = <A> ) {
        if ( $line =~ /\t[0-9]{6,}\t/ ) {
          chomp($line);
          ( my $temp = $line ) =~ s/.*\t([0-9]{6,})\t.*/$1/g;
          if ( exists( $hvhash{$temp} ) ) {
            print(
"Duplicate $proj $hdr line $.: $temp, copying $temp/$hvword{$temp} at line $hvhash{$temp} of $scratch_file.\n"
            );
            $the_dup{ $hvhash{$temp} } = 1;
          }
        }
      }
      close(A);

    }
  }
  if ( keys %the_dup ) {
    print "Duplicate lines: "
      . join( ', ', ( sort { $a <=> $b } keys %the_dup ) ) . "\n";
  }
  else {
    print "No duplicate lines.\n";
  }
}

sub usage {
  print <<EOT;
-r(letter) = force room and region name (only room now that error tables divided by region)
-p = print if there, override if the hash is already in the source
# = reverse-lookup a hash number
-oREGION = force region name (deprecated)
-c = run is-clean test on hv.txt (anything with tabs left to cut/paste?)
-d = run duplicate test on hv.txt (is any generated line in roiling/shuffling nudges/header?
-f = file open after (-ff = force even if nothing open)
-x = don't open post processing (default is to open if anything is added)
-s = Shuffling only
-r = Roiling only
comma separated list gives several words
? = usage
-m = match anagram table and nudge table
-o/ = edit the output file hv.txt
-!/-e = open hv.pl
EOT
  exit;
}
