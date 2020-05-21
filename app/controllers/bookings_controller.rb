class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.herd = Herd.find(params[:herd_id])
    if @booking.save
      flash[:notice] = "Votre réservation a bien été prise en compte ! Le propriétaire vous contactera."
      redirect_to herds_path
    else
      render :new
    end
  end

private

  def booking_params
    params.require(:booking).permit(:booking_date, :user, :herd, :confirmed)
  end

end
