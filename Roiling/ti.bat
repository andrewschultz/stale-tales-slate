::a wrapper around ti.pl allowing for use to see if there's gq. -m = put in the middle

@echo off

ti.pl %*
gq.pl -m 10 /%1
