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
            (?|  # This is called the branch reset to set the grouping results per branch
                (?:
                    (\@SRR|\+SRR) #result 1 branch 1
                    (.*)$  #result 2 branch 1
                )
                |
                ( # The second result is groupped as one return
                    (?: N|\# )
                    (?:.{100})  
                )
            )
        )/x) {
        print "1: [$1] 2: [$2]  3: [$3] \n";
    }

    else {

        die "whoops\n";
    }
}
