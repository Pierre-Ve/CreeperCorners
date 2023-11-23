class PagesController < ApplicationController
  def home
  end

  def my_profile
    @my_bookings = current_user.bookings
    @my_bookings = @my_bookings.where('start_date >= ? AND ( status = ? OR STATUS = ? )', Date.today, 0, 1 )
    @my_builds = current_user.builds
    @my_builds_rented = Booking.joins(:build, :user).select("bookings.start_date, builds.id, status").where(" builds.user_id = ? AND (status = 0 OR status = 1)", current_user.id)
  end
end
