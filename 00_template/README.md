
Coding dojoのためのプロジェクトフォルダのテンプレート。

### 構成 ###

    +-- .gitignore
    +-- Gemfile
    +-- README.md
    +-- src/
    |     +-- foo.rb
    |     +-- :
    +-- spec/
          +-- foo_spec.rb
          +-- :

### gemのインストール ###

1. Gemfile に必要なgemを追加
2. インストール `# bundle install --path ./vendor/bundle`

### rspecの実行 ###

`# bundle exec rspec spec/foo_spec.rb`

### rubyの実行 ###

`# bundle exec ruby src/foo.rb`


## TODO

- ↑をrakeタスクにする

