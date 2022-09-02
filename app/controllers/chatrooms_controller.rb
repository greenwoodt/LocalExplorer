class ChatroomsController < ApplicationController
  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
    if current_user == @chatroom.bookings.last.trip.user
      @booking = @chatroom.bookings.last
    else
      @booking = current_user.bookings.find {|b| b.chatroom == @chatroom}
    end
    authorize @chatroom
  end
end
