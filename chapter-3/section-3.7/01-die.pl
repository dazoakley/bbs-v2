#! /usr/bin/env perl

chdir('/home/public') || die "Can't move to /home/public: $! \n";
open(FILE, ">newfile.txt") || die "Can't create file: $! \n";

