#!/usr/bin/perl

use strict;
use warnings;

sub sumProperDivisors {
	my $num = shift @_;
	my $sumPD = 0;
	for (my $i=1 ; $i<$num ; $i++) {
		if ($num%$i == 0) {$sumPD += $i; }
	}
	return $sumPD;
}

my $maxNum = 10000;
my %AimDiv = ();

for (my $i=2 ; $i<$maxNum ; $i++) {
	$AimDiv{$i} = 0;
}

for (my $i=2 ; $i<$maxNum ; $i++) {
	if ($AimDiv{$i} == 0) {
		my $firstSPD = &sumProperDivisors($i);
		my $secondSPD = &sumProperDivisors($firstSPD);
		if ($i != $firstSPD && $i == $secondSPD) {
			$AimDiv{$i} = $firstSPD;
			$AimDiv{$firstSPD} = $i;
		}
	}
}

my $sumAimDiv = 0;

foreach (keys %AimDiv) {
	if ($AimDiv{$_} != 0) {
		$sumAimDiv += $_;
	}	
}

print "sumAimDiv = ".$sumAimDiv.".\n";
