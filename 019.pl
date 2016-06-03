#!/usr/bin/perl

use strict;
use warnings;
use DateTime;

my ($year, $maxYear, $month, $day) = (1901, 2000, 1, 1);
my $firstSundays = 0;

for (;$year<=$maxYear;$year++) {
	for ($month=1;$month<=12;$month++) {
		my $dt = DateTime->new(year => $year, month => $month, day => $day);
		if ($dt->day_of_week == 7) {
			$firstSundays++;
		}
	}
}

print "Number of first Sundays: $firstSundays.\n";
