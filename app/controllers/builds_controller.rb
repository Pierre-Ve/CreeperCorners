class BuildsController < ApplicationController
  before_action :set_build, only: %i[ show edit update destroy ]

  def index
    @builds = Build.all

    if params[:filter].present?
      if params[:filter][:category] != ""
        @builds = @builds.where('category LIKE ? ', params[:filter][:category])
      end
      if params[:filter][:surface_min].to_i != 0
        @builds = @builds.where('surface >= ? ', params[:filter][:surface_min].to_i)
      end
      if params[:filter][:surface_max].to_i != 0
        @builds = @builds.where('surface <= ? ', params[:filter][:surface_max].to_i)
      end
      if params[:filter][:price_min].to_i != 0
        @builds = @builds.where('price >= ? ', params[:filter][:price_min].to_i)
      end
      if params[:filter][:price_max].to_i != 0
        @builds = @builds.where('price <= ? ', params[:filter][:price_max].to_i)
      end
    end
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
end
