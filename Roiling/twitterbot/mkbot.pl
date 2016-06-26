##################
#
# bk2txt.pl
# this converts books in Inform 7 from my random bookshelf to plain text
# mainly to help with the bookbot
#

@arstr = ("biobook", "litbook", "motbook");
@toAlt = ("a-b", "d-t", "i-n", "m-e", "mle", "n-t", "sim", "ta", "toti", "tt");

$class = "book";
$matches = "self-help bestsellers|random books|biopics";

if (@ARGV[0] eq "taunt")
{
  @arstr = ("cussing", "singing", "sleeping", "mob1", "griping", "dissin", "just-mean", "political", "mob2", "final-fight");
  $class = "taunt";
  $matches = "singing rejects|sleep rejects|mob chants|riot slogans|red bull taunts|cussing rejects|mantle laments|fish fries|theses|political slogans";
  $readShuffling = 1;
}

$failures = $success = $arind = 0;

readBeforeAfter();

#die($initstring);

my $alf = "c:/games/inform/roiling.inform/source/alf-$class.txt";

open(B, ">$alf");
print B @genStr[0];

readInFile("Roiling");
if ($readShuffling) { readInFile("Shuffling"); }

print B @genStr[1];
close(B);

open($fh, "+<$alf") or die;

seek $fh, -6, 2;
print $fh "\n}\n";
truncate $fh, (-s $alf) - 3;
close($fh);

$outStr = join("\n", @failLines); if (!$outStr) { $outStr = "all successful"; }
print "TEST RESULTS:json $class errors,0,$failures,0,$outStr\n";

#############################################
#
#readInFile does the main stuff
#it's a function because I'm copying over to the taunt2txt file as well
#
sub readInFile
{
$inFile = "C:/Program Files (x86)/Inform 7/Inform7/Extensions/Andrew Schultz/$_[0] Random Text.i7x";

open(A, $inFile) || die ("can't open $inFile");

while ($a = <A>)
{
  if (($a =~ /^table of ($matches) /) && ($a !~ /\t/))
  { print "$a\n";
    print B "\t\"@arstr[$arind]\": \["; $arind++;
    <A>;
    $inTable = 1;
	$notTheFirst = 0;
    next;
  }
  if ($inTable)
  {
    if ($a =~ /\[x\]/) { next; }
	if ($a =~ /\[[ts]-w\]/i) { next; } #ignore super swears
    if ($a !~ /[0-9a-z]/i) { $inTable = 0; print B " ],\n"; next; }
	chomp($a);
    $b = $a;
    $b =~ s/^\"//g; $b =~ s/\".*//g;

####GUY/GIRL
    $b =~ s/\[if (player is male|censor-minor is true)]/\(/g;
    $b =~ s/\[else]/\//g;
    $b =~ s/\[end if]/\)/g;

####NAMES
    for $q (@toAlt) { $b =~ s/\[$q\]/#$q#/g; }

####Special for Dr. Stu Durst
    $b =~ s/\[sturd\]/TURDS/g;

####NON TEXTY STUFF. CENSOR SWEARS
    $b =~ s/\[b\]//g;
    $b =~ s/\['\]/'/g;
    $b =~ s/\[(r|x|)]//g;
    $b =~ s/\[a-word(-u)?\]/\*\*\*/gi;
    $b =~ s/\[(crap|dick)(-u)?\]/\*\*\*/g;
    $b =~ s/\[.-word(-u)?\]/\*\*\*\*/g;
	if ($a =~ /\tfalse/) { $b = "(-) $b"; }
	if ($a =~ /\ttrue/) { $b = "(+) $b"; }
	if (length($b) > 135) { print "LENGTH WARNING: $b\n"; }
	if ($b =~ /\[/) { print "TITLE WITH BRACKETS: $b\n"; $failures++; push(@failLines, $a); }
	else
	{
	if ($notTheFirst) { print B ","; } else { $notTheFirst = 1; }
	print B "\n";
    print B "\t\"$b\"";
	}
  }
}

close(A);

}

#########################
#sub readBeforeAfter
#reads the strings before and after the random text
#
#genStr[0] = prefix, genStr[1] = postfix
#

sub readBeforeAfter()
{
  $json = "c:/games/inform/roiling.inform/source/$class-json.txt";
  open(A, $json) || die ("Couldn't read json file $json.");
  my $idx = 0;
  while ($a = <A>)
  {
    if ($a =~ /=====/) { $idx++; } else { @genStr[$idx] = @genStr[$idx] . $a; }
  }
  close(A);
}
