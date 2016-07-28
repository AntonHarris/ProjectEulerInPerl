#!/usr/bin/perl

use strict;
use warnings;

my @arrayVals = ();
my ($max, $number89s) = (10_000_000, 0);

for (my $i=0 ; $i<$max ; $i++) {
	$arrayVals[$i] = 0;
}

for (my $i=1 ; $i<$max ; $i++) {
# print "Line $i.\n";
	my $num = $i;
	my @vals = ();
	do {
		push @vals, $num;
		my @digits = split //, $num;
		if ($arrayVals[$num]==1 || $arrayVals[$num]==89) {
			$num = $arrayVals[$num];
		} else {
			$num = 0;
			foreach my $digit (@digits) {
				$num += $digit*$digit;
			}
		}
	} while ($num!=1 && $num!=89);
	foreach (@vals) {
		$arrayVals[$_] = $num;
	}
}

for (my $i=0 ; $i<$max ; $i++) {
	$number89s++ if ($arrayVals[$i]==89);
}

print "number89s: $number89s.\n";
