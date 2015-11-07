#anan.pl
#
#anagrams set of letters into name (first and last)
#with option to double or subtract e.g. rose2 looks for EEOORRS, or andrew-ned looks for RAW
#xxyyzz-xxx throws an error
#an equals sign means only look for matching pairs of names. pairs are divided by first-first or last-(first/last)
#

for $thisarg (0..$#ARGV)
{
  if (@ARGV[$thisarg] eq "-p") { $plurals = 1;  next; }
  $thisMatch = lc(@ARGV[$thisarg]);

if ($thisMatch =~ /==/) { $eqOnly = 1; $matchFlag = 0; $thisMatch =~ s/=//g; }
elsif ($thisMatch =~ /=/) { $eqOnly = 1; $matchFlag = 1; $thisMatch =~ s/=//g; }

if ($thisMatch =~ /-/) { $toSub = $thisMatch; $toSub =~ s/.*-([a-z]+).*/$1/g; $thisMatch =~ s/-[a-z]+//g; }

if ($thisMatch =~ /\./) { print "$thisMatch has periods, removing.\n"; $thisMatch =~ s/\.//g; }

if ($thisMatch =~ /2/) { $thisMatch =~ s/2//g; $thisMatch x= 2; $modify = 1;}

if ($toSub)
{
  $thisMatch = strdif($thisMatch, $toSub);
  $modify = 1;
}
if ($thisMatch =~ /[^a-z]/) { print "Bailing on bad string $thisMatch--has some non-alphabet letters."; }
else
{
if ($modify) { print "Trying modified string $thisMatch.\n"; }
tryNames("firsts");
tryNames("lasts");
if ($plurals)
{
print "Trying plural $thisMatch.\n";
$thisMatch .= "s";
tryNames("firsts");
tryNames("lasts");
}
}

if ($matches) { print "\nMatches:$matches"; $matches = ""; }
#for (keys %linked) { print "$_ -> $linked{$_}\n"; }

}

sub tryNames
{

%times = {};
%mytimes = {};

my $count = 0;

open(A, "c:/writing/dict/$_[0].txt") || die ("No $_[0].txt.\n");

print "\n$_[0].txt:\n";

@my = split(//, lc($thisMatch));

for (@my) { $times{$_}++; }

#for ('a'..'z') { print "$_ $times{$_}\n"; } die;

$l = 0;

OUTER:
while ($a = <A>)
{
  %mytimes = %times;
  if ($a !~ /[A-Z]/) { next; }
  $q = $a;
  $l++;
  chomp($a); $a = lc($a); $a =~ s/\t.*//g;
  #if ($seen{$a}) { print "Duplicate $a at line $l.\n"; } $seen{$a} = 1;
  if (! $a) { next; }
  @b = split(//, $a);
  for (@b)
  {
    if ($mytimes{$_} == 0) { next OUTER; }
    $mytimes{$_}--;
  }
  if (!$a) { next; }
  if (!$eqOnly)
  { print "$a"; $count++; }
  $toAdd = "";
  for $q (keys %times) { if ($mytimes{$q} > 0) { $toAdd .= uc($q) x $mytimes{$q}; } }
  
  if (!$eqOnly) { if (!$toAdd) { print "!"; $matches .= " $a"; } print "/" . alfo($toAdd); } else { if ($matchFlag && !$toAdd) { $matches .= " $a"; } }
  if ($linked{alfo($a)}) { print "=$nameType{alfo($a)}|$linked{alfo($a)}/$bkwd{alfo($a)}"; if ($eqOnly) { $count++; if ($count == 5) { print "\n"; $count = 0; } else { print ", "; } } }
  else
  {
  $linked{alfo($toAdd)} = $toAdd;
  $bkwd{alfo($toAdd)} = $a;
  $nameType{alfo($toAdd)} = uc($_[0]); $nameType{alfo($toAdd)} =~ s/^(.).*/$1/g;
  }
  if (!$eqOnly) { if ($count == 5) { print "\n"; $count = 0; } else { print ", "; } }
}

close(A);
}

sub alfo
{
  my @alf = split(//, lc($_[0]));
  
  @alf = sort(@alf);
  return(join('', @alf));

}

sub strdif
{
  my @a = sort(split(//, $_[0]));
  my @b = sort(split(//, $_[1]));
  
  for $bi (0..$#b)
  {
    $foundMatch = 0;
    for $ai (0..$#a)
	{
	  if (@a[$ai] eq @b[$bi]) { @a[$ai] = ""; $foundMatch = 1; last; }
	}
	if (!$foundMatch) { die "$_[0] did not have/ran out of @b[$bi]."; }
  }
  return join("", @a);
}