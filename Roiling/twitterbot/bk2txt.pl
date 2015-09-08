##################
#
# bk2txt.pl
# this converts books in Inform 7 from my random bookshelf to plain text
# mainly to help with the bookbot
#

open(B, ">c:/games/inform/roiling.inform/source/alfies.txt");

readBeforeAfter();

#die($initstring);
print B @genStr[0];

open(A, "c:/games/inform/roiling.inform/source/story.ni");

@arstr = ("litbook", "motbook");

@toAlt = ("a-b", "d-t", "i-n", "mle", "n-t", "sim", "ta", "toti", "tt");

while ($a = <A>)
{
  if (($a =~ /^table of (self-help bestsellers|random books) /) && ($a !~ /\t/))
  { print B "\t\"@arstr[$arind]\": \["; $arind++;
    <A>;
    $inTable = 1;
	$notTheFirst = 0;
    next;
  }
  if ($inTable)
  {
    if ($a !~ /[0-9a-z]/) { $inTable = 0; print B " ],\n"; next; }
	chomp($a);
    $b = $a;
    $b =~ s/^\"//g; $b =~ s/\".*//g;

####GUY/GIRL
    $b =~ s/\[if player is male]/\(/g;
    $b =~ s/\[else]/\//g;
    $b =~ s/\[end if]/\)/g;

####NAMES
    for $q (@toAlt) { $b =~ s/\[$q\]/#$q#/g; }

####Special for Dr. Stu Durst
    $b =~ s/\[sturd\]/TURDS/g;

####NON TEXTY STUFF. CENSOR SWEARS
    $b =~ s/\['\]/'/g;
    $b =~ s/\[(r|x|)]//g;
    $b =~ s/\[a-word(-u)?\]/\*\*\*/gi;
    $b =~ s/\[(crap|dick)(-u)?\]/\*\*\*/g;
    $b =~ s/\[.-word(-u)?\]/\*\*\*\*/g;
	if ($b =~ /\[/) { print "TITLE WITH BRACKETS: $b\n"; }
	else
	{
	if ($notTheFirst) { print B ","; } else { $notTheFirst = 1; }
	print B "\n";
    print B "\t\"$b\"";
	}
  }
}

print B @genStr[1];

close(A);
close(B);

#########################
#sub readBeforeAfte
#reads the strings before and after the random text
#
#genStr[0] = prefix, genStr[1] = postfix
#

sub readBeforeAfter()
{
  $json = "c:/games/inform/roiling.inform/source/bot-json.txt";
  open(A, $json) || die ("Couldn't read json file $json.");
  my $idx = 0;
  while ($a = <A>)
  {
    if ($a =~ /=====/) { $idx++; } else { @genStr[$idx] = @genStr[$idx] . $a; }
  }
  close(A);
}
