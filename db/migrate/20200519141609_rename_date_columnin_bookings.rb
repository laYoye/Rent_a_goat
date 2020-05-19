class RenameDateColumninBookings < ActiveRecord::Migration[6.0]
  def change
    rename_column :bookings, :date, :booking_date
  end
end
