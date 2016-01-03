#######################################
#nud.pl
#sorts the nudge file "say"s by the order they appear in the table
#
#

use warnings;
use strict;

nudgesort("roiling");
nudgesort("sa");

my $sizeMatters = 0;
my %full;
my %outs;

sub nudgesort
{
  %full = ();
  %outs = ();
  my $inNudge = 0;
  my $nudgeEnded = 0;
  my $idx = 0;
  my $veryEnd = 0;
  my @bigAry;
  my @prefix;
  my $lastString;
  
  my $fileName = "c:/Program Files (x86)/Inform 7/Inform7/Extensions/Andrew Schultz/$_[0] nudges.i7x";
  my $tempFile = "c:/Program Files (x86)/Inform 7/Inform7/Extensions/Andrew Schultz/temp.i7x";
  open(A, "$fileName") || die ("$fileName not available.");
  open(B, ">$tempFile");
  my $a;

  while ($a = <A>)
  {
    if (($a =~ /ends here\.$/) || ($a =~ /^section support/) || ($veryEnd)) { $veryEnd = 1; $lastString .= $a; next; }
	if ($a =~ /^section/) { <A>; next; }
    if ($nudgeEnded == 0) { print B $a; }
	else
	{
	  my $header = $a; chomp($header); $header =~ s/:.*//g;
	  if ($header =~ / of \(/) { $header =~ s/ of \(.*/ of/g; }
	  if (!$outs{$header}) { print "$header doesn't match with table.\n"; } else
	  {
	    #print "Got $outs{$header}\n";
	  }
	  while (($b = <A>) =~ /[a-z]/) { $a .= $b; }
	  $full{$header} = "$a\n";
	  #print "$header -> $a";
	  next;
	}
    if ($a =~ /^table of nudges/) { $inNudge = 1; $a = <A>; print B $a; next; }
	if ($a =~ /^book text details/) { $nudgeEnded = 1; $a = <A>; print B $a; next; }
    if ($inNudge)
    {
      if ($a !~ /[a-z]/) { $inNudge = 0; next; }
      chomp($a);
      my @ary = split(/\t/, $a);
      if ($#ary < 6) { print "@ary too few args\n"; next; }
      my $quo = $ary[6];
	  $quo =~ s/\[if [^\]]*\]//g;
	  $quo =~ s/\[else .*\]//g;
	  $quo =~ s/\[unless .*\]//g;
	  $quo =~ s/\[else\]//g;
	  $quo =~ s/\[end if\]//g;
	  $quo =~ s/\[one of\]//g;
	  $quo =~ s/\[or\]//g;
	  $quo =~ s/\[stopping\]//g;
      $quo =~ s/^\"//g;
      $quo =~ s/\".*//g;
      if ($quo =~ /\[/)
      {
      $quo =~ s/.*\[(.*)\].*/$1/g; $quo = "to say $quo";
	  if ($quo =~ / of /) { $quo =~ s/ of .*/ of/g; #print "OF: $quo\n";
	  }
      if (!$outs{$quo}) { $idx++; $outs{$quo} = $idx; @bigAry[$idx] = $quo; }
      #print "$quo => $idx\n";
      }
      my $rul = $ary[5];
      if ($rul =~ /[a-z]/)
      {
	    $rul = "this is the $rul";
        if (!$outs{$rul}) { $idx++; $outs{$rul} = $idx; @bigAry[$idx] = $rul; }
      }
	  if ($#ary >= 7)
	  {
	    my $chap = $ary[7]; $chap =~ s/[\[\]]//g; chomp($chap);
		$chap = "section $chap\n\n";
		@prefix[$idx] = "$chap";
	  }
    }
  }
  for my $q (1..$idx)
  {
	if (!defined($full{$bigAry[$q]})) { print "WARNING $bigAry[$q] may be defined elsehwere\n"; }
	else
	{
	  if (defined($prefix[$q])) { print B "$prefix[$q]"; }
	  print B $full{$bigAry[$q]};
	}
	#print "after\n";
  }
  print B $lastString;
  close(B);
  close(A);

  if ((!$sizeMatters) || (-s "$tempFile" == -s "$fileName"))
  {
  my $cmd = "copy \"$tempFile\" \"$fileName\""; $cmd =~ s/\//\\/g;
  print "Copying...\n$cmd\n";
  `$cmd`;
  $cmd = "erase \"$tempFile\""; $cmd =~ s/\//\\/g;
  print "Erasing...\n$cmd\n";
  `$cmd`;
  }
  else { print "Didn't copy $tempFile to $fileName file over--file size difference(" . (-s "$tempFile") . " vs " . (-s "$fileName") . ").\n"; }
}
