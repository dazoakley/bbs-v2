#! /usr/bin/env perl

use strict;
use warnings;
use LWP::Simple;

# Set up the query URL
my $utils = 'http://www.ncbi.nlm.nih.gov/entrez/eutils';
my $db    = 'Pubmed';
my $query = 'BRCA1';

# Set up a search out to the eSearch program:
#  - we set the 'db' param to our database (pubmed)
#  - and set the number of results we want as 1 (retmax)
#  - leave the search term blank for now (term)
my $esearch = $utils . '/esearch.fcgi?db=' . $db . '&retmax=1&term=';

# Now submit the search and retrieve the XML based results
my $esearch_result = get( $esearch . $query );

print "-----------------------\n";
print "--- eSearch Results ---\n";
print "-----------------------\n\n";
print $esearch_result . "\n";

# Get the ID for the paper that we have found
$esearch_result =~ m|.*<Id>(.*)</Id>.*|s;
my $id = $1;

# Now set up a request to the eFetch program to retrieve our paper

my $report = 'abstract';    # we only want to fetch the abstract
my $mode   = 'text';        # we want a text output, not XML

my $efetch =
    $utils . '/efetch.fcgi?db=' . $db
  . '&rettype=' . $report . '&retmode=' . $mode
  . '&id=' . $id;

# Get our paper
my $efetch_result = get($efetch);

print "-----------------------\n";
print "--- eFetch Results  ---\n";
print "-----------------------\n\n";
print $efetch_result . "\n";

