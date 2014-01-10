#! /usr/bin/env ruby

# Read the whole contents of a file into a string
file = File.open("BRCA1.fasta","r").read

# Read the whole contents of a file into an array
# (this would also be the approach to use if you wanted to
# read a file line by line)
file = []
File.open("BRCA1.fasta","r").each_line do |line|
	file.push(line.chomp)
end

# Write to a file
file = File.open("output.txt","w")
	file.puts "This is some text"
file.close

# Write to a file using a block
File.open("output.txt","w") do |file|
	file.puts "This is some text"
end

# Append data to the end of a file
File.open("output.txt","a") do |file|
	file.puts "This is some more text"
end