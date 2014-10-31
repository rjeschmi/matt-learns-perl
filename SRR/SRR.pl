#!/usr/bin/env perl
#
#
#

use strict;
use re 'debug';

while (<>) {
    chomp;
    print "$_\n";
    if($_ =~ m/^
        (?:
            (?|  # The 1 result
                (?:
                    (\@SRR|\+SRR)
                    (.*)$
                )
                |
                (
                    (?: N|\# )
                    (?:.{100}) #The 2 result
                )
            )
        )/x) {
        print "1: [$1] 2: [$2]  3: [$3] \n";
    }

    else {

        die "whoops\n";
    }
}
