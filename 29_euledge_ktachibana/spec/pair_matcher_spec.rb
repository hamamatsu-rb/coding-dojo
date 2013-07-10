require 'spec_helper'
require './src/pair_matcher.rb'

describe PairMatcher do

  it 'initialize' do
    wish_list = PairMatcher.new([[1,2],[2,1]],[[3,4],[4,3]])
    wish_list.men_wishes.should eq [[1,2],[2,1]]
    wish_list.women_wishes.should eq [[3,4],[4,3]]
    wish_list.bachelor_men.should == [0, 1]
  end

  
  it 'match' do
    wish_list = PairMatcher.new(
                   [[1,2,3,4],[3,2,1,4],[1,2,4,3],[3,1,4,2]],
                   [[1,2,3,4],[2,1,4,3],[2,3,1,4],[1,4,3,2]])

    wish_list.match.should eq [[1,1],[2,3],[3,2],[4,4]]
     
  end    

end
