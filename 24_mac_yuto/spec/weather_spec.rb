# coding: utf-8
$: << File.join(File.dirname(__FILE__), '..', 'src')
require 'rubygems'
require 'rspec'
require 'weather'

describe Weather do
  subject { Weather.new(sample) }
  let(:data) { File.read(File.join(File.dirname(__FILE__), '..', 'data', 'weather.dat')) }
  let(:sample) { [2, 35, -1] }

  it { should be_kind_of(Weather) }

  it { should be_respond_to(:day) }
  it { should be_respond_to(:min) }
  it { should be_respond_to(:max)}
  it { should be_respond_to(:diff) }

  its(:day) { should == 2 }
  its(:max) { should == 35 }
  its(:min) { should == -1 }
  its(:diff) { should == 36 }

  describe ".load" do
    subject { Weather.load }
    it { should_not be_nil }
  end

  describe ".all" do
    it "全てのデータを読み込んで、各weatherを作れること" do
      arr = []
      lambda {
        Weather.all do |weather|
          weather.should_not be_nil
          arr << weather
        end
      }.should change(arr, :length)
    end
  end

  describe ".min_diff_weather" do
    it "全てのデータを読み込んで、最高・最低の気温の差が一番小さい日を見つけられること" do
    end    
  end
end