###########################
#sso.pl
#scratch sort, does a trivial sort of the ideas I have written down
#

use strict;
use warnings;

my $fileOut = "";
my $titlesPrinted = 0;
my $titles = "";

open(A, "tosort.txt") || die ("Need to be in ROILING directory.");

while (my $line = <A>)
{
  if ($line =~ /\[r\]/)
  {
    if ($line !~ /^\"/) { print "WARNING need start quotes for $line"; }
    elsif ($line !~ /.+\"/) { print "WARNING missing end quotes for $line"; }
    if (!$titlesPrinted)
      { $titles .= $line; }
    elsif ($titlesPrinted > 1) { print "WARNING: title in wrong place $line"; }
  }
  else
  {
    $fileOut .= $line;
    if ($line !~ /[a-z]/)
    {
	  if (!$titles) { print "No titles in first bit."; exit;}
      if (!$titlesPrinted) { $fileOut .= $titles; }
      $titlesPrinted++;
    } 
  }

}

close(A);
open(A, ">tosort2.txt");

print A $fileOut;
close(A);

`copy /Y tosort2.txt tosort.txt`