class ChangeDateTypetoDateinBookings < ActiveRecord::Migration[6.0]
  def change
    change_column :bookings, :booking_date, :date, using: "booking_date::date"
  end
end
