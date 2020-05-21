class DashboardsController < ApplicationController
  def bookings
    @bookings = current_user.bookings
  end
  
end
