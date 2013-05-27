#! /usr/bin/env perl

$num = 24;          # give variable $num, the number value 24

$dna = 'ACTG';      # give $dna the string value ACTG i.e. the string
                    # between the inverted commas

$bar = $num * 2;    # makes $bar equal to the value of $num (24)
                    # multiplied by 2 (48)

$bar = $bar + 12;   # make $bar equal to $bar (48) plus 12 (60)

##########

$foo = 5;           # make $foo equal to 5
$foo = $foo + 5;    # this is one way of increasing $foo by 5
$foo += 5;          # this is another way of doing it!
$bar = 5;           # make $bar equal to 5
$bar = $bar * 2;    # this multiplies $bar by 2
$bar *= 2;          # so does this!

##########

$dna = 'ACTGATCG';    # define a DNA sequence

$dna = $dna . 'AAAA'; # add a poly-A tail to our sequence

$dna .= 'AAAA';       # another way of adding the poly-A tail -
                      # the string is now ACTGATCGAAAAAAAA

