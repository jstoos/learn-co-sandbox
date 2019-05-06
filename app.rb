require 'sinatra'
 
 configure do
  enable :sessions
  set :session_secret, "secret"
end
 
class App < Sinatra::Base
 
  get '/' do
    "Hello, World!"
  end
  
  get '/hey' do 
  @session = session
end
 
end