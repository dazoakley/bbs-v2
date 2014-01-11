#! /usr/bin/env perl
use strict;
use warnings;
use Getopt::Long::Descriptive;

my ($opt, $usage) = describe_options(
  'my-program %o <some-arg>',
  [ 'server|s=s', "the server to connect to" ],
  [ 'port|p=i', "the port to connect to", { default => 3306 } ],
  [ 'verbose|v', "print every detail" ],
  [ 'help', "print usage message and exit" ],
);

print($usage->text), exit if $opt->help;

# connect to our server... for example...

print "Connected to server!\n" if $opt->verbose;