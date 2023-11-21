class BuildsController < ApplicationController
  before_action :set_build, only: %i[ show edit update destroy ]

  def index
    @builds = Build.all
  end

  def show
  end

  def new
    @build = Build.new
  end

  def create
    @build = Build.new(build_params)
    if @build.save
      redirect_to builds_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @build.update(build_params)
      redirect_to build_path(@build)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @build.destroy
    redirect_to builds_path, status: :see_other
  end

  private

  def set_build
    @build = Build.find(params[:id])
  end

  def build_params
    params.require(:build).permit(:address, :surface, :description, :category, :price)
  end

  def filtre
    @filter_params = {
      :category => "",
      :price_mini => 1,
      :price_maxi => 1000,
      :surface_mini => 50}
  end
end
