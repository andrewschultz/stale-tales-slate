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
my $quiet = 0;
my %cmd;
my %subs;
my $before;

my @projs = ();
my $proj;

projMap();
getArgs();

for $proj (@projs)
{
  runProj($proj);
}

my $boxMsg = "";

if (!$quiet) { Win32::MsgBox("$boxMsg"); }

sub projMap
{
  my $longStr = "";
  my $curLong = "";
  my $curProj = "";
  open(A, "c:/writing/dict/nitely.txt");
  
  while ($a = <A>)
  {
    chomp($a);
    if ($a =~ /~/)
	{
	  my @b = split(/~/, $a);
	  $subs{$b[0]} = $b[1];
	  next;
	}
	if ($a =~ /=/)
	{
	  my @b = split(/=/, $a);
	  $curProj = $b[0];
	  $curLong = $b[1];
	  next;
	}
	if ($a =~ /^>/)
	{
	  $a =~ s/^>//g;
	  $longStr = "c:/games/inform/$curLong.inform/Source";
	  $a =~ s/\$\$/$curProj/g;
	  $a =~ s/\$l/$curLong/g;
	  $a =~ s/\$d/$longStr/g;
	  if ($cmd{$curProj}) { $cmd{$curProj} .= "\n"; }
	  $cmd{$curProj} .= $a;
	  #print "Command: $a\n";
	  print "$curProj added command $a.\n";
	  next;
	}
  }
}

sub runProj
{
  $before = time();
  print "Running $_[0].\n";
  my $logtext = "";
  my @cmds = split(/\n/, $cmd{$_[0]});
  for (@cmds) { print "RUNNING $_\n"; $logtext .= `$_`; }
  procIt($_[0], $logtext);
}

sub procIt
{
  my $x = "c:/writing/dict/nightly/$_[0].htm";
  my $y = "c:/writing/dict/nightly/$_[0].txt";
  open(B, ">$y"); print B $_[1]; close(B);
  my @c;
  my $thisfail = 0;
  my $thissucc = 0;
  
  my @parseAry = split(/\n/, $_[1]);

  open(B, ">$x");
  print B "<html><title>$_[0] Test Results</title><body><center><table border=1><tr><td>Test Name</td><td>Failures</td><td>Passes</td><td>Comments</td></tr>\n";
  for $a (@parseAry)
  {
    if ($a =~ /^TEST ?RESULT(S?):/)
    {
	  $b = $a; $b =~ s/.*RESULT(S?)://; @c = split(/,/, $b);
	  print "@c from $b\n";
	  print B "<tr><td ";
	  if ($c[1] == 0) { print B "bgcolor=green"; $thissucc++; } else { print B "bgcolor=red"; $thisfail++; }
	  print B ">" . join("</td><td>", @c) . "</td></tr>\n";
	}
  }
  print B "</table border=1></center>\n";
  print B "<center><font size=+3>$thisfail failures, $thissucc successes.</font><br \/>\n";
  my $secs = time() - $before;
  print B $secs . " seconds taken.";
  print B "</center>\n</body></html>";
  close(B);
  `$x`;
}

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
close(OUTFILE);
}
else
{
$boxMsg .= "No Opolis files modified in the last day.\n"; return;
}

procIt($outfile);
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
  my $x;
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
	  /-aa/ && do { for $x (sort keys %cmd) { push(@projs, $x); } $count++; next; };
	  /-a/ && do { @projs = ("3d", "4d", "pc", "sc", "roi", "sa"); $count++; next; };
	  /-t/ && do { my @mylist = split(/,/, $b); for $x (@mylist) { if ($subs{$x}) { @projs = (@projs, split(/,/, $subs{$x})); } else { @projs = (@projs, $x); } } $count += 2; next; };
	  /-q/ && do { $quiet = 1; $count++; next; };
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
