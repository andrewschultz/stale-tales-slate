use strict;
use warnings;

my $file = 0;
my $screen = 1;

my $b, my $cmd2;

my @ons = ("off", "on");

open(B, ">>anjunk.txt");

print "Type in first thing(s) to anagram (! = both words to name too)\n"; 
my $a = <STDIN>;

OUTER: do
{
  $b = "";
  $a = lc($a); chomp($a);
  my @c = split(/,/, $a);
  for my $cmd (@c)
  {
  if ($cmd !~ /[a-z]/) { usage(); next; }
  if ($cmd eq "f") { print $file = !$file; checkZeros(); next; }
  if ($cmd eq "s") { print $screen = !$screen; checkZeros(); next; }
  if ("$cmd" eq "q") { print "Exiting."; last OUTER; }
  if ($cmd =~ /=/) { $b = `anan.pl $cmd`; }
  elsif ($cmd =~ /!/) { $cmd =~ s/!//g; $b = `gq $cmd`; $cmd2 = $cmd; $cmd2 =~ s/ //g; $cmd2 = "$cmd2="; $b .= `anan.pl $cmd2`; }
  elsif ($cmd =~ /^ti /i) { $b = `c:/games/inform/roiling.inform/Source/ti $cmd`; }
  else { $b = `gq -tb $cmd`; }
  if ($file) { print B "COMMAND: $cmd\n$b\n"; }
  if ($screen) { print "$b\n"; }
  }
  print "Type in next thing(s) to anagram (! = both words to name too)\n"; 
} while ($a = <STDIN>);

sub checkZeros
{
print "Output to screen $ons[$screen]\n";
print "Output to file $ons[$file]\n";
if ($file + $screen == 0) { print "No output right now.\n"; }
}

sub usage
{
print<<EOT;
f = file toggle
s = screen toggle
q = quit
= = anagram a full name
default = GQ through files
ti = use ti.bat
EOT
}