get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/new' do
  erb :new
end

post '/' do
  user = User.new(params[:user])
  if user.save
  	redirect to '/'
  else
  	erb :new
  end
end