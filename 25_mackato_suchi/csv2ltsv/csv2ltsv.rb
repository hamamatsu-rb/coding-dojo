# coding: utf-8
require 'csv'

labels = %w{name comment status lt places newplace movies popular open date}
CSV.foreach("hmrb25_entry.utf8.csv") do |fields|
  fields.each_with_index do |field, i|
    puts "#{labels[i]}: #{field}"
  end
end
