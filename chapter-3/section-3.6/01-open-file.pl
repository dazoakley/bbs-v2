#! /usr/bin/env perl

open(FILE,"BRCA1.fasta");  # Open the fasta file
my @file_text = <FILE>;    # Read the entire file into an array
close FILE;                # Close the file
print "@file_text \n";     # Print the contents of the file

