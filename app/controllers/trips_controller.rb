class TripsController < ApplicationController
  def index
    @trips = Trip.all
    authorize @trip
  end

  def show
    @trip = Trip.find(params[:id])
    authorize @trip
  end

  def new
    @trip = Trip.new
    authorize @trip
  end

  def create
    @trip = Trip.new(trip_params)
    @trip.user = current_user
    authorize @trip
    @trip.save!
    redirect_to trip_path
  end

  def edit
    @trip = Trip.find(params[:id])
    authorize @trip
  end

  def update
    @trip = Trip.find(params[:id])
    authorize @trip
    @trip.update(trip_params)
    redirect_to trip_path(@trip)
  end

  def destroy
    @trip = Trip.find(params[:id])
    authorize @trip
    @trip.destroy!
    redirect_to trips_path, status: :see_other
  end

  private

  def trip_params
    params.require(:trip).permit(:name, :description, :address, :capacity, :difficulty, :photo, :start_date, :end_date, :price_cents, :category_id)
  end
end
