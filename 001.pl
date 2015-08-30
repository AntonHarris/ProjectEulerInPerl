#!/usr/bin/perl

use strict;
use warnings;

my $sum = 0;
my $max = 1000;

for (my $cnt = 1 ; $cnt < $max ; $cnt++) {
	$sum += $cnt if ($cnt%3 == 0 || $cnt%5 == 0);
}

print "Value of sum = $sum.\n";
