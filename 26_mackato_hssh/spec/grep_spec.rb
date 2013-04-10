# $: << File.expand_path('../src', __FILE__)
$: << File.join(File.dirname(__FILE__), '..', 'src')
require 'rspec'
require 'grep'

describe Grep do
  describe ".grep" do
    let(:str) { "1234567890"}
    let(:format) { nil }
    subject { Grep.grep(pattern, str, format) }

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

    context "pattern: /3(456)7/, str: '1234567890'" do
      let(:pattern) { /3(456)7/ }
      it { should == "456" }
    end

    context 'pattern /4(567)89/, str "1234567890", format: "#{$1}-000"' do
      let(:pattern) { /4(567)89/ }
      it { should == "567-000" }
    end
  end
end
