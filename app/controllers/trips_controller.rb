class TripsController < ApplicationController
  def index
    @trips = Trip.all
    # The `geocoded` scope filters only trips with coordinates
    @markers = @trips.geocoded.map do |trip|
      {
        lat: trip.latitude,
        lng: trip.longitude,
        info_window: render_to_string(partial: "info_window", locals: {trip: trip})
        # image_url: helpers.asset_url("REPLACE_THIS_WITH_YOUR_IMAGE_IN_ASSETS")
      }
    end
  end

  def show
    @trip = Trip.find(params[:id])
    @markers = [{lat: @trip.geocode[0], lng: @trip.geocode[1]}]
    @booking = Booking.new  # to be able to avoid the "new" view with a form

  end

  def new
    @trip = Trip.new
  end

  def create
    @trip = Trip.new(trip_params)
    @trip.user = current_user
    @trip.save!
    redirect_to trips_path
  end

  def destroy
    @trip = Trip.find(params[:id])
    @trip.destroy!
    redirect_to trips_path, status: :see_other
  end

  private

  def trip_params
    params.require(:trip).permit(:name, :description, :address, :capacity, :difficulty, :photo, :start_date, :end_date, :price_cents, :category_id)
  end
end
