class BookingController < ApplicationController
end

def index
  @booking = Booking.all
end
