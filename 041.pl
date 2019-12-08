#!/usr/bin/perl
# Not at all optimised, truns in about 90 seconds on my computer

use strict;
use warnings;
use Math::Prime::XS qw(primes is_prime);
# use Math::Primality qw(:all);
use lib "./lib";
use libeuler qw(is_pandigital);

my $number = 87654321;
for (my $prime_and_pandigital = 0 ; !$prime_and_pandigital ; $number = $number-2) {
	$prime_and_pandigital=1 if (is_prime($number) && is_pandigital($number, length $number));
}
$number += 2;
print "Number: ", $number, ".\n";

exit(0);
