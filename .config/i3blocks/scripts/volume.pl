#!/usr/bin/perl

use strict;
use warnings;

my $block_button = $ENV{'BLOCK_BUTTON'};

# Clicking will mute
if ($block_button eq 1 or $block_button eq 2 or $block_button eq 3) {
    `amixer -q sset Master Playback toggle && FORMAT=1`;
}

# Scrolling up and down will increase/decrease
elsif ($block_button eq 4 or $block_button eq 5) {
    `amixer -q sset Master Playback 5%+ unmute && FORMAT=1` if ($block_button eq 4);
    `amixer -q sset Master Playback 5%- unmute && FORMAT=1` if ($block_button eq 5);
}

my $statusline_def = `amixer get Master | tail -n 1`;
my $status = ($statusline_def =~ /\bon\b/) ? "on" : "";
my $volume = ($statusline_def =~ /(\d+)%/) ? $1 : "";

if ($status eq "on") {
    print "$volume%\n";
    exit 0;
} else {
    print "muted\n";
    exit 0;
}

print "$volume%\n";

