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

  it '正規表現の中に()によるグループが1つあったら、そのグループのマッチ部分だけを出力' do
    output = StringIO.new
    input = StringIO.new("abc123 a")
    grep = Greprb.new('abc(\d+)', output, input)
    grep.exec
    output.string.should == "123\n"
  end
end
