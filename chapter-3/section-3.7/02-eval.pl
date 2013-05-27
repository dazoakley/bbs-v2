#! /usr/bin/env perl

# evaluate this section of code...
eval {
  open (FILE, ">myoutput.txt") || die;
  print FILE "Our output.";
}; # note the ; at the end of the eval block – this is required!

# if an error occurs, do the following...
if ($@) {
  print "Ooops, an error occurred: " . $! . "\n";
}
# the program carries on running from here

