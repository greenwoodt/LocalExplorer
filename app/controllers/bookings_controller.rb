class BookingsController < ApplicationController
  def index
    @bookings = policy_scope(Booking)

  end
  def new
    @booking = Booking.new
    @trip = Trip.find(params[:trip_id])
    authorize @booking
  end

  def create
    @trip = Trip.find(params[:trip_id])
    @booking = Booking.new
    @booking.trip = @trip
    @booking.user = current_user
    authorize @booking
    bookings_with_chat = @trip.bookings.reject do |booking|
      booking.chatroom.nil?
    end
    if bookings_with_chat.empty?
      @chatroom = Chatroom.create ### TODO make sure not to have extra chatrooms
    else
      @chatroom = bookings_with_chat.first.chatroom
    end
    @booking.chatroom = @chatroom
    if @booking.save!
      redirect_to trip_booking_path(@trip, @booking)
    else
      render 'new', status: :unprocessable_entity
    end

  end

  def show
    @booking = Booking.find(params[:id])
    @chatroom = @booking.chatroom
    authorize @booking
  end

  def destroy
    @booking = Booking.find(params[:id])
    authorize @booking
    @booking.delete
    redirect_to trips_path, status: :see_other
  end
end
