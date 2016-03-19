use strict;
use warnings;

open(A, "c:/writing/dict/settler.txt");

my @colors = ("R", "Y", "O", "P", "G", "B");

my $cheatText = 1;
my $space = " ";
my $nums = 1;
my $count = 0;
my $readExclam;
my $parseText = 0;
my $ncParseText = 0;
my $progSpace = 0;
my $cmds;
my $showCount = 0;

while ($count <= $#ARGV)
{
  $a = $ARGV[$count];
  for ($a)
  {
    /-!/ && do { $readExclam = 1; $count++; next; };
    /-c/ && do { $cheatText = 0; $count++; next; };
    /-p/ && do { $parseText = 1; $count++; next; };
    /-n/ && do { $ncParseText = 1; $count++; next; };
	/-#/ && do { $showCount = 1; $count++; next; };
    /-s/ && do { $space = "\[sp\]"; $progSpace = 1; $count++; next; };
	usage();
  }
}
my $redString = "\nVerification for red letters:\n\n";
my $latestComment;
$count = 0;

while ($a = <A>)
{
  my $fullname;
  my $iffy = 0;
  if ($a =~ /###/) { $latestComment = $a; $redString .= $a; next; }
  if (($a =~ /^!/) && ($readExclam)) { $a =~ s/^!//g; }
  elsif ($a =~ /^[!#<>]/) { next; }
  chomp($a); $a = lc($a);
  if ($a =~ /^v:/) { redProc($a); next; }
  if ($a =~ /^i:/) { $a =~ s/^i://g; $iffy = 1; }
  my @b = split(/,/, $a);
  if ($a =~ /=/) { $fullname = $a; $fullname =~ s/.*=//g; $a =~ s/=.*//g; @b = split(/,/, $a); }
  else
  {
    @b = split(/,/, $a);
    $fullname = $b[0];
  }
  $b[0] =~ s/[ -]//g;
  $b[1] =~ s/[ -]//g;
  my @c = split(//, $b[0]);
  my @d = split(//, $b[1]);
  if (length($b[0]) != length($b[1])) { print "$b[0] !length $b[1].\n"; next; }
  my $nocheat = "";
  my $cheat = "";
  my $ncparse = "";
  my $parse = "";
  my $consonants = 0;
  my $vowels = 0;
  my $consonantmatch = 0;
  my $vowelmatch = 0;
  for (0..$#c)
  {
    my $curIdx = 0;
	my $xtraIdx = 0;
	if ($d[$_] =~ /[aeiou]/) { $curIdx = 1; $vowels++; }
	elsif ($d[$_] =~ /[y]/) { $curIdx = 2; }
	else { $consonants++; }
    if ($c[$_] eq $d[$_])
	{
	  $xtraIdx = 3;
	  if ($d[$_] =~ /[aeiou]/) { $vowelmatch++; }
	  elsif ($d[$_] !~ /[aeiou]/) { $consonantmatch++; }
	}
	$nocheat .= $colors[$curIdx]; $cheat .= $colors[$xtraIdx+$curIdx];
  }
  
  for (0..$#c)
  {
    if ($d[$_] eq $c[$_]) { $parse .= "$space$c[$_]"; }
	elsif ($d[$_] eq 'y') { $parse .= ($space . "y"); }
	elsif (($d[$_] =~ /[aeiou]/) && ($vowels - $vowelmatch == 1)) { $parse .= "$space$d[$_]"; } # PLAY
	elsif (($d[$_] !~ /[y]/) && ($consonants - $consonantmatch == 1)) { $parse .= "$space$d[$_]"; } # AIDE
	else { if ($d[$_] =~ /[aeiou]/) { $parse .= "$space-"; } else { $parse .= "$space" . "x"; } }
	
	if ($d[$_] eq 'y') { $ncparse .= ($space . "y"); }
	elsif ($d[$_] =~ /aeiou/) { if ($vowels == 1) { $ncparse .= "$space$d[$_]"; } else { $ncparse .= "$space-"; } } # PLAY
	elsif ($d[$_] !~ /[y]/) { if ($consonants == 1) { $ncparse .= "$space$d[$_]"; } else { $ncparse .= "$space" . "x"; }  } # AIDE
	else { $ncparse .= "$space-"; }
  }

  if ($progSpace)
  {
  $parse =~ s/^....//g;
  $ncparse =~ s/^....//g;
  }

  $count++;
  if ($latestComment) { print $latestComment; $latestComment=""; }
  if ($iffy)
  {
  print "$fullname: \"\[if cheat-on is true\]$cheat\[else\]$nocheat\[end if\]\"\n";
  } else
  {
  if ($cheatText) { if ($showCount) { print "$count:"; } print "a-text of $fullname is \"$nocheat\". b-text of $fullname is \"$cheat\".\n"; }
  if ($parseText || $ncParseText)
  {
    if ($showCount) { print "$count:"; }
    if ($parseText) { print " parse-text of $fullname is \"$parse\"."; }
	if ($ncParseText) { print " ncparse-text of $fullname is \"$ncparse\"."; }
	my $missed = $consonants + $vowels - $consonantmatch - $vowelmatch;
	if ($missed <= 2) { print " $fullname is parse-spoilable."; }# else { print " $missed: $consonants + $vowels - $consonantmatch - $vowelmatch."; }
	print "\n";
  }
  }
  $cmds .= "	say \"Your settler registers \[if cheat-on is false\]$nocheat\[else\]$cheat\[end if\].\" instead; \[$b[0]\]\n";
}

#print "$redString";

#print $cmds;

################################
sub redProc
{
  $_[0] =~ s/^.://g;
  $_[0] =~ s/^!//g;
  $_[0] =~ s/[ \.-]//g;
  #print "$_[0]\n";
  my @b = split(/,/, $_[0]);
  for my $idx (1..$#b)
  {
  my @c = split(//, $b[0]);
  my @d = split(//, $b[$idx]);
  my $nomatch = 0;
  for (0..$#c)
  {
    if ($d[$_] eq $c[$_]) { $redString .= "$b[0] and $b[$idx] match at letter " . ($_+1) . "\n"; $nomatch = 1; }
  }
  if ($nomatch == 0) { #$redString .= "$b[0] and $b[$idx] are ok.\n";
  }
  }
}

sub usage
{
print<<EOT;
-! forces settler.pl to read the !'d out.
-p shows parse-text for the settler.
-c hides cheat/teach text
-s makes space [sp] and not a space
-# show count nums
EOT
exit;
}