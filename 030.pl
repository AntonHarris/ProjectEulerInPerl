#!/usr/bin/perl

use strict;
use warnings;

my ($max, $exp) = (354294, 5); # 6*5^9 = 354294
my $fifthPowersSum = 0;

for (my $i = 10;$i<=$max;$i++) {
	my @digits = split //, $i;
	my $sum = 0;
	foreach (@digits) {
		$sum += $_**$exp;
	}
	if ($i == $sum) {
		$fifthPowersSum += $i;
	}
}

print "Sum of fifth powers: $fifthPowersSum.\n";
