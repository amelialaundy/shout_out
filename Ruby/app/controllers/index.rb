get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/shout_out' do
  erb :create_shout_out
end
