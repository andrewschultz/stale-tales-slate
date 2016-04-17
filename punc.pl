# punc.pl
#
# e edits punc.txt
#
# with punc.txt, makes sure there are no gross punctuation errors in the Stale Tales Slate random entries
# punc.txt has more annotations on what things mean
#
# each table has field values: start capital, punctuation and quotes
#
# 3 means ALL CAPS
# 2 means Title Case
# 1 means yes, always
# 0 means doesn't matter
# -1 means no, never
#
# overridden by [p] in the source file
#
# -? gives usage
#

my $allLines;

if (@ARGV[0] eq "e") { `c:\\writing\\dict\\punc.txt`; exit; }

@titleWords = ("by", "a", "the", "in", "if", "is", "it", "as", "of", "on", "to", "or", "and", "at", "an", "oh", "for", "be", "not", "no", "nor", "into", "with", "from");
addTitles();

$showOK = 0;

if (-f "punc.txt") 
{
open(A, "punc.txt") || die ("Can't open punc.txt.");
}
else
{
open(A, "c:/writing/dict/punc.txt") || die ("Can't open c:/writing/dict/punc.txt.");
}

while ($a = <A>)
{
  if ($a =~ /#/) { next; }
  if ($a =~ /;/) { last; }
  chomp($a);
  if ($a =~ /^VALUE=/) { $a =~ s/VALUE=//g; $gameVal = $a; next;}
  @b = split(/\t/, lc($a));
  if ($#b == 0) { print "Warning: No data for TABLE OF @b[0].\n"; }
  if (@b[1] eq "--") { $ignore{@b[0]} = 1; next; }
  $entry{@b[0]} = $gameVal; #print "Defining @b[0].\n";
  $caps{@b[0]} = @b[1];
  $punc{@b[0]} = @b[2];
  $quot{@b[0]} = @b[3];
  if ($quot{@b[0]} eq "") { print "Warning fill in @b[0] rows.\n"; }
}

close(A);

$proj = "roiling";

$map{"s"} = "sa";
$map{"roi"} = "roiling";

if (@ARGV[0] eq "-h") { usage(); }

if ($map{@ARGV[0]}) { $proj = $map{@ARGV[0]}; }
elsif (@ARGV[0]) { $proj = @ARGV[0]; }

if (@ARGV[0] eq "b")
{
  storyTables("c:/program files (x86)/inform 7/inform7/extensions/andrew schultz/Roiling random text.i7x", "roiling");
  storyTables("c:/program files (x86)/inform 7/inform7/extensions/andrew schultz/Sa random text.i7x", "sa");
  exit;
}

print "b=both r/roi=roiling s/sa=shuffling\n";

$storyFile = "c:/program files (x86)/inform 7/inform7/extensions/andrew schultz/$proj random text.i7x";

if (@ARGV[1] eq "-i") { $matchQuotes = 0; }

storyTables($storyFile, "$proj");

sub storyTables
{

my $totalErrors = 0;
$totalSuccesses = 0;
@lineList = ();

open(A, $_[0]) || die ("Can't open $_[0].");

$allLines = 0;

print "Table parsing for $_[0]:\n";

while ($a = <A>)
{
  $allLines++;
  if ($a =~ /^table of /)
  {
    chomp($a);
    $head = lc($a); $head =~ s/^table of //g; $head =~ s/[ \t]*\[.*//g; next;
  }
  if (($a =~ /^blurb/) && ($a !~ /^blurb\t\"/)) # this is a hack as Shuffling as an object called blurb. Oops.
  {
    $errsYet = 0; $errs = 0;
	#print "...$head\n";
    if ($entry{$head} eq "") { if ($ignore{$head}) { } else { print "Warning, no entry in punc.txt for $head.\n"; } }
	else
	{
	  if (!$ignore{$head})
	  {
	  $got{$head} = 1;
	  $capCheck = $caps{$head};
	  $puncCheck = $punc{$head};
	  $quoCheck = $quot{$head};
	  $inTable = 1;
	  #print "Starting $head.\n";
	  }
	  next;
	}
	}
	if ($inTable == 1) { if ($a !~ /^\"/i) { if ($errs) { print "===============Finished $head. $errs errors.\n"; $totalErrors += $errs; } else { $noerr .= " $head"; } $errsyet = 0; $errs = 0; $inTable = 0; $lineNum = 0; next; }
	}
    if ($inTable)
	{
	  $lineNum++;
	  #print "Trying $a\n";
	  chomp($a);
	  lookUp($a);
	}
}

#now check to make sure everything in punc.txt is used
for $key (sort keys %entry)
{
  #print "$key/$entry{$key} vs $_[1]/$ignore{$key}/$got{$key}\n";
  if ((!$ignore{$key}) && (!$got{$key}) && ($entry{$key} eq $_[1]))
  { print "WARNING punc.txt pointed to table $key but story.ni did not.\n"; }
}

if (!$anyerr) { print "No tables had errors!\n"; }
else
{
if ($showOK) { print "OK tables:$noerr.\n"; }
}
my $listOut = join(" / ", @lineList);

print "TEST RESULTS:$_[1] punctuation,0,$totalErrors,$totalSuccesses,$listOut\n";

close(A);

}

sub lookUp
{
      $adNotTitle = 0;
      $temp = $_[0];
	  if ($temp =~ /\[p\]/i) { $totalSuccesses++; next; }
	  if ($temp =~ /\ttrue/) { $adNotTitle = 1; }
      $temp =~ s/^\"//gi;
      $temp =~ s/\".*//g;
	  $temp =~ s/' \/ '/ /g;
	  $temp =~ s/\[[^\]]\]//g;
	  $temp =~ s/\[n-t\]/Nate/g;
	  if ($head =~ /ad slogans/)
	  {
	    if ($_[0] =~ /!\"$/) { err(); print "$allLines($lineNum): $_[0] needs TRUE after tab.\n"; return; }
	  }
	  if ($head =~ /(random books|biopics)/)
	  {
	    if ($_[0] !~ /\[r\]/) { err(); print "$allLines($lineNum): $_[0] needs [r].\n"; return; }
	    if ($temp !~ / by /) { err(); print "$allLines($lineNum): $temp needs by.\n"; return; }
	  }
	  if ($temp =~ /\[\]/) { err(); print "$allLines($lineNum): $temp brackets with nothing in them.\n"; }
	  if (($temp =~ /[a-zA-Z][\.!\?] +[a-z]/) && ($temp !~ /[!\?] by/)) { if ($temp !~ /(i\.e|e\.g)\./i) { err(); print "$allLines($lineNum): $temp starts sentence with lower-case.\n"; }}
	  if ($temp =~ /â€œ/) { err(); print "$allLines($lineNum): $temp has smart quotes, which you may not want\n"; }
	  if (($capCheck == 3) && ($temp =~ /[a-z]/)) { err(); print "$allLines($lineNum): $temp needs to be ALL CAPS.\n"; }
	  if (($capCheck == 2) && ($adNotTitle == 0) && (!titleCase($temp))) { err(); print "$allLines($lineNum): $temp needs to be Title Case, change $wrongString.\n"; }
	  if (($capCheck == 1) && ($temp =~ /^[a-z]/)) { err(); print "$allLines($lineNum): $temp need caps.\n"; return; }
	  if (($capCheck == -1) && ($temp =~ /^[A-Z]/)) { err(); print "$allLines($lineNum): $temp wrong caps.\n"; return; }
	  if ($quoCheck == 1) { $count = ($temp =~ tr/'//); if (($count < 2) || (($temp !~ /^'/) && ($temp !~ /'$/))) { err(); print "$allLines($lineNum): $temp not enough quotes.\n"; return; } }
	  if ($quoCheck == -1) { if (($temp =~ /'$/) && ($temp =~ /^'/)) { err(); print "$allLines($lineNum): $temp too quotey.\n"; return; } }
      $gotit = ($temp =~ /[\.\!\"\?]['\)]?$/);
      if ($gotit && ($puncCheck == -1)) { err(); print "$allLines($lineNum): $temp unnecc punctuation.\n"; }
      if (!$gotit && ($puncCheck==1)) { err(); print "$allLines($lineNum): $temp missing punctuation.\n"; }
      if ($temp =~ /,[a-zA-Z]/) { err(); print "$allLines($lineNum): $temp comma no space.\n"; }
      if ($temp =~ /^!\./) { err(); print "$allLines($lineNum): $temp clashing punctuation.\n"; }
	  $temp2 = $temp; $temp2 =~ s/[a-z]\.?'[a-z]//gi; $count = ($temp2 =~ tr/'//); if ($count % 2) { err(); print "$allLines($lineNum): $temp ($count apostrophe(s))\n"; return; }
      if (($temp =~ /[a-z]' /i) || ($temp =~ / '[a-z]/)) { if ($temp !~ /'[a-z]+'/i) { err(); print "$allLines($lineNum): $temp possible unbracketed apostrophe.\n"; } }
      if (($temp =~ /^'/) ^ ($temp =~ /'$/)) { $count = ($temp =~ tr/'//); if ($count == 1) { err(); print ("$allLines($lineNum): $temp unmatched quotes.\n"); return; } }
      if (($temp =~ /^'/) && ($temp =~ /'$/)) { $temp =~ s/'//g; }
      if ($temp =~ /^ /) { err(); print "$allLines($lineNum): $temp leading space.\n"; }
      if ($temp =~ /''/) { err(); print "$allLines($lineNum): $temp two single quotes.\n"; }
	  $totalSuccesses++;
}

sub err
{
    if (!$errsyet) { print "ERRORS IN $head:=================================\n"; } $errs++;
    $errsyet = 1;
	$anyerr = 1;
	push (@lineList, $allLines);
}

sub addTitles
{
  for $x (@titleWords) { $titleLC{$x} = 1; }
}

sub titleCase
{
  my $temp = $_[0]; $temp =~ s/\[.*?\]//g; $temp =~ s/'[a-z]+//g;
  my @q = split(/\b/, $temp);
  my @wrongs = ();
  for my $word (@q)
  {
    if (($word =~ /^[a-z]/) && ($titleLC{$word} == 0)) { push(@wrongs, $word); }
  }
  if ($#wrongs == -1) { return 1; }
  $wrongString = join("/", @wrongs);
  return 0;
}

sub usage
{
print<<EOT;
start capital/punctuation/quotes

1 = necc 0 = either way -1 = *don't* include
EOT
exit;
}