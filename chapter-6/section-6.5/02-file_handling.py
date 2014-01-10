#! /usr/bin/env python

# Read the whole contents of a file into a string
contents = open("BRCA1.fasta","r").read()

# Read the whole contents of a file into an array in memory
contents = open("BRCA1.fasta","r").readlines()

# Iterate over the lines in a file
filehandle = open("BRCA1.fasta","r")
for line in filehandle:
    print line.rstrip()

# Note for above, .rstrip is similar to chop() in Perl

# Write to a file
output_file = open("output.txt","w")
output_file.write("This is some text\n")
output_file.close()

# Write to a file using a context manager
# Note - this will automatically close the file for you
with open("output.txt","w") as file:
    file.write("This is some text\n")

# Append data to the end of a file.
with open("output.txt","a") as file:
    file.write("This is some more text\n")