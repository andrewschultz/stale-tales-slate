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

####################################constants
my $roil = "c:\\games\\inform\\roiling.inform\\Source\\tosort.txt";
my $r2 = "c:\\games\\inform\\roiling.inform\\Source\\tosort2.txt";

###################################globals
my %hash;
my @x = ();
my $line;
my @intro = ();
my @endLump = ();

my $unsorted = 0;
my $blanksYet = 0;
my $idx = 0;
my $y;
my $copyBack = 0; # this default can change
my $compare = 0;
my $numbers = 0;
my $statsOpen = 0;

if (defined($ARGV[0]))
{
  if ($ARGV[0] =~ /o/) { outputLast(); exit(); }
  if ($ARGV[0] =~ /d/) { $copyBack = 0; }
  if ($ARGV[0] =~ /e/) { `$roil\\toSort.txt`; exit(); }
  if ($ARGV[0] =~ /f/) { $copyBack = 1; }
  if ($ARGV[0] =~ /n/) { $numbers = 1; }
  if ($ARGV[0] =~ /s/) { $statsOpen = 1; }
  if ($ARGV[0] =~ /c/) #must be out of alphabetical ordedr so compare trumps copy back
  {
    $compare = 1;
	if ($copyBack)
	{
	  print "Turning off copyBack.\n";
	  $copyBack = 0;
    }
  }
  $ARGV[0] =~ s/[cdfns-]//g;
  if ($ARGV[0]) { usage(); }
}

####################################open the mapping file
open(A, "c:\\writing\\dict\\sso.txt") || die();

while ($line=<A>)
{
  if ($line =~ /^;/) { last; }
  if ($line =~ /^#/) { next; }
  chomp($line);
  push(@x, $line);
}

close(A);

open(A, "$roil") || die();

while ($line = <A>)
{
  if ($line =~ /^========/) { $unsorted = 1; next; }
  if ($line !~ /[a-z]/i) { $blanksYet = 1; next; }
  chomp($line);
  if (($line !~ /^\"/) && (!$blanksYet)) { print "Quotes added line $., $line\n"; $line = "\"$line\""; }
  if ($unsorted) { push (@endLump, $line); next; }
  $idx = 0;
  for $y (@x)
  {
    if ($line =~ /$y/)
    {
      #if ($idx == 3) { print "$idx ($.). $y: $line\n"; }
	  $hash{$y} .= "$line\n"; last;
    }
    $idx++;
  }
  if ($idx > $#x) { push (@intro, $line); }
  #print "$idx vs $#x\n";
}

close(A);

open(B, ">$r2");

alfPrint(\@intro);

for my $j (@x)
{
  if (defined($hash{$j})) { print B "$hash{$j}\n"; }
}

print B "========\n";
alfPrint(\@endLump);

close(B);

if ($numbers)
{
  open(A, "$roil\\tosort.txt");
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
{ print "Copying back over.\n"; copy $r2, $roil; }

if ($compare) { `wm $roil $r2`; }

####################################################################
#
# functions below
#

sub alfPrint
{
  my ($q) = @_;
  if (!$_[0]) { return; }
  my @ary = @$q;
  @ary = sort { wordsIn($a) <=> wordsIn($b) || length($a) <=> length($b) } (@ary);
  print B join("\n", @ary);
}

sub wordsIn
{
  my @x = split(/ /, $_[0]);
  return $#x
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
