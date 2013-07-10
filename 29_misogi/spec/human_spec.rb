# $: << File.expand_path('../src', __FILE__)
$: << File.join(File.dirname(__FILE__), '..', 'src')
require 'rspec'
require 'human'

describe Human do
	describe "new" do
		h = Human.new
		h.should_not nil
	end
end