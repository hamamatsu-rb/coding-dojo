# coding: utf-8

class LTSV

  def load
    lines = []
    File.readlines("../25_data/hmrb25_entry.utf8.csv").each_with_index do |line, i|
      next if i == 0
      lines << line_to_hash(line)
    end
    print(lines)
  end

  def line_to_hash(line)
    hash = {}
    keys = ["name","comment","status","lt","places","newplace","movies","popular","open","date"]
    items = line.delete('"').split(',')
    items.each_with_index do |item, i|
      key = keys[i]
      hash[key] = item
    end
    hash
  end

  def print(lines)
    lines.each do |line|
      array = []
      line.each do |key,value|
        array << "#{key}:#{value}"
      end
      puts array.join("\t")
    end
  end
  
end

LTSV.new.load

