# encoding: utf-8

def main
  smallest = {day: 0, diff: 1000}
  File.readlines("./weather.dat").each do |line|
    line.strip!
    next if !(line =~ /^[0-9]/)
    day_weather = line.split(/\s+/) 
    diff = day_weather[1].to_i - day_weather[2].to_i
    if diff < smallest[:diff]
      smallest[:day] = day_weather[0].to_i
      smallest[:diff] = diff 
    end
  end
  p smallest
end

main()
