use POSIX;

$printSettler = 1;

$settlerToo = 1;

$inFile = "c:/writing/dict/wmet.txt";
$outFile = "c:/writing/dict/metrics.htm";

if (@ARGV[0] eq "-d") { $debug = 1; }

open(A, $inFile) || die ("Can't open $inFile.");
open(B, ">$outFile");

print B "<html>\n<title>Stale Tales Slate Difficulty Metrics</title><body>\n<center><font size=+3>Stale Tales Slate Possibilities Metrics (RMS = root mean square)</font><br><font size=+2>Shuffling Around</font><table border=1>\n";

print B "<tr><th>test run<th>Anagrams<th>Letters<th>&Sigma;Letters^2<th>Average<th>RMS<th>&Sigma;Log(poss., no device)<th>Average<th>&Sigma;Log(poss. with gadget)<th>Average\n";

@fact[0] = 1;

for (1..12) { @fact[$_] = $_ * @fact[$_-1]; }

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
    @b = split(/[\/,]/, $a);
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

sub evaluate
{
  if (!$inHere) { return; }
  my $t1a = $t1 / $inHere;
  my $t2a = $t2 / $inHere;
  my $t2b = $t2a ** .5;
  if ($t1 > 0)
  {
    $tla = $thislog / $inHere;
	$tlb = $thisset / $inHere;
    $toB = sprintf("<tr><td>%s<td %s>%2d<td %s>%3d<td %s>%4d<td %s>%4.2f<td %s>%4.2f<td %s>%6.2f<td %s>%4.2f<td %s>%6.2f<td %s>%4.2f\n",
      $header,
	  torgb($inHere, 8, 40), $inHere,
	  torgb($t1, 40, 260), $t1,
	  torgb($t2, 363, 1850), $t2,
	  torgb($t1a, 4,  8), $t1a,
	  torgb($t2b, 4, 8.1), $t2b,
	  torgb($thislog, 70, 225), $thislog,
	  torgb($tla, 4, 9.5), $tla,
	  torgb($thisset, 40, 170), $thisset,
	  torgb($tlb, 2, 5.5), $tlb);
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
  if ($x < 0) { $x = 0; }
  if ($x > 255) { $x = 255; }
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

  for (@ary) { $let{$_}++; if ($_ =~ /[aeiou]/) { $vowels++; } elsif ($_ =~ /[y]/i) { $ys++; } else { $cons++; } }

  my $poss = @fact[length($_[0])];
  if ($header =~ /^sa/)
  {
  $sett = @fact[length($_[0])-2];
  }
  else
  {
  $sett = @fact[$vowels] * @fact[$cons] * @fact[$ys];
  if ($printSettler) { print "$_[0] = $sett\n"; }
  }
  for $k (keys %let) { $sett /= @fact[$let{$k}]; $poss /= @fact[$let{$k}]; $let{$k} = 0; }
  #print "$_[0] -> $poss $sett\n";
  return $poss;
}