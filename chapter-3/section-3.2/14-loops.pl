#! /usr/bin/env perl

@array = qw(one two three four five); # create a five element array

for ($i=0; $i<scalar(@array); $i++) {
  print "We are looking at: $array[$i] \n";
}

###########

@array = qw(one two three four five);

foreach $element (@array) {
  print "We are looking at: $element \n";
}

###########

@array = qw(one two three four five);

foreach (@array) {
  print "We are looking at: $_ \n";
}

###########

@columns = qw(A B C D E F G);
@rows = qw(1 2 3 4 5);

foreach $row (@rows) {
  foreach $column (@columns) {
    print $column . $row . ' ';
  }
  print "\n";
}

# This produces the following output:
#
# A1 B1 C1 D1 E1 F1 G1
# A2 B2 C2 D2 E2 F2 G2
# A3 B3 C3 D3 E3 F3 G3 etc...

###########

$test_var = 12;

while ($test_var < 45) {
  print "Variable is $test_var \n";
  $test_var = $test_var + 10;
}

# This will produce the following output:
#
# Variable is 12
# Variable is 22
# Variable is 32
# Variable is 42

