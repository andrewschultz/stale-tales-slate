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

my %ary;
my %regHash;
my %rmHash;
my %inLong;

my $printIfThere = 0;

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

my @alf = ( "e", "z", "y", "x", "w", "v", "u", "t", "s", "r", "q", "p", "o", "n", "m", "l", "k", "j", "i", "h", "g", "f", "d", "c", "b", "a" );

#This was when I got odd hash values and didn't have any way to reverse engineer them. I found out what they were.
#foreach $q (sort {$ary{$b} <=> $ary{$a} } keys %ary)
#{ print "$q $ary{$q}\n"; }
#fhbig(179927743, 11); die; ASP
#fhbig(442566855, 11); die; RATTED
#findHash(1096162197) #canoflargeregallager
#findHash(234323315)  #race
#findHash(583551280); #oldhat daltho

#foreach $qq (sort {$ary{$b} <=> $ary{$a} }keys %ary) { print "$qq : $ary{$qq}\n"; } die;

open(B, ">>c:/writing/dict/hv.txt");

# globals
my $doShuf = 1;
my $doRoil = 1;
my $doLoc = 1;

my $openPost = 0;
my $anyFound = 0;
my $worthOpening = 0;
my $lineNum = 0;
my $hash = 0;

my $myRegion = "";

$regHash{"-rf"} = "forest"; $rmHash{"-rf"} = "fields"; $regHash{"-ri"} = "sortie"; $rmHash{"-ri"} = "moor"; $regHash{"-rm"} = "metros"; $rmHash{"-rm"} = "underside";

$regHash{"-ru"} = "routes"; $rmHash{"-ru"} = "mesa"; $regHash{"-rp"} = "presto"; $rmHash{"-rp"} = "gyre"; $regHash{"-rv"} = "troves"; $rmHash{"-rv"} = "rathole"; $regHash{"-rw"} = "towers"; $rmHash{"-rw"} = "trefoil"; $regHash{"-ry"} = "oyster"; $rmHash{"-ry"} = "hops shop"; $regHash{"-rt"} = "otters"; $rmHash{"-rt"} = "inclosure";

my $region = "myreg"; my $rm = "myrm";

#helper vars
my $cmd = "";
my $tabString = "";
my $line;
my $inTable = 0; my $currentTable = 0;
my $found = 0;

