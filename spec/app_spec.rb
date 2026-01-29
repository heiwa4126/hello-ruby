ENV['APP_ENV'] = 'test'

require_relative '../src/app'
require 'rspec'
require 'rack/test'

RSpec.describe 'HelloWorld' do
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  it 'says hello world' do
    get '/'
    expect(last_response).to be_ok
    expect(last_response.body).to eq('Hello, world!')
  end
end
