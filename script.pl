#!/usr/bin/env perl

use Data::Dumper;

while (<>) {
    chomp;
    my @matches = m/([a-z]*)([A-Z]*)/g;
    my @stripped_matches = map { $_ eq '' ? () : $_ ; } @matches;
    print Dumper(@stripped_matches);
    if ($#stripped_matches > 0) {
        print $stripped_matches[0]."\t".$stripped_matches[-1]."\n";
    }
    else {
        print $stripped_matches[0]."\n";
    }
}
