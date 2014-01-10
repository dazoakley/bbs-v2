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