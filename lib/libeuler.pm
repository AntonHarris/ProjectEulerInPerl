#!/usr/bin/perl
package libeuler;

use base 'Exporter';
our @EXPORT = ('is_permutation', 'is_palindrome', 'convertDecToBase');

use strict;
use warnings;

sub is_permutation {
	my $fir = join('', sort split(//, $_[0]));
	my $sec = join('', sort split(//, $_[1]));
	return $fir eq $sec;
}

sub is_palindrome {
	return $_[0] eq reverse $_[0];
}

sub convertDecToBase {
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

1;