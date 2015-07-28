open(A, "c:/writing/dict/settler.txt");

my @colors = ("R", "Y", "O", "P", "G", "B");

$redString = "\nVerification for red letters:\n\n";
while ($a = <A>)
{
  $iffy = 0;
  if ($a =~ /###/) { $latestComment = $a; $redString .= $a; next; }
  if ($a =~ /^[!#<>]/) { next; }
  chomp($a); $a = lc($a);
  if ($a =~ /^v:/) { $a =~ s/^v://g; redProc($a); next; }
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
  $nocheat = $cheat = "";
  for (0..$#c)
  {
    $curIdx = $xtraIdx = 0;
	if (@d[$_] =~ /[aeiou]/) { $curIdx = 1; }
	if (@d[$_] =~ /[y]/) { $curIdx = 2; }
    if (@c[$_] eq @d[$_]) { $xtraIdx = 3; }
	$nocheat .= @colors[$curIdx]; $cheat .= @colors[$xtraIdx+$curIdx];
  }
  $count++;
  if ($latestComment) { print $latestComment; $latestComment=""; }
  if ($iffy)
  {
  print "$fullname: \"\[if cheat-on is true\]$cheat\[else\]$nocheat\[end if\]\"\n";
  } else
  {
  print "$count: a-text of $fullname is \"$nocheat\". b-text of $fullname is \"$cheat\".\n";
  }
  $cmds .= "	say \"Your settler registers \[if cheat-on is false\]$nocheat\[else\]$cheat\[end if\].\" instead; \[@b[0]\]\n";
}

#print "$redString";

#print $cmds;

################################
sub redProc
{
  $_[0] =~ s/[ \.-]//g;
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