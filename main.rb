require 'sinatra'
require 'slim'
require 'sinatra/reloader' if development?

get '/' do
  @title = 'HONK!'
  slim :home
end

get '/about' do
  @title = 'about'
  slim :about
end

get '/contact' do
  @title = 'contact'
  slim :contact
end

not_found do
  slim :not_found
end
