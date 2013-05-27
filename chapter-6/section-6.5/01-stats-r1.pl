#! /usr/bin/env perl

use Statistics::R;

my $R = Statistics::R->new();
$R->startR;

$R->send('data <- c(1, 3, 6, 4, 9)');
$R->send('png("barplot.png", width=500, height=500)');
$R->send('barplot(data)');

$R->stopR;
exit;

