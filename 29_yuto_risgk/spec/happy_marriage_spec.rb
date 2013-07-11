#eoncoding:utf-8
require "rubygems"
require "rspec"
require "./src/happy_marriage"

describe "happy_marriage" do 

  before do 
    @marriage = HappyMarriage.new
    @data_men = [
      %w(1,2,3,4),
      %w(3,2,1,4),
      %w(1,2,4,3),
      %w(3,1,4,2)
    ]
    @data_women = [
      %w(1,2,3,4),
      %w(2,1,4,3),
      %w(2,3,1,4),
      %w(1,4,3,2)
    ]
    @pair = [
      %w[1 1],
      %w[2 3],
      %w[3 2],
      %w[4 4]
    ]
  end


  it "テスト１" do 
    result = @marriage.neruton(@data_men, @data_women)
    result.should eq @pair
  end


end