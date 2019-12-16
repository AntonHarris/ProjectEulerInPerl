#!/usr/bin/perl

use strict;
use warnings;
use Math::Prime::XS qw(primes is_prime);
# use Math::Primality qw(:all);
use lib "./lib";
use libeuler qw(is_pentagonal is_hexagonal);

my $n = 286;
while (1) {
	my $Tn = ($n*($n+1))/2;
	if (is_pentagonal($Tn) and is_hexagonal($Tn)) {
		print "$Tn is a triangular, pentagonal and hexagonal number.\n";
		last;
	}
	$n++;
}

exit(0);
