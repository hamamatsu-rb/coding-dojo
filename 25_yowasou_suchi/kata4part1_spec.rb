require './kata4part1'

describe Kata4part1 do
	context ".main" do
		it "return minimam max temp date" do
			Kata4part1.main.should == 14
		end
	end
end
