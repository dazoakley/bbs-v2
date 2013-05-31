#! /usr/bin/env perl

use Statistics::R;

my $R = Statistics::R->new();
$R->startR;

$R->send('x = 123');
$R->send('print(x)');

my $ret = $R->read;

print "The returned value was: '$ret'\n";

$R->stopR;
exit;

