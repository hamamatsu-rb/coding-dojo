require 'spec_helper'
require 'rpn'

describe RPN do
  it do
    RPN.calc('3 4 +').should == 7
  end
end
