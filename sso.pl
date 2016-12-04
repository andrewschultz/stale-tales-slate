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
my $numbers = 0;

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
my $movies = "";
my $fgp = "";
my $mgp = "";
my $igp = "";
my $xgp = "";
my $pgp = "";
my $vgp = "";
my $wgp = "";
my $ygp = "";
my $ugp = "";
my $tgp = "";
my $hgp = "";

if (defined($ARGV[0]))
{
  if ($ARGV[0] =~ /c/) { $compare = 1; }
  if ($ARGV[0] =~ /d/) { $noCopy = 1; }
  if ($ARGV[0] =~ /e/) { `$roil\\$toSort`; exit(); }
  if ($ARGV[0] =~ /f/) { $noCopy = 0; }
  if ($ARGV[0] =~ /n/) { $numbers = 1; }
  $ARGV[0] =~ s/[cdfn-]//g;
  if ($ARGV[0]) { usage(); }
}

open(A, "$roil\\tosort.txt") || die ("Could not find tosort.txt.");

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
		elsif ($line =~ /\[i\].*\[r\]/) { $movies .= $line; }
		elsif ($line =~ /\"f$/) { $fgp .= $line; }
		elsif ($line =~ /\"m$/) { $mgp .= $line; }
		elsif ($line =~ /\"i$/) { $igp .= $line; }
		elsif ($line =~ /\"x$/) { $xgp .= $line; }
		elsif ($line =~ /\"p$/) { $pgp .= $line; }
		elsif ($line =~ /\"v$/) { $vgp .= $line; }
		elsif ($line =~ /\"w$/) { $wgp .= $line; }
		elsif ($line =~ /\"y$/) { $ygp .= $line; }
		elsif ($line =~ /\"u$/) { $ugp .= $line; }
		elsif ($line =~ /\"t$/) { $tgp .= $line; }
		elsif ($line =~ /\"h$/) { $hgp .= $line; }
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
	  elsif ($line =~ /\[i\].*\[r\]/i) { $listLump[$curList] = $movies; $movies = ""; }
	  elsif ($line =~ /\"f/i) { $listLump[$curList] = $fgp; $fgp = ""; }
	  elsif ($line =~ /\"m/i) { $listLump[$curList] = $mgp; $mgp = ""; }
	  elsif ($line =~ /\"i/i) { $listLump[$curList] = $igp; $igp = ""; }
	  elsif ($line =~ /\"x/i) { $listLump[$curList] = $xgp; $xgp = ""; }
	  elsif ($line =~ /\"p/i) { $listLump[$curList] = $pgp; $pgp = ""; }
	  elsif ($line =~ /\"v/i) { $listLump[$curList] = $vgp; $vgp = ""; }
	  elsif ($line =~ /\"w/i) { $listLump[$curList] = $wgp; $wgp = ""; }
	  elsif ($line =~ /\"y/i) { $listLump[$curList] = $ygp; $ygp = ""; }
	  elsif ($line =~ /\"u/i) { $listLump[$curList] = $ugp; $ugp = ""; }
	  elsif ($line =~ /\"t/i) { $listLump[$curList] = $tgp; $tgp = ""; }
	  elsif ($line =~ /\"h/i) { $listLump[$curList] = $hgp; $hgp = ""; }
	  $listLump[$curList] .= $line;
	}
  }
}

my $rolling = 1;
if ($allCaps) { splice(@listLump, $rolling, 0, $allCaps); $rolling++; }
if ($newTitles) { splice(@listLump, $rolling, 0, $newTitles); $rolling++; }
if ($shoutyAds) { splice(@listLump, $rolling, 0, $shoutyAds); $rolling++; }
if ($movies) { splice(@listLump, $rolling, 0, $movies); $rolling++; }
if ($fgp) { splice(@listLump, $rolling, 0, $fgp); $rolling++; }
if ($mgp) { splice(@listLump, $rolling, 0, $mgp); $rolling++; }
if ($igp) { splice(@listLump, $rolling, 0, $igp); $rolling++; }
if ($xgp) { splice(@listLump, $rolling, 0, $xgp); $rolling++; }
if ($pgp) { splice(@listLump, $rolling, 0, $pgp); $rolling++; }
if ($vgp) { splice(@listLump, $rolling, 0, $vgp); $rolling++; }
if ($wgp) { splice(@listLump, $rolling, 0, $wgp); $rolling++; }
if ($ygp) { splice(@listLump, $rolling, 0, $ygp); $rolling++; }
if ($ugp) { splice(@listLump, $rolling, 0, $ugp); $rolling++; }
if ($tgp) { splice(@listLump, $rolling, 0, $tgp); $rolling++; }
if ($hgp) { splice(@listLump, $rolling, 0, $hgp); $rolling++; }

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
SSO roughly sorts out anagrams into categories: biopics, regular books, movies, shouty ads, and ALL CAPS entries.
You can also specify the store area at the end of the quotes. X means the name list to start SA.

Sorted always remain on top, non-sorted on bottom, so ctrl-home/end work. Sorting within is by word then letter length.

c/-c is compare post-run
d/-d is demo mode. The file doesn't change.
e/-e edits tosort.txt.
f/-f is force copy.
n/-n runs the numbers.
EOT
exit
}