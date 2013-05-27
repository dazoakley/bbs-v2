#! /usr/bin/env perl

use strict;
use warnings;

use GD::Graph::bars; # we wish to draw a bar chart

# First load our data into an array - this is an array
# of array references
my @data = (
    ["1st","2nd","3rd","4th","5th","6th","7th", "8th", "9th"], # fields
    [    1,    2,    5,    6,    3,  1.5,    1,     3,     4], # dataset 1
    [    1,    1,    4,    7,    2,    3,    7,     4,     6]  # dataset 2
);

# Declare our new GD::Graph image and its size (width/height in pixels)
my $graph = GD::Graph::bars->new(400, 300);

# Outline some paramaters for our graph (in a hash reference)
$graph->set(
    x_label           => 'X Label',
    y_label           => 'Y label',
    title             => 'A simple graph',
    y_max_value       => 8,
    y_tick_number     => 8,
    y_label_skip      => 2
) or die $graph->error;

# Calculate the graph and image
my $gd = $graph->plot(\@data) or die $graph->error;

# Print the image to a file
open(IMG, '>barchart.png') or die $!;
binmode IMG; # This sets printing to 'binary' mode – needed for images
print IMG $gd->png;
close IMG;

exit;

