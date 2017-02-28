###################################################################
#
#aq.pl
#
#deletes specific lines, usually gotten from a run of tsh
#

use strict;
use warnings;

my @temp = ();
my @lines = ();
my $game = "roiling";

##################variables
my $count = 0;
my $curLine = 0;
my $inString = "";
my $itemDeleted = 0;

##################options
my $deleteBracket = 0;
my $sortAuto = 0;

while ($count <= $#ARGV)
{
  $a = $ARGV[$count];
  if ($a =~ /^[0-9]/)
  {
    @temp = split(/,/, $a);
	@lines = (@lines, @temp);
  }
  if ($a =~ /-s/) { $game = "shuffling"; }
  if ($a =~ /-a/) { $sortAuto = 1; }
  if ($a =~ /-d/) { $deleteBracket = 1; }
  if ($a =~ /-x/) { $inString = "x"; }
  $count++;
}

if ($#lines == -1) { print ("Nothing done.\n"); exit; }

my $lastLine = 0;
for (0..$#lines)
{
  my $temp = $lines[$_]; $temp =~ s/d//g;
  if (($temp < $lastLine) && (!$sortAuto)) { die("Out of numerical order at item " . ($_+1) . " or $lines[$_]. Use -a to sort."); }
  $lastLine = $temp;
}

if ($sortAuto) { @lines = reverse(sort(@lines)); }

doLines();

if ($itemDeleted)
{
  print "Re-running nightly since you deleted something\n";
  `c:/writing/dict/nitely.pl -t ana`;
}

sub doLines
{
  my $fileString = "c:/Program Files (x86)/Inform 7/Inform7/Extensions/Andrew Schultz/$game Random Text.i7x";
  $fileString =~ s/\//\\/g;
  print "Do lines " . join(",", @lines) . "\n";
  open(A, "$fileString") || die ("No $fileString");
  open(B, ">$fileString.bak");
  binmode(B);
  $curLine = $lines[0]; $curLine =~ s/[a-z]//g;
  while ($a = <A>)
  {
    chomp($a);
    if ($. == $curLine) { processLine(); } else { print B "$a\n"; }
  }
  close(A);
  close(B);
  if (! -f "$fileString.bak") { die; }
  if (! -f "$fileString") { die; }
  if (((-s "$fileString.bak") < (-s "$fileString")) && (!$deleteBracket) && (!$itemDeleted)) { die ("Oops, data got deleted.\n"); }
  my $cmd = "xcopy /y /q \"$fileString.bak\" \"$fileString\"";
  print "Copying over...\n$cmd\n";
  my $output = `$cmd`;
  print "$output";
}

sub processLine
{
  if ($lines[0] =~ /d/) { print "Deleting line $..\n"; $itemDeleted = 1; return; }
  if ($deleteBracket)
  {
    if ($a !~ / ?\[\]/) { print "Oops, no \[\].\n"; }
	else
	{ $a =~ s/ ?\[\]//i; }
	print B "$a\n";
	shift(@lines);
	$curLine = $lines[0]; $curLine =~ s/[a-z]//g;
  }
  else
  {
  if ($a =~ / \[$inString\]/) { print "$lines[0] $a already commented\n"; print B "$a\n"; }
  else
  {
  #print "$a \[$inString\]\n";
  print B "$a \[$inString\]\n";
  }
  shift(@lines);
  $curLine = $lines[0]; $curLine =~ s/[a-z]//g;
  #print "@lines\n";
  }
}