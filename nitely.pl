######################################################################
# Nitely.pl
# does nightly build/check of my (major in-progress) projects
#
# usage nitely.pl -a -s (for Alec and Stale Tales Slate)
#

use Win32;
use POSIX qw(strftime);

use warnings;
use strict;

my $alec = 0;
my $force = 0;
my $sts = 0;
my $build = 0;
my $opo = 0;

getArgs();

my $boxMsg = "";

if ($opo) { opoNightly(); }
if ($alec) { alecNightly(); }
if ($sts) { stsNightly(); }

if ($opo + $alec + $sts == 0) { usage(); }

Win32::MsgBox("$boxMsg");

sub opoNightly
{
my $q;
my $outfile = "c:/writing/dict/nightly/opolis-latest.txt";
my $datefile = strftime "c:/writing/dict/nightly/opolis-errs-%m-%d-%Y.txt", localtime;

my $threed = "c:/games/inform/threediopolis.inform/source/story.ni";
my $fourd = "c:/games/inform/fourdiopolis.inform/source/story.ni";

my $mod3 = (-M "$threed") < 1;
my $mod4 = (-M "$fourd") < 1;

if ($mod3 || $mod4 || $force)
{
open(OUTFILE, ">$outfile");
printboth("Source code checking:");
sourceCheck("threediopolis");
sourceCheck("fourdiopolis");
$boxMsg .= "Results in $outfile or $datefile.\n";
}
else
{
$boxMsg .= "No Opolis files modified in the last day.\n"; return;
}

}

sub alecNightly
{

my $q;
my $outfile = "c:/writing/dict/nightly/alec-latest.txt";
my $datefile = strftime "c:/writing/dict/nightly/alec-errs-%m-%d-%Y.txt", localtime;

my $pcMain = "c:/games/inform/compound.inform/source/story.ni";
my $scMain = "c:/games/inform/slicker-city.inform/source/story.ni";

my $pmod = (-M "$pcMain") < 1;
my $smod = (-M "$scMain") < 1;

if ($pmod || $smod || $force)
{
open(OUTFILE, ">$outfile");
if ($pmod) { $q = `icl.pl pc 2>&1`; $boxMsg .= "Built Problems Compound.\n"; printboth($q); }
if ($smod) { $q = `icl.pl sc 2>&1`; $boxMsg .= "Built Slicker City.\n"; printboth($q); }
$boxMsg .= "Results in $outfile or $datefile.\n";
my $command = "copy $outfile $datefile";
$command =~ s/\//\\/g;
`$command`;
$q = `conc.pl`;
printboth("Concept match checking:\n$q");

printboth("Source code checking:");
sourceCheck("compound");
sourceCheck("slicker-city");
}
else
{
$boxMsg .= "No Alec Smart files modified in the last day.\n"; return;
}

}

sub stsNightly
{

my $outfile = "c:/writing/dict/nightly/sts-latest.txt";

my $datefile = strftime "c:/writing/dict/nightly/sts-errs-%m-%d-%Y.txt", localtime;

my $rMain = "c:/games/inform/roiling.inform/source/story.ni";
my $sMain = "c:/games/inform/sa.inform/source/story.ni";

my $new = "c:/writing/dict/sts.txt";

my $rrand = "c:/program files (x86)/inform 7/inform7/extensions/andrew schultz/Roiling random text.i7x";
my $srand = "c:/program files (x86)/inform 7/inform7/extensions/andrew schultz/Sa random text.i7x";

my $rmod = (-M "$rrand") < 1;
my $smod = (-M "$srand") < 1;
my $nmod = (-M "$new") < 1;

if (!($force || $rmod || $smod)) { $boxMsg .= "No STS files modified in the past day.\n"; return; }

open(OUTFILE, ">$outfile") || die ("Can't make $outfile");

if (newIdeas()) { printboth("Wrote in new ideas, so I'm sending them to random files."); `stsx.pl`; }
else { print "No new ideas written in, but there's still stuff to sort.\n"; }

printboth("Source code checking:");
sourceCheck("sa");
sourceCheck("roiling");

printboth("Hash value checking:");

my $q = `sts.pl`;

print OUTFILE $q;

printboth("Punctuation checking:");

$q = `punc.pl b`;

print OUTFILE $q;

printboth("Table duplication checking:");

$q = `tsh.pl b`;

print OUTFILE $q;

printboth("Book anagram checking:");

$q = `c:/games/inform/roiling.inform/source/bma.pl`;

print OUTFILE $q;

close(OUTFILE);

if ($nmod) { print "Taking anagram list data.\n"; `lov.pl g`; `lov.pl g s`; }

my $command = "copy $outfile $datefile";
$command =~ s/\//\\/g;
`$command`;

print "Running $command\n";

if ($build != -1)
{
print "Building Roiling.";
`icl.pl ro 2>&1`;
print "Building Shuffling.";
`icl.pl sa 2>&1`;
}

$boxMsg .= "Nightly Stale Tales Slate Script wrote over a debug log to $outfile with a copy to $datefile.\n";
}

###################################
#this gets the arguments and interprets them.
#
sub getArgs
{
  my $a, my $b;
  my $count = 0;
  while ($count <= $#ARGV)
  {
    $a = $ARGV[$count];
	if ($count <= $#ARGV) { $b = $ARGV[$count+1]; } else { $b = ""; }
	for ($a)
	{
	  /-f/ && do { $force = 1; $count++; next; };
	  /-b/ && do { $build = 1; $count++; next; };
	  /-nb/ && do { $build = -1; $count++; next; };
	  /-(3|4|34)/ && do { $opo = 1; $count++; next; };
	  /-a/ && do { $alec = 1; $count++; next; };
	  /-s/ && do { $sts = 1; $count++; next; };
	  /-o(3|4|34)/ && do { openLatest("opolis"); $count++; };
	  /-oa/ && do { openLatest("alec"); $count++; };
	  /-os/ && do { openLatest("sts"); $count++; };
	  /-\?/ && do { usage(); exit; };
	  print "Invalid flag $a specified.\n";
	  usage();
	}
  }
}

sub openLatest
{
`c:\\writing\\dict\\nightly\\$_[0]-latest.txt`;
}

sub usage
{
print <<EOT;
-f = force a nightly check
-b = force a build (individual projects turn it off and on: on for Alec, off for Stale Tales Slate, off for opolis)
-nb = force no build
-3|4|34 = Opolis (Threediopolis, Fourdiopolis)
-a = Alec (Slicker city, Problems Compound)
-s = Stale Tales Slate (Shuffling Around, Roiling Original)
-oa = open latest Alec file
-oa = open latest STS file
EOT
exit;
}

#########################################
#A stub to print to STDOUT and a file
#
sub printboth
{
  print "$_[0]\n";
  print OUTFILE "$_[0]\n";
  print OUTFILE "=" x 20;
  print OUTFILE "\n\n";
}

###########################################
#check for random ideas in my STS file
#
#anything below \ro3 in quotes works
#
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

sub sourceCheck
{
  open(A, "c:/games/inform/$_[0].inform/source/story.ni");
  my $count = 0;
  my $ques = 0;
  while ($a = <A>)
  {
    $count++;
	if ($a =~ /\?\?/) { printboth("Line $count in $_[0] has a coding question.\n$a"); $ques++; }
  }
  printboth("TEST RESULT:source-$_[0],$ques\n");
}