#!/usr/bin/perl

use strict;
use warnings;
use Math::Prime::XS qw(primes is_prime);

my ($numCircularPrimes, $start, $limit) = (13, 101, 1_000_000);

sub isCircularPrime {
	my $num = pop @_;
	$_ = $num;
	my $retVal = 1;
	s/(\d)(\d+)/$2$1/;
	INSUB: while ($_ != $num) {
		if (!is_prime($_)) {
			$retVal = 0;
 			last INSUB;
		}
		s/(\d)(\d+)/$2$1/;
	}
	return $retVal;
}

for (my $i = $start ; $i<$limit ; $i+=2) {
	if (is_prime($i) && !($i =~ /[02468]/)) {
		if (isCircularPrime($i)) {
			$numCircularPrimes++;
		}
	}
}

print "Number of circular primes: $numCircularPrimes.\n";
