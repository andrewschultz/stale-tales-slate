::a wrapper around ti.pl allowing for use to see if there's gq. -m = put in the middle

@echo off

if "%1" EQU "e" (
ti.pl e
goto exit
)

if "%1" EQU "-m" (
ti.pl -m %2
gq.pl -m 10 /%2

goto exit

)

ti.pl %1

:gq
gq.pl -m 10 /%1

:exit