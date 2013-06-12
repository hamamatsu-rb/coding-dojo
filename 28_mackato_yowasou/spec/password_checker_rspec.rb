# $: << File.expand_path('../src', __FILE__)
$: << File.join(File.dirname(__FILE__), '..', 'src')
require 'rspec'
require 'password_checker'

describe PasswordChecker do
  let(:checker) { PasswordChecker.new }
  subject { checker.check }
  before do
    checker.password = password
  end

  describe "#check" do
    context "when weak" do
      let(:password) { "a" }

      it { should == "weak" }
    end

    context "when normal" do
      let(:password) { "dsk125" }
      
      it { should == "normal" }
    end

    context "when strong" do
      let(:password) { "fadjslf12u788fda" }

      it { should == "strong" }
    end

    context "when only 8 digits" do
      let(:password) { "12345678" }

      it { should == "normal" }
    end
  end

  describe "#score" do
    subject { checker.score }

    context "when abc123" do
      let(:password) { "abc123" }

      it { should == 6 }
    end

    context "when 123456" do
      let(:password) { "123456" }

      it { should == 3 }
    end

    context "when not only digits and alphabet" do
      let(:password) { %w(! # $ % & ' ( ) { }").shuffle.first + "av3" }

      it { should == 8 }
    end
  end
end