# coding: utf-8
$: << File.join(File.dirname(__FILE__), '..', 'src')
require 'rubygems'
require 'rspec'
require 'ltsv'

describe LTSV do
  let(:ltsv) { LTSV.new }
  it { ltsv.load.should be_true }
end

