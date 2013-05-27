#! /usr/bin/env perl
# Program to convert a DNA string to its reverse complement

# Our DNA string
my $dna = 'ACTTTTGGGGCCCCAATGCATTTTAAAAA';

# First we reverse the DNA
my $revcom = reverse $dna;

# Now translate the DNA bases
$revcom =~ tr/ACGTacgt/TGCAtgca/;

# Then print out the results
print "Original DNA string: " . $dna . "\n";
print "Reverse complement: " . $revcom . "\n";

