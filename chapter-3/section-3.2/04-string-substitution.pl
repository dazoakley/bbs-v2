#! /usr/bin/env perl

$string = 'I like Perl';  # create a new string
$string =~ s/like/love/;  # substitute the word 'like' for 'love'
print $string;      # would give: I love Perl

