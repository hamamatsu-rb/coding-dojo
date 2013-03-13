# -*- coding: utf-8 -*-
require 'csv'

class CSV2LTSV
  attr_accessor :csv
  def initialize
    #line = input(file)
    #output(outfile, line)
  end
  def input(file)
    cols = [ "name","comment","status","lt","places","newplace","movies","popular","open","date" ]
#labelはname,comment,status,lt,places,newplace,movies,popular,open,date
    line = ""    
    CSV.foreach(file){|row|  
      cols.size.times { |i|
	if (i != 0)
	  line += "\t"
	end
        line += cols[i] + ":" + row[i].gsub("\r\n", "")
      }
      line += "\n"
    }
    return line
  end
  def output(file, line)
    fd = File.open(file, 'w')
      fd.print(line)
    fd.close
    return line
  end
end

obj = CSV2LTSV.new
line = obj.input('./hmrb25_entry.utf8.csv')
obj.output('./hmrb25_entry.utf8.ltsv', line)

