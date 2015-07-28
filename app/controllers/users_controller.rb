class UsersController < ApplicationController

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to "/users/show"
    else
      redirect_to '/'
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end

end
