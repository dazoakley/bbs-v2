#! /usr/bin/env perl

use strict;
use warnings;

# This is how we call our Perl module
use MySubs;

my $dna = 'ACTGAAA';
print "My DNA string is " . $dna . "\n";

# Call on our subroutine...
my $revcom_dna = revcom($dna);
print "The reverse complement is " . $revcom_dna . "\n";

