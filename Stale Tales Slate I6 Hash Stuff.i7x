Version 1/230717 of Stale Tales Slate I6 Hash Stuff by Andrew Schultz begins here.

include (-

Array hashvals --> (2187818) (18418905) (19005585) (21029089) (127806109) (26514896) (32599702) (37282299) (44992846) (48960525) (52933178) (53813839) (64075153) (68907508) (74352577) (81465959) (84405617) (85323803) (96273966) (103110018) (105105807) (107164820) (107934773) (112768081) (122359252) (122969618);

Array ors --> 1 2 4 8 16 32 64 128 256 512 1024 2048 4096 8192 16384 32768 65536 131072 262144 524288 1048576 2097152 4194304 8388608 16777216 33554432;

[
	i6hash fullcommand retval temp ix theidx;

	retval = 0;

	for (ix=0 : ix<buffer-->0 : ix++)
	{
		temp = buffer->(WORDSIZE+ix);
		! print temp;
		! print "<- hashval index sort of^";
		if ((temp == 32) && (fullcommand == false))
		    return retval;
		if (temp == 46)
		    return retval;
		if ((temp > 64) && (temp < 91)) { theidx = temp - 65; }
		else if ((temp > 96) && (temp < 123)) { theidx = temp - 97; }
		else continue;
		retval = retval + hashvals-->theidx;
	}

	return retval;
];

[
    i6rough fullcommand retval ix theidx stopLooking temp;

    stopLooking = false;
	retval = 0;

	for (ix = 0 : ix < buffer-->0 : ix++)
	{
		if (stopLooking)
			continue;
		temp = buffer->(WORDSIZE+ix);
		if ((temp == 32) && (fullcommand == false))
		{
		    stopLooking = true;
			continue;
		}
		if (temp == 46)
		{
		    stopLooking = true;
			continue;
		}
		if ((temp > 64) && (temp < 91)) { theidx = temp - 65; }
		else if ((temp > 96) && (temp < 123)) { theidx = temp - 97; }
		else continue;
		retval = retval | ors-->theidx;
	};

	return retval;
];

-)

Stale Tales Slate I6 Hash Stuff ends here.
