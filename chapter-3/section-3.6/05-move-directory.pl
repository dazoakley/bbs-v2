#! /usr/bin/env perl

chdir('/home/user') # Moves us to /home/user
chdir('..')     # Moves up one directory
chdir($ENV{HOME})   # Moves into our 'home' directory (unix only)

