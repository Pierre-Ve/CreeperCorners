class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.build = Build.find(params[:build_id])
    @booking.user = current_user
    @booking.save
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
  end

  def index
    @bookings = Booking.where(user_id: current_user.id)
  end

  def list
    @build = Build.find(params[:build_id])
    @booking.find_by(build_id: @build)
  end

  private
  def booking_params
    params.require(:booking).permit(:user, :build, :start_date)
  end
end
