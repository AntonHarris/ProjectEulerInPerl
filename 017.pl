#!/usr/bin/perl

use strict;
use warnings;

my @zeroToNineteen = qw /zero one two three four five six seven eight nine ten eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen/;
my @ordersOfTen = qw /null null twenty thirty forty  fifty sixty seventy eighty ninety/;
my ($max, $lengthTotal) = (1000, 0);

sub numberToWords {
	my $numWord = "";
	my $num = pop @_;
	if ($num == 1000) {return "One thousand"; }
	my $hundreds = int $num/100;
	if ($hundreds != 0) {
		$numWord = $numWord.$zeroToNineteen[$hundreds]." hundred";
		$num = $num%100;
		if ($num != 0) {
			$numWord = $numWord." and ";
		}
	}
	if ($num >= 20) {
		my $tens = int $num/10;
		my $units = $num%10;
		if ($tens != 0) {
			$numWord = $numWord.$ordersOfTen[$tens];
			if ($units != 0) {
				$numWord = $numWord."-";
			}
		}
		if ($units != 0) {
			$numWord = $numWord.$zeroToNineteen[$units];
		}
	} else {
		if ($num != 0) {
			$numWord = $numWord.$zeroToNineteen[$num];
		}
	}
	return $numWord;
}

sub lengthOfNumber {
	my $length = 0;
	foreach (@_) {
		s/\s//g;
		s/\-//g;
		$length += length;
	}
	return $length;
}

for (my $i=1 ; $i <= $max ; $i++) {
	my $numberInWord = numberToWords($i);
	$lengthTotal += lengthOfNumber($numberInWord);
# print "Number: $i; Word: $numberInWord; total length so far: $lengthTotal.\n";
}

print "Total Length: $lengthTotal.\n";

