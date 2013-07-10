class MaleManager
	attr_accessor :members

	def initialize(names)
		@members = {}
		names.each do |n|
			@members[n] = Male.new(n)
		end
	end

	def consider_female_rank(females)
		
	end
end