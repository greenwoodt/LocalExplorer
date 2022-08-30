class ProfilesController < ApplicationController
  def show
    @profile = Profile.find(params[:id])
  end

  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.new(profile_params)
    @profile.user = current_user
    @profile.save
    if @profile.save!
      redirect_to profile_path(@profile)
    else
      render 'new', status: :unprocessable_entity
    end
  end

  def edit
    @profile = Profile.find(params[:id])
  end

  def update
    @profile = Profile.find(params[:id])
    @profile.update(profile_params)
    redirect_to profile_path(@profile)
  end

  def destroy
    @profile = Profile.find(params[:id])
    @profile.destroy
    redirect_to user_profile_path, status: :see_other
  end

  private
  def profile_params
    params.require(:profile).permit(:username, :first_name, :last_name, :description, :back_driver_license, :front_driver_license, :profile_photo)
  end
end
