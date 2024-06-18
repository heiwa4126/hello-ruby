# hello-ruby

(2024-06)
Ruby なんもわからんので、npm 的に。

## 実行(開発環境)

```sh
rake init:dev   # 開発環境含む
rake hello      # 'Hello, Rake!'
rake            # Sinatra App. ブラウザで http://127.0.0.1:4567 で "Hello, world!"
rake spec       # `rake test`でもOK.
```

## 実行前準備(開発環境)

```sh
sudo apt install ruby-rake -y
gem install rubocop solargraph --user
```

.bashrc などでパス追加

```sh
# for ruby
export PATH="$PATH:$HOME/.local/share/gem/ruby/3.0.0/bin"
```

## TODO

- ~~test~~
- 静的解析
- パッケージング
  ```sh
  gem install hello-ruby
  hello-ruby
  ```
  みたいのができるといいな。
