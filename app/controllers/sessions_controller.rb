class SessionsController < ApplicationController

  def logout
    session.clear
    redirect_to '/'
  end

  def login
    @user = User.find_by_username(params[:username])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      render "/users/show"
    else
    end
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
