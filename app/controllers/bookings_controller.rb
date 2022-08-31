class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @trip = Trip.find(params[:trip_id])
  end

  def create
    @trip = Trip.find(params[:trip_id])
    @booking = Booking.new
    @booking.trip = @trip
    @booking.user = current_user
    if @booking.save!
      redirect_to trip_booking_path(@trip, @booking)
    else
      render 'new', status: :unprocessable_entity
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  # def destroy
  #   @booking = Booking.find(params[:id])
  #   @booking.delete
  #   redirect_to trip_path, status: :see_other
  # end
end
