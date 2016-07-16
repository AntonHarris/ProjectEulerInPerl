#!/usr/bin/perl

use strict;
use warnings;
use bignum;

my ($from, $to) = (2, 100);

my %distinctPowers = ();

for (my $i=$from ; $i<=$to ; $i++) {
	for (my $j=$from ; $j<=$to ; $j++) {
		$distinctPowers{$i**$j}++;
	}
}

my $res = keys %distinctPowers;
print "Distinct powers: $res.\n";
