class Stablemarriage
	def initialize
		@result = [[0,0],[0,0],[0,0],[0,0]]	
	end
	def match(male,female)
        
#		b = Array.new(4) {0,1,2,3}
#		a = Array.new(4) 
#		{ Array.new(2) { "1","a" } 
#		, Array.new(2) { "2","c" }
#		, Array.new(2) { "3","b" }
#		, Array.new(2) { "4","d" }}
		#puts a[0][1]
		#matched = [[0,0],[0,0],[0,0],[0,0]]
		#male.each {

		#}
		a = [["1","a"],["2","c"],["3","b"],["4","d"]]
	end
	def findfemale(maleanyone, female)
		maleanyone.each { |m|
			female.each { |f|
				if (m == f[0])



					return f[0]
				end
			}
		}
	end
	def marriage(f)
		@result.each { |r|
		  if (r[1] = f)
		  	return true
		  end
		}
		return false
	end
end