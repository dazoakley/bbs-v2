#! /usr/bin/env perl

use strict;
use warnings;

my $string = 'The Human Gene ID is ENSG000041 revision 1';

if ($string =~ /^The (.*) Gene.*(ENSG[0-9]+).*$/) {
  print "Our gene ID is: " . $2 . "\n";
  print "Our species is: " . $1 . "\n";
}

