# $: << File.expand_path('../src', __FILE__)
$: << File.join(File.dirname(__FILE__), '..', 'src')
require 'rspec'
require 'game'

describe Game do
	describe "new" do
		it "enable new male" do
			males = [
				[3, 2, 1, 4],
				[2, 4, 1, 3],
				[1, 3, 4, 2],
				[2, 4, 1, 3]
			]

			females = [
				[1, 2, 3, 4],
				[2, 3, 1, 4],
				[1, 3, 2, 4],
				[4, 2, 1, 3]
			]

			g = Game.new(males, females)
			g.should_not nil
		end
	end
end