get '/login' do
  erb :'users/index'
end

post '/login' do
  @user = User.find_by(email: params[:email])
  if @user && @user.authenticate(params[:password])
    session[:id] = @user.id
    redirect :'/users/show'
  else
    @error = "You have entered an incorrect log in. Try again!"
    erb :'users/index'
  end
end

get '/users/show' do
  @user = User.find_by(id: session[:id])
  erb :'users/show'
end

get '/logout' do
  session.clear
  redirect :'/login'
end

get '/users/new' do
  erb :'users/new'
end

post '/users' do
  @user = User.new(email: params[:email], password: params[:password])
  if @user.save
    session[:id] = @user.id
    redirect :"/user/#{@user.id}"
  else
    @error = "You have entered missinformation, please try again."
    erb :'users/new'
  end
end

get '/user/:id' do
  @user = User.find_by(id: session[:id])
  erb :'user/show'
end