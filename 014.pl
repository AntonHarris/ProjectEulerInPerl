#!/usr/bin/perl

use strict;
use warnings;

my $max = 1000000;
my @lengthArray = ();

# powers of 2
my $i = 1;
my $j = 1;
while ($i <= $max) {
	$lengthArray[$i] = $j;
	$i *= 2;
	$j++;
}

for ($i = 3 ; $i<$max ; $i++) {
	next if defined($lengthArray[$i]);

	my @tmpArray = ();
	$j = $i;

	until (defined($lengthArray[$j])) {
		push @tmpArray, $j;
		if ($j % 2 == 0) {
			$j = $j/2;
		} else {
			$j = ($j*3)+1;
		}
	}

	my $currlength = $lengthArray[$j];
	$currlength++;
	while (@tmpArray) {
		my $currPos = pop @tmpArray;
		if ($currPos < $max) { $lengthArray[$currPos] = $currlength; }
		$currlength++;
	}
}

# for ($i=1;$i<=$max;$i++) {
# 	print "Value of lengthArray[$i] is $lengthArray[$i].\n"
# }

my $maxVal = 1;
for ($i=2 ; $i<$max ; $i++) {
	if ($lengthArray[$i] > $maxVal) {
print "Value of $i is $lengthArray[$i].\n";
		$maxVal = $lengthArray[$i];
	}
}
print "maxVal = $maxVal.\n";

