#!/usr/bin/perl

use strict;
use warnings;
use bignum;

my $largeNum = 2**1000;

my @theDigits = split //, $largeNum;

my $sumDigits = 0;
foreach (@theDigits) {
	$sumDigits += $_;
}
print "Value: $sumDigits.\n";
