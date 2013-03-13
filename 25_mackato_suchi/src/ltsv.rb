class LTSV
  def self.readline(line)
    line.split("\t").inject({}) do |sum, lv|
      label, value = lv.split(":")
      sum[label] = value
      sum
    end
  end
end