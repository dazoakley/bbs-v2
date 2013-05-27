#! /usr/bin/env perl

$dna = 'ACTGACC';   # assign DNA sequence to a string
$dna =~ s/A/T/ig;   # swap all the As for Ts
$dna =~ s/T/A/ig;   # swap all the Ts for As
$dna =~ s/C/G/ig;   # swap all the Cs for Gs
$dna =~ s/G/C/ig;   # swap all the Gs for Cs
$dna = reverse($dna); # reverse the sequence
print $dna;     # output result

