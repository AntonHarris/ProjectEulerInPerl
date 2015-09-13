#!/usr/bin/perl

use strict;
use warnings;

my $fileName = "067triangle.txt";
my @triangleArray = ();

open TRIFILE, "< ".$fileName;

my $triLine = 0;
while (<TRIFILE>) {
	my @lineElements = split /\s+/, $_;
	my $triColumn = 0;
	foreach my $num (@lineElements) {
		$triangleArray[$triLine][$triColumn] = $num;
		$triColumn++;
	}
	$triLine++;
}

close TRIFILE;

for (my $i=1 ; $i < $triLine ; $i++) {
	$triangleArray[$i][0] += $triangleArray[$i-1][0]; # first element of line
	$triangleArray[$i][$i] += $triangleArray[$i-1][$i-1]; # last element of line

	for (my $j=1 ; $j<$i ; $j++) {
		if ($triangleArray[$i-1][$j-1] > $triangleArray[$i-1][$j]) {
			$triangleArray[$i][$j] = $triangleArray[$i][$j] + $triangleArray[$i-1][$j-1];
		} else {
			$triangleArray[$i][$j] = $triangleArray[$i][$j] + $triangleArray[$i-1][$j];
		}
	}
}

my $max = $triangleArray[$triLine-1][0];
for (my $i=1 ; $i<$triLine ; $i++) {
	if ($triangleArray[$triLine-1][$i] > $max) {
		$max = $triangleArray[$triLine-1][$i];
	}
}
print "Max value: $max.\n";
