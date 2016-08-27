#!/usr/bin/perl

use strict;
use warnings;

my @coinValues = (200, 100, 50, 20, 10, 5, 2, 1);
my @loopValues = (0, 0, 0, 0, 0, 0, 0, 0);
my ($maxValue, $differentWays) = (200, 0);
my $sumCoins = 0;

LABEL_200P: for ($loopValues[0] = 0 ; $loopValues[0]<=$maxValue ; $loopValues[0]+=$coinValues[0]) {
	LABEL_100P: for ($loopValues[1] = 0 ; $loopValues[1]<=$maxValue ; $loopValues[1]+=$coinValues[1]) {
		last LABEL_100P if ($loopValues[0]+$loopValues[1]>$maxValue);
		LABEL_50P: for ($loopValues[2] = 0 ; $loopValues[2]<=$maxValue ; $loopValues[2]+=$coinValues[2]) {
			last LABEL_50P if ($loopValues[0]+$loopValues[1]+$loopValues[2]>$maxValue);
			LABEL_20P: for ($loopValues[3] = 0 ; $loopValues[3]<=$maxValue ; $loopValues[3]+=$coinValues[3]) {
				last LABEL_20P if ($loopValues[0]+$loopValues[1]+$loopValues[2]+$loopValues[3]>$maxValue);
				LABEL_10P: for ($loopValues[4] = 0 ; $loopValues[4]<=$maxValue ; $loopValues[4]+=$coinValues[4]) {
					last LABEL_10P if ($loopValues[0]+$loopValues[1]+$loopValues[2]+$loopValues[3]+$loopValues[4]>$maxValue);
					LABEL_5P: for ($loopValues[5] = 0 ; $loopValues[5]<=$maxValue ; $loopValues[5]+=$coinValues[5]) {
						last LABEL_5P if ($loopValues[0]+$loopValues[1]+$loopValues[2]+$loopValues[3]+$loopValues[4]+$loopValues[5]>$maxValue);
						LABEL_2P: for ($loopValues[6] = 0 ; $loopValues[6]<=$maxValue ; $loopValues[6]+=$coinValues[6]) {
							last LABEL_2P if ($loopValues[0]+$loopValues[1]+$loopValues[2]+$loopValues[3]+$loopValues[4]+$loopValues[5]+$loopValues[6]>$maxValue);
							LABEL_1P: for ($loopValues[7] = 0 ; $loopValues[7]<=$maxValue ; $loopValues[7]+=$coinValues[7]) {
								$sumCoins = $loopValues[0]+$loopValues[1]+$loopValues[2]+$loopValues[3]+$loopValues[4]+$loopValues[5]+$loopValues[6]+$loopValues[7];
								if ($sumCoins >= $maxValue) {
									if ($sumCoins == $maxValue) {
										$differentWays++;
									}
									last LABEL_1P;
								}
							}
						}
					}
				}
			}
		}
	}
}

print "Different ways: $differentWays.\n";
