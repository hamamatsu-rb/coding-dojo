# -*- coding: utf-8 -*-
# Hamamatsu.rb #24
#   indigo1030
#   Langur
#   s.chuui 
#
require 'csv'
PAT = /((([^\\"\s])+|(\\\S)|(\\\B))+|"(([^\\"])+|(\\")|(\\[^\\"])|(\(\)+.))+")/
f = open(ARGV[0])
t = Array.new
t.clear
line = Array.new
while a = f.gets
  line.clear
  a.gsub(PAT) do
    line.push($1)
  end
  if (line[2].to_i >= 1) 
    t.push( line.clone )
  end
end 
f.close

min_dpoint = 9999
team_name  = "sample"
t.each do |e|
  dpoint = (e[6].to_i - e[8].to_i).abs
  if (min_dpoint > dpoint)
    min_dpoint = dpoint
    team_name = e[1]
  end
end

p(team_name)
