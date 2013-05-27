# This file will be called 'MySubs.pm' and is
# saved in the same directory as our other Perl programs.

sub revcom {
  # Get the DNA to be worked on...
  my ($dna) = @_;

  # First we reverse the DNA
  my $revcom = reverse $dna;

  # Now translate the DNA bases
  $revcom =~ tr/ACGTacgt/TGCAtgca/;

  # Return the output
  return $revcom;
}

sub print_array {
  my ($array_ref) = @_;

  foreach (@{$array_ref}) {
    print $_ . "\n";
  }
}

# Note: this line below is needed for the
# Perl module to work, and you MUST ALWAYS end
# your Perl modules this way.

1;

