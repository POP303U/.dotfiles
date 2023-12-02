#!/usr/bin/perl

use strict;
use warnings;

my $ip = `nmcli | grep 'inet4' | awk '{print \$2}' | head -1`;

print "$ip";
