##################
#
# bk2txt.pl
# this converts books in Inform 7 from my random bookshelf to plain text
# mainly to help with the bookbot
#

open(A, "c:/games/inform/roiling.inform/source/story.ni");
open(B, ">c:/games/inform/roiling.inform/source/alfies.txt");

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
    $b =~ s/\[toti\]/Tio\/Toi/g;
    $b =~ s/\[i-n\]/Ian\/Nia/g;
    $b =~ s/\[ta\]/Tai\/Tia/g;

####NON TEXTY STUFF. CENSOR SWEARS
    $b =~ s/\['\]/'/g;
    $b =~ s/\[(r|x|)]//g;
    $b =~ s/\[a-word(-u)?\]/\*\*\*/g;
    $b =~ s/\[.-word(-u)?\]/\*\*\*\*/g;
    print B "$b";
  }
}

close(A);
close(B);