#!/usr/bin/perl

use strict;
use warnings;
use Math::Complex;

my $line = 1;
my $triangleNbr = 0;
my $countDivisor = 0;
my $divisor = 1;

until ($countDivisor > 500) {
# get natural number
		$triangleNbr += $line;
# count divisors
	until ($divisor > sqrt($triangleNbr)) {
		$countDivisor++ if ($triangleNbr%$divisor == 0);
		$divisor++;
	}
	$countDivisor *= 2;
# if more than 500 divisors, print number, else restart with next line
	if ($countDivisor > 500) {
		print "Number is: ", $triangleNbr, ".\n";
	} else {
#		print "Number of divisors for $triangleNbr is $countDivisor.\n";
		$line++;
		$countDivisor = 0;
		$divisor = 1;
	}
}
