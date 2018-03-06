require "sinatra"
require "shotgun"

get '/' do
  "Hello World"
end

get '/secret' do
  "This is a secret!"
end

get '/bye' do
  "See ya!"
end

get '/random-cat' do
  @cat_names = ["amigo","oscar","viking"].sample
  erb(:index) # uses an embeded ruby into HTML
end

post '/named-cat' do
  @cat_names = params[:name]
  erb(:index)
end

get '/cat-naming' do
  erb(:form)
end
