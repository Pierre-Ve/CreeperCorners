class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @build = Build.find(params[:build_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.build = Build.find(params[:build_id])
    @booking.user = current_user
    @booking.save
  end

  def index
    @bookings = Booking.where(user_id: current_user.id)
  end

  def list
    @build = Build.find(params[:build_id])
    @booking.find_by(build_id: @build)
  end

  def edit
  end

  def update
    @booking = Booking.find(params[:id])
    if @booking.user == current_user
      @booking.update(status: 'cancelled')
      redirect_to my_profile_path, notice: 'Booking was successfully cancelled.'
    else
      redirect_to my_profile_path, alert: 'You are not authorized to cancel this booking.'
    end
  end

  private
  def booking_params
    params.require(:booking).permit(:user, :build, :start_date)
  end
end
