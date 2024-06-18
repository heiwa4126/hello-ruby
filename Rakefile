require 'rake'

APPURL = 'http://localhost:4567/'.freeze

# デフォルトタスク
desc 'Run the default task'
task default: :start

# `npm start`
desc 'Start the sinatra application'
task :start do
  puts APPURL
  sh 'bundle exec ruby src/app.rb'
end

desc "Make a request to #{APPURL}"
task :ex1 do
  sh "curl #{APPURL}"
end

# `npm install --production`
desc 'Initialize the project for production'
task :init do
  sh 'bundle config set --local path vendor/bundle'
  sh 'bundle install'
end

# `npm install`
namespace :init do
  desc 'Initialize the project for development'
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

desc 'Same as `run spec`'
task test: :spec

# カスタムタスクの定義
desc 'Prints a hello message'
task :hello do
  puts 'Hello, Rake!'
end

# 依存関係を持つタスク
desc 'Prints a greeting message'
task greet: :hello do
  puts 'How are you?'
end
