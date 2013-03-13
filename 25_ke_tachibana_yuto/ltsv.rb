require 'csv'

class Ltsv
  def self.read_atnd(data)
    CSV.parse(data, headers: :first_row).map(&:to_hash)
  end
end
