get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/welcome' do
  erb :welcome
end