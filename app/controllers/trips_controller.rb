class TripsController < ApplicationController
  def index
    @trips = Trip.all
  end

  def create
    @trip = Trip.new(trip_params)
    @trip.user = current_user
    @trip.save!
  end

  def new
    @trips = Trip.new
  end

  def show
    @trips = Trip.find(params[:id])
  end

  def destroy
    @trip = @trip.find(params[:id])
    @trip.destroy
    redirect_to trips_path, status: :see_other
  end

  private

  def trip_params
    params.require(:trip).permit(:name, :description, :capacity, :difficulty, :start_date, :end_date, :address, :price)
  end
end
