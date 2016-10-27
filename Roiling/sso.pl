###########################
#sso.pl
#scratch sort, does a trivial sort of the ideas I have written down
#

use strict;
use warnings;

my $fileOut = "";
my $titlesPrinted = 0;
my $titles = "";

my $breakYet = 0;
my $midPrintYet = 0;
my $fudge = 0;

open(A, "tosort.txt") || die ("Need to be in ROILING directory.");

while (my $line = <A>)
{
  if (($line !~ /[a-z]/i) && (!$breakYet)) { $fileOut .= $line; $breakYet = 1; next; } # first look for first break
  if ($breakYet && !$midPrintYet)
  {
    if ($line =~ /[a-z]/i) { $fileOut .= $titles; $titlesPrinted = 1; $midPrintYet = 1; if ($line !~ /\[r\]/) { $fileOut .= "\n"; $fudge = 2; } }
  }
  if (($line =~ /\[r\]/i) && (!$breakYet))
  {
    if ($line !~ /^\"/) { print "WARNING need start quotes for $line"; }
    elsif ($line !~ /.+\"/) { print "WARNING missing end quotes for $line"; }
	$titles .= $line;
  }
  else
  {
    $fileOut .= $line;
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

# for debugging purposes
die ("Made it, ready to copy back!");

# in case anything happens
`copy /Y tosort.txt tosort-bk.txt`;

# the big moment
`copy /Y tosort2.txt tosort.txt;`