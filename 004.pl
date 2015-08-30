#!/usr/bin/perl

use strict;
use warnings;

my ($num1, $num2) = (999, 999);
my $biggestPalindrome = 0;

while ($num1 >= 100) {
	$num2 = 999;
	while ($num2 >= 100) {
		my $result = $num1 * $num2;
		if (&is_palindrome($result)) {
			$biggestPalindrome = $result if ($result > $biggestPalindrome);
		}
		$num2--;
	}
	$num1--;
}
print "Biggest palindrome : $biggestPalindrome.\n";

sub is_palindrome {
	return $_[0] eq reverse $_[0];
}
