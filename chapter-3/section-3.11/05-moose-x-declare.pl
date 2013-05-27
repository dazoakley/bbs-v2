#! /usr/bin/env perl

use MooseX::Declare;

role Printable {
  requires 'to_string';
}

class Animal with Printable {
  has 'name'  => (is => 'rw', isa => 'Str', required => 1);
  has 'breed' => (is => 'rw', isa => 'Str');
  has 'age'   => (is => 'rw', isa => 'Int');

  has 'human_years_multiplier' => (is => 'ro', default => 1);

  method human_age {
    $self->age * $self->human_years_multiplier;
  }

  method to_string {
    $self->name." is a ".$self->breed." and is ".$self->age." years old.";
  }
}

class Dog extends Animal {
  has 'human_years_multiplier' => (is => 'ro', default => 7);
}

class Cat extends Animal {
  has 'human_years_multiplier' => (is => 'ro', default => 5);
}

my $sam = Dog->new(name => 'Sam', breed => 'Terrier', age => 5);
my $tom = Cat->new(name => 'Gorbypuff', breed => 'Persian', age => 5);

print $sam->to_string . “\n";
print $tom->to_string . "\n";

