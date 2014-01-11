package EnsemblTools;

use MooseX::Declare;

class IdParser {
  has 'id' => (is => 'ro', isa => 'Str', required => 1);

  method is_valid_id {
    if ($self->id =~ /^ENS\D*[G|T]\d+$/) {
      return 1;
    } else {
      return 0;
    }
  }

  method species {
    if ($self->is_valid_id) {
      if ($self->id =~ /^ENS(\D*)[G|T]\d+$/) {
        if ($1 eq '') {
          return 'Human';
        } elsif ($1 eq 'MUS') {
          return 'Mouse';
        } else {
          return 'Unknown';
        }
      }
    }
  }
}
1;

__END__

=head1 EnsemblTools

EnsemblTools is a small helper library for interacting with
content from Ensembl (http://www.ensembl.org).

=head2 IdParser

EnsemblTools::IdParser - a helper object for parsing Ensembl ID's.

=over 1

=item new()

Create a new instance of EnsemblTools::IdParser. This method
requires an id to be passed in.

  my $id_parser = IdParser->new(id => 'ENSG00000139618');

=item is_valid_id()

Checks the validity of the id. Returns 1 (valid), 0 (non-valid).

=item species()

Extracts the species encoded in the id.

=back

=cut