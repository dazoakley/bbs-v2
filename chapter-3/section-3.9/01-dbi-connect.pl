#! /usr/bin/env perl

use strict;
use warnings;

use DBI;         # Load in the DBI module
use DBD::MySQL;  # Load the MySQL driver

# First, the connection details of the MySQL server

my $ds = "DBI:mysql:PCR_experiment:localhost";
my $user = "user_name";  # Our MySQL username
my $passwd = "pass";  # Our MySQL password

# Now to connect to the database...

my $dbh = DBI->connect($ds,$user,$passwd) || die "Can't Connect!";

my $sth = $dbh->prepare("SELECT id, sequence
        FROM Experiment
        WHERE design_software LIKE ?");

my $query_variable = 'Primer3';
$sth->execute($query_variable);

while (my @val = $sth->fetchrow_array()) {
  print "id: $val[0], sequence: $val[1]\n";
}

$sth->finish;
$dbh->disconnect;

