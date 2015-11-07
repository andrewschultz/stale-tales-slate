#myan.pl
#short for "my anagram"
#
#usage: myan.pl (word)
#
#this finds all possible anagrams of a word or sequence of letters, without having to rely on wordsmith.org/anagram. I've drained enough server time from them!

use Time::HiRes qw(time);
use POSIX qw(strftime);

$myBase = lc(@ARGV[0]); $myBase =~ s/[^a-z]//g;

if (!@ARGV[0]) { die "I need a word to anagram!"; }

open(A, "c:/writing/dict/brit-1word.txt") || die ("No dictionary file.");
while ($a = <A>)
{
  $a = lc($a); chomp($a);
  $isWord[length($a)]{$a} = alf($a);
}

open(B, ">c:/writing/dict/latest-anagram.txt");
print B "========@ARGV[0]========\n";

$b4 = time();
findAna($myBase, "");
$af = time() - $b4;

printf("Took %.3f seconds.\n", $af);

sub findAna
{
  my $x;
  if (!$_[0]) { $anag = $_[1]; $anag =~ s/^-//g; $count++; print "Anagram $count: $myBase = $anag\n"; print B "$anag\n"; }
  my $count;
  my $maxlength;
  $maxlength = length($_[0]);
  my $lo2 = length($_[2]);
  
  if (($lo2) && ($lo2 < $maxlength)) { $maxlength = $lo2; } # this makes sure that we don't search for cowpies-cow-pies and cowpies-pies-cow

  for (my $l = $maxlength; $l >= 1; $l-- )
  {
  for my $x (sort keys %{$isWord[$l]})
  {
    if (($l != $lo2) || ($x le $_[2])) # this makes sure that we don't search for coward-war-doc and coward-doc-war
	{
	  if (contains($_[0], $x))
	  {
	  findAna(wd($_[0], $x), "$_[1]-$x", $x);
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
    $a = () = $_[0] =~ /$x/g;
    $b = () = $_[1] =~ /$x/g;
    #print "$a $x in $_[0], $b $x in $_[1].\n";
    if ($a < $b) { return 0; }
  }
  return 1;
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