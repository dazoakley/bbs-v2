#! /usr/bin/env perl

my %exp_results = (
  'patient1' => ["24", "48", "56", "12"],
  'patient2' => ["25", "48", "55", "12"],
  'patient3' => ["23", "49", "54", "11"],
  'patient4' => ["24", "48", "55", "12"]
);

# Now to retrieve some data...
print "Patient1, var1: " . $exp_results{patient1}->[0] . "\n";
print "Patient4, var3: " . $exp_results{patient4}->[2] . "\n";

# The following code shows how to create the initial hash as a reference too:
my $ha_exp_results_ref = {
  'patient1' => ["24", "48", "56", "12"],
  'patient2' => ["25", "48", "55", "12"],
  'patient3' => ["23", "49", "54", "11"],
  'patient4' => ["24", "48", "55", "12"]
};

# Now to retrieve some data... (using '->' to de-reference)
print "Patient1, var1: " . $ha_exp_results_ref->{patient1}->[0] . "\n";
print "Patient4, var3: " . $ha_exp_results_ref->{patient4}->[2] . "\n";

# Or... (note the use of the '$$' again)
print "Patient1, var1: " . $$ha_exp_results_ref{patient1}[0] . "\n";
print "Patient4, var3: " . $$ha_exp_results_ref{patient4}[2] . "\n";

# Or access the whole hash...

# Just like 'normal' hashes, the keys function gives us the
# keys for a referenced hash – we just need to de-reference it first

foreach my $patient (keys %{$ha_exp_results_ref}) {

  print $patient . "\n" . "\t";

  # Now we can access all of the measurements in the inner array
  # reference by de-referencing it...

  foreach my $measurement (@{$ha_exp_results_ref->{$patient}}) {
    print $measurement . ' ';
  }

  print "\n";

}

