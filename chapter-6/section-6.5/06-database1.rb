#! /usr/bin/env ruby

require "sequel"

# connect to the database
DB = Sequel.connect(
  :adapter => "mysql2",
  :database => "my_database",
  :user => "me",
  :password => "my_password"
)

# iterate over the Scientist table
DB["Scientist"].each do |s|
  puts [s[:title], s[:given_name], s[:family_name]].join(" ")
end