#! /usr/bin/env perl

use strict;
use warnings;

use DBI;
use DBD::MySQL;

my $ds = "DBI:mysql:PCR_experiment:localhost";
my $user = "user_name";
my $passwd = "pass";

my $dbh = DBI->connect($ds,$user,$passwd) || die "Can't Connect!";
$dbh->{'AutoCommit'} = 0;  # Turn off AutoCommit

my $sth = $dbh->prepare(
 "INSERT INTO Scientist (email, given_name, family_name) VALUES (?,?,?)"
);

# Now let us check for errors as we insert data
eval {
  $sth->execute('b.flemming@bixsolutions.net','Bob','Flemming');
  $sth->execute('e.hunt@bixsolutions.net','Ethan','Hunt');
};

# Check for any errors in the above
if ($@) {
  $dbh->rollback;
} else {
  $dbh->commit;
}

# Finish up
$sth->finish;
$dbh->disconnect;

