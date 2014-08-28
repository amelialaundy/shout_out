get '/' do
	erb :sign_in
end

post '/receive_login_details' do
	@user = User.find_by_handle(params[:user_name])
	if @user.is_password_valid(params[:password])
		session[:user_id] = @user.id #session starts as an empty hash which is then assigned our users id
		redirect '/shout_out'		#if the password is valid/matches, creates the session via a new key (rack magic), redirects to create_shout_out page
	else
		@message = "login was invalid"
		erb :sign_in
	end
end

get '/shout_out' do
	@user = User.find(session[:user_id])
	erb :create_shout_out
end


post '/save_shout_out' do
	ShoutOut.create(content: params[:new_shout_out_content], user_id: session[:user_id])
	@all_shout_outs = ShoutOut.find_by_user_id(session[:user_id])
	@user = User.find(session[:user_id])
	erb :my_shout_outs
end


