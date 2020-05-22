class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.herd = Herd.find(params[:herd_id])
    if @booking.save
      flash[:notice] = "Votre réservation a bien été prise en compte ! Le propriétaire vous contactera."
      redirect_to dashboards_path
    else
      render :new
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to  dashboards_path :notice => "Votre réservation a été annulée"
  end

private

  def booking_params
    params.require(:booking).permit(:booking_date, :user, :herd, :confirmed)
  end

end
