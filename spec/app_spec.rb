require 'rspec'
require 'rack/test'
require_relative '../src/app'

describe 'My Sinatra Application' do
  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  it 'should return "Hello, world!" when accessing the root URL' do
    get '/'
    expect(last_response).to be_ok
    expect(last_response.body).to eq('Hello, world!')
  end
end
