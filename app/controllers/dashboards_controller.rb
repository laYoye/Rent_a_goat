class DashboardsController < ApplicationController
  def bookings
    @bookings = current_user.bookings
    @herds = current_user.herds
  end
end
