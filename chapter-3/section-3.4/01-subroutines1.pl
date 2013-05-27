#! /usr/bin/env perl

use strict;
use warnings;

my $dna = 'ACTGAAA';
print "My DNA string is " . $dna . "\n";

# Call on our subroutine...
print "The reverse complement is " . revcom($dna) . "\n";

# A subroutine to reverse complement DNA
sub revcom {
  # Get the DNA to be worked on...
  my ($dna) = @_;

  # First we reverse the DNA
  $dna = reverse $dna;

  # Now translate the DNA bases
  $dna =~ tr/ACGTacgt/TGCAtgca/;

  # Return the output
  return $dna;
}

