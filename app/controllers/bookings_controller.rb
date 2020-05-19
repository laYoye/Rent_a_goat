class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def new
    @herd = Herd.find(params[:herd_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.herd = Herd.find(params[:herd_id])
    if @booking.save
      redirect_to herds_path
    else
      raise
      render :new
    end
  end

private

  def booking_params
    params.require(:booking).permit(:booking_date, :user, :herd, :confirmed)
  end

end
