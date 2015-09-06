##################
#
# bk2txt.pl
# this converts books in Inform 7 from my random bookshelf to plain text
# mainly to help with the bookbot
#

open(A, "c:/games/inform/roiling.inform/source/story.ni");
open(B, ">c:/games/inform/roiling.inform/source/alfies.txt");

print B "{\n\torigin: \[\"#onebook#\"\],\n\tonebook: \[";

while ($a = <A>)
{
  if ($a =~ /^table of random books /)
  {
    <A>;
    $inTable = 1;
    next;
  }
  if ($inTable)
  {
    if ($a !~ /[0-9a-z]/) { $inTable = 0; last; }
	chomp($a);
    $b = $a;
    $b =~ s/^\"//g; $b =~ s/\".*//g;

####GUY/GIRL
    $b =~ s/\[if player is male]/\(/g;
    $b =~ s/\[else]/\//g;
    $b =~ s/\[end if]/\)/g;

####NAMES
    $b =~ s/\[a-b\]/Abe\/Bea/g;
    $b =~ s/\[d-t\]/Dot\/Tod/g;
    $b =~ s/\[n-t\]/Nate\/Tena/g;
    $b =~ s/\[toti\]/Tino\/Toni/g;
    $b =~ s/\[tt\]/Tio\/Toi/g;
    $b =~ s/\[i-n\]/Ian\/Nia/g;
    $b =~ s/\[ta\]/Tai\/Tia/g;
    $b =~ s/\[mle\]/Mel\/Lem/g;
    $b =~ s/\[sim\]/Simeon\/Simone/g;
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
	if ($notTheFirst) { print B ","; }
	print B "\n";
    print B "\t\"$b\"";
	$notTheFirst = 1;
	}
  }
}

print B "\n\t\]\n\}\n";

close(A);
close(B);