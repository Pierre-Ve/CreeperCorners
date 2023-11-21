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
  end

  def index
  end

  def list
  end

  private
  def booking_params
    params.require(:booking).permit(:user, :build, :start_date)
  end
end
