class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @build = Build.find(params[:build_id])
    sql_query = "build_id = ? AND (status = 0 OR status = 1)"
    @booking_dates = Booking.where(sql_query, @build.id).map do |booking|
      {
        from: booking.start_date,
        to: booking.end_date
      }
    end
    puts "#######################"
    puts @booking_dates
    puts "#######################"

  end

  def create
    @booking = Booking.new(booking_params)
    @booking.build = Build.find(params[:build_id])
    @booking.user = current_user
    @booking.start_date = params[:booking][:start_date].split(' to ')[0]
    @booking.end_date = params[:booking][:start_date].split(' to ')[1]
    if @booking.save
      redirect_to my_profile_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def index
    @bookings = Booking.where(user_id: current_user.id)
  end

  def list
    @build = Build.find(params[:build_id])
    @booking.find_by(build_id: @build)
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    if @booking.user == current_user
      @booking.update(status: 'cancelled')
      redirect_to my_profile_path, notice: 'Booking was successfully cancelled.'
    else
      @booking.update(status: params[:booking][:status])
      redirect_to my_profile_path
    end
  end

  private
  def booking_params
    params.require(:booking).permit(:user, :build, :start_date)
  end
end
