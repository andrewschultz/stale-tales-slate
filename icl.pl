#cd c:/Users/Andrew/Documents/Inform/Extensions/
#cd c:/games/inform/$proj.inform/Build
#"C:/Program Files (x86)/Inform 7/Compilers/ni" -rules "C:/Program Files (x86)/Inform 7/Inform7/Extensions" -package "C:/games/inform/$proj.inform" -extension=ulx
#"C:/Program Files (x86)/Inform 7/Compilers/inform-633" -kwSDG +include_path=../Source,./ auto.inf output.ulx
#set HOME=c:/games/inform/$proj.inform
#"C:/Program Files (x86)/Inform 7/Compilers/ni" -release -rules "C:/Program Files (x86)/Inform 7/Inform7/Extensions" -package "C:/games/inform/$proj.inform" -extension=ulx
#"C:/Program Files (x86)/Inform 7/Compilers/cblorb" -windows Release.blurb Build/output.gblorb

#I can and should expand this to do more than one at once

@allProj = ("-s", "-r");

$myProj = "roiling";

$proj{"-3"} = "threediopolis";
$proj{"-r"} = "roiling";
$proj{"-s"} = "sa";

$debug = 0;
$release = 1;

$count = 0;

while ($count <= $#ARGV)
{

  $a = @ARGV[$count];
  for ($a)
  {
  print "$count of $#ARGV: $a\n";
  /beta/ && do { $beta = 1 - $beta; $count++; next; };
  /-nr/ && do { $release = 0; $count++; next; };
  /-yr/ && do { $release = 1; $count++; next; };
  /-nd/ && do { $debug = 0; $count++; next; };
  /-yd/ && do { $debug = 1; $count++; next; };
  /-a/ && do { for $entry(@allProj) { runProj($entry); } $count++; next; };
  if ($proj{$a}) { $myProj = $proj{$a}; }
  elsif ($proj{"-$a"}) { $myProj = $proj{"-$a"}; }
  else { die("No project for $proj.\n"); }
  runProj($myProj);
  $count++;
  }
}

sub runProj
{
# this is bad coding but there's only one exception for now: Threediopolis.
$ex = "ulx";
$gz = "gblorb";
if ($_[0] =~ /threed/) { $ex = "z8"; $gz = "zblorb";}

$beta = "c:/games/inform/beta.inform";
$base = "c:/games/inform/$_[0].inform";
$bdir = "$base/Build";

`cd c:/games/inform/$_[0].inform/Build`;
if ($beta)
{
print("set HOME=c:\\games\\inform\\beta.inform");
print "Beta build.\n";
system("copy c:\\games\\inform\\$_[0].inform\\source\\story.ni c:\\games\\inform\\beta.inform\\source\\story.ni");
system("copy c:\\games\\inform\\$_[0].inform\\Release.blurb c:\\games\\inform\\beta.inform\\Release.blurb");
system("copy c:\\games\\inform\\$_[0].inform\\uuid.txt c:\\games\\inform\\beta.inform\\uuid.txt");
print "4\n";
if (-f "c:/games/inform/$_[0] materials/Cover.png")
{
system("copy \"c:\\games\\inform\\$_[0] materials\\Cover.png\" \"c:\\games\\inform\\beta materials\"");
if (-f "c:/games/inform/beta materials/Cover.jpg")
{
print "Erasing jpg\n";
system("erase \"c:\\games\\inform\\beta materials/Cover.jpg\"");
}
}
else
{
system("copy \"c:\\games\\inform\\$_[0] materials\\Cover.jpg\" \"c:\\games\\inform\\beta materials\"");
if (-f "c:/games/inform/beta materials/Cover.png")
{
print "Erasing png\n";
system("erase \"c:\\games\\inform\\beta materials/Cover.png\"");
}
}
print "5\n";
modifyBeta();
system("\"C:/Program Files (x86)/Inform 7/Compilers/ni\" -release -rules \"C:/Program Files (x86)/Inform 7/Inform7/Extensions\" -package \"$beta\" -extension=$ex");
system("\"C:/Program Files (x86)/Inform 7/Compilers/cblorb\" -windows $beta/Release.blurb $beta/Build/output.$gz");
}
if ($debug)
{
system("set HOME=c:\\games\\inform\\beta.inform");
printf "Debug build.\n";
system("\"C:/Program Files (x86)/Inform 7/Compilers/ni\" -rules \"C:/Program Files (x86)/Inform 7/Inform7/Extensions\" -package \"C:/games/inform/$_[0].inform\" -extension=$ex");
system("\"C:/Program Files (x86)/Inform 7/Compilers/inform-633\" -kwSDG +include_path=$base,$bdir $bdir/auto.inf $bdir/output.ulx");
}
if ($release)
{
system("cd c:/games/inform/$_[0].inform");
printf "Release build.\n";
printf "Generating output.$ex.\n";
system("\"C:/Program Files (x86)/Inform 7/Compilers/ni\" -release -rules \"C:/Program Files (x86)/Inform 7/Inform7/Extensions\" -package \"$base\" -extension=$ex");
printf "Generating blorb.$ex.\n";
system("\"C:/Program Files (x86)/Inform 7/Compilers/inform-633\" -kw~S~DG +include_path=$base,$bdir $bdir/auto.inf $bdir/output.ulx");
#the below doesn't work as in the Windows compiler, so we have to explicitly set paths
#system("\"C:/Program Files (x86)/Inform 7/Compilers/cblorb\" -windows Release.blurb Build/output.gblorb");
printf "Bundling for release.\n";
system("\"C:/Program Files (x86)/Inform 7/Compilers/cblorb\" -windows $base/Release.blurb $bdir/output.$gz");
}
}

sub modifyBeta
{
  open(A, "c:/games/inform/beta.inform/source/story.ni");
  open(B, ">c:/games/inform/beta.inform/source/story.bak");
  
  $foundBetaLine = 0;
  
  while ($a = <A>)
  {
    if ($a =~ /^volume beta testing/i) { print B "volume beta testing\n"; $foundBetaLine = 1; }
	else { print B $a; }
  }
  close(A);
  close(B);
  if (!$foundBetaLine) { print "Warning: didn't find Beta line!"; }
  system("copy c:\\games\\inform\\beta.inform\\source\\story.bak c:\\games\\inform\\beta.inform\\source\\story.ni");
}