###########################
#sso.pl
#scratch sort, does a trivial sort of the anagram ideas I have written down for both SA and ARO
#
#unanagrammed ideas at the end
#anagrammed at the start
#
#sso.txt sorts ideas in between
#
#also tacks on quotes
#
# to check: 1 check anagrams 2 check done before 3 check sorting into order

use lib "c:/writing/scripts";
use strict;
use warnings;
use i7;

use File::Copy qw(copy);
use Math::Prime::Util "gcd";

####################################constants
my $roil = "c:\\games\\inform\\roiling.inform\\source";
my $inc = "c:\\Program Files (x86)\\Inform 7\\Inform7\\Extensions\\Andrew Schultz";

my $orig = "$roil\\tosort.txt";
my $mod = "$roil\\tosort2.txt";
my $raw = "$roil\\tosort-conv.txt";
my $test = "$roil\\sso-test.txt";
my $stat = "$roil\\sso-stat.txt";

my $readIn = $orig;

########################uncomment below for testing
my $rrf = "Roiling Random Text.i7x";
my $srf = "Shuffling Random Text.i7x";

my $rr = "$inc\\$rrf";
my $sr = "$inc\\$srf";

my $rtemp = "$roil\\$rrf";
my $stemp = "$roil\\$srf";

##########################txtfile is the list of regexes after the 2nd quote
my $txtfile = __FILE__;
$txtfile =~ s/pl$/txt/; # in other words c:\writing\dict\sso.txt
my $code = __FILE__;

###################################globals
my %secondDefault;
my %tableTo;
my %tableAdd;
my $warnings;
#added before

my %regex;
my %hash;
my %details;
my %runoff;
my @roughname = ();
my @tabname = ();
my $line, my $line2;
my $count = 0;

my %caps;
my %punc;
my %quotes;
my %dupes;

##################################options
my $showCrib = 0;
my $dieOnWarnings = 0;
my $fullDebug = 0;
my $writeAdded = 0;
#added before

my $unsorted = 0;
my $blanksYet = 0;
my $idx = 0;
my $y;
my $copyBack = 0; # this default can change
my $compare = 0;
my $numbers = 0;
my $statsOpen = 0;
my $wob = 0;
my $moveToHeader = 1;
my $copyHeaderBack = 0;
my $compareRoil = 0;
my $compareShuf = 0;
my $useTestFile = 1; # mostly covered by copyBack but we can check

