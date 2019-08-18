class SessionsController < ApplicationController
	skip_before_action :ensure_login, only: [:new, :create]
	
  def new
  end

  def create

  	username = User.find_by(username: params[:user][:username])
  	password = params[:user][:password]

  	if username and username.authenticate(password)
  		session[:user_id] = username.id 
  		redirect_to root_path, notice: "Logged in successfully"
  	else
  		redirect_to login_path, notice: "Invail Username / Password"
  	end

  end

  def destroy

  	reset_session
  	redirect_to login_path, notice: " Logged out, sucessfully "

  end
end
