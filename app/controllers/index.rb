get '/' do
  @users = User.all
  @photos = Photo.all
  erb :index
end

get '/new' do
  erb :new
end

post '/' do
  user = User.new(params[:user]) 
  user.albums.photos << Photo.create(params[:photo])
  if user.save 
  	redirect to '/'
  else
  	erb :new
  end
end