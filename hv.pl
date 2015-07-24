my %ary;

$printIfThere = 0;

$tabString = "reg\t--\tseen\t--";

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

@alf = ( "e", "z", "y", "x", "w", "v", "u", "t", "s", "r", "q", "p", "o", "n", "m", "l", "k", "j", "i", "h", "g", "f", "d", "c", "b", "a" );

#foreach $q (sort {$ary{$b} <=> $ary{$a} } keys %ary)
#{ print "$q $ary{$q}\n"; }
#fhbig(179927743, 11); die; ASP
#fhbig(442566855, 11); die; RATTED
#findHash(1096162197) #canoflargeregallager
#findHash(234323315)  #race
#findHash(583551280); #oldhat daltho

#foreach $qq (sort {$ary{$b} <=> $ary{$a} }keys %ary) { print "$qq : $ary{$qq}\n"; } die;

open(B, ">>c:/writing/dict/hv.txt");

$doShuf = 1;
$doRoil = 1;

for $idx (0..$#ARGV)
{
  $this = @ARGV[$idx];
  if ($this =~ /-p/) { $printIfThere = 1; next; }
  if ($this =~ /[0-9]/) { wordit($this); next; }
  if ($this =~ /-o/) { $myRegion = $this; $myRegion =~ s/^-o//g; if ($myRegion eq "") { die("Need to munge the region with -o."); } next; }
  if ($this =~ /-s/) { $doShuf = 1; $doRoil = 0; next; }
  if ($this =~ /-r/) { $doShuf = 0; $doRoil = 1; next; }
  if ($this =~ /,/) { $tabString =$this; $tabString =~ s/,/\t/g; $tabString =~ s/_/ /g; next; }
#print "$idx $this\n";
if ($this eq "-t") { print B "TEMPLATE string hashval region room? whatseen? rule? gametext:\n"; next; }

$hash = 0;
#if ($this > 0)
#{
  #$found = 0;
  #print "$this:\n";
  #findHash($this, "", $ary{"e"}); print "\n"; next; }
@x = split(//, $this);

for $q (@x)
{
  #print "$q $ary{$q}\n";
  $hash += $ary{$q};
}

$anyFound = 0;

if ($doShuf) { lookFor($hash, "c:/games/inform/sa.inform/Source/story.ni"); }
if ($doRoil) { lookFor($hash, "c:/games/inform/roiling.inform/Source/story.ni"); }

if (($printIfThere) || ($anyFound == 0)) { print B "\"$this\"\t$hash\t$tabString\t\"some text\"\n"; }
else { print "Instance found in file, not printing externally. Use -p.\n"; }
}

close(B);

sub wordit
{
  my $total = 0;
  open(A, "c:/writing/dict/brit-1word.txt");
  while ($a = <A>)
  {
    $total = 0;
    chomp($a); $a = lc($a);
	@q = split(//, $a);
	for (@q) { $total += $ary{$_}; }
	if ($total == $_[0]) { print "$a =~ $total\n"; return; }
   #if ($a eq "thing") { print "$a $total\n"; }
   }
  close(A);
  print "No matches for $_[0].\n";
}

sub lookFor
{
  open(A, "$_[1]") || die ("Can't open $_[1].\n");
  my $foundyet = 0;
  while ($a = <A>)
  {
  if ($a =~ /^table of/i) { $currentTable = "($a)"; chomp($currentTable); }
  if (($a !~ /^[a-z]/) || ($a =~ /\t/)) { $currentTable = ""; chomp($currentTable); }
  if ($a =~ /$hash/)
  {
  if (($myRegion) && ($a !~ /$myRegion/))
  { print "REGION-IGNORING\n$a"; }
  else
  { if (!$foundyet) { print "Found in $_[1]$currentTable:\n"; } print $a; $foundyet = 1; $anyFound = 1;}
  }
  }
  close(A);
}

sub fhbig
{
  for $i(3..11)
  {
    print "Checking $_[1] <-> $i\n";
    findHash($_[0], "", $i);
	if ($found) { last; }
  }
}

sub findHash
{
  my $temp;
  my $q;
  my $maxlength = $_[2];
  
  if (!$maxlength) { $maxlength = 11; }
  if ((length($_[1]) > $maxlength) || ($found)) { return; }
  #print "Trying $_[0]/$_[1]/$_[2]\n";
  if ($_[0] == 0)
  { print "Found hash $_[1]!"; $found = 1; return; }
  elsif ($_[0] < 0)
  { return; }
  else
  {
    for $q (@alf)

	{ #if ($ary{$q} > $_[3]) { next; }
	  #print "$q $ary{$q}\n";
	  $temp = $_[0];
	  if ($temp >= $ary{$q}) { findHash($temp - $ary{$q}, "$_[1]$q", $maxlength, $ary{$q}); }
	}
  }
}