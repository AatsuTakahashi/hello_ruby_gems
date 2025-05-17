# HelloRubyGems

**HelloRubyGems** は、Rubyで作られたシンプルな挨拶ライブラリです。  
名前を渡すと `"Hello, 〇〇!"` のようにメッセージを返してくれます。  
RubyGemsの仕組みを学ぶための入門用Gemとしても最適です 💎

---

## ✨ 機能

- 名前を渡すと挨拶文を返す `HelloRubyGems.greet` メソッドを提供

---

## 🛠 インストール方法

### Bundlerを使ってGitHubから直接使用する場合：

```ruby
gem 'hello_ruby_gems', github: 'AatsuTakahashi/hello_ruby_gems'
```

```zsh
$ bundle install
```

## 🚀 使い方

### Rubyコードから呼び出す場合：

```ruby
require 'hello_ruby_gems'

HelloRubyGems.greet
# => "Hello, world!"

HelloRubyGems.greet("Aatsu")
# => "Hello, Aatsu!"
```

## 🧪 テスト方法

- RSpecでテストされています。

```zsh
$ bundle exec rspec
```