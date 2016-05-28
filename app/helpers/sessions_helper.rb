def current_user
  User.find(session[:id])
end

def logged_in?
  session[:id] && current_user.present?
end
