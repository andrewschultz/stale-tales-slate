##########################################################
#tsh.pl
#table sorter app for Roiling Original etc.
#

use Cwd;

$fileName = "story.ni";
$outFileName = "c:/program files (x86)/inform 7/inform7/extensions/andrew schultz/temp.i7x";

$dupes = 0;

$s = "sa";
$r = "roiling";

while ($count <= $#ARGV)
{
  $a = @ARGV[$count];  
  $b = @ARGV[$count+1];  
  for ($a)
  {
    /^-?x$/ && do { $dontcopy = 1; $count++; next; };
	/^-?(r|ro|roi)$/ && do { @dirs = (@dirs, $r); $count++; next; };
	/^-?(s|sa)$/ && do { @dirs = (@dirs, $s); $count++; next; };
	/^-?b$/ && do { @dirs = (@dirs, $r, $s); $count++; next; }; # both: roiling goes first due to more debug text
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
  @dirs = (lc(getcwd()));
  }
  else
  {
  @dirs = ($r);
  }
}

for $mydir (@dirs)
{
  if ($alfed{$mydir}) { print "Duplicate directory $mydir\n."; } else { alphSource($mydir); $alfed{lc($mydir)} = 1; }
}

#This is the big subfunction

sub alphSource
{

print "Alphabetizing $_[0].\n";

$fileName = fileOf($_[0]);

$findy{lc("$_[0]/story.ni")} = 1; #print "Adding $_[0] to findy.\n";

$lines = 0;

my $thisDir = lc($_[0]);

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
  $lines++;
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

$errSlash = join(" / ", @errLines);

print "TEST RESULTS:$_[0] duplicates,0,$dupes,0,$errSlash\n";

$niSize = -s "$fileName";
$nuSize = -s "$outFileName";

if ($niSize != $nuSize) { die "Something went wrong. File sizes aren't equal! New=$nuSize Old=$niSize. Maybe check CR's."; }

if ($badError) { die "BAD ERRORS FOUND, ABORTING\n$badError\n"; }

postProcess("$thisDir");

}

sub postProcess
{
  my $thisDir = $_[0];
  my $updateFound = 0;
  my $outString = $thisOutString = "";
  my $quoteWarn = 0;
  my $modFile = fileOf($_[0]);
  my $modFileShort = $modFile; $modFileShort =~ s/.*[\\\/]//g;
  #my $outFileName = "$_[0].bak";
  my $outFileName = "c:\\Program Files (x86)\\Inform 7\\Inform7\\Extensions\\Andrew Schultz\\temp.i7x";

  
if (!$dontcopy)
{
  print "Copying .nu to .ni\n";
  #`copy -R $outFileName $fileName`;
  open(A, "c:/games/inform/tsh.txt");
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
  @localtime = localtime(time);
  $dateForm = sprintf("%4d-%02d-%02d-%02d-%02d-%02d",
  @localtime[5]+1900, @localtime[4]+1, @localtime[3], @localtime[2], @localtime[1], @localtime[0]);
  $thisOutString = "$modFileShort," . (-s "$modFile") . ",$dupes,$dateForm\n";
  $outString .= $thisOutString;

  print "Now:\n$outString";
  
  close(A);
  open(B, ">c:/games/inform/tsh.txt");
  print B $outString;
  close(B);
  $cmd = "copy \"$outFileName\" \"$modFile\"";
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

  while ($a = <A>)
  {
    @c = split(/\"/,  $a);
	if (($#c ==1) || ($#c > 2)) { $badError .= ("Uh-oh, wrong # of quotes at $short line " . ($lines+$#ary+2) . "\n$#c:$a"); }
    if ($a =~ /^'/) { $badError .= ("Uh-oh, single quote line start at $short line " . ($lines+$#ary+2) . ", bailing."); }
    if ($a !~ /^\"/) {
	  if ($a =~ /^[a-z]/i) { $badError .= ("Uh-oh, you started a table line with a character: $short # " .  ($lines+$#ary+2) . ", bailing."); }
	  $ch = chr(0xe2);
	  if ($a =~ /^$ch/) { $badError .= ("Uh-oh, smart quote found at $short line " . ($lines+$#ary+2) . ", bailing."); }
	  #print "Final = $a";
	  last;
	}
    push(@ary, $a);
    chomp ($a);
	$num = () = $a =~ /\"/gi;
	if (($num % 2) || (!$num)) { $quoteWarn .= "  -- $thisTable: $a\n"; }
  }
  if ($verbose) { printf("%2d: Sorting $thisTable, " . ($#ary+1) . " total elements.\n", $count); }
  if ($#ary < 23)
  { print "********UH OH, THERE ARE WAY TOO FEW in $thisTable, $#ary********\n"; }
  @ary2 = sort {lch($a) cmp lch($b)} @ary;
  for (@ary2)
  {
    print B "$_";
	#print chr(13);
  }
  print B $a; #print chr(13);
  for (0..$#ary2)
  {
    $lines2 = $lines + $_;
    $temp = lch(@ary2[$_]); chomp($temp); 
    if ($isDone{$temp})
	{
	  $dupes++;
	  push (@errLines, $lines2);
	  if ($lines2 - $isDone{$temp} == 1) { $addDupe = "$temp ($lines2-$short) is a duplicate line in the same table.\n"; }
	  else
	  {
      $addDupe = "$temp ($lines2-$short) is duplicated from line $isDone{$temp} table $table{$temp}.\n";
	  }
	  $dupeString .= $addDupe;
    }
	elsif ($_ > 0)
	{
	  if (@ary2[$_] =~ /\Q@ary2[$_-1]/i)
	  {
	    print "$temp ($lines2-$short) is *duplicated from line $isDone{$temp}.\n"; $dupes++; $dupeString .= "$thisTable ($lines2 from $isDone{$temp}): $temp\n";
	  }
	}
	$isDone{$temp} = "$lines2-$short";
	$table{$temp} = $thisTable;
  }
  $lines += $#ary2 + 2;
  
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
  if ($temp =~ /anyhow/i) { print "$temp!\n"; }
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