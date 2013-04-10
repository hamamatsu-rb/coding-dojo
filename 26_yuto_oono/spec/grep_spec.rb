# coding: utf-8
require '../src/grep'

describe Grep do

  context 'カッコがないとき' do
    subject { Grep.new("text") }
    it { subject.grep("input text").should == "input text" }
    it { subject.grep("input aaaaa").should == nil }
  end

  context 'カッコがあるとき' do
    subject { Grep.new("\s(text)\s") }
    it { subject.grep("input text ").should == "text" }
    it { subject.grep("input aaaaa").should == nil }
  end

  
end

