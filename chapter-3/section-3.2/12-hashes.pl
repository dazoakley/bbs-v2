#! /usr/bin/env perl

# Please note – the extra spacing is optional...
%genbank_record = (
  'Official Symbol'     => 'BRCA1',
  'Official Full Name'  => 'breast cancer 1, early onset',
  'Primary Source'      => 'HGNC:1100',
  'Gene Type'           => 'protein coding'
  'Organism'            => 'Homo sapiens'
);

##########

%genbank_record = ( 'Official Symbol', 'BRCA1', 'Official Full Name', 'breast cancer 1, early onset', 'Primary Source', 'HGNC:1100', 'Gene Type', 'protein coding', 'Organism', 'Homo sapiens' );

##########

%rna_triplets;                  # declare empty hash

$rna_triplets{'UAG'} = 'stop';  # This adds the key/value of UAG/stop
$rna_triplets{'GCC'} = 'Ala';

delete $rna_triplets{'UAG'};    # deletes the UAG/stop entry

##########

@ala_triplets = qw(GCU GCC GCA);
$ala_triplets[1] = 'GCG';  # This replaces 'GCC' with 'GCG'

%genetic_code = (
  'GCU' => 'Ala',
  'AAA' => 'Ala',
  'GCA' => 'Ala'
);
$genetic_code{'AAA'} = 'Lys'; # We replace 'Ala' with 'Lys' as this is the
                              # correct translation.

##########

%genetic_code = (
  'GCU' => 'Ala',
  'AAA' => 'Lys',
  'GCA' => 'Ala'
);

print $genetic_code{'AAA'};  # This prints the value 'Lys'

$alanine = $hash{'GCU'};     # Makes $alanine equal 'Ala'

