require 'rake'

# デフォルトタスクの定義
task :default do
  sh 'bundle exec ruby src/app.rb'
end

task :ex1 do
  sh 'curl http://localhost:4567/'
end

# `npm install --production`
task :init do
  sh 'bundle config set --local path vendor/bundle'
  sh 'bundle install'
end

# `npm install`
namespace :init do
  task :dev do
    sh 'bundle config set --local with development'
    Rake::Task[:init].invoke
  end
end

# test
desc 'Run RSpec tests'
task :spec do
  sh 'bundle exec rspec'
end

task test: :spec

# カスタムタスクの定義
task :hello do
  puts 'Hello, Rake!'
end

# 依存関係を持つタスク
task greet: :hello do
  puts 'How are you?'
end
