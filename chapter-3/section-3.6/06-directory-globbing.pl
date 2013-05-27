#! /usr/bin/env perl

my @files = glob "*";     # Gets the entire contents of our current
                          # directory (directories included)
my @html = glob "*.html"  # Only gets the HTML files
my @root = glob "/*"      # Gets the contents of the root directory
my @html2 = <*.html>      # Another way of using glob!