while ($count <= $#ARGV)
{
  my $arg = lc($ARGV[$count]);
  for ($arg)
  {
  /^[0-9]/ && do { doAnagrams($ARGV[0]); };
  /\?/ && do { usage(); exit(); };
  /^-?e$/ && do { `$orig`; exit(); };
  /^-?ec$/ && do { np($code); exit(); };
  /^-?o$/ && do { outputLast(); exit(); };
  /^-?e?r$/ && do { `$txtfile`; exit(); }; # forcing options first
  /^-?d$/ && do { $copyBack = 0; $count++; next; };
  /^-?f$/ && do { $copyBack = 1; $count++; next; };
  /^-?n$/ && do { $numbers = 1; $count++; next; };
  /^-?dw(l)$/ && do { $dieOnWarnings = 1 + ($arg =~ /l/); $count++; next; };
  /^-?s$/ && do { $statsOpen = 1; $count++; next; };
  /^-?te$/ && do { $useTestFile = 1; $readIn = $test; $copyBack = 0; $count++; next; };
  /^-?m$/ && do { $moveToHeader = 1; $count++; next; };
  /^-?fd$/ && do { $fullDebug = 1; $count++; next; };
  /^-?wa(l)$/ && do { $writeAdded = 1 + ($arg =~ /l/); $count++; next; };
  /^-?cr$/ && do { $compareRoil = 1; $count++; next; }; #testing
  /^-?cs$/ && do { $compareShuf = 1; $count++; next; }; #testing
  /^-?cb$/ && do { $compareShuf = $compareRoil = 1; $count++; next; }; #testing
  /^-?t$/ && do { $inc = $roil; $count++; next; }; #testing
  /^-?c$/ && do
  {#I'd put the options in alphabetical order, but I want comparing to overrule copy back
    $compare = 1;
	if ($copyBack)
	{
	  print "Turning off copyBack.\n";
	  $copyBack = 0;
    }
	$count++; next;
  };
  print "Invalid parameter: $ARGV[0]\n===============\n";
  usage();
  }
}

if (($readIn eq $test) && ($copyBack == 1))
{
  die ("Can't/won't copy back when the file to process is the test file $test");
}

dupget("$rr");
dupget("$sr");

print "Read mapping file...\n";
####################################open the mapping file
open(A, $txtfile) || die();

while ($line=<A>)
{
  if ($line =~ /^;/) { last; }
  if ($line =~ /^#/) { next; }
  if (($line =~ /^!/))
  {
    print $line if ($showCrib);
	next;
  }
  chomp($line);
  if ($line eq "")
  {
    print "Blank line $.\n";
	next;
  }
  if ($line =~ /~/) # e.g. table=FALSE
  {
    my @hashy = split(/~/, $line);
	$secondDefault{$hashy[0]} = $hashy[1];
	next;
  }
  my @hashy = split(/\t/, $line);
  $hashy[0] = lc($hashy[0]);
  if ($#hashy < 1) { print "Line $. in $txtfile needs a tab.\n"; }
  for (1..$#hashy)
  {
    if (defined($tableTo{$hashy[$_]}))
	{
	  print "$hashy[$_] already sent to $tableTo{$hashy[$_]}, redefined at line $.\n";
	  next;
	}
    $tableTo{$hashy[$_]} = $hashy[0];
	if ($hashy[$_] =~ /^xx/i)
	{
	  $hashy[$_] =~ s/^xx//i;
	  $tableTo{$hashy[$_]} = $hashy[0];
	}
  }
}

close(A);

open(A, $readIn) || die();

my $unusedString = "";

my $quoteBit;
my $tableAbbr;

my $quo;
my %warn;
my $warnLine = 0;
my $majorWarnLine = 0;

OUTER:
while ($line = <A>)
{
  if ($line !~ /^\"/) { $unusedString .= $line; next; }
  $quo = () = $line =~ /"/g;
  if ($quo != 2)
  {
    print "WARNING bad quotes in line $., $line";
	$warnings++;
	$majorWarnLine = $. if (!$majorWarnLine);
	$unusedString .= $line; next;
  }
  $quoteBit = $line;
  chomp($quoteBit);
  $tableAbbr = $quoteBit;
  $tableAbbr =~ s/^\".*\"([^ \t]*).*/$1/;
  $quoteBit =~ s/(^\".*\")([^ \t]*)(.*)/$1$3/;
  if (!$tableAbbr) { $unusedString .= $line; next; }
  if (!defined($tableTo{$tableAbbr}))
  {
    print "WARNING $tableAbbr after $quoteBit doesn't map anywhere, line $.\n";
	$warn{$tableAbbr}++;
	$warnings++;
	$warnLine = $. if (!$warnLine);
	$unusedString .= $line; next;
  }
  if (($quoteBit !~ /\t/) && defined($secondDefault{$tableTo{$tableAbbr}}))
  {
    print "Adding $secondDefault{$tableTo{$tableAbbr}} to $quoteBit which needs 2nd entry\n";
    $quoteBit .= "\t$secondDefault{$tableTo{$tableAbbr}}";
  }
  $tableAdd{$tableTo{$tableAbbr}} .= "$quoteBit\n";
  #print "$idx vs $#x\n";
}

$warnLine = $majorWarnLine if ($majorWarnLine);

my $x;

if ($dieOnWarnings && $warnings)
{
  for $x (sort {$warn{$a} <=> $warn{$b}} keys %warn)
  {
    print "$x: $warn{$x}\n";
  }
  if ($dieOnWarnings == 2)
  {
    my $cmd = "$npo $orig -n$warnLine";
	system($cmd);
	exit();
  }
  die("Clear all warnings before exporting to i7x files.");
  die();
}

my $addText = "";

for (sort keys %tableAdd)
{
  $addText .= "$_\n$tableAdd{$_}\n";
}

print $addText if ($fullDebug);

if ($writeAdded)
{
  open(B, ">$raw");
  print B $addText;
  close(B);
  `$raw` if ($writeAdded == 2);
}

print "$warnings warnings.\n" if $warnings;

close(A);

moveOver($rr, $rtemp);
moveOver($sr, $stemp);

if (scalar keys %tableAdd > 1)
{
  die("Oops, not everything to files: " . join(", ", sort keys %tableAdd));
}

open(B, ">$mod");

print B $unusedString;
close(B);

if ($numbers)
{
  open(A, "$orig");
  close(A);
  my $warnings = 0;
  my $quotedLeft = 0;
  my $unquotedLeft = 0;
  while ($a = <A>)
  {
    if ($a =~ /^;/) { last; }
    if ($a =~ /^\".*\"[a-z0-9]/i)
	{
	  $warnings++;
	}
	elsif ($a =~ /^\".*\"[a-z0-9]/i)
	{
	  $quotedLeft++;
	}
	elsif ($a !~ /^[;#]/)
	{
      $unquotedLeft++;
	}
  }
  close(A);


  my ($second, $minute, $hour, $dayOfMonth, $month, $yearOffset, $dayOfWeek, $dayOfYear, $daylightSavings) = localtime(time);
  my $out = sprintf("QUO %d, UNQUO %d, WARN %d,%d-%02d-%02d %02d:%02d:%02d\n", $quotedLeft, $unquotedLeft, $warnings, $yearOffset+1900, $month+1, $dayOfMonth+1, $hour, $minute, $second);
  open(B, ">>$stat.txt");
  printf B $out;
  close(B);
}

if ($statsOpen) { `$stat`; }

if (!$copyBack) { print "Did not copy tosort2.txt back to tosort.txt.\n"; }
else
{
  my $aroi = meaningful($orig);
  my $a2 = meaningful($mod);
  if (($aroi == $a2) || ($moveToHeader))
  {
  print "Copying back over.\n"; copy $mod, $orig;
  } else { print "Mismatch of meaningful lines: $aroi to $a2.\n"; }
}

if ($compare) { `wm $orig $mod`; }

####################################################################
#
# functions below
#

sub alfPrint
{
  my ($q) = @_;
  if (!$_[0]) { return; }
  my @ary = @$q;
  @ary = sort { wordsIn($a) <=> wordsIn($b) || length($a) <=> length($b) || lc($a) cmp lc($b) } (@ary);
  print B join("\n", @ary);
}

sub wordsIn
{
  my @x = split(/ /, $_[0]);
  return $#x
}

sub meaningful
{
  open(C, "$_[0]");
  my $mea = 0;
  while ($line = <C>)
  {
    if ($line =~ /[a-z]/i) { $mea++; }
  }
  close(C);
  $mea++;
}

sub checkAnagram
{
  my %freq;
  if ($_[0] !~ /^\"/) { return; }
  my $ags = lc($_[0]); $ags =~ s/^\"//; $ags =~ s/\".*//;
  $ags =~ s/\[r\].? by//;
  $ags =~ s/\[toti\]/tio/g;
  #############################get rid of between paren, non ascii below
  $ags =~ s/\[[^\]]*\]//g;
  $ags =~ s/[^a-z]//g;
  my $firstBad = "";
  my @ang = split(//, $ags);
  for (@ang)
  {
    $freq{$_}++;
  }
  my $gcd = 0;
  for my $k (sort keys %freq)
  {
    if ($gcd > 0) { $gcd = gcd($gcd, $freq{$k}); if (($gcd == 1) && $firstBad eq "") { $firstBad = $k; } } else { $gcd = $freq{$k}; }
  }
  if ($gcd == 1)
  {
    if ($_[0] =~ /\[(p|x|px)\]/) { return; }
	$wob++;
    print "Wobbly anagram $wob/$ags line $., probably $firstBad: $_[0]: ";
	for my $k (sort keys %freq) { print "$k$freq{$k}"; }
	print ".\n";
  }
}

sub dupget
{
  open(A, "$_[0]") || die ("No file $_[0]");
  my $line;

  my $inTable = 0;

  while ($line = <A>)
  {
    if ($line =~ /^table.*xx/)
	{
	  #print "Table start at $.\n";
	  <A>;
	  $inTable = 1;
	  next;
	}
	if ($line !~ /[a-z]/i)
	{
	  #if ($inTable) { print "Table end at $.\n"; }
	  $inTable = 0;
    }
	if ($inTable)
	{
    $line = wordsonly($line);
	chomp($line);
	$dupes{$line} = "$.-$_[0]";
	#if ($line =~ /froth/) { print "$line at line $. in $_[0].\n"; }
	}
  }
  close(A);
}

sub wordsonly
{
  my $temp = lc($_[0]);
  $temp =~ s/^\"//;
  $temp =~ s/\".*//;
  $temp =~ s/['\.\!\-\?]//g;
  return $temp;
}

sub moveOver
{
open(A, "$_[0]");
open(B, ">$_[1]");

my $line;
my $tabname;
my $volYet = 0;

while ($line = <A>)
{
  print B $line;
  $volYet = 1 if $line =~ /\[vrt\]/i;
  if (!$volYet) { next; }
  if ($line =~ /^table of .*\[xx/i)
  {
    $tabname = lc($line);
	chomp($tabname);
	$tabname =~ s/[ \t]*\[.*//;
	if (defined($tableAdd{$tabname}))
	{
	  my $l = <A>;
	  print B $l;
	  print B $tableAdd{$tabname};
	  delete $tableAdd{$tabname};
	  # next;
	}
  }
}

close(A);
close(B);

}

sub doAnagrams
{
  my $str;
  my $str2;
  my $endYet = 0;
  my $count = 0;

  open(A, $orig);
  while ($a = <A>)
  {
    if ((!$endYet) && ($a =~ /^[a-z]/i)) { $endYet = 1; }
	if (!$endYet) { next; }
	$str = lc($a);
	chomp($str);
	$str2 = $str; $str2 =~ s/ //g;
	print "gr $str\nanan.pl $str2\nmyan.pl $str2";
	 $count++;
	 if ($count >= $_[0]) { last; }
  }
  die();
}

sub usage
{
print<<EOT;
SSO roughly sorts out anagrams into categories: biopics, regular books, movies, shouty ads, and ALL CAPS entries.
You can also specify the store area at the end of the quotes. X means the name list to start SA.

Sorted always remain on top, non-sorted on bottom, so ctrl-home/end work. Sorting within is by word then letter length.

-c is compare post-run
-d is demo mode. The file doesn't change.
-e edits tosort.txt, -ec edits source code, -er/r edits suffix-to-table file
-f is force copy.
-n adds a line of numbers to the stats file.
-s opens the stats after.
-dw dies on warnings e.g. an invalid has at the end of quoted text
SPECIFIC USAGE:
dns is good for doing the stats etc
c is good for testing
EOT
exit
}
