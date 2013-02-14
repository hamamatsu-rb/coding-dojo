class Weather
  attr_accessor :day, :min, :max

  def self.load
    @@loaded_data ||= File.read(File.join(File.dirname(__FILE__), '..', 'data', 'weather.dat'))
  end

  def self.all
    load.each_line do |line|
      line.match(/\s+(\d+)\s+(\d+)\*?\s+(\d+)\*?/)
      next if [$1, $2, $3].any? { |v| v.nil? }
      yield Weather.new([$1, $2, $3]) if block_given?
    end
  end

  def initialize(values)
    [:day, :max, :min].each_with_index do |attr, i|
      self.send(:"#{attr}=", values[i])
    end
  end

  def diff
    (self.max - self.min).abs
  end
end