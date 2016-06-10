#!/usr/bin/perl

use strict;
use warnings;
use Math::BigInt;

my ($max, $start, $sum) = (1e5, 10, 0);

for (my $i=10 ; $i<$max ; $i++) {
	my @digits = split //, $i;
	my $tmpSum = 0;
	foreach (@digits) {
		my $bi = Math::BigInt->new($_);
		$tmpSum += $bi->bfac();
	}
	$sum += $tmpSum if ($i==$tmpSum);
}

print "Value of sum = $sum.\n";
