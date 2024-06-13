require 'rake'

# デフォルトタスクの定義
task :default do
  sh 'bundle exec ruby src/app.rb'
end

# `npm install`
task :init do
  sh 'bundle config set --local path vendor/bundle'
  sh 'bundle install'
end

# カスタムタスクの定義
task :hello do
  puts 'Hello, Rake!'
end

# 依存関係を持つタスク
task greet: :hello do
  puts 'How are you?'
end
