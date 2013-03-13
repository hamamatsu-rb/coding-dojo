# coding: utf-8
require 'csv'

labels = %w{name comment status lt places newplace movies popular open date}
header = true
CSV.foreach("hmrb25_entry.utf8.csv") do |fields|
  if header 
    header = false 
    next
  end
  line = []
  fields.each_with_index do |field, i|
    field = field.gsub(/[\t\r\n]+/, ' ')
    line << "#{labels[i]}: #{field}"
  end
  puts line.join("\t")
end
