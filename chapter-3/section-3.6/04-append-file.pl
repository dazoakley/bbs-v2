#! /usr/bin/env perl

open(FILE,">>output.txt");              # Open the file for APPENDING text
print FILE "Yet more example text \n";  # Add something
close FILE;                             # Close the file again

