#! /usr/bin/env perl

use strict;
use warnings;

my $gene_id = 'ENSG000041';

if ($gene_id =~ /ENSG[0-9]+/) {
  print "Our string is an Ensembl Gene ID.\n";
}

