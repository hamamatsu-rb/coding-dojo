# coding: utf-8
$: << File.join(File.dirname(__FILE__), '..', 'src')
require 'rubygems'
require 'rspec'
require 'weather'

describe Weather do
  subject {Weather.new(sample) }
  let(:sample) { [2, 35, -1] }

  it { should be_kind_of(Weather) }

  it { should be_respond_to(:day) }
  it { should be_respond_to(:min) }
  it { should be_respond_to(:max) }

  its(:day) { should == 2 }
  its(:max) { should == 35 }
  its(:min) { should == -1 }
  its(:diff) { should == 36}


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

  it "戻り値が１〜３１の数値であること" do
    Weather.smallest_difference_day.class.should eq Fixnum
    Weather.smallest_difference_day.should > 0
    Weather.smallest_difference_day.should <= 31
  end

  describe ".min_diff_weather" do
    it "全てのデータを読み込んで、最高・最低の気温の差が一番小さい日を見つけられること" do
      Weather.smallest_difference_day.should be 9
    end    
  end

end