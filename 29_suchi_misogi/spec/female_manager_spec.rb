# $: << File.expand_path('../src', __FILE__)
$: << File.join(File.dirname(__FILE__), '..', 'src')
require 'rspec'
require 'female_manager'

describe FemaleManager do
	describe "new" do
		it "can get members" do
			names = ["Amy", "Becky", "Caitlyn"]
			subject = FemaleManager.new(names)
			subject.should_not nil

			subject.members.size.should == 3
		end
	end
end