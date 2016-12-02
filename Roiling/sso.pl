###########################
#sso.pl
#scratch sort, does a trivial sort of the ideas I have written down
#
#unanagrammed ideas at the end
#anagrammed at the start
#
#puts all of the titles in the middle of the file
#

use strict;
use warnings;

my $fileOut = "";
my $titlesPrinted = 0;
my $titles = "";

my @stuff = ();

my $breakYet = 0;
my $midPrintYet = 0;
my $fudge = 0;

my $quoted = 0;
my $unanagrammed = 0;
my $alrSort = 0;
my $endPrintYet = 0;

my $noCopy = 0;

if (defined($ARGV[0]))
{
if (($ARGV[0] eq "-d") || ($ARGV[0] eq "d"))
{
  $noCopy = 1;
}
else { usage(); }
}

open(A, "tosort.txt") || die ("Need to be in ROILING directory.");

while (my $line = <A>)
{
  if ($line =~ /[a-z]/i)
  {
    if (($breakYet) && (!$endPrintYet)) { if ($line =~ /^[a-z]/i) { $endPrintYet = 1; } }
    if (!$breakYet) { $quoted++; if ($line !~ /\[r\]/) { push (@stuff, $line); } }
	elsif (!$endPrintYet) { $alrSort++ }
	else { $unanagrammed++; }
  }
  if (($line !~ /[a-z]/i) && (!$breakYet))
  {
    @stuff = sort { wordsIn($a) <=> wordsIn($b) || length($a) <=> length($b) } (@stuff);
	$fileOut .= join("", @stuff);
	$fileOut .= $line;
	@stuff = ();
	$breakYet = 1;
	next;
  } # first look for first break
  if (($line !~ /[a-z]/i) && ($midPrintYet) && (!$endPrintYet)) { $endPrintYet = 1; } # first look for first break
  if ($breakYet && !$midPrintYet)
  {
    if ($line =~ /[a-z]/i)
	{
	  $fileOut .= $titles; $titlesPrinted = 1; $midPrintYet = 1;
	  if ($line !~ /\[r\]/) { $fileOut .= "\n"; $fudge = 2; }
    }
  }
  if (($line =~ /\[r\]/i) && (!$breakYet))
  {
    if ($line !~ /^\"/) { print "WARNING need start quotes for $line"; }
    elsif ($line !~ /.+\"/) { print "WARNING missing end quotes for $line"; }
	$titles .= $line;
  }
  else
  {
    if ($breakYet) { $fileOut .= $line; }
    if (($line !~ /[a-z]/i) && (!$breakYet))
    {
	  if (!$titles) { print "No titles in first bit."; exit;}
    } 
  }

}

close(A);
open(A, ">tosort2.txt");

print A "$fileOut";
close(A);

if ((-s "tosort.txt") + $fudge != -s "tosort2.txt") { die ("Size mismatch (fudge factor $fudge) " . (-s "tosort2.txt") . " < before, after > " . (-s "tosort.txt")); }
if (!$titlesPrinted) { die ("Oops no titles printed."); }

print "$quoted quoted to sort, $unanagrammed unanagrammed to sort, $alrSort already sorted.\n";

# uncomment for debugging purposes
#die ("Made it, ready to copy back!");

if ($noCopy) { die ("Run again without -d."); }

# in case anything happens
`copy /Y tosort.txt tosort-bk.txt`;

# the big moment
`copy /Y tosort2.txt tosort.txt;`;

sub wordsIn
{
  my @x = split(/ /, $_[0]);
  return $#x
}

sub usage
{
print<<EOT;
d/-d is demo mode. The file doesn't change.
EOT
exit
}