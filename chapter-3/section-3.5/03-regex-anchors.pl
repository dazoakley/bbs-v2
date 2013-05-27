#! /usr/bin/env perl

use strict;
use warnings;

my $id = ' ENSG000041';

if ($id =~ /^ENSG[0-9]+/) {
  print "Our string is an Ensembl Gene ID.\n";
}

