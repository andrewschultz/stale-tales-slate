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

$repl{"d-word-u"} = "damn";
$repl{"d-word"} = "damn";
$repl{"a-word"} = "ass";
$repl{"a-word-u"} = "ass";
$repl{"crap"} = "crap";
$repl{"crap-u"} = "crap";
$repl{"dick"} = "dick";
$repl{"dick-u"} = "dick";
$repl{"a-b"} = "abe";
$repl{"d-t"} = "dot";
$repl{"n-t"} = "nate";
$repl{"i-n"} = "ian";
$repl{"sim"} = "simeon";
$repl{"toti"} = "toni";
$repl{"tt"} = "toi";
$repl{"ta"} = "tai";

$di = $sm = $badans = $posBad = 0;

$badana = 1;

$upBadLimit = -1;
$upPosLimit = -1;

$inDir = "";

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
  / / && do { $word = $a; die(cromstring($word, 1)); $count++; next; };
  /^-?b/ && do { $upBadLimit = $b; $count++; next; };
  /^-?p/ && do { $upPosLimit = $b; $count++; next; };
  /^-?r/ && do { @weedDir = (@weedDir, $roi); $count++; next; };
  /^-?s/ && do { @weedDir = (@weedDir, $sa); $count++; next; };
  /^-?2/ && do { @weedDir = (@weedDir, $sa, $roi); $count++; next; };
  usage();
  }
}

open(A2, ">dupes.txt");
open(A3, ">dshort.txt");
open(B, ">oddmatch.txt");
open(C, ">badana.txt");

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
print <<EOT;
weed.pl splits things into three files
dupes.txt = possible duplicates without []
oddmatch.txt = odd matches
badana.txt = bad anagrams
EOT
exit;
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

