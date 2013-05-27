#! /usr/bin/env perl

my $big_string = 'This
is a
perfectly
valid string';

my $big_string2 = "As
is
this";

my $big_string3 = <<'TXT';
This is a 'here document' - another way of creating strings in Perl.
This is equivalent to the single quoted method of string creation
(i.e. no variable interpolation).  The TXT marker above can be any uppercase string - the important thing is to match it to the one
below as this denotes the end of the string.
TXT

my $big_string4 = <<"FOO";
This is another 'here document', but this is equivalent to double
quoting your string as variable interpolation is possible. i.e.
here's \$big_string: $big_string
FOO

