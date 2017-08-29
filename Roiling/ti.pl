#ti.pl
#this takes a prefix and matches it to first and last names
#eg ti.pl big => Big Ernest Steinberg and others
#up to me to cut down the invalid/unfunny tries
#
#-m puts something in the middle e.g. Ernest 'Big' Steinberg
#
#-f flips first/last names but command line parameters are badly done right now
#
#uses firsts.txt, lasts.txt
#
#only in the ROILING directory as that has honorific (or perjorative) titles
#
#table of Leo-Rand idols [xxp4]
#table of smartypants [xxp6]
#table of posse bosses [xxv7]
#table of prestigious bums [xxv8]

use strict;
use warnings;

##############more or less set constants
my $scr        = "c:/games/inform/roiling.inform/Source/ppl-scratch.txt";
my $don        = "c:/games/inform/roiling.inform/Source/ppl-done.txt";
my $firstsFile = "firsts-a.txt";
my $lastsFile  = "lasts-a.txt";
my $dictDir    = "c:/writing/dict";
my $suffix     = "";

################options
my $allowDupe  = 0;
my $printCmds  = 0;
my $middleName = 0;
my $reverses =
  0;    # this means that we can have last+X=first as well as first+X=last
my $period = 0;

################hashes
my %first;
my %last;
my %pinged
  ;     # not in use but we want to make sure something hasn't been done before
my %tagged;

################variables
my $count      = 0;
my $firstNames = 1;
my $line;    # global read in from <A>
my $q;       # generic variable

#######################the string to search
my $fullStr = "Hon.";    # this is a default

while ( $count <= $#ARGV ) {
  $a = $ARGV[$count];
  $b = $ARGV[ $count + 1 ];

  for ($a) {
    /^-?w$/ && do { findWhat(); exit; };
    /^-?e$/ && do { `$scr`;     exit; };
    /^-?d$/ && do { $allowDupe = 1; $count++; next; };
    /^-?f$/ && do {
      $lastsFile  = "firsts.txt";
      $firstsFile = "lastbig.txt";
      $count++;
      next;
    };
    /^-?m$/  && do { $middleName = 1; $count++; next; };
    /^-?p$/  && do { $period     = 1; $count++; next; };
    /^-?pc$/ && do { $printCmds  = 1; $count++; next; };
    /^-?l$/ && do { seeLeft(); exit(); };
    /^-?r$/ && do { $reverses = 1; $count++; next; };
    /^-?t$/ && do { runScratchTest(); exit; };
    /^\// && do { $suffix = $a; $suffix =~ s/^.//; $count++; next; };
    /-?\?/ && do { usage(); $count++; next; };
    /^[a-z]/i && do {
      if ( length($a) == 1 ) { die("Won't process 1-word string."); }
      $fullStr = $a;
      $count++;
      next;
    };
  }
}

$firstNames = 0;

if ( !-f "$dictDir/$lastsFile" ) { $lastsFile = "lasts2.txt"; }

my $uStr;

my $initFile;
if ($firstNames) { $initFile = "$firstsFile"; }
else {
  $initFile  = "$lastsFile";
  $lastsFile = $initFile;
  if ( !-f "c:/writing/dict/$initFile" ) {
    $initFile  = "lasts2.txt";
    $lastsFile = "lasts2.txt";
  }
}
my $addStr = lc($fullStr);
$addStr =~ s/\.//g;
$uStr = ucfirst($addStr);

