#! /usr/bin/env perl

use strict;
use warnings;

my $dna = 'ACTGCCGTAAACCCTG';

if ($dna =~ /CCG/) {
  print "CCG present in sequence.\n";
} else {
  print "No match found.\n";
}

