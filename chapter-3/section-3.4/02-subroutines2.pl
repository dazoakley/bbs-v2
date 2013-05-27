#! /usr/bin/env perl

use strict;
use warnings;

# Declare some variables
my @array1 = qw(AA BB CC DD EE);
my @array2 = qw(11 22 33 44 55);

# Now print the contents of the arrays
print_array(\@array1);
print_array(\@array2);

# The subroutine we use to print the arrays
sub print_array {
  my ($array_ref) = @_;

  foreach (@{$array_ref}) {
    print $_ . "\n";
  }
}

