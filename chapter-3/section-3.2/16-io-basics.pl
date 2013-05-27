#! /usr/bin/env perl

print "What is your name?\n";   # Ask the user their name
$name = <>;                     # Get the user to type an answer
chomp($name);                   # Remove the newline
print "Hello $name!\n";         # Say hello

