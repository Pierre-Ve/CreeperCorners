class PagesController < ApplicationController
  def home
  end

  def my_profile
    @my_bookings = current_user.bookings
    @my_bookings = @my_bookings.where('start_date >= ?', Date.today)
    @my_builds = current_user.builds
  end
end