my $alphStr;
if ( !$allowDupe ) {
  $alphStr = join( "", sort( split( //, lc($fullStr) ) ) );
  open( A, "$don" );
  while ( $a = <A> ) {
    if ( $a =~ /===$alphStr/i ) {
      close(A);
      if ( $a =~ /$fullStr$/i ) {
        die(
"According to ppl-done.txt, you've already searched for $fullStr. If you want to allow duplicates, try -d.\n"
        );
      }
      else {
        die(
"According to ppl-done.txt, you've already searched for an anagram of $fullStr. If you want to allow duplicates, try -d.\n"
        );
      }
    }
  }
  close(A);
}

open( A, "$dictDir/$initFile" ) || die("No $initFile.");

open( D, ">>$don" );

print D "=======$alphStr/$uStr\n";

close(D);

open( C, ">>$scr" );

while ( $a = <A> ) {
  chomp($a);
  $a = lc($a);
  $q = alf($a);
  if ( $last{$q} ) { $last{$q} .= "-$a"; }
  else {
    $last{$q} = $a;
  }
}

close(A);

#for $x (sort keys %last) { print "$x: $last{$x}\n"; } die;

readUp( "$firstsFile", 0 );
readUp( "$lastsFile",  1 );

sub findWhat {
  my $x;
  my %used;

  open( A, "$scr" );

  while ( $a = <A> ) {
    if ( $a =~ /^[#=0-9]/ ) { next; }
    if ( $a =~ /^\"/ ) {
      $a =~ s/^.//g;
      $a =~ s/ .*//g;
      $a = lc($a);
      $a =~ s/[^a-z]//g;
    }
    else { next; }
    chomp($a);
    if ( !$used{$a} ) {
      $used{$a} = 1;    #print "----$a\n";
    }
  }
  my $prefs = scalar( keys %used );
  if ( !$prefs ) { print "Yay, all clean.\n"; }
  else {
    $q = "$prefs to sort through:";
    for $x ( sort keys %used ) { $q .= " $x"; }
    print "$q\n";
    open( ERR, ">ppl-err.txt" );
    print ERR $q;
    close(ERR);
  }
  print "TEST RESULTS:Roiling Names,0,$prefs,0,0,";
  if ( !$prefs ) { print "None"; }
  else {
    print
"<a href=\"file://$scr\">Raw File</a>, <a href=\"ppl-err.txt\">Overview</a>\n";
  }
  print "\n";
}

sub readUp {

  print "Reading $_[0] vs $lastsFile.\n";

  open( A, "$dictDir/$_[0]" ) || die("No writing/dict/$_[0]!");

  my $cs = 0;
  my $aalf;
  my $this;
  my $lasty;

  while ( $line = <A> ) {
    chomp($line);
    $line = lc($line);
    if ( $line =~ /[^a-z]/ ) {
      print("Line $. in $_[0] is not alphabetical.\n");
    }
    $b    = "$addStr$line";
    $q    = alf($b);
    $aalf = alf($line);
    if ( $first{$aalf} && ( $_[1] == 0 ) ) { next; }    #skip over 2 first names
    if ( $pinged{$q}   && $first{$line} )  { next; }
    $first{$aalf} = $line;
    if ( $last{$q} || $first{$q} ) {
      $lasty = $last{$q};
      if ( !$lasty ) { $lasty = $first{$q}; }
      if ( $line =~ /(aline|ange)/ ) {
        print "$q to $lasty from $line, but is $b\n";
      }
      if ($printCmds) {
        print "gq $addStr $line > doccheck.txt\n";
      }
      if ($middleName) {
        if ( lc("$line$uStr") eq lc($lasty) ) { next; }
        $this = "$line '$uStr' $lasty";
        $this =~ s/^([a-z])/uc($1)/ge;
      }
      else {
        if ( lc("$uStr$line") eq lc($lasty) ) { next; }
        $this = "$uStr $line $lasty";
      }
      $this =~ s/-([a-z])/-uc($1)/ge;
      $this =~ s/([\.\?!]?\s+[a-z])/uc($1)/ge;
      $count++;
      $cs++;
      if ($period) { $this .= "."; }
      print "\"$this\"$suffix\n";
      print C "\"$this\"$suffix\n";
    }
  }

  print "$count total names found.\n";
  print C "$count total names found.\n";
  if ( $cs < $count ) {
    print "$cs this go-round.\n";
    print C "$cs this go-round.\n=================\n";
  }
  else { print C "~~~~~~~~~~\n"; }
  print "============\n";
  close(A);

}

sub alf {
  my @x = split( //, $_[0] );
  my $z = join( '', sort(@x) );
  return $z;
}

sub seeLeft {
  my $cur;
  my $inList  = 0;
  my $listSum = 0;

  open( A, "$scr" );
  while ( $line = <A> ) {
    if ( $line =~ /^[0-9]/ ) {
      if ($inList) {
        if   ( $tagged{$cur} ) { print "last $listSum"; }
        else                   { print "first $listSum"; }
        $listSum      = 0;
        $inList       = 0;
        $tagged{$cur} = 1;
        next;
      }
    }
    if ( $line =~ /^\"/ ) {
      if ( !$inList ) {
        chomp($line);
        $line =~ s/ .*//g;
        $line =~ s/\"//g;
        print "\nList for $line: ";
      }
      $inList = 1;
      $listSum++;
      next;
    }
  }
  print close($scr);
}

sub usage {
  print <<EOT;
ti.pl big = Big Ernest Steinberg
-e opens the scratch file
-d allow duplicates
-f switch lasts and firsts files
-m big = Ernest 'Big' Steinberg
-p period after text
-pc print commands
-r reverses too
-w sees what is left
EOT
  exit;
}
