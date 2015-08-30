#!/usr/bin/perl

use strict;
use warnings;

my $sum = 0;
my $max = 4_000_000;
my ($a, $b, $c);

for ($a = 0, $b = 1 ; $a < $max ; ) {
	$sum += $a if ($a%2==0);
	$c = $a + $b;
	$a = $b;
	$b = $c;
}

print "Value of sum = $sum.\n";
