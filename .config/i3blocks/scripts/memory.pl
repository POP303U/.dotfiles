#!/usr/bin/perl

use strict;
use warnings;

my $mem_info = `free -h | awk '/^Mem:/ {print \$3 "/" \$2}'`;

print "$mem_info";

