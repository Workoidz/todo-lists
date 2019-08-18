class SessionsController < ApplicationController
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
  end
end
