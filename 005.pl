#!/usr/bin/perl

use strict;
use warnings;
use Math::Prime::XS qw(primes is_prime);

my $max = 20;
my %PPCM = ();

for (my $i = 2 ; $i <= $max ; $i++) {
	$_ = $i;
	my $j = 2;
	while($_ > 1) {
		if (is_prime($j)) {
			my $count = 0;
			while ($_%$j == 0) {
				$count++;
				$_ /= $j;
			}
			if ($count > 0) {
				if (defined $PPCM{$j}) {
					$PPCM{$j} = $count if ($count > $PPCM{$j});
				} else {
					$PPCM{$j} = $count;
				}
			}
		}
		$j++;
	}
}

my $finalNumber = 0;
foreach (keys %PPCM) {
	if ($finalNumber == 0) {
		$finalNumber += ($_ ** $PPCM{$_});
	} else {
		$finalNumber *= ($_ ** $PPCM{$_});
	}
}

print "Final number : $finalNumber.\n";
