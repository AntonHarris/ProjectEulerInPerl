#!/usr/bin/perl

use strict;
use warnings;
use Math::Prime::XS qw(primes is_prime);

my $targetPrime = 10001;
my $currentPrime = 1;
my $primeValue = 0;
my $numberToCheck = 2;

while ($currentPrime < $targetPrime) {
	$numberToCheck++;
	if (is_prime($numberToCheck)) {
		$currentPrime++;
	}
}

print $targetPrime."th prime : $numberToCheck.\n";
