#! /usr/bin/env ruby

# IF/ELSE blocks
if false
	puts 'this code will not run'
elsif true
	puts 'this code will run'
else
	puts 'it will not get this far'
end

# UNLESS blocks
unless 1 == 10
	puts '1 will never equal 10'
end

# FOR loops
a = (1..10) # create an array containing the range 1 to 10

for i in a
	puts "element: #{i}" # print the variable in the string
end

# another way of doing FOR loops – an EACH block
# this will have the same result as above…
a.each do |i|
	puts "element: #{i}"
end

# WHILE loops
a = 0
while a < 10
	puts "a = #{a}"
	a += 1 # increment a by 1, Ruby does not have a++
end