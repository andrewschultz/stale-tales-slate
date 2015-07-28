#weed.pl
#this detects possible false anagrams or bad anagrams or duplicates
#
#Usage flags:
#-r -s -b = roiling, shuffling, both
#
#[] in the source indicates to ignore duplicates
#It only focuses on table text
#Time to run:
#Shuffling = 5 seconds
#Roiling = 

use POSIX;

use Math::BigInt;

#print Math::BigInt::bgcd((8,12,18,27));
#print Math::BigInt::bgcd((12,18,27));
#print Math::BigInt::bgcd((8,12,18));

$ary{"a"} = 2187818;
$ary{"b"} = 18418905;
$ary{"c"} = 19005585;
$ary{"d"} = 21029089;
$ary{"e"} = 127806109;
$ary{"f"} = 26514896;
$ary{"g"} = 32599702;
$ary{"h"} = 37282299;
$ary{"i"} = 44992846;
$ary{"j"} = 48960525;
$ary{"k"} = 52933178;
$ary{"l"} = 53813839;
$ary{"m"} = 64075153;
$ary{"n"} = 68907508;
$ary{"o"} = 74352577;
$ary{"p"} = 81465959;
$ary{"q"} = 84405617;
$ary{"r"} = 85323803;
$ary{"s"} = 96273966;
$ary{"t"} = 103110018;
$ary{"u"} = 105105807;
$ary{"v"} = 107164820;
$ary{"w"} = 107934773;
$ary{"x"} = 112768081;
$ary{"y"} = 122359252;
$ary{"z"} = 122969618;

$di = $sm = $badans = $posBad = 0;

$badana = 1;

$upBadLimit = -1;
$upPosLimit = -1;

$inDir = "";

open(A2, ">dupes.txt");
open(B, ">oddmatch.txt");
open(C, ">badana.txt");

$sta = time();

$exp{"r"} = $exp{"-r"} = "roiling";
$exp{"s"} = $exp{"-s"} = $exp{""} = "sa";

$pwd = getcwd();

@weedDir = ();

while ($count <= $#ARGV)
{
  $a = @ARGV[$count];
  $b = @ARGV[$count+1];
  for ($a)
  {
  /^-?b/ && do { $upBadLimit = $b; $count++; next; };
  /^-?p/ && do { $upPosLimit = $b; $count++; next; };
  /^-?r/ && do { @weedDir = (@weedDir, $roi); $count++; next; };
  /^-?s/ && do { @weedDir = (@weedDir, $sa); $count++; next; };
  /^-?2/ && do { @weedDir = (@weedDir, $sa, $roi); $count++; next; };
  usage();
  }
}

if (@ARGV[0] eq "-2")
{
weedOneSource("c:/games/inform/sa.inform/source");
weedOneSource("c:/games/inform/roiling.inform/source");
}
elsif ($pwd =~ /(sa|roiling).inform/)
{
weedOneSource("$pwd");
}
elsif ($exp{@ARGV[0]})
{
weedOneSource("c:/games/inform/$exp{@ARGV[0]}.inform/source");
}
else
{
weedOneSource("c:/games/inform/@ARGV[0].inform/source");
}

sub usage
{
print << EOT;
EOT;
}

sub stillWorth
{
  if ($badans == $upBadLimit) { return 0; }
  if ($posBad == $upPosLimit) { return 0; }
  return 1;
}

sub weedOneSource
{

my $myfi = "$_[0]/story.ni";
open(A, "$myfi") || die ("No $_[0]/$myfi.");
print "Weeding out $myfi\n";

while (($a = <A>) && (stillWorth())
{
  $line++;
  chomp($a);
  
  if ($a =~ /^table of.*xx/) { $inTable = 1; $thisTable = $a; $thisTable =~ s/\[.*//g; chomp($thisTable); next;}
  if (!$inTable) { next; }
  
  if ($a !~ /[a-z]/) { $inTable = 0; next; }
  if (($a =~ /^\"/) && ($a !~ /\t/) && ($a =~ /[a-z]/) && ($a !~ /\[\]/))
  {
    $a = cutDown($a);
    $b = mash(lc($a));
    if ($dupes{$b})
    {
	$q = lets($a);
	$q2 = lets($dupes{$b});
	if ($q2 != $q) { $z = Math::BigInt::bgcd(($q2, $q)); $q2 /= $z; $q /= $z; print A2 "SZ $q2 $q: "; $sm++; }
	print A2 "$a ($line/$thisTable) possible dupe of $dupes{$b} ($ln{$b}/$ta{$b}).\n"; $di++;
	}
    $dupes{$b} = $a;
	$ln{$b} = $line;
	$ta{$b} = $thisTable;
	#print "$b -> $a\n";
  }
}

}

$s1 = "$di total differences. $sm size mismatches.\n";
$s2 = "$posBad interesting cases.\n";
$s3 = "$badans total likely bad anagrams, disable with \[\].\n";

print A2 "$s1";

print B "$s2";

print C "$s3";

close(A);
close(A2);
close(B);

$totTime = time() - $sta;

print "$totTime total seconds. Output to dupes.txt and badana.txt and oddmatch.txt.\n$s1$s2$s3";

sub cutDown
{
  my $temp = $_[0];
  $temp =~ s/, by / /g;
  $temp =~ s/\[[^\]]*\]//g;
  return $temp;
  
}

sub mash
{
  my %roots;
  my $retStr;
  my $temp = lc($_[0]);
  
  #print "$temp: $a $b $c\n";
  for $let ('a' .. 'z')
  {
    $idx = ord($let) - 97;
    $t2 = () = ($temp =~ /$let/g);
	@roots[$idx] = $t2;
  }

  $q = Math::BigInt::bgcd(@roots);
  if ($q > 1) { for (@roots) { $_ /= $q; } }
  elsif (gotAna($_[0]))
  {
    print B "SOME-ANA: $_[0]\n";
  }
  elsif (($badana) && ($_[0] !~ /\[\]/))
  {
    if (!$hadPoss)
	{
	  $badans++; print C "$badans $_[0]\n";
	}
	else
	{
	$posBad++;
	print B "$posBad $_[0]\n";
	}
	$hadPoss = 0;
	}
  
  $mess = join("", @roots);
  #die ($mess . $_[0]	);
  return $mess;
}

sub lets
{
  my $temp = $_[0];
  $temp =~ s/[^a-z]//gi;
  return length($temp);
}

sub gotAna
{
  my $temp = $_[0]; $temp =~ s/\[[^\]]*\]//g; $temp =~ s/^\"//g;
  my @divs = split(/[ -\.]+/, $temp);
  my %totes;
  my @tmp;
  my @words;
  
  for $q (0..$#divs)
  {
    @tmp = split(//, @divs[$q]);
	$x = 0;
	for $i (0..$#tmp) { $x = $x + $ary{@tmp[$i]}; }
	@words[$q] = $x;
  }
  #die(join("/", @words));
  for $i (0..$#words)
  {
    $runTote = 0;
    for $j ($i..$#words)
	{
	  $runTote += @words[$j]; 
      if (!$totes{$runTote})
	  {
	    $totes{$runTote} = "$i-$j"; #print "New hash $runTote\n";
	  }
	  else
	  {
	    print B "$_[0] $i-$j maps to $runTote : $totes{$runTote}\n";
		$hadPoss = 1;
      }
	}
  }
  #for $g (sort keys %totes) { print B "$_[0]: $g $totes{$g}\n"; } die;
}