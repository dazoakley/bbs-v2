#! /usr/bin/env perl

use strict;
use warnings;

my $string = 'ACTGCCGTGCCGCCGCCGTTGAC';

$string =~ s/CCG/---/g;

print $string . "\n";

# This would return...
# 'ACTG---TG---------TTGAC'

