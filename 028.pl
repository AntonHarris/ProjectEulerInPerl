#!/usr/bin/perl

use strict;
use warnings;

my ($dimension) = (1001);

my $line = int $dimension/2;
my $column = $line;

my @table = ();
$table[$dimension-1][$dimension-1] = 0;

# do centre of table
$table[$line][$column] = 1;
# loop to fill table
my $k = 0;
my $l = 0;
while ($column>0) {
	$k++;
	# go right
	$l=0;
	while ($l<$k) {
		$column++;
		$table[$line][$column] = $table[$line][$column-1]+1;
		$l++;
	}
	# go down
	$l = 0;
	while ($l<$k) {
		$line++;
		$table[$line][$column] = $table[$line-1][$column]+1;
		$l++;
	}
	$k++;
	# go left
	$l=0;
	while ($l<$k) {
		$column--;
		$table[$line][$column] = $table[$line][$column+1]+1;
		$l++;
	}
	# go up
	$l=0;
	while ($l<$k) {
		$line--;
		$table[$line][$column] = $table[$line+1][$column]+1;
		$l++;
	}
}
# do top/first line of table
$table[0][0] = $table[1][0]+1;
$column=1;
while ($column<$dimension) {
	$table[0][$column] = $table[0][$column-1]+1;
	$column++;
}

my $diagSum = 0;
for (my $i=0 ; $i<$dimension ; $i++) {
	$diagSum = $diagSum + $table[$i][$i] + $table[$dimension-$i-1][$i];
}
$diagSum--;

print "Sum of diagonals: $diagSum.\n";
