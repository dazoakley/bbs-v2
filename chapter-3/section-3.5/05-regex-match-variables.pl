#! /usr/bin/env perl

use strict;
use warnings;

my $string = 'The Human Gene ID is ENSG000041 revision 1';

if ($string =~ /ENSG[0-9]+/) {
  print "The gene ID is: '" . $& . "'\n";
  print "The text found before was: '" . $` . "'\n";
  print "The text found after was: '" . $' . "'\n";
}

