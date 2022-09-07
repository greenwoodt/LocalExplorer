class ProfilesController < ApplicationController
  def show
    @profile = Profile.find(params[:id])
    @review = Review.new
    @reviews = @profile.user.received_bookings.map { |booking| booking.review }.select { |r| !r.nil?}
    @bookings = Booking.where(user: current_user ).select {|booking| @profile.user.received_bookings.include? booking}
    @booking = @bookings.last
    authorize @profile
  end

  def new
    @profile = Profile.new
    authorize @profile
  end

  def create
    @profile = Profile.new(profile_params)
    @profile.user = current_user
    authorize @profile
    @profile.save
    if @profile.save
      redirect_to root_path
    else
      render 'new', status: :unprocessable_entity
    end
  end

  def edit
    @profile = Profile.find(params[:id])
    authorize @profile
  end

  def update
    @profile = Profile.find(params[:id])
    authorize @profile
    @profile.update(profile_params)
    redirect_to profile_path(@profile)
  end

  def destroy
    @profile = Profile.find(params[:id])
    authorize @profile
    @profile.destroy
    redirect_to root_path, status: :see_other
  end

  private

  def profile_params
    params.require(:profile).permit(:username, :first_name, :last_name, :description,
      :back_driver_license, :front_driver_license, :profile_photo)
  end
end
