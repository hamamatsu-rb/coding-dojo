# coding:utf-8
require "rubygems"
require "rspec"
require '../src/reverse_porland'

describe "逆ポーランド記法のテスト" do 

  before do
    @rp = ReversePorland.new
  end

  # it "テスト１" do
  #   @rp.eval("3 4 +").should == 7
  # end

  # it "テスト2" do
  #   @rp.eval("3 4 + 2 * ").should == 14
  # end

  it "テスト3" do
    @rp.eval("3 4 + 5 6 - *").should == -7
  end

end

