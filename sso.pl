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

use strict;
use warnings;

use File::Copy qw(copy);
use Math::Prime::Util "gcd";

####################################constants
my $orig = "c:\\games\\inform\\roiling.inform\\Source\\tosort.txt";
my $mod = "c:\\games\\inform\\roiling.inform\\Source\\tosort2.txt";

my $inc = "c:\\Program Files (x86)\\Inform 7\\Inform7\\Extensions\\Andrew Schultz";
my $roil = "c:\\games\\inform\\roiling.inform\\source";
########################uncomment below for testing
$inc = $roil;

my $rr = "Roiling Random Text.i7x";
my $sr = "Shuffling Random Text.i7x";

my $txtfile = __FILE__;
$txtfile =~ s/pl$/txt/;

###################################globals
my %regex;
my %hash;
my @tabname = ();
my $line, my $line2;
my @intro = ();
my @endLump = ();

my %dupes;

my $unsorted = 0;
my $blanksYet = 0;
my $idx = 0;
my $y;
my $copyBack = 0; # this default can change
my $compare = 0;
my $numbers = 0;
my $statsOpen = 0;
my $inHeader = 1;
my $header = "";
my $wob = 0;
my $moveOver = 0;

if (defined($ARGV[0]))
{
  if ($ARGV[0] =~ /\?/) { usage(); exit(); }
  if ($ARGV[0] =~ /e/) { `$orig`; exit(); }
  if ($ARGV[0] =~ /o/) { outputLast(); exit(); }
  if ($ARGV[0] =~ /r/) { `$txtfile`; exit(); } # forcing options first
  if ($ARGV[0] =~ /d/) { $copyBack = 0; }
  if ($ARGV[0] =~ /f/) { $copyBack = 1; }
  if ($ARGV[0] =~ /n/) { $numbers = 1; }
  if ($ARGV[0] =~ /s/) { $statsOpen = 1; }
  if ($ARGV[0] =~ /m/) { $moveOver = 1; }
  if ($ARGV[0] =~ /t/) { $inc = $roil; } #testing
  if ($ARGV[0] =~ /c/) #I'd put the options in alphabetical order, but I want comparing to overrule copy back
  {
    $compare = 1;
	if ($copyBack)
	{
	  print "Turning off copyBack.\n";
	  $copyBack = 0;
    }
  }
  $ARGV[0] =~ s/[cdfnstrom-]//g;
  if ($ARGV[0]) { print "Invalid letters: $ARGV[0]\n===============\n"; usage(); }
}

dupget("$inc\\$rr");
dupget("$inc\\$sr");

####################################open the mapping file
open(A, $txtfile) || die();

while ($line=<A>)
{
  if ($line =~ /^;/) { last; }
  if ($line =~ /^#/) { next; }
  chomp($line);
  my @hashy = split(/\t/, $line);
  if ($#hashy != 1) { die "Hash lines need a \\t for what table it maps to and the regex: line $. as $line fails."; }
  push(@tabname, $hashy[0]);
  $regex{$hashy[0]} = $hashy[1];
}

close(A);

open(A, "$orig") || die();

while ($line = <A>)
{
  if ($inHeader)
  {
    if ($line =~ /^#/) { $header .= $line; next; }
	$inHeader = 0;
  }
  if ($line =~ /^========/) { $unsorted = 1; next; }
  if ($line !~ /[a-z]/i) { $blanksYet = 1; next; }
  chomp($line);
  if ($dupes{wordsonly($line)}) { print "Duplicate $line ($.) details $dupes{wordsonly($line)}\n"; }
  checkAnagram($line);
  if (($line !~ /^\"/) && (!$blanksYet)) { print "Quotes added line $., $line\n"; $line = "\"$line\""; }
  if ($unsorted) { push (@endLump, $line); next; }
  $idx = 0;
  $line2 = $line; $line2 =~ s/ *\[(p)?\]$//; # ignore duplicator at line end
  for $y (@tabname)
  {
    if ($line =~ /$regex{$y}/)
    {
      #if ($idx == 3) { print "$idx ($.). $y: $line\n"; }
	  $hash{$y} .= "$line\n"; last;
    }
    $idx++;
  }
  if ($idx > $#tabname) { push (@intro, $line); }
  #print "$idx vs $#x\n";
}

close(A);

if ($moveOver) { moveOver($rr); moveOver($sr); die(); }

open(B, ">$mod");

print B $header;

alfPrint(\@intro);

print B "\n\n";

for my $j (@tabname)
{
  if (defined($hash{$j})) { print B "$hash{$j}\n"; }
}

print B "========\n";
alfPrint(\@endLump);

close(B);

if ($numbers)
{
  open(A, "$orig");
  my $empties = 0;

  while ($line = <A>) { if ($line !~ /[a-z]/i) { $empties++; } }

  print "$. $empties\n";
  my $totalNonEmpty = $. - $empties;
  close(A);

  my ($second, $minute, $hour, $dayOfMonth, $month, $yearOffset, $dayOfWeek, $dayOfYear, $daylightSavings) = localtime(time);
  my $out = sprintf("%d,%d,%d,%d-%02d-%02d %02d:%02d:%02d\n", ($#intro+1), ($#endLump+1), $totalNonEmpty, $yearOffset+1900, $month+1, $dayOfMonth+1, $hour, $minute, $second);
  open(B, ">>$roil\\sso-stat.txt");
  printf B $out;
  close(B);
}

if ($statsOpen) { `$roil\\sso-stat.txt`; }

if (!$copyBack) { print "Did not copy file over.\n"; }
else
{
  my $aroi = meaningful($orig);
  my $a2 = meaningful($mod);
  if ($aroi == $a2)
  {
  print "Copying back over.\n"; copy $mod, $roil;
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
open(B, ">$_[0].bak");

my $line;

while ($line = <A>)
{
  print B $line;
  if ($line =~ /^table of .*\[xx/)
  {
    print "Table line $line";
    INNER: for my $j (@tabname)
	{
	  if ($line =~ /$j/)
	  {
        print "!!!! $line vs $j/$regex{$j}\n";
	    if (defined($hash{$j}))
	    {
	    print "Adding to $j/$regex{$j}\n";
	    print B <A>;
		print B $hash{$j};
		delete($hash{$j});
		print "17\n";
		last INNER;
		}
	  }
	}
  }
}

close(A);
close(B);

}

sub usage
{
print<<EOT;
SSO roughly sorts out anagrams into categories: biopics, regular books, movies, shouty ads, and ALL CAPS entries.
You can also specify the store area at the end of the quotes. X means the name list to start SA.

Sorted always remain on top, non-sorted on bottom, so ctrl-home/end work. Sorting within is by word then letter length.

c/-c is compare post-run
d/-d is demo mode. The file doesn't change.
e/-e edits tosort.txt.
f/-f is force copy.
n/-n adds a line of numbers to the stats file.
s/-s opens the stats after.
dns is good for doing the stats etc
EOT
exit
}
