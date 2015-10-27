#ti.pl
#this takes a prefix and matches it to first and last names
#eg ti.pl big => Big Ernest Steinberg and others
#up to me to cut down the invalid/unfunny tries
#
#-m puts something in the middle e.g. Ernest 'Big' Steinberg
#
#-f flips first/last names but command line parameters are badly done right now
#
#uses firsts.txt, lasts.txt
#
#only in the ROILING directory as that has honorific (or perjorative) titles
#
#table of Leo-Rand idols [xxp4]
#table of smartypants [xxp6]
#table of posse bosses [xxv7]
#table of prestigious bums [xxv8]


$dictDir = "c:/writing/dict";

$count = 0;
$printCmds = 0;

$firstNames = 1;

$firstsFile = "firsts.txt";
$lastsFile = "lastbig.txt";

$fullStr = "Hon.";

while ($count <= $#ARGV)
{
  $a = @ARGV[$count];
  $b = @ARGV[$count+1];
  
  for ($a)
  {
  /-m/ && do { $middleName = 1; $count++; next; };
  /-p/ && do { $printCmds = 1; $count++; next; };
  /-f/ && do { $lastsFile = "firsts.txt"; $firstsFile = "lastbig.txt"; $count++; next; };
  /-r/ && do { $reverses = 1; $count++; next; };
  /-\?/ && do { usage(); $count++; next; };
  /^[a-z]/ && do { $fullStr = $a; $count++; next; };
  }
}

$firstNames = 0;

if (! -f "$dictDir/$lastsFile") { $lastsFile = "lasts2.txt"; }

if ($firstNames) { $initFile = "$firstsFile"; } else
{
  $initFile = "lastbig.txt"; $lastsFile = $initFile;
  if (! -f "c:/writing/dict/$initFile") { $initFile = "lasts2.txt"; $lastsFile = "lasts2.txt"; }
}
$addStr = lc($fullStr); $addStr =~ s/\.//g;
$uStr = ucfirst($addStr);

open(A, "$dictDir/$initFile") || die ("No $initFile.");

open(C, ">>c:/games/inform/roiling.inform/Source/ppl-scratch.txt");

print C "=======$uStr\n";

while ($a = <A>)
{
  chomp($a);
  $a = lc($a);
  $q = alf($a);
  if ($last{$q}) { $last{$q} .= "-$a"; }
  else
  {
  $last{$q} = $a;
  }
}

close(A);

#for $x (sort keys %last) { print "$x: $last{$x}\n"; } die;

readUp("firsts.txt");
readUp("$lastsFile");

sub readUp
{

print "$lastsFile.\n";
print "Reading $_[0].\n";

open(A, "$dictDir/$_[0]") || die ("No writing/dict/$_[0]!");

$cs = 0;

while ($a = <A>)
{
  chomp($a);
  $a = lc($a);
  $b = "$addStr$a";
  $q = alf($b);
  if ($first{$q}) { next; }
  $first{$q} = 1;
  if ($last{$q})
  {
  if ($printCmds)
  {
  print "gq $addStr $a > doccheck.txt\n";
  }
  if ($middleName)
  {
  if (lc("$a$uStr") eq lc($last{$q})) { next; }
  $this = "$a '$uStr' $last{$q}";
  $this =~ s/^([a-z])/uc($1)/ge;
  }
  else
  {
  if (lc("$uStr$a") eq lc($last{$q})) { next; }
  $this = "$uStr $a $last{$q}";
  }
  $this =~ s/-([a-z])/-uc($1)/ge;
  $this =~ s/([\.\?!]?\s+[a-z])/uc($1)/ge;
  $count++;
  $cs++;
  print "\"$this\"\n";
  print C "\"$this\"\n";
  }
}

print "$count total names found.\n";
if ($cs < $count) { print "$cs this go-round.\n"; }
print "============\n";
close(A);

}

sub alf
{
  my @x = split(//, $_[0]);
  @xx = sort(@x);
  my $z = join('', @xx);
  return $z;
}

sub usage
{
print<<EOT;
EOT
exit;
}