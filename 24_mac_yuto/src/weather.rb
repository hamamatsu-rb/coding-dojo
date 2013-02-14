class Weather
  attr_accessor :day, :min, :max

  def self.all
    data_txt = File.read(File.join(File.dirname(__FILE__), '..', 'data', 'weather.dat'))
    data_txt.each_line do |line|
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

  def self.min_temperature_day
    maxday = 0
    diff = 0
    all do |weather|
      curdiff = weather.max.to_i - weather.min.to_i
      if diff < curdiff
        maxday = weather.day
        diff = curdiff
      end
    end 
    return maxday.to_i
  end
end

