#!/usr/bin/perl

use strict;
use warnings;

my $package_count = `checkupdates | wc -l | xargs`;

if ($package_count eq 0) {
    print "Clean";
} else {
    print "$package_count";
}

