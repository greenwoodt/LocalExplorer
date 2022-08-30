class TripsController < ApplicationController
  def index
    @trips = Trip.all
  end

  def new
    @trip = Trip.new
  end

  def create
    @trip = Trip.new(trip_params)
    @trip.user = current_user
    @trip.save!
  end

  def show
    @trip = Trip.find(params[:id])
  end

  def destroy
    @trip = @trip.find(params[:id])
    @trip.destroy
    redirect_to trips_path, status: :see_other
  end

  private

  def trip_params
    params.require(:trip).permit(:name, :description, :address, :capacity, :rating, :difficulty, :photo, :start_date, :end_date, :price_cents, :category_id)
  end
end
