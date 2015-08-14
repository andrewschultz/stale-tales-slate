$r = "c:/games/inform/roiling.inform/Source";

open(A, "$r/story.ni");

$ignoreString = "or,the,to,of,if,is,it,for,a,and,an,as,at,in,be,by";

@igstr = split(/,/, $ignoreString); for (@igstr) { $ignore{$_} = 1; }

while ($a = <A>)
{
  $line++;
  if (($a =~ /^table of /) && ($a !~ /\t/))
  {
    $inTable = 1;
    procTable($a);
  }
}

sub procTable
{
  <A>;
  $line++;
  if ($a =~ /of random books/)
  {
    while ($a = <A>)
    {
      $line++;
      if ($a !~ /[a-z]/i) { last; }
      chomp($a); $a =~ s/\[r\].? by//g;
      $a =~ s/\[else\]/ /g;
      $a =~ s/\[end if\]//g;
      $a =~ s/\[if player is male\]//g; $a =~ s/^\"//g; $a =~ s/\".*//g;
#      print "$a\n";
      @b = split(/[^a-zA-Z'-]+/, $a);
      for (@b) { if ($_ !~ /^[A-Z]/) { $locase{$_}++; $lines{$_} .= " $line"; } }
    }
    close(A);
    $count=0;
    for $x (sort keys %locase)
    {
      if (!$ignore{$x})
      {
        $count++;
        print "$count: $x $locase{$x}$lines{$x}\n";
      }
    }
  }
  else
  {
    return;
  }
}