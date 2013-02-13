module Kata4part1
	def self.main
		header = 'Dy MxT   MnT   AvT   HDDay  AvDP 1HrP TPcpn WxType PDir AvSp Dir MxS SkyC MxR MnR AvSLP'
		inside_data = false
		puts 'test'
		f = File.open 'weather.dat' 
		f.each_line { |line|
		    if (line.sub(/^\s+/,"") == header) do
              
		    end   
			puts line
		}


	end
end
Kata4part1.main
