#!/usr/bin/perl

use strict;
use warnings;

my $max = 100;
my $sumOfSquares = 0;
my $squareOfSum = 0;

for (my $i = 1 ; $i <= $max ; $i++) {
	$sumOfSquares += ($i * $i);
}

for (my $i = 1 ; $i <= $max ; $i++) {
	$squareOfSum += $i;
}
$squareOfSum *= $squareOfSum;

my $difference = $squareOfSum - $sumOfSquares;
print "Difference : $difference.\n";
