# $: << File.expand_path('../src', __FILE__)
$: << File.join(File.dirname(__FILE__), '..', 'src')
require 'rspec'
require 'human'

describe Human do
	describe "new" do
		it "can get name" do
			h = Female.new "Adam"
			h.should_not nil
			h.name.should eq "Adam"
		end
	end
end