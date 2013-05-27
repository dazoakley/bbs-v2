#! /usr/bin/env perl

# First we create a data structure...
my $hh_exp_results_ref = {
  'patient1' => {
    'var1' => 24,
    'var2' => 48,
    'var3' => 56,
    'var4' => 12
  },
  'patient2' => {
    'var1' => 25,
    'var2' => 48,
    'var3' => 55,
    'var4' => 12
  },
  'patient3' => {
    'var1' => 23,
    'var2' => 49,
    'var3' => 54,
    'var4' => 11
  },
  'patient4' => {
    'var1' => 24,
    'var2' => 48,
    'var3' => 55,
    'var4' => 12
  }
};

# Now have a look at it...

use Data::Dumper; # Load the module
print Dumper($hh_exp_results_ref);# Print the structure using Dumper()

