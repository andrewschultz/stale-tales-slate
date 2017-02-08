####################################
#
#alfy.pl
# this alphabetizes the clipboard
#
use Win32::Clipboard;

use strict;
use warnings;

if (defined($ARGV[0]) && ($ARGV[0] eq "-c"))
{
my $newClip = Win32::Clipboard::new();
my $clip = $newClip->GetText;
chomp($clip);
alfit("alf-clip.txt", $clip);
}
else
{
   die("Only flag so far is -c to send clipboard to an alphabetically ordered source file.");
}

#########################################
#subroutines
#

sub alfit
{

my @ary = split(/\n/, $_[1]);

my @alfs = sort {lch($a) cmp lch($b)} @ary;

open(A, ">$_[0]");

for (0..$#alfs) { print A "$alfs[$_]"; }

}


################################
#ignore start of line nonalphanumeric

sub lch
{
  my $temp = $_[0];

  $temp = lc($temp);
  $temp =~ s/^[^a-z]//gi;
  return $temp;

}