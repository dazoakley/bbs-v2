#! /usr/bin/env perl

# Animal class
package Animal;
use Moose;

has 'name'  => (is => 'rw', isa => 'Str', required => 1);
has 'breed' => (is => 'rw', isa => 'Str');
has 'age'   => (is => 'rw', isa => 'Int');

has 'human_years_multiplier' => (is => 'ro', isa => 'Int', default => 1);

sub info {
  my $self = shift;
  $self->name." is a ".$self->breed." and is ".$self->age." years old.";
}

sub human_age {
  my $self = shift;
  $self->age * $self->human_years_multiplier;
}

# Dog class
package Dog;
use Moose;
extends 'Animal';

has 'human_years_multiplier' => (is => 'ro', isa => 'Int', default => 7);

# Cat class
package Cat;
use Moose;
extends 'Animal';

has 'human_years_multiplier' => (is => 'ro', isa => 'Int', default => 5);

# End of class declarations

no Moose;
package main;

my $sam = Dog->new(
  name  => 'Sam',
  breed => 'Yorkshire Terrier',
  age   => 5
);

my $tom = Cat->new(
  name  => 'Gorbypuff',
  breed => 'Persian',
  age   => 5
);

print $sam->info . " (Which is " . $sam->human_age . " in human years).\n";
print $tom->info . " (Which is " . $tom->human_age . " in human years).\n";


