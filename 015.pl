#!/usr/bin/perl

use strict;
use warnings;

my $gridSize = 20;
my @array = ();

for (my $i=0 ; $i <= $gridSize ; $i++) {
	$array[$i][0] = 1; # filling first row
	$array[0][$i] = 1; # filling first column
}

for (my $i=1 ; $i <= $gridSize ; $i++) {
	for (my $j = $i ; $j <= $gridSize ; $j++) {
		$array[$i][$j] = $array[$i-1][$j] + $array[$i][$j-1];
		$array[$j][$i] = $array[$i-1][$j] + $array[$i][$j-1];
	}
}

print "Result: ", $array[$gridSize][$gridSize], ".\n";
