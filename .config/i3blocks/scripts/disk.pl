#!/usr/bin/perl

use strict;
use warnings;

my $df_output = `df --block-size=1024 / -h | awk '/[/]/ {print \$4 "/" \$2}'`;

print "$df_output";

