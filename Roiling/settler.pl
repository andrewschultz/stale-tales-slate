open(A, "c:/writing/dict/settler.txt");

my @colors = ("R", "Y", "O", "P", "G", "B");

my $cheatText = 1;
my $space = " ";

while ($count <= $#ARGV)
{
  $a = $ARGV[$count];
  for ($a)
  {
    /-!/ && do { $readExclam = 1; $count++; next; };
    /-c/ && do { $cheatText = 0; $count++; next; };
    /-p/ && do { $parseText = 1; $count++; next; };
    /-n/ && do { $ncParseText = 1; $count++; next; };
    /-s/ && do { $space = "\[sp\]"; $progSpace = 1; $count++; next; };
	usage();
  }
}
$redString = "\nVerification for red letters:\n\n";
while ($a = <A>)
{
  $iffy = 0;
  if ($a =~ /###/) { $latestComment = $a; $redString .= $a; next; }
  if (($a =~ /^!/) && ($readExclam)) { $a =~ s/^!//g; }
  elsif ($a =~ /^[!#<>]/) { next; }
  chomp($a); $a = lc($a);
  if ($a =~ /^v:/) { redProc($a); next; }
  if ($a =~ /^i:/) { $a =~ s/^i://g; $iffy = 1; }
  @b = split(/,/, $a);
  if ($a =~ /=/) { $fullname = $a; $fullname =~ s/.*=//g; $a =~ s/=.*//g; @b = split(/,/, $a); }
  else
  {
    @b = split(/,/, $a);
    $fullname = @b[0];
  }
  @b[0] =~ s/[ -]//g;
  @b[1] =~ s/[ -]//g;
  @c = split(//, @b[0]);
  @d = split(//, @b[1]);
  if (length(@b[0]) != length(@b[1])) { print "@b[0] !length @b[1].\n"; next; }
  $nocheat = $cheat = $ncparse = $parse = "";
  $consonants = $vowels = 0; $consonantmatch = $vowelmatch = 0;
  for (0..$#c)
  {
    $curIdx = $xtraIdx = 0;
	if (@d[$_] =~ /[aeiou]/) { $curIdx = 1; $vowels++; }
	elsif (@d[$_] =~ /[y]/) { $curIdx = 2; }
	else { $consonants++; }
    if (@c[$_] eq @d[$_])
	{
	  $xtraIdx = 3;
	  if (@d[$_] =~ /[aeiou]/) { $vowelmatch++; }
	  elsif (@d[$_] !~ /[aeiou]/) { $consonantmatch++; }
	}
	$nocheat .= @colors[$curIdx]; $cheat .= @colors[$xtraIdx+$curIdx];
  }
  
  for (0..$#c)
  {
    if (@d[$_] eq @c[$_]) { $parse .= "$space$c[$_]"; }
	elsif (@d[$_] eq 'y') { $parse .= ($space . "y"); }
	elsif ((@d[$_] =~ /[aeiou]/) && ($vowels - $vowelmatch == 1)) { $parse .= "$space@d[$_]"; } # PLAY
	elsif ((@d[$_] !~ /[y]/) && ($consonants - $consonantmatch == 1)) { $parse .= "$space@d[$_]"; } # AIDE
	else { if (@d[$_] =~ /[aeiou]/) { $parse .= "$space="; } else { $parse .= "$space~"; } }
	
	if (@d[$_] eq 'y') { $ncparse .= ($space . "y"); }
	elsif (@d[$_] =~ /aeiou/) { if ($vowels == 1) { $ncparse .= "$space$d[$_]"; } else { $ncparse .= "$space="; } } # PLAY
	elsif (@d[$_] !~ /[y]/) { if ($consonants == 1) { $ncparse .= "$space$d[$_]"; } else { $ncparse .= "$space~"; }  } # AIDE
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
  if ($cheatText) { print "$count: a-text of $fullname is \"$nocheat\". b-text of $fullname is \"$cheat\".\n"; }
  if ($parseText || $ncParseText)
  {
    print "$count:";
    if ($parseText) { print " parse-text of $fullname is \"$parse\"."; }
	if ($ncParseText) { print " ncparse-text of $fullname is \"$ncparse\"."; }
	$missed = $consonants + $vowels - $consonantmatch - $vowelmatch;
	if ($missed <= 2) { print " $fullname is parse-spoilable."; } # else { print " $missed: $consonants + $vowels - $consonantmatch - $vowelmatch."; }
	print "\n";
  }
  }
  $cmds .= "	say \"Your settler registers \[if cheat-on is false\]$nocheat\[else\]$cheat\[end if\].\" instead; \[@b[0]\]\n";
}

#print "$redString";

#print $cmds;

################################
sub redProc
{
  $_[0] =~ s/^.://g;
  $_[0] =~ s/^!//g;
  $_[0] =~ s/[ \.-]//g;
  print "$_[0]\n";
  my @b = split(/,/, $_[0]);
  for $idx (1..$#b)
  {
  @c = split(//, @b[0]);
  @d = split(//, @b[$idx]);
  $nomatch = 0;
  for (0..$#c)
  {
    if (@d[$_] eq @c[$_]) { $redString .= "@b[0] and @b[$idx] match at letter " . ($_+1) . "\n"; $nomatch = 1; }
  }
  if ($nomatch == 0) { #$redString .= "@b[0] and @b[$idx] are ok.\n";
  }
  }
}

sub usage
{
print<<EOT;
-! forces settler.pl to read the !'d out.
-p shows parse-text for the settler.
-c hides cheat/teach text
EOT
exit;
}