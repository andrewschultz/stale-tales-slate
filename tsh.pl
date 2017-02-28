##########################################################
#tsh.pl
#table sorter app for Roiling Original etc.
#

use Cwd;

use strict;
use warnings;

####################constants
my $fileName = "story.ni";
my $outFileName = "c:/program files (x86)/inform 7/inform7/extensions/andrew schultz/temp.i7x";
my $s = "shuffling";
my $r = "roiling";

###################options
my $dontcopy = ;
my $verbose = 0;
my $seriouslyTesting = 0;

###################variables
my $dupes = 0;
my $totBad = 0;
my $badError = "";
my @dirs;
my @errLines;
my $short;
my $quoteWarn;
my $ignoreArticles = 0;
my $deletedBytes = 0;

####alphSource/Sort TheTable
my $thisTable;
my $dupeString;

my $count;

while ($count <= $#ARGV)
{
  $a = @ARGV[$count];
  $b = @ARGV[$count+1];
  for ($a)
  {
    /^-?x$/ && do { $dontcopy = 1; $count++; next; };
	/^-?(r|ro|roi)$/ && do { @dirs = (@dirs, $r); $count++; next; };
	/^-?(s|sa)$/ && do { @dirs = (@dirs, $s); $count++; next; };
	/^-?b$/ && do { @dirs = (@dirs, $s, $r); $count++; next; }; # both: roiling goes first due to more debug text
	/^-?st$/ && do { $seriouslyTesting = 1; $count++; next; };
	/^-?o$/ && do { $outFileName = "$b"; $count += 2; next; };
	/^-?v$/ && do { $verbose = 1; $count++; next; };
	/^-?f$/ && do { $fileName = "$b"; if ($fileName !~ /\.ni/) { $fileName .= ".ni"; } $count += 2; next; };
	usage();
  }
}

if ($#dirs == -1)
{
  if (-f "story.ni")
  {
  my $shortDir = getcwd();
  $shortDir =~ s/\.inform.*//g; $shortDir =~ s/.*[\\\/]//g;

  @dirs = ($shortDir);
  }
  else
  {
  @dirs = ($r);
  }
}

my %alfed;
for my $mydir (@dirs)
{
  if ($alfed{$mydir}) { print "Duplicate directory $mydir\n."; } else { alphSource($mydir); $alfed{lc($mydir)} = 1; }
}

#This is the big subfunction

sub alphSource
{
  my %findy;
  my $fileName = fileOf($_[0]);
  my $thisDir = lc($_[0]);

  print "Alphabetizing $_[0].\n";

  $findy{lc("$_[0]/story.ni")} = 1; #print "Adding $_[0] to findy.\n";


$short = $thisDir;
$short =~ s/\.inform.*//g; $short =~ s/.*[\\\/]//g;

if (! -f "$fileName") { die("No $fileName, bailing."); }

$count = 0;

$ignoreArticles = 1;

open(A, "$fileName");
open(B, ">$outFileName");

binmode(B);

while ($a = <A>)
{
  if (($a =~ /^blurb/) && ($a !~ /\[noalf\]/) && ($a !~ /^blurb\t\"/) && ($b !~ /magnifs/)) #blurb then quote appears in SA
  {
    $count++;
    #print "$count: Sorting $b";
	$thisTable = $b; $thisTable =~ s/ ?\[.*//g; chomp($thisTable);
    print B $a;
    sortTheTable();
  }
  else
  {
    print B $a;
  }
  $b = $a;
}

close(A);
close(B);

if ($dupes) { print "$dupes duplicate(s) found. Results below.\n$dupeString"; } else { print "No duplicates found. Hooray!\n"; }

my $errSlash = join(" / ", reverse(@errLines));

print "TEST RESULTS:$_[0] duplicates,0,$dupes,0,$errSlash\n";

my $niSize = -s "$fileName";
my $nuSize = -s "$outFileName";
my $nuDel = $nuSize + $deletedBytes;

if ($nuDel != $niSize) { die "Something went wrong. File sizes aren't equal! New=$nuSize + $deletedBytes = $nuDel != Old=$niSize. Maybe check CR's."; }

if ($badError)
{
  my @temp = split(/\n/, $badError);
  @temp = grep { $_ =~ /\"/ } @temp;
  print join "<br/>", @temp;
  print "TEST RESULTS:$_[0] quotes,0,$totBad,0,$errSlash\n";
  print "BAD ERRORS FOUND, NOT POST-PROCESSING\n$badError\n";
  return;
}
else
{
postProcess("$thisDir");
}

}

sub postProcess
{
  my $thisDir = $_[0];
  my $updateFound = 0;
  my $outString = my $thisOutString = "";
  my $modFile = fileOf($_[0]);
  my $modFileShort = $modFile; $modFileShort =~ s/.*[\\\/]//g;
  #my $outFileName = "$_[0].bak";
  my $outFileName = "c:\\Program Files (x86)\\Inform 7\\Inform7\\Extensions\\Andrew Schultz\\temp.i7x";


if (!$dontcopy)
{
  print "Copying .nu to .ni\n";
  #`copy -R $outFileName $fileName`;
  open(A, "c:/games/inform/tsh.txt");
  my @b;
  while ($a = <A>)
  {
    @b = split(/,/, $a);
    if (@b[0] =~ /$_[0]/)
	{
	  $updateFound = 1;
	  print "Updating @b[0].\n";
	}
	else
	{
	  print "Not updating @b[0].\n";
	  $outString .= $a;
	}
  }
  if (!$updateFound) { print "New file $_[0]/story.ni.\n"; }
  my @localtime = localtime(time);
  my $dateForm = sprintf("%4d-%02d-%02d-%02d-%02d-%02d",
  @localtime[5]+1900, @localtime[4]+1, @localtime[3], @localtime[2], @localtime[1], @localtime[0]);
  $thisOutString = "$modFileShort," . (-s "$modFile") . ",$dupes,$dateForm\n";
  $outString .= $thisOutString;

  print "Now:\n$outString";

  close(A);
  open(B, ">c:/games/inform/tsh.txt");
  print B $outString;
  close(B);
  my $cmd = "copy \"$outFileName\" \"$modFile\"";
  $cmd =~ s/\//\\/g;
  #print "$cmd\n";
  if (!$seriouslyTesting) { `$cmd`; print "Copying over $outFileName $fileName.\n$cmd\n"; } else { print "Testing means I didn't copy.\n"; exit; }
}
else
{
  print "Did not copy $outFileName $fileName\n";
  print "wm \"$fileName\" \"$outFileName\"\n";
}
if ($quoteWarn) { print "ODD QUOTE WARNING:\n$quoteWarn"; }
#`wm $fileName $outFileName`;
}

######################################
#this sorts each table in story.ni as they're loaded in

sub sortTheTable
{
  my @ary = ();
  my $del = 0;
  my $lastDupTable = "";
  my @c;
  my @ary2;
  my %isDone;
  my %table;
  my $addDupe;
  my $ch = chr(0xe2);
  my $num;
  my $temp;
  my $temp2;

  while ($a = <A>)
  {
    @c = split(/\"/,  $a);
	if (($#c ==1) || ($#c > 2)) { $totBad++; $badError .= ("Uh-oh, wrong # of quotes at $short line $.\n$#c:$a"); }
    if ($a =~ /^'/) { $totBad++; $badError .= ("Uh-oh, single quote line start at $short line $., bailing."); }
    if ($a !~ /^\"/) {
	  if ($a =~ /^[a-z]/i) { $totBad++; $badError .= ("Uh-oh, you started a table line with a character: $short # $., bailing."); }
	  if ($a =~ /^$ch/) { $totBad++; $badError .= ("Uh-oh, smart quote found at $short line $., bailing."); }
	  #print "Final = $a";
	  last;
	}
    push(@ary, $a);
    chomp ($a);
	$num = () = $a =~ /\"/gi;
	if (($num % 2) || (!$num)) { $quoteWarn .= "  -- $thisTable: $a\n"; }
  }
  if ($badError) { print "TEST RESULTS:$short tables bad fail,1,0,0,0,$badError\n"; die; }
  if ($verbose) { printf("%2d: Sorting $thisTable, " . ($#ary+1) . " total elements.\n", $count); }
  if ($#ary < 23)
  { print "********UH OH, THERE ARE WAY TOO FEW in $thisTable, $#ary********\n"; }
  $del = 0;
  @ary2 = sort {lch($a) cmp lch($b)} @ary;
  for (0..$#ary2)
  {
    my $lines2 = $. + $_ + 1 - $del;
    $temp = lch(@ary2[$_]); chomp($temp);
	$temp2 = $temp; $temp2 =~ s/'//g;
    if ($isDone{$temp2})
	{
	  if ($thisTable ne $lastDupTable) { $dupeString .= "****TABLE $thisTable\n"; $lastDupTable = $thisTable; }
	  $dupes++;
	  push (@errLines, $lines2);
	  if ($lines2 - $isDone{$temp2} == 1) { $addDupe = "$temp ($lines2-$short) is an immediate duplicate($table{$temp2}). Weeding out.\n"; $deletedBytes += length($ary2[$_]); $ary2[$_] = ""; }
	  else
	  {
      $addDupe = "$temp ($lines2-$short) is duplicated from line $isDone{$temp2} table $table{$temp2}.\n";
	  }
	  $dupeString .= $addDupe;
    }
	elsif ($_ > 0)
	{
	  if ((@ary2[$_-1]) && (@ary2[$_] =~ /\Q@ary2[$_-1]/i))
	  {
        if ($thisTable ne $lastDupTable) { $dupeString .= "****TABLE $thisTable\n"; $lastDupTable = $thisTable; }
	    print "LastLineCheck: $temp ($lines2-$short) is duplicated from line $isDone{$temp2}.\n"; $dupes++; $dupeString .= "($_) $thisTable ($lines2 from previous line)\n";
	  }
	}
	$isDone{$temp2} = "$lines2-$short";
	$table{$temp2} = $thisTable;
  }
  @ary2 = grep { $_ ne '' } @ary2;

  for (@ary2)
  {
    print B "$_";
	#print chr(13);
  }
  print B $a; #print chr(13);

  #print $#ary . " total lines.\n";
}

#for $d (sort keys %isDone) { print "$d\n"; }

##########################################
#this breaks down a string into only its text, so dupi

sub lch
{
  my $temp = lc($_[0]);
  if ($ignoreArticles)
  {
    $temp =~ s/^\"(')?//g;
	$temp =~ s/://g;
	$temp =~ s/^(\[[^\]]])? *//g;
	$temp =~ s/^(the|a|an|) //gi;
	$temp =~ s/^\(//gi;
	$temp =~ s/\///g;
  }
  $temp =~ s/^\"//g; $temp =~ s/\".*//g;
  $temp =~ s/-/ /g; $temp =~ s/[\.\?\!]//g; $temp =~ s/,//g; $temp =~ s/\'$//g;
  $temp =~ s/ +/ /g;
  return $temp;
}

#######################################
#converts dir prefix to header file
#
sub fileOf
{
  #return "c:/games/inform/$_[0].inform/Source";
  return "c:/Program Files (x86)/Inform 7/Inform7/Extensions/Andrew Schultz/$_[0] Random Text.i7x";
}

sub usage
{
print <<EOT;
-b both
-r roiling (default unless story.ni in PWD)
-s shuffling
-f file name
-v verbose (show what tables sorted)
-x don't copy over
EOT
exit;
}