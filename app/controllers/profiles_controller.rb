class ProfilesController < ApplicationController
  before_action :authenticate_user!
  def new
    @profile = Profile.new
  end

  def create
    @profile = current_user.build_profile(profile_params)

    if @profile.save
      redirect_to profile_path(@profile), notice: "Profile created successfully!"
    else
      render :new
    end
  end

  def show
    @profile = Profile.find(params[:id])
  end

  def edit
  end

  def update
  end

  private

  def profile_params
    params.require(:profile).permit(:name, :bio, :image, :patron_deity)
  end
end
