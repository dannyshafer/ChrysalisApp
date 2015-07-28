class SessionsController < ApplicationController
  def login
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to admin_root_path, :notice => "Welcome back, #{user.username}"
    else
      flash.now.alert = "Invalid username or password"
      render 'signup'
    end
  end

  def logout
    session.clear
  end

  def show
    render 'login'
  end

  def create
    @user = User.new(username: params[:username], password: params[:password])
    @user.save
    render 'show'
  end

end
