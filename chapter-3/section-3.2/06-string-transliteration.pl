#! /usr/bin/env perl

$dna = 'ACTGACC';       # create our DNA string again
$dna =~ tr/ACTGactg/TGACtgac/;  # change all the bases at once
$dna = reverse($dna);     # reverse the sequence

print $dna;         # output result

