# $: << File.expand_path('../src', __FILE__)
$: << File.join(File.dirname(__FILE__), '..', 'src')
require 'rspec'
require 'male'

describe Male do
	describe "new" do
		it "enable new male" do
			h = Male.new
			h.should_not nil
		end
	end
end