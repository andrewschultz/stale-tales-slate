#ICL = Inform Command Line
#
#Perl script to compile stuff without having to open the IDE, etc.
#
#cd c:/Users/Andrew/Documents/Inform/Extensions/
#cd c:/games/inform/$proj.inform/Build
#"C:/Program Files (x86)/Inform 7/Compilers/ni" -rules "C:/Program Files (x86)/Inform 7/Inform7/Extensions" -package "C:/games/inform/$proj.inform" -extension=ulx
#"C:/Program Files (x86)/Inform 7/Compilers/inform-633" -kwSDG +include_path=../Source,./ auto.inf output.ulx
#set HOME=c:/games/inform/$proj.inform
#"C:/Program Files (x86)/Inform 7/Compilers/ni" -release -rules "C:/Program Files (x86)/Inform 7/Inform7/Extensions" -package "C:/games/inform/$proj.inform" -extension=ulx
#"C:/Program Files (x86)/Inform 7/Compilers/cblorb" -windows Release.blurb Build/output.gblorb

#I can and should expand this to do more than one at once

@allProj = ("-s", "-r", "-u", "-p", "-15", "-d");

$v6l = 0;
$myProj = "roiling";

#sensible abbreviations
$proj{"-3"} = "threediopolis";
$proj{"-3d"} = "threediopolis";
$proj{"-d"} = "dirk";
$proj{"-r"} = "roiling";
$proj{"-s"} = "sa";
$proj{"-u"} = "uglyoafs";
$proj{"-12"} = "sa";
$proj{"-13"} = "threediopolis";
$proj{"-14"} = "uglyoafs";
$proj{"-15"} = "compound";
$proj{"-tpc"} = "compound";
$proj{"-pc"} = "compound";
$proj{"-p"} = "compound";

#which projects are z machine? Default is glulx
$zmac{"compound"} = 0;
$zmac{"threediopolis"} = 1;
$zmac{"dirk"} = 1;

$use6l{"compound"} = 0;

$runBeta = 0;
$debug = 0;
$release = 1;

$count = 0;

