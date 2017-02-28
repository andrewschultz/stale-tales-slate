#################################################
#nucut.pl : originally nudge-cut, to cut from nudge table and create commands
#expanded to twiddling the final 2 letters of a command
#

use strict;
use warnings;

use Win32::Clipboard;

my $clip = Win32::Clipboard::new();

my $x = $clip->Get();

my $clipStr = "";

my @y = split(/\n/, $x);

print "" . ($#y+1) . " total lines.\n";

for (@y)
{
  my $z = $_;
  $z =~ s/[\n\r\t]*$//g;
  if ($z =~ /^>/)
  {
    $z =~ s/ //g;
    $z = lastTwid($z);
	$clipStr .= "$z\nWRONG\n$_\nYour score has just gone up by one point.\n$z\nWRONG\n";
  }
  elsif ($z =~ /\t/)
  {
  my @z2 = split(/\t/, $z);
  $z2[0] =~ s/\"//g;
  $z2[0] = lastTwid($z2[0]);
  $z2[$#z2] =~ s/\"//g;
  $clipStr .= ">$z2[0]\n$z2[$#z2]\n";
  }
  elsif ($z !~ /[a-z]/i) { $clipStr .= "\n"; }
  else
  {
  $clipStr .= $z;
  }
}

print $clipStr;

$clip->Set($clipStr);

sub lastTwid
{
  my @let = split(//, $_[0]);
  my $idx = $#let - 1;
  while ($idx > 0)
  {
    #print "$let[$idx] vs $let[$#let]\n";
    if ("$let[$idx]" ne "$let[$#let]")
	{
	  my $temp = $let[$idx];
	  $let[$idx] = $let[$#let];
	  $let[$#let] = $temp;
	  return join("", @let);
	}
	$idx--;
  }
  return $_[0];
}