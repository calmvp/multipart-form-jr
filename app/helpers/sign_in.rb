def sign_in
  @user = User.find_by_email(params[:user][:email])
  if @user.authenticate(params[:user][:password])
  	session[:user_id] = @user.id
  else
  	redirect '/'
  end
end


