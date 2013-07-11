require './stablemarriage.rb'

describe Stablemarriage do
  male = [
    ["1","a","b","c","d"],
    ["2","c","b","a","d"],
    ["3","a","b","d","c"],
    ["4","c","a","d","b"]
    ]
  female = [
    ["a","1","2","3","4"],
    ["b","2","1","4","3"],
    ["c","2","3","1","4"],
    ["d","1","4","3","2"]
    ]

  stablemarriage = Stablemarriage.new
  context "matched" do
    subject { stablemarriage.match(male,female) }
    it {should == [["1","a"],["2","c"],["3","b"],["4","d"]]}
  end  
  context "fiindfamale" do
    subject { stablemarriage.findfemale(male[0],female) }
    it {should == "a"}
  end  
  context "marriage" do
    subject { stablemarriage.marriage("1") }
    it {should == false}
  end  
end
