###########################
#sso.pl
#scratch sort, does a trivial sort of the anagram ideas I have written down for both SA and ARO
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
my $stats = 0;

my @listLump = ("");
my $roil = "c:\\games\\inform\\roiling.inform\\Source";

my $qad = 0;
my $readingStrings = 1;
my $curList = 0;
my $badsuffix = 0;

my $newTitles = "";
##############################
#ALL CAPS appears in more than one area but is divisible into the PSA's and the Lament Mantel
my $allCaps = "";
my $shoutyAds = "";
my $biopics = "";
my $movies = "";
##############################
#Shuffling by-area
my $fgp = ""; #####store f's bad areas
my $mgp = ""; #####camp/condo/nerds (PSA allcaps yelling goes to shouty)
my $igp = ""; #####store i's bad poems
my $xgp = ""; #####names at the start
my $rgp = ""; #####RBB/rioter taunts
##############################
#Roiling by-area (store, then random)
my $pgp = "";
my $tgp = "";
my $ugp = "";
my $vgp = "";
my $wgp = "";
my $ygp = "";
my $sgp = ""; #####stores has the tokers and the cruelest lectures
my $hgp = ""; #####store h postfix ending: selly yells and nonsense political themes
my $ggp = ""; #####generic stuff like waiting or no text
my $ogp = ""; #####roiling general

if (defined($ARGV[0]))
{
  if ($ARGV[0] =~ /o/) { outputLast(); exit(); }
  if ($ARGV[0] =~ /c/) { $compare = 1; }
  if ($ARGV[0] =~ /d/) { $noCopy = 1; }
  if ($ARGV[0] =~ /e/) { `$roil\\toSort.txt`; exit(); }
  if ($ARGV[0] =~ /f/) { $noCopy = 0; }
  if ($ARGV[0] =~ /n/) { $numbers = 1; }
  if ($ARGV[0] =~ /s/) { $stats = 1; }
  $ARGV[0] =~ s/[cdfns-]//g;
  if ($ARGV[0]) { usage(); }
}

open(A, "$roil\\tosort.txt") || die ("Could not find tosort.txt.");

my $line;

