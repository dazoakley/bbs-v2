#!/usr/bin/perl

use strict;
use warnings;

use Chart::Clicker;

# Create a Chart::Clicker object.
my $cc = Chart::Clicker->new(
  width  => 600,
  height => 400,
  format => 'png'
);

# Add data to our chart.
$cc->add_data('Set 1', [5.8, 5.0, 4.9, 4.8, 4.5, 4.2]);
$cc->add_data('Set 2', [0.7, 1.1, 1.7, 2.5, 3.0, 4.5]);

# Set a title for the chart.
$cc->title->text('Line Chart');
$cc->title->padding->bottom(5);

# Finally, save our image.
$cc->write_output('chart_clicker_line.png');

exit;

