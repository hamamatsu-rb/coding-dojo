require "csv"
require './csv2ltsv'

describe CSV2LTSV do
  csv2ltsv = CSV2LTSV.new
  context ".input" do
    it "file input" do
      csv2ltsv.input('./hmrb25_entry.utf8.csv').size.should > 0
    end
    it "file output" do
      csv2ltsv.output('./hmrb25_entry.utf8.ltsv','v').size.should > 0
    end
  end  
end