while (($a = <A>) && (stillWorth()))
{
  $line++;
  chomp($a); $a = lc($a);
  
  if ($a =~ /^table of.*xx/) { $inTable = 1; $thisTable = $a; $thisTable =~ s/\[.*//g; chomp($thisTable); $tableYetA2 = 0; print B "==$thisTable\n"; next;}
  if (!$inTable) { next; }
  
  if ($a !~ /[a-z]/) { $inTable = 0; next; }
  if (($a =~ /^\"/) && ($a !~ /\t/) && ($a =~ /[a-z]/) && ($a !~ /\[\]/))
  {
    $old = $a;
    $a = cutDown($a);
	#if ($a =~ /tjaden/i) { die ("$old -> $a"); }
	if (!checkFullAna($a))
	{
	  mash($a);
	}
	$b = cromstring($a);
    if ($dupes{$b})
    {
	$q = lets($a);
	$q2 = lets($dupes{$a});
	if ($q2 != $q)
	{
	  $z = Math::BigInt::bgcd(($q2, $q)); $q2 /= $z; $q /= $z;
	  #print A2 "SZ $q2 $q: "; $sm++;
	  $sm++;
	}
	if (!$tableYetA2) { $tableYetA2 = 1; print A2 "==$thisTable\n"; print A3 "==$thisTable\n"; }
	print A2 "$a ($line) ~? $dupes{$b} ($ln{$b}/$ta{$b}).\n"; $di++;
	print A3 "$a ($line)\n";
	}
	else
	{
    $dupes{$b} = $a;
	$ln{$b} = $line;
	$ta{$b} = $thisTable;
	}
	#print "$b -> $a\n";
  }
}

}

if ($di + $sm) { $s1 = "(DUPES.TXT/DSHORT.TXT) $di total differences. $sm size mismatches.\n"; } else { $s1 = "DUPES.TXT/DSHORT.TXT will be blank. Hooray!\n"; }
if ($posBad) { $s2 = "(ODDMATCH.TXT) $posBad interesting cases.\n"; } else { $s2 = "ODDMATCH.TXT has nothing. Wow!\n"; }
if ($badans) { $s3 = "(BADANA.TXT) $badans total likely bad anagrams, disable with \[\].\n"; } else { $s3 = "You have no bad anagrams. Well done!\n"; }

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
  $temp =~ s/\"\s.*/\"/g;
  $temp =~ s/, by / /g;
  #if ($temp =~ /may undo/) { print "!!!!$temp\n"; }
  if ($temp =~ /\[[a-z-]+\]/)
  {
    for $x (sort keys %repl)
	{
	  if ($temp =~ /\[$x\]/)
	  { #print "$x to $repl{$x} in $temp\n";
	    $temp =~ s/\[$x\]/$repl{$x}/g;
	  }
	}
  }
  $temp =~ s/\[[^\]]*\]//g;
  return $temp;
  
}

sub checkFullAna
{
  $fullAna = 0;
  $fullAna |= quikAna($_[0]);
  if ($fullAna) { return $fullAna; }
  if ($_[0] =~ /^\"the[^a-z]/i)
  {
    $b = $_[0]; $b =~ s/^\"the//gi; $fullAna |= quikAna($b);
    if ($fullAna) { return $fullAna; }
  }
  if ($_[0] =~ /^\"a[^a-z]/i)
  {
    $b = $_[0]; $b =~ s/^\"a//gi; $fullAna |= quikAna($b);
    if ($fullAna) { return $fullAna; }
  }
  return 0;
}

sub quikAna
{
  my $strg = lc($_[0]); $strg =~ s/[^a-z]//gi;
  
  my@x = split(//, $strg);
  
  for ('a' .. 'z') { $quik{$_} = 0; }
  
  for (@x) { $quik[ord($_)-97]++; }
  
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
  
  if ($q > 1) { return 1; }
  
  return 0;
  
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
	  $badans++; print C "$badans $_[0]: " . cromstring($_[0]) . "\n";
	}
	else
	{
	$posBad++;
	print B "$posBad $_[0]: " . cromstring($_[0]) . "\n";
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

sub cromstring
{
  my $x = lc($_[0]); $x =~ s/[^a-z]//gi;
  my $cromString = "";
  if ($x !~ /[a-z]/) { return 1; } #trivially true
  @z = split(//, $x);
  my @which;
  for (@z)
  {
    #print "Adding $_: @which\n";
    @which[ord($_)-97]++;
  }
  if ($_[1] == -1)
  {
    $bgcd = Math::BigInt::bgcd(@which) . "=GCD...";
	for (0..25)
	{
	  if (@which[$_])
	  {
	    @which[$_] /= $bgcd;
	  }
	}
  }
  for (0..25)
  {
    if (@which[$_])
	{
	$c = chr($_+97);
    $cromString .= "$c@which[$_]";
	}
  }
  if ($_[1] == 1)
  {
    $bgcd = Math::BigInt::bgcd(@which) . "=GCD...";
	if ($bgcd == 1)
	{
	  print "not perfect anagram";
	  $lowestInt = 0;
	  for (0..25)
	  {
	    if (@which[$_])
		{
		  if (!$lowestInt) { $lowestInt = @which[$_]; }
		  elsif (@which[$_] < $lowestInt) { $lowestInt = @which[$_]; }
		}
	  }
	  print "\nCulprit(s): ";
	  for (0..25)
	  {
	    if (@which[$_] % $lowestInt)
		{
		  $rem = @which[$_] % $lowestInt;
		  print chr($_+97) . "($rem) ";
		}
	  }
	  print "\n";
	  
	}
	else
	{
	  print "Perfect anagram";
	}
  }
  return $cromString;
}

sub gotAna
{
  my $temp = $_[0]; $temp =~ s/\[[^\]]*\]//g; $temp =~ s/^[^a-z0-9]*//gi;
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
  #if ($temp =~ /hillside/i) { for (0..$#words) { print "$_ @words[$_]\n"; } print $temp; $die = 1;}
  #die(join("/", @words));
  for $i (0..$#words)
  {
    $runTote = 0;
    for $j ($i..$#words)
	{
	  $runTote += @words[$j]; 
	  #if ($totes{$runTote} =~ /^0/) { print B "$totes{$runTote}: $i, $j, $_[0]\n"; }
      if ($totes{$runTote} !~ /[0-9]/)
	  {
	    if ($i == $j)
		{
	    $totes{$runTote} = "$i"; #print "New hash $runTote\n";
		}
		else
		{
	    $totes{$runTote} = "$i-$j"; #print "New hash $runTote\n";
		}
	  }
	  else
	  {
	    if ($die) { print "$runTote already $totes{$runTote}\n"; }
	    @rt = split(/-/, $totes{$runTote});
		if (!@rt[1]) { @rt[1] = @rt[0]; }
		
		$mayDupe = 0;
		if ($i <= @rt[1]) { $mayDupe = 1; }
		
		if ($j == $i) { $combo = "$i"; } else { $combo = "$i-$j"; }
		
		if ($mayDupe && $showDupe) { print B "(DUPE WORDS?) "; }
		if (($mayDupe == 0) || ($showDupe == 1))
		{
		$anaStr = "PART-ANA:";
		#note it'd be nice to reject if one word is the other.
		if (($i == $j) && (@rt[0] == @rt[1]) && (@divs[$i] == @divs[@rt[0]]))
		{
		}
		else
		{
		for ($i..$j) { $anaStr .= " @divs[$_]"; }
		$anaStr .= " <->";
		for (@rt[0]..@rt[1]) { $anaStr .= " @divs[$_]"; }
		print B "$anaStr\n";
		}
	    #print B "$_[0] $combo maps to $runTote : $totes{$runTote}\n";
		}
		$hadPoss = 1;
      }
	  #if ($die) { print "Tried $i-$j, total = $runTote\n";}
	}
  }
  #if ($die) { for $g (sort keys %totes) { print B "$_[0]: $g $totes{$g}\n"; } $g = "0-0"; print "0=$totes{$g}"; die; }
}