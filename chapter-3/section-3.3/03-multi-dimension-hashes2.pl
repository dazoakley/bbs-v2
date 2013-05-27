#! /usr/bin/env perl

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

# Now to retrieve some data...
print "Patient1, var1: " . $hh_exp_results_ref->{patient1}->{var1} . "\n";
print "Patient4, var3: " . $hh_exp_results_ref->{patient4}->{var3} . "\n";

# Or access the whole hash...

# Just like 'normal' hashes, the keys function gives us the
# keys for a referenced hash – we just need to de-reference it first

foreach my $patient (keys %{$hh_exp_results_ref}) {

  print $patient . ":\n";

  # Now we can access all of the keys to the measurements in
  # the inner hash reference by de-referencing it...

  foreach my $measurement (keys %{$hh_exp_results_ref->{$patient}}) {
    print "\t" . $measurement . ": ";
    print $hh_exp_results_ref->{$patient}->{$measurement} . "\n";
  }

  print "\n";

}

