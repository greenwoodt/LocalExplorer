class ChatroomChannel < ApplicationCable::Channel
  def unsubscribed
    chatroom = Chatroom.find(params[:id])
    stop_stream_from chatroom
  end

  def subscribed
    chatroom = Chatroom.find(params[:id])
    stream_for chatroom
  end
end
