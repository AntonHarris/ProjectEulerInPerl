#!/usr/bin/perl

use strict;
use warnings;
use bignum;

my $sum = 0;

for (my $i=1 ; $i<=1000 ; $i++) {
	$sum += $i**$i;
}

$sum =~ /(\d{10})$/;
print "Sum: $1.\n";
