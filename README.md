# hello-ruby

Ruby なんもわからん (2024-06)

## 実行

```sh
rake init
rake hello  ## 'Hello, Rake!'
rake        ## sinatra. ブラウザで http://127.0.0.1:4567 で "Hello, world!"
```

## 実行前

```sh
sudo apt install ruby-rake -y
gem install rubocop --user
```

.bashrc などでパス追加

```sh
# for ruby
export PATH="$PATH:$HOME/.local/share/gem/ruby/3.0.0/bin"
```

## TODO

- test
- 静的解析
