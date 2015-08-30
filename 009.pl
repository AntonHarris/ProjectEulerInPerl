#!/usr/bin/perl

use strict;
use warnings;

my ($a, $b, $c, $target) = {0, 0, 0, 1000};

LINE: for ($a=1;$a<999;$a++) {
	for ($b=1;$b<999-$a;$b++) {
		$c=1000-$a-$b;
		if ($a*$a + $b*$b == $c*$c) {
			print "Found!\n";
			print "Value is: ", $a*$b*$c, ".\n";
			last LINE;
		}
	}
}

