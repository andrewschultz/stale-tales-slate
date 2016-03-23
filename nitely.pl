use Win32;
use POSIX qw(strftime);

use warnings;
use strict;

my $force = 0;

my $outfile = "c:/writing/dict/nightly/latest.txt";

my $datefile = strftime "c:/writing/dict/nightly/anagram-errs-%m-%d-%Y.txt", localtime;

if (($#ARGV > -1) && ($ARGV[0] eq "-f")) { $force = 1; }

my $rMain = "c:/games/inform/roiling.inform/source/story.ni";
my $sMain = "c:/games/inform/sa.inform/source/story.ni";

my $new = "c:/writing/dict/sts.txt";

my $rrand = "c:/program files (x86)/inform 7/inform7/extensions/andrew schultz/Roiling random text.i7x";
my $srand = "c:/program files (x86)/inform 7/inform7/extensions/andrew schultz/Sa random text.i7x";

my $rmod = (-M "$rrand") > 1;
my $smod = (-M "$srand") > 1;
my $nmod = (-M "$new") > 1;

if (!$force && (!($rmod || $smod))) { Win32::MsgBox("No files modified in the past day."); die;}

open(OUTFILE, ">$outfile") || die ("Can't make $outfile");

if (newIdeas()) { printboth("Wrote in new ideas, so I'm sending them to random files."); `stsx.pl`; }
else { print "No new ideas written in, but there's still stuff to sort.\n"; }

printboth("Punctuation checking:");

my $q = `punc.pl b`;

print OUTFILE $q;

printboth("Table duplication checking:");

$q = `tsh.pl b`;

print OUTFILE $q;

printboth("Book anagram checking:");

$q = `c:/games/inform/roiling.inform/source/bma.pl`;

print OUTFILE $q;

close(OUTFILE);

my $command = "copy $outfile $datefile";
$command =~ s/\//\\/g;
`$command`;

print "Running $command\n";

Win32::MsgBox("Nightly Stale Tales Slate Script wrote over a debug log to $outfile with a copy to $datefile.");

sub printboth
{
  print "$_[0]\n";
  print OUTFILE "$_[0]\n";
  print OUTFILE "=" x 20;
  print OUTFILE "\n\n";
}

sub newIdeas
{
  open(A, "c:/writing/dict/sts.txt") || return 0;
  while ($a = <A>)
  {
    if ($a =~ /^\"/) { close(A); return 1; }
    if ($a =~ /^\\ro3/) { close(A); return 0; }
  }

  return 0;
}