while ($line = <A>)
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
		elsif ($line =~ /\"r$/) { $rgp .= $line; } # end shuffling choices
		elsif ($line =~ /\"p$/) { $pgp .= $line; }
		elsif ($line =~ /\"t$/) { $tgp .= $line; }
		elsif ($line =~ /\"u$/) { $ugp .= $line; }
		elsif ($line =~ /\"v$/) { $vgp .= $line; }
		elsif ($line =~ /\"w$/) { $wgp .= $line; }
		elsif ($line =~ /\"y$/) { $ygp .= $line; } # end store areas
		elsif ($line =~ /\"s$/) { $sgp .= $line; } # stores
		elsif ($line =~ /\"h$/) { $hgp .= $line; } # h
		elsif ($line =~ /\"g$/) { $ggp .= $line; } # generic
		elsif ($line =~ /\"o$/) { $ogp .= $line; } # opening of ARO
		elsif ($line =~ /\"[a-z]$/) { $badsuffix++; print "Bad suffix $badsuffix, line $.: $line"; }
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
	  if ($curList > 15) { die("Too many line breaks at $.!"); }
	  if ($line =~ /\[r\].*\t(true|false)/) { $listLump[$curList] = $biopics; $biopics = ""; }
	  if ($line !~ /[a-z]/i) { $listLump[$curList] = $allCaps; $allCaps = ""; }
	  elsif ($line =~ /\[r\]/i) { $listLump[$curList] = $newTitles; $newTitles = ""; }
	  elsif ($line =~ /\t(true|false)/i) { $listLump[$curList] = $shoutyAds; $shoutyAds = ""; }
	  elsif ($line =~ /\[i\].*\[r\]/i) { $listLump[$curList] = $movies; $movies = ""; }
	  elsif ($line =~ /\"f/i) { $listLump[$curList] = $fgp; $fgp = ""; }
	  elsif ($line =~ /\"m/i) { $listLump[$curList] = $mgp; $mgp = ""; }
	  elsif ($line =~ /\"i/i) { $listLump[$curList] = $igp; $igp = ""; }
	  elsif ($line =~ /\"x/i) { $listLump[$curList] = $xgp; $xgp = ""; }
	  elsif ($line =~ /\"r/i) { $listLump[$curList] = $rgp; $rgp = ""; }
	  elsif ($line =~ /\"p/i) { $listLump[$curList] = $pgp; $pgp = ""; }
	  elsif ($line =~ /\"t/i) { $listLump[$curList] = $tgp; $tgp = ""; }
	  elsif ($line =~ /\"u/i) { $listLump[$curList] = $ugp; $ugp = ""; }
	  elsif ($line =~ /\"v/i) { $listLump[$curList] = $vgp; $vgp = ""; }
	  elsif ($line =~ /\"w/i) { $listLump[$curList] = $wgp; $wgp = ""; }
	  elsif ($line =~ /\"y/i) { $listLump[$curList] = $ygp; $ygp = ""; }
	  elsif ($line =~ /\"s/i) { $listLump[$curList] = $sgp; $sgp = ""; } # stores
	  elsif ($line =~ /\"h/i) { $listLump[$curList] = $hgp; $hgp = ""; } # H
	  elsif ($line =~ /\"g/i) { $listLump[$curList] = $ggp; $ggp = ""; } # general
	  elsif ($line =~ /\"o/i) { $listLump[$curList] = $ogp; $ogp = ""; } # opening
	  $listLump[$curList] .= $line;
	}
  }
}
close(A);

if ($badsuffix) { print "Fix bad suffixes before continuing."; exit(); }

my $rolling = 1;
if ($allCaps) { splice(@listLump, $rolling, 0, $allCaps); $rolling++; }
if ($newTitles) { splice(@listLump, $rolling, 0, $newTitles); $rolling++; }
if ($shoutyAds) { splice(@listLump, $rolling, 0, $shoutyAds); $rolling++; }
if ($movies) { splice(@listLump, $rolling, 0, $movies); $rolling++; }
if ($fgp) { splice(@listLump, $rolling, 0, $fgp); $rolling++; } # start SA areas
if ($mgp) { splice(@listLump, $rolling, 0, $mgp); $rolling++; }
if ($igp) { splice(@listLump, $rolling, 0, $igp); $rolling++; }
if ($xgp) { splice(@listLump, $rolling, 0, $xgp); $rolling++; }
if ($rgp) { splice(@listLump, $rolling, 0, $rgp); $rolling++; } # end SA areas
if ($pgp) { splice(@listLump, $rolling, 0, $pgp); $rolling++; }
if ($tgp) { splice(@listLump, $rolling, 0, $tgp); $rolling++; }
if ($ugp) { splice(@listLump, $rolling, 0, $ugp); $rolling++; }
if ($vgp) { splice(@listLump, $rolling, 0, $vgp); $rolling++; }
if ($wgp) { splice(@listLump, $rolling, 0, $wgp); $rolling++; }
if ($ygp) { splice(@listLump, $rolling, 0, $ygp); $rolling++; }
if ($sgp) { splice(@listLump, $rolling, 0, $sgp); $rolling++; }
if ($hgp) { splice(@listLump, $rolling, 0, $hgp); $rolling++; }
if ($ggp) { splice(@listLump, $rolling, 0, $ggp); $rolling++; }
if ($ogp) { splice(@listLump, $rolling, 0, $ogp); $rolling++; }

my @finalOut;

for my $l (@listLump) { push (@finalOut, alfPrint($l)); }

open(B, ">$roil/tosort2.txt");
print B join("\n\n", @finalOut);
close(B);

if ($qad) { print "$qad quotes added!\n"; }

if ($compare) { `wm $roil\\tosort.txt $roil\\tosort2.txt`; print "Comparing, no copy over."; }
elsif ($noCopy) { print "Did not copy over. Use -f to force or get rid of -d."; }
else { `copy $roil\\tosort2.txt $roil\\tosort.txt`; }

if ($numbers)
{
  open(A, "$roil\\tosort.txt");
  my $empties = 0;

  while ($line = <A>) { if ($line !~ /[a-z]/i) { $empties++; } }

  print "$. $empties\n";
  my $totalNonEmpty = $. - $empties;
  close(A);

  my ($second, $minute, $hour, $dayOfMonth, $month, $yearOffset, $dayOfWeek, $dayOfYear, $daylightSavings) = localtime(time);
  my @left = split(/\n/, $finalOut[0]);
  my @uns = split(/\n/, $finalOut[$#finalOut]);
  my $out = sprintf("%d,%d,%d,%d-%02d-%02d %02d:%02d:%02d\n", ($#left+1), ($#uns+1), $totalNonEmpty, $yearOffset+1900, $month+1, $dayOfMonth+1, $hour, $minute, $second);
  open(B, ">>$roil\\sso-stat.txt");
  printf B $out;
  close(B);
}

if ($stats) { `$roil\\sso-stat.txt`; }

sub alfPrint
{
  if (!$_[0]) { return; }
  my @tosort = split(/\n/, $_[0]);
  @tosort = sort { wordsIn($a) <=> wordsIn($b) || length($a) <=> length($b) } (@tosort);
  return join("\n", @tosort);
}

# in case anything happens
`copy /Y tosort.txt tosort-bk.txt`;

# the big moment
`copy /Y tosort2.txt tosort.txt;`;

sub wordsIn
{
  my @x = split(/ /, $_[0]);
  return $#x
}

sub outputLast
{
  my @ary = ();
  open(A, "$roil\\tosort.txt");
  while ($a = <A>)
  {
    if ($a !~ /[a-z]/i) { @ary = (); next; }
	chomp($a);
	push (@ary, $a);
  }
  close(A);
  my $a2 = $#ary+1;
  print "Total to check = " . ($a2) . ".\n";
  open(B, ">$roil\\tosort-auto.txt");
  my $q = time();
  my $cout;
  for (0..$#ary)
  {
    my $cmd = "gr $ary[$_] | grep -i table";
	printf("%d of %d: $cmd\n", $_+1, $a2);
	$cout = `$cmd`;
	if ($cout =~ /[a-z]/) { print B "(" . ($_+1) . ")$ary[$_]===\n"; print B $cout; }
  }
  $q = time() - $q;
  print B "$q total seconds for $a2 undones.\n";
  close(B);
  `$roil\\tosort-auto.txt`;
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
s/-s opens the stats after
dns is good for doing the stats etc
EOT
exit
}