#! /usr/bin/env perl

use strict;
use warnings;

my $id = 'ENSG000041_A';

if ($id =~ /^ENSG[0-9]+$/) {
  print "Our string is an Ensembl Gene ID.\n";
}

