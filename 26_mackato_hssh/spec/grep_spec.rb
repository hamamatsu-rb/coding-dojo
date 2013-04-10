# $: << File.expand_path('../src', __FILE__)
$: << File.join(File.dirname(__FILE__), '..', 'src')
require 'rspec'
require 'grep'

describe Grep do
  describe ".grep" do
    let(:str) { "1234567890"}
    subject { Grep.grep(pattern, str) }

    context "pattern: /456/, str: '1234567890'" do
      let(:pattern) { /456/ }
      it "should return 456" do
        subject.should == "456"
      end
    end

    context "pattern: /abc/, str: '1234567890'" do
      let(:pattern) { /abc/ }
      it "should return nil" do
        subject.should be_nil
      end
    end
  end
end
