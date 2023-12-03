#!/usr/bin/perl

use strict;
use warnings;

my $zip_code = "85055";
my $weather_info = `curl -s https://wttr.in/$zip_code?format="%t%20|%20%h%20|%20%w"`;
# use weather icon if you like it
# my $weather_icon = `curl -s https://wttr.in/$zip_code?format="%c"`;

print "$weather_info";

