class DashboardsController < ApplicationController
  def bookings
    @bookings = current_user.bookings
    @herds = current_user.herds
  end

  def herds
    @herds = current_user.herds
    @bookings = current_user.bookings
  end

end
