#! /usr/bin/env perl

my @array1 = qw(24 48 56 12);
my @array2 = qw(25 48 55 12);
my @array3 = qw(23 49 54 11);
my @array4 = qw(24 48 55 12);

# This is how we create a reference to a variable – by using
# the '\' character. You must remember that
# references appear as scalar variables though.
my $a_array1_ref = \@array1;
my $a_array2_ref = \@array2;
my $a_array3_ref = \@array3;
my $a_array4_ref = \@array4;

my @twodarray = ($a_array1_ref,$a_array2_ref,$a_array3_ref,$a_array4_ref);

##############

my @array1 = qw(24 48 56 12);
my @array2 = qw(25 48 55 12);
my @array3 = qw(23 49 54 11);
my @array4 = qw(24 48 55 12);

my @twodarray = (\@array1, \@array2, \@array3, \@array4);

##############

my @twodarray = (
  ["24", "48", "56", "12"],
  ["25", "48", "55", "12"],
  ["23", "49", "54", "11"],
  ["24", "48", "55", "12"]
);

##############

# We have already created our @twodarray (using one of the methods above),
# so no need to show this again...

# Here we extract some single values

print "Patient1, var2: " . $twodarray [0]->[1]; # This will print '48'
print "\n";
print "Patient4, var3: " . $twodarray [3]->[2]; # This will print '55'
print "\n";

# Or we could just extract and dereference a whole array...

foreach (@twodarray) {
  # This is how we de-reference a whole array
  my @patient_data = @{$_};

  foreach my $var (@patient_data) {
    print $var . ' ';
  }

  print "\n";
}

#############

# Create our initial data structure as a reference...
my $aa_2d_array_ref = [
  ["24", "48", "56", "12"],
  ["25", "48", "55", "12"],
  ["23", "49", "54", "11"],
  ["24", "48", "55", "12"]
];

# And to access the data within...
print "Patient1, var2: " . $aa_2d_array_ref->[0]->[1] . "\n"; # '48'
print "Patient4, var3: " . $aa_2d_array_ref->[3]->[2] . "\n"; # '55'

# Or... (note the double '$$' to de-reference our data)
print "Patient1, var2: " . $$aa_2d_array_ref[0][1] . "\n"; # '48'
print "Patient4, var3: " . $$aa_2d_array_ref[3][2] . "\n"; # '55'

# Or access the whole structure...
foreach my $a_patient_ref (@{$aa_2d_array_ref}) {
  foreach my $measurement (@{$a_patient_ref}) {
    print $measurement . ' ';
  }
  print "\n";
}