for my $idx (0..$#ARGV)
{
  my $this = lc($ARGV[$idx]);
  if ($this =~ /^-?[e!]$/) { $cmd = "start \"\" \"C:/Program Files (x86)/Notepad++/notepad++.exe\" c:/writing/dict/hv.txt"; `$cmd`; exit; }
  if ($this =~ /^-?[o]$/) { $cmd = "start \"\" \"C:/Program Files (x86)/Notepad++/notepad++.exe\" c:/writing/dict/hv.pl"; `$cmd`; exit; }
  if ($this =~ /^-?(c|cl|clean)$/) { cleanUp(); exit; }
  if ($this =~ /-r[a-z]/) { $region = $regHash{$this}; if (!$region) { $region = "myreg"; } $rm = $rmHash{$this}; if (!$rm) { $rm = "myrm"; } next; }
  if ($this =~ /-p/) { $printIfThere = 1; next; }
  if ($this =~ /[0-9]/) { wordit($this); next; }
#  if ($this =~ /-o/) { $myRegion = $this; $myRegion =~ s/^-o//g; if ($myRegion eq "") { die("Need to munge the region with -o."); } next; } # deprecated
  if ($this =~ /-f/) { $openPost = 1; next; }
  if ($this =~ /-s/) { $doShuf = 1; $doRoil = 0; next; }
  if ($this =~ /-r/) { $doShuf = 0; $doRoil = 1; next; }
  if ($this =~ /-m/) { matchHash("shuffling"); matchHash("roiling"); exit; }
  if ($this =~ /\//) { $tabString =$this; $tabString =~ s/\//\t/g; $tabString =~ s/_/ /g; next; }
  if ($this =~ /^-?\?/) { usage(); exit; }
#print "$idx $this\n";
if ($this eq "-t") { print B "TEMPLATE string hashval region room? whatseen? rule? gametext:\n"; next; }

$tabString = "--\t$rm\t--";

#if ($this > 0)
#{
  #$found = 0;
  #print "$this:\n";
  #findHash($this, "", $ary{"e"}); print "\n"; next; }
  
my @these = split(/,/, $this);

if (@these > -1) { print "Checking CSV of list.\n"; }

for my $hword (@these)
{

my @x = split(//, $hword);

$hash = 0;

for my $q (@x)
{
  #print "$q $ary{$q}\n";
  $hash += $ary{$q};
}

if ($doShuf) { lookBoth($hash, "shuffling"); }
if ($doRoil) { lookBoth($hash, "roiling"); }
if ($doLoc) { lookFor($hash, "c:\\writing\\dict\\hv.txt"); }

if (($printIfThere) || ($anyFound == 0)) { print B "\"$hword	\"\t$hash\t$tabString\t\"some text\"\n"; $worthOpening = 1; }
else { print "Instance found in file, not printing externally. Use -p.\n"; }
}

}

close(B);
if ($worthOpening && $openPost) { `c:/writing/dict/hv.txt`; } 

sub wordit
{
  my $total = 0;
  open(A, "c:/writing/dict/brit-1word.txt");
  while ($line = <A>)
  {
    $total = 0;
    chomp($line); $line = lc($line);
	my @q = split(//, $line);
	for (@q) { $total += $ary{$_}; }
	if ($total == $_[0]) { print "FOUND WORD: $line =~ $total\n"; return; }
   #if ($line eq "thing") { print "$line $total\n"; }
   }
  close(A);
  print "No matches for $_[0]. Trying findHash.";
  findHash($_[0]);
}

#####################################
#compare story.ni with nudges to check overlap
sub matchHash
{
my %inFile;
print "Matching hashes for $_[0].\n";
open(A, "c:/games/inform/$_[0].inform/source/story.ni") || die ("No source file");
while ($line = <A>) #first read in the source with table of anagrams
{
  $lineNum++;
  if ($line =~ /^table of anagrams/) { $inTable = 1; }
  if ($inTable && ($line =~ /\t[0-9]/)) { chomp($line); $b = $line; $b =~ s/.*\t//g; $b =~ s/[^0-9].*//g; $inFile{$b} = $lineNum; $inLong{$b} = $line; }
  if ($line !~ /[a-z]/i) { $inTable = 0; }
}
close(A);
open(A, "c:/Program Files (x86)/Inform 7/Inform7/Extensions/Andrew Schultz/$_[0] nudges.i7x") || die ("No nudge file");
while ($line = <A>) #first read in the source with table of anagrams
{
  if ($line =~ /^table of nudges/) { $inTable = 1; }
  if ($inTable && ($line =~ /\t[0-9]/))
  {
    my @tabary = split(/\t/, $line); my $c = $tabary[1];
	if ($inFile{$c}) { print "We have a potential duplicate with hash value $c:\n--$inLong{$c}\n--$line\n"; }
  }
  if ($line !~ /[a-z]/i) { $inTable = 0; }
}

}

sub lookBoth #save some code looking for source and side file
{
lookFor($_[0], "c:/games/inform/$_[1].inform/source/story.ni");
lookFor($_[0], "c:/Program Files (x86)/Inform 7/Inform7/Extensions/Andrew Schultz/$_[1] nudges.i7x");
}

sub lookFor
{
  open(A, "$_[1]") || die ("Can't open $_[1].\n");
  $line = 0;
  if ($_[1] =~ /hv/) { $currentTable = " scrapwork"; }

  my $lineCount = 0;
  my $foundyet = 0;
  while ($line = <A>)
  {
  $lineCount++;
  if ($line =~ /^table of/i) { $currentTable = "($line)"; chomp($currentTable); }
  if (($line !~ /^[a-z]/) || ($line =~ /\t/)) { if ($currentTable ne " scrapwork") { $currentTable = ""; } }
  if ($line =~ /$hash/)
  {
  if (($myRegion) && ($line !~ /$myRegion/))
  { print "REGION-IGNORING\n$line"; }
  else
  { if (!$foundyet) { print "Found in $_[1]$currentTable:\n"; } print "($lineCount) $line"; $foundyet = 1; $anyFound = 1;}
  }
  }
  close(A);
}

sub fhbig
{
  for my $i(3..11)
  {
    print "Checking $_[1] <-> $i\n";
    findHash($_[0], "", $i);
	if ($found) { last; }
  }
}

sub findHash
{
  my $temp;
  my $q;
  my $maxlength = $_[2];
  my $starting = $_[3];
  my $l = length($_[1]);
  
  #print "Parameters: $_[0] $_[1] $_[2] $_[3]...\n";
  
  if (!$maxlength) { $maxlength = 11; }
  if (($l < 0) || ($found)) { return; }
  #print "Trying $_[0]/$_[1]/$_[2]\n";
  if ($_[0] == 0)
  { print "Found hash $_[1]!"; $found = 1; return; }
  elsif ($_[0] < 0)
  { return; }
  else
  {
    for my $idx ($starting..$#alf)

	{ #if ($ary{$q} > $_[3]) { next; }
	  #print "$q $ary{$q}\n";
	  $q = $alf[$idx];
	  my $temp = $_[0];
	  #print "$temp vs ($maxlength - $l) * $ary{$q} = " . ($maxlength - $l) * $ary{$q} . "\n";
	  if ($temp > (($maxlength - $l) * $ary{$q})) { last; }
	  if ($temp < $ary{$q}) { next; }
	  
	  findHash($temp - $ary{$q}, "$_[1]$q", $maxlength, $idx);
	}
  }
}

sub cleanUp
{
  my $toClean = 0;
  open(A, "c:/writing/dict/hv.txt") || do { print "TEST RESULTS:HV.TXT wasn't read,grey,0.0\n"; return; };
  while ($line = <A>)
  {
    if ($line =~ /\t[0-9]/) { $toClean++; }
  }
  print "TEST RESULTS:HV.TXT clean,3,$toClean,0\n";
}

sub usage
{
print <<EOT;
-r(letter) = force room and region name (only room now that error tables divided by region)
-p = print if there, override if the hash is already in the source
# = reverse-lookup a hash number
-oREGION = force region name (deprecated)
-c = run cleanup test on hv.txt
-f = file open after
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