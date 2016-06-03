#!/usr/bin/perl

use strict;
use warnings;
use bignum;

my ($f1, $f2, $f3) = (0, 1, 1);
my $i = 1;

while ($f2 < 1e999) {
	$f3 = $f1 + $f2;
	$f1 = $f2;
	$f2 = $f3;
	$i++;
}

print "Value of i is: $i.\n";
