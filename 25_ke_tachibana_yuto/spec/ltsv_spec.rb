# coding: utf-8
require './ltsv'

describe Ltsv do
  it 'ヘッダ込みで行をparseできる' do
    data = <<-EOS
"名前","コメント"
"suchi","ATNDer(仕事の都合で直前にキャンセルの可能性があります)"
    EOS
    Ltsv.read_atnd(data).should == [{'名前' => 'suchi', 'コメント' => 'ATNDer(仕事の都合で直前にキャンセルの可能性があります)'}]
  end

  it "読み込んだハッシュ配列をLTSVにすることができる" do
    Ltsv.write([{'name' => 'suchi', 'comment' => 'ATNDer'}]).should == "name:suchi\tcomment:ATNDer"
  end

  it "複数行出力できる" do
    Ltsv.write([{'name' => 'suchi'}, {'name' => 'ke_tachibana'}]).should == "name:suchi\nname:ke_tachibana"
  end

end
