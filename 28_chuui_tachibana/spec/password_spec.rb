require './src/password'

describe Password do
  let(:password){ Password.new }

  def check(string)
    Password.new.check(string)
  end

  describe '#check' do
    it '"a"は弱' do
      check('a').should == '弱'
    end

    it '1種類の文字種しかないと弱' do
      check('ab' * 15).should == '弱'
    end

    it '4文字以下なら弱' do
      check('abcd').should == '弱'
    end

    it '14文字以上で大文字、小文字、数字、記号が全部混ざっていれば強' do
      check('aaaaBBBBB0000!!!!').should == '強'
    end

    it '文字種は4種類あっても14文字なければ中' do
      check('aaaBBB000!!!').should == '中'
    end

    it '14文字以上でも3種類しかなければ中' do
      check('aaaaaAAAAA00000').should == '中'
    end
  end

  describe "#sign?" do
    it do
      ' !/:@[`{~\\'.each_char do |sign_char|
        password.sign?(sign_char).should be_true
      end
      password.sign?('a').should be_false
    end
  end
end
