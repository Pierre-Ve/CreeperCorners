class BuildsController < ApplicationController
  before_action :set_build, only: %i[ show edit update destroy ]
  skip_before_action :authenticate_user!, only: :index

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
    @booking = Booking.new
    @build = Build.find(params[:id])
    sql_query = "build_id = ? AND (status = 0 OR status = 1)"
    @booking_dates = Booking.where(sql_query, @build.id).map do |booking|
      {
        from: booking.start_date,
        to: booking.end_date
      }
    end
  end

  def new
    @build = Build.new
  end

  def create
    @build = Build.new(build_params)
    @build.user = current_user
    if @build.save
      redirect_to builds_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @build.user == current_user
      if @build.update(build_params)
        redirect_to my_profile_path, notice: "Build successfully updated !"
      else
        render :new, status: :unprocessable_entity
      end
    else
      redirect_to my_profile_path, alert: 'You are not authorized to update build.'
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
    params.require(:build).permit(:address, :surface, :description, :category, :price, :title, photos: [])
  end
end
