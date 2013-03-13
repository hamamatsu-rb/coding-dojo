$: << File.join(File.dirname(__FILE__), "..", "src")
require 'rspec'
require 'ltsv'

describe LTSV do
  it "should read ltsv 1 line" do
    LTSV.readline("L1:V1\tL2:V2\tL3:V3").should == {"L1" => "V1", "L2" => "V2", "L3" => "V3"}
  end
end