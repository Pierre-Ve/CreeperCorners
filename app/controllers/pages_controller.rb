class PagesController < ApplicationController
  def home
  end

  def my_profile
    @my_bookings = current_user.bookings
    @my_bookings = @my_bookings.where('start_date >= ? AND ( status = ? OR STATUS = ? )', Date.today, 0, 1 )
    @my_builds = current_user.builds
  end
end
