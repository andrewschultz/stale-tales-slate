#######################################
#ac.pl
#command line interface for anagramming
#

use strict;
use warnings;

my $flagString = "TEST CASE UNCHECKED\n";
my $fi = 0;
my $sc = 1;
my $gq = 1;
my $ti = 0;
my $an = 0;
my $my = 0;
my $maxAna = 500;
my $exit = 0;
my %already;

my @toggle = ("off", "on");

my $b, my $cmd2;

my $loadFile = "c:/writing/dict/anload.txt";
my $writeFile = "c:/writing/dict/anjunk.txt";

my @ons = ("off", "on");

checkCmds();

open(B, ">>$writeFile");

if (($#ARGV > 0) && ($ARGV[0] eq "-f")) { $loadFile = $ARGV[1]; readFile($loadFile); pareFile($loadFile); exit; }
elsif (($#ARGV >= 0) && (($ARGV[0] eq "e") || ($ARGV[0] eq "-e"))) { `$writeFile`; }
elsif (($#ARGV >= 0) && (($ARGV[0] eq "l") || ($ARGV[0] eq "-l"))) { `$loadFile`; }
elsif (($#ARGV >= 0) && ($ARGV[0] eq "-t")) { testWriteFile(); }
elsif (($#ARGV >= 0) && ($ARGV[0] eq "-df")) { readFile($loadFile); pareFile($loadFile); exit; }
elsif (($#ARGV >= 0) && ($ARGV[0] eq "-?")) { usage(); }
else {

OUTER: while ($exit == 0)
{
  print "File: $fi screen: $sc\n";
  print "Grepquick (gq): $gq Nicknaming (ni): $ti Anagram Names (an): $an My anagram (my): $my (- before means ignore)\n";
  print "Type in next thing(s) to anagram (! = both words to name too)\n";
  $a = <STDIN>;
  readLine($a);
}
}

close(A);
close(B);

sub testWriteFile
{
close(B);
open(B, "$writeFile");
my $tcase = 0;
while ($a = <A>)
{
  if ($a =~ /^TEST CASE UNCHECKED/) { $tcase++; }
}
close(B);

print "TEST RESULTS:anagram raw data,10,$tcase,0,<a href=\"file:///c:/writing/dict/anjunk.txt\">\n";

}

sub readFile
{
  my $b;
  open(A, "$_[0]") || die ("No file $_[0] to read.");
  while ((!$exit) && defined($b = <A>))
  {
    if ($b =~ /^#/) { next; }
    if ($b =~ /^;/) { last; }
    print "Parsing $b\n";
    readLine($b);
  }
  close(A);
}

sub pareFile
{
  my $paredString;
  open(A, "$_[0]") || die ("No file $_[0] to read.");
  while ($a = <A>)
  {
    if ($a !~ /^[a-z]/i) { $paredString .= $a; }
  }
  close(A);
  open(A, ">$_[0]");
  print A $paredString;
  close(A);
}

sub readLine
{
  my $cmd = $_[0];
  my $output = "";
  my $input = "";
  my @op;
  $cmd = lc($cmd); chomp($cmd); $cmd =~ s/^!+//g;
  my @c = split(/[;,]/, $cmd);
  for my $c1 (@c)
  {
  if ($already{$c1}) { print "$c1 already tracked.\n"; next; }
  my $nospc = $c1; $nospc =~ s/ //g;
  if ($c1 eq "cl") { $gq = 0; $ti = 0; $an = 0; $my = 0; next; }
  if ($c1 eq "a") { $gq = 1; $ti = 1; $an = 1; $my = 1; next; }
  if ($c1 eq "gq") { $gq = 1; scr("Grepquick $toggle[$gq]\n"); next; }
  if ($c1 eq "ti") { $ti = 1; scr("Nicknaming $toggle[$ti]\n"); next; }
  if (($c1 eq "an") || ($c1 eq "an+")) { $an = 1; scr("Anagram names $toggle[$an]\n"); next; }
  if (($c1 eq "my") || ($c1 eq "my+")) { $my = 1; scr("My-anagram $toggle[$my]\n"); next; }
  if (($c1 eq "fi") || ($c1 eq "fi+")) { $fi = 1; scr("To-file $toggle[$fi]\n"); next; }
  if ($c1 eq "f") { $fi = 1- $fi; scr("To-file $toggle[$fi]\n"); next; }
  if ($c1 eq "sc") { $sc = 1; scr("To-screen $toggle[$sc]\n"); next; }
  if ($c1 eq "s") { $sc = 1 - $sc; scr("To-screen $toggle[$sc]\n"); next; }
  if ($c1 eq "-gq") { $gq = 0; scr("Grepquick $toggle[$gq]\n"); next; }
  if ($c1 eq "-ti") { $ti = 0; scr("Nicknaming $toggle[$ti]\n"); next; }
  if ($c1 eq "-an") { $an = 0; scr("Anagram names $toggle[$an]\n"); next; }
  if ($c1 eq "-my") { $my = 0; scr("My-anagram $toggle[$my]\n"); next; }
  if ($c1 eq "-fi") { $fi = 0; scr("To-file $toggle[$fi]\n"); next; }
  if ($c1 eq "-sc") { $sc = 0; scr("To-screen $toggle[$sc]\n"); next; }
  if (($c1 eq "gq=") || ($c1 eq "=gq")) { $gq = 1; $ti = 0; $an = 0; $my = 0; scr("ONLY Grepquick $toggle[$gq]\n"); next; }
  if (($c1 eq "ti=") || ($c1 eq "=ti")) { $ti = 1; $gq = 0; $an = 0; $my = 0; scr("ONLY Nicknaming $toggle[$ti]\n"); next; }
  if (($c1 eq "an=") || ($c1 eq "=an")) { $an = 1; $gq = 0; $ti = 0; $my = 0; scr("ONLY Anagram names $toggle[$an]\n"); next; }
  if (($c1 eq "my=") || ($c1 eq "=my")) { $my = 1; $gq = 0; $ti = 0; $an = 0; scr("ONLY My-anagram $toggle[$my]\n"); next; }
  if (($c1 eq "?")) { usage(); next; }
  if ($c1 eq "!") { checkZeros(); next; }
  if ($c1 =~ /^;/) { $exit = 1; last; }
  if ($c1 !~ /[a-z]/) { usage("$c1"); next; }
  if ($c1 eq "q") { $exit = 1; return; }
  if ($gq)
  {
    $input .= `gq -tb $c1`;
	my @op = split(/\n/, $input);
	for (@op) { if (($_ =~ /^nothing in/i) || ($_ =~ /^in /i)) {} else { $output .= "$_\n"; } }
  }
  if ($an) { $output .= ($flagString . `anan.pl $nospc=`); }
  if ($ti) { $output .= ($flagString . `ti $nospc`); }
  if ($my) { $output .= ($flagString . `myan.pl $c1`); }
  if ($fi) { print B "COMMAND: $c1\n$output\n"; }
  if ($sc) { print "Results of $c1:\n$output\n"; }
  }
}

sub checkZeros
{
print "Output to screen $ons[$sc]\n";
print "Output to file $ons[$fi]\n";
if ($fi + $sc == 0) { print "No output right now.\n"; }
}

sub usage
{
print "Error in command: $_[0]\n";
print<<EOT;
===========================for use in anjunk.pl or command line
f = file toggle, fi/-fi = file on off
s = screen toggle, sc/-sc = screen on off
q = quit
= = anagram a full name
default = GQ through files
ti = use ti.bat
an = anagram name, my = my anagram, gq = grep quick
===========================command line options below
-l = open write-to file in notepad
-e = open load-from file in notepad
-t = test the writing file
EOT
}

sub scr
{
  if ($sc == 1) { print "$_[0]"; }
}

sub checkCmds
{
  open(B, "$writeFile");
  while (my $b = <B>)
  {
    if ($b =~ /^COMMAND: /) { $b =~ s/^COMMAND: //g; chomp($b); $already{$b} = 1; }
  }
  close(B);
}