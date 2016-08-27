#!/usr/bin/perl

use strict;
use warnings;
use Math::Prime::XS qw(primes is_prime);

my ($increment) = (3330);

sub is_permutation {
	my $fir = join('', sort split(//, $_[0]));
	my $sec = join('', sort split(//, $_[1]));
	return $fir == $sec;
}

for (my $i = 1001 ; $i<10000-3330 ; $i+=2) {
	if (is_prime($i)) {
		my @numbers = ($i, $i+1*$increment, $i+2*$increment);
		if (is_prime($numbers[1]) && is_prime($numbers[2]) && is_permutation($numbers[0], $numbers[1]) && is_permutation($numbers[0], $numbers[2])) {
			print "Numbers: $numbers[0] - $numbers[1] - $numbers[2].\nConcatenation: $numbers[0]$numbers[1]$numbers[2].\n";
		}
	}
}
