#! /usr/bin/env perl

use strict;
use warnings;

use DBI;
use DBD::MySQL;

my $ds = "DBI:mysql:PCR_experiment:localhost";
my $user = "user_name";
my $passwd = "pass";

my $dbh = DBI->connect($ds,$user,$passwd) || die "Can't Connect!";

# Prepare our insert statement...
my $sth = $dbh->prepare(
 "INSERT INTO Scientist (email, given_name, family_name) VALUES (?,?,?)"
);

# Perform a couple of inserts...
$sth->execute('b.flemming@bixsolutions.net','Bob','Flemming');
$sth->execute('e.hunt@bixsolutions.net','Ethan','Hunt');

# Finish up
$sth->finish;
$dbh->disconnect;

