#!/usr/bin/perl

use strict;
use warnings;
use Math::Prime::XS qw(primes is_prime);

my ($PrimeMax, $currentPrime, $SumPrimes) = (2_000_000, 1, 0);

while ($currentPrime < $PrimeMax) {
	if (is_prime($currentPrime)) {
		$SumPrimes+=$currentPrime;
	}
	$currentPrime++;
}

print "Sum of primes below $PrimeMax : $SumPrimes.\n";
