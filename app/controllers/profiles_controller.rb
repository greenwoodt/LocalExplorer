class profileController < ApplicationController
  def show
    @profile = Profile.find(params[:id])
  end

  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.new(profile_params)
    @profile.save
    redirect_to user_profile_path(@profile)
  end

  def edit
    @profile = Profile.find(params[:id])
  end

  def update
    @profile = Profile.find(params[:id])
    @profile.update(profile_params)
    redirect_to user_profile_path(@profile)
  end

  def destroy
    @profile = Profile.find(params[:id])
    @profile.destroy
    redirect_to user_profile_path, status: :see_other
  end

  private
  def profile_params
    params.require(:profile).permit(:username, :first_name, :last_name, :description, :drivers_license)
  end
end
