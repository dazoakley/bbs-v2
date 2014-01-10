#! /usr/bin/env perl

use strict;
use warnings;
use Test::More;

# The ok() function simply checks if the evaluated code returns
# true - if it does it passes, if not it fails.

ok(1 + 1 == 2); # pass
ok(1 + 2 == 4); # fail

# k() also allows you to label your tests, this is good for
# spotting which tests pass/fail in the program output.

ok(1 + 1 == 2, 'one plus one');

# The is() function lets us declare that something is supposed
# to be the same as something else.

my $gene_seq = 'ACTG';

is($gene_seq, 'ACTG'); # pass
is($gene_seq, 'AAAA'); # fail

# Again, you can label your tests

is($gene_seq, 'ACTG', 'gene_seq is as expected');

done_testing;