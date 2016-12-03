###########################
#sso.pl
#scratch sort, does a trivial sort of the ideas I have written down
#
#unanagrammed ideas at the end
#anagrammed at the start
#
#puts all of the titles in the middle of the file, if there are any, so I can grab those easily
#alternative is to get ALL CAPS working
#
#future features ALL CAPS separate chunk
#
#also tacks on quotes

use strict;
use warnings;

####options
my $compare = 0;
my $noCopy = 0;

my @listLump = ("", "", "");
my $roil = "c:\\games\\inform\\roiling.inform\\Source";

my $qad = 0;
my $titlesPrinted = 0;
my $readingStrings = 1;
my $curList = 0;
my $newTitles;

open(A, "$roil\\tosort.txt") || die ("Could not find tosort.txt.");

if (defined($ARGV[0]))
{
  if ($ARGV[0] =~ /c/) { $compare = 1; }
  if ($ARGV[0] =~ /d/) { $noCopy = 1; }
  if ($ARGV[0] =~ /f/) { $noCopy = 0; }
  $ARGV[0] =~ s/[cdf-]//g;
  if ($ARGV[0]) { usage(); }
}

while (my $line = <A>)
{
  if ($readingStrings)
  {
    if ($line =~ /[a-z]/i)
    {
	  if ($curList == 0)
	  {
	    if ($line !~ /^\"/) { $line = "\"$line"; $line =~ s/$/\"/; $qad++; } #add quotes
	    if ($line =~ /\[r\]/) { $newTitles .= $line; $titlesPrinted++; }
		else { $listLump[$curList] .= $line; }
	  }
	  else { $listLump[$curList] .= $line; }
    }
	else { $readingStrings = 0; }
  }
  else
  {
    if ($line =~ /[a-z]/i)
	{
	  $readingStrings = 1;
	  $curList++;
	  if ($curList > 2) { die("Too many line breaks at $.!"); }
	  $listLump[$curList] .= $line;
	}
  }
}

if ($newTitles)
{
  if ($listLump[1])
  {
    $listLump[2] = $listLump[1];
	$listLump[1] = "";
  }
  $listLump[1] .= $newTitles;
}

my @finalOut;

for my $l (@listLump) { push (@finalOut, alfPrint($l)); }

open(B, ">$roil/tosort2.txt");
print B join("\n\n", @finalOut);
close(B);

if ($qad) { print "$qad quotes added!\n"; }
if ($titlesPrinted) { print "$titlesPrinted titles printed!\n"; }

`wm tosort.txt tosort2.txt`;

die;

sub alfPrint
{
  if (!$_[0]) { return; }
  my @tosort = split(/\n/, $_[0]);
  @tosort = sort { wordsIn($a) <=> wordsIn($b) || length($a) <=> length($b) } (@tosort);
  return join("\n", @tosort);
}

if ($noCopy) { die ("Run again without -d."); }

# in case anything happens
`copy /Y tosort.txt tosort-bk.txt`;

# the big moment
`copy /Y tosort2.txt tosort.txt;`;

sub wordsIn
{
  my @x = split(/ /, $_[0]);
  return $#x
}

sub usage
{
print<<EOT;
c/-c is compare post-run
d/-d is demo mode. The file doesn't change.
f/-f is force copy.
EOT
exit
}