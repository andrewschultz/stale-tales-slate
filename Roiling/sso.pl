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
#future features ALL CAPS separate chunk but that'd require renumbering
#
#also tacks on quotes
#

use strict;
use warnings;

#use Perl::Critic;

####options
my $compare = 0;
my $noCopy = 0;

my @listLump = ("");
my $roil = "c:\\games\\inform\\roiling.inform\\Source";

my $qad = 0;
my $titlesPrinted = 0;
my $readingStrings = 1;
my $curList = 0;

my $newTitles = "";
my $allCaps = "";
my $shoutyAds = "";
my $biopics = "";

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
	    if ($line !~ /^\"/)
		{
		  $line = "\"$line";
		  if ($line =~ /\t/) { $line =~ s/\t/\"\t/; } else { $line =~ s/$/\"/; }
		  $qad++;
		} #add quotes
	    if ($line =~ /\[r\].*\t(true|false)/) { $biopics .= $line; }
	    elsif ($line =~ /\[r\]/) { $newTitles .= $line; }
	    elsif ($line !~ /[a-z]/) { $allCaps .= $line; }
		elsif ($line =~ /\t(true|false)/) { $shoutyAds .= $line; }
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
	  push(@listLump, "");
	  if ($curList > 5) { die("Too many line breaks at $.!"); }
	  if ($line =~ /\[r\].*\t(true|false)/) { $listLump[$curList] = $biopics; $biopics = ""; }
	  if ($line !~ /[a-z]/i) { $listLump[$curList] = $allCaps; $allCaps = ""; }
	  elsif ($line =~ /\[r\]/i) { $listLump[$curList] = $newTitles; $newTitles = ""; }
	  elsif ($line =~ /\t(true|false)/i) { $listLump[$curList] = $shoutyAds; $shoutyAds = ""; }
	  $listLump[$curList] .= $line;
	}
  }
}

my $rolling = 1;
if ($allCaps) { splice(@listLump, $rolling, 0, $allCaps); $rolling++; }
if ($newTitles) { splice(@listLump, $rolling, 0, $newTitles); $rolling++; }
if ($shoutyAds) { splice(@listLump, $rolling, 0, $shoutyAds); $rolling++; }

my @finalOut;

for my $l (@listLump) { push (@finalOut, alfPrint($l)); }

open(B, ">$roil/tosort2.txt");
print B join("\n\n", @finalOut);
close(B);

if ($qad) { print "$qad quotes added!\n"; }
if ($titlesPrinted) { print "$titlesPrinted titles printed!\n"; }

if ($compare) { `wm $roil\\tosort.txt $roil\\tosort2.txt`; print "Comparing, no copy over."; exit(); }
if ($noCopy) { print "Did not copy over. Use -f to force or get rid of -d."; exit(); }

`copy $roil\\tosort2.txt $roil\\tosort.txt`;


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