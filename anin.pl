############################################
#anin.pl
#checks for anagrams

@matches = split(/,/, @ARGV[0]);

my $found = 0;

@files = ( "c:/games/inform/roiling.inform/source/story.ni", "c:/games/inform/sa.inform/source/story.ni",
  "c:/Program Files (x86)/Inform 7/Inform7/Extensions/Andrew Schultz/Roiling Random Text.i7x",
  "c:/Program Files (x86)/Inform 7/Inform7/Extensions/Andrew Schultz/Shuffling Random Text.i7x",
  "c:/Program Files (x86)/Inform 7/Inform7/Extensions/Andrew Schultz/Roiling Nudges.i7x",
  "c:/Program Files (x86)/Inform 7/Inform7/Extensions/Andrew Schultz/Shuffling Nudges.i7x" );

for $match (@matches)
{
for $curFile (@files)
{
  $localFound = 0;
  pokeSource($curFile);
}
}

if (!$found) { print "$match doesn't have any matches!\n"; }

sub pokeSource
{

open(A, "$_[0]") || die ("No $_[0]");

while ($a = <A>)
{
  $line++;
  if ($a !~ /[a-z]/i) { next; }
  chomp($a);
  if (lineMatch($match, $a)) { print "$a\n"; }
}

close(A);
}

##################################
#arg 0 = string to match
#arg 1 = the line

sub lineMatch
{
  my $tempLine = lc($_[1]); $tempLine =~ s/^[^a-z]+//gi;
  @b = split(/[^a-z']+/i, $tempLine);

  my $ss = lc($_[0]);

  my $searchLength = length($ss);
  my $startIndex = 0;
  my $endIndex = 0;
  my $stringInLine = @b[0];

  while (($startIndex <= $#b) && ($endIndex <= $#b))
  {
    $ll = length($stringInLine);
    #print "$stringInLine($ll) vs $ss($searchLength)\n";
    if ($ll < $searchLength)
    {
      #print "Adding to end\n";
      $endIndex++; $stringInLine .= @b[$endIndex]; next;
    }
    if ($ll > $searchLength)
    {
      my $blen = length(@b[$startIndex]);
      #print "Zapping $blen from start\n";
      $stringInLine = substr($stringInLine, $blen, length($stringInLine) - $blen); $startIndex++; next;
    }
    if (checkAna($ss, $stringInLine))
    {
      if (!$localFound) { print "$curFile finds: =================\n"; $localFound = 1; }
      $found = 1;
      print "$ss ($startIndex, $endIndex) ";
      print join(" ", @b[$startIndex..$endIndex]);
      print " matches line $line======\n$_[1]\n";
    }
    $endIndex++; $stringInLine .= @b[$endIndex];
  }
}

sub checkAna
{
  my $x1 = join("", sort(split(//, $_[0])));
  my $x2 = join("", sort(split(//, $_[1])));
  if ($x1 ne $x2) { return 0; }
  return 1;
}