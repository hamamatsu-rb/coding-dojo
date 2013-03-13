class LTSV
  def self.readline(line)
    line.split("\t").inject({}) do |sum, lv|
      label, value = lv.split(":")
      sum[label] = value
      sum
    end
  end
  def self.readfile(file)
    a = []
    File.open(file, "r") do |file|
      while line = file.gets
        line.chomp!
        a << readline(line)
      end
    end
    a
  end
end