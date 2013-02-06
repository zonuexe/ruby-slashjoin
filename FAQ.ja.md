Fuck
====

挙動がをかしいんだけど
----------------------

この gem は `URI`, `Pathname` クラスの `join` メソッドに *完全に* 依存します。

```ruby
("https://github.com" / "megurine" ).to_s
# => "https://github.com/megurine"
```

この結果はまったく期待通りだと思ひます。

しかし次の式は期待するものと違ふのではないでせうか。

```ruby
("https://github.com" / "megurine" / "foobar").to_s
# => "https://github.com/foobar"

# slashjoin を
URI.join("http://github.com", "megurine", "foobar")
# => "https://github.com/foobar"
```

