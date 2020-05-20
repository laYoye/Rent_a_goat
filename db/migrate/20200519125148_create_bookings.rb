class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.references :herd, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.integer :amount
      t.string :date
      t.string :confirmation, :default => "Pending"

      t.timestamps
    end
  end
end
