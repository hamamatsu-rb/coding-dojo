# coding: utf-8
require 'spec_helper'

load './greprb'

require 'stringio'

describe Greprb do
  it '1行マッチできる' do
    output = StringIO.new
    input = StringIO.new("  10 a")
    grep = Greprb.new('\d+', output, input)
    grep.exec
    output.string.should == "10\n"
  end

  it 'マッチしなければ出力されない' do
    output = StringIO.new
    input = StringIO.new("  a")
    grep = Greprb.new('\d+', output, input)
    grep.exec
    output.string.should == ""
  end
end
