#! /usr/bin/env perl

# BEGIN: Dog object.
package Dog;  # this says we are working in the namespace 'Dog'
              # (i.e. declaring a class called Dog)
use Moose;    # tell Perl to use Moose
              #  - this also switches on 'strict' and 'warnings'

# declare variables
has 'name' => (
  is       => 'rw',  # is readable/writable
  isa      => 'Str', # is a string variable
  required => 1      # is required when we create an instance of a dog
);

# more variables (optional as we haven't said they're required)
has 'breed' => (is => 'rw', isa => 'Str');
has 'age'   => (is => 'rw', isa => 'Int');

# declare methods
sub info {
  my $self = shift;
  return
    $self->name." is a ".$self->breed." and is ".$self->age." years old.";
}

sub human_age {
  my $self = shift;
  return $self->age * 7;
}

no Moose;
# END: Dog object

# The following is only needed if we're declaring a class
# in the same file as our 'regular' code.
package main;

# now, create an instance of the class Dog...
my $sam = Dog->new(
  name  => 'Sam',
  breed => 'Yorkshire Terrier',
  age   => 5
);

# create another instance of Dog, note that you don't have to populate all
# the variables when you call new() - only the required ones
my $charlie = Dog->new(name => 'Charlie');
$charlie->breed('Cocker Spaniel');
$charlie->age(3);

# now call one of the methods on both instances
print $sam->info . " \n";
print $charlie->info . " \n";

