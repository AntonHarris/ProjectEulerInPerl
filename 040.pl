#!/usr/bin/perl

use strict;
use warnings;

my $str = "";
my $strLength = 1_000_002;
my $prod = 1;

for (my $i = 1 ; length $str < $strLength ; $i++) {
	$str = $str.$i;
}

for (my $i = 1 ; $i<$strLength ; $i*=10) {
	$prod *= substr $str, ($i-1), 1;
}

print "Prod: $prod.\n";
