require 'csv'

class Ltsv
  def self.read_atnd(data)
    CSV.parse(data, headers: :first_row).map(&:to_hash)
  end

  def self.write(hash_array)
    ret = ""
    hash_array.each do |hash|
      array = hash.map do |k, v|
        k + ":" + v
      end
      ret << array.join("\t")
    end

    ret 
  end
end
