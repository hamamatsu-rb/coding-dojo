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
  if (line[0].to_i >= 1 && line[0].to_i <= 30) 
    t.push( line.clone )
  end
end 
f.close

min_dtmp = 99
min_day  = 0
t.each do |e|
  dtemp = e[1].to_i - e[2].to_i
  if (min_dtmp > dtemp)
    min_dtmp = dtemp
    min_day = e[0]
  end
end

p(min_day)
