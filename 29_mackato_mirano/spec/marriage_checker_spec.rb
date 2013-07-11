# $: << File.expand_path('../src', __FILE__)
$: << File.join(File.dirname(__FILE__), '..', 'src')
require 'rspec'
require 'marriage_checker'

describe MarriageChecker do
  let(:men) { %w(taro jiro saburo) }
  let(:women) { %w(hanako keiko mika risa shizuka) }
  let(:checker) { MarriageChecker.new(men: men, women: women) }
  subject { checker }

  it { should respond_to(:men) }
  it { should respond_to(:women) }

  its("men") { should eql(men) }
  its("women") { should eql(women) }

  context "各参加者の希望リストが登録済みの場合" do
    before do
      men.each do |man|
        checker.add_favorites(man, women.shuffle)
      end
      women.each do |woman|
        checker.add_favorites(woman, men.shuffle)
      end
    end

    it "各参加者の希望リストを登録することができる" do
      checker.favorites['taro'].should be_kind_of(Array)
      checker.favorites['taro'].count.should == women.count
      checker.favorites['hanako'].should be_kind_of(Array)
      checker.favorites['hanako'].count.should == men.count
    end
  end

  it "男性は最も好きな女性にプロポーズして、その女性が独身であれば婚約できる" do
    checker.add_favorites('taro', women)
    checker.add_favorites('jiro', women)
    checker.add_favorites('saburo', women)

    checker.engage!('taro')
    checker.engage!('jiro')
    checker.engage!('saburo')

    checker.engage_women_for('taro').should eql(women[0])
    checker.engage_women_for('jiro').should eql(women[1])
    checker.engage_women_for('saburo').should eql(women[2])
  end
end