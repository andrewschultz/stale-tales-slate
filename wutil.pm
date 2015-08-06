use Math::BigInt;

package wutil;

##########################
# cromstring returns the "cromulence string"
# this is => h1i2s2t1

sub cromstring
{
  my $x = lc($_[0]); $x =~ s/[^a-z]//gi;
  my $cromString = "";
  if ($x !~ /[a-z]/) { return 1; } #trivially true
  @z = split(//, $x);
  my @which;
  for (@z)
  {
    #print "Adding $_: @which\n";
    @which[ord($_)-97]++;
  }
  if (($_[1] == -1) || ($_[1] == 0))
  {
    $bgcd = Math::BigInt::bgcd(@which) . "=GCD...";
	for (0..25)
	{
	  if (@which[$_])
	  {
	    @which[$_] /= $bgcd;
	  }
	}
  }
  for (0..25)
  {
    if (@which[$_])
	{
	$c = chr($_+97);
    $cromString .= "$c@which[$_]";
	}
  }
  if ($_[1] == 1)
  {
    $bgcd = Math::BigInt::bgcd(@which) . "=GCD...";
	if ($bgcd == 1)
	{
	  print "not perfect anagram";
	  $lowestInt = 0;
	  for (0..25)
	  {
	    if (@which[$_])
		{
		  if (!$lowestInt) { $lowestInt = @which[$_]; }
		  elsif (@which[$_] < $lowestInt) { $lowestInt = @which[$_]; }
		}
	  }
	  print "\nCulprit(s): ";
	  for (0..25)
	  {
	    if (@which[$_] % $lowestInt)
		{
		  $rem = @which[$_] % $lowestInt;
		  print chr($_+97) . "($rem) ";
		}
	  }
	  print "\n";
	  
	}
	else
	{
	  print "Perfect anagram";
	}
  }
  return $cromString;
}

1;
