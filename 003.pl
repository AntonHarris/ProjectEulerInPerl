#!/usr/bin/perl

use strict;
use warnings;
use Math::Prime::XS qw(primes is_prime);

my $sum = 0;
my $max = 600851475143;
# my $max = 13195;
my $a = 2;
my @primeFactors = {};

while ($max > 1) {
	if (is_prime($a)) {
		while ($max%$a==0) {
			push @primeFactors, $a;
			$max /= $a;
		}
	}
	$a++;
}

foreach (@primeFactors) {
	print "Value: $_.\n";
}
print "Biggest prime factor: ", pop @primeFactors, ".\n";
