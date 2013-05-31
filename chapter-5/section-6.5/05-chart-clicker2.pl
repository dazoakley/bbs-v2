#!/usr/bin/perl

use strict;
use warnings;

use Chart::Clicker;
use Chart::Clicker::Renderer::Bar;

# Create a Chart::Clicker object.
my $cc = Chart::Clicker->new(
  width  => 600,
  height => 400,
  format => 'png'
);

# Add data to our chart. We use a hash this time to represent the
# data as we're drawing a bar chart and we want to say wich group
# the values belong to.
$cc->add_data('Set 1', { 1 => 5.8, 2 => 5.0, 3 => 4.9, 4 => 4.8 });
$cc->add_data('Set 2', { 1 => 0.7, 2 => 1.1, 3 => 1.7, 4 => 2.5 });

# Set a title for the chart.
$cc->title->text('Bar Chart');
$cc->title->padding->bottom(5);

# Replace the standard (Line) renderer.
my $renderer = Chart::Clicker::Renderer::Bar->new(opacity => .6);
$cc->set_renderer($renderer);

# Get the image 'context' and set some values
my $def = $cc->get_context('default');
$def->range_axis->baseline(0); # Make the y-axis start at zero
$def->domain_axis->tick_values([qw(1 2 3 4)]); # x-axis labels
$def->domain_axis->format('%d'); # x-axis label formatting

# We ask clicker to "fudge" the edges with some padding so that the bars show
# up properly – this is bug that we unfortunately have to work around.
$def->domain_axis->fudge_amount(.25);

# Finally, save our image.
$cc->write_output('chart_clicker_bar.png');

exit;

