#! /usr/bin/env perl

use strict;
use warnings;
use Test::More;

use_ok('EnsemblTools');
require_ok('EnsemblTools');

# create some parser objects
my $bad_obj = IdParser->new(id => 'qwerty');
my $human_gene_obj = IdParser->new(id => 'ENSG00000139618');
my $human_tran_obj = IdParser->new(id => 'ENST00000296271');
my $mouse_gene_obj = IdParser->new(id => 'ENSMUSG00000018666');
my $mouse_tran_obj = IdParser->new(id => 'ENSMUST00000093943');

# test id checking
ok($bad_obj->is_valid_id == 0, 'identifies bad ids');
ok($human_gene_obj->is_valid_id == 1, 'human gene ids');
ok($human_tran_obj->is_valid_id == 1, 'human transcript ids');
ok($mouse_gene_obj->is_valid_id == 1, 'mouse gene ids');
ok($mouse_tran_obj->is_valid_id == 1, 'mouse transcript ids');

# test species extraction
is($human_gene_obj->species, 'Human', 'human (gene id)');
is($human_tran_obj->species, 'Human', 'human (transcript id)');
is($mouse_gene_obj->species, 'Mouse', 'mouse (gene id)');
is($mouse_tran_obj->species, 'Mouse', 'mouse (transcript id)');
done_testing;