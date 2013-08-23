### GET ###

get '/user/photo_list' do
  @photos = current_user.photos.all
  @albums = current_user.albums
  erb :photo_list
end

get '/user/:user_id/albums' do

end

get '/user/signup' do
  if request.xhr?
  	erb :_sign_up, layout: false
  else 
  	erb :_sign_up
  end
end

get '/user/logout' do
  session.clear
  redirect '/' 
end

### POST ###

post '/user/login' do
  sign_in
  redirect '/user/photo_list'
end

post '/user/signup' do
  @user = User.create(params[:user])
  @user.albums.create(title: "#{@user.name} - First Album")
  session[:user_id] = @user.id

  redirect '/user/photo_list'
end