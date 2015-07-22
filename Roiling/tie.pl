@a = ("rope","pegs","tarp","pole","ground");

print "test ties with \"";

for $x (@a)
{
  for $y (@a)
  {
    print "tie $x to $y/tent/";
  }
}

print "\"";