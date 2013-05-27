#! /usr/bin/env perl

# Make sure that we have some command-line arguments
unless (@ARGV) {
  die "No input given!";
}

# Do something with our input...
print "Your first input was $ARGV[0]\n";
print "Your second input was $ARGV[1]\n";

