require './greprb'

describe Greprb do
  ARGV[0] = "/(.)(.)/"
  greprb = Greprb.new
  context ".ptn" do
    it "get argv" do
      greprb.ptn.should == "/(.)(.)/"
    end
  end  
  context ".greprep" do
    it "test grep" do
      greprb.greprep("ab").count.should == 2
    end
    it "test grep value" do
      greprb.greprep("ae")[0].should == "a"
    end
  end  
end
