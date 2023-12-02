#!/usr/bin/perl

use strict;
use warnings;

my $formatted_date = `date +"%c" | awk -F ' ' 'BEGIN{OFS=FS} {\$NF=\"\"; print}'`;

print "$formatted_date\n";

