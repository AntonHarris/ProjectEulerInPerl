#!/usr/bin/perl

use strict;
use warnings;
use Math::Prime::XS qw(primes is_prime);

sub testLeftToRight {
	$_ = pop @_;
	my $isPrime = 1;

	my @foo = split //;
	shift @foo;
	$_ = join '', @foo;

	while ($_) {
		if (!is_prime($_)) {
			$isPrime = 0;
			last;
		}

		@foo = split //;
		shift @foo;
		$_ = join '', @foo;
	}

	return $isPrime;
}

sub testRightToLeft {
	$_ = pop @_;
	my $isPrime = 1;
	$_ = int $_/10;

	while ($_) {
		if (!is_prime($_)) {
			$isPrime = 0;
			last;
		}
		$_ = int $_/10;
	}

	return $isPrime;
}

my $numTruncablePrimes = 11;
my $truncablePrimesFound = 0;
my $sumTruncablePrimes = 0;

for (my $i=11 ; $truncablePrimesFound < $numTruncablePrimes ; $i+=2) {
	if (is_prime($i) && testLeftToRight($i) && testRightToLeft($i)) {
		$truncablePrimesFound++;
		$sumTruncablePrimes += $i;
	}
}

print "Sum of truncable primes = $sumTruncablePrimes.\n";
