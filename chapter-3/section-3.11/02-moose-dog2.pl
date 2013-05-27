package Dog;
use Moose;

has 'name'  => (is => 'rw', isa => 'Str', required => 1);
has 'breed' => (is => 'rw', isa => 'Str');
has 'age'   => (is => 'rw', isa => 'Int');

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

package main;

my $sam = Dog->new(
  name  => 'Sam',
  breed => 'Yorkshire Terrier',
  age   => 5
);

my $charlie = Dog->new(name => 'Charlie');
$charlie->breed('Cocker Spaniel');
$charlie->age(3);

print $sam->info . " \n";
print $charlie->info . " \n";

