#! /usr/bin/env perl

@array = qw(0 1 2 3 4 5 6 7 8 9 10);
$scalar = pop(@array);    # remove the last element from @array (10),
          # and put it in $scalar
$scalar = shift(@array);  # remove the first element from @array (0),
          # and put it in $scalar
push(@array,'ACG'); # 'ACG' is added to the end of @array
unshift(@array,'CGC');  # 'CGC' is inserted at the beginning of @array

# @array now contains ('CGC' 1 2 3 4 5 6 7 8 9 'ACG')

#########

$genestring = "ENSG00000058668,ENSG00000047457,ENSG00000067715";
@array = split(",",$genestring);

#########

@genearray = qw(ENSG00000058668 ENSG00000047457 ENSG0000006771);
my $output = join(",",@genearray);
print $output . "\n";

#########

@codon = qw(ACT CCG GGC AAA);
print "Our codon array has " . scalar(@dna) . " elements\n";

