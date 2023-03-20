class HomeController < ApplicationController
  def index
    if current_user
      redirect_to chat_rooms_path
      return
    end

    @user = User.new
  end
end
