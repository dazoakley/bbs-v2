#! /usr/bin/env perl

$species = 'Human';

if ($species eq 'Human') {
  print "Your species is Human";
}

###########

$species = 'Mouse';

if ($species eq 'Human') {
  print "Your species is Human";
} elsif ($species eq 'Mouse') {
  print "Your species is Mouse";
}

###########

$species = 'ZebraFish';

if ($species eq 'Human') {
  print "Your species is Human";
} elsif ($species eq 'Mouse') {
  print "Your species is Mouse";
} else {
  print "Your species is not Human or Mouse!";
}

###########

my $test_var = 18;

if (($test_var > 12) && ($test_var < 24)) {
  print "Your variable is between 12 and 24!";
}

