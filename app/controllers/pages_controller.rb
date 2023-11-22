class PagesController < ApplicationController
  def home
  end

  def my_profile
    @my_bookings = current_user.bookings
  end
end
