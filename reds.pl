#reds.pl
#
# usage: reds.pl reds.txt (for all the files)
# reds.pl knob bonk (to check individual reds)
# requires: reds.txt
#
# this determines whether things that clue red do so properly
# e.g. red knob would clue BONK but red skis should not clue KISS
#

use Algorithm::Permute;

$myMax = 1000;
$maxLetters = 20;


$checkForDup = 0;

while ($cur <= $#ARGV)
{
  for (@ARGV[$cur])
  {
  /-a/ && do { $lookDif = 1; $cur++; next; };
  /-f/ && do { $fileName = @ARGV[$cur+1]; $cur += 2; next; };
  /-y/ && do { $fileName = "reds.txt"; $settler = 1; $cur++; next; };
  /-n/ && do { $fileName = "reds.txt"; $settler = 0; $cur++; next; };
  /-l/ && do {$maxLetters = @ARGV[$cur+1]; $cur += 2; next; };
  /-m/ && do {$myMax = @ARGV[$cur+1]; $cur += 2; next; };
  /\./ && do { $fileName = @ARGV[$cur]; $cur++; next; };
  $cur = $#ARGV + 1;
  }
}

if (!$fileName) { $printResults = 1; @letArray = split(//, "@ARGV[0]"); @array = @ARGV; oneRed(); }
else
{
  $printResults = 0;
  open(A, $fileName);
  while ($a = <A>)
  {
    chomp($a);
	if ($a =~ /^#/) { next; }
	if ($a =~ /^;/) { last; }
	@array=split(/,/, $a);
	if ($settler) { $foundPct = 0; for (@array) { if ($_ =~ /%/) { $foundPct = 1; } } if (!$foundPct) { @array = (@array, "%"); } }
	@letArray = split(//, @array[0]);
	oneRed();
  }
  close(A);
}


sub oneRed
{

$succ = 0;

@lets = sort(@letArray);

my $p_iterator = Algorithm::Permute->new ( \@letArray );

$checkForDup = 0;

for (0..$#lets) { if (@lets[$_] eq @lets[$_+1]) { $checkForDup = 1; } }

@perm = split(//, "@array[0]");

for $j (1..$#array)
{
  if (@array[$j] eq "%")
  { @array[$j] = "";
    for $i (0..$#perm)
	{
	  if ($perm[$i] =~ /[aeiou]/) { @array[$j] .= "!"; }
	  elsif ($perm[$i] eq "y") { @array[$j] .= "Y"; }
	  else { @array[$j] .= "#"; }
	}
  }
}

for $j (1..$#array)
{
  if (@array[$j] =~ /^1-/) { @array[$j] =~ s/^1-//g; @onematch[$j] = 1; } else { $onematch[$j] = 0; }
}

if ($temp = isOops(@array[0])) { die "@array[0] fails the test at word $temp, @array[$temp].\n"; }

if (length(@array[0]) > $maxLetters) { print "@array[0] too long.\n"; return; }

for $x (@perm)
{
  for $z (0..$#perm)
  {
    $statFin{"$x-$z"} = 0;
  }
}

while (@perm = $p_iterator->next)
{
  $j = join("", @perm);
  if ($checkForDup == 1) { if ($dupHash{$j}) { next; } else { $dupHash{$j} = 1; } }

  if (!isOops($j))
  {
    $succ++;
	
	for (0..$#perm) { $statFin{"@perm[$_]-$_"}++; }
    if ($succ <= $myMax)
    {
      if ($printResults) { print "$succ: $j is ok.\n"; }
    }
  }

}

if (($succ > $myMax) || (!$printResults)) { print "@array[0]: $succ found total.\n"; }

print "Stats:";

$firstLet = "";
for $a (sort keys %statFin)
{
  $thisLet = $a; $thisLet =~ s/^(.).*/$1/;
  if ($firstLet ne $thisLet) { print "\n"; } else { print " | "; }
  print "$a: $statFin{$a}";
  $firstLet = $thisLet;
}

if ($succ == 0) { print "We didn't find any possibilities. Sorry.\n" }
}

sub isOops
{
for ($count = 1; $count <= $#array; $count++)
{
  $gotone = 0;
  #print "$l THIS: $this PERM(L) @perm[$l]\n";
  for $l (0..length(@array[0])-1)
  { $this = substr(@array[$count], $l, 1);
  #print "Comparing $j char $l: THIS $this <-> @perm[$l] PERMU.\n";
  if (@perm[$l] eq $this)
  { if (!@onematch[$count]) {
	return $count; #print "Fail at arg $count, char $l $j @perm[$l] vs " . substr(@array[$count], $l, 1) . " @array[$count]\n";
	} else { $gotone = 1; }
  } elsif (($this =~ /[A-Z]/) && (@perm[$l] ne lc ($this)))
  {
	return $count;
  }
  elsif (($this eq "#") && (@perm[$l] =~ /[aeiou]/i )) { return $count; }
  elsif (($this eq "!") && (@perm[$l] !~ /[aeiouy]/i)) { return $count; }
  elsif (($this eq "y") && (@perm[$l] eq "y")) { return $count; }
  else
  {
    #if ($this eq "#") { print "# implies consonants." }
    #if (@perm[l] eq "[aeiou]") { print "vowelly." }
	#print "Pass at arg $count, char $l $j @perm[$l] vs " . substr(@array[$count], $l, 1) . " @array[$count]\n";
  }
  }
  if ((@onematch[$count] == 1) && (!$gotone))
  {
    #print "Failed any match $_[0] <-> @array[$count].\n";
	return -1; }
}
return 0;
}