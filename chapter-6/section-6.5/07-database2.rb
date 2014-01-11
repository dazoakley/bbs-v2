#! /usr/bin/env ruby

require "sequel"

# connect to the database
DB = Sequel.connect(
  :adapter => "mysql2",
  :host => "ensembldb.sanger.ac.uk",
  :database => "homo_sapiens_core_47_36i",
  :user => "anonymous"
)

# save an SQL statement into a string (using a heredoc in Ruby)
query = <<"SQL"
  SELECT es.synonym, sr.name, g.seq_region_start, g.seq_region_end
  FROM seq_region sr, gene g, external_synonym es
  WHERE es.xref_id = g.display_xref_id
  AND sr.seq_region_id = g.seq_region_id
  AND es.synonym IS NOT NULL
  ORDER BY g.seq_region_start ASC
  LIMIT 500
SQL

# use .fetch to run the query and iterate over the results
DB.fetch(query) do |row|
  puts "synonym: #{row[:synonym]}, name: #{row[:name]}"
end