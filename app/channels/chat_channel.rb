class ChatChannel < ApplicationCable::Channel
  def subscribed
    stream_from channel_stream_name
  end

  def receive(data)
    data[:user] = current_user.username
    ActionCable.server.broadcast(channel_stream_name, data)
  end

  private

  def channel_stream_name
    "chat_room_#{params[:room_id]}"
  end
end
