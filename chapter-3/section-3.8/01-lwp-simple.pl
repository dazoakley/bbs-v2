#! /usr/bin/env perl

use strict;
use warnings;
use LWP::Simple;
use Data::Dumper;

# This is the URL of the file we wish to fetch, this could
# even just be a webpage - we would then fetch the HTML code.
# (for more information on HTML, see chapter 5)

my $file_data = get('http://bixsolutions.net/profiles.csv')
  or die "Unable to fetch file! \n";

# Now onto playing with the data, first let's split the lines up...

# NOTE: we use \r\n here to split the file line by line as this is a file
# generated on a Windows machine.  If it was a file generated on a Linux /
# Unix / Mac OS machine we would simply use \n

my @data = split("\r\n", $file_data);

# Now remove and process the header line
my $header_line = shift(@data);
my @headings = split(",", $header_line);

# Create an empty array to hold our sample information
my @sample_data;

# Then process the samples
foreach (@data) {
    my @sample = split(",", $_);

    # Now we convert this to a hash using the
    # column headings as the keys and put it into the
    # @sample_data array as a refernce...

    my %sample_hash;

    for (my $i=0; $i<scalar(@sample); $i++) {
        $sample_hash{$headings[$i]} = $sample[$i];
    }

    push(@sample_data, \%sample_hash);
}

# Now look at the resulting data structure...

print "Here is our data: \n";
print Dumper(@sample_data);

exit;

