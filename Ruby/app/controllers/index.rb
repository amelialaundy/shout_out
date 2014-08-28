get '/' do
	erb :sign_in
end

get '/shout_out' do
	@user = User.find(session[:user_id])
	erb :create_shout_out
end

post '/shout_out' do
	@user = User.find_by_handle(params[:user_name])
	if @user.is_password_valid(params[:password])
		session[:user_id] = @user.id #session starts as an empty hash which is then assigned our users id
		redirect '/shout_out'		#if the password is valid/matches, creates the session via a new key (rack magic), redirects to create_shout_out page
	else	
		@message = "login was invalid"
		erb :sign_in
	end	
end
