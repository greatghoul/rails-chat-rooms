class ChatRoomsController < ApplicationController
  before_action :require_login

  def index
    @chat_room = ChatRoom.new
    @chat_rooms = ChatRoom.order(created_at: :desc)
  end

  def create
    @chat_room = ChatRoom.create(params_for_create)

    redirect_to @chat_room
  end

  def show
    @chat_room = ChatRoom.find(params[:id])
  end

  private

  def params_for_create
    params.require(:chat_room).permit(:name)
  end
end
