require 'csv'
CSV.open("hmrb25_entry.sjis.csv", "r") do |row|
  puts row.join("<>")
end
