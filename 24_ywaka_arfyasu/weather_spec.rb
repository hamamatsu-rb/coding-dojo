require './weather'

describe Weather do
  context ".main" do
    subject {Weather.main}
    it{subject[:diff].should eql 2}
    it{subject[:day].should eql 14}
  end
end
