#lov.pl: "list of values"
#
#this tells me how much content each random table list has. It looks at really mathy stuff like average, geometric mean, and so forth.
#it even compares to expected values from Benford's Law.
#
#uses are lov.pl g s / lov.pl g r (roiling is default)
#
#lov.pl g -o9 (tells anything with a 9 as a first digit if I want to hit a 10^x goal)

use Win32::Clipboard;
use POSIX;

$newClip = Win32::Clipboard::new();
$clip = $newClip->GetText;
chomp($clip);

$inExt{"roiling"} = 1;
$inExt{"sa"} = 1;

#globals here. Maybe move them to init function?
$genderChars = 34; #34 chars for [if male][else]
$downup = 1;
$gender = 0; # do we count gender ifdefs?

#this determines which first digits should be shown
@doable = (0, 1, 1, 1, 1, 1, 1, 1, 1, 1);

$defLook = "roiling";

if ($clip !~ /^\"/) { $clip = "\"$clip\", "; }

$count = 0;

while (@ARGV[$count])
{
  $a = @ARGV[$count];
  
  for ($a)
  {
  /^-x/i && do { $exclude = 1; $x = $a; $x =~ s/^-x//g; $x =~ s/[^0-9]//g; @y = split(//, $x); for (@y) { if ($_ > 0) { @doable[$_] = 0; } } $count++; next; }; #eXclude
  /^-oo[0-9]/i && do { $onlyNext = 1; $x = $a; $x =~ s/^-oo//g; $x =~ s/[^0-9]//g; @y = split(//, $x); for (@doable) { $_ = 0; }; for (@y) { if ($_ >= 0) { @doable[$_] = 1; } } $count++; next; }; #only
  /^-o[0-9]/i && do { $onlies = 1; $x = $a; $x =~ s/^-o//g; $x =~ s/[^0-9]//g; @y = split(//, $x); for (@doable) { $_ = 0; }; for (@y) { if ($_ >= 0) { @doable[$_] = 1; } } $count++; next; }; #only
  /^-?g$/i && do { $calcGeom = 1; $count++; next; }; #calculate geometric mean
  /^-gp$/i && do { $calcGeomPlus = $calcGeom = 1; $count++; next; }; #calculate geometric mean plus
  /^-pr$/i && do { $procReg = 1; $count++; next; }; #add extra besides ARO/SA
  /^-p$/i && do { @dirs = (@dirs, "./story.ni"); $count++; next; }; #add extra besides ARO/SA
  /^-t?n$/i && do { $alfy = 1; $count++; next; }; #show sorted by table name
  /^-dbs$/i && do { @dirs = ("c:/users/dropbox/andrew/sa/sa.ni"); $count++; next; }; #dropbox shuffling
  /^-dbr$/i && do { @dirs = ("c:/users/dropbox/andrew/roil/roil.ni"); $count++; next; }; #dropbox roiling
  /^-a$/i && do { $average = 1; $count++; next; }; #show averages
  /^-as$/i && do { $average = 1; $sortbyaverage = 1; if ($a =~ /aS/) { $sortbyaverage = -1; } $count++; next; }; #show averages
  /^-du$/i && do { $downup = 1; $count++; next; }; # reverse order arrays in (default = most first)
  /^-ud$/i && do { $downup = 0; $count++; next; }; # reverse order arrays in
  /^-f$/i && do { $fileName = $b; $count += 2; next; }; # define new file name
  /^-?gy/i && do { $gender = 1; $count++; next; }; #gender-ifs counted
  /^-?gn/i && do { $gender = 0; $count++; next; }; #gender-ifs not counted
  /^-e$/i && do { $expected = 2; $count++; next; }; #show expected Benford-values
  /^-eh$/i && do { $expected = 1; $count++; next; }; #show expected Benford-half-values
  /^-rv/i && do { $warning .= "RV deprecated, use DU/UD instead.\n"; $count++; next; }; #deprecated option
  /^-?s$/i && do { @dirs = (@dirs, "sa"); $count++; next; }; # SA
  /^-?r$/i && do { @dirs = (@dirs, "roiling"); $count++; next; }; # ARO
  /^-b$/i && do { @dirs = (@dirs, "sa", "roiling"); $count++; next; }; #both Stale Tales Slate
  /^-\?$/i && do { usage(); exit; };
  print "Bad argument $a in position $count.\n"; usage(); exit;
  }
}

  if ($#dirs == -1) # if no args point to a directory, assume ARO
  {
    if (-f "$fileName") { @dirs = ("$fileName"); if (getcwd() =~ /(sa|roiling)\.inform/) { $printBytes = 1; } }
	else
	{
	@dirs = ("roiling");
	}
  }

if (@dirs[0] =~ /(sa|roiling)\.inform/) { $printBytes = 1; }

for $myStory (@dirs) { findAna($myStory); }

sub findAna()
{

my $fileToOpen = "c:/games/inform/$_[0].inform/Source/story.ni";

if ($inExt{$_[0]}) { $fileToOpen = "c:/Program Files (x86)/Inform 7/Inform7/Extensions/Andrew Schultz/$_[0] Random Text.i7x"; }

$sums = 0;
$totalSize = 0;
@digs = ();
@lists = ();
#my %lines;

open(A, $fileToOpen) || die ("No $fileToOpen.");
while ($a = <A>)
{
  if ($a =~ /Array my/) #special case for undos
  {
    chomp($a);
	$b = "myUndos";
	$a =~ s/^[^\"]*\"//g;
	$a =~ s/\";//g;
	@j = split(/\" \"/, $a);
	for (@j)
	{
	  $size{$b} += length($_);
	  $totalSize += length($_);
	  $lines{$b}++;
	}
  }
  if ($a =~ /^table of mega/) { <A>; findHeaders(); next; }
  if (listWorthy($a))
  {
    chomp($a);
    $b = $a;
    $b =~ s/ is a list.*//g;
	$size{$b} = length($a); $totalSize += $size{$b};
	$a =~ s/.*\{ *\"//g;
    @bogus = split(/\", \"/, $a);
	$lines{$b} = $#bogus + 1; # why the extra? 1 for the general bad math and 1 for the ending entry which is not included before the main list is shuffled
	if ($b !~ /(impadvs|ramlist)/i)
	{
	  $lines{$b}++; #print "$b added\n";
	}
    push(@lists, $b);
	#if ($b =~ /booklist/) { print $lines{$b} . $#bogus . (join("\n", @bogus)); die; }
  }
  if (tableWorthy($a)) { chomp($a); countTables(); }
}

close(A);

for (0..9) { @digs[$_] = @sizes[$_] = @combo[$_] = 0; }

if (@ARGV[0] !~ /^-[0-9]/) #why is this here? I don't know. I should figure out, or delete it.
{

for (keys %lines)
{
  $av{$_} = floor(100*$size{$_}/$lines{$_})/100;
}

if ($sortbyaverage)
{
  @lists = sort { $av{$a} <=> $av{$b}} keys %lines;
  if ($sortbyaverage == -1) { @lists = reverse(@lists); }
}
elsif ($alfy)
{
@lists = sort keys %lines;
}
elsif ($downup)
{
@lists = sort {$lines{$a} <=> $lines{$b}}  keys %lines;
} else
{
@lists = sort {$lines{$b} <=> $lines{$a}}  keys %lines;
}

$prod = 0;

for (0..$#lists)
{
  $c = $_ + 1;
  $linedig = $lines{@lists[$_]}; $linedig = substr($linedig, 0, 1);
  $sizedig = $size{@lists[$_]}; $sizedig = substr($sizedig, 0, 1);

  $avg = "";
  if ($average) { $avg = " avg=$av{@lists[$_]}"; }
  if (($region{@lists[$_]}) && ($procReg)) { $avg .= " reg=$region{@lists[$_]}"; $regLines{$region{@lists[$_]}} += $lines{@lists[$_]}; }

  $baseStr = "$c @lists[$_] $lines{@lists[$_]} lines $size{@lists[$_]} bytes$avg\n";

  if ($onlies)
  {
    #print "$linedig $sizedig @lists[$_]\n";
	#print "$linedig $sizedig\n";
    if (@doable[$linedig] || @doable[$sizedig])
	{
    print $baseStr;
	}
  }
  elsif ($onlyNext)
  {
  $line2 = $lines{@lists[$_]}; $line2 = substr($line2, 1, 1);
  $size2 = $size{@lists[$_]}; $size2 = substr($size2, 1, 1);
    if (@doable[$line2] || @doable[$size2])
	{
    print $baseStr;
	}
  }
  elsif ($exclude)
  {
    if (@doable[$linedig] && @doable[$sizedig])
	{
    print $baseStr;
	}
  }
  else
  {
    print $baseStr;
	#if (@lists[$_] =~ /random books/) { $atg = $size{@lists[$_]}/$lines{@lists[$_]}; $dif = (100000 - $size{@lists[$_]}) / ($atg); print "Avg = $atg, $dif entries to go.\n"; }
  }
  if ($calcGeomPlus) { $prod1 += log($lines{@lists[$_]} + 1); }
  if ($calcGeom) { $prod += log($lines{@lists[$_]}); }
  $sums += $lines{@lists[$_]};
  @sizes[firstDigit($size{@lists[$_]})]++;
  @digs[firstDigit($lines{@lists[$_]})]++;
 }
 for (0..9) { @combo[$_] = @digs[$_] + @sizes[$_]; }
  shift(@digs);
  shift(@sizes);
  shift (@combo);
  
  if ($sums == 0) { print "I didn't find any blurbs in tables. Bailing.\n"; exit; }
  
  print "$sums total lines, $totalSize total size\n1st digits @digs, sizes @sizes";
  
  if ($expected)
  {
    for (0..8)
    {
      @exp[$_] = ($#lists+1) * (log($_+2)  - log($_+1)) * $expected / log(10);
	  @exp[$_] = floor(@exp[$_] * 10 + .5) / 10;
    }
  }
  
  if ($expected == 1)
  {
    print ", expected @exp.\n";
  }
  else
  {
    print ", ";
  }
  
  print "total @combo";
  
  if ($expected == 2)
  {
    print ", expected @exp";
  }
  print ".\n";
  
$totAvg = $totalSize / $sums;
  if ($average) { printf ("Average = %.3f\n", $totAvg); }
# this is to see how much til 400000
  #$remai = 400000; $avg = $totalSize / $sums; $delt = ($remai - $totalSize) / ($avg); printf ("%.2f to go to 400k, average = %.3f.\n", $delt, $avg);
  # this was for a silly goal of 27
  $lbound = floor($totAvg);
  $ubound = $lbound + 1;
  print ($ubound*$sums - $totalSize); print " below $ubound.\n";
  print ($totalSize - $lbound*$sums); print " above $lbound.\n";

  #calculate pace for blue lacuna--no longer needed!
  $tlt = 2366420 - (-s "$_[0]");
  if (!$gender) { $tlt += $genderChars * $genderLines; }
  $toLac = $tlt / ($totAvg + 3);
  #print "Dividing by " . ($totAvg + 3) . "\n";
  $canlose = ($totalSize - $lbound*$sums) / $toLac;
  $mustgain = ((1+$lbound)*$sums - $totalSize) / $toLac;

  #printf ("About %.3f anagrams to reach Blue Lacuna ($tlt) and can lose %.3f/gain %.3f & still be in $lbound. Avg = %.3f\n", $toLac, $canlose, $mustgain, $totAvg);
  # this was to calculate pace for 10000
  #$remai = 10000; $td = POSIX::mktime(0,0,0,0,0,115) - time(); $td /= 86400; $remai -= $sums; $remai /= $td; print "$remai per day ($td) for 10k.\n";
  $prod /= ($#lists+1); $prod = exp($prod);
  $q = ceil($prod); $q /= $prod; $q **= ($#lists + 1); $qq = 1 / ($q - 1);
  $qqq = floor($prod); $qqq = $prod / $qqq; $qqq **= ($#lists + 1);
  if ($calcGeom)
  {
  print "Geometric Mean = " . $prod . " ratio = $q lines = $qq above = $qqq\n";
  }
  if ($calcGeomPlus) { $prod1 /= ($#lists+1); $prod1 = exp($prod1); $prodif = $prod1 - $prod; print "Add 1 each: $prod1, difference = $prodif\n"; }
  $runTot += $sums;
  if ($runTot > $sums) { print "$runTot overall.\n"; }
  for $q (keys %lines) { delete $lines{$q}; }
  
  if ($procReg) { for $thisReg (sort {$regLines{$b} <=> $regLines{$a}} keys %regLines) { print "$thisReg = $regLines{$thisReg}\n"; } }

  if ($printBytes)
  {
  $x = -s "C:/games/inform/roiling.inform/Source/story.ni";
  $y = -s "C:/games/inform/sa.inform/Source/story.ni";
  $z = $x + $y;
  print "Total bytes $x + $y = $z.\n";
  }

open(A, $_[0]); $myLines = 0;
$inNudgeTable = 0;
while ($a = <A>)
{
  if ($a =~ /^table of nudges/i)
  {
    $inNudgeTable = 1;
	<A>;
	next;
  }
  if (($inNudgeTable) && ($a !~ /^\"/)) { last; }
  if ($inNudgeTable) { $myLines++; }
}

close(A);

print "Table of Nudges has $myLines.\n";

open(B, "c:/writing/dict/lov.txt");
while ($b = <B>)
{
  if ($b =~ /^#/) { next; }
  @c = split(/,/, $b);
  $ang{@c[0]} = @c[1];
}
$shortName = $_[0]; $shortName =~ s/\.inform.*//g; $shortName =~ s/.*[\\\/]//g;
if ($ang{$shortName} == $sums) { print "No progress since last time!\n"; }
else
{
@localtime = localtime(time);
$dateForm = sprintf("%4d-%02d-%02d-%02d-%02d-%02d",
@localtime[5]+1900, @localtime[4]+1, @localtime[3], @localtime[2], @localtime[1], @localtime[0]);

open(B, ">>c:/writing/dict/lov.txt");
print B "$shortName,$sums,$prod,$dateForm\n";
close(B);
}

if ($warning) { print "WARNING: $warning"; }
 return;
}

}

open(A, "c:/games/inform/roiling.inform/source/story.ni");
open(B, ">c:/games/inform/roiling.inform/source/story.new");

binmode(B);

$c = @ARGV[0] - 1;

open(C, ">>c:/games/inform/roiling.inform/source/story.check");

print C $clip;

while ($a = <A>)
{
  if ($a =~ /^@lists[$c]/)
  {
    $a =~ s/\{/\{ $clip/g;
    print "Added $clip to @lists[$c], $c.";
  }
  chomp($a);
  print B "$a\x0a";
}

sub tableWorthy
{
  if ($_[0] =~ /^table of /)
  {
    my $temp = $_[0];
	chomp($temp);
	$temp =~ s/ *\[.*//g;
	if ($covered{$temp})
	{
	  $reg = $_[0]; chomp($reg);
	  if ($reg =~ /\[xx[a-z]\]/) { $temp2 = $temp; $temp2 =~ s/^table of //g; $reg =~ s/.*\[xx/xx/g; $reg =~ s/\].*//g; $region{$temp2} = $reg; }
	  return 1;
	}
  }
  return 0;
}

sub listWorthy
{
   if ($_[0] !~ /is a list of text variable/i) { return 0; }
   if ($_[0] =~ /^\t/) { return 0; }
   if ($_[0] =~ /(sexdif|townarr)/) { return 0; }
   return 1;
 }

sub findHeaders
{
  print "Last:";
  while ($a = <A>)
  {
    if ($a =~ /^table/)
	{
	  @g = (); @g = split(/\t+/, $a);
	  chomp($a);
	  $lasttab = $a;
	  $a =~ s/\t.*//g;
	  $b = $a; $b =~ s/^table of //g;
	  $covered{$a} = 1;
	  $lasttab =~ s/.*\t//g;
	  #if ($#g >= 8) { print ("$#g @g[0]: #8 = @g[8]\n"); }
	  if (@g[9] =~ /[a-z]/i)
	  { print " @g[0]";
	    $lines{$b} = 1;
	  } else { $nolast .= " @g[0]"; }
	  #if ($lasttab =~ /[a-z]/) { $lines{$b} = 1;  print " $b"; }
	  	} elsif ($a !~ /[a-z]/) { last; }
  }
  print "\n";
  #print "No last:$nolast\n";
}

sub countTables
{
  $b = $a; $b =~ s/^table of *//g; $b =~ s/ *\[.*//g;
  <A>; # this is the heading row
  while ($a = <A>)
  {
    if ($a !~ /[a-z0-9]/i) { last; }
	chomp($a);
    $a =~ s/^\"//g;
    $a =~ s/\".*//g;
	
	$lgth = length($a);
    if ($a =~ /\[if player is (fe)?male\]/i) { $genderLines++; if (!$gender) { $lgth -= $genderChars;  } }

	$size{$b} += $lgth;
	$totalSize += $lgth;
	$lines{$b}++;
  }
}

sub firstDigit
{
  return substr($_[0], 0, 1);
}

sub usage
{
print<<EOT;
-g = show geometric mean
-du = go down to up
-ud = go up to down
-o[digit] = show beginning with that digit
-oo[digit] = show starting with second digit
EOT
}