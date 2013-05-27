#! /usr/bin/env perl

open(FILE, "whole_human_genome.fasta");
while (<FILE>) {
  print $_;
}
close FILE;

