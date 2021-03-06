# $: << File.expand_path('../src', __FILE__)
$: << File.join(File.dirname(__FILE__), '..', 'src')
require 'rspec'
require 'male_manager'

describe MaleManager do
	describe "new" do
		it "can get members" do
			names = ["John", "George", "Smith"]
			subject = MaleManager.new(names)
			subject.should_not nil

			subject.members.size.should == 3
		end
	end
end