coding-dojo
===========


## coding-dojo用Rakeタスク　##

### rake dojo:osu!

* dojo_nameで指定された名前で作業ディレクトリを作成します。
* 「押忍！」と挨拶するとテンプレートに従った作業ディレクトリが作成されます。 
* 道場の命名規約は"hamamarsu.rbの開催回数_ペアプロメンバー１_ペアプロメンバー２"　です。　ex).　26_you_me
* windows環境ではbundle install がうまく動作しないようです（echoでGemfileにrspecを追記してるあたりで"がうまく処理されないっぽい。誰か直してください。）


###  rake dojo:hamon

* 破門します。
* dojo_name で指定されたディレクトリを"rm -rf"します。