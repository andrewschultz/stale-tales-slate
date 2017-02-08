########################################
 #
#wmet.pl
#
#Work out METrics of how many possibilities there are for each STS game
#
#one possible bug fix is to scan through for minimums and maxes

use POSIX;

use strict;
use warnings;

#####constants
my $inFile = "c:\\writing\\dict\\wmet.txt";
my $outFile = "c:\\writing\\dict\\metrics.htm";

#####options
my $printSettler = 1;
my $settlerToo = 1;
my $debug = 0;
my $launch = 1;

#####vars
my @fact; # factorial array so don't have to keep recalculating
my $lg, my $t1, my $t2; # t1 = length sum,  t2 = length square sum for RMS
my $poss;
my $k;
my $sett; # settler possibilities
my $thislog, my $thisset;
my $header;
my $inHere = 0;

if (defined($ARGV[0]))
{
if ($ARGV[0] eq "-d") { $debug = 1; }
if ($ARGV[0] eq "-l") { $launch = 1; }
}

open(A, $inFile) || die ("Can't open $inFile.");
open(B, ">$outFile");

print B "<html>\n<title>Stale Tales Slate Difficulty Metrics</title><body>\n<center><font size=+3>Stale Tales Slate Possibilities Metrics (RMS = root mean square)</font><br><font size=+2>Shuffling Around</font><table border=1>\n";

print B "<tr><th>test run<th>Anagrams<th>Letters<th>&Sigma;Letters^2<th>Average<th>RMS<th>&Sigma;Log(poss., no device)<th>Average<th>&Sigma;Log(poss. with gadget)<th>Average\n";

$fact[0] = 1;
for (1..12) { $fact[$_] = $_ * $fact[$_-1]; }

while ($a = <A>)
{
  chomp($a); #$a = lc($a);
  if ($debug) { print "$a\n"; }
  if ($a =~ /^;/) { last; }
  if ($a =~ /^#/) { last; }
  if ($a !~ /\//) #this is risky code but it catches if there is just 1 item on a line.
  {
    evaluate();
    $header = $a;
  if ($a =~ /^==/) { print B "</table>\n<font size=+2>A Roiling Original</font><table border=1>\n";
  print B "<tr><th>test run<th>Anagrams<th>Letters<th>&Sigma;Letters^2<th>Average<th>RMS<th>&Sigma;Log(poss., no device)<th>Average<th>&Sigma;Log(poss. with settler)<th>Average\n"; }
  }
  else
  {
    my @b = split(/[\/,]/, $a);
    for (@b)
    {
	  $lg = length($_);
      $t1 += $lg;
      $t2 += $lg**2; #print "To $t1 $t2\n";
	  $poss = perms($_);
	  $thislog += log($poss);
	  $thisset += log($sett);
      $inHere++;
    }
  }
}

evaluate();

print B "</table></center>\n(NOTE 1: more logical possibilities does not mean something is tougher, especially since there may be alternate clues elsewhere, so this is only meant as an estimate. Some areas' themes are more restrictive than others'.)\n<br>(NOTE 2: Store T's theme helps cut possibilities, and H's theme should be a big hint)\n<br>(NOTE 3: Some maximum averages may be higher than minimum averages due to side quests or LLPs that are easier than the main puzzles.)</body>\n</html>\n";

close(B);

if ($launch) { `$outFile`; }

############################################
#subroutines
#

sub evaluate
{
  if (!$inHere) { return; }
  my $t1a = $t1 / $inHere;
  my $t2a = $t2 / $inHere;
  my $t2b = $t2a ** .5;

  if ($t1 > 0)
  {
    my $tla = $thislog / $inHere;
	my $tlb = $thisset / $inHere;
    my $toB = sprintf("<tr><td>%s<td %s>%2d<td %s>%3d<td %s>%4d<td %s>%4.2f<td %s>%4.2f<td %s>%6.2f<td %s>%4.2f<td %s>%6.2f<td %s>%4.2f\n",
      $header,
	  torgb($inHere, 3, 45.01), $inHere, # total puzzles
	  torgb($t1, 18, 321.1), $t1, # letters
	  torgb($t2, 97, 2710), $t2, # letters square sum
	  torgb($t1a, 4,  8), $t1a, # avg letters
	  torgb($t2b, 4, 8.13), $t2b, # RMS letters
	  torgb($thislog, 16.65, 392), $thislog, # sum of logs of possibilities without settlers
	  torgb($tla, 4, 9.52), $tla, # average of logs of possibilities without settlers
	  torgb($thisset, 8, 225), $thisset, # sum of logs of possibilities with settlers
	  torgb($tlb, 2, 5.5), $tlb); # average of logs of possibilities with settlers
	print B $toB;
    $t1 = 0;
    $t2 = 0;
    $inHere = 0;
	$thislog = 0;
	$thisset = 0;
  }
}

sub torgb
{
  my $x = 255 - floor(($_[0]-$_[1]) * 256 / ($_[2]-$_[1]));
  my $retStr;
  if ($x < 0)
  {
    print  "WARNING $a gives $_[0] $_[1] $_[2] < 0\n";
    $x = 0;
  }
  if ($x > 255)
  {
    print  "WARNING $a gives $_[0] $_[1] $_[2] > 255\n";
    $x = 255;
  }
  if ($header =~ /^ZZZ/i)
  {
  $retStr = sprintf("td bgcolor=c0%02x40", $x);
  }
  else
  {
  $retStr = sprintf("td bgcolor=ff%02x00", $x);
  }
  return $retStr;
}

sub perms
{
  my @ary = split(//, $_[0]);
  my $vowels = 0;
  my $cons = 0;
  my $ys = 0;
  my %let;

  for (@ary) { $let{$_}++; if ($_ =~ /[aeiou]/) { $vowels++; } elsif ($_ =~ /[y]/i) { $ys++; } else { $cons++; } }

  my $poss = $fact[length($_[0])];
  if ($header =~ /^sa/)
  {
  $sett = $fact[length($_[0])-2];
  }
  else
  {
  $sett = $fact[$vowels] * $fact[$cons] * $fact[$ys];
  if ($printSettler) { print "$_[0] = $sett\n"; }
  }
  for $k (keys %let) { $sett /= $fact[$let{$k}]; $poss /= $fact[$let{$k}]; $let{$k} = 0; }
  #print "$_[0] -> $poss $sett\n";
  return $poss;
}