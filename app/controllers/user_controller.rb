get '/users/show' do
  @user = User.find_by(id: session[:id])
  @rounds = @user.rounds
  erb :'users/show'
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
