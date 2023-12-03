#!/usr/bin/perl

use strict;
use warnings;

my $result = `top -b -n1 | grep "Cpu(s)" | awk '{print \$2 + \$4}'`;

chomp $result;
print $result . "%";

