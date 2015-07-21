use Cwd;

$fileName = "story.ni";
$outFileName = "story.nu";

$dupes = 0;

$s = "c:/games/inform/sa.inform/Source";
$r = "c:/games/inform/roiling.inform/Source";

while ($count <= $#ARGV)
{
  $a = @ARGV[$count];  
  $b = @ARGV[$count+1];  
  for ($a)
  {
    /-x/ && do { $dontcopy = 1; $count++; next; };
	/-r/ && do { @dirs = (@dirs, $r); $count++; next; };
	/-s/ && do { @dirs = (@dirs, $s); $count++; next; };
	/-b/ && do { @dirs = (@dirs, $r, $s); $count++; next; }; # both: roiling goes first due to more debug text
	/-o/ && do { $outFileName = "$b"; $count += 2; next; };
	/-f/ && do { $fileName = "$b"; if ($fileName !~ /\.ni/) { $fileName .= ".ni"; } $count += 2; next; };
	usage();
  }
}

if ($#dirs == -1) { @dirs = (lc(getcwd())); }

for $mydir (@dirs)
{
  if ($alfed{lc($mydir)}) { print "Duplicate directory $mydir\n."; } else { alphSource($mydir); $alfed{lc($mydir)} = 1; }
}

#This is the big subfunction

sub alphSource
{

$lines = 0;

my $thisDir = lc($_[0]);

my $fileName = "$thisDir/$fileName";
my $outFileName = "$thisDir/$outFileName";

if (! -f "$fileName") { die("No $fileName, bailing."); }

$count = 0;

$ignoreArticles = 1;

open(A, "$fileName");
open(B, ">$outFileName");

binmode(B);

while ($a = <A>)
{
  $lines++;
  if (($a =~ /^blurb/) && ($a !~ /\[noalf\]/) && ($a !~ /^blurb\t\"/)) #blurb then quote appears in SA
  {
    $count++;
    print "$count: Sorting $b";
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

$niSize = -s "$fileName";
$nuSize = -s "$outFileName";

if ($niSize != $nuSize) { print "Something went wrong. File sizes aren't equal! New=$nuSize Old=$niSize. Maybe check CR's."; die; }

if (!$dontcopy)
{
  print "Copying .nu to .ni\n";
  #`copy -R $outFileName $fileName`;
  open(A, "c:/games/inform/tsh.txt");
  while ($a = <A>)
  {
    @b = split(/,/, $a);
    if (@b[0] eq $fileName)
	{
	  print "OK, found $fileName in tsh.txt.\n";
	}
	else
	{
	  $outString .= $a;
	}
  }
	@localtime = localtime(time);
	  $dateForm = sprintf("%4d-%02d-%02d-%02d-%02d-%02d",
	    @localtime[5]+1900, @localtime[4]+1, @localtime[3], @localtime[2], @localtime[1], @localtime[0]);
      $thisOutString = "$fileName," . (-s $fileName) . ",$dupes,$dateForm\n";
  close(A);
  open(B, ">c:/games/inform/tsh.txt");
  print B $outString;
  print B $thisOutString;
  close(B);
  $cmd = "copy $outFileName $fileName";
  $cmd =~ s/\//\\/g;
  #print "$cmd\n";
  if (!$seriouslyTesting) { `$cmd`; } else { print "Testing means I didn't copy.\n"; exit; }
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
    if ($a !~ /^\"/) { $ch = chr(0xe2);
	  if ($a =~ /^$ch/) { die ("Uh-oh, smart quote found at line " . ($lines+$#ary+2) . ", bailing."); }
	  #print "Final = $a";
	  last;
	}
    push(@ary, $a);
    chomp ($a);
	$num = () = $a =~ /\"/gi;
	if (($num % 2) || (!$num)) { $quoteWarn .= "  -- $thisTable: $a\n"; }
  }
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
    if ($isDone{$temp}) { print "$temp ($lines2) is duplicated from line $isDone{$temp}.\n"; $dupes++; $dupeString .= "$thisTable ($lines2 from $isDone{$temp}): $temp\n"; }
	elsif ($_ > 0)
	{
	  if (@ary2[$_] =~ /\Q@ary2[$_-1]/i)
	  {
	    print "$temp ($lines2) is duplicated from line $isDone{$temp}.\n"; $dupes++; $dupeString .= "$thisTable ($lines2 from $isDone{$temp}): $temp\n";
	  }
	}
	$isDone{$temp} = $lines2;
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
  }
  $temp =~ s/^\"//g; $temp =~ s/\".*//g;
  $temp =~ s/-/ /g; $temp =~ s/[\.\?\!]//g; $temp =~ s/,//g; $temp =~ s/\'$//g;
  return $temp;
}

sub usage
{
print <<EOT;
-f file name
-x don't copy over
EOT
exit;
}