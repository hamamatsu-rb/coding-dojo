$:.unshift(File.join(File.dirname(__FILE__), '..', 'src'))

require 'rspec'
require 'rpn'

describe RPN do
  let(:rpn) { RPN.new }

  describe "#calc" do
    let(:param) { nil }
    subject { rpn.calc(param) }

    context "when '3 4 +'" do
      let(:param) { '3 4 +'}

      it { should eql(7) }
    end

    context "when '3 4 + 2 *'" do
      let(:param){ "3 4 + 2 *" }

      it { should eql(14)}
    end

    context "when '3 4 + 5 6 - *'" do
      let(:param) { "3 4 + 5 6 - *" }

      it { should eql(-7) }
    end
  end
end