#myan.pl
#short for "my anagram"
#
#usage: myan.pl (word)
#
#this finds all possible anagrams of a word or sequence of letters, without having to rely on wordsmith.org/anagram. I've drained enough server time from them!

use Time::HiRes qw(time);
use POSIX qw(strftime);

$myBase = lc(@ARGV[0]); $myBase =~ s/[^a-z]//g;

if (length(@ARGV[0]> 16)) { die ("16 chars or fewer please."); }

if (!@ARGV[0]) { die "I need a word to anagram!"; }

$maxAn = 500;
if (@ARGV[1]) { $maxAn = @ARGV[1]; }

$printTimer = 1;

if (lc(@ARGV[2]) eq "n") { $printTimer = 0; }

open(A, "c:/writing/dict/brit-1word.txt") || die ("No dictionary file.");
while ($a = <A>)
{
  $a = lc($a); chomp($a);
  if (contains(@ARGV[0], $a))
  {
  $isWord[length($a)]{$a} = alf($a); $hashy++;
  }
}
  print "$hashy total hashes.\n";

open(B, ">c:/writing/dict/latest-anagram.txt");
print B "========@ARGV[0]========\n";

$b4 = time();

for $maxWords(4..4)
{
findAna($myBase, "", "", 0);
$af = time() - $b4;
if ($printTimer) { printf("\n$maxWords Took %.3f seconds.\n", $af); }
}
$af = time() - $b4;

if ($printTimer) { printf("\nTook %.3f seconds.\n", $af); }

print "$calls\n";

sub findAna
{
  my $x; if ($_[3] > $maxWords) { return; }
  if ($count >= $maxAn) { return; }
  if (!$_[0]) { $anag = $_[1]; $anag =~ s/^-//g; if ($count % 10) { print " "; } elsif ($count) { print "\n"; } $count++; print "$anag, $_[3]"; print B "$anag\n"; }
  my $count;
  my $maxlength;
  $maxlength = length($_[0]);
  my $lo2 = length($_[2]);
  
  if (($lo2) && ($lo2 < $maxlength)) { $maxlength = $lo2; } # this makes sure that we don't search for cowpies-cow-pies and cowpies-pies-cow

  if ($_[3] == $maxWords)
  {
  for my $x (keys %{$isWord[$l]})
  {
    if (alf($x) eq alf($_[0])) { $anag = $_[1]; $anag =~ s/^-//g; if ($count % 10) { print " "; } elsif ($count) { print "\n"; } $count++; print "$anag, $_[3]"; print B "$anag\n"; return; }
  }
  return;
  }

  for (my $l = $maxlength; $l >= 1; $l-- )
  {
  for my $x (sort keys %{$isWord[$l]})
  {
    $calls++;
    if (($l != $lo2) || ($x le $_[2])) # this makes sure that we don't search for coward-war-doc and coward-doc-war
	{
	  if (contains($_[0], $x))
	  {
	  findAna(wd($_[0], $x), "$_[1]-$x", $x, $_[3]+1);
	  }
	}
  }
  }
}

sub contains
{
  if (length($_[0]) < length($_[1])) { return 0; }
  @g = split(//, $_[1]);
  for my $x (@g)
  {
    #print "$_[0] vs $_[1]\n";
    my $a = () = $_[0] =~ /$x/g;
    my $b = () = $_[1] =~ /$x/g;
    #print "$a $x in $_[0], $b $x in $_[1].\n";
    if ($a < $b) { return 0; }
	$retVal += ($a - $b);
  }
  return 1;
  return $retVal;
}

sub alf
{
  return lc($_[0]);
  my @x = split(//, $_[0]);
  return join(sort(@x)); 
}

sub wd
{
  my $temp = $_[0];
  @g = split(//, $_[1]);
  for $x (@g) { $temp =~ s/$x//; }
  return $temp;
}