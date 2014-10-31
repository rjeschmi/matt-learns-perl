#!/usr/bin/env perl
#
#
#

use strict;
use re 'debug';

while (<>) {
    if(m/^(?:((?:\@SRR|\+SRR)(?:.*$))|(N|#)(.{100}))/) {
        print "1: [$1] 2: [$2] \n";
    }

    else {

        die "whoops\n";
    }
}
