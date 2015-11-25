#!/usr/bin/perl

use strict;
use warnings;
use bignum;

my $factNum = 100;

my $num = 1;
for (my $i=2 ; $i<=$factNum ; $i++) {
	$num *= $i;
}

my @digits = split "", $num;
my $factSum = 0;
foreach (@digits) {
	$factSum += $_;
}

print "Sum = $factSum.\n";
