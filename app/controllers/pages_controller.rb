class PagesController < ApplicationController
  def home
  end

  def my_profile
    # To be displayed in user's profile
    # 1. All my ongoing booking as guest Start date after the date of the day
    @my_bookings = current_user.bookings
    @my_bookings = @my_bookings.where('start_date >= ? AND ( status = ? OR STATUS = ? OR STATUS = ?)', Date.today, 0, 1, 2)
    # 2. All my builds available for renting, no restriction
    @my_builds = current_user.builds
    # 3. All booking on my builds (NOTE: date selection to be added )
    @my_builds_booked = Booking.joins(:build, :user).select("bookings.id, bookings.start_date, bookings.end_date, bookings.build_id, bookings.status").where(" builds.user_id = ? AND (status = 0 OR status = 1 OR status = 2)", current_user.id)
  end
end
