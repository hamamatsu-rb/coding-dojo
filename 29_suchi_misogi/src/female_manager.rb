class FemaleManager
	attr_accessor :members

	def initialize(names)
		@members = {}
		names.each do |n|
			@members[n] = Female.new(n)
		end
	end
end