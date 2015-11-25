#!/usr/bin/perl

use strict;
use warnings;
use bignum;
use Switch;

sub numberValue {
	my $name = shift @_;
	my @elems = split //, $name;
	my $nameVal = 0;
	foreach (@elems) {
		switch (lc $_) {
			case "a" {$nameVal += 1 }
			case "b" {$nameVal += 2 }
			case "c" {$nameVal += 3 }
			case "d" {$nameVal += 4 }
			case "e" {$nameVal += 5 }
			case "f" {$nameVal += 6 }
			case "g" {$nameVal += 7 }
			case "h" {$nameVal += 8 }
			case "i" {$nameVal += 9 }
			case "j" {$nameVal += 10 }
			case "k" {$nameVal += 11 }
			case "l" {$nameVal += 12 }
			case "m" {$nameVal += 13 }
			case "n" {$nameVal += 14 }
			case "o" {$nameVal += 15 }
			case "p" {$nameVal += 16 }
			case "q" {$nameVal += 17 }
			case "r" {$nameVal += 18 }
			case "s" {$nameVal += 19 }
			case "t" {$nameVal += 20 }
			case "u" {$nameVal += 21 }
			case "v" {$nameVal += 22 }
			case "w" {$nameVal += 23 }
			case "x" {$nameVal += 24 }
			case "y" {$nameVal += 25 }
			case "z" {$nameVal += 26 }
		}
	}
	return $nameVal;
}

my $fileName = "p022_names.txt";

open F_NAMES, "< ".$fileName;

my @names = ();
while (<F_NAMES>) {
	push @names, $_;
}
close F_NAMES;

my @names_b = ();
foreach (@names) {
	my @tmpNames = split ",";
	push @names_b, @tmpNames;
}
@names = ();
foreach (@names_b) {
	s/\"//g;
	push @names, $_;
}

my @namesSorted = sort @names;
my $SumNamesTotal = 0;
my $i = 1;
foreach (@namesSorted) {
	$SumNamesTotal = $SumNamesTotal + $i*&numberValue($_);
	$i++;
}

print "SumNamesTotal = $SumNamesTotal\n";
