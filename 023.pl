#!/usr/bin/perl

use strict;
use warnings;

# my ($max, $smallestAbundant) = (28123, 12);
my ($max, $smallestAbundant) = (20161, 12); # per forum posts, number is 20161
my @abundantNumbers = ();

# >0 for abundant, 0 for perfect, <0 for deficient
sub aliquotSumType {
	my $num = shift @_;
	my $halfNum = int ($num/2);
	my $tmpSum = 1; # all numbers dividable by 1
	for (my $i = 2 ; $i <= $halfNum ; $i++) {
		$tmpSum += $i if (int ($num/$i) == $num/$i);
	}

	return $tmpSum-$num;
}

for (my $i=$smallestAbundant ; $i<=$max ; $i++) {
	push @abundantNumbers, $i if (aliquotSumType($i) > 0);
}

my @abundantSums = ();
for (my $i=0 ; $i<2*$max ; $i++) {
	$abundantSums[$i] = 0;
}
for (my $i=0 ; $i<$#abundantNumbers ; $i++) {
	for (my $j=0 ; $j<$#abundantNumbers ; $j++) {
		$abundantSums[$abundantNumbers[$i]+$abundantNumbers[$j]] += 1;
	}
}

my $numbersSum = 0;
for (my $i=0 ; $i<=$max ; $i++) {
	$numbersSum += $i;
}

for (my $i=0; $i<=$max ; $i++) {
	$numbersSum -= $i if ($abundantSums[$i]>0);
}

print "numbersSum: $numbersSum.\n";
