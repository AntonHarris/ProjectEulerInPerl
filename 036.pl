#!/usr/bin/perl

use strict;
use warnings;

sub is_palindrome {
	return $_[0] eq reverse $_[0];
}

sub convertToBase {
	my ($num, $base) = @_;
	my @baseValues = qw/0 1 2 3 4 5 6 7 8 9 A B C D E F/;
	my $numInNewBase = "";

	if ($num == 0) {
		$numInNewBase = "0";
	} else {
		while ($num > 0) {
			$numInNewBase = $baseValues[$num%$base].$numInNewBase;
			$num = int $num/$base;
		}
	}
	return $numInNewBase;
}

my ($max, $sumPalindromes) = (1_000_000, 0);

for (my $i=1 ; $i<$max ; $i++) {
	$sumPalindromes += $i if (is_palindrome($i) && is_palindrome(convertToBase($i, 2)));
}

print "Sum: $sumPalindromes.\n";
