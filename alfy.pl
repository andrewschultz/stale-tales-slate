use Win32::Clipboard;

if (@ARGV[0] == "-c")
{
$newClip = Win32::Clipboard::new();
$clip = $newClip->GetText;
chomp($clip);
alfit("alf-clip.txt", $clip);
}

sub alfit
{

my @ary = split(/\n/, $_[1]);

my @alfs = sort {lch($a) cmp lch($b)} @ary;


open(A, ">$_[0]");

for (0..$#alfs) { print A "@alfs[$_]"; }

}


sub lch
{
  my $temp = $_[0];

  $temp = lc($temp);
  $temp =~ s/^[^a-z]//gi;
  return $temp;

}