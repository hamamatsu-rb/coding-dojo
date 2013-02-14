# coding: utf-8
require 'rubygems'
require 'rspec'
require File.join(File.dirname(__FILE__), '..', 'src', 'weather')

describe Weather do

  subject {Weather.new(sample) }
  let(:data) { File.read(File.join(File.dirname(__FILE__), '..', 'data', 'weather.dat')) }
  let(:sample) { [2, 35, -1] }

  it { should be_kind_of(Weather) }

  it { should be_respond_to(:day) }
  it { should be_respond_to(:min) }
  it { should be_respond_to(:max) }

  its(:day) { should == 2 }
  its(:max) { should == 35 }
  its(:min) { should == -1 }
  its(:temperature_diff) { should == 36}


  it "データファイルの中身が存在すること" do
    data.should_not be_nil
  end

  it "全てのデータを読み込んで、各weatherを作れること" do
    arr = []
    Weather.all do |weather|
      weather.should_not be_nil
      arr << weather
    end
    arr.length.should > 0
  end

  it "戻り値が１〜３１の数値であること" do
    Weather.smallest_difference_day.class.should eq Fixnum
    Weather.smallest_difference_day.should > 0
    Weather.smallest_difference_day.should <= 31
  end

  it "全てのデータを読み込んで、最高・最低の気温の差が一番小さい日を見つけられること" do
    Weather.smallest_difference_day.should be 9
  end

end