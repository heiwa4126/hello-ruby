# This is a simple Sinatra application
# that responds with "Hello, world!"
# when the root URL is accessed.
require 'sinatra'

get '/' do
  'Hello, world!'
end
