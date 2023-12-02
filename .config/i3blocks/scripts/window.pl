#!/usr/bin/perl

use strict;
use warnings;

# Get the window name
my $window_name = `xdotool getactivewindow getwindowname`;

chomp($window_name);

if ($window_name eq "") {
    print "empty";
    exit 0;
}

if (length($window_name) > 46) {
    $window_name = substr($window_name, 0, 46) . "...";
}

print "$window_name";

