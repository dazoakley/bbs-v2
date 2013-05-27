#! /usr/bin/env perl

# Define an 'Eq' role.
package Eq;
use Moose::Role;
requires 'equal_to';

sub not_equal_to {
  my ( $self, $other ) = @_;
  not $self->equal_to($other);
}

# Define a 'Printable' role.
package Printable;
use Moose::Role;
requires 'to_string';

# Define a DNA class that consumes these roles
package DNA;
use Moose;
with 'Eq','Printable';

has 'sequence' => ( is => 'rw', 'isa' => 'Str' );

sub equal_to {
  my ( $self, $other ) = @_;
  $self->sequence eq $other->sequence;
}

sub to_string {
  my $self = shift;
  $self->sequence;
}

no Moose;
package main;

my $a = DNA->new(sequence => 'ACTG');
my $b = DNA->new(sequence => 'AAAA');

if ($a->equal_to($b)) {
  print "They are equal!\n";
} else {
  print "They are NOT equal!\n";
}

