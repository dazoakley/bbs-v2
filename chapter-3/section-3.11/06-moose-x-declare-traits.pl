#! /usr/bin/env perl

use MooseX::Declare;

role Eq {
  requires 'equal_to';

  method not_equal_to($other) {
    not $self->equal_to($other);
  }
}

role Printable {
  requires 'to_string';
}

class DNA with (Eq, Printable) {
  has 'sequence' => ( is => 'rw', isa => 'Str' );

  method equal_to($other) {
    $self->sequence eq $other->sequence;
  }

  method to_string {
    $self->sequence;
  }
}

my $a = DNA->new(sequence => 'ACTG');
my $b = DNA->new(sequence => 'AAAA');

if ($a->equal_to($b)) {
  print "They are equal!\n";
} else {
  print "They are NOT equal!\n";
}