while ($count <= $#ARGV)
{

  $a = @ARGV[$count];
  for ($a)
  {
  print "$count of $#ARGV: $a\n";
  /beta/ && do { $runBeta = 1 - $runBeta; $count++; next; };
  /^-bo/ && do { $runBeta = 1; $debug = $release = 0; $count++; next; };
  /^-do/ && do { $debug = 1; $runBeta = $release = 0; $count++; next; };
  /^-ro/ && do { $release = 1; $debug = $runBeta = 0; $count++; next; };
  /-f/ && do { $release = $debug = $beta = 0;
    if ($a =~ /r/) { $release = 1; }
    if ($a =~ /d/) { $debug = 1; }
    if ($a =~ /b/) { $runbeta = 1; }
	$count++; next;
  };
  /-l/ && do { $v6l = 1 - $v6l; $informDir = @inDirs[$v6l]; $count++; next; };
  /-nr/ && do { $release = 0; $count++; next; };
  /-yr/ && do { $release = 1; $count++; next; };
  /-nd/ && do { $debug = 0; $count++; next; };
  /-yd/ && do { $debug = 1; $count++; next; };
  /-x/ && do { $execute = 1; $count++; next; };
  /-a/ && do { for $entry(@allProj) { runProj($entry); } $count++; next; };
  if ($proj{$a}) { $myProj = $proj{$a}; }
  elsif ($proj{"-$a"}) { $myProj = $proj{"-$a"}; }
  else {
  $myProj = "";
  for $q (keys %proj) { if ($proj{$q} eq "$a") { $myProj = $a; } }
  if (!$myProj) { die("No project for $proj.\n"); }
  }
  $infDir = @inDirs[$v6l];
  runProj($myProj);
  $count++;
  }
}

sub runProj
{
# this is bad coding but there's only two exceptions for now: Threediopolis and Dirk.
$ex = "ulx";
$gz = "gblorb";
$iflag = "G";
if ($zmac{$_[0]}) { $ex = "z8"; $gz = "zblorb"; $iflag = "v8"; }

$infDir = buildDir($_[0]);
$i6x = i6exe($_[0]);

$beta = "c:\\games\\inform\\beta.inform";
$betm = "c:\\games\\inform\\beta Materials";
$base = "c:\\games\\inform\\$_[0].inform";

if ($use6l{$_[0]})
{
$mat = "c:\\games\\inform\\$_[0].materials";
}
else
{
$mat = "c:\\games\\inform\\$_[0] materials";
}

$bdir = "$base\\Build";

#die ("$runBeta $debug $release");
`cd c:/games/inform/$_[0].inform/Build`;
if ($runBeta)
{
print("set HOME=c:\\games\\inform\\beta.inform");
print "****BETA BUILD****\n";

system("copy $base\\Release.blurb $beta\\Release.blurb");
system("copy $base\\uuid.txt $beta\\uuid.txt");
print "Searching for cover....\n";
if (-f "c:/games/inform/$_[0] materials/Cover.png")
{
system("copy \"c:\\games\\inform\\$_[0] materials\\Cover.png\" \"$mat\"");
if (-f "c:/games/inform/beta materials/Cover.jpg")
{
print "Erasing jpg\n";
system("erase \"c:\\games\\inform\\beta materials/Cover.jpg\"");
}
}
else
{
system("copy \"c:\\games\\inform\\$_[0] materials\\Cover.jpg\" \"$mat\"");
if (-f "c:/games/inform/beta materials/Cover.png")
{
print "Erasing png\n";
system("erase \"c:\\games\\inform\\beta materials/Cover.png\"");
}
}
print "5\n";

modifyBeta("$base\\source\\story.ni", "$beta\\source\\story.ni");

system("\"$infDir/Compilers/ni\" -release -rules \"$infDir/Inform7/Extensions\" -package \"$beta\" -extension=$ex");
system("\"$infDir/Compilers/$i6x\" -kw~S~D$iflag +include_path=$beta,$beta $beta/Build/auto.inf $beta/Build/output.$ex");

$betaFileShort = getFile("$beta/Release.blurb");

print("\"$infDir/Compilers/cblorb\" -windows $beta/Release.blurb $betm/Release/beta-$betaFileShort");
system("\"$infDir/Compilers/cblorb\" -windows \"$beta/Release.blurb\" \"$betm/Release/beta-$betaFileShort\"");
if ($execute) { $execute = 0; `$beta/Release.blurb $beta/Build/output.$gz`; }
}
if ($debug)
{
system("set HOME=c:\\games\\inform\\beta.inform");
printf "Debug build.\n";
system("\"$infDir/Compilers/ni\" -rules \"$infDir/Inform7/Extensions\" -package \"$base\" -extension=$ex");
system("\"$infDir/Compilers/$i6x\" -kwSD$iflag +include_path=$base,$bdir $bdir/auto.inf $bdir/output.$ex");
if ($execute) { $execute = 0; `$bdir/output.$ex`; }
}
if ($release)
{
system("cd $base");
printf "Release build.\n";
printf "Generating output.$ex.\n";
#die("\"$infDir/Compilers/ni\" -release -rules \"$infDir/Inform7/Extensions\" -package \"$base\" -extension=$ex");
system("\"$infDir/Compilers/ni\" -release -rules \"$infDir/Inform7/Extensions\" -package \"$base\" -extension=$ex");
printf "Generating blorb.$ex.\n";
system("\"$infDir/Compilers/$i6x\" -kw~S~D$iflag +include_path=$base,$bdir $bdir/auto.inf $bdir/output.$ex");
#the below doesn't work as in the Windows compiler, so we have to explicitly set paths
#system("\"C:/Program Files (x86)/Inform 7/Compilers/cblorb\" -windows Release.blurb Build/output.gblorb");
printf "Bundling for release.\n";
system("\"$infDir/Compilers/cblorb\" -windows $base/Release.blurb $bdir/output.$gz");
$fileShort = getFile("$base/Release.blurb");
$rdir = "$base\\Release";
$rdir =~ s/\.inform/ Materials/g;
$cpString = "copy $bdir\\output.$gz \"$rdir\\$fileShort\""; `$cpString`;
if ($execute) { $execute = 0; `$bdir/output.$gz`; }
}
}

sub modifyBeta
{
  open(A, "$_[0]") || die ("Can't open source $_[0]");
  open(B, ">$_[1]") || die ("Can't open target $_[1]");
  
  $foundBetaLine = 0;
  
  while ($a = <A>)
  {
    if ($a =~ /^volume beta testing/i) { print B "volume beta testing\n"; $foundBetaLine = 1; }
	else { print B $a; }
  }
  close(A);
  close(B);
  if (!$foundBetaLine) { print "Warning: didn't find Beta line!"; }
}

sub i6exe
{
if (!$use6l{$_[0]})
{
  return "inform-633";
}
else
{
  return "inform6.exe";
}
}

sub buildDir
{
if (!$use6l{$_[0]})
{
  return "c:/program files (x86)/Inform 7";
}
my @altDir = ("c:/program files (x86)/Inform 76L", "d:/program files (x86)/Inform 7");
for (0..$#altDir) { if (-d "@altDir[$_]") { return @altDir[$_]; } }
}

sub getFile
{
  open(A, "$_[0]") || die ("No blorb file $_[0]");
  
  while ($a = <A>)
  {
    if ($a =~ / leafname /) { chomp($a); $a =~ s/.* leafname \"//g; $a =~ s/\"//g; return $a; }
  }
  return "output.$ext";
}