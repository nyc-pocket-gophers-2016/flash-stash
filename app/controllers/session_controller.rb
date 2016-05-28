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

get '/logout' do
  session.clear
  redirect :'/login'
end
