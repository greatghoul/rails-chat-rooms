class UsersController < ApplicationController
  def create
    @user = User.find_or_create_by!(user_params)
    session[:user_id] = @user.id
    redirect_to chat_rooms_path
  end

  private

  def user_params
    params.require(:user).permit(:username)
  end
end
