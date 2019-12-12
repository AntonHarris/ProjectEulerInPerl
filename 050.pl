#!/usr/bin/perl

use strict;
use warnings;
use Math::Prime::XS qw(primes is_prime);

my $limit = 1000000;
my @all_primes = primes(($limit/2)+1);
my ($nbrOfPrimes, $maxPrime) = (0, 0);

for (my $i = 0 ; $i<(~~@all_primes) ; $i++) {
	my ($sum, $tmpCount) = ($all_primes[$i], 1);
	for (my $j=$i+1 ; $j<(~~@all_primes) ; $j++) {
		$sum += $all_primes[$j];
		$tmpCount++;
		last if ($sum > $limit);
		if (is_prime($sum) and $tmpCount >= $nbrOfPrimes) {
			$nbrOfPrimes = $tmpCount;
			$maxPrime = $sum;
		}
	}
}

print "The prime $maxPrime can be written as the sum of $nbrOfPrimes prime numbers.\n";

exit(0);